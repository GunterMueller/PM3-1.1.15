# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3link.a

Mx_i.o: Mx.is
Mx_m.o: Mx.ms
MxIn_i.o: MxIn.is
MxIn_m.o: MxIn.ms
MxOut_i.o: MxOut.is
MxOut_m.o: MxOut.ms
MxMerge_i.o: MxMerge.is
MxMerge_m.o: MxMerge.ms
MxCheck_i.o: MxCheck.is
MxCheck_m.o: MxCheck.ms
MxGen_i.o: MxGen.is
MxGenRep_i.o: MxGenRep.is
MxGenRep_m.o: MxGenRep.ms
MxGenC_i.o: MxGenC.is
MxGenC_m.o: MxGenC.ms
MxGenCG_i.o: MxGenCG.is
MxGenCG_m.o: MxGenCG.ms
MxVS_i.o: MxVS.is
MxVS_m.o: MxVS.ms
MxRep_i.o: MxRep.is
MxRep_m.o: MxRep.ms
MxMap_i.o: MxMap.is
MxMap_m.o: MxMap.ms
MxSet_i.o: MxSet.is
MxSet_m.o: MxSet.ms
MxVSSet_i.o: MxVSSet.is
MxVSSet_m.o: MxVSSet.ms
MxIO_i.o: MxIO.is
MxIO_m.o: MxIO.ms

OBJS=MxIO_m.o MxIO_i.o MxVSSet_m.o MxVSSet_i.o MxSet_m.o MxSet_i.o MxMap_m.o MxMap_i.o MxRep_m.o MxRep_i.o MxVS_m.o MxVS_i.o MxGenCG_m.o MxGenCG_i.o MxGenC_m.o MxGenC_i.o MxGenRep_m.o MxGenRep_i.o MxGen_i.o MxCheck_m.o MxCheck_i.o MxMerge_m.o MxMerge_i.o MxOut_m.o MxOut_i.o MxIn_m.o MxIn_i.o Mx_m.o Mx_i.o 

libm3link.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3link.a
