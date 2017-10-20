	.file	"NamedExpr.mc"
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
	.type	 NamedExpr__New,@function
NamedExpr__New:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl MI_Scope+68,%eax
	movl %edx,RTThread__handlerStack
	call *%eax
	movl %eax,-12(%ebp)
	movl %edi,%esi
	andl $31,%esi
	cmpl $31,%esi
	jbe .L3
	pushl $833
	call _m3_fault
	.align 16
.L3:
	movl MM_NamedExpr+148(,%esi,4),%ebx
	testl %ebx,%ebx
	je .L4
	cmpl %edi,24(%ebx)
	jne .L4
	cmpl %eax,16(%ebx)
	jne .L4
	movl 12(%ebp),%edx
	cmpl %edx,20(%ebx)
	je .L7
.L4:
	movl MM_NamedExpr+348,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_ExprRep+460,%eax
	call *%eax
	movl -12(%ebp),%edx
	movl %edx,16(%ebx)
	movl %edi,24(%ebx)
	movl 12(%ebp),%edx
	movl %edx,20(%ebx)
	movb $0,28(%ebx)
	movb $0,29(%ebx)
	movb $0,30(%ebx)
	movb $0,31(%ebx)
	addl $8,%esp
	cmpl $31,%esi
	jbe .L5
	pushl $1105
	call _m3_fault
	.align 16
.L5:
	movl %ebx,MM_NamedExpr+148(,%esi,4)
.L7:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L6:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 NamedExpr__New,.Lfe1-NamedExpr__New
	.align 16
	.type	 NamedExpr__FromValue,@function
NamedExpr__FromValue:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_NamedExpr+348,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl $0,16(%esi)
	pushl %ebx
	movl MI_Value+108,%eax
	call *%eax
	movl %eax,24(%esi)
	movl %ebx,20(%esi)
	movb $0,28(%esi)
	movb $0,29(%esi)
	movb $0,30(%esi)
	movb $0,31(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NamedExpr__FromValue,.Lfe2-NamedExpr__FromValue
	.align 16
	.type	 NamedExpr__Split,@function
NamedExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	testl %ebx,%ebx
	je .L13
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_NamedExpr+352
	jg .L13
	movl MM_NamedExpr+348,%eax
	cmpl %edx,4(%eax)
	jl .L13
	cmpl $0,20(%ebx)
	jne .L15
	pushl %ebx
	call NamedExpr__Resolve
.L15:
	movl 24(%ebx),%eax
	movl %eax,(%esi)
	movl 20(%ebx),%eax
	movl %eax,(%edi)
	movl $1,%eax
	jmp .L17
	.align 16
.L13:
	xorl %eax,%eax
.L17:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NamedExpr__Split,.Lfe3-NamedExpr__Split
	.align 16
	.type	 NamedExpr__SplitName,@function
NamedExpr__SplitName:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	testl %edx,%edx
	je .L22
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_NamedExpr+352
	jg .L22
	movl MM_NamedExpr+348,%eax
	cmpl %ecx,4(%eax)
	jl .L22
	movl 24(%edx),%eax
	movl %eax,(%ebx)
	movl $1,%eax
	jmp .L25
	.align 16
.L22:
	xorl %eax,%eax
.L25:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 NamedExpr__SplitName,.Lfe4-NamedExpr__SplitName
	.align 16
	.type	 NamedExpr__Resolve,@function
NamedExpr__Resolve:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L26
	pushl %eax
	movl 24(%esi),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,20(%esi)
	addl $12,%esp
	testl %eax,%eax
	jne .L26
	movl MI_Scanner+88,%ebx
	movl 4(%esi),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_NamedExpr+360
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	movl 24(%esi),%eax
	pushl %eax
	movl MI_ErrType+44,%eax
	pushl %eax
	movl MI_VarExpr+44,%eax
	call *%eax
	pushl %eax
	movl MI_VarExpr+48,%eax
	call *%eax
	movl %eax,20(%esi)
	movl %ebx,MI_Scanner+88
.L26:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 NamedExpr__Resolve,.Lfe5-NamedExpr__Resolve
	.align 16
	.type	 NamedExpr__TypeOf,@function
NamedExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L30
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L30:
	movb 31(%ebx),%dl
	movb %dl,-4(%ebp)
	testb %dl,%dl
	jne .L31
	movb $1,31(%ebx)
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movb -4(%ebp),%dl
	movb %dl,31(%ebx)
	jmp .L32
	.align 16
.L31:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	movl MI_ErrType+44,%eax
.L32:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 NamedExpr__TypeOf,.Lfe6-NamedExpr__TypeOf
	.align 16
	.type	 NamedExpr__Check,@function
NamedExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L34
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L34:
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+44,%eax
	call *%eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,20(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 NamedExpr__Check,.Lfe7-NamedExpr__Check
	.align 16
	.type	 NamedExpr__EqCheck,@function
NamedExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	cmpl $0,20(%esi)
	jne .L36
	pushl %esi
	call NamedExpr__Resolve
	addl $4,%esp
.L36:
	testl %ebx,%ebx
	je .L40
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_NamedExpr+352
	jg .L40
	movl MM_NamedExpr+348,%eax
	cmpl %edx,4(%eax)
	jl .L40
	cmpl $0,20(%ebx)
	jne .L42
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L42:
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	cmpl %eax,%esi
	sete %al
	andl $255,%eax
	jmp .L44
	.align 16
.L40:
	xorl %eax,%eax
.L44:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 NamedExpr__EqCheck,.Lfe8-NamedExpr__EqCheck
	.align 16
	.type	 NamedExpr__NeedsAddress,@function
NamedExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L46
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L46:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L47
	cmpl $1,%eax
	jle .L48
	jmp .L49
	.align 16
.L47:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Expr+184,%eax
	call *%eax
	jmp .L45
	.align 16
.L48:
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L51
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_NamedExpr+384
	jg .L52
	movl MM_NamedExpr+380,%eax
	cmpl %ecx,4(%eax)
	jge .L51
.L52:
	pushl $2629
	call _m3_fault
	.align 16
.L51:
	pushl %edx
	movl MI_Variable+72,%eax
	call *%eax
	jmp .L45
	.align 16
.L49:
	pushl $2640
	call _m3_fault
	.align 16
.L45:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 NamedExpr__NeedsAddress,.Lfe9-NamedExpr__NeedsAddress
	.align 16
	.type	 NamedExpr__Prep,@function
NamedExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl $0,20(%eax)
	jne .L53
	pushl %eax
	call NamedExpr__Resolve
.L53:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 NamedExpr__Prep,.Lfe10-NamedExpr__Prep
	.align 16
	.type	 NamedExpr__Compile,@function
NamedExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Value+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 NamedExpr__Compile,.Lfe11-NamedExpr__Compile
	.align 16
	.type	 NamedExpr__CompileLV,@function
NamedExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L57
	cmpl $1,%eax
	jle .L58
	jmp .L59
	.align 16
.L57:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+56,%eax
	call *%eax
	jmp .L56
	.align 16
.L58:
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L61
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_NamedExpr+384
	jg .L62
	movl MM_NamedExpr+380,%eax
	cmpl %ecx,4(%eax)
	jge .L61
.L62:
	pushl $2933
	call _m3_fault
	.align 16
.L61:
	pushl %edx
	movl MI_Variable+88,%eax
	call *%eax
	jmp .L56
	.align 16
.L59:
	pushl $2944
	call _m3_fault
	.align 16
.L56:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 NamedExpr__CompileLV,.Lfe12-NamedExpr__CompileLV
	.align 16
	.type	 NamedExpr__Bounder,@function
NamedExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L64
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L64:
	cmpb $0,30(%ebx)
	je .L65
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl MI_TInt+44,%eax
	movl %eax,(%edx)
	movl MI_TInt+48,%eax
	movl %eax,4(%edx)
	movl 16(%ebp),%edx
	movl MI_TInt+52,%eax
	movl %eax,(%edx)
	movl MI_TInt+56,%eax
	movl %eax,4(%edx)
	jmp .L63
	.align 16
.L65:
	movb $1,30(%ebx)
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L66
	cmpl $1,%eax
	jle .L67
	jmp .L68
	.align 16
.L66:
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
	jmp .L69
	.align 16
.L67:
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L70
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_NamedExpr+384
	jg .L71
	movl MM_NamedExpr+380,%eax
	cmpl %ecx,4(%eax)
	jge .L70
.L71:
	pushl $3205
	call _m3_fault
	.align 16
.L70:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Variable+80,%eax
	call *%eax
	jmp .L69
	.align 16
.L68:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
.L69:
	movb $0,30(%ebx)
.L63:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 NamedExpr__Bounder,.Lfe13-NamedExpr__Bounder
	.align 16
	.type	 NamedExpr__Fold,@function
NamedExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	cmpl $0,20(%esi)
	jne .L73
	pushl %esi
	call NamedExpr__Resolve
	addl $4,%esp
.L73:
	cmpb $0,28(%esi)
	je .L74
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	jmp .L81
	.align 16
.L74:
	movb $1,28(%esi)
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L75
	cmpl $1,%eax
	jle .L76
	cmpl $2,%eax
	jle .L79
	cmpl $3,%eax
	jle .L76
	cmpl $4,%eax
	jle .L78
	jmp .L76
	.align 16
.L75:
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	pushl %eax
	movl MI_Expr+160,%eax
	jmp .L82
	.align 16
.L78:
	movl 20(%esi),%eax
	pushl %eax
	movl MI_ProcExpr+44,%eax
.L82:
	call *%eax
	movl %eax,%ebx
	jmp .L79
	.align 16
.L76:
	xorl %ebx,%ebx
.L79:
	movb $0,28(%esi)
.L81:
	movl %ebx,%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 NamedExpr__Fold,.Lfe14-NamedExpr__Fold
	.align 16
	.type	 NamedExpr__IsDesignator,@function
NamedExpr__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L84
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L84:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	cmpl $1,%eax
	sete %al
	andl $255,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 NamedExpr__IsDesignator,.Lfe15-NamedExpr__IsDesignator
	.align 16
	.type	 NamedExpr__IsWritable,@function
NamedExpr__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L86
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L86:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+92,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 NamedExpr__IsWritable,.Lfe16-NamedExpr__IsWritable
	.align 16
	.type	 NamedExpr__IsZeroes,@function
NamedExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L88
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L88:
	movb 29(%ebx),%dl
	movb %dl,-4(%ebp)
	testb %dl,%dl
	je .L89
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+116,%eax
	call *%eax
	movl $1,%eax
	jmp .L91
	.align 16
.L89:
	movb $1,29(%ebx)
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	xorl %esi,%esi
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L90
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	movl %eax,%esi
	andl $255,%esi
.L90:
	movl %esi,%eax
	movb -4(%ebp),%dl
	movb %dl,29(%ebx)
	andl $255,%eax
.L91:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 NamedExpr__IsZeroes,.Lfe17-NamedExpr__IsZeroes
	.align 16
	.type	 NamedExpr__NoteWrites,@function
NamedExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,20(%ebx)
	jne .L93
	pushl %ebx
	call NamedExpr__Resolve
	addl $4,%esp
.L93:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,%eax
	jne .L92
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L95
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_NamedExpr+384
	jg .L96
	movl MM_NamedExpr+380,%eax
	cmpl %ecx,4(%eax)
	jge .L95
.L96:
	pushl $4005
	call _m3_fault
	.align 16
.L95:
	pushl %edx
	movl MI_Variable+124,%eax
	call *%eax
.L92:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 NamedExpr__NoteWrites,.Lfe18-NamedExpr__NoteWrites
	.align 16
	.type	 M_NamedExpr_t0fce5091_LINK,@function
M_NamedExpr_t0fce5091_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_NamedExpr+348,%eax
	movl MM_NamedExpr+280,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_NamedExpr+284,%edx
	movl %edx,8(%eax)
	movl MM_NamedExpr+292,%edx
	movl %edx,36(%eax)
	movl MM_NamedExpr+296,%ecx
	movl %ecx,52(%eax)
	movl MM_NamedExpr+300,%edx
	movl %edx,56(%eax)
	movl %ecx,60(%eax)
	movl MM_NamedExpr+304,%edx
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MM_NamedExpr+312,%edx
	movl %edx,16(%eax)
	movl MM_NamedExpr+288,%edx
	movl %edx,12(%eax)
	movl MM_NamedExpr+308,%edx
	movl %edx,20(%eax)
	movl MM_NamedExpr+320,%edx
	movl %edx,24(%eax)
	movl MM_NamedExpr+316,%edx
	movl %edx,28(%eax)
	movl MM_NamedExpr+324,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MM_NamedExpr+328,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe19:
	.size	 M_NamedExpr_t0fce5091_LINK,.Lfe19-M_NamedExpr_t0fce5091_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_NamedExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe20:
	.size	 _m3_fault,.Lfe20-_m3_fault
.globl MM_NamedExpr
.data
	.align 4
	.type	 MM_NamedExpr,@object
	.size	 MM_NamedExpr,968
MM_NamedExpr:
	.long MM_NamedExpr+767
	.long MM_NamedExpr+44
	.long MM_NamedExpr+348
	.zero	8
	.long MM_NamedExpr+540
	.zero	4
	.long MM_NamedExpr+760
	.long MM_NamedExpr+760
	.zero	16
	.long 265179281
.byte 166
.byte 151
.byte 58
.byte 1
.byte 55
.byte 199
.byte 244
.byte 14
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_NamedExpr+913
	.long MM_NamedExpr+921
	.long MM_NamedExpr+924
	.zero	4
	.long M_NamedExpr_t0fce5091_LINK
	.long -350897909
	.zero	12
	.long MM_NamedExpr+944
	.long MM_NamedExpr+955
	.zero	132
	.long NamedExpr__Resolve
	.long NamedExpr__TypeOf
	.long NamedExpr__Check
	.long NamedExpr__EqCheck
	.long NamedExpr__NeedsAddress
	.long NamedExpr__Prep
	.long NamedExpr__Compile
	.long NamedExpr__CompileLV
	.long NamedExpr__Bounder
	.long NamedExpr__Fold
	.long NamedExpr__IsDesignator
	.long NamedExpr__IsWritable
	.long NamedExpr__IsZeroes
	.long NamedExpr__NoteWrites
	.long NamedExpr__New
	.long NamedExpr__FromValue
	.long NamedExpr__Split
	.long NamedExpr__SplitName
	.long MM_NamedExpr+380
	.long 265179281
	.long 2
	.long MM_NamedExpr+368
	.long 10
	.ascii	"undefined"
	.zero	7
	.long 149856025
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Bounder"
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
	.ascii	"SplitName"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"FromValue"
	.zero	1
	.ascii	"New"
	.zero	1
	.long NamedExpr__NoteWrites
	.long MM_NamedExpr+388
	.zero	4
	.long NamedExpr__IsZeroes
	.long MM_NamedExpr+399
	.zero	4
	.long NamedExpr__IsWritable
	.long MM_NamedExpr+408
	.zero	4
	.long NamedExpr__IsDesignator
	.long MM_NamedExpr+419
	.zero	4
	.long NamedExpr__Fold
	.long MM_NamedExpr+432
	.zero	4
	.long NamedExpr__Bounder
	.long MM_NamedExpr+437
	.zero	4
	.long NamedExpr__CompileLV
	.long MM_NamedExpr+445
	.zero	4
	.long NamedExpr__Compile
	.long MM_NamedExpr+455
	.zero	4
	.long NamedExpr__Prep
	.long MM_NamedExpr+463
	.zero	4
	.long NamedExpr__NeedsAddress
	.long MM_NamedExpr+468
	.zero	4
	.long NamedExpr__EqCheck
	.long MM_NamedExpr+481
	.zero	4
	.long NamedExpr__Check
	.long MM_NamedExpr+489
	.zero	4
	.long NamedExpr__TypeOf
	.long MM_NamedExpr+495
	.zero	4
	.long NamedExpr__Resolve
	.long MM_NamedExpr+502
	.zero	4
	.long NamedExpr__SplitName
	.long MM_NamedExpr+510
	.long MI_NamedExpr+56
	.long NamedExpr__Split
	.long MM_NamedExpr+520
	.long MI_NamedExpr+52
	.long NamedExpr__FromValue
	.long MM_NamedExpr+526
	.long MI_NamedExpr+48
	.long NamedExpr__New
	.long MM_NamedExpr+536
	.long MI_NamedExpr+44
	.zero	4
.byte 42
.byte 148
.byte 1
.byte 4
.byte 26
.byte 32
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/NamedExpr.m3"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 16
.byte 16
.byte 16
.byte 16
.byte 0
.byte 4
.byte 4
.byte 0
.byte 8
.byte 10
.byte 7
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 19
.byte 254
.byte 126
.byte 2
.byte 26
.byte 26
.byte 26
	.ascii	"Named Expr"
	.zero	1
	.ascii	"NamedExpr.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
