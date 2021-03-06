(* Copyright (C) 1992, Digital Equipment Corporation           *)
(* All rights reserved.                                        *)
(* See the file COPYRIGHT for a full description.              *)

(* File: Tipe.m3                                               *)
(* Last Modified On Wed Mar  1 08:45:33 PST 1995 By kalsow     *)
(*      Modified On Tue Nov 27 22:16:56 1990 By muller         *)

MODULE Tipe;

IMPORT M3, M3ID, CG, Value, ValueRep, Scope, Error, OpaqueType, WebInfo;
IMPORT Token, Type, Decl, Scanner, NamedType, RefType, ObjectType;
FROM Scanner IMPORT GetToken, Fail, Match, MatchID, cur;

TYPE
  T = Value.T BRANDED "Tipe.T" OBJECT 
        value      : Type.T;
        is_new_ref : BOOLEAN;
      OVERRIDES
        typeCheck   := Check;
        set_globals := SetGlobals;
        load        := ValueRep.NoLoader;
        declare     := Compile;
        const_init  := ValueRep.NoInit;
        need_init   := ValueRep.Never;
        lang_init   := ValueRep.NoInit;
        user_init   := ValueRep.NoInit;
	toExpr      := ValueRep.NoExpr;
	toType      := ToType;
        typeOf      := ValueRep.TypeVoid;
        base        := ValueRep.Self;
        add_fp_tag  := AddFPTag;
        fp_type     := ToType;
      END;

PROCEDURE Parse (READONLY att: Decl.Attributes) =
  VAR t: T;  id: M3ID.T;
  BEGIN
    IF att.isInline THEN Error.Msg ("a type cannot be inline"); END;
    IF att.isExternal THEN
      Error.Msg ("a type cannot be external");
    ELSIF att.callingConv # NIL THEN
      Error.Msg ("a type does not have a calling convention");
    END;

    Match (Token.T.tTYPE);

    WHILE (cur.token = Token.T.tIDENT) DO
      id := MatchID ();
      t := Create (id);
      t.unused := att.isUnused;
      t.obsolete := att.isObsolete;
      Scope.Insert (t);
      CASE cur.token OF
      | Token.T.tEQUAL =>
          GetToken (); (* = *)
	  t.value := Type.Parse ();
      | Token.T.tSUBTYPE =>
          GetToken (); (* <: *)
          t.value := OpaqueType.New (Type.Parse (), t);
      ELSE
          Fail ("missing \'=\' or \'<:\'");
      END;
      Match (Token.T.tSEMI);
    END;

  END Parse;

PROCEDURE Create (name: M3ID.T): T =
  VAR t: T;
  BEGIN
    t := NEW (T);
    ValueRep.Init (t, name, Value.Class.Type);
    t.readonly   := TRUE;
    t.value      := NIL;
    t.is_new_ref := FALSE;
    RETURN t;
  END Create;

PROCEDURE Define (name: TEXT;  type: Type.T;  reserved: BOOLEAN) =
  VAR t: T;
  BEGIN
    t := Create (M3ID.Add (name));
    t.value := type;
    Scope.Insert (t);
    IF (reserved) THEN Scanner.NoteReserved (t.name, t) END;
  END Define;

PROCEDURE DefineOpaque (name: TEXT;  super: Type.T): Type.T =
  VAR t: T;
  BEGIN
    t := Create (M3ID.Add (name));
    Scope.Insert (t);
    t.value := OpaqueType.New (super, t);
    Scanner.NoteReserved (t.name, t);
    RETURN t.value;
  END DefineOpaque;

PROCEDURE Check (t: T;  <*UNUSED*> VAR cs: Value.CheckState) =
  VAR info: Type.Info;  initial := t.value;  qid: M3.QID;  name: TEXT;
  BEGIN
    t.value := Type.CheckInfo (t.value, info);

    IF (NOT t.imported)
      AND ((info.class = Type.Class.Ref) OR (info.class = Type.Class.Object))
      AND (NOT NamedType.Split (initial, qid)) THEN
      name := Value.GlobalName (t, dots := TRUE, with_module := TRUE);
      IF (info.class = Type.Class.Ref)
        THEN RefType.NoteRefName (t.value, name);
        ELSE ObjectType.NoteRefName (t.value, name);
      END;
    END;
  END Check;

PROCEDURE Compile (t: T): BOOLEAN =
  VAR uid: INTEGER;  name: TEXT;
  BEGIN
    Type.Compile (t.value);
    IF NOT t.imported THEN
      uid  := Type.GlobalUID (t.value);
      name := Value.GlobalName (t, dots := TRUE, with_module := FALSE);
      CG.Declare_typename (uid, M3ID.Add (name));
      WebInfo.Declare_typename (uid, t);
    END;
    RETURN TRUE;
  END Compile;

PROCEDURE SetGlobals (<*UNUSED*> t: T) =
  BEGIN
    (* Type.SetGlobals (t.value); *)
  END SetGlobals;

PROCEDURE AddFPTag (t: T; VAR x: M3.FPInfo): CARDINAL =
  BEGIN
    ValueRep.FPStart (t, x, "TYPE ", 0, global := TRUE);
    RETURN 1;
  END AddFPTag;

PROCEDURE ToType (t: T): Type.T =
  BEGIN
    RETURN t.value;
  END ToType;

BEGIN
END Tipe.
