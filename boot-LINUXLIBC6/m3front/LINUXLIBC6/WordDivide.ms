	.file	"WordDivide.mc"
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
	.type	 WordDivide__Check,@function
WordDivide__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordDivide+48,%eax
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
	.size	 WordDivide__Check,.Lfe1-WordDivide__Check
	.align 16
	.type	 WordDivide__Compile,@function
WordDivide__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
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
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	pushl $420
	call _m3_fault
	.align 16
.L5:
	cmpl $1,4(%eax)
	ja .L6
	pushl $418
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L7
	pushl $436
	call _m3_fault
	.align 16
.L7:
	cmpl $0,4(%eax)
	jne .L8
	pushl $434
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+180,%eax
	call *%eax
	movl %eax,%ebx
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L9
	pushl $436
	call _m3_fault
	.align 16
.L9:
	cmpl $1,4(%eax)
	ja .L10
	pushl $434
	call _m3_fault
	.align 16
.L10:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+180,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	pushl $1
	movl MI_CG+512,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordDivide__Compile,.Lfe2-WordDivide__Compile
	.align 16
	.type	 WordDivide__Fold,@function
WordDivide__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal -16(%ebp),%edi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %edi
	leal -24(%ebp),%esi
	pushl %esi
	movl 20(%eax),%eax
	pushl %eax
	movl MI_WordPlus+44,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L12
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TWord+60,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L12
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L13
	.align 16
.L12:
	xorl %eax,%eax
.L13:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WordDivide__Fold,.Lfe3-WordDivide__Fold
	.align 16
	.type	 WordDivide__Initialize,@function
WordDivide__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl $MM_WordDivide+72
	movl MI_Formal+48,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $MM_WordDivide+88
	movl MI_Formal+48,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	movl MI_ProcType+96,%eax
	call *%eax
	movl %eax,%ebx
	addl $44,%esp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_WordDivide+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordDivide+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordDivide+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $1
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_WordDivide+44
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordDivide+104
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordDivide+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordDivide__Initialize,.Lfe4-WordDivide__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordDivide
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_WordDivide
.data
	.align 4
	.type	 MM_WordDivide,@object
	.size	 MM_WordDivide,364
MM_WordDivide:
	.long MM_WordDivide+209
	.zero	16
	.long MM_WordDivide+152
	.zero	4
	.long MM_WordDivide+204
	.long MM_WordDivide+204
	.zero	16
	.long WordDivide__Check
	.long WordDivide__Compile
	.long WordDivide__Fold
	.long WordDivide__Initialize
	.long 2
	.long MM_WordDivide+80
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordDivide+96
	.long 2
	.ascii	"y"
	.zero	3
	.long 2
	.long MM_WordDivide+112
	.long 7
	.ascii	"Divide"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long WordDivide__Initialize
	.long MM_WordDivide+120
	.long MI_WordDivide+44
	.long WordDivide__Fold
	.long MM_WordDivide+131
	.zero	4
	.long WordDivide__Compile
	.long MM_WordDivide+136
	.zero	4
	.long WordDivide__Check
	.long MM_WordDivide+144
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordDivide.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
