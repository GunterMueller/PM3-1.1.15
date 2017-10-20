# bootstrap Modula-3 makefile (bootstrap_il = FALSE)

%_m.o: %.ms
	$(AS) -o $@ $(ASFLAGS) $<

%_i.o: %.is
	$(AS) -o $@ $(ASFLAGS) $<

all: m3ship

_m3main.o: _m3main.c
Main_m.o: Main.ms

OBJS=Main_m.o _m3main.o

LIBS=../../m3config/LINUXLIBC6/libm3config.a ../../m3templates/LINUXLIBC6/libm3templates.a ../../m3driver/LINUXLIBC6/libm3driver.a ../../m3linker/LINUXLIBC6/libm3link.a ../../m3front/LINUXLIBC6/libm3front.a ../../m3quake/LINUXLIBC6/libm3quake.a ../../m3middle/LINUXLIBC6/libm3middle.a ../../libm3/LINUXLIBC6/libm3.a ../../m3core/LINUXLIBC6/libm3core.a 

m3ship: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS) $(EXTRALIBS)

clean:
	rm $(OBJS) m3ship
