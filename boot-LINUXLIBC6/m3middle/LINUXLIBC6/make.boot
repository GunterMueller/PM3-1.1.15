# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3middle.a

CoffTime_i.o: CoffTime.is
CoffTime_m.o: CoffTime.ms
Target_i.o: Target.is
Target_m.o: Target.ms
TargetMap_i.o: TargetMap.is
TargetMap_m.o: TargetMap.ms
TInt_i.o: TInt.is
TInt_m.o: TInt.ms
TWord_i.o: TWord.is
TWord_m.o: TWord.ms
TFloat_i.o: TFloat.is
TFloat_m.o: TFloat.ms
M3FP_i.o: M3FP.is
M3FP_m.o: M3FP.ms
M3Buf_i.o: M3Buf.is
M3Buf_m.o: M3Buf.ms
M3ID_i.o: M3ID.is
M3ID_m.o: M3ID.ms
M3Timers_i.o: M3Timers.is
M3Timers_m.o: M3Timers.ms
M3File_i.o: M3File.is
M3File_m.o: M3File.ms
M3CG_i.o: M3CG.is
M3CG_m.o: M3CG.ms
M3CG_Ops_i.o: M3CG_Ops.is
M3CG_Check_i.o: M3CG_Check.is
M3CG_Check_m.o: M3CG_Check.ms
M3CG_Clean_i.o: M3CG_Clean.is
M3CG_Clean_m.o: M3CG_Clean.ms
M3CG_Rd_i.o: M3CG_Rd.is
M3CG_Rd_m.o: M3CG_Rd.ms
M3CG_Wr_i.o: M3CG_Wr.is
M3CG_Wr_m.o: M3CG_Wr.ms
M3RT_i.o: M3RT.is
M3RT_m.o: M3RT.ms

OBJS=M3RT_m.o M3RT_i.o M3CG_Wr_m.o M3CG_Wr_i.o M3CG_Rd_m.o M3CG_Rd_i.o M3CG_Clean_m.o M3CG_Clean_i.o M3CG_Check_m.o M3CG_Check_i.o M3CG_Ops_i.o M3CG_m.o M3CG_i.o M3File_m.o M3File_i.o M3Timers_m.o M3Timers_i.o M3ID_m.o M3ID_i.o M3Buf_m.o M3Buf_i.o M3FP_m.o M3FP_i.o TFloat_m.o TFloat_i.o TWord_m.o TWord_i.o TInt_m.o TInt_i.o TargetMap_m.o TargetMap_i.o Target_m.o Target_i.o CoffTime_m.o CoffTime_i.o 

libm3middle.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3middle.a
