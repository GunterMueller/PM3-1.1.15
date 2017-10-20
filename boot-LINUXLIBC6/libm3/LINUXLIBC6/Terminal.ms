	.file	"Terminal.mc"
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
	.type	 _INITM_Terminal,@function
_INITM_Terminal:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Terminal+48
	movl MI_Atom+44,%eax
	call *%eax
	movl %eax,MI_Terminal+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_Terminal,.Lfe1-_INITM_Terminal
.globl MM_Terminal
.data
	.align 4
	.type	 MM_Terminal,@object
	.size	 MM_Terminal,248
MM_Terminal:
	.long MM_Terminal+100
	.zero	16
	.long MM_Terminal+84
	.zero	16
	.long _INITM_Terminal
	.long 2
	.long MM_Terminal+56
	.long 9
	.ascii	"Terminal"
	.zero	4
	.ascii	"_INITM_Terminal"
	.zero	1
	.long _INITM_Terminal
	.long MM_Terminal+68
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/Common/Terminal.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
