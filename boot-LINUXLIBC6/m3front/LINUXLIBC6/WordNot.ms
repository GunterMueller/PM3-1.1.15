	.file	"WordNot.mc"
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
	.type	 WordNot__Check,@function
WordNot__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordNot+48,%eax
	pushl %eax
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Formal+64,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WordNot__Check,.Lfe1-WordNot__Check
	.align 16
	.type	 WordNot__Compile,@function
WordNot__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L3
	pushl $404
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $402
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+572,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordNot__Compile,.Lfe2-WordNot__Compile
	.align 16
	.type	 WordNot__Fold,@function
WordNot__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L6
	pushl $516
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $514
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L8
	leal -16(%ebp),%esi
	pushl %esi
	pushl %eax
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L8
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_TWord+92,%eax
	call *%eax
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L9
	.align 16
.L8:
	xorl %eax,%eax
.L9:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WordNot__Fold,.Lfe3-WordNot__Fold
	.align 16
	.type	 WordNot__Initialize,@function
WordNot__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl $MM_WordNot+72
	movl MI_Formal+48,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	movl MI_Int+44,%eax
	pushl %eax
	movl MI_ProcType+96,%eax
	call *%eax
	movl %eax,%ebx
	addl $32,%esp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_WordNot+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordNot+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordNot+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $1
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_WordNot+44
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordNot+88
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordNot+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordNot__Initialize,.Lfe4-WordNot__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordNot
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_WordNot
.data
	.align 4
	.type	 MM_WordNot,@object
	.size	 MM_WordNot,340
MM_WordNot:
	.long MM_WordNot+189
	.zero	16
	.long MM_WordNot+132
	.zero	4
	.long MM_WordNot+184
	.long MM_WordNot+184
	.zero	16
	.long WordNot__Check
	.long WordNot__Compile
	.long WordNot__Fold
	.long WordNot__Initialize
	.long 2
	.long MM_WordNot+80
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordNot+96
	.long 4
	.ascii	"Not"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long WordNot__Initialize
	.long MM_WordNot+100
	.long MI_WordNot+44
	.long WordNot__Fold
	.long MM_WordNot+111
	.zero	4
	.long WordNot__Compile
	.long MM_WordNot+116
	.zero	4
	.long WordNot__Check
	.long MM_WordNot+124
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordNot.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
