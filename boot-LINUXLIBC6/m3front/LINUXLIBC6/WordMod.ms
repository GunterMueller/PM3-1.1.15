	.file	"WordMod.mc"
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
	.type	 WordMod__Check,@function
WordMod__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordMod+48,%eax
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
	.size	 WordMod__Check,.Lfe1-WordMod__Check
	.align 16
	.type	 WordMod__Compile,@function
WordMod__Compile:
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
	movl MI_CG+516,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordMod__Compile,.Lfe2-WordMod__Compile
	.align 16
	.type	 WordMod__Fold,@function
WordMod__Fold:
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
	movl MI_TWord+64,%eax
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
	.size	 WordMod__Fold,.Lfe3-WordMod__Fold
	.align 16
	.type	 WordMod__Initialize,@function
WordMod__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl $MM_WordMod+72
	movl MI_Formal+48,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $MM_WordMod+88
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
	movl MM_WordMod+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordMod+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordMod+52,%eax
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
	movl %eax,MM_WordMod+44
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordMod+104
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordMod+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordMod__Initialize,.Lfe4-WordMod__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordMod
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_WordMod
.data
	.align 4
	.type	 MM_WordMod,@object
	.size	 MM_WordMod,356
MM_WordMod:
	.long MM_WordMod+205
	.zero	16
	.long MM_WordMod+148
	.zero	4
	.long MM_WordMod+200
	.long MM_WordMod+200
	.zero	16
	.long WordMod__Check
	.long WordMod__Compile
	.long WordMod__Fold
	.long WordMod__Initialize
	.long 2
	.long MM_WordMod+80
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordMod+96
	.long 2
	.ascii	"y"
	.zero	3
	.long 2
	.long MM_WordMod+112
	.long 4
	.ascii	"Mod"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long WordMod__Initialize
	.long MM_WordMod+116
	.long MI_WordMod+44
	.long WordMod__Fold
	.long MM_WordMod+127
	.zero	4
	.long WordMod__Compile
	.long MM_WordMod+132
	.zero	4
	.long WordMod__Check
	.long MM_WordMod+140
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordMod.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
