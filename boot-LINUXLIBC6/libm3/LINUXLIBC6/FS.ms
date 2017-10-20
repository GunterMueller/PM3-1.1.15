	.file	"FS.mc"
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
	.type	 _INITM_FS,@function
_INITM_FS:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FS+48
	movl MI_Atom+44,%eax
	call *%eax
	movl %eax,MI_FS+176
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_FS,.Lfe1-_INITM_FS
.globl MM_FS
.data
	.align 4
	.type	 MM_FS,@object
	.size	 MM_FS,240
MM_FS:
	.long MM_FS+96
	.zero	16
	.long MM_FS+80
	.zero	16
	.long _INITM_FS
	.long 2
	.long MM_FS+56
	.long 10
	.ascii	"Directory"
	.zero	3
	.ascii	"_INITM_FS"
	.zero	3
	.long _INITM_FS
	.long MM_FS+68
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/Common/FS.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
