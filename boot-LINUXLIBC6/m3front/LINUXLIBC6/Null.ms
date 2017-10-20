	.file	"Null.mc"
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
	.type	 Null__Initialize,@function
Null__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Null+52
	movl MI_M3String+44,%eax
	call *%eax
	pushl %eax
	movl MI_TextExpr+44,%eax
	call *%eax
	pushl %eax
	pushl $0
	pushl $0
	movl MI_RefType+52,%eax
	call *%eax
	movl %eax,MI_Null+44
	pushl $MI_TInt+44
	movl MI_AddressExpr+44,%eax
	call *%eax
	movl %eax,MI_Null+48
	pushl $1
	movl MI_Null+44,%eax
	pushl %eax
	pushl $MM_Null+72
	movl MI_Tipe+48,%eax
	call *%eax
	addl $36,%esp
	pushl $1
	movl MI_Null+48,%eax
	pushl %eax
	pushl $MM_Null+92
	movl MI_Constant+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Null__Initialize,.Lfe1-Null__Initialize
.globl MM_Null
.data
	.align 4
	.type	 MM_Null,@object
	.size	 MM_Null,280
MM_Null:
	.long MM_Null+132
	.zero	16
	.long MM_Null+116
	.zero	20
	.long Null__Initialize
	.long 2
	.long MM_Null+60
	.long 7
	.ascii	"$null$"
	.zero	2
	.long 2
	.long MM_Null+80
	.long 5
	.ascii	"NULL"
	.zero	4
	.long 2
	.long MM_Null+100
	.long 4
	.ascii	"NIL"
	.zero	1
	.ascii	"Initialize"
	.zero	2
	.long Null__Initialize
	.long MM_Null+104
	.long MI_Null+52
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Null.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
