# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3quake.a

Quake_i.o: Quake.is
Quake_m.o: Quake.ms
QToken_i.o: QToken.is
QToken_m.o: QToken.ms
QScanner_i.o: QScanner.is
QScanner_m.o: QScanner.ms
QCode_i.o: QCode.is
QCode_m.o: QCode.ms
QCompiler_i.o: QCompiler.is
QCompiler_m.o: QCompiler.ms
QValue_i.o: QValue.is
QValue_m.o: QValue.ms
QVTbl_i.o: QVTbl.is
QVTbl_m.o: QVTbl.ms
QVSeq_i.o: QVSeq.is
QVSeqRep_i.o: QVSeqRep.is
QVSeq_m.o: QVSeq.ms
QMachRep_i.o: QMachRep.is
QMachine_i.o: QMachine.is
QMachine_m.o: QMachine.ms
QVal_i.o: QVal.is
QVal_m.o: QVal.ms

OBJS=QVal_m.o QVal_i.o QMachine_m.o QMachine_i.o QMachRep_i.o QVSeq_m.o QVSeqRep_i.o QVSeq_i.o QVTbl_m.o QVTbl_i.o QValue_m.o QValue_i.o QCompiler_m.o QCompiler_i.o QCode_m.o QCode_i.o QScanner_m.o QScanner_i.o QToken_m.o QToken_i.o Quake_m.o Quake_i.o 

libm3quake.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3quake.a
