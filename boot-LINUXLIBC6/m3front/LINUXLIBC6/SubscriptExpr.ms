	.file	"SubscriptExpr.mc"
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
	.type	 SubscriptExpr__New,@function
SubscriptExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_SubscriptExpr+192,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
	movl $0,24(%edi)
	movl $0,28(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 SubscriptExpr__New,.Lfe1-SubscriptExpr__New
	.align 16
	.type	 SubscriptExpr__TypeOf,@function
SubscriptExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_RefType+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L3
	movl 16(%esi),%eax
	pushl %eax
	movl MI_DerefExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,16(%esi)
	movl 4(%esi),%eax
	movl %eax,4(%edx)
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
.L3:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ArrayType+52,%eax
	call *%eax
	testl %eax,%eax
	jne .L4
	movl %ebx,%eax
	jmp .L5
	.align 16
.L4:
	movl -4(%ebp),%eax
.L5:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 SubscriptExpr__TypeOf,.Lfe2-SubscriptExpr__TypeOf
	.align 16
	.type	 SubscriptExpr__Check,@function
SubscriptExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl %ecx,-44(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	movl %edx,%ebx
	call *%eax
	movl %eax,%edx
	movl %edx,-52(%ebp)
	pushl %ebx
	movl MI_RefType+56,%eax
	call *%eax
	addl $32,%esp
	testl %eax,%eax
	je .L7
	movl 16(%esi),%eax
	pushl %eax
	movl MI_DerefExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,16(%esi)
	movl 4(%esi),%eax
	movl %eax,4(%edx)
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $20,%esp
.L7:
	pushl %ebx
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%edx
	leal -44(%ebp),%eax
	pushl %eax
	leal -48(%ebp),%eax
	pushl %eax
	movl %edx,%ebx
	pushl %ebx
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L8
	pushl $MM_SubscriptExpr+204
	movl MI_Error+44,%eax
	call *%eax
	movl MI_ErrType+44,%eax
	movl %eax,8(%esi)
	jmp .L6
	.align 16
.L8:
	movl -44(%ebp),%eax
	movl %eax,8(%esi)
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+184,%eax
	call *%eax
	leal -32(%ebp),%ecx
	movl %ecx,-56(%ebp)
	pushl %ecx
	leal -40(%ebp),%edi
	pushl %edi
	movl -48(%ebp),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	leal -16(%ebp),%ecx
	movl %ecx,-60(%ebp)
	pushl %ecx
	leal -24(%ebp),%ecx
	movl %ecx,-64(%ebp)
	pushl %ecx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	movl 20(%esi),%eax
	movl %eax,24(%esi)
	addl $28,%esp
	movl -48(%ebp),%eax
	testl %eax,%eax
	jne .L9
	pushl %ebx
	movl MI_OpenArrayType+64,%eax
	call *%eax
	movl %eax,28(%esi)
	movl MI_Int+44,%eax
	pushl %eax
	movl -52(%ebp),%ecx
	pushl %ecx
	movl MI_Type+120,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L6
	pushl $MM_SubscriptExpr+256
	jmp .L22
	.align 16
.L9:
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl -52(%ebp),%ecx
	pushl %ecx
	movl MI_Type+120,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L12
	pushl $MI_TInt+44
	pushl %edi
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L13
	pushl %edi
	movl MI_IntegerExpr+44,%eax
	call *%eax
	pushl $1
	movl %eax,%edx
	pushl %edx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_SubtractExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,24(%esi)
	movl 4(%esi),%eax
	movl %eax,4(%edx)
	movl 12(%ebp),%eax
	pushl %eax
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	addl $24,%esp
.L13:
	pushl %edi
	movl -64(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L14
	movl -60(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L14
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L15
	pushl $1904
	call _m3_fault
	.align 16
.L15:
	pushl %ebx
	pushl $MI_TInt+44
	movl 24(%esi),%eax
	pushl %eax
	movl MI_CheckExpr+44,%eax
	call *%eax
	jmp .L23
	.align 16
.L14:
	leal -40(%ebp),%ecx
	movl %ecx,-68(%ebp)
	pushl %ecx
	leal -24(%ebp),%edi
	pushl %edi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	movl -68(%ebp),%ecx
	pushl %ecx
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L18
	pushl $MM_SubscriptExpr+320
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L18:
	pushl $MI_TInt+44
	movl 24(%esi),%eax
	pushl %eax
	movl MI_CheckExpr+48,%eax
	jmp .L24
	.align 16
.L17:
	leal -16(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%ebx
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L6
	pushl %edi
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L20
	pushl $MM_SubscriptExpr+320
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L20:
	leal -8(%ebp),%edi
	pushl %edi
	movl -68(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L21
	pushl $2144
	call _m3_fault
	.align 16
.L21:
	pushl %edi
	movl 24(%esi),%eax
	pushl %eax
	movl MI_CheckExpr+52,%eax
.L24:
	call *%eax
.L23:
	movl %eax,%edx
	movl %edx,24(%esi)
	movl 4(%esi),%eax
	movl %eax,4(%edx)
	movl 12(%ebp),%eax
	pushl %eax
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	jmp .L6
	.align 16
.L12:
	pushl $MM_SubscriptExpr+360
.L22:
	movl MI_Error+44,%eax
	call *%eax
.L6:
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 SubscriptExpr__Check,.Lfe3-SubscriptExpr__Check
	.align 16
	.type	 SubscriptExpr__NeedsAddress,@function
SubscriptExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+184,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 SubscriptExpr__NeedsAddress,.Lfe4-SubscriptExpr__NeedsAddress
	.align 16
	.type	 SubscriptExpr__Prep,@function
SubscriptExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L27
	movl %eax,24(%ebx)
.L27:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L28
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	jmp .L30
	.align 16
.L28:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
.L30:
	call *%eax
	addl $4,%esp
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 SubscriptExpr__Prep,.Lfe5-SubscriptExpr__Prep
	.align 16
	.type	 SubscriptExpr__Compile,@function
SubscriptExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call SubscriptExpr__CompileLV
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+92,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 SubscriptExpr__Compile,.Lfe6-SubscriptExpr__Compile
	.align 16
	.type	 SubscriptExpr__CompileLV,@function
SubscriptExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-4(%ebp)
	movl 8(%ebp),%edx
	movb $0,-40(%ebp)
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,-36(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	movl -36(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+52,%eax
	call *%eax
	movb %al,%bl
	movl -36(%ebp),%edx
	pushl %edx
	movl MI_ArrayType+56,%eax
	call *%eax
	movl %eax,-32(%ebp)
	addl $24,%esp
	testb %bl,%bl
	jne .L33
	pushl $2896
	call _m3_fault
	.align 16
.L33:
	movl 8(%ebp),%ecx
	movl 16(%ecx),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L34
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+212,%eax
	jmp .L55
	.align 16
.L34:
	movl 8(%ebp),%ecx
	movl 16(%ecx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
.L55:
	call *%eax
	addl $4,%esp
	movl 8(%ebp),%edx
	movl 28(%edx),%edx
	movl %edx,-44(%ebp)
	testl %edx,%edx
	jne .L36
	movl 8(%ebp),%ecx
	movl 24(%ecx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	je .L37
	leal -12(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	movl $1,%ebx
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L38
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edi
	pushl %esi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L38:
	movb %bl,-40(%ebp)
	movl -44(%ebp),%ebx
	cmpb $0,-40(%ebp)
	je .L39
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L39:
	movb %bl,-40(%ebp)
.L37:
	cmpb $0,-40(%ebp)
	je .L40
	movl -32(%ebp),%eax
	imull -16(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	jmp .L56
	.align 16
.L40:
	movl 8(%ebp),%edx
	movl 24(%edx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl -36(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+72,%eax
	jmp .L56
	.align 16
.L36:
	cmpl $1,-44(%ebp)
	jne .L43
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl -36(%ebp),%edx
	pushl %edx
	movl MI_ArrayType+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jge .L44
	pushl $3329
	call _m3_fault
	.align 16
.L44:
	pushl %ebx
	movl MI_CG+768,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl 24(%ecx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $8,%esp
	cmpb $0,MI_Host+84
	je .L45
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+772,%eax
	call *%eax
	movl MI_CG+696,%eax
	call *%eax
	addl $8,%esp
.L45:
	movl -32(%ebp),%edx
	pushl %edx
	movl MI_CG+712,%eax
	call *%eax
	movl -36(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jge .L46
	pushl $3473
	call _m3_fault
	.align 16
.L46:
	pushl %ebx
	movl MI_CG+720,%eax
	call *%eax
	pushl %esi
	jmp .L57
	.align 16
.L43:
	movl MI_CG+220,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %eax,%esi
	movl 24(%edx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MI_Host+84
	je .L47
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+772,%eax
	call *%eax
	movl MI_CG+696,%eax
	call *%eax
	addl $8,%esp
.L47:
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,-28(%ebp)
	movl -36(%ebp),%ecx
	pushl %ecx
	movl MI_OpenArrayType+72,%eax
	call *%eax
	movl %eax,%edi
	movl $1,%ebx
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 28(%edx),%edx
	decl %edx
	movl %edx,-48(%ebp)
	jmp .L48
	.align 16
.L49:
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+772,%eax
	call *%eax
	leal -1(%ebx),%eax
	imull MI_Target+104,%eax
	addl MI_M3RT+296,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+408,%eax
	call *%eax
	incl %ebx
	addl $16,%esp
.L48:
	cmpl %ebx,-48(%ebp)
	jge .L49
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl -36(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jge .L51
	pushl $3953
	call _m3_fault
	.align 16
.L51:
	pushl %ebx
	movl MI_CG+768,%eax
	call *%eax
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	xorl %ebx,%ebx
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 28(%ecx),%ecx
	addl $-2,%ecx
	movl %ecx,-52(%ebp)
	jmp .L52
	.align 16
.L53:
	movl %ebx,%eax
	imull MI_Target+104,%eax
	addl MI_M3RT+296,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+380,%eax
	call *%eax
	pushl $1
	movl MI_CG+468,%eax
	call *%eax
	incl %ebx
	addl $12,%esp
.L52:
	cmpl %ebx,-52(%ebp)
	jge .L53
	movl -32(%ebp),%edx
	pushl %edx
	movl MI_CG+712,%eax
	call *%eax
	movl MI_M3RT+292,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+412,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	pushl %edi
	movl MI_CG+372,%eax
	call *%eax
	pushl %esi
	movl MI_CG+232,%eax
	call *%eax
	movl -28(%ebp),%ecx
	pushl %ecx
.L57:
	movl MI_CG+232,%eax
.L56:
	call *%eax
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 SubscriptExpr__CompileLV,.Lfe7-SubscriptExpr__CompileLV
	.align 16
	.type	 SubscriptExpr__IsDesignator,@function
SubscriptExpr__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 SubscriptExpr__IsDesignator,.Lfe8-SubscriptExpr__IsDesignator
	.align 16
	.type	 SubscriptExpr__IsWritable,@function
SubscriptExpr__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+172,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 SubscriptExpr__IsWritable,.Lfe9-SubscriptExpr__IsWritable
	.align 16
	.type	 SubscriptExpr__Fold,@function
SubscriptExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	movl $0,-4(%ebp)
	addl $8,%esp
	testl %esi,%esi
	je .L61
	testl %edx,%edx
	jne .L62
.L61:
	xorl %eax,%eax
	jmp .L64
	.align 16
.L62:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %esi
	movl MI_ArrayExpr+56,%eax
	call *%eax
	testl %eax,%eax
	je .L64
	movl -4(%ebp),%eax
.L64:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 SubscriptExpr__Fold,.Lfe10-SubscriptExpr__Fold
	.align 16
	.type	 SubscriptExpr__NoteWrites,@function
SubscriptExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 SubscriptExpr__NoteWrites,.Lfe11-SubscriptExpr__NoteWrites
	.align 16
	.type	 M_SubscriptExpr_td55d5ac0_LINK,@function
M_SubscriptExpr_td55d5ac0_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_SubscriptExpr+192,%eax
	movl MM_SubscriptExpr+148,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_SubscriptExpr+152,%edx
	movl %edx,8(%eax)
	movl MM_SubscriptExpr+156,%edx
	movl %edx,36(%eax)
	movl MM_SubscriptExpr+160,%ecx
	movl %ecx,52(%eax)
	movl MM_SubscriptExpr+164,%edx
	movl %edx,56(%eax)
	movl %ecx,60(%eax)
	movl MM_SubscriptExpr+168,%edx
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MM_SubscriptExpr+180,%edx
	movl %edx,16(%eax)
	movl MI_ExprRep+544,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MM_SubscriptExpr+176,%edx
	movl %edx,24(%eax)
	movl MM_SubscriptExpr+172,%edx
	movl %edx,28(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MM_SubscriptExpr+184,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe12:
	.size	 M_SubscriptExpr_td55d5ac0_LINK,.Lfe12-M_SubscriptExpr_td55d5ac0_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_SubscriptExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_SubscriptExpr
.data
	.align 4
	.type	 MM_SubscriptExpr,@object
	.size	 MM_SubscriptExpr,824
MM_SubscriptExpr:
	.long MM_SubscriptExpr+628
	.long MM_SubscriptExpr+44
	.long MM_SubscriptExpr+192
	.zero	8
	.long MM_SubscriptExpr+492
	.zero	28
	.long -715302208
.byte 123
.byte 214
.byte 225
.byte 206
.byte 187
.byte 140
.byte 188
.byte 27
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_SubscriptExpr+778
	.long MM_SubscriptExpr+781
	.long MM_SubscriptExpr+783
	.zero	4
	.long M_SubscriptExpr_td55d5ac0_LINK
	.long -765996802
	.zero	12
	.long MM_SubscriptExpr+792
	.long MM_SubscriptExpr+808
	.zero	4
	.long SubscriptExpr__TypeOf
	.long SubscriptExpr__Check
	.long SubscriptExpr__NeedsAddress
	.long SubscriptExpr__Prep
	.long SubscriptExpr__Compile
	.long SubscriptExpr__CompileLV
	.long SubscriptExpr__IsDesignator
	.long SubscriptExpr__IsWritable
	.long SubscriptExpr__Fold
	.long SubscriptExpr__NoteWrites
	.long SubscriptExpr__New
	.zero	4
	.long -715302208
	.long 2
	.long MM_SubscriptExpr+212
	.long 39
	.ascii	"subscripted expression is not an array"
	.zero	2
	.long 2
	.long MM_SubscriptExpr+264
	.long 51
	.ascii	"open arrays must be indexed by integer expressions"
	.zero	2
	.long 2
	.long MM_SubscriptExpr+328
	.long 26
	.ascii	"subscript is out of range"
	.zero	3
	.long 2
	.long MM_SubscriptExpr+368
	.long 25
	.ascii	"incompatible array index"
	.zero	4
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"New"
	.zero	4
	.long SubscriptExpr__NoteWrites
	.long MM_SubscriptExpr+396
	.zero	4
	.long SubscriptExpr__Fold
	.long MM_SubscriptExpr+407
	.zero	4
	.long SubscriptExpr__IsWritable
	.long MM_SubscriptExpr+412
	.zero	4
	.long SubscriptExpr__IsDesignator
	.long MM_SubscriptExpr+423
	.zero	4
	.long SubscriptExpr__CompileLV
	.long MM_SubscriptExpr+436
	.zero	4
	.long SubscriptExpr__Compile
	.long MM_SubscriptExpr+446
	.zero	4
	.long SubscriptExpr__Prep
	.long MM_SubscriptExpr+454
	.zero	4
	.long SubscriptExpr__NeedsAddress
	.long MM_SubscriptExpr+459
	.zero	4
	.long SubscriptExpr__Check
	.long MM_SubscriptExpr+472
	.zero	4
	.long SubscriptExpr__TypeOf
	.long MM_SubscriptExpr+478
	.zero	4
	.long SubscriptExpr__New
	.long MM_SubscriptExpr+485
	.long MI_SubscriptExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/SubscriptExpr.m3"
	.zero	1
.byte 4
.byte 14
.byte 0
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 7
	.ascii	"SubscriptExpr.P"
	.zero	1
	.ascii	"SubscriptExpr.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"