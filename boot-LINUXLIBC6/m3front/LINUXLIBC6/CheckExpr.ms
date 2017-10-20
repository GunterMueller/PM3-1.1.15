	.file	"CheckExpr.mc"
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
	.type	 CheckExpr__New,@function
CheckExpr__New:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $2
	movl 16(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	call CheckExpr__Create
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 CheckExpr__New,.Lfe1-CheckExpr__New
	.align 16
	.type	 CheckExpr__NewLower,@function
CheckExpr__NewLower:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	pushl $0
	pushl $MI_TInt+44
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call CheckExpr__Create
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 CheckExpr__NewLower,.Lfe2-CheckExpr__NewLower
	.align 16
	.type	 CheckExpr__NewUpper,@function
CheckExpr__NewUpper:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	pushl $1
	movl 12(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+44
	pushl %edx
	call CheckExpr__Create
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 CheckExpr__NewUpper,.Lfe3-CheckExpr__NewUpper
	.align 16
	.type	 CheckExpr__Create,@function
CheckExpr__Create:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	cmpb $0,MI_Host+84
	je .L5
	movl MM_CheckExpr+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %esi,16(%ebx)
	movl 12(%ebp),%edx
	movl (%edx),%eax
	movl %eax,20(%ebx)
	movl 4(%edx),%eax
	movl %eax,24(%ebx)
	movl 16(%ebp),%edx
	movl (%edx),%eax
	movl %eax,28(%ebx)
	movl 4(%edx),%eax
	movl %eax,32(%ebx)
	movb 20(%ebp),%cl
	movb %cl,36(%ebx)
	movl 4(%esi),%eax
	movl %eax,4(%ebx)
	movl %ebx,%eax
	jmp .L6
	.align 16
.L5:
	movl %esi,%eax
.L6:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 CheckExpr__Create,.Lfe4-CheckExpr__Create
	.align 16
	.type	 CheckExpr__TypeOf,@function
CheckExpr__TypeOf:
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
.Lfe5:
	.size	 CheckExpr__TypeOf,.Lfe5-CheckExpr__TypeOf
	.align 16
	.type	 CheckExpr__Check,@function
CheckExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 CheckExpr__Check,.Lfe6-CheckExpr__Check
	.align 16
	.type	 CheckExpr__EqCheck,@function
CheckExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%esi
	testl %edx,%edx
	je .L13
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_CheckExpr+200
	jg .L13
	movl MM_CheckExpr+196,%eax
	cmpl %ecx,4(%eax)
	jl .L13
	xorl %ecx,%ecx
	movb 36(%ebx),%al
	cmpb %al,36(%edx)
	jne .L15
	movl 20(%edx),%eax
	cmpl %eax,20(%ebx)
	jne .L15
	movl 24(%edx),%eax
	cmpl %eax,24(%ebx)
	jne .L15
	movl 28(%edx),%eax
	cmpl %eax,28(%ebx)
	jne .L15
	movl 32(%edx),%eax
	cmpl %eax,32(%ebx)
	jne .L15
	pushl %esi
	movl 16(%edx),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+232,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ecx,%ecx
	movb %al,%cl
.L15:
	movl %ecx,%eax
	jmp .L17
	.align 16
.L13:
	xorl %eax,%eax
.L17:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 CheckExpr__EqCheck,.Lfe7-CheckExpr__EqCheck
	.align 16
	.type	 CheckExpr__Prep,@function
CheckExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 CheckExpr__Prep,.Lfe8-CheckExpr__Prep
	.align 16
	.type	 CheckExpr__Compile,@function
CheckExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	xorl %eax,%eax
	movb 36(%ebx),%al
	addl $4,%esp
	testl %eax,%eax
	jle .L20
	cmpl $1,%eax
	jle .L21
	cmpl $2,%eax
	jle .L22
.L20:
	leal 20(%ebx),%eax
	pushl %eax
	movl MI_CG+684,%eax
	call *%eax
	jmp .L19
	.align 16
.L21:
	leal 28(%ebx),%eax
	pushl %eax
	movl MI_CG+688,%eax
	call *%eax
	jmp .L19
	.align 16
.L22:
	leal 28(%ebx),%eax
	pushl %eax
	leal 20(%ebx),%eax
	pushl %eax
	movl MI_CG+692,%eax
	call *%eax
.L19:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 CheckExpr__Compile,.Lfe9-CheckExpr__Compile
	.align 16
	.type	 CheckExpr__Emit,@function
CheckExpr__Emit:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Expr+160,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L26
	movl %eax,%esi
.L26:
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MI_Host+84
	je .L25
	leal -8(%ebp),%edi
	pushl %edi
	leal -16(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_Expr+164,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L28
	pushl %edi
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L28
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_CG+692,%eax
	call *%eax
	jmp .L25
	.align 16
.L28:
	movl 12(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%ebx
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L30
	movl 12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L31
	pushl $MM_CheckExpr+208
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L31:
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_CG+684,%eax
	jmp .L34
	.align 16
.L30:
	leal -8(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L25
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L33
	pushl $MM_CheckExpr+208
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L33:
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_CG+688,%eax
.L34:
	call *%eax
.L25:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 CheckExpr__Emit,.Lfe10-CheckExpr__Emit
	.align 16
	.type	 CheckExpr__Fold,@function
CheckExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	je .L47
	leal -12(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L37
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edi
	pushl %esi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L49
.L37:
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb 36(%edx),%al
	testl %eax,%eax
	jle .L38
	cmpl $1,%eax
	jle .L39
	cmpl $2,%eax
	jle .L40
.L38:
	movl 8(%ebp),%eax
	addl $20,%eax
	pushl %eax
	leal -12(%ebp),%eax
	jmp .L48
	.align 16
.L39:
	leal -12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	addl $28,%eax
.L48:
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L42
.L49:
	xorl %eax,%eax
	jmp .L47
	.align 16
.L40:
	movl 8(%ebp),%eax
	addl $20,%eax
	pushl %eax
	leal -12(%ebp),%ebx
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L49
	pushl %ebx
	movl 8(%ebp),%eax
	addl $28,%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	movl %eax,%ebx
	testl %ebx,%ebx
	jne .L49
.L42:
	movl %esi,%eax
.L47:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 CheckExpr__Fold,.Lfe11-CheckExpr__Fold
	.align 16
	.type	 CheckExpr__Bounder,@function
CheckExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	xorl %eax,%eax
	movb 36(%ebx),%al
	addl $12,%esp
	testl %eax,%eax
	jle .L51
	cmpl $1,%eax
	jle .L57
	cmpl $2,%eax
	jle .L53
.L51:
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L50
	movl 12(%ebp),%eax
	movl 20(%ebx),%edx
	movl %edx,(%eax)
	movl 24(%ebx),%edx
	jmp .L60
	.align 16
.L53:
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L57
	movl 12(%ebp),%eax
	movl 20(%ebx),%edx
	movl %edx,(%eax)
	movl 24(%ebx),%edx
	movl %edx,4(%eax)
.L57:
	movl 16(%ebp),%eax
	pushl %eax
	leal 28(%ebx),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L50
	movl 16(%ebp),%eax
	movl 28(%ebx),%edx
	movl %edx,(%eax)
	movl 32(%ebx),%edx
.L60:
	movl %edx,4(%eax)
.L50:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 CheckExpr__Bounder,.Lfe12-CheckExpr__Bounder
	.align 16
	.type	 M_CheckExpr_ta12ede05_LINK,@function
M_CheckExpr_ta12ede05_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_CheckExpr+196,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_CheckExpr+152,%eax
	movl %eax,4(%edx)
	movl MM_CheckExpr+156,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_CheckExpr+164,%eax
	movl %eax,52(%edx)
	movl MM_CheckExpr+168,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+528,%eax
	movl %eax,68(%edx)
	movl MI_ExprRep+532,%eax
	movl %eax,72(%edx)
	movl MM_CheckExpr+172,%eax
	movl %eax,16(%edx)
	movl MM_CheckExpr+160,%eax
	movl %eax,12(%edx)
	movl MM_CheckExpr+176,%eax
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
.Lfe13:
	.size	 M_CheckExpr_ta12ede05_LINK,.Lfe13-M_CheckExpr_ta12ede05_LINK
.globl MM_CheckExpr
.data
	.align 4
	.type	 MM_CheckExpr,@object
	.size	 MM_CheckExpr,664
MM_CheckExpr:
	.long MM_CheckExpr+468
	.long MM_CheckExpr+44
	.long MM_CheckExpr+196
	.zero	8
	.long MM_CheckExpr+320
	.zero	28
	.long -1590764027
.byte 104
.byte 150
.byte 160
.byte 177
.byte 109
.byte 72
.byte 142
.byte 16
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_CheckExpr+614
	.long MM_CheckExpr+625
	.long MM_CheckExpr+627
	.zero	4
	.long M_CheckExpr_ta12ede05_LINK
	.long -350897909
	.zero	16
	.long MM_CheckExpr+649
	.zero	4
	.long CheckExpr__Create
	.long CheckExpr__TypeOf
	.long CheckExpr__Check
	.long CheckExpr__EqCheck
	.long CheckExpr__Prep
	.long CheckExpr__Compile
	.long CheckExpr__Fold
	.long CheckExpr__Bounder
	.long CheckExpr__New
	.long CheckExpr__NewLower
	.long CheckExpr__NewUpper
	.long CheckExpr__Emit
	.zero	4
	.long -1590764027
	.long 2
	.long MM_CheckExpr+216
	.long 19
	.ascii	"value out of range"
	.zero	2
	.ascii	"Bounder"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Emit"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Create"
	.zero	1
	.ascii	"NewUpper"
	.zero	1
	.ascii	"NewLower"
	.zero	1
	.ascii	"New"
	.zero	4
	.long CheckExpr__Bounder
	.long MM_CheckExpr+236
	.zero	4
	.long CheckExpr__Fold
	.long MM_CheckExpr+244
	.zero	4
	.long CheckExpr__Emit
	.long MM_CheckExpr+249
	.long MI_CheckExpr+56
	.long CheckExpr__Compile
	.long MM_CheckExpr+254
	.zero	4
	.long CheckExpr__Prep
	.long MM_CheckExpr+262
	.zero	4
	.long CheckExpr__EqCheck
	.long MM_CheckExpr+267
	.zero	4
	.long CheckExpr__Check
	.long MM_CheckExpr+275
	.zero	4
	.long CheckExpr__TypeOf
	.long MM_CheckExpr+281
	.zero	4
	.long CheckExpr__Create
	.long MM_CheckExpr+288
	.zero	4
	.long CheckExpr__NewUpper
	.long MM_CheckExpr+295
	.long MI_CheckExpr+52
	.long CheckExpr__NewLower
	.long MM_CheckExpr+304
	.long MI_CheckExpr+48
	.long CheckExpr__New
	.long MM_CheckExpr+313
	.long MI_CheckExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/CheckExpr.m3"
	.zero	1
.byte 4
.byte 1
.byte 17
.byte 26
.byte 4
.byte 1
.byte 17
.byte 26
.byte 4
.byte 16
.byte 0
.byte 4
.byte 0
.byte 8
.byte 10
.byte 4
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 15
.byte 1
.byte 1
.byte 4
.byte 12
.byte 16
.byte 19
.byte 0
.byte 66
.byte 255
.byte 255
.byte 24
.byte 5
.byte 3
	.ascii	"CheckExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
