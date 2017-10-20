# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3front.a

Abs_i.o: Abs.is
Abs_m.o: Abs.ms
Adr_i.o: Adr.is
Adr_m.o: Adr.ms
AdrSize_i.o: AdrSize.is
AdrSize_m.o: AdrSize.ms
BitSize_i.o: BitSize.is
BitSize_m.o: BitSize.ms
BuiltinOps_i.o: BuiltinOps.is
BuiltinOps_m.o: BuiltinOps.ms
ByteSize_i.o: ByteSize.is
ByteSize_m.o: ByteSize.ms
Ceiling_i.o: Ceiling.is
Ceiling_m.o: Ceiling.ms
Dec_i.o: Dec.is
Dec_m.o: Dec.ms
Dispose_i.o: Dispose.is
Dispose_m.o: Dispose.ms
First_i.o: First.is
First_m.o: First.ms
Floatt_i.o: Floatt.is
Floatt_m.o: Floatt.ms
Floor_i.o: Floor.is
Floor_m.o: Floor.ms
Inc_i.o: Inc.is
Inc_m.o: Inc.ms
IsType_i.o: IsType.is
IsType_m.o: IsType.ms
Last_i.o: Last.is
Last_m.o: Last.ms
Loophole_i.o: Loophole.is
Loophole_m.o: Loophole.ms
Max_i.o: Max.is
Max_m.o: Max.ms
Min_i.o: Min.is
Min_m.o: Min.ms
Narrow_i.o: Narrow.is
Narrow_m.o: Narrow.ms
New_i.o: New.is
New_m.o: New.ms
Number_i.o: Number.is
Number_m.o: Number.ms
Ord_i.o: Ord.is
Ord_m.o: Ord.ms
Round_i.o: Round.is
Round_m.o: Round.ms
Subarray_i.o: Subarray.is
Subarray_m.o: Subarray.ms
Trunc_i.o: Trunc.is
Trunc_m.o: Trunc.ms
Typecode_i.o: Typecode.is
Typecode_m.o: Typecode.ms
Val_i.o: Val.is
Val_m.o: Val.ms
WordAnd_i.o: WordAnd.is
WordAnd_m.o: WordAnd.ms
WordDivide_i.o: WordDivide.is
WordDivide_m.o: WordDivide.ms
WordExtract_i.o: WordExtract.is
WordExtract_m.o: WordExtract.ms
WordGE_i.o: WordGE.is
WordGE_m.o: WordGE.ms
WordGT_i.o: WordGT.is
WordGT_m.o: WordGT.ms
WordInsert_i.o: WordInsert.is
WordInsert_m.o: WordInsert.ms
WordLE_i.o: WordLE.is
WordLE_m.o: WordLE.ms
WordLT_i.o: WordLT.is
WordLT_m.o: WordLT.ms
WordMinus_i.o: WordMinus.is
WordMinus_m.o: WordMinus.ms
WordMod_i.o: WordMod.is
WordMod_m.o: WordMod.ms
WordModule_i.o: WordModule.is
WordModule_m.o: WordModule.ms
WordNot_i.o: WordNot.is
WordNot_m.o: WordNot.ms
WordOr_i.o: WordOr.is
WordOr_m.o: WordOr.ms
WordPlus_i.o: WordPlus.is
WordPlus_m.o: WordPlus.ms
WordRotate_i.o: WordRotate.is
WordRotate_m.o: WordRotate.ms
WordShift_i.o: WordShift.is
WordShift_m.o: WordShift.ms
WordTimes_i.o: WordTimes.is
WordTimes_m.o: WordTimes.ms
WordXor_i.o: WordXor.is
WordXor_m.o: WordXor.ms
Addr_i.o: Addr.is
Addr_m.o: Addr.ms
Bool_i.o: Bool.is
Bool_m.o: Bool.ms
BuiltinTypes_i.o: BuiltinTypes.is
BuiltinTypes_m.o: BuiltinTypes.ms
CChar_i.o: CChar.is
CChar_m.o: CChar.ms
Card_i.o: Card.is
Card_m.o: Card.ms
EReel_i.o: EReel.is
EReel_m.o: EReel.ms
ErrType_i.o: ErrType.is
ErrType_m.o: ErrType.ms
Int_i.o: Int.is
Int_m.o: Int.ms
LReel_i.o: LReel.is
LReel_m.o: LReel.ms
Mutex_i.o: Mutex.is
Mutex_m.o: Mutex.ms
Null_i.o: Null.is
Null_m.o: Null.ms
ObjectAdr_i.o: ObjectAdr.is
ObjectAdr_m.o: ObjectAdr.ms
ObjectRef_i.o: ObjectRef.is
ObjectRef_m.o: ObjectRef.ms
Reel_i.o: Reel.is
Reel_m.o: Reel.ms
Reff_i.o: Reff.is
Reff_m.o: Reff.ms
Textt_i.o: Textt.is
Textt_m.o: Textt.ms
Expr_i.o: Expr.is
Expr_m.o: Expr.ms
ExprRep_i.o: ExprRep.is
AddExpr_i.o: AddExpr.is
AddExpr_m.o: AddExpr.ms
AddressExpr_i.o: AddressExpr.is
AddressExpr_m.o: AddressExpr.ms
AndExpr_i.o: AndExpr.is
AndExpr_m.o: AndExpr.ms
ArrayExpr_i.o: ArrayExpr.is
ArrayExpr_m.o: ArrayExpr.ms
CallExpr_i.o: CallExpr.is
CallExpr_m.o: CallExpr.ms
CastExpr_i.o: CastExpr.is
CastExpr_m.o: CastExpr.ms
CheckExpr_i.o: CheckExpr.is
CheckExpr_m.o: CheckExpr.ms
CompareExpr_i.o: CompareExpr.is
CompareExpr_m.o: CompareExpr.ms
ConcatExpr_i.o: ConcatExpr.is
ConcatExpr_m.o: ConcatExpr.ms
ConsExpr_i.o: ConsExpr.is
ConsExpr_m.o: ConsExpr.ms
DerefExpr_i.o: DerefExpr.is
DerefExpr_m.o: DerefExpr.ms
DivExpr_i.o: DivExpr.is
DivExpr_m.o: DivExpr.ms
DivideExpr_i.o: DivideExpr.is
DivideExpr_m.o: DivideExpr.ms
EnumExpr_i.o: EnumExpr.is
EnumExpr_m.o: EnumExpr.ms
EqualExpr_i.o: EqualExpr.is
EqualExpr_m.o: EqualExpr.ms
ExprParse_i.o: ExprParse.is
ExprParse_m.o: ExprParse.ms
InExpr_i.o: InExpr.is
InExpr_m.o: InExpr.ms
IntegerExpr_i.o: IntegerExpr.is
IntegerExpr_m.o: IntegerExpr.ms
KeywordExpr_i.o: KeywordExpr.is
KeywordExpr_m.o: KeywordExpr.ms
MethodExpr_i.o: MethodExpr.is
MethodExpr_m.o: MethodExpr.ms
ModExpr_i.o: ModExpr.is
ModExpr_m.o: ModExpr.ms
MultiplyExpr_i.o: MultiplyExpr.is
MultiplyExpr_m.o: MultiplyExpr.ms
NamedExpr_i.o: NamedExpr.is
NamedExpr_m.o: NamedExpr.ms
NegateExpr_i.o: NegateExpr.is
NegateExpr_m.o: NegateExpr.ms
NilChkExpr_i.o: NilChkExpr.is
NilChkExpr_m.o: NilChkExpr.ms
NotExpr_i.o: NotExpr.is
NotExpr_m.o: NotExpr.ms
OrExpr_i.o: OrExpr.is
OrExpr_m.o: OrExpr.ms
PlusExpr_i.o: PlusExpr.is
PlusExpr_m.o: PlusExpr.ms
ProcExpr_i.o: ProcExpr.is
ProcExpr_m.o: ProcExpr.ms
QualifyExpr_i.o: QualifyExpr.is
QualifyExpr_m.o: QualifyExpr.ms
RangeExpr_i.o: RangeExpr.is
RangeExpr_m.o: RangeExpr.ms
RecordExpr_i.o: RecordExpr.is
RecordExpr_m.o: RecordExpr.ms
ReelExpr_i.o: ReelExpr.is
ReelExpr_m.o: ReelExpr.ms
SetExpr_i.o: SetExpr.is
SetExpr_m.o: SetExpr.ms
SubscriptExpr_i.o: SubscriptExpr.is
SubscriptExpr_m.o: SubscriptExpr.ms
SubtractExpr_i.o: SubtractExpr.is
SubtractExpr_m.o: SubtractExpr.ms
TextExpr_i.o: TextExpr.is
TextExpr_m.o: TextExpr.ms
TypeExpr_i.o: TypeExpr.is
TypeExpr_m.o: TypeExpr.ms
VarExpr_i.o: VarExpr.is
VarExpr_m.o: VarExpr.ms
M3Compiler_i.o: M3Compiler.is
M3Compiler_m.o: M3Compiler.ms
M3_i.o: M3.is
M3_m.o: M3.ms
M3Header_i.o: M3Header.is
M3Header_m.o: M3Header.ms
M3String_i.o: M3String.is
M3String_m.o: M3String.ms
Token_i.o: Token.is
Token_m.o: Token.ms
Error_i.o: Error.is
Error_m.o: Error.ms
Host_i.o: Host.is
Host_m.o: Host.ms
Marker_i.o: Marker.is
Marker_m.o: Marker.ms
Scanner_i.o: Scanner.is
Scanner_m.o: Scanner.ms
Scope_i.o: Scope.is
Scope_m.o: Scope.ms
Coverage_i.o: Coverage.is
Coverage_m.o: Coverage.ms
ESet_i.o: ESet.is
ESet_m.o: ESet.ms
ProcBody_i.o: ProcBody.is
ProcBody_m.o: ProcBody.ms
CG_i.o: CG.is
CG_m.o: CG.ms
Runtime_i.o: Runtime.is
Runtime_m.o: Runtime.ms
TipeMap_i.o: TipeMap.is
TipeMap_m.o: TipeMap.ms
TipeDesc_i.o: TipeDesc.is
TipeDesc_m.o: TipeDesc.ms
Tracer_i.o: Tracer.is
Tracer_m.o: Tracer.ms
WebInfo_i.o: WebInfo.is
WebInfo_m.o: WebInfo.ms
Stmt_i.o: Stmt.is
Stmt_m.o: Stmt.ms
StmtRep_i.o: StmtRep.is
AssertStmt_i.o: AssertStmt.is
AssertStmt_m.o: AssertStmt.ms
AssignStmt_i.o: AssignStmt.is
AssignStmt_m.o: AssignStmt.ms
BlockStmt_i.o: BlockStmt.is
BlockStmt_m.o: BlockStmt.ms
CallStmt_i.o: CallStmt.is
CallStmt_m.o: CallStmt.ms
CaseStmt_i.o: CaseStmt.is
CaseStmt_m.o: CaseStmt.ms
EvalStmt_i.o: EvalStmt.is
EvalStmt_m.o: EvalStmt.ms
ExitStmt_i.o: ExitStmt.is
ExitStmt_m.o: ExitStmt.ms
ForStmt_i.o: ForStmt.is
ForStmt_m.o: ForStmt.ms
IfStmt_i.o: IfStmt.is
IfStmt_m.o: IfStmt.ms
LockStmt_i.o: LockStmt.is
LockStmt_m.o: LockStmt.ms
LoopStmt_i.o: LoopStmt.is
LoopStmt_m.o: LoopStmt.ms
RaiseStmt_i.o: RaiseStmt.is
RaiseStmt_m.o: RaiseStmt.ms
RepeatStmt_i.o: RepeatStmt.is
RepeatStmt_m.o: RepeatStmt.ms
ReturnStmt_i.o: ReturnStmt.is
ReturnStmt_m.o: ReturnStmt.ms
TryFinStmt_i.o: TryFinStmt.is
TryFinStmt_m.o: TryFinStmt.ms
TryStmt_i.o: TryStmt.is
TryStmt_m.o: TryStmt.ms
TypeCaseStmt_i.o: TypeCaseStmt.is
TypeCaseStmt_m.o: TypeCaseStmt.ms
WhileStmt_i.o: WhileStmt.is
WhileStmt_m.o: WhileStmt.ms
WithStmt_i.o: WithStmt.is
WithStmt_m.o: WithStmt.ms
Type_i.o: Type.is
Type_m.o: Type.ms
TypeRep_i.o: TypeRep.is
ArrayType_i.o: ArrayType.is
ArrayType_m.o: ArrayType.ms
EnumType_i.o: EnumType.is
EnumType_m.o: EnumType.ms
NamedType_i.o: NamedType.is
NamedType_m.o: NamedType.ms
ObjectType_i.o: ObjectType.is
ObjectType_m.o: ObjectType.ms
OpaqueType_i.o: OpaqueType.is
OpaqueType_m.o: OpaqueType.ms
OpenArrayType_i.o: OpenArrayType.is
OpenArrayType_m.o: OpenArrayType.ms
PackedType_i.o: PackedType.is
PackedType_m.o: PackedType.ms
ProcType_i.o: ProcType.is
ProcType_m.o: ProcType.ms
RecordType_i.o: RecordType.is
RecordType_m.o: RecordType.ms
RefType_i.o: RefType.is
RefType_m.o: RefType.ms
SetType_i.o: SetType.is
SetType_m.o: SetType.ms
SubrangeType_i.o: SubrangeType.is
SubrangeType_m.o: SubrangeType.ms
TypeFP_i.o: TypeFP.is
TypeFP_m.o: TypeFP.ms
TypeTbl_i.o: TypeTbl.is
TypeTbl_m.o: TypeTbl.ms
UserProc_i.o: UserProc.is
UserProc_m.o: UserProc.ms
Value_i.o: Value.is
Value_m.o: Value.ms
ValueRep_i.o: ValueRep.is
Constant_i.o: Constant.is
Constant_m.o: Constant.ms
Decl_i.o: Decl.is
Decl_m.o: Decl.ms
EnumElt_i.o: EnumElt.is
EnumElt_m.o: EnumElt.ms
Exceptionz_i.o: Exceptionz.is
Exceptionz_m.o: Exceptionz.ms
External_i.o: External.is
External_m.o: External.ms
Field_i.o: Field.is
Field_m.o: Field.ms
Formal_i.o: Formal.is
Formal_m.o: Formal.ms
Ident_i.o: Ident.is
Ident_m.o: Ident.ms
Method_i.o: Method.is
Method_m.o: Method.ms
Module_i.o: Module.is
Module_m.o: Module.ms
Procedure_i.o: Procedure.is
Procedure_m.o: Procedure.ms
Revelation_i.o: Revelation.is
Revelation_m.o: Revelation.ms
Tipe_i.o: Tipe.is
Tipe_m.o: Tipe.ms
Variable_i.o: Variable.is
Variable_m.o: Variable.ms

OBJS=Variable_m.o Variable_i.o Tipe_m.o Tipe_i.o Revelation_m.o Revelation_i.o Procedure_m.o Procedure_i.o Module_m.o Module_i.o Method_m.o Method_i.o Ident_m.o Ident_i.o Formal_m.o Formal_i.o Field_m.o Field_i.o External_m.o External_i.o Exceptionz_m.o Exceptionz_i.o EnumElt_m.o EnumElt_i.o Decl_m.o Decl_i.o Constant_m.o Constant_i.o ValueRep_i.o Value_m.o Value_i.o UserProc_m.o UserProc_i.o TypeTbl_m.o TypeTbl_i.o TypeFP_m.o TypeFP_i.o SubrangeType_m.o SubrangeType_i.o SetType_m.o SetType_i.o RefType_m.o RefType_i.o RecordType_m.o RecordType_i.o ProcType_m.o ProcType_i.o PackedType_m.o PackedType_i.o OpenArrayType_m.o OpenArrayType_i.o OpaqueType_m.o OpaqueType_i.o ObjectType_m.o ObjectType_i.o NamedType_m.o NamedType_i.o EnumType_m.o EnumType_i.o ArrayType_m.o ArrayType_i.o TypeRep_i.o Type_m.o Type_i.o WithStmt_m.o WithStmt_i.o WhileStmt_m.o WhileStmt_i.o TypeCaseStmt_m.o TypeCaseStmt_i.o TryStmt_m.o TryStmt_i.o TryFinStmt_m.o TryFinStmt_i.o ReturnStmt_m.o ReturnStmt_i.o RepeatStmt_m.o RepeatStmt_i.o RaiseStmt_m.o RaiseStmt_i.o LoopStmt_m.o LoopStmt_i.o LockStmt_m.o LockStmt_i.o IfStmt_m.o IfStmt_i.o ForStmt_m.o ForStmt_i.o ExitStmt_m.o ExitStmt_i.o EvalStmt_m.o EvalStmt_i.o CaseStmt_m.o CaseStmt_i.o CallStmt_m.o CallStmt_i.o BlockStmt_m.o BlockStmt_i.o AssignStmt_m.o AssignStmt_i.o AssertStmt_m.o AssertStmt_i.o StmtRep_i.o Stmt_m.o Stmt_i.o WebInfo_m.o WebInfo_i.o Tracer_m.o Tracer_i.o TipeDesc_m.o TipeDesc_i.o TipeMap_m.o TipeMap_i.o Runtime_m.o Runtime_i.o CG_m.o CG_i.o ProcBody_m.o ProcBody_i.o ESet_m.o ESet_i.o Coverage_m.o Coverage_i.o Scope_m.o Scope_i.o Scanner_m.o Scanner_i.o Marker_m.o Marker_i.o Host_m.o Host_i.o Error_m.o Error_i.o Token_m.o Token_i.o M3String_m.o M3String_i.o M3Header_m.o M3Header_i.o M3_m.o M3_i.o M3Compiler_m.o M3Compiler_i.o VarExpr_m.o VarExpr_i.o TypeExpr_m.o TypeExpr_i.o TextExpr_m.o TextExpr_i.o SubtractExpr_m.o SubtractExpr_i.o SubscriptExpr_m.o SubscriptExpr_i.o SetExpr_m.o SetExpr_i.o ReelExpr_m.o ReelExpr_i.o RecordExpr_m.o RecordExpr_i.o RangeExpr_m.o RangeExpr_i.o QualifyExpr_m.o QualifyExpr_i.o ProcExpr_m.o ProcExpr_i.o PlusExpr_m.o PlusExpr_i.o OrExpr_m.o OrExpr_i.o NotExpr_m.o NotExpr_i.o NilChkExpr_m.o NilChkExpr_i.o NegateExpr_m.o NegateExpr_i.o NamedExpr_m.o NamedExpr_i.o MultiplyExpr_m.o MultiplyExpr_i.o ModExpr_m.o ModExpr_i.o MethodExpr_m.o MethodExpr_i.o KeywordExpr_m.o KeywordExpr_i.o IntegerExpr_m.o IntegerExpr_i.o InExpr_m.o InExpr_i.o ExprParse_m.o ExprParse_i.o EqualExpr_m.o EqualExpr_i.o EnumExpr_m.o EnumExpr_i.o DivideExpr_m.o DivideExpr_i.o DivExpr_m.o DivExpr_i.o DerefExpr_m.o DerefExpr_i.o ConsExpr_m.o ConsExpr_i.o ConcatExpr_m.o ConcatExpr_i.o CompareExpr_m.o CompareExpr_i.o CheckExpr_m.o CheckExpr_i.o CastExpr_m.o CastExpr_i.o CallExpr_m.o CallExpr_i.o ArrayExpr_m.o ArrayExpr_i.o AndExpr_m.o AndExpr_i.o AddressExpr_m.o AddressExpr_i.o AddExpr_m.o AddExpr_i.o ExprRep_i.o Expr_m.o Expr_i.o Textt_m.o Textt_i.o Reff_m.o Reff_i.o Reel_m.o Reel_i.o ObjectRef_m.o ObjectRef_i.o ObjectAdr_m.o ObjectAdr_i.o Null_m.o Null_i.o Mutex_m.o Mutex_i.o LReel_m.o LReel_i.o Int_m.o Int_i.o ErrType_m.o ErrType_i.o EReel_m.o EReel_i.o Card_m.o Card_i.o CChar_m.o CChar_i.o BuiltinTypes_m.o BuiltinTypes_i.o Bool_m.o Bool_i.o Addr_m.o Addr_i.o WordXor_m.o WordXor_i.o WordTimes_m.o WordTimes_i.o WordShift_m.o WordShift_i.o WordRotate_m.o WordRotate_i.o WordPlus_m.o WordPlus_i.o WordOr_m.o WordOr_i.o WordNot_m.o WordNot_i.o WordModule_m.o WordModule_i.o WordMod_m.o WordMod_i.o WordMinus_m.o WordMinus_i.o WordLT_m.o WordLT_i.o WordLE_m.o WordLE_i.o WordInsert_m.o WordInsert_i.o WordGT_m.o WordGT_i.o WordGE_m.o WordGE_i.o WordExtract_m.o WordExtract_i.o WordDivide_m.o WordDivide_i.o WordAnd_m.o WordAnd_i.o Val_m.o Val_i.o Typecode_m.o Typecode_i.o Trunc_m.o Trunc_i.o Subarray_m.o Subarray_i.o Round_m.o Round_i.o Ord_m.o Ord_i.o Number_m.o Number_i.o New_m.o New_i.o Narrow_m.o Narrow_i.o Min_m.o Min_i.o Max_m.o Max_i.o Loophole_m.o Loophole_i.o Last_m.o Last_i.o IsType_m.o IsType_i.o Inc_m.o Inc_i.o Floor_m.o Floor_i.o Floatt_m.o Floatt_i.o First_m.o First_i.o Dispose_m.o Dispose_i.o Dec_m.o Dec_i.o Ceiling_m.o Ceiling_i.o ByteSize_m.o ByteSize_i.o BuiltinOps_m.o BuiltinOps_i.o BitSize_m.o BitSize_i.o AdrSize_m.o AdrSize_i.o Adr_m.o Adr_i.o Abs_m.o Abs_i.o 

libm3front.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3front.a