# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: libm3config.a

M3Config_i.o: M3Config.is

OBJS=M3Config_i.o 

libm3config.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

clean:
	rm $(OBJS) libm3config.a
