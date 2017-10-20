	.file	"CChar.mc"
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
	.type	 CChar__Initialize,@function
CChar__Initialize:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %esi
	movl $MM_CChar+52,%ebx
	pushl %ebx
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %esi
	pushl %esi
	pushl %eax
	pushl %esi
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	pushl $256
	movl MI_EnumType+48,%eax
	call *%eax
	movl %eax,MI_CChar+44
	movl MI_Scope+48,%eax
	addl $32,%esp
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Scope+92,%eax
	call *%eax
	pushl $1
	movl MI_CChar+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Tipe+48,%eax
	call *%eax
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 CChar__Initialize,.Lfe1-CChar__Initialize
.globl MM_CChar
.data
	.align 4
	.type	 MM_CChar,@object
	.size	 MM_CChar,248
MM_CChar:
	.long MM_CChar+96
	.zero	16
	.long MM_CChar+80
	.zero	20
	.long CChar__Initialize
	.long 2
	.long MM_CChar+60
	.long 5
	.ascii	"CHAR"
	.zero	4
	.ascii	"Initialize"
	.zero	2
	.long CChar__Initialize
	.long MM_CChar+68
	.long MI_CChar+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/CChar.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
