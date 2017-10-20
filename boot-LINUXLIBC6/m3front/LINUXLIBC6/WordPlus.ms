	.file	"WordPlus.mc"
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
	.type	 WordPlus__Check,@function
WordPlus__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordPlus+48,%eax
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
	.size	 WordPlus__Check,.Lfe1-WordPlus__Check
	.align 16
	.type	 WordPlus__Compile,@function
WordPlus__Compile:
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
	pushl $1
	movl MI_CG+460,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordPlus__Compile,.Lfe2-WordPlus__Compile
	.align 16
	.type	 WordPlus__Fold,@function
WordPlus__Fold:
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
	call WordPlus__GetArgs
	addl $12,%esp
	testl %eax,%eax
	je .L9
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TWord+48,%eax
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
	.size	 WordPlus__Fold,.Lfe3-WordPlus__Fold
	.align 16
	.type	 WordPlus__GetArgs,@function
WordPlus__GetArgs:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L11
	pushl $676
	call _m3_fault
	.align 16
.L11:
	movl %esi,%ebx
	cmpl $0,4(%ebx)
	jne .L12
	pushl $674
	call _m3_fault
	.align 16
.L12:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	cmpl $1,4(%ebx)
	ja .L14
	pushl $690
	call _m3_fault
	.align 16
.L14:
	movl (%esi),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $4,%esp
	testl %edi,%edi
	je .L15
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L15
	testl %esi,%esi
	je .L15
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L15:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordPlus__GetArgs,.Lfe4-WordPlus__GetArgs
	.align 16
	.type	 WordPlus__Initialize,@function
WordPlus__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl $MM_WordPlus+76
	movl MI_Formal+48,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $MM_WordPlus+92
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
	movl MM_WordPlus+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordPlus+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordPlus+52,%eax
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
	movl %eax,MM_WordPlus+44
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordPlus+108
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordPlus+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 WordPlus__Initialize,.Lfe5-WordPlus__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordPlus
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_WordPlus
.data
	.align 4
	.type	 MM_WordPlus,@object
	.size	 MM_WordPlus,384
MM_WordPlus:
	.long MM_WordPlus+233
	.zero	16
	.long MM_WordPlus+164
	.zero	4
	.long MM_WordPlus+228
	.long MM_WordPlus+228
	.zero	16
	.long WordPlus__Check
	.long WordPlus__Compile
	.long WordPlus__Fold
	.long WordPlus__GetArgs
	.long WordPlus__Initialize
	.long 2
	.long MM_WordPlus+84
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordPlus+100
	.long 2
	.ascii	"y"
	.zero	3
	.long 2
	.long MM_WordPlus+116
	.long 5
	.ascii	"Plus"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"GetArgs"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long WordPlus__Initialize
	.long MM_WordPlus+124
	.long MI_WordPlus+48
	.long WordPlus__GetArgs
	.long MM_WordPlus+135
	.long MI_WordPlus+44
	.long WordPlus__Fold
	.long MM_WordPlus+143
	.zero	4
	.long WordPlus__Compile
	.long MM_WordPlus+148
	.zero	4
	.long WordPlus__Check
	.long MM_WordPlus+156
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordPlus.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
