	.file	"Reff.mc"
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
	.type	 Reff__Initialize,@function
Reff__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Reff+52
	movl MI_M3String+44,%eax
	call *%eax
	pushl %eax
	movl MI_TextExpr+44,%eax
	call *%eax
	pushl %eax
	pushl $1
	pushl $0
	movl MI_RefType+52,%eax
	call *%eax
	movl %eax,MI_Reff+44
	pushl $1
	pushl %eax
	pushl $MM_Reff+76
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Reff__Initialize,.Lfe1-Reff__Initialize
.globl MM_Reff
.data
	.align 4
	.type	 MM_Reff,@object
	.size	 MM_Reff,268
MM_Reff:
	.long MM_Reff+120
	.zero	16
	.long MM_Reff+104
	.zero	20
	.long Reff__Initialize
	.long 2
	.long MM_Reff+60
	.long 9
	.ascii	"$refany$"
	.zero	4
	.long 2
	.long MM_Reff+84
	.long 7
	.ascii	"REFANY"
	.zero	2
	.ascii	"Initialize"
	.zero	2
	.long Reff__Initialize
	.long MM_Reff+92
	.long MI_Reff+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Reff.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
