	.file	"NegateExpr.mc"
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
	.type	 NegateExpr__New,@function
NegateExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_NegateExpr+172,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%esi)
	movl $0,20(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 NegateExpr__New,.Lfe1-NegateExpr__New
	.align 16
	.type	 NegateExpr__TypeOf,@function
NegateExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NegateExpr__TypeOf,.Lfe2-NegateExpr__TypeOf
	.align 16
	.type	 NegateExpr__Check,@function
NegateExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	addl $16,%esp
	cmpl %eax,MI_Int+44
	jne .L4
	movl 12(%ebp),%eax
	incl 12(%eax)
	jmp .L5
	.align 16
.L4:
	cmpl %eax,MI_Reel+44
	je .L6
	cmpl %eax,MI_LReel+44
	je .L6
	cmpl %eax,MI_EReel+44
	jne .L7
.L6:
	movl 12(%ebp),%eax
	incl 16(%eax)
	jmp .L5
	.align 16
.L7:
	pushl $0
	pushl %eax
	pushl $MM_NegateExpr+184
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,%edx
.L5:
	movl %edx,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NegateExpr__Check,.Lfe3-NegateExpr__Check
	.align 16
	.type	 NegateExpr__Prep,@function
NegateExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call NegateExpr__Fold
	addl $4,%esp
	testl %eax,%eax
	jne .L9
	movl 16(%ebx),%eax
.L9:
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 NegateExpr__Prep,.Lfe4-NegateExpr__Prep
	.align 16
	.type	 NegateExpr__Compile,@function
NegateExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%esi),%ebx
	testl %ebx,%ebx
	jne .L12
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl %ebx
	movl 8(%esi),%eax
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	movl %eax,%edx
	leal -1(%edx),%eax
	addl $12,%esp
	cmpl $4,%eax
	jbe .L13
	pushl $1329
	call _m3_fault
	.align 16
.L13:
	pushl %edx
	movl MI_CG+476,%eax
	jmp .L15
	.align 16
.L12:
	pushl %ebx
	movl MI_Expr+204,%eax
.L15:
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 NegateExpr__Compile,.Lfe5-NegateExpr__Compile
	.align 16
	.type	 NegateExpr__Fold,@function
NegateExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	movl 20(%edi),%ebx
	testl %ebx,%ebx
	je .L17
	movl %ebx,%eax
	jmp .L22
	.align 16
.L17:
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl %ebx,-4(%ebp)
	addl $4,%esp
	testl %esi,%esi
	je .L19
	leal -4(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_IntegerExpr+76,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L19
	pushl %ebx
	pushl %esi
	movl MI_ReelExpr+80,%eax
	call *%eax
.L19:
	movl -4(%ebp),%eax
	movl %eax,20(%edi)
.L22:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 NegateExpr__Fold,.Lfe6-NegateExpr__Fold
	.align 16
	.type	 M_NegateExpr_tcb5fb80e_LINK,@function
M_NegateExpr_tcb5fb80e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_NegateExpr+172,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_NegateExpr+148,%eax
	movl %eax,4(%edx)
	movl MM_NegateExpr+152,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_NegateExpr+156,%eax
	movl %eax,52(%edx)
	movl MM_NegateExpr+160,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MM_NegateExpr+164,%eax
	movl %eax,16(%edx)
	movl MI_ExprRep+540,%eax
	movl %eax,12(%edx)
	movl MI_ExprRep+484,%eax
	movl %eax,20(%edx)
	movl MI_ExprRep+488,%eax
	movl %eax,24(%edx)
	movl %eax,28(%edx)
	movl %eax,32(%edx)
	movl MI_ExprRep+500,%eax
	movl %eax,40(%edx)
	movl MI_ExprRep+504,%eax
	movl %eax,44(%edx)
	movl MI_ExprRep+508,%eax
	movl %eax,48(%edx)
	movl MI_ExprRep+536,%eax
	movl %eax,76(%edx)
	popl %ebp
	ret
.Lfe7:
	.size	 M_NegateExpr_tcb5fb80e_LINK,.Lfe7-M_NegateExpr_tcb5fb80e_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_NegateExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_NegateExpr
.data
	.align 4
	.type	 MM_NegateExpr,@object
	.size	 MM_NegateExpr,504
MM_NegateExpr:
	.long MM_NegateExpr+316
	.long MM_NegateExpr+44
	.long MM_NegateExpr+172
	.zero	8
	.long MM_NegateExpr+240
	.zero	28
	.long -882919410
.byte 102
.byte 94
.byte 51
.byte 197
.byte 104
.byte 230
.byte 108
.byte 14
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_NegateExpr+463
	.long MM_NegateExpr+465
	.long MM_NegateExpr+467
	.zero	4
	.long M_NegateExpr_tcb5fb80e_LINK
	.long 508464328
	.zero	12
	.long MM_NegateExpr+475
	.long MM_NegateExpr+488
	.zero	4
	.long NegateExpr__TypeOf
	.long NegateExpr__Check
	.long NegateExpr__Prep
	.long NegateExpr__Compile
	.long NegateExpr__Fold
	.long NegateExpr__New
	.zero	4
	.long -882919410
	.long 2
	.long MM_NegateExpr+192
	.long 10
	.ascii	"unary '-'"
	.zero	3
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"New"
	.zero	2
	.long NegateExpr__Fold
	.long MM_NegateExpr+204
	.zero	4
	.long NegateExpr__Compile
	.long MM_NegateExpr+209
	.zero	4
	.long NegateExpr__Prep
	.long MM_NegateExpr+217
	.zero	4
	.long NegateExpr__Check
	.long MM_NegateExpr+222
	.zero	4
	.long NegateExpr__TypeOf
	.long MM_NegateExpr+228
	.zero	4
	.long NegateExpr__New
	.long MM_NegateExpr+235
	.long MI_NegateExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/NegateExpr.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
	.ascii	"NegateExpr.P"
	.zero	1
	.ascii	"NegateExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
