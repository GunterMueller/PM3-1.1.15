	.file	"Bool.mc"
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
	.type	 Bool__Initialize,@function
Bool__Initialize:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl %esi,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %ebx
	pushl $MM_Bool+52
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %ebx
	pushl %ebx
	movl %eax,%edx
	pushl %edx
	pushl %ebx
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,%esi
	pushl %esi
	pushl $2
	movl MI_EnumType+48,%eax
	call *%eax
	movl %eax,%edi
	addl $32,%esp
	movl %edi,MI_Bool+44
	pushl %ebx
	pushl $MM_Bool+72
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Bool+44,%eax
	pushl %eax
	pushl $MI_TInt+44
	pushl %edx
	movl MI_EnumElt+44,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,MI_Bool+48
	pushl %edi
	movl MI_Scope+72,%eax
	call *%eax
	pushl %ebx
	pushl $MM_Bool+92
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	addl $32,%esp
	movl MI_Bool+44,%eax
	pushl %eax
	movl $MI_TInt+52,%ebx
	pushl %ebx
	pushl %edx
	movl MI_EnumElt+44,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,MI_Bool+52
	pushl %edi
	movl MI_Scope+72,%eax
	call *%eax
	movl MI_Scope+48,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Scope+92,%eax
	call *%eax
	pushl $1
	movl MI_Bool+44,%eax
	pushl %eax
	pushl $MM_Bool+52
	movl MI_Tipe+48,%eax
	call *%eax
	addl $36,%esp
	pushl $MI_TInt+44
	movl MI_Bool+44,%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	call *%eax
	movl %eax,%edi
	pushl %ebx
	movl MI_Bool+44,%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	call *%eax
	pushl $1
	movl %edi,%esi
	pushl %esi
	movl %eax,%edi
	pushl $MM_Bool+72
	movl MI_Constant+48,%eax
	call *%eax
	pushl $1
	pushl %edi
	pushl $MM_Bool+92
	movl MI_Constant+48,%eax
	call *%eax
	movl %esi,MI_Bool+56
	leal -36(%ebp),%esp
	movl %edi,MI_Bool+60
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Bool__Initialize,.Lfe1-Bool__Initialize
.globl MM_Bool
.data
	.align 4
	.type	 MM_Bool,@object
	.size	 MM_Bool,284
MM_Bool:
	.long MM_Bool+136
	.zero	16
	.long MM_Bool+120
	.zero	20
	.long Bool__Initialize
	.long 2
	.long MM_Bool+60
	.long 8
	.ascii	"BOOLEAN"
	.zero	1
	.long 2
	.long MM_Bool+80
	.long 6
	.ascii	"FALSE"
	.zero	3
	.long 2
	.long MM_Bool+100
	.long 5
	.ascii	"TRUE"
	.zero	4
	.ascii	"Initialize"
	.zero	2
	.long Bool__Initialize
	.long MM_Bool+108
	.long MI_Bool+64
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Bool.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
