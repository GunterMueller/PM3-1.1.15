	.file	"CallExpr.mc"
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
	.type	 CallExpr__New,@function
CallExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_CallExpr+392,%eax
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
	movl $0,32(%edi)
	movl $0,36(%edi)
	movb $1,13(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 CallExpr__New,.Lfe1-CallExpr__New
	.align 16
	.type	 CallExpr__Is,@function
CallExpr__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L9
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_CallExpr+396
	jg .L6
	movl MM_CallExpr+392,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 CallExpr__Is,.Lfe2-CallExpr__Is
	.align 16
	.type	 CallExpr__IsUserProc,@function
CallExpr__IsUserProc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L14
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_CallExpr+396
	jg .L14
	movl MM_CallExpr+392,%eax
	cmpl %edx,4(%eax)
	jl .L14
	pushl %ebx
	call CallExpr__Resolve
	movl MI_UserProc+44,%eax
	cmpl %eax,32(%ebx)
	sete %al
	andl $255,%eax
	jmp .L17
	.align 16
.L14:
	xorl %eax,%eax
.L17:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 CallExpr__IsUserProc,.Lfe3-CallExpr__IsUserProc
	.align 16
	.type	 CallExpr__NewMethodList,@function
CallExpr__NewMethodList:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 32(%ebp),%ebx
	movl 36(%ebp),%esi
	movl 40(%ebp),%edi
	movl MM_CallExpr+400,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L19
	pushl $1860
	call _m3_fault
	.align 16
.L19:
	movl 8(%ebp),%ecx
	movl %ecx,(%eax)
	movl 12(%ebp),%ecx
	movl %ecx,4(%eax)
	movb 16(%ebp),%cl
	movb %cl,8(%eax)
	movb 20(%ebp),%cl
	movb %cl,9(%eax)
	movb 24(%ebp),%cl
	movb %cl,10(%eax)
	movl 28(%ebp),%ecx
	movl %ecx,12(%eax)
	movl %eax,%edx
	testl %ebx,%ebx
	je .L26
	cmpl $-1,(%ebx)
	jne .L26
	pushl $1957
	call _m3_fault
	.align 16
.L26:
	movl %ebx,16(%edx)
	testl %eax,%eax
	jne .L28
	pushl $1972
	call _m3_fault
	.align 16
.L28:
	movl %eax,%edx
	testl %esi,%esi
	je .L29
	cmpl $-1,(%esi)
	jne .L29
	pushl $1973
	call _m3_fault
	.align 16
.L29:
	movl %esi,20(%edx)
	testl %eax,%eax
	jne .L31
	pushl $1988
	call _m3_fault
	.align 16
.L31:
	movl %eax,%edx
	testl %edi,%edi
	je .L32
	cmpl $-1,(%edi)
	jne .L32
	pushl $1989
	call _m3_fault
	.align 16
.L32:
	movl %edi,24(%edx)
	testl %eax,%eax
	jne .L34
	pushl $2004
	call _m3_fault
	.align 16
.L34:
	movl %eax,%edx
	cmpl $0,44(%ebp)
	je .L35
	movl 44(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L35
	pushl $2005
	call _m3_fault
	.align 16
.L35:
	movl 44(%ebp),%ecx
	movl %ecx,28(%edx)
	testl %eax,%eax
	jne .L37
	pushl $2020
	call _m3_fault
	.align 16
.L37:
	movl %eax,%edx
	cmpl $0,48(%ebp)
	je .L38
	movl 48(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L38
	pushl $2021
	call _m3_fault
	.align 16
.L38:
	movl 48(%ebp),%ecx
	movl %ecx,32(%edx)
	testl %eax,%eax
	jne .L40
	pushl $2036
	call _m3_fault
	.align 16
.L40:
	movl %eax,%edx
	cmpl $0,52(%ebp)
	je .L41
	movl 52(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L41
	pushl $2037
	call _m3_fault
	.align 16
.L41:
	movl 52(%ebp),%ecx
	movl %ecx,36(%edx)
	testl %eax,%eax
	jne .L43
	pushl $2052
	call _m3_fault
	.align 16
.L43:
	movl %eax,%edx
	cmpl $0,56(%ebp)
	je .L44
	movl 56(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L44
	pushl $2053
	call _m3_fault
	.align 16
.L44:
	movl 56(%ebp),%ecx
	movl %ecx,40(%edx)
	testl %eax,%eax
	jne .L46
	pushl $2068
	call _m3_fault
	.align 16
.L46:
	movl %eax,%edx
	cmpl $0,60(%ebp)
	je .L47
	movl 60(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L47
	pushl $2069
	call _m3_fault
	.align 16
.L47:
	movl 60(%ebp),%ecx
	movl %ecx,44(%edx)
	testl %eax,%eax
	jne .L49
	pushl $2084
	call _m3_fault
	.align 16
.L49:
	movl %eax,%edx
	cmpl $0,64(%ebp)
	je .L50
	movl 64(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L50
	pushl $2085
	call _m3_fault
	.align 16
.L50:
	movl 64(%ebp),%ecx
	movl %ecx,48(%edx)
	testl %eax,%eax
	jne .L52
	pushl $2100
	call _m3_fault
	.align 16
.L52:
	movl %eax,%edx
	cmpl $0,68(%ebp)
	je .L53
	movl 68(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L53
	pushl $2101
	call _m3_fault
	.align 16
.L53:
	movl 68(%ebp),%ecx
	movl %ecx,52(%edx)
	testl %eax,%eax
	jne .L55
	pushl $2116
	call _m3_fault
	.align 16
.L55:
	movl %eax,%edx
	cmpl $0,72(%ebp)
	je .L56
	movl 72(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L56
	pushl $2117
	call _m3_fault
	.align 16
.L56:
	movl 72(%ebp),%ecx
	movl %ecx,56(%edx)
	testl %eax,%eax
	jne .L58
	pushl $2132
	call _m3_fault
	.align 16
.L58:
	movl %eax,%edx
	cmpl $0,76(%ebp)
	je .L59
	movl 76(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L59
	pushl $2133
	call _m3_fault
	.align 16
.L59:
	movl 76(%ebp),%ecx
	movl %ecx,60(%edx)
	testl %eax,%eax
	jne .L61
	pushl $2148
	call _m3_fault
	.align 16
.L61:
	movl %eax,%edx
	cmpl $0,80(%ebp)
	je .L62
	movl 80(%ebp),%ecx
	cmpl $-1,(%ecx)
	jne .L62
	pushl $2149
	call _m3_fault
	.align 16
.L62:
	movl 80(%ebp),%ecx
	leal -12(%ebp),%esp
	movl %ecx,64(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 CallExpr__NewMethodList,.Lfe4-CallExpr__NewMethodList
	.align 16
	.type	 CallExpr__IsNever,@function
CallExpr__IsNever:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 CallExpr__IsNever,.Lfe5-CallExpr__IsNever
	.align 16
	.type	 CallExpr__IsAlways,@function
CallExpr__IsAlways:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 CallExpr__IsAlways,.Lfe6-CallExpr__IsAlways
	.align 16
	.type	 CallExpr__NoValue,@function
CallExpr__NoValue:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 CallExpr__NoValue,.Lfe7-CallExpr__NoValue
	.align 16
	.type	 CallExpr__NotAddressable,@function
CallExpr__NotAddressable:
	pushl %ebp
	movl %esp,%ebp
	pushl $2480
	call _m3_fault
	.align 16
.Lfe8:
	.size	 CallExpr__NotAddressable,.Lfe8-CallExpr__NotAddressable
	.align 16
	.type	 CallExpr__PrepArgs,@function
CallExpr__PrepArgs:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L69
	pushl $2564
	call _m3_fault
	.align 16
.L69:
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L70
	.align 16
.L71:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L72
	pushl $2580
	call _m3_fault
	.align 16
.L72:
	cmpl %ebx,4(%eax)
	ja .L73
	pushl $2578
	call _m3_fault
	.align 16
.L73:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	incl %ebx
	addl $4,%esp
.L70:
	cmpl %esi,%ebx
	jle .L71
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 CallExpr__PrepArgs,.Lfe9-CallExpr__PrepArgs
	.align 16
	.type	 CallExpr__NoLValue,@function
CallExpr__NoLValue:
	pushl %ebp
	movl %esp,%ebp
	pushl $2672
	call _m3_fault
	.align 16
.Lfe10:
	.size	 CallExpr__NoLValue,.Lfe10-CallExpr__NoLValue
	.align 16
	.type	 CallExpr__NotBoolean,@function
CallExpr__NotBoolean:
	pushl %ebp
	movl %esp,%ebp
	pushl $2784
	call _m3_fault
	.align 16
.Lfe11:
	.size	 CallExpr__NotBoolean,.Lfe11-CallExpr__NotBoolean
	.align 16
	.type	 CallExpr__PrepNoBranch,@function
CallExpr__PrepNoBranch:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%eax
	movl 12(%ebp),%edi
	movl 52(%eax),%esi
	pushl %ebx
	call *%esi
	movl (%ebx),%eax
	movl 56(%eax),%esi
	pushl %ebx
	call *%esi
	addl $8,%esp
	cmpl $-1,%edi
	je .L78
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edi
	movl MI_CG+324,%eax
	jmp .L80
	.align 16
.L78:
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_CG+328,%eax
.L80:
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 CallExpr__PrepNoBranch,.Lfe12-CallExpr__PrepNoBranch
	.align 16
	.type	 CallExpr__NoBranch,@function
CallExpr__NoBranch:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 CallExpr__NoBranch,.Lfe13-CallExpr__NoBranch
	.align 16
	.type	 CallExpr__NotWritable,@function
CallExpr__NotWritable:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 CallExpr__NotWritable,.Lfe14-CallExpr__NotWritable
	.align 16
	.type	 CallExpr__Resolve,@function
CallExpr__Resolve:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	cmpl $0,32(%esi)
	jne .L83
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L85
	movl 16(%esi),%eax
	pushl %eax
	movl MI_QualifyExpr+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
.L85:
	pushl %ebx
	movl MI_ProcType+80,%eax
	call *%eax
	movl %eax,32(%esi)
	movl %ebx,36(%esi)
.L83:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 CallExpr__Resolve,.Lfe15-CallExpr__Resolve
	.align 16
	.type	 CallExpr__TypeOf,@function
CallExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call CallExpr__Resolve
	addl $4,%esp
	movl 32(%ebx),%eax
	testl %eax,%eax
	je .L95
	movl 12(%eax),%edx
	testl %edx,%edx
	jne .L90
	cmpl $0,16(%eax)
	jne .L92
.L90:
	movl %edx,8(%ebx)
	jmp .L88
	.align 16
.L92:
	pushl %ebx
	call CallExpr__FixArgs
	movl 32(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L94
	pushl $3588
	call _m3_fault
	.align 16
.L94:
	movl 16(%eax),%eax
	pushl %ebx
	call *%eax
.L95:
	movl %eax,8(%ebx)
.L88:
	movl 8(%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 CallExpr__TypeOf,.Lfe16-CallExpr__TypeOf
	.align 16
	.type	 CallExpr__Check,@function
CallExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	leal -4(%ebp),%ebx
	pushl %ebx
	leal -12(%ebp),%eax
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
	call CallExpr__Resolve
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	addl $28,%esp
	cmpl $0,32(%esi)
	jne .L97
	movl -8(%ebp),%eax
	cmpl %eax,-12(%ebp)
	jne .L97
	pushl %esi
	call CallExpr__ProcName
	pushl %eax
	pushl $MM_CallExpr+412
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
	movl MI_ErrType+44,%eax
	movl %eax,8(%esi)
	addl $16,%esp
.L97:
	movl $1,%eax
	movl 32(%esi),%edx
	testl %edx,%edx
	je .L98
	cmpb $0,9(%edx)
	setne %al
	andl $255,%eax
.L98:
	movb %al,-16(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L100
	pushl $3956
	call _m3_fault
	.align 16
.L100:
	xorl %edi,%edi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-20(%ebp)
	jmp .L101
	.align 16
.L102:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L103
	pushl $3972
	call _m3_fault
	.align 16
.L103:
	cmpl %edi,4(%eax)
	ja .L104
	pushl $3970
	call _m3_fault
	.align 16
.L104:
	movl (%eax),%eax
	movl (%eax,%edi,4),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Expr+156,%eax
	call *%eax
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl MI_ErrType+44,%edx
	addl $12,%esp
	cmpl %edx,%eax
	jne .L105
	movl %edx,8(%esi)
	jmp .L106
	.align 16
.L105:
	cmpb $0,-16(%ebp)
	jne .L106
	pushl %ebx
	movl MI_KeywordExpr+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L106
	pushl %esi
	call CallExpr__ProcName
	pushl %eax
	pushl $MM_CallExpr+460
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
	addl $16,%esp
.L106:
	incl %edi
.L101:
	cmpl %edi,-20(%ebp)
	jge .L102
	movl MI_ErrType+44,%eax
	cmpl %eax,8(%esi)
	je .L109
	cmpl $0,32(%esi)
	je .L109
	pushl %esi
	call CallExpr__FixArgs
	movl 32(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L110
	pushl $4180
	call _m3_fault
	.align 16
.L110:
	movl 24(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
	addl $8,%esp
.L109:
	movl 36(%esi),%eax
	pushl %eax
	movl MI_ProcType+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_ESet+104,%eax
	call *%eax
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 CallExpr__Check,.Lfe17-CallExpr__Check
	.align 16
	.type	 CallExpr__FixArgs,@function
CallExpr__FixArgs:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%esi),%edx
	testl %edx,%edx
	jne .L112
	pushl $4340
	call _m3_fault
	.align 16
.L112:
	movl 32(%esi),%eax
	testl %eax,%eax
	jne .L113
	pushl $4340
	call _m3_fault
	.align 16
.L113:
	movl 4(%edx),%edx
	cmpl %edx,(%eax)
	jle .L126
	pushl %esi
	call CallExpr__ProcName
	movl %eax,%edx
	pushl %edx
	pushl $MM_CallExpr+528
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
	leal -12(%ebp),%edx
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 32(%esi),%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L115
	pushl $4372
	call _m3_fault
	.align 16
.L115:
	movl (%eax),%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_CallExpr+556,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl 20(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L116
	pushl $4388
	call _m3_fault
	.align 16
.L116:
	xorl %ecx,%ecx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-16(%ebp)
	jmp .L117
	.align 16
.L118:
	testl %ebx,%ebx
	jne .L119
	pushl $4388
	call _m3_fault
	.align 16
.L119:
	cmpl %ecx,4(%ebx)
	ja .L120
	pushl $4386
	call _m3_fault
	.align 16
.L120:
	movl (%ebx),%eax
	leal (%eax,%ecx,4),%edx
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L121
	pushl $4388
	call _m3_fault
	.align 16
.L121:
	cmpl %ecx,4(%eax)
	ja .L122
	pushl $4386
	call _m3_fault
	.align 16
.L122:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%eax
	movl %eax,(%edx)
	incl %ecx
.L117:
	cmpl %ecx,-16(%ebp)
	jge .L118
	jmp .L137
	.align 16
.L126:
	cmpl %edx,4(%eax)
	jge .L111
	pushl %esi
	call CallExpr__ProcName
	movl %eax,%edx
	pushl %edx
	pushl $MM_CallExpr+568
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
	leal -12(%ebp),%edx
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 32(%esi),%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L128
	pushl $4452
	call _m3_fault
	.align 16
.L128:
	movl 4(%eax),%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_CallExpr+556,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl 32(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L129
	pushl $4468
	call _m3_fault
	.align 16
.L129:
	xorl %ecx,%ecx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-16(%ebp)
	jmp .L130
	.align 16
.L131:
	testl %ebx,%ebx
	jne .L132
	pushl $4468
	call _m3_fault
	.align 16
.L132:
	cmpl %ecx,4(%ebx)
	ja .L133
	pushl $4466
	call _m3_fault
	.align 16
.L133:
	movl (%ebx),%eax
	leal (%eax,%ecx,4),%edx
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L134
	pushl $4468
	call _m3_fault
	.align 16
.L134:
	cmpl %ecx,4(%eax)
	ja .L135
	pushl $4466
	call _m3_fault
	.align 16
.L135:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%eax
	movl %eax,(%edx)
	incl %ecx
.L130:
	cmpl %ecx,-16(%ebp)
	jge .L131
.L137:
	movl %ebx,20(%esi)
.L111:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 CallExpr__FixArgs,.Lfe18-CallExpr__FixArgs
	.align 16
	.type	 CallExpr__ProcName,@function
CallExpr__ProcName:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 16(%eax),%edx
	testl %edx,%edx
	je .L139
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_UserProc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L139
	pushl $1
	pushl $1
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+112,%eax
	call *%eax
	pushl %eax
	pushl $MM_CallExpr+600
	movl MI_RTHooks+76,%eax
	call *%eax
	jmp .L140
	.align 16
.L139:
	movl $MM_CallExpr+616,%eax
.L140:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 CallExpr__ProcName,.Lfe19-CallExpr__ProcName
	.align 16
	.type	 CallExpr__NeedsAddress,@function
CallExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	je .L141
	movl 20(%eax),%eax
	pushl %edx
	call *%eax
.L141:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 CallExpr__NeedsAddress,.Lfe20-CallExpr__NeedsAddress
	.align 16
	.type	 CallExpr__Prep,@function
CallExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	jne .L145
	pushl $4852
	call _m3_fault
	.align 16
.L145:
	movl 28(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 CallExpr__Prep,.Lfe21-CallExpr__Prep
	.align 16
	.type	 CallExpr__Compile,@function
CallExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	jne .L147
	pushl $4932
	call _m3_fault
	.align 16
.L147:
	movl 32(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 CallExpr__Compile,.Lfe22-CallExpr__Compile
	.align 16
	.type	 CallExpr__PrepLV,@function
CallExpr__PrepLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	jne .L149
	pushl $5012
	call _m3_fault
	.align 16
.L149:
	movl 36(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 CallExpr__PrepLV,.Lfe23-CallExpr__PrepLV
	.align 16
	.type	 CallExpr__CompileLV,@function
CallExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	jne .L151
	pushl $5092
	call _m3_fault
	.align 16
.L151:
	movl 40(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 CallExpr__CompileLV,.Lfe24-CallExpr__CompileLV
	.align 16
	.type	 CallExpr__PrepBR,@function
CallExpr__PrepBR:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	movl 32(%ecx),%eax
	testl %eax,%eax
	jne .L153
	pushl $5172
	call _m3_fault
	.align 16
.L153:
	movl 44(%eax),%edx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%edx
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 CallExpr__PrepBR,.Lfe25-CallExpr__PrepBR
	.align 16
	.type	 CallExpr__CompileBR,@function
CallExpr__CompileBR:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	movl 32(%ecx),%eax
	testl %eax,%eax
	jne .L155
	pushl $5252
	call _m3_fault
	.align 16
.L155:
	movl 48(%eax),%edx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%edx
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 CallExpr__CompileBR,.Lfe26-CallExpr__CompileBR
	.align 16
	.type	 CallExpr__NoteWrites,@function
CallExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	je .L156
	movl 64(%eax),%eax
	pushl %edx
	call *%eax
.L156:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 CallExpr__NoteWrites,.Lfe27-CallExpr__NoteWrites
	.align 16
	.type	 CallExpr__Fold,@function
CallExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call CallExpr__Resolve
	addl $4,%esp
	movl 32(%ebx),%eax
	testl %eax,%eax
	je .L162
	movl 52(%eax),%eax
	pushl %ebx
	call *%eax
.L162:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 CallExpr__Fold,.Lfe28-CallExpr__Fold
	.align 16
	.type	 CallExpr__IsDesignator,@function
CallExpr__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call CallExpr__Resolve
	addl $4,%esp
	movl 32(%ebx),%eax
	testl %eax,%eax
	je .L166
	movl 60(%eax),%eax
	pushl %ebx
	call *%eax
.L166:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 CallExpr__IsDesignator,.Lfe29-CallExpr__IsDesignator
	.align 16
	.type	 CallExpr__IsWritable,@function
CallExpr__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call CallExpr__Resolve
	addl $4,%esp
	movl 32(%ebx),%eax
	testl %eax,%eax
	je .L170
	movl 56(%eax),%eax
	pushl %ebx
	call *%eax
.L170:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 CallExpr__IsWritable,.Lfe30-CallExpr__IsWritable
	.align 16
	.type	 M_CallExpr_t625c4239_LINK,@function
M_CallExpr_t625c4239_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_CallExpr+1432,%eax
	movl MM_CallExpr+256,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_CallExpr+260,%edx
	movl %edx,8(%eax)
	movl MM_CallExpr+272,%edx
	movl %edx,36(%eax)
	movl MM_CallExpr+276,%edx
	movl %edx,52(%eax)
	movl MM_CallExpr+280,%edx
	movl %edx,56(%eax)
	movl MM_CallExpr+284,%edx
	movl %edx,60(%eax)
	movl MM_CallExpr+288,%edx
	movl %edx,64(%eax)
	movl MM_CallExpr+292,%edx
	movl %edx,68(%eax)
	movl MM_CallExpr+296,%edx
	movl %edx,72(%eax)
	movl MM_CallExpr+304,%edx
	movl %edx,16(%eax)
	movl MI_ExprRep+496,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MM_CallExpr+312,%edx
	movl %edx,24(%eax)
	movl MM_CallExpr+308,%edx
	movl %edx,28(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MM_CallExpr+300,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe31:
	.size	 M_CallExpr_t625c4239_LINK,.Lfe31-M_CallExpr_t625c4239_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_CallExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe32:
	.size	 _m3_fault,.Lfe32-_m3_fault
.globl MM_CallExpr
.data
	.align 4
	.type	 MM_CallExpr,@object
	.size	 MM_CallExpr,1556
MM_CallExpr:
	.long MM_CallExpr+1268
	.long MM_CallExpr+44
	.long MM_CallExpr+392
	.long MM_CallExpr+372
	.zero	4
	.long MM_CallExpr+904
	.zero	28
	.long -1058351092
.byte 19
.byte 62
.byte 101
.byte 222
.byte 31
.byte 230
.byte 143
.byte 30
	.long 1
	.zero	4
	.long 68
	.long 4
	.zero	20
	.long MM_CallExpr+1462
	.long MM_CallExpr+1483
	.long MM_CallExpr+1487
	.zero	24
	.long MM_CallExpr+1513
	.long MM_CallExpr+1533
	.long MM_CallExpr+148
	.zero	8
	.long 1650213433
.byte 73
.byte 13
.byte 102
.byte 99
.byte 112
.byte 79
.byte 58
.byte 1
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_CallExpr+1413
	.long MM_CallExpr+1416
	.long MM_CallExpr+1419
	.zero	4
	.long M_CallExpr_t625c4239_LINK
	.long -1965763851
	.zero	12
	.long MM_CallExpr+1440
	.long MM_CallExpr+1451
	.zero	4
	.long CallExpr__Resolve
	.long CallExpr__TypeOf
	.long CallExpr__Check
	.long CallExpr__FixArgs
	.long CallExpr__ProcName
	.long CallExpr__NeedsAddress
	.long CallExpr__Prep
	.long CallExpr__Compile
	.long CallExpr__PrepLV
	.long CallExpr__CompileLV
	.long CallExpr__PrepBR
	.long CallExpr__CompileBR
	.long CallExpr__NoteWrites
	.long CallExpr__Fold
	.long CallExpr__IsDesignator
	.long CallExpr__IsWritable
	.long CallExpr__New
	.long CallExpr__NewMethodList
	.long CallExpr__Is
	.long CallExpr__IsUserProc
	.long CallExpr__IsNever
	.long CallExpr__IsAlways
	.long CallExpr__NoValue
	.long CallExpr__NotAddressable
	.long CallExpr__PrepArgs
	.long CallExpr__NoLValue
	.long CallExpr__NotBoolean
	.long CallExpr__PrepNoBranch
	.long CallExpr__NoBranch
	.long CallExpr__NotWritable
	.long -1965067843
	.long 1650213433
	.long -1721925048
	.long -1058351092
	.zero	4
	.long MM_CallExpr+400
	.long -1965067843
	.long MM_CallExpr+556
	.long -1721925048
	.long 2
	.long MM_CallExpr+420
	.long 35
	.ascii	"attempting to call a non-procedure"
	.zero	2
	.long 2
	.long MM_CallExpr+468
	.long 53
	.ascii	"keyword parameters not allowed on builtin operations"
	.zero	4
	.long 2
	.long MM_CallExpr+536
	.long 18
	.ascii	"too few arguments"
	.zero	3
	.long MM_CallExpr+1432
	.long 224582288
	.long 2
	.long MM_CallExpr+576
	.long 19
	.ascii	"too many arguments"
	.zero	2
	.long 2
	.long MM_CallExpr+608
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_CallExpr+624
	.long 1
	.zero	4
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"CompileBR"
	.zero	1
	.ascii	"PrepBR"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"PrepLV"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"ProcName"
	.zero	1
	.ascii	"FixArgs"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Resolve"
	.zero	1
	.ascii	"NotWritable"
	.zero	1
	.ascii	"NoBranch"
	.zero	1
	.ascii	"PrepNoBranch"
	.zero	1
	.ascii	"NotBoolean"
	.zero	1
	.ascii	"NoLValue"
	.zero	1
	.ascii	"PrepArgs"
	.zero	1
	.ascii	"NotAddressable"
	.zero	1
	.ascii	"NoValue"
	.zero	1
	.ascii	"IsAlways"
	.zero	1
	.ascii	"IsNever"
	.zero	1
	.ascii	"NewMethodList"
	.zero	1
	.ascii	"IsUserProc"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"New"
	.zero	4
	.long CallExpr__IsWritable
	.long MM_CallExpr+628
	.zero	4
	.long CallExpr__IsDesignator
	.long MM_CallExpr+639
	.zero	4
	.long CallExpr__Fold
	.long MM_CallExpr+652
	.zero	4
	.long CallExpr__NoteWrites
	.long MM_CallExpr+657
	.zero	4
	.long CallExpr__CompileBR
	.long MM_CallExpr+668
	.zero	4
	.long CallExpr__PrepBR
	.long MM_CallExpr+678
	.zero	4
	.long CallExpr__CompileLV
	.long MM_CallExpr+685
	.zero	4
	.long CallExpr__PrepLV
	.long MM_CallExpr+695
	.zero	4
	.long CallExpr__Compile
	.long MM_CallExpr+702
	.zero	4
	.long CallExpr__Prep
	.long MM_CallExpr+710
	.zero	4
	.long CallExpr__NeedsAddress
	.long MM_CallExpr+715
	.zero	4
	.long CallExpr__ProcName
	.long MM_CallExpr+728
	.zero	4
	.long CallExpr__FixArgs
	.long MM_CallExpr+737
	.zero	4
	.long CallExpr__Check
	.long MM_CallExpr+745
	.zero	4
	.long CallExpr__TypeOf
	.long MM_CallExpr+751
	.zero	4
	.long CallExpr__Resolve
	.long MM_CallExpr+758
	.zero	4
	.long CallExpr__NotWritable
	.long MM_CallExpr+766
	.long MI_CallExpr+200
	.long CallExpr__NoBranch
	.long MM_CallExpr+778
	.long MI_CallExpr+196
	.long CallExpr__PrepNoBranch
	.long MM_CallExpr+787
	.long MI_CallExpr+192
	.long CallExpr__NotBoolean
	.long MM_CallExpr+800
	.long MI_CallExpr+188
	.long CallExpr__NoLValue
	.long MM_CallExpr+811
	.long MI_CallExpr+184
	.long CallExpr__PrepArgs
	.long MM_CallExpr+820
	.long MI_CallExpr+180
	.long CallExpr__NotAddressable
	.long MM_CallExpr+829
	.long MI_CallExpr+176
	.long CallExpr__NoValue
	.long MM_CallExpr+844
	.long MI_CallExpr+172
	.long CallExpr__IsAlways
	.long MM_CallExpr+852
	.long MI_CallExpr+168
	.long CallExpr__IsNever
	.long MM_CallExpr+861
	.long MI_CallExpr+164
	.long CallExpr__NewMethodList
	.long MM_CallExpr+869
	.long MI_CallExpr+152
	.long CallExpr__IsUserProc
	.long MM_CallExpr+883
	.long MI_CallExpr+160
	.long CallExpr__Is
	.long MM_CallExpr+894
	.long MI_CallExpr+156
	.long CallExpr__New
	.long MM_CallExpr+897
	.long MI_CallExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/CallExpr.m3"
	.zero	1
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 72
.byte 130
.byte 93
.byte 153
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
	.zero	4
	.long 1650213433
	.ascii	"CallExpr.P"
	.zero	1
	.ascii	"CallExpr.T"
	.zero	1
.byte 14
.byte 14
.byte 16
.byte 16
.byte 16
.byte 34
.byte 4
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 6
.byte 0
.byte 42
.byte 12
.byte 4
.byte 0
.byte 20
.byte 15
.byte 19
.byte 7
.byte 23
.byte 2
.byte 25
.byte 25
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 13
.byte 13
.byte 13
.byte 30
.byte 30
.byte 30
.byte 30
.byte 13
.byte 36
.byte 13
.byte 13
.byte 39
.byte 30
	.ascii	"CallExpr.MethodList"
	.zero	1
	.ascii	"CallExpr.MethodList"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
