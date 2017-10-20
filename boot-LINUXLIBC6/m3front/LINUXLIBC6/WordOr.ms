	.file	"WordOr.mc"
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
	.type	 WordOr__Check,@function
WordOr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordOr+48,%eax
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
	.size	 WordOr__Check,.Lfe1-WordOr__Check
	.align 16
	.type	 WordOr__Compile,@function
WordOr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
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
	movl 20(%ebx),%eax
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
	movl MI_CG+580,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordOr__Compile,.Lfe2-WordOr__Compile
	.align 16
	.type	 WordOr__Fold,@function
WordOr__Fold:
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
	je .L9
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TWord+84,%eax
	call *%eax
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
.L9:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WordOr__Fold,.Lfe3-WordOr__Fold
	.align 16
	.type	 WordOr__Initialize,@function
WordOr__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl $MM_WordOr+72
	movl MI_Formal+48,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $MM_WordOr+88
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
	movl MM_WordOr+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordOr+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordOr+52,%eax
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
	movl %eax,MM_WordOr+44
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordOr+104
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordOr+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordOr__Initialize,.Lfe4-WordOr__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordOr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_WordOr
.data
	.align 4
	.type	 MM_WordOr,@object
	.size	 MM_WordOr,356
MM_WordOr:
	.long MM_WordOr+205
	.zero	16
	.long MM_WordOr+148
	.zero	4
	.long MM_WordOr+200
	.long MM_WordOr+200
	.zero	16
	.long WordOr__Check
	.long WordOr__Compile
	.long WordOr__Fold
	.long WordOr__Initialize
	.long 2
	.long MM_WordOr+80
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordOr+96
	.long 2
	.ascii	"y"
	.zero	3
	.long 2
	.long MM_WordOr+112
	.long 3
	.ascii	"Or"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long WordOr__Initialize
	.long MM_WordOr+116
	.long MI_WordOr+44
	.long WordOr__Fold
	.long MM_WordOr+127
	.zero	4
	.long WordOr__Compile
	.long MM_WordOr+132
	.zero	4
	.long WordOr__Check
	.long MM_WordOr+140
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordOr.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
