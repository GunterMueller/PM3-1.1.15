(* Copyright (C) 1994, Digital Equipment Corporation           *)
(* All rights reserved.                                        *)
(* See the file COPYRIGHT for a full description.              *)
(*                                                             *)
(* File: Type.m3                                               *)
(* Last Modified On Tue May 23 15:37:08 PDT 1995 by kalsow     *)
(*      Modified On Fri May 28 16:29:19 PDT 1993 by muller     *)

UNSAFE MODULE Type EXPORTS Type, TypeRep;

IMPORT M3, CG, Error, Token, Scanner, NamedType, Word;
IMPORT ArrayType, PackedType, EnumType, ObjectType, RefType;
IMPORT ProcType, UserProc, RecordType, SetType, SubrangeType, OpaqueType;
IMPORT Value, Module, Host, TypeFP, TypeTbl;
IMPORT Addr, Bool, CChar, Card, EReel, Int, LReel, Mutex, Null;
IMPORT ObjectRef, ObjectAdr, Reel, Reff, Textt, Target, TInt, TFloat;
IMPORT Text, M3RT, TipeMap, TipeDesc, ErrType;

CONST
  NOT_CHECKED = -1;

REVEAL
  Assumption = UNTRACED BRANDED "Type.Assumption" REF AssumptionRec;

TYPE
  AssumptionRec = RECORD
    prev : Assumption;
    a, b : T;
  END;

REVEAL
  ModuleInfo = BRANDED "Type.ModuleInfo" REF RECORD
    module_types   : T         := NIL;
    full_cells     : CellInfo  := NIL;
    cell_ptrs      : CellPtr   := NIL;
    next_to_set    : T         := NIL;
    module         : Module.T  := NIL;
    in_order       : BOOLEAN   := FALSE;
  END;

TYPE
  CellInfo = BRANDED "Type.CellInfo" REF RECORD
    next     : CellInfo  := NIL;
    type     : T         := NIL;
    unit     : Module.T  := NIL;
    offset   : INTEGER   := 0;
  END;

TYPE
  CellPtr = REF RECORD
    next   : CellPtr := NIL;
    type   : T       := NIL;
    offset : INTEGER := 0;
  END;

VAR compile_started : BOOLEAN    := FALSE;
VAR cur             : ModuleInfo := NIL;
VAR compiled        : TypeTbl.T  := NIL;  (* type -> BOOLEAN *)
VAR visible_cells   : TypeTbl.T  := NIL;  (* type -> CellInfo *)
VAR visible_types   : TypeTbl.T  := NIL;  (* type -> BOOLEAN *)

(************************************************************************)

PROCEDURE Initialize () =
  BEGIN
    UserProc.Initialize ();
  END Initialize;

PROCEDURE Reset () =
  BEGIN
    recursionDepth  := 0;
    compile_started := FALSE;
    cur             := NIL;
    TypeTbl.Reset (compiled);
    TypeTbl.Reset (visible_cells);
    TypeTbl.Reset (visible_types);
  END Reset;

(************************************************************************)

PROCEDURE Parse (): T =
  TYPE TK = Token.T;
  VAR t: T;
  BEGIN
    CASE Scanner.cur.token OF
    | TK.tIDENT     => t := NamedType.Parse ();
    | TK.tARRAY     => t := ArrayType.Parse ();
    | TK.tBITS      => t := PackedType.Parse ();
    | TK.tBRANDED   => t := RefType.Parse ();
    | TK.tLBRACE    => t := EnumType.Parse ();
    | TK.tUNTRACED  => t := RefType.Parse ();
    | TK.tOBJECT    => t := ObjectType.Parse (NIL, TRUE, NIL);
    | TK.tCALLCONV  => t := ProcType.Parse ();
    | TK.tPROCEDURE => t := ProcType.Parse ();
    | TK.tRECORD    => t := RecordType.Parse ();
    | TK.tREF       => t := RefType.Parse ();
    | TK.tSET       => t := SetType.Parse ();
    | TK.tLBRACKET  => t := SubrangeType.Parse ();
    | TK.tLPAREN =>
        Scanner.GetToken (); (* ( *)
        t := Parse ();
        Scanner.Match (TK.tRPAREN);
        IF (Scanner.cur.token = TK.tBRANDED) THEN
          t := ObjectType.Parse (t, FALSE, RefType.ParseBrand ());
        ELSIF (Scanner.cur.token = TK.tOBJECT) THEN
          t := ObjectType.Parse (t, FALSE, NIL);
        END;
    ELSE
        Scanner.Fail ("bad type expression");
	t := NIL;
    END;
    RETURN t;
  END Parse;

PROCEDURE Init (t: T;  c: Class) =
  BEGIN
    t.origin     := Scanner.offset;
    t.info.class := c;
    t.uid        := NO_UID;
    t.scc_id     := NO_SCC;
    t.rep_id     := NO_UID;
    t.checkDepth := NOT_CHECKED;
    t.checked    := FALSE;
    t.errored    := FALSE;
    t.next       := cur.module_types;   cur.module_types := t;
  END Init;

PROCEDURE SetModule (new: ModuleInfo): ModuleInfo =
  VAR old := cur;
  BEGIN
    IF (new = NIL) THEN new := NEW (ModuleInfo) END;
    cur := new;
    RETURN old;
  END SetModule;

PROCEDURE Reorder () =
  VAR a, b, c: T;
  BEGIN
    IF cur.in_order THEN RETURN END;
    a := cur.module_types;
    b := NIL;
    WHILE (a # NIL) DO
      c := a.next;
      a.next := b;
      b := a;
      a := c;
    END;
    cur.module_types := b;
    cur.in_order := TRUE;
  END Reorder;

(************************************************************************)

PROCEDURE Check (t: T): T =
  (* ensure that 't' is checked and return the underlying constructed type *)
  VAR save_offset, save_depth: INTEGER;
  BEGIN
    IF (t = NIL) THEN t := ErrType.T END;
    IF (NOT t.checked) THEN
      IF (t.checkDepth = recursionDepth) THEN
        IllegalRecursion (t);
      ELSE
        (* this node is not currently being checked at the current depth *)
        save_offset := Scanner.offset;
        save_depth := t.checkDepth;
        Scanner.offset := t.origin;
        t.checkDepth := recursionDepth;
        t.check ();
        Scanner.offset := save_offset;
        t.checkDepth := save_depth;
        t.checked := TRUE;
      END;
    END;
    IF (t.info.class = Class.Named) THEN t := Strip (t) END;
    RETURN t;
  END Check;

PROCEDURE CheckInfo (t: T;  VAR x: Info): T =
  VAR u := Check (t);
  BEGIN
    x := u.info;
    RETURN u;
  END CheckInfo;

(************************************************************************)

PROCEDURE IsAlignedOk (t: T;  offset: INTEGER): BOOLEAN =
  BEGIN
    IF (t = NIL) THEN RETURN TRUE END;
    RETURN t.check_align (offset);
  END IsAlignedOk;

PROCEDURE Strip (t: T): T =
  VAR u := t;  v := t;
  BEGIN
    IF (u = NIL) THEN RETURN NIL END;
    LOOP
      IF (u.info.class # Class.Named) THEN RETURN u END;
      u := NamedType.Strip (u);
      IF (v.info.class # Class.Named) THEN RETURN v END;
      v := NamedType.Strip (v);
      IF (v.info.class # Class.Named) THEN RETURN v END;
      v := NamedType.Strip (v);
      IF (u = v) THEN IllegalRecursion (t); RETURN ErrType.T END;
    END;
  END Strip;

PROCEDURE StripPacked (t: T): T =
  VAR u := t;  v := t;
  BEGIN
    IF (u = NIL) THEN RETURN NIL END;
    LOOP
      IF    (u.info.class = Class.Named)  THEN u := NamedType.Strip (u);
      ELSIF (u.info.class = Class.Packed) THEN u := PackedType.Base (u);
      ELSE  RETURN u;
      END;
      IF    (v.info.class = Class.Named)  THEN v := NamedType.Strip (v);
      ELSIF (v.info.class = Class.Packed) THEN v := PackedType.Base (v);
      ELSE  RETURN v;
      END;
      IF    (v.info.class = Class.Named)  THEN v := NamedType.Strip (v);
      ELSIF (v.info.class = Class.Packed) THEN v := PackedType.Base (v);
      ELSE  RETURN v;
      END;
      IF (u = v) THEN IllegalRecursion (t); RETURN ErrType.T END;
    END;
  END StripPacked;

PROCEDURE Base (t: T): T =
  VAR u := t;  v := t;
  BEGIN
    IF (u = NIL) THEN RETURN NIL END;
    LOOP
      IF    (u.info.class = Class.Named)    THEN u := NamedType.Strip (u);
      ELSIF (u.info.class = Class.Subrange) THEN u := SubrangeType.Base (u);
      ELSIF (u.info.class = Class.Packed)   THEN u := PackedType.Base (u);
      ELSE  RETURN u;
      END;
      IF    (v.info.class = Class.Named)    THEN v := NamedType.Strip (v);
      ELSIF (v.info.class = Class.Subrange) THEN v := SubrangeType.Base (v);
      ELSIF (v.info.class = Class.Packed)   THEN v := PackedType.Base (v);
      ELSE  RETURN v;
      END;
      IF    (v.info.class = Class.Named)    THEN v := NamedType.Strip (v);
      ELSIF (v.info.class = Class.Subrange) THEN v := SubrangeType.Base (v);
      ELSIF (v.info.class = Class.Packed)   THEN v := PackedType.Base (v);
      ELSE  RETURN v;
      END;
      IF (u = v) THEN IllegalRecursion (t); RETURN ErrType.T END;
    END;
  END Base;

PROCEDURE CGType (t: T;  in_memory: BOOLEAN): CG.Type =
  BEGIN
    t := Check (t);
    IF (in_memory)
      THEN RETURN t.info.mem_type;
      ELSE RETURN t.info.stk_type;
    END;
  END CGType;

PROCEDURE IsStructured (t: T): BOOLEAN =
  BEGIN
    IF (t = NIL) THEN RETURN FALSE END;
    CASE t.info.class OF
    | Class.Packed    => RETURN IsStructured (Base (t));
    | Class.Record,
      Class.Array,
      Class.OpenArray => RETURN TRUE;
    | Class.Set       => RETURN (Check(t).info.size > Target.Integer.size);
    ELSE                 RETURN FALSE;
    END;
  END IsStructured;

PROCEDURE LoadScalar (t: T) =
  BEGIN
    t := Check (t);
    CASE t.info.class OF
    | Class.Integer, Class.Real, Class.Longreal, Class.Extended,
      Class.Enum, Class.Object, Class.Opaque, Class.Procedure,
      Class.Ref, Class.Subrange =>
        CG.Load_indirect (t.info.stk_type, 0, t.info.size);
    | Class.Packed =>
        IF NOT IsStructured (t) THEN
          CG.Load_indirect (t.info.stk_type, 0, t.info.size);
        END;
    | Class.Set =>
        IF (t.info.size <= Target.Integer.size) THEN
          CG.Load_indirect (t.info.stk_type, 0, t.info.size);
        END;
    | Class.Error, Class.Named, Class.Array, Class.OpenArray, Class.Record =>
        (* skip -- either it's structured or it's an error *)
    END;
  END LoadScalar;

PROCEDURE BeginSetGlobals () =
  BEGIN
    Reorder ();
    cur.next_to_set := cur.module_types;
    cur.module := Module.Current ();
    TypeTbl.Reset (visible_cells);
    Module.VisitImports (NoteCells);
  END BeginSetGlobals;

PROCEDURE NoteCells (m: Module.T) =
  VAR
    mi := Module.GetTypeInfo (m);
    c  := mi.full_cells;
  BEGIN
    WHILE (c # NIL) DO
      EVAL TypeTbl.Put (visible_cells, c.type, c);
      c := c.next;
    END;
  END NoteCells;

PROCEDURE SetGlobals (origin: INTEGER) =
  VAR t := cur.next_to_set;  u: T;
  BEGIN
    WHILE (t # NIL) AND (t.origin <= origin) DO
      u := Check (t);
      IF (u.info.class = Class.Ref) OR (u.info.class = Class.Object) THEN
        IF (TypeTbl.Get (visible_cells, u) = NIL) THEN
          AddCell (u);
        END;
      END;
      t := t.next;
    END;
    cur.next_to_set := t;
    IF (t = NIL) THEN (*done*) TypeTbl.Reset (visible_cells); END;
  END SetGlobals;

PROCEDURE AddCell (t: T) =
  VAR c := NEW (CellInfo);
  BEGIN
    c.next   := cur.full_cells;  cur.full_cells := c;
    c.type   := t;
    c.unit   := cur.module;
    c.offset := Module.Allocate (M3RT.TC_SIZE,Target.Address.align,"typecell");
    EVAL TypeTbl.Put (visible_cells, t, c);
  END AddCell;

PROCEDURE IsOrdinal (t: T): BOOLEAN =
  VAR u := Check (t);  c := u.info.class;
  BEGIN
    RETURN (c = Class.Integer) OR (c = Class.Subrange)
           OR (c = Class.Enum) OR (c = Class.Error)
           OR ((c = Class.Packed) AND IsOrdinal (StripPacked (t)));
  END IsOrdinal;

PROCEDURE Number (t: T): Target.Int =
  VAR
    u := Check (t);
    c := u.info.class;
    b: BOOLEAN;
    min, max, tmp: Target.Int;
  BEGIN
    IF (c = Class.Subrange) THEN
      b := SubrangeType.Split (u, min, max);  <*ASSERT b*>
    ELSIF (c = Class.Enum) THEN
      b := TInt.FromInt (EnumType.NumElts (u), max);  <*ASSERT b*>
      RETURN max;
    ELSIF (c = Class.Integer) THEN
      min := Target.Integer.min;
      max := Target.Integer.max;
    ELSIF (c = Class.Error) THEN
      RETURN TInt.Zero;
    ELSIF (c = Class.Packed) THEN
      RETURN Number (StripPacked (u));
    ELSE
      Error.Msg ("INTERNAL ERROR: Type.Number applied to a non-ordinal type");
      <*ASSERT FALSE*>
    END;
    IF TInt.Subtract (max, min, tmp)
      AND TInt.Add (tmp, TInt.One, max) THEN
      RETURN max;
    END;
    Error.Msg ("type has too many elements");
    RETURN Target.Integer.max;
  END Number;

PROCEDURE GetBounds (t: T;  VAR min, max: Target.Int): BOOLEAN =
  VAR u := Check (t);  c := u.info.class;  b: BOOLEAN;
  BEGIN
    IF (c = Class.Subrange) THEN
      b := SubrangeType.Split (u, min, max);  <*ASSERT b*>
      RETURN TRUE;
    ELSIF (c = Class.Enum) THEN
      b := TInt.FromInt (EnumType.NumElts (u), min);   <*ASSERT b*>
      b := TInt.Subtract (min, TInt.One, max);   <*ASSERT b*>
      min := TInt.Zero;
      RETURN TRUE;
    ELSIF (c = Class.Integer) THEN
      min := Target.Integer.min;
      max := Target.Integer.max;
      RETURN TRUE;
    ELSIF (c = Class.Packed) THEN
      RETURN GetBounds (StripPacked (u), min, max);
    ELSE
      min := TInt.Zero;
      max := TInt.MOne;
      RETURN FALSE;
    END;
  END GetBounds;

PROCEDURE IllegalRecursion (t: T) =
  VAR name: M3.QID;  v: Value.T;
  BEGIN
    IF (t.errored) THEN
      (* don't reissue the error message *)
    ELSIF NamedType.SplitV (t, v) THEN
      Value.IllegalRecursion (v);
    ELSIF NamedType.Split (t, name) THEN
      Error.QID (name, "illegal recursive type declaration");
    ELSE
      Error.Msg ("illegal recursive type declaration");
    END;
    t.errored := TRUE;
  END IllegalRecursion;

(************************************************************************)

PROCEDURE IsEqual (a, b: T;  x: Assumption): BOOLEAN =
  VAR assume: AssumptionRec;  y: Assumption;  ac, bc: Class;
  BEGIN
    IF (a = NIL) OR (b = NIL) THEN RETURN FALSE END;
    IF (a = b) (*** OR (a = NIL) OR (b = NIL) ***) THEN RETURN TRUE END;

    ac := a.info.class;  bc := b.info.class;
    IF (ac = Class.Named) THEN a := Strip (a);  ac := a.info.class END;
    IF (bc = Class.Named) THEN b := Strip (b);  bc := b.info.class END;
    IF (a = b) THEN RETURN TRUE END;
    IF (ac = Class.Error) OR (bc = Class.Error) THEN RETURN TRUE END;
    IF (ac # bc) THEN RETURN FALSE END;

    (* try their id's first *)
    IF (a.uid # NO_UID) AND (b.uid # NO_UID) THEN RETURN (a.uid = b.uid) END;
    
    (* at this point, both types have the same class, but one or both
       of them is unchecked *)

    (* search the existing list of assumptions *)
    y := x;
    WHILE (y # NIL) DO
      IF (y.a = a) THEN
        IF (y.b = b) THEN RETURN TRUE END;
      ELSIF (y.a = b) THEN
        IF (y.b = a) THEN RETURN TRUE END;
      END;
      y := y.prev;
    END;

    (* add a new assumption *)
    assume.prev := x;
    assume.a := a;
    assume.b := b;
    y := LOOPHOLE (ADR (assume), Assumption);

    IF NOT a.isEqual (b, y) THEN RETURN FALSE END;
    IF (a.uid = NO_UID) THEN a.fp := b.fp;  a.uid := b.uid END;
    IF (b.uid = NO_UID) THEN b.fp := a.fp;  b.uid := a.uid END;
    RETURN TRUE;
  END IsEqual;

(************************************************************************)

PROCEDURE IsSubtype (a, b: T): BOOLEAN =
  VAR ac, bc: Class;
  BEGIN
    IF (a = NIL) OR (b = NIL) THEN RETURN FALSE END;
    IF (a = b) (*** OR (a = NIL) OR (b = NIL) ***) THEN RETURN TRUE END;

    ac := a.info.class;  bc := b.info.class;
    IF (ac = Class.Named) THEN a := Strip (a);  ac := a.info.class END;
    IF (bc = Class.Named) THEN b := Strip (b);  bc := b.info.class END;
    IF (ac = Class.Error) OR (bc = Class.Error) THEN RETURN TRUE END;
    IF (ac = Class.Packed) THEN a := StripPacked (a) END;
    IF (bc = Class.Packed) THEN b := StripPacked (b) END;

    (* try their id's first *)
    IF (a.uid = NO_UID) OR (b.uid = NO_UID) THEN
      IF IsEqual (a, b, NIL) THEN RETURN TRUE END;
    ELSIF (a.uid = b.uid) THEN
      RETURN TRUE;
    END;

    (* I give up, call the methods. *)
    RETURN a.isSubtype (b) OR OpaqueType.IsSubtype (a, b);
  END IsSubtype;

PROCEDURE IsAssignable (a, b: T): BOOLEAN =
  VAR i, e: T;  min_a, max_a, min_b, max_b, min, max: Target.Int;
  BEGIN
    IF IsEqual (a, b, NIL) OR IsSubtype (b, a) THEN
      RETURN TRUE;
    ELSIF IsOrdinal (a) THEN
      (* ordinal types:  OK if there is a common supertype
         and they have at least one member in common. *)
      IF IsEqual (Base(a), Base(b), NIL)
         AND GetBounds (a, min_a, max_a)
         AND GetBounds (b, min_b, max_b) THEN
        (* check for a non-empty intersection *)
        min := min_a;  IF TInt.LT (min, min_b) THEN min := min_b; END;
        max := max_a;  IF TInt.LT (max_b, max) THEN max := max_b; END;
        RETURN TInt.LE (min, max);
      ELSE
        RETURN FALSE;
      END;
    ELSIF IsSubtype (a, b) THEN
      (* may be ok, but must narrow rhs before doing the assignment *)
      RETURN IsSubtype (b, Reff.T)
          OR ArrayType.Split (b, i, e)
          OR (IsSubtype (b, Addr.T)
              AND (NOT Module.IsSafe() OR NOT IsEqual (b, Addr.T, NIL)));
    ELSE
      RETURN FALSE;
    END;
  END IsAssignable;

(************************************************************************)

PROCEDURE GlobalUID (t: T): INTEGER =
  VAR u := Check (t);
  BEGIN
    IF (u.uid = NO_UID) THEN
      EVAL TypeFP.FromType (u);
    END;
    IF (t # NIL) AND (t.uid = NO_UID) THEN
      t.uid := u.uid;
      t.fp  := u.fp;
    END;
    RETURN u.uid;
  END GlobalUID;

PROCEDURE Name (t: T): TEXT =
  CONST digits = ARRAY [0..15] OF CHAR { '0','1','2','3','4','5','6','7',
                                         '8','9','a','b','c','d','e','f' };
  VAR buf: ARRAY [0..9] OF CHAR;  h := GlobalUID (t);
  BEGIN
    buf [0] := '_';
    buf [1] := 't';
    FOR i := 9 TO 2 BY -1 DO
      buf [i] := digits [Word.Mod (h, 16)];  h := Word.Divide (h, 16);
    END;
    RETURN Text.FromChars (buf);
  END Name;

(************************************************************************)

PROCEDURE CompileAll () =
  VAR t := cur.module_types;
  BEGIN
    WHILE (t # NIL) DO
      Compile (t);
      t := t.next;
    END;
  END CompileAll;

PROCEDURE Compile (t: T) =
  VAR save: INTEGER;  u := Check (t);
  BEGIN
    IF (NOT compile_started) THEN InitCompilation () END;
    IF (TypeTbl.Put (compiled, u, u) # NIL) THEN RETURN END;
    IF (TypeTbl.Get (visible_types, u) # NIL) THEN
      (* it's visible in one of our imports *)
      Host.env.note_type (GlobalUID (u), imported := TRUE);
    ELSE
      save := Scanner.offset;
      Scanner.offset := t.origin;
      t.compile ();
      Scanner.offset := save;
      IF Module.IsInterface () THEN
        Host.env.note_type (GlobalUID (t), imported := FALSE);
      END;
    END;
  END Compile;

PROCEDURE InitCompilation () =
  BEGIN
    compile_started := TRUE;
    TypeTbl.Reset (compiled);
    TypeTbl.Reset (visible_types);
    IF (Host.emitBuiltins) THEN RETURN END;
    Module.VisitImports (NoteTypes);
    EVAL TypeTbl.Put (compiled, Check(Addr.T),      Addr.T);
    EVAL TypeTbl.Put (compiled, Check(Bool.T),      Bool.T);
    EVAL TypeTbl.Put (compiled, Check(CChar.T),     CChar.T);
    EVAL TypeTbl.Put (compiled, Check(Card.T),      Card.T);
    EVAL TypeTbl.Put (compiled, Check(EReel.T),     EReel.T);
    EVAL TypeTbl.Put (compiled, Check(Int.T),       Int.T);
    EVAL TypeTbl.Put (compiled, Check(LReel.T),     LReel.T);
    EVAL TypeTbl.Put (compiled, Check(Mutex.T),     Mutex.T);
    EVAL TypeTbl.Put (compiled, Check(Null.T),      Null.T);
    EVAL TypeTbl.Put (compiled, Check(ObjectRef.T), ObjectRef.T);
    EVAL TypeTbl.Put (compiled, Check(ObjectAdr.T), ObjectAdr.T);
    EVAL TypeTbl.Put (compiled, Check(Reel.T),      Reel.T);
    EVAL TypeTbl.Put (compiled, Check(Reff.T),      Reff.T);
    EVAL TypeTbl.Put (compiled, Check(Textt.T),     Textt.T);
    EVAL TypeTbl.Put (compiled, Check(ErrType.T),   ErrType.T);
  END InitCompilation;

PROCEDURE NoteTypes (m: Module.T) =
  VAR
    mi := Module.GetTypeInfo (m);
    t  := mi.module_types;
  BEGIN
    WHILE (t # NIL) DO
      IF (t.info.class # Class.Named) THEN
        EVAL TypeTbl.Put (visible_types, t, t);
      END;
      t := t.next;
    END;
  END NoteTypes;

PROCEDURE AddCellPtr (t: T): CellPtr =
  VAR c := NEW (CellPtr);
  BEGIN
    c.next   := cur.cell_ptrs;  cur.cell_ptrs := c;
    c.type   := t;
    c.offset := Module.Allocate (2 * Target.Address.pack,
                                 Target.Address.align, "typecell ptr");
    RETURN c;
  END AddCellPtr;

PROCEDURE FindCell (t: T): CellPtr =
  VAR c := cur.cell_ptrs;  u := Check (t);
  BEGIN
    LOOP
      IF (c = NIL) THEN RETURN AddCellPtr (u); END;
      IF IsEqual (c.type, u, NIL) THEN RETURN c; END;
      c := c.next;
    END;
  END FindCell;

PROCEDURE LoadInfo (t: T;  offset: INTEGER;  addr: BOOLEAN := FALSE) =
  VAR
    c := FindCell (t);
    v := Module.GlobalData (NIL);
  BEGIN
    IF (offset < 0) THEN
      <*ASSERT NOT addr*>
      CG.Load_addr (v, c.offset);
      CG.Boost_alignment (M3RT.TC_ALIGN);
    ELSIF (offset = M3RT.TC_typecode) THEN
      CG.Load_int (v, c.offset + Target.Address.pack);
    ELSE
      CG.Load_addr (v, c.offset);
      CG.Boost_alignment (M3RT.TC_ALIGN);
      IF (addr) THEN
        CG.Load_indirect (CG.Type.Addr, offset, Target.Address.size);
        CG.Boost_alignment (Target.Address.align);
      ELSE
        CG.Load_indirect (CG.Type.Int, offset, Target.Integer.size);
      END;
    END;
  END LoadInfo;

PROCEDURE InitCost (t: T;  ifZeroed: BOOLEAN): INTEGER =
  BEGIN
    RETURN Check (t).initCost (ifZeroed);
  END InitCost;

PROCEDURE GenMap (t: T;  offset, size: INTEGER;  refs_only: BOOLEAN) =
  VAR u := Check (t);  nat_sz := u.info.size;
  BEGIN
    IF (size < 0) THEN size := nat_sz END;
    IF (refs_only) AND (NOT u.info.isTraced) THEN RETURN END;
    u.mapper (offset, MIN (size, nat_sz), refs_only);
  END GenMap;

PROCEDURE GenDesc (t: T) =
  BEGIN
    Check (t).gen_desc ();
  END GenDesc;

PROCEDURE GenTag (t: T;  tag: TEXT;  offset: INTEGER) =
  BEGIN
    (** CG.Gen_location (t.origin); **)
    CG.Comment (offset, tag, Name (t));
  END GenTag;

PROCEDURE GenCells (): INTEGER =
  VAR cell := cur.full_cells;  prev := 0;
  BEGIN
    WHILE (cell # NIL) DO
      CG.Comment (cell.offset, "typecell for ", Name (cell.type));
      IF (cell.type.info.class = Class.Ref)
        THEN RefType.InitTypecell (cell.type, cell.offset, prev);
        ELSE ObjectType.InitTypecell (cell.type, cell.offset, prev);
      END;
      prev := cell.offset;
      cell := cell.next;
    END;
    RETURN prev;
  END GenCells;

PROCEDURE GenCellPtrs (): INTEGER =
  VAR
    unit := Module.GlobalData (NIL);
    cell := cur.cell_ptrs;
    prev := 0;
  BEGIN
    (* initialize the linked list of type cell pointers *)
    WHILE (cell # NIL) DO
      IF (prev # 0) THEN CG.Init_var (cell.offset, unit, prev); END;
      CG.Init_intt (cell.offset + Target.Address.pack, Target.Integer.size,
                      GlobalUID (cell.type));
      prev := cell.offset;
      cell := cell.next;
    END;
    RETURN prev;
  END GenCellPtrs;

(********************** variable initialization **************************)

PROCEDURE InitValue (t: T;  zeroed: BOOLEAN) =
  VAR c1, c2: INTEGER;  tmp: CG.Val;
  BEGIN
    t := Check (t);

    c1 := InitCost (t, zeroed);
    IF (c1 = 0) THEN
      CG.Discard (CG.Type.Addr);
      RETURN;
    END;

    IF (NOT zeroed) THEN
      c2 := InitCost (t, TRUE);
      IF (c2 = 0) THEN
        (* all we need to do is zero it *)
        CG.Boost_alignment (t.info.alignment);
        Zero (t);
        RETURN;
      ELSIF (c1 > 2 * c2) THEN
        (* it will pay to zero the variable first *)
        tmp := CG.Pop ();
        CG.Push (tmp);
        CG.Boost_alignment (t.info.alignment);
        Zero (t);
        CG.Push (tmp);
        CG.Boost_alignment (t.info.alignment);
        t.initValue (TRUE);
        CG.Free (tmp);
        RETURN;
      END;
    END;

    t.initValue (zeroed);
  END InitValue;

PROCEDURE Zero (full_t: T) =
  VAR
    u    := Check (full_t);
    t    := Base (u);
    size := u.info.size;
  BEGIN
    CASE t.info.class OF
    | Class.Integer, Class.Subrange, Class.Enum =>
        CG.Load_integer (TInt.Zero);
        CG.Store_indirect (u.info.stk_type(*CG.Type.Int*), 0, size);
    | Class.Real =>
        CG.Load_float (TFloat.ZeroR);
        CG.Store_indirect (CG.Type.Reel, 0, size);
    | Class.Longreal =>
        CG.Load_float (TFloat.ZeroL);
        CG.Store_indirect (CG.Type.LReel, 0, size);
    | Class.Extended =>
        CG.Load_float (TFloat.ZeroX);
        CG.Store_indirect (CG.Type.XReel, 0, size);
    | Class.Opaque, Class.Ref, Class.Object, Class.Procedure =>
        CG.Load_nil ();
        CG.Store_indirect (CG.Type.Addr, 0, size);
    | Class.Set =>
        IF (size <= Target.Integer.size) THEN
          CG.Load_integer (TInt.Zero);
          CG.Store_indirect (CG.Type.Int, 0, size);
        ELSIF (size <= 8 * Target.Integer.size) THEN
          ZeroWords (size);
        ELSE
          CG.Zero (size);
        END;
    ELSE
        IF (size <= 0) THEN
          CG.Discard (CG.Type.Addr);
        ELSIF (size <= 8 * Target.Integer.size)
          AND (t.info.alignment >= Target.Integer.align)
          AND (size MOD Target.Integer.align = 0) THEN
          ZeroWords (size);
        ELSE
          CG.Zero (size);
        END;
    END;
  END Zero;

PROCEDURE ZeroWords (size: INTEGER) =
  VAR lv := CG.Pop ();  offset := 0;
  BEGIN
    WHILE (size >= Target.Integer.size) DO
      CG.Push (lv);
      CG.Load_integer (TInt.Zero);
      CG.Store_indirect (CG.Type.Int, offset, Target.Integer.size);
      INC (offset, Target.Integer.size);
      DEC (size, Target.Integer.size);
    END;
    CG.Free (lv);
  END ZeroWords;

(************************** default methods *******************************)

PROCEDURE NeverEqual (a, b: TT;  <*UNUSED*> x: Assumption): BOOLEAN =
  BEGIN
    <* ASSERT a # b *>
    RETURN FALSE;
  END NeverEqual;

PROCEDURE NoSubtypes (<*UNUSED*> a, b: T): BOOLEAN =
  BEGIN
    (* a is not a subtype of any type b *)
    RETURN FALSE;
  END NoSubtypes;

PROCEDURE InitToZeros (t: T;  zeroed: BOOLEAN) =
  BEGIN
    IF NOT zeroed
      THEN Zero (t);
      ELSE CG.Discard (CG.Type.Addr);
    END;
  END InitToZeros;

PROCEDURE GenRefMap (t: T;  offset, size: INTEGER;  refs_only: BOOLEAN) =
  VAR u := Check (t);
  BEGIN
    <*ASSERT size = Target.Address.size*>
    IF u.info.isTraced THEN
      TipeMap.Add (offset, TipeMap.Op.Ref, 0);
    ELSIF (NOT refs_only) THEN
      TipeMap.Add (offset, TipeMap.Op.UntracedRef, 0);
    END;
  END GenRefMap;

PROCEDURE GenRefDesc (t: T) =
  TYPE  TT = TipeDesc.Op;
  CONST XX = ARRAY BOOLEAN OF TT { TT.UntracedRef, TT.Ref };
  VAR u := Check (t);
  BEGIN
    IF TipeDesc.AddO (XX [u.info.isTraced], u) THEN
      TipeDesc.AddU (GlobalUID (u));
    END;
  END GenRefDesc;

PROCEDURE ScalarAlign (t: TT;  offset: INTEGER): BOOLEAN =
  VAR u := Check (t);
  BEGIN
    RETURN (offset MOD u.info.alignment = 0);
  END ScalarAlign;

BEGIN
END Type.
