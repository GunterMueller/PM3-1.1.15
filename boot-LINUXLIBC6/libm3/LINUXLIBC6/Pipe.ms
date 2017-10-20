	.file	"Pipe.mc"
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
	.type	 _INITM_Pipe,@function
_INITM_Pipe:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Pipe+48
	movl MI_Atom+44,%eax
	call *%eax
	movl %eax,MI_Pipe+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_Pipe,.Lfe1-_INITM_Pipe
.globl MM_Pipe
.data
	.align 4
	.type	 MM_Pipe,@object
	.size	 MM_Pipe,236
MM_Pipe:
	.long MM_Pipe+92
	.zero	16
	.long MM_Pipe+76
	.zero	16
	.long _INITM_Pipe
	.long 2
	.long MM_Pipe+56
	.long 5
	.ascii	"Pipe"
	.zero	4
	.ascii	"_INITM_Pipe"
	.zero	1
	.long _INITM_Pipe
	.long MM_Pipe+64
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/Common/Pipe.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
