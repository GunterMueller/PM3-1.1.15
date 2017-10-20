M3OPTIONS=
EXTRALIBS=-lm
LDFLAGS=-Wl,--wrap,adjtime,--wrap,getdirentries,--wrap,readv,--wrap,utimes,--wrap,wait3
RANLIB=touch
ASFLAG=--32


all: boot packages

exportall: boot exportpackages

packages:
	boot-LINUXLIBC6/m3build/LINUXLIBC6/m3build -T ../m3config/src -DBOOTSTRAP=TRUE ${M3OPTIONS}

exportpackages:
	boot-LINUXLIBC6/m3build/LINUXLIBC6/m3build -T ../m3config/src -DBOOTSTRAP=TRUE ${M3OPTIONS} -DEXPORTRPATH=binaries/LINUXLIBC6

clean: pkg-clean boot-clean

pkg-clean:
	boot-LINUXLIBC6/m3build/LINUXLIBC6/m3build -T ../m3config/src -DBOOTSTRAP=TRUE -DCLEAN_ALL ${M3OPTIONS}

nothing:

boot:
	cd boot-LINUXLIBC6/m3core/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/libm3/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3middle/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3front/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3linker/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3driver/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3quake/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3templates/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3config/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3build/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3ship/LINUXLIBC6; ${MAKE} -f make.boot "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"

boot-clean:
	cd boot-LINUXLIBC6/m3core/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/libm3/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3middle/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3front/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3linker/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3driver/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3quake/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3templates/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3config/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3build/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
	cd boot-LINUXLIBC6/m3ship/LINUXLIBC6; ${MAKE} -f make.boot clean "CC=${CC}" "CFLAGS=${CFLAGS}" "AS=${AS}" "ASFLAGS=${ASFLAGS}" "AR=${AR}" "ARFLAGS=${ARFLAGS}" "RANLIB=${RANLIB}" "EXTRALIBS=${EXTRALIBS}" "LDFLAGS=${LDFLAGS}"
