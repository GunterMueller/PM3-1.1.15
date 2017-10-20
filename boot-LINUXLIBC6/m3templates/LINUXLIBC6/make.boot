# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3templates.a

Location_i.o: Location.is
TextLocTbl_i.o: TextLocTbl.is
TextLocTbl_m.o: TextLocTbl.ms
M3Libs_i.o: M3Libs.is
IntM3LibsTbl_i.o: IntM3LibsTbl.is
IntM3LibsTbl_m.o: IntM3LibsTbl.ms
IntMapTbl_i.o: IntMapTbl.is
IntMapTbl_m.o: IntMapTbl.ms
BldQRep_i.o: BldQRep.is
BldQuake_i.o: BldQuake.is
BldQuake_m.o: BldQuake.ms
BldFace_i.o: BldFace.is
BldFace_m.o: BldFace.ms
BldHooks_i.o: BldHooks.is
BldHooks_m.o: BldHooks.ms
BldPosix_i.o: BldPosix.is
BldPosix_m.o: BldPosix.ms
BldWin32_i.o: BldWin32.is
BldWin32_m.o: BldWin32.ms

OBJS=BldWin32_m.o BldWin32_i.o BldPosix_m.o BldPosix_i.o BldHooks_m.o BldHooks_i.o BldFace_m.o BldFace_i.o BldQuake_m.o BldQuake_i.o BldQRep_i.o IntMapTbl_m.o IntMapTbl_i.o IntM3LibsTbl_m.o IntM3LibsTbl_i.o M3Libs_i.o TextLocTbl_m.o TextLocTbl_i.o Location_i.o 

libm3templates.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3templates.a
