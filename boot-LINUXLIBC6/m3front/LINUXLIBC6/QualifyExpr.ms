	.file	"QualifyExpr.mc"
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
	.type	 QualifyExpr__New,@function
QualifyExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_QualifyExpr+232,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,36(%edi)
	movl $0,20(%edi)
	movb $6,40(%edi)
	movl $0,24(%edi)
	movl $0,28(%edi)
	movb $0,41(%edi)
	movb $0,42(%edi)
	movb $0,43(%edi)
	movb $0,44(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 QualifyExpr__New,.Lfe1-QualifyExpr__New
	.align 16
	.type	 QualifyExpr__Split,@function
QualifyExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	je .L6
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_QualifyExpr+236
	jg .L6
	movl MM_QualifyExpr+232,%eax
	cmpl %edx,4(%eax)
	jl .L6
	pushl %ebx
	call QualifyExpr__Resolve
	movl 20(%ebx),%eax
	movl %eax,(%esi)
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QualifyExpr__Split,.Lfe2-QualifyExpr__Split
	.align 16
	.type	 QualifyExpr__SplitQID,@function
QualifyExpr__SplitQID:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %ebx,%ebx
	je .L14
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_QualifyExpr+236
	jg .L14
	movl MM_QualifyExpr+232,%eax
	cmpl %edx,4(%eax)
	jl .L14
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_NamedExpr+56,%eax
	call *%eax
	testl %eax,%eax
	je .L18
	movl 36(%ebx),%eax
	movl %eax,(%esi)
	movl $1,%eax
	jmp .L18
	.align 16
.L14:
	xorl %eax,%eax
.L18:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 QualifyExpr__SplitQID,.Lfe3-QualifyExpr__SplitQID
	.align 16
	.type	 QualifyExpr__PassObject,@function
QualifyExpr__PassObject:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L25
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_QualifyExpr+236
	jg .L25
	movl MM_QualifyExpr+232,%eax
	cmpl %edx,4(%eax)
	jl .L25
	cmpb $5,40(%ebx)
	jne .L25
	movl 32(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	movl 32(%ebx),%eax
	pushl %eax
	movl MI_CG+232,%eax
	call *%eax
	movl $0,32(%ebx)
	movl $1,%eax
	jmp .L27
	.align 16
.L25:
	xorl %eax,%eax
.L27:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 QualifyExpr__PassObject,.Lfe4-QualifyExpr__PassObject
	.align 16
	.type	 QualifyExpr__MethodType,@function
QualifyExpr__MethodType:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L34
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_QualifyExpr+236
	jg .L34
	movl MM_QualifyExpr+232,%eax
	cmpl %edx,4(%eax)
	jl .L34
	pushl %ebx
	call QualifyExpr__Resolve
	addl $4,%esp
	cmpb $5,40(%ebx)
	jne .L34
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	jmp .L36
	.align 16
.L34:
	xorl %eax,%eax
.L36:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 QualifyExpr__MethodType,.Lfe5-QualifyExpr__MethodType
	.align 16
	.type	 QualifyExpr__Bounder,@function
QualifyExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call QualifyExpr__Resolve
	addl $4,%esp
	cmpb $0,43(%ebx)
	je .L38
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	addl $4,%esp
.L38:
	movb $1,43(%ebx)
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L39
	cmpl $1,%eax
	jle .L40
	jmp .L41
	.align 16
.L39:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Expr+164,%eax
	call *%eax
	jmp .L42
	.align 16
.L40:
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L43
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QualifyExpr+244
	jg .L44
	movl MM_QualifyExpr+240,%eax
	cmpl %ecx,4(%eax)
	jge .L43
.L44:
	pushl $2101
	call _m3_fault
	.align 16
.L43:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Variable+80,%eax
	call *%eax
	jmp .L42
	.align 16
.L41:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
.L42:
	movb $0,43(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 QualifyExpr__Bounder,.Lfe6-QualifyExpr__Bounder
	.align 16
	.type	 QualifyExpr__MakeDummy,@function
QualifyExpr__MakeDummy:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movb $0,40(%ebx)
	movl 36(%ebx),%eax
	pushl %eax
	movl MI_ErrType+44,%eax
	pushl %eax
	movl MI_VarExpr+44,%eax
	call *%eax
	pushl %eax
	movl MI_VarExpr+48,%eax
	call *%eax
	movl %eax,20(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 QualifyExpr__MakeDummy,.Lfe7-QualifyExpr__MakeDummy
	.align 16
	.type	 QualifyExpr__Resolve,@function
QualifyExpr__Resolve:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl %edi,-8(%ebp)
	cmpb $6,40(%ebx)
	jne .L46
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
	pushl %edx
	movl MI_RefType+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L48
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_DerefExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,16(%ebx)
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
	addl $8,%esp
.L48:
	movl -12(%ebp),%eax
	movl %eax,24(%ebx)
	movl %edi,20(%ebx)
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edi
	movl -12(%ebp),%eax
	addl $4,%esp
	cmpl %eax,MI_ErrType+44
	jne .L49
	pushl %ebx
	call QualifyExpr__MakeDummy
	jmp .L46
	.align 16
.L49:
	testl %eax,%eax
	jne .L51
	leal -12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L52
	leal 20(%ebx),%esi
	pushl %esi
	movl 36(%ebx),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_EnumType+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L53
	movb $1,40(%ebx)
	jmp .L46
	.align 16
.L53:
	leal 24(%ebx),%eax
	pushl %eax
	pushl %esi
	movl 36(%ebx),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+60,%eax
	call *%eax
	testl %eax,%eax
	je .L46
	movl -12(%ebp),%eax
	movl %eax,28(%ebx)
	movb $2,40(%ebx)
	jmp .L46
	.align 16
.L52:
	leal -8(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_NamedExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L46
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $5,%eax
	jne .L46
	movb $0,40(%ebx)
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L59
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QualifyExpr+252
	jg .L60
	movl MM_QualifyExpr+248,%eax
	cmpl %ecx,4(%eax)
	jge .L59
.L60:
	pushl $2933
	call _m3_fault
	.align 16
.L59:
	pushl %edx
	movl MI_Module+84,%eax
	call *%eax
	movl %eax,%edx
	pushl $1
	movl 36(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,20(%ebx)
	jmp .L46
	.align 16
.L51:
	leal 20(%ebx),%esi
	pushl %esi
	movl 36(%ebx),%eax
	pushl %eax
	pushl %edi
	movl MI_RecordType+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L61
	movb $3,40(%ebx)
	jmp .L46
	.align 16
.L61:
	leal 24(%ebx),%eax
	pushl %eax
	pushl %esi
	movl 36(%ebx),%eax
	pushl %eax
	pushl %edi
	movl MI_ObjectType+60,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L46
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	cmpl $6,%eax
	jne .L63
	movb $4,40(%ebx)
	jmp .L46
	.align 16
.L63:
	movb $5,40(%ebx)
.L46:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 QualifyExpr__Resolve,.Lfe8-QualifyExpr__Resolve
	.align 16
	.type	 QualifyExpr__TypeOf,@function
QualifyExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call QualifyExpr__Resolve
	addl $4,%esp
	cmpb $0,44(%ebx)
	je .L66
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	movl MI_ErrType+44,%eax
	movl %eax,8(%ebx)
	jmp .L70
	.align 16
.L66:
	movb $1,44(%ebx)
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,8(%ebx)
	xorl %eax,%eax
	movb 40(%ebx),%al
	addl $4,%esp
	cmpl $5,%eax
	jne .L67
	movl $0,8(%ebx)
	jmp .L68
	.align 16
.L67:
	cmpl $2,%eax
	jne .L68
	movl 28(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_ProcType+52,%eax
	call *%eax
	movl %eax,8(%ebx)
.L68:
	movb $0,44(%ebx)
	movl 8(%ebx),%eax
.L70:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 QualifyExpr__TypeOf,.Lfe9-QualifyExpr__TypeOf
	.align 16
	.type	 QualifyExpr__Check,@function
QualifyExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	leal -24(%ebp),%ebx
	pushl %ebx
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	pushl %esi
	call QualifyExpr__Resolve
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	pushl %ebx
	leal -28(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	addl $36,%esp
	movl 20(%esi),%edx
	testl %edx,%edx
	jne .L72
	movl -28(%ebp),%eax
	cmpl %eax,-32(%ebp)
	jne .L73
	pushl $MM_QualifyExpr+260
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L73:
	pushl %esi
	call QualifyExpr__MakeDummy
	addl $4,%esp
	jmp .L74
	.align 16
.L72:
	xorl %eax,%eax
	movb 40(%esi),%al
	cmpl $3,%eax
	jne .L75
	leal -20(%ebp),%eax
	pushl %eax
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_DerefExpr+48,%eax
	call *%eax
	addl $16,%esp
	jmp .L74
	.align 16
.L75:
	cmpl $2,%eax
	jne .L74
	pushl %edx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $7,%eax
	je .L74
	pushl $MM_QualifyExpr+300
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L74:
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+44,%eax
	call *%eax
	pushl %esi
	call QualifyExpr__TypeOf
	addl $12,%esp
	movl 8(%esi),%eax
	testl %eax,%eax
	je .L71
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,8(%esi)
.L71:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 QualifyExpr__Check,.Lfe10-QualifyExpr__Check
	.align 16
	.type	 QualifyExpr__EqCheck,@function
QualifyExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	testl %ebx,%ebx
	je .L82
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_QualifyExpr+236
	jg .L82
	movl MM_QualifyExpr+232,%eax
	cmpl %edx,4(%eax)
	jl .L82
	pushl %esi
	call QualifyExpr__Resolve
	pushl %ebx
	call QualifyExpr__Resolve
	xorl %edx,%edx
	movl 20(%ebx),%eax
	addl $8,%esp
	cmpl %eax,20(%esi)
	jne .L84
	movb 40(%esi),%al
	cmpb %al,40(%ebx)
	jne .L84
	pushl %edi
	movl 16(%ebx),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+232,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %edx,%edx
	movb %al,%dl
.L84:
	movl %edx,%eax
	jmp .L86
	.align 16
.L82:
	xorl %eax,%eax
.L86:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 QualifyExpr__EqCheck,.Lfe11-QualifyExpr__EqCheck
.section	.rodata
	.align 4
	.type	 L_6.0,@object
	.size	 L_6.0,28
L_6.0:
	.long .L88
	.long .L89
	.long .L89
	.long .L90
	.long .L91
	.long .L89
	.long .L89
.text
	.align 16
	.type	 QualifyExpr__NeedsAddress,@function
QualifyExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %eax,%eax
	movb 40(%ebx),%al
	jmp *L_6.0(,%eax,4)
	.align 16
.L88:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpb $1,%al
	jne .L92
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L93
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QualifyExpr+244
	jg .L94
	movl MM_QualifyExpr+240,%eax
	cmpl %ecx,4(%eax)
	jge .L93
.L94:
	pushl $4261
	call _m3_fault
	.align 16
.L93:
	pushl %edx
	movl MI_Variable+72,%eax
	call *%eax
	jmp .L87
	.align 16
.L92:
	testb %al,%al
	jne .L87
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	jmp .L99
	.align 16
.L90:
	movl 16(%ebx),%eax
	pushl %eax
.L99:
	movl MI_Expr+184,%eax
	call *%eax
.L91:
	jmp .L87
	.align 16
.L89:
	pushl $4448
	call _m3_fault
	.align 16
.L87:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 QualifyExpr__NeedsAddress,.Lfe12-QualifyExpr__NeedsAddress
.section	.rodata
	.align 4
	.type	 L_7.1,@object
	.size	 L_7.1,28
L_7.1:
	.long .L101
	.long .L101
	.long .L102
	.long .L103
	.long .L104
	.long .L105
	.long .L106
.text
	.align 16
	.type	 QualifyExpr__Prep,@function
QualifyExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %eax,%eax
	movb 40(%ebx),%al
	jmp *L_7.1(,%eax,4)
	.align 16
.L101:
.L102:
	jmp .L100
	.align 16
.L103:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L108
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	call *%eax
	jmp .L100
	.align 16
.L108:
.L104:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	jmp .L100
	.align 16
.L105:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,32(%ebx)
	jmp .L100
	.align 16
.L106:
	pushl $4816
	call _m3_fault
	.align 16
.L100:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 QualifyExpr__Prep,.Lfe13-QualifyExpr__Prep
.section	.rodata
	.align 4
	.type	 L_8.2,@object
	.size	 L_8.2,28
L_8.2:
	.long .L112
	.long .L112
	.long .L113
	.long .L114
	.long .L115
	.long .L116
	.long .L117
.text
	.align 16
	.type	 QualifyExpr__Compile,@function
QualifyExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	xorl %eax,%eax
	movb 40(%ebx),%al
	jmp *L_8.2(,%eax,4)
	.align 16
.L112:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+56,%eax
	call *%eax
	jmp .L111
	.align 16
.L113:
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Method+52,%eax
	call *%eax
	pushl $1
	movl MI_M3RT+220,%eax
	pushl %eax
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_Type+144,%eax
	call *%eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_ObjectType+64,%eax
	call *%eax
	movl %eax,-52(%ebp)
	addl $32,%esp
	testl %eax,%eax
	jge .L131
	jmp .L126
	.align 16
.L114:
	leal -44(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L121
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+212,%eax
	jmp .L129
	.align 16
.L121:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
.L129:
	call *%eax
	addl $4,%esp
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	jmp .L130
	.align 16
.L115:
	leal -44(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	leal -48(%ebp),%eax
	pushl %eax
	leal -52(%ebp),%eax
	pushl %eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_ObjectType+68,%eax
	call *%eax
	movl -52(%ebp),%eax
	addl $28,%esp
	testl %eax,%eax
	jl .L123
	addl %eax,-36(%ebp)
	jmp .L124
	.align 16
.L123:
	movl MI_CG+680,%eax
	call *%eax
	pushl $0
	movl MI_M3RT+192,%eax
	pushl %eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+144,%eax
	call *%eax
	pushl $8
	movl MI_CG+712,%eax
	call *%eax
	addl $16,%esp
.L124:
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl -48(%ebp),%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L125
	pushl $5601
	call _m3_fault
	.align 16
.L125:
	pushl %eax
	movl MI_CG+720,%eax
.L130:
	call *%eax
	movl -32(%ebp),%eax
	pushl %eax
	movl MI_Type+92,%eax
	call *%eax
	jmp .L111
	.align 16
.L116:
	leal -24(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Method+52,%eax
	call *%eax
	movl 32(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl MI_Target+60,%eax
	pushl %eax
	pushl $0
	pushl $0
	movl MI_CG+376,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	addl $32,%esp
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_ObjectType+64,%eax
	call *%eax
	movl %eax,-52(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jl .L126
.L131:
	addl %eax,-20(%ebp)
	jmp .L127
	.align 16
.L126:
	pushl $0
	movl MI_M3RT+204,%eax
	pushl %eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+144,%eax
	call *%eax
	pushl $8
	movl MI_CG+712,%eax
	call *%eax
	addl $16,%esp
.L127:
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl MI_Target+60,%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	pushl $0
	movl MI_CG+376,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	jmp .L111
	.align 16
.L117:
	pushl $5904
	call _m3_fault
	.align 16
.L111:
	movl -56(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 QualifyExpr__Compile,.Lfe14-QualifyExpr__Compile
.section	.rodata
	.align 4
	.type	 L_9.3,@object
	.size	 L_9.3,28
L_9.3:
	.long .L133
	.long .L134
	.long .L134
	.long .L135
	.long .L136
	.long .L134
	.long .L134
.text
	.align 16
	.type	 QualifyExpr__CompileLV,@function
QualifyExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	xorl %eax,%eax
	movb 40(%ebx),%al
	jmp *L_9.3(,%eax,4)
	.align 16
.L133:
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L137
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QualifyExpr+244
	jg .L138
	movl MM_QualifyExpr+240,%eax
	cmpl %ecx,4(%eax)
	jge .L137
.L138:
	pushl $6053
	call _m3_fault
	.align 16
.L137:
	pushl %edx
	movl MI_Variable+88,%eax
	call *%eax
	jmp .L132
	.align 16
.L135:
	leal -20(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+212,%eax
	call *%eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	jmp .L132
	.align 16
.L136:
	leal -20(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	leal -28(%ebp),%eax
	pushl %eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_ObjectType+68,%eax
	call *%eax
	movl -28(%ebp),%eax
	addl $24,%esp
	testl %eax,%eax
	jl .L140
	addl %eax,-12(%ebp)
	jmp .L141
	.align 16
.L140:
	movl MI_CG+680,%eax
	call *%eax
	pushl $0
	movl MI_M3RT+192,%eax
	pushl %eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+144,%eax
	call *%eax
	pushl $8
	movl MI_CG+712,%eax
	call *%eax
	addl $16,%esp
.L141:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl -24(%ebp),%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L142
	pushl $6321
	call _m3_fault
	.align 16
.L142:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	jmp .L132
	.align 16
.L134:
	pushl $6400
	call _m3_fault
	.align 16
.L132:
	movl -32(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 QualifyExpr__CompileLV,.Lfe15-QualifyExpr__CompileLV
	.align 16
	.type	 QualifyExpr__Fold,@function
QualifyExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	xorl %ebx,%ebx
	cmpb $0,41(%esi)
	je .L145
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	jmp .L158
	.align 16
.L145:
	movb $1,41(%esi)
	movb $1,-16(%ebp)
	movl 16(%esi),%eax
	movl %eax,-8(%ebp)
	movl 36(%esi),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call QualifyExpr__DoQualify
	xorl %eax,%eax
	movb -16(%ebp),%al
	addl $8,%esp
	testl %eax,%eax
	jle .L146
	cmpl $1,%eax
	jle .L147
	cmpl $2,%eax
	jle .L148
	jmp .L150
	.align 16
.L147:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	jmp .L159
	.align 16
.L148:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_TypeExpr+44,%eax
	jmp .L159
	.align 16
.L146:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L151
	cmpl $1,%eax
	jle .L152
	cmpl $2,%eax
	jle .L150
	cmpl $3,%eax
	jle .L152
	cmpl $4,%eax
	jle .L154
	jmp .L152
	.align 16
.L151:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	pushl %eax
	movl MI_Expr+160,%eax
	jmp .L159
	.align 16
.L154:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ProcExpr+44,%eax
.L159:
	call *%eax
	movl %eax,%ebx
	jmp .L150
	.align 16
.L152:
	xorl %ebx,%ebx
.L150:
	movb $0,41(%esi)
.L158:
	movl %ebx,%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 QualifyExpr__Fold,.Lfe16-QualifyExpr__Fold
	.align 16
	.type	 QualifyExpr__DoQualify,@function
QualifyExpr__DoQualify:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 12(%ebp),%edi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl %eax,-12(%ebp)
	movl 8(%ebp),%ebx
	movl %eax,-8(%ebp)
	xorl %eax,%eax
	movb (%ebx),%al
	testl %eax,%eax
	jle .L161
	cmpl $1,%eax
	jle .L162
	cmpl $2,%eax
	jle .L163
	jmp .L160
	.align 16
.L162:
	movl 8(%ebx),%ecx
	testl %ecx,%ecx
	jne .L166
	movb $3,(%ebx)
	jmp .L160
	.align 16
.L166:
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	movl MM_QualifyExpr+236,%esi
	cmpl %esi,%edx
	jne .L169
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %esi,%edx
	jl .L171
	movl MM_QualifyExpr+232,%eax
	cmpl %edx,4(%eax)
	jge .L170
.L171:
	pushl $7461
	call _m3_fault
	.align 16
.L170:
	movb $1,(%ebx)
	movl 8(%ebp),%edx
	movl 16(%ecx),%eax
	movl %eax,8(%edx)
	movl 36(%ecx),%eax
	pushl %eax
	pushl %edx
	call QualifyExpr__DoQualify
	pushl %edi
	movl 8(%ebp),%eax
	pushl %eax
	call QualifyExpr__DoQualify
	jmp .L160
	.align 16
.L169:
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L172
	movl 8(%ebp),%eax
	movb $2,(%eax)
	movl 8(%ebp),%edx
	movl -12(%ebp),%eax
	movl %eax,12(%edx)
	jmp .L188
	.align 16
.L172:
	leal -16(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_NamedExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L173
	movl 8(%ebp),%eax
	movb $0,(%eax)
	movl 8(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,4(%edx)
	jmp .L188
	.align 16
.L173:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edi
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_RecordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L174
	movl 8(%ebp),%eax
	movb $1,(%eax)
	movl 8(%ebp),%edx
	movl -20(%ebp),%eax
	movl %eax,8(%edx)
	jmp .L160
	.align 16
.L174:
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-20(%ebp)
	movl 8(%ebp),%eax
	addl $4,%esp
	cmpl %edx,8(%eax)
	je .L190
	movb $1,(%eax)
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%edx
	movl %edx,8(%ecx)
	jmp .L189
	.align 16
.L163:
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,-12(%ebp)
	leal -16(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %ecx
	movl MI_EnumType+56,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L177
	movl 8(%ebp),%eax
	movb $1,(%eax)
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %eax,%ecx
	movl %ecx,8(%edx)
	jmp .L160
	.align 16
.L177:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edi
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+60,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L181
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $7,%eax
	jne .L181
	movl 8(%ebp),%eax
	movb $1,(%eax)
	movl -8(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	pushl %eax
	pushl %edi
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_MethodExpr+44,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%edx
	movl %edx,8(%ecx)
	jmp .L160
	.align 16
.L161:
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L180
	cmpl $1,%eax
	jle .L181
	cmpl $2,%eax
	jle .L182
	cmpl $4,%eax
	jle .L181
	cmpl $5,%eax
	jle .L183
	jmp .L181
	.align 16
.L180:
	movl 8(%ebp),%eax
	movb $1,(%eax)
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %eax,%ecx
	movl %ecx,8(%edx)
.L188:
	pushl %edi
	pushl %edx
	call QualifyExpr__DoQualify
	jmp .L160
	.align 16
.L182:
	movl 8(%ebp),%eax
	movb $2,(%eax)
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Value+100,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%edx
	movl %edx,12(%ecx)
.L189:
	pushl %edi
	pushl %ecx
	call QualifyExpr__DoQualify
	jmp .L160
	.align 16
.L183:
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%esp
	testl %ecx,%ecx
	je .L185
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_QualifyExpr+252
	jg .L186
	movl MM_QualifyExpr+248,%eax
	cmpl %edx,4(%eax)
	jge .L185
.L186:
	pushl $8261
	call _m3_fault
	.align 16
.L185:
	pushl %ecx
	movl MI_Module+84,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movb $0,(%eax)
	pushl $1
	pushl %edi
	pushl %edx
	movl MI_Scope+76,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%edx
	movl %edx,4(%ecx)
	jmp .L160
	.align 16
.L181:
	movl 8(%ebp),%eax
.L190:
	movb $3,(%eax)
.L160:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 QualifyExpr__DoQualify,.Lfe17-QualifyExpr__DoQualify
.section	.rodata
	.align 4
	.type	 L_10.4,@object
	.size	 L_10.4,28
L_10.4:
	.long .L192
	.long .L193
	.long .L194
	.long .L195
	.long .L196
	.long .L197
	.long .L198
.text
	.align 16
	.type	 QualifyExpr__IsDesignator,@function
QualifyExpr__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb 40(%edx),%al
	jmp *L_10.4(,%eax,4)
	.align 16
.L192:
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	cmpl $1,%eax
	sete %al
	andl $255,%eax
	jmp .L201
	.align 16
.L193:
.L194:
	jmp .L198
	.align 16
.L195:
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	jmp .L201
	.align 16
.L196:
	movl $1,%eax
	jmp .L201
	.align 16
.L197:
.L198:
	xorl %eax,%eax
.L201:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 QualifyExpr__IsDesignator,.Lfe18-QualifyExpr__IsDesignator
.section	.rodata
	.align 4
	.type	 L_11.5,@object
	.size	 L_11.5,28
L_11.5:
	.long .L203
	.long .L204
	.long .L205
	.long .L206
	.long .L207
	.long .L208
	.long .L209
.text
	.align 16
	.type	 QualifyExpr__IsWritable,@function
QualifyExpr__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb 40(%edx),%al
	jmp *L_11.5(,%eax,4)
	.align 16
.L203:
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Value+92,%eax
	call *%eax
	jmp .L212
	.align 16
.L204:
.L205:
	jmp .L209
	.align 16
.L206:
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+172,%eax
	call *%eax
	jmp .L212
	.align 16
.L207:
	movl $1,%eax
	jmp .L212
	.align 16
.L208:
.L209:
	xorl %eax,%eax
.L212:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 QualifyExpr__IsWritable,.Lfe19-QualifyExpr__IsWritable
	.align 16
	.type	 QualifyExpr__IsZeroes,@function
QualifyExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	xorb %bl,%bl
	cmpb $0,42(%esi)
	je .L214
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	xorl %eax,%eax
	jmp .L222
	.align 16
.L214:
	movb $1,42(%esi)
	movb $1,-16(%ebp)
	movl 16(%esi),%eax
	movl %eax,-8(%ebp)
	movl 36(%esi),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call QualifyExpr__DoQualify
	xorl %eax,%eax
	movb -16(%ebp),%al
	addl $8,%esp
	testl %eax,%eax
	jle .L215
	cmpl $1,%eax
	jg .L219
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	movb %al,%bl
	jmp .L219
	.align 16
.L215:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L220
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L220:
.L219:
	movb $0,42(%esi)
	xorl %eax,%eax
	movb %bl,%al
.L222:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 QualifyExpr__IsZeroes,.Lfe20-QualifyExpr__IsZeroes
.section	.rodata
	.align 4
	.type	 L_12.6,@object
	.size	 L_12.6,28
L_12.6:
	.long .L224
	.long .L225
	.long .L226
	.long .L227
	.long .L228
	.long .L229
	.long .L230
.text
	.align 16
	.type	 QualifyExpr__NoteWrites,@function
QualifyExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %eax,%eax
	movb 40(%ebx),%al
	jmp *L_12.6(,%eax,4)
	.align 16
.L225:
.L226:
.L229:
.L230:
	jmp .L223
	.align 16
.L227:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	jmp .L236
	.align 16
.L228:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	jmp .L236
	.align 16
.L224:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,%eax
	jne .L223
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L233
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QualifyExpr+244
	jg .L234
	movl MM_QualifyExpr+240,%eax
	cmpl %ecx,4(%eax)
	jge .L233
.L234:
	pushl $9429
	call _m3_fault
	.align 16
.L233:
	pushl %edx
	movl MI_Variable+124,%eax
.L236:
	call *%eax
.L223:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 QualifyExpr__NoteWrites,.Lfe21-QualifyExpr__NoteWrites
	.align 16
	.type	 M_QualifyExpr_t2f5230ea_LINK,@function
M_QualifyExpr_t2f5230ea_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_QualifyExpr+232,%eax
	movl MM_QualifyExpr+160,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_QualifyExpr+164,%edx
	movl %edx,8(%eax)
	movl MM_QualifyExpr+172,%edx
	movl %edx,36(%eax)
	movl MM_QualifyExpr+176,%ecx
	movl %ecx,52(%eax)
	movl MM_QualifyExpr+180,%edx
	movl %edx,56(%eax)
	movl %ecx,60(%eax)
	movl MM_QualifyExpr+184,%edx
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MM_QualifyExpr+188,%edx
	movl %edx,16(%eax)
	movl MM_QualifyExpr+168,%edx
	movl %edx,12(%eax)
	movl MM_QualifyExpr+148,%edx
	movl %edx,20(%eax)
	movl MM_QualifyExpr+200,%edx
	movl %edx,24(%eax)
	movl MM_QualifyExpr+196,%edx
	movl %edx,28(%eax)
	movl MM_QualifyExpr+204,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MM_QualifyExpr+208,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe22:
	.size	 M_QualifyExpr_t2f5230ea_LINK,.Lfe22-M_QualifyExpr_t2f5230ea_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QualifyExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe23:
	.size	 _m3_fault,.Lfe23-_m3_fault
.globl MM_QualifyExpr
.data
	.align 4
	.type	 MM_QualifyExpr,@object
	.size	 MM_QualifyExpr,1000
MM_QualifyExpr:
	.long MM_QualifyExpr+772
	.long MM_QualifyExpr+44
	.long MM_QualifyExpr+232
	.zero	8
	.long MM_QualifyExpr+516
	.zero	28
	.long 793915626
.byte 65
.byte 0
.byte 4
.byte 63
.byte 171
.byte 48
.byte 86
.byte 16
	.long 1
	.zero	4
	.long 32
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_QualifyExpr+920
	.long MM_QualifyExpr+932
	.long MM_QualifyExpr+938
	.zero	4
	.long M_QualifyExpr_t2f5230ea_LINK
	.long -350897909
	.zero	12
	.long MM_QualifyExpr+971
	.long MM_QualifyExpr+985
	.zero	4
	.long QualifyExpr__Bounder
	.long QualifyExpr__MakeDummy
	.long QualifyExpr__Resolve
	.long QualifyExpr__TypeOf
	.long QualifyExpr__Check
	.long QualifyExpr__EqCheck
	.long QualifyExpr__NeedsAddress
	.long QualifyExpr__Prep
	.long QualifyExpr__Compile
	.long QualifyExpr__CompileLV
	.long QualifyExpr__Fold
	.long QualifyExpr__DoQualify
	.long QualifyExpr__IsDesignator
	.long QualifyExpr__IsWritable
	.long QualifyExpr__IsZeroes
	.long QualifyExpr__NoteWrites
	.long QualifyExpr__New
	.long QualifyExpr__Split
	.long QualifyExpr__SplitQID
	.long QualifyExpr__PassObject
	.long QualifyExpr__MethodType
	.long MM_QualifyExpr+240
	.long 793915626
	.long MM_QualifyExpr+248
	.long 149856025
	.zero	4
	.long -1164381734
	.long 2
	.long MM_QualifyExpr+268
	.long 26
	.ascii	"unknown qualification '.'"
	.zero	3
	.long 2
	.long MM_QualifyExpr+308
	.long 22
	.ascii	"doesn't name a method"
	.zero	3
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"DoQualify"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Resolve"
	.zero	1
	.ascii	"MakeDummy"
	.zero	1
	.ascii	"Bounder"
	.zero	1
	.ascii	"MethodType"
	.zero	1
	.ascii	"PassObject"
	.zero	1
	.ascii	"SplitQID"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	2
	.long QualifyExpr__NoteWrites
	.long MM_QualifyExpr+332
	.zero	4
	.long QualifyExpr__IsZeroes
	.long MM_QualifyExpr+343
	.zero	4
	.long QualifyExpr__IsWritable
	.long MM_QualifyExpr+352
	.zero	4
	.long QualifyExpr__IsDesignator
	.long MM_QualifyExpr+363
	.zero	4
	.long QualifyExpr__DoQualify
	.long MM_QualifyExpr+376
	.zero	4
	.long QualifyExpr__Fold
	.long MM_QualifyExpr+386
	.zero	4
	.long QualifyExpr__CompileLV
	.long MM_QualifyExpr+391
	.zero	4
	.long QualifyExpr__Compile
	.long MM_QualifyExpr+401
	.zero	4
	.long QualifyExpr__Prep
	.long MM_QualifyExpr+409
	.zero	4
	.long QualifyExpr__NeedsAddress
	.long MM_QualifyExpr+414
	.zero	4
	.long QualifyExpr__EqCheck
	.long MM_QualifyExpr+427
	.zero	4
	.long QualifyExpr__Check
	.long MM_QualifyExpr+435
	.zero	4
	.long QualifyExpr__TypeOf
	.long MM_QualifyExpr+441
	.zero	4
	.long QualifyExpr__Resolve
	.long MM_QualifyExpr+448
	.zero	4
	.long QualifyExpr__MakeDummy
	.long MM_QualifyExpr+456
	.zero	4
	.long QualifyExpr__Bounder
	.long MM_QualifyExpr+466
	.zero	4
	.long QualifyExpr__MethodType
	.long MM_QualifyExpr+474
	.long MI_QualifyExpr+60
	.long QualifyExpr__PassObject
	.long MM_QualifyExpr+485
	.long MI_QualifyExpr+56
	.long QualifyExpr__SplitQID
	.long MM_QualifyExpr+496
	.long MI_QualifyExpr+52
	.long QualifyExpr__Split
	.long MM_QualifyExpr+505
	.long MI_QualifyExpr+48
	.long QualifyExpr__New
	.long MM_QualifyExpr+511
	.long MI_QualifyExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/QualifyExpr.m3"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 14
.byte 16
.byte 16
.byte 16
.byte 16
.byte 16
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 12
.byte 10
.byte 11
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 25
.byte 16
.byte 194
.byte 223
.byte 210
.byte 77
.byte 19
.byte 254
.byte 126
.byte 5
.byte 7
.byte 2
.byte 30
.byte 30
.byte 30
	.ascii	"QualifyExpr.T"
	.zero	1
	.ascii	"QualifyExpr.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
