	.file	"WordGT.mc"
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
	.type	 WordGT__Check,@function
WordGT__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordGT+48,%eax
	pushl %eax
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Formal+64,%eax
	call *%eax
	movl MI_Bool+44,%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WordGT__Check,.Lfe1-WordGT__Check
	.align 16
	.type	 WordGT__Compile,@function
WordGT__Compile:
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
	movl MI_CG+444,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordGT__Compile,.Lfe2-WordGT__Compile
	.align 16
	.type	 WordGT__PrepBR,@function
WordGT__PrepBR:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L8
	pushl $516
	call _m3_fault
	.align 16
.L8:
	cmpl $0,4(%eax)
	jne .L9
	pushl $514
	call _m3_fault
	.align 16
.L9:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L10
	pushl $532
	call _m3_fault
	.align 16
.L10:
	cmpl $1,4(%eax)
	ja .L11
	pushl $530
	call _m3_fault
	.align 16
.L11:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L12
	pushl $548
	call _m3_fault
	.align 16
.L12:
	cmpl $0,4(%eax)
	jne .L13
	pushl $546
	call _m3_fault
	.align 16
.L13:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L14
	pushl $564
	call _m3_fault
	.align 16
.L14:
	cmpl $1,4(%eax)
	ja .L15
	pushl $562
	call _m3_fault
	.align 16
.L15:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $4,%esp
	cmpl $-1,%esi
	je .L16
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl $1
	pushl %esi
	movl MI_CG+340,%eax
	jmp .L18
	.align 16
.L16:
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl $1
	pushl %edi
	movl MI_CG+352,%eax
.L18:
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WordGT__PrepBR,.Lfe3-WordGT__PrepBR
	.align 16
	.type	 WordGT__Fold,@function
WordGT__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	leal -8(%ebp),%esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %esi
	leal -16(%ebp),%ebx
	pushl %ebx
	movl 20(%eax),%eax
	pushl %eax
	movl MI_WordPlus+44,%eax
	call *%eax
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	je .L21
	pushl %ebx
	pushl %esi
	movl MI_TWord+72,%eax
	call *%eax
	movl %eax,%edx
	movl $MI_Bool+56,%eax
	movl (%eax,%edx,4),%eax
.L21:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordGT__Fold,.Lfe4-WordGT__Fold
	.align 16
	.type	 WordGT__Initialize,@function
WordGT__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl $MM_WordGT+76
	movl MI_Formal+48,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $MM_WordGT+92
	movl MI_Formal+48,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl %ebx
	movl MI_Bool+44,%eax
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
	movl MM_WordGT+64,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MM_WordGT+60,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordGT+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordGT+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Bool+44,%eax
	pushl %eax
	pushl $1
	pushl $1
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_WordGT+44
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordGT+108
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordGT+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 WordGT__Initialize,.Lfe5-WordGT__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordGT
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_WordGT
.data
	.align 4
	.type	 MM_WordGT,@object
	.size	 MM_WordGT,380
MM_WordGT:
	.long MM_WordGT+229
	.zero	16
	.long MM_WordGT+160
	.zero	4
	.long MM_WordGT+224
	.long MM_WordGT+224
	.zero	16
	.long WordGT__Check
	.long WordGT__Compile
	.long WordGT__PrepBR
	.long WordGT__Fold
	.long WordGT__Initialize
	.long 2
	.long MM_WordGT+84
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordGT+100
	.long 2
	.ascii	"y"
	.zero	3
	.long 2
	.long MM_WordGT+116
	.long 3
	.ascii	"GT"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"PrepBR"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	4
	.long WordGT__Initialize
	.long MM_WordGT+120
	.long MI_WordGT+44
	.long WordGT__Fold
	.long MM_WordGT+131
	.zero	4
	.long WordGT__PrepBR
	.long MM_WordGT+136
	.zero	4
	.long WordGT__Compile
	.long MM_WordGT+143
	.zero	4
	.long WordGT__Check
	.long MM_WordGT+151
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordGT.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
