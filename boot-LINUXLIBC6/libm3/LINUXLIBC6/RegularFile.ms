	.file	"RegularFile.mc"
	.version	"01.01"
/ SRC Modula-3 version cygnus-2.7.2-960712 (i486--linuxelf) compiled by GNU C version egcs-2.91.66 19990314/Linux (egcs-1.1.2 release).
/ options passed:  -fno-strength-reduce -O2
/ options enabled:  -fdefer-pop -fcse-follow-jumps -fcse-skip-blocks
/ -fexpensive-optimizations -fthread-jumps -fpeephole -fforce-mem
/ -ffunction-cse -finline -fkeep-static-consts -fcaller-saves
/ -fpcc-struct-return -frerun-cse-after-loop -fschedule-insns2 -fcommon
/ -fverbose-asm -fgnu-linker -m80387 -mhard-float -mno-soft-float -mieee-fp
/ -mfp-ret-in-387 -mschedule-prologue -mcpu=i486 -march=i486

gcc2_compiled.:
.text
	.align 16
	.type	 _INITM_RegularFile,@function
_INITM_RegularFile:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RegularFile+48
	movl MI_Atom+44,%eax
	call *%eax
	movl %eax,MI_RegularFile+148
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_RegularFile,.Lfe1-_INITM_RegularFile
.globl MM_RegularFile
.data
	.align 4
	.type	 MM_RegularFile,@object
	.size	 MM_RegularFile,256
MM_RegularFile:
	.long MM_RegularFile+104
	.zero	16
	.long MM_RegularFile+88
	.zero	16
	.long _INITM_RegularFile
	.long 2
	.long MM_RegularFile+56
	.long 12
	.ascii	"RegularFile"
	.zero	1
	.ascii	"_INITM_RegularFile"
	.zero	2
	.long _INITM_RegularFile
	.long MM_RegularFile+68
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/Common/RegularFile.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
