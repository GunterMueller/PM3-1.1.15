# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3driver.a

M3Backend_i.o: M3Backend.is
M3BackPosix_m.o: M3BackPosix.ms
Arg_i.o: Arg.is
Arg_m.o: Arg.ms
Msg_i.o: Msg.is
Msg_m.o: Msg.ms
M3Path_i.o: M3Path.is
M3Path_m.o: M3Path.ms
Unit_i.o: Unit.is
Unit_m.o: Unit.ms
Utils_i.o: Utils.is
Utils_m.o: Utils.ms
WebFile_i.o: WebFile.is
WebFile_m.o: WebFile.ms
M3DriverRep_i.o: M3DriverRep.is
Lib_i.o: Lib.is
Lib_m.o: Lib.ms
LibSeq_i.o: LibSeq.is
LibSeqRep_i.o: LibSeqRep.is
LibSeq_m.o: LibSeq.ms
M3Driver_i.o: M3Driver.is
M3Driver_m.o: M3Driver.ms

OBJS=M3Driver_m.o M3Driver_i.o LibSeq_m.o LibSeqRep_i.o LibSeq_i.o Lib_m.o Lib_i.o M3DriverRep_i.o WebFile_m.o WebFile_i.o Utils_m.o Utils_i.o Unit_m.o Unit_i.o M3Path_m.o M3Path_i.o Msg_m.o Msg_i.o Arg_m.o Arg_i.o M3BackPosix_m.o M3Backend_i.o 

libm3driver.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3driver.a
