	.file	"Addr.mc"
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
	.type	 Addr__Initialize,@function
Addr__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Addr+52
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
	movl %eax,MI_Addr+44
	pushl $1
	pushl %eax
	pushl $MM_Addr+76
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Addr__Initialize,.Lfe1-Addr__Initialize
.globl MM_Addr
.data
	.align 4
	.type	 MM_Addr,@object
	.size	 MM_Addr,268
MM_Addr:
	.long MM_Addr+120
	.zero	16
	.long MM_Addr+104
	.zero	20
	.long Addr__Initialize
	.long 2
	.long MM_Addr+60
	.long 10
	.ascii	"$address$"
	.zero	3
	.long 2
	.long MM_Addr+84
	.long 8
	.ascii	"ADDRESS"
	.zero	1
	.ascii	"Initialize"
	.zero	2
	.long Addr__Initialize
	.long MM_Addr+92
	.long MI_Addr+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Addr.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
