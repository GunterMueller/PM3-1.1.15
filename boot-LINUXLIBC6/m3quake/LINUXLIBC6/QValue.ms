	.file	"QValue.mc"
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
	.type	 _INITM_QValue,@function
_INITM_QValue:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_QValue+48
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MI_QValue+356
	pushl $0
	pushl $MM_QValue+64
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MI_QValue+360
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_QValue,.Lfe1-_INITM_QValue
.globl MM_QValue
.data
	.align 4
	.type	 MM_QValue,@object
	.size	 MM_QValue,252
MM_QValue:
	.long MM_QValue+112
	.zero	16
	.long MM_QValue+96
	.zero	16
	.long _INITM_QValue
	.long 2
	.long MM_QValue+56
	.long 1
	.zero	4
	.long 2
	.long MM_QValue+72
	.long 5
	.ascii	"TRUE"
	.zero	4
	.ascii	"_INITM_QValue"
	.zero	3
	.long _INITM_QValue
	.long MM_QValue+80
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3qua"
	.ascii	"ke/src/QValue.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
