	.file	"Card.mc"
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
	.type	 Card__Initialize,@function
Card__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl $1
	movl MI_Int+44,%eax
	pushl %eax
	pushl $MI_Target+120
	pushl $MI_TInt+44
	movl MI_SubrangeType+48,%eax
	call *%eax
	movl %eax,MI_Card+44
	pushl $1
	pushl %eax
	pushl $MM_Card+52
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Card__Initialize,.Lfe1-Card__Initialize
.globl MM_Card
.data
	.align 4
	.type	 MM_Card,@object
	.size	 MM_Card,248
MM_Card:
	.long MM_Card+100
	.zero	16
	.long MM_Card+84
	.zero	20
	.long Card__Initialize
	.long 2
	.long MM_Card+60
	.long 9
	.ascii	"CARDINAL"
	.zero	4
	.ascii	"Initialize"
	.zero	2
	.long Card__Initialize
	.long MM_Card+72
	.long MI_Card+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Card.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
