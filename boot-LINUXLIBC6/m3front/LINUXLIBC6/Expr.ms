	.file	"Expr.mc"
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
	.type	 Expr__Parse,@function
Expr__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	movl MI_ExprParse+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Expr__Parse,.Lfe1-Expr__Parse
	.align 16
	.type	 ExprRep__Init,@function
ExprRep__Init:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Scanner+88,%edx
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl $0,8(%eax)
	movb $0,12(%eax)
	movb $0,13(%eax)
	movb $0,14(%eax)
	popl %ebp
	ret
.Lfe2:
	.size	 ExprRep__Init,.Lfe2-ExprRep__Init
	.align 16
	.type	 Expr__TypeOf,@function
Expr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L4
	movl MI_ErrType+44,%eax
	jmp .L6
	.align 16
.L4:
	cmpl $0,8(%ebx)
	jne .L5
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %ebx
	call *%eax
	movl %eax,8(%ebx)
.L5:
	movl 8(%ebx),%eax
.L6:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Expr__TypeOf,.Lfe3-Expr__TypeOf
	.align 16
	.type	 Expr__TypeCheck,@function
Expr__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	je .L7
	cmpb $0,12(%esi)
	jne .L7
	movl MI_Scanner+88,%ebx
	movl 4(%esi),%eax
	movl %eax,MI_Scanner+88
	movl (%esi),%eax
	movl 8(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
	movl %ebx,MI_Scanner+88
	movb $1,12(%esi)
.L7:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Expr__TypeCheck,.Lfe4-Expr__TypeCheck
	.align 16
	.type	 Expr__ConstValue,@function
Expr__ConstValue:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	testl %esi,%esi
	je .L12
	movl (%esi),%eax
	movl 16(%eax),%eax
	pushl %esi
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	cmpl %esi,%ebx
	je .L12
	leal -24(%ebp),%edi
	movl $MI_M3+252,%esi
	leal -24(%ebp),%eax
	cld
	movl $6,%ecx
	rep
	movsl
	pushl %eax
	pushl %ebx
	call Expr__TypeCheck
.L12:
	movl %ebx,%eax
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Expr__ConstValue,.Lfe5-Expr__ConstValue
	.align 16
	.type	 Expr__GetBounds,@function
Expr__GetBounds:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L15
	movl 12(%ebp),%edx
	movl MI_TInt+44,%eax
	movl %eax,(%edx)
	movl MI_TInt+48,%eax
	movl %eax,4(%edx)
	movl 16(%ebp),%edx
	movl MI_TInt+60,%eax
	movl %eax,(%edx)
	movl MI_TInt+64,%eax
	movl %eax,4(%edx)
	jmp .L14
	.align 16
.L15:
	cmpb $0,12(%ecx)
	jne .L16
	pushl $1120
	call _m3_fault
	.align 16
.L16:
	movl (%ecx),%eax
	movl 20(%eax),%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
.L14:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Expr__GetBounds,.Lfe6-Expr__GetBounds
	.align 16
	.type	 Expr__IsDesignator,@function
Expr__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L18
	movl $1,%eax
	jmp .L20
	.align 16
.L18:
	cmpb $0,12(%edx)
	jne .L19
	pushl $1232
	call _m3_fault
	.align 16
.L19:
	movl (%edx),%eax
	movl 28(%eax),%eax
	pushl %edx
	call *%eax
.L20:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Expr__IsDesignator,.Lfe7-Expr__IsDesignator
	.align 16
	.type	 Expr__IsWritable,@function
Expr__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L22
	movl $1,%eax
	jmp .L24
	.align 16
.L22:
	cmpb $0,12(%edx)
	jne .L23
	pushl $1344
	call _m3_fault
	.align 16
.L23:
	movl (%edx),%eax
	movl 24(%eax),%eax
	pushl %edx
	call *%eax
.L24:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Expr__IsWritable,.Lfe8-Expr__IsWritable
	.align 16
	.type	 Expr__IsZeroes,@function
Expr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L26
	movl $1,%eax
	jmp .L28
	.align 16
.L26:
	cmpb $0,12(%edx)
	jne .L27
	pushl $1456
	call _m3_fault
	.align 16
.L27:
	movl (%edx),%eax
	movl 32(%eax),%eax
	pushl %edx
	call *%eax
.L28:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Expr__IsZeroes,.Lfe9-Expr__IsZeroes
	.align 16
	.type	 Expr__GetSign,@function
Expr__GetSign:
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
	pushl %eax
	call Expr__GetBounds
	pushl %ebx
	movl $MI_TInt+44,%ebx
	pushl %ebx
	movl MI_TInt+108,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L30
	xorl %eax,%eax
	jmp .L32
	.align 16
.L30:
	pushl %ebx
	pushl %esi
	movl MI_TInt+108,%eax
	call *%eax
	testl %eax,%eax
	jne .L31
	movl $2,%eax
	jmp .L32
	.align 16
.L31:
	movl $1,%eax
.L32:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Expr__GetSign,.Lfe10-Expr__GetSign
	.align 16
	.type	 Expr__NeedsAddress,@function
Expr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L33
	cmpb $0,12(%edx)
	jne .L35
	pushl $1760
	call _m3_fault
	.align 16
.L35:
	movl (%edx),%eax
	movl 36(%eax),%eax
	pushl %edx
	call *%eax
.L33:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Expr__NeedsAddress,.Lfe11-Expr__NeedsAddress
	.align 16
	.type	 Expr__SupportsDirectAssignment,@function
Expr__SupportsDirectAssignment:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L37
	cmpb $0,13(%edx)
	setne %al
	andl $255,%eax
.L37:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Expr__SupportsDirectAssignment,.Lfe12-Expr__SupportsDirectAssignment
	.align 16
	.type	 Expr__MarkForDirectAssignment,@function
Expr__MarkForDirectAssignment:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,13(%eax)
	jne .L39
	pushl $1968
	call _m3_fault
	.align 16
.L39:
	movb $1,14(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Expr__MarkForDirectAssignment,.Lfe13-Expr__MarkForDirectAssignment
	.align 16
	.type	 Expr__IsMarkedForDirectAssignment,@function
Expr__IsMarkedForDirectAssignment:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L41
	cmpb $0,14(%edx)
	setne %al
	andl $255,%eax
.L41:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Expr__IsMarkedForDirectAssignment,.Lfe14-Expr__IsMarkedForDirectAssignment
	.align 16
	.type	 Expr__Prep,@function
Expr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L42
	cmpb $0,12(%edx)
	jne .L44
	pushl $2192
	call _m3_fault
	.align 16
.L44:
	movl (%edx),%eax
	movl 52(%eax),%eax
	pushl %edx
	call *%eax
.L42:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Expr__Prep,.Lfe15-Expr__Prep
	.align 16
	.type	 Expr__Compile,@function
Expr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L45
	cmpb $0,12(%edx)
	jne .L47
	pushl $2304
	call _m3_fault
	.align 16
.L47:
	movl (%edx),%eax
	movl 56(%eax),%eax
	pushl %edx
	call *%eax
.L45:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Expr__Compile,.Lfe16-Expr__Compile
	.align 16
	.type	 Expr__PrepLValue,@function
Expr__PrepLValue:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L48
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,12(%ebx)
	jne .L50
	pushl $2432
	call _m3_fault
	.align 16
.L50:
	movl (%ebx),%eax
	movl 60(%eax),%eax
	pushl %ebx
	call *%eax
.L48:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Expr__PrepLValue,.Lfe17-Expr__PrepLValue
	.align 16
	.type	 Expr__CompileLValue,@function
Expr__CompileLValue:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L51
	cmpb $0,12(%edx)
	jne .L53
	pushl $2544
	call _m3_fault
	.align 16
.L53:
	movl (%edx),%eax
	movl 64(%eax),%eax
	pushl %edx
	call *%eax
.L51:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Expr__CompileLValue,.Lfe18-Expr__CompileLValue
	.align 16
	.type	 Expr__CompileAddress,@function
Expr__CompileAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L54
	cmpb $0,12(%edx)
	jne .L56
	pushl $2656
	call _m3_fault
	.align 16
.L56:
	movl (%edx),%eax
	movl 64(%eax),%eax
	pushl %edx
	call *%eax
	movl MI_CG+704,%eax
	call *%eax
.L54:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Expr__CompileAddress,.Lfe19-Expr__CompileAddress
	.align 16
	.type	 Expr__PrepBranch,@function
Expr__PrepBranch:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	testl %ebx,%ebx
	je .L57
	cmpb $0,12(%ebx)
	jne .L59
	pushl $2784
	call _m3_fault
	.align 16
.L59:
	cmpl $-1,%edi
	je .L60
	cmpl $-1,%esi
	je .L60
	pushl $2800
	call _m3_fault
	.align 16
.L60:
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl (%ebx),%eax
	movl 68(%eax),%edx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %esi
	pushl %edi
	pushl %ebx
	call *%edx
.L57:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Expr__PrepBranch,.Lfe20-Expr__PrepBranch
	.align 16
	.type	 Expr__CompileBranch,@function
Expr__CompileBranch:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	testl %ecx,%ecx
	je .L61
	cmpb $0,12(%ecx)
	jne .L63
	pushl $2928
	call _m3_fault
	.align 16
.L63:
	cmpl $-1,%esi
	je .L64
	cmpl $-1,%ebx
	je .L64
	pushl $2944
	call _m3_fault
	.align 16
.L64:
	movl (%ecx),%eax
	movl 72(%eax),%edx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%edx
.L61:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Expr__CompileBranch,.Lfe21-Expr__CompileBranch
	.align 16
	.type	 Expr__NoteWrite,@function
Expr__NoteWrite:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L65
	movl (%edx),%eax
	movl 76(%eax),%eax
	pushl %edx
	call *%eax
.L65:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Expr__NoteWrite,.Lfe22-Expr__NoteWrite
	.align 16
	.type	 Expr__IsEqual,@function
Expr__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%ebx
	cmpl %ecx,%edx
	jne .L68
	movl $1,%eax
	jmp .L71
	.align 16
.L68:
	testl %edx,%edx
	je .L69
	testl %ecx,%ecx
	jne .L70
.L69:
	xorl %eax,%eax
	jmp .L71
	.align 16
.L70:
	movl (%edx),%eax
	movl 12(%eax),%eax
	pushl %ebx
	pushl %ecx
	pushl %edx
	call *%eax
.L71:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Expr__IsEqual,.Lfe23-Expr__IsEqual
	.align 16
	.type	 Expr__PrepLiteral,@function
Expr__PrepLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	je .L72
	cmpb $0,12(%ebx)
	jne .L74
	pushl $3264
	call _m3_fault
	.align 16
.L74:
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl (%ebx),%eax
	movl 44(%eax),%eax
	pushl %esi
	pushl %ebx
	call *%eax
.L72:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Expr__PrepLiteral,.Lfe24-Expr__PrepLiteral
	.align 16
	.type	 Expr__GenLiteral,@function
Expr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	testl %ebx,%ebx
	je .L75
	cmpb $0,12(%ebx)
	jne .L77
	pushl $3392
	call _m3_fault
	.align 16
.L77:
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl (%ebx),%eax
	movl 48(%eax),%eax
	pushl %esi
	pushl %edi
	pushl %ebx
	call *%eax
.L75:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Expr__GenLiteral,.Lfe25-Expr__GenLiteral
	.align 16
	.type	 Expr__GenFPLiteral,@function
Expr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	pushl %eax
	call Expr__ConstValue
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	testl %ebx,%ebx
	jne .L79
	pushl $MM_Expr+240
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L79:
	cmpb $0,12(%ebx)
	jne .L80
	pushl $3568
	call _m3_fault
	.align 16
.L80:
	movl (%ebx),%eax
	movl 40(%eax),%ebx
	pushl %edi
	pushl %esi
	call *%ebx
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Expr__GenFPLiteral,.Lfe26-Expr__GenFPLiteral
	.align 16
	.type	 Expr__BadOperands,@function
Expr__BadOperands:
	pushl %ebp
	movl %esp,%ebp
	movl MI_ErrType+44,%eax
	movl 8(%ebp),%edx
	cmpl %eax,12(%ebp)
	je .L82
	cmpl %eax,16(%ebp)
	je .L82
	pushl %edx
	pushl $MM_Expr+312
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
.L82:
	movl MI_ErrType+44,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Expr__BadOperands,.Lfe27-Expr__BadOperands
	.align 16
	.type	 ExprRep__NoType,@function
ExprRep__NoType:
	pushl %ebp
	movl %esp,%ebp
	pushl $3840
	call _m3_fault
	.align 16
.Lfe28:
	.size	 ExprRep__NoType,.Lfe28-ExprRep__NoType
	.align 16
	.type	 ExprRep__NoCheck,@function
ExprRep__NoCheck:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 ExprRep__NoCheck,.Lfe29-ExprRep__NoCheck
	.align 16
	.type	 ExprRep__NoValue,@function
ExprRep__NoValue:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 ExprRep__NoValue,.Lfe30-ExprRep__NoValue
	.align 16
	.type	 ExprRep__NoFPLiteral,@function
ExprRep__NoFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl $4064
	call _m3_fault
	.align 16
.Lfe31:
	.size	 ExprRep__NoFPLiteral,.Lfe31-ExprRep__NoFPLiteral
	.align 16
	.type	 ExprRep__Self,@function
ExprRep__Self:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 ExprRep__Self,.Lfe32-ExprRep__Self
	.align 16
	.type	 ExprRep__NoBounds,@function
ExprRep__NoBounds:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 ExprRep__NoBounds,.Lfe33-ExprRep__NoBounds
	.align 16
	.type	 ExprRep__IsNever,@function
ExprRep__IsNever:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 ExprRep__IsNever,.Lfe34-ExprRep__IsNever
	.align 16
	.type	 ExprRep__IsAlways,@function
ExprRep__IsAlways:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 ExprRep__IsAlways,.Lfe35-ExprRep__IsAlways
	.align 16
	.type	 ExprRep__NeverEq,@function
ExprRep__NeverEq:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 ExprRep__NeverEq,.Lfe36-ExprRep__NeverEq
	.align 16
	.type	 ExprRep__NoPrepLiteral,@function
ExprRep__NoPrepLiteral:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 ExprRep__NoPrepLiteral,.Lfe37-ExprRep__NoPrepLiteral
	.align 16
	.type	 ExprRep__NoLiteral,@function
ExprRep__NoLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl $4656
	call _m3_fault
	.align 16
.Lfe38:
	.size	 ExprRep__NoLiteral,.Lfe38-ExprRep__NoLiteral
	.align 16
	.type	 ExprRep__NoPrep,@function
ExprRep__NoPrep:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 ExprRep__NoPrep,.Lfe39-ExprRep__NoPrep
	.align 16
	.type	 ExprRep__NoCompile,@function
ExprRep__NoCompile:
	pushl %ebp
	movl %esp,%ebp
	pushl $4800
	call _m3_fault
	.align 16
.Lfe40:
	.size	 ExprRep__NoCompile,.Lfe40-ExprRep__NoCompile
	.align 16
	.type	 ExprRep__NotLValue,@function
ExprRep__NotLValue:
	pushl %ebp
	movl %esp,%ebp
	pushl $4880
	call _m3_fault
	.align 16
.Lfe41:
	.size	 ExprRep__NotLValue,.Lfe41-ExprRep__NotLValue
	.align 16
	.type	 ExprRep__NotBoolean,@function
ExprRep__NotBoolean:
	pushl %ebp
	movl %esp,%ebp
	pushl $4992
	call _m3_fault
	.align 16
.Lfe42:
	.size	 ExprRep__NotBoolean,.Lfe42-ExprRep__NotBoolean
	.align 16
	.type	 ExprRep__PrepNoBranch,@function
ExprRep__PrepNoBranch:
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
	jne .L99
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_CG+328,%eax
	jmp .L101
	.align 16
.L99:
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edi
	movl MI_CG+324,%eax
.L101:
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 ExprRep__PrepNoBranch,.Lfe43-ExprRep__PrepNoBranch
	.align 16
	.type	 ExprRep__NoBranch,@function
ExprRep__NoBranch:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 ExprRep__NoBranch,.Lfe44-ExprRep__NoBranch
	.align 16
	.type	 ExprRep__NotAddressable,@function
ExprRep__NotAddressable:
	pushl %ebp
	movl %esp,%ebp
	pushl $5344
	call _m3_fault
	.align 16
.Lfe45:
	.size	 ExprRep__NotAddressable,.Lfe45-ExprRep__NotAddressable
	.align 16
	.type	 ExprRep__NotWritable,@function
ExprRep__NotWritable:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 ExprRep__NotWritable,.Lfe46-ExprRep__NotWritable
	.align 16
	.type	 ExprRep__EqCheckA,@function
ExprRep__EqCheckA:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ecx
	testl %ecx,%ecx
	je .L109
	movl -4(%ecx),%esi
	sall $11,%esi
	movl %esi,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_Expr+348
	jg .L109
	movl MM_Expr+344,%eax
	cmpl %ebx,4(%eax)
	jl .L109
	xorl %ebx,%ebx
	movl %edi,-4(%ebp)
	testl %edi,%edi
	je .L111
	movl -4(%edi),%eax
	sall $11,%eax
	shrl $12,%eax
	movl %eax,-4(%ebp)
.L111:
	movl %esi,%eax
	shrl $12,%eax
	cmpl %eax,-4(%ebp)
	jne .L113
	movl 16(%ebp),%edx
	pushl %edx
	movl 16(%ecx),%eax
	pushl %eax
	movl 16(%edi),%eax
	pushl %eax
	call Expr__IsEqual
	testl %eax,%eax
	je .L113
	movl $1,%ebx
.L113:
	movl %ebx,%eax
	jmp .L115
	.align 16
.L109:
	xorl %eax,%eax
.L115:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 ExprRep__EqCheckA,.Lfe47-ExprRep__EqCheckA
	.align 16
	.type	 ExprRep__EqCheckAB,@function
ExprRep__EqCheckAB:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	je .L120
	movl -4(%ebx),%ecx
	sall $11,%ecx
	movl %ecx,%esi
	shrl $12,%esi
	cmpl %esi,MM_Expr+356
	jg .L120
	movl MM_Expr+352,%eax
	cmpl %esi,4(%eax)
	jl .L120
	xorl %esi,%esi
	movl %edi,-4(%ebp)
	testl %edi,%edi
	je .L122
	movl -4(%edi),%eax
	sall $11,%eax
	shrl $12,%eax
	movl %eax,-4(%ebp)
.L122:
	movl %ecx,%eax
	shrl $12,%eax
	cmpl %eax,-4(%ebp)
	jne .L124
	movl 16(%ebp),%edx
	pushl %edx
	movl 16(%ebx),%eax
	pushl %eax
	movl 16(%edi),%eax
	pushl %eax
	call Expr__IsEqual
	addl $12,%esp
	testl %eax,%eax
	je .L124
	movl 16(%ebp),%edx
	pushl %edx
	movl 20(%ebx),%eax
	pushl %eax
	movl 20(%edi),%eax
	pushl %eax
	call Expr__IsEqual
	testl %eax,%eax
	je .L124
	movl $1,%esi
.L124:
	movl %esi,%eax
	jmp .L126
	.align 16
.L120:
	xorl %eax,%eax
.L126:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe48:
	.size	 ExprRep__EqCheckAB,.Lfe48-ExprRep__EqCheckAB
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Expr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe49:
	.size	 _m3_fault,.Lfe49-_m3_fault
.globl MM_Expr
.data
	.align 4
	.type	 MM_Expr,@object
	.size	 MM_Expr,1612
MM_Expr:
	.long MM_Expr+1468
	.zero	4
	.long MM_Expr+344
	.zero	8
	.long MM_Expr+888
	.zero	20
	.long ExprRep__Init
	.long ExprRep__NotAddressable
	.long ExprRep__NoType
	.long ExprRep__NoCheck
	.long ExprRep__NoValue
	.long ExprRep__Self
	.long ExprRep__NoBounds
	.long ExprRep__IsNever
	.long ExprRep__IsAlways
	.long ExprRep__NeverEq
	.long ExprRep__NoFPLiteral
	.long ExprRep__NoPrepLiteral
	.long ExprRep__NoLiteral
	.long ExprRep__NoPrep
	.long ExprRep__NoCompile
	.long ExprRep__NotLValue
	.long ExprRep__NotBoolean
	.long ExprRep__PrepNoBranch
	.long ExprRep__NoBranch
	.long ExprRep__NotWritable
	.long ExprRep__EqCheckA
	.long ExprRep__EqCheckAB
	.long Expr__Parse
	.long Expr__TypeOf
	.long Expr__TypeCheck
	.long Expr__ConstValue
	.long Expr__GetBounds
	.long Expr__IsDesignator
	.long Expr__IsWritable
	.long Expr__IsZeroes
	.long Expr__GetSign
	.long Expr__NeedsAddress
	.long Expr__SupportsDirectAssignment
	.long Expr__MarkForDirectAssignment
	.long Expr__IsMarkedForDirectAssignment
	.long Expr__Prep
	.long Expr__Compile
	.long Expr__PrepLValue
	.long Expr__CompileLValue
	.long Expr__CompileAddress
	.long Expr__PrepBranch
	.long Expr__CompileBranch
	.long Expr__NoteWrite
	.long Expr__IsEqual
	.long Expr__PrepLiteral
	.long Expr__GenLiteral
	.long Expr__GenFPLiteral
	.long Expr__BadOperands
	.long 2
	.long MM_Expr+248
	.long 57
	.ascii	"INTERNAL ERROR: fingerprint of a non-constant expression"
	.zero	4
	.long 2
	.long MM_Expr+320
	.long 24
	.ascii	"illegal operand(s) for "
	.zero	1
	.long MM_Expr+352
	.long 508464328
	.zero	4
	.long -765996802
	.ascii	"EqCheckAB"
	.zero	1
	.ascii	"EqCheckA"
	.zero	1
	.ascii	"NotWritable"
	.zero	1
	.ascii	"NotAddressable"
	.zero	1
	.ascii	"NoBranch"
	.zero	1
	.ascii	"PrepNoBranch"
	.zero	1
	.ascii	"NotBoolean"
	.zero	1
	.ascii	"NotLValue"
	.zero	1
	.ascii	"NoCompile"
	.zero	1
	.ascii	"NoPrep"
	.zero	1
	.ascii	"NoLiteral"
	.zero	1
	.ascii	"NoPrepLiteral"
	.zero	1
	.ascii	"NeverEq"
	.zero	1
	.ascii	"IsAlways"
	.zero	1
	.ascii	"IsNever"
	.zero	1
	.ascii	"NoBounds"
	.zero	1
	.ascii	"Self"
	.zero	1
	.ascii	"NoFPLiteral"
	.zero	1
	.ascii	"NoValue"
	.zero	1
	.ascii	"NoCheck"
	.zero	1
	.ascii	"NoType"
	.zero	1
	.ascii	"BadOperands"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"PrepLiteral"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"NoteWrite"
	.zero	1
	.ascii	"CompileBranch"
	.zero	1
	.ascii	"PrepBranch"
	.zero	1
	.ascii	"CompileAddress"
	.zero	1
	.ascii	"CompileLValue"
	.zero	1
	.ascii	"PrepLValue"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"IsMarkedForDirectAssignment"
	.zero	1
	.ascii	"MarkForDirectAssignment"
	.zero	1
	.ascii	"SupportsDirectAssignment"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"GetSign"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"GetBounds"
	.zero	1
	.ascii	"ConstValue"
	.zero	1
	.ascii	"TypeCheck"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.long ExprRep__EqCheckAB
	.long MM_Expr+360
	.long MI_ExprRep+544
	.long ExprRep__EqCheckA
	.long MM_Expr+370
	.long MI_ExprRep+540
	.long ExprRep__NotWritable
	.long MM_Expr+379
	.long MI_ExprRep+536
	.long ExprRep__NotAddressable
	.long MM_Expr+391
	.long MI_ExprRep+464
	.long ExprRep__NoBranch
	.long MM_Expr+406
	.long MI_ExprRep+532
	.long ExprRep__PrepNoBranch
	.long MM_Expr+415
	.long MI_ExprRep+528
	.long ExprRep__NotBoolean
	.long MM_Expr+428
	.long MI_ExprRep+524
	.long ExprRep__NotLValue
	.long MM_Expr+439
	.long MI_ExprRep+520
	.long ExprRep__NoCompile
	.long MM_Expr+449
	.long MI_ExprRep+516
	.long ExprRep__NoPrep
	.long MM_Expr+459
	.long MI_ExprRep+512
	.long ExprRep__NoLiteral
	.long MM_Expr+466
	.long MI_ExprRep+508
	.long ExprRep__NoPrepLiteral
	.long MM_Expr+476
	.long MI_ExprRep+504
	.long ExprRep__NeverEq
	.long MM_Expr+490
	.long MI_ExprRep+496
	.long ExprRep__IsAlways
	.long MM_Expr+498
	.long MI_ExprRep+492
	.long ExprRep__IsNever
	.long MM_Expr+507
	.long MI_ExprRep+488
	.long ExprRep__NoBounds
	.long MM_Expr+515
	.long MI_ExprRep+484
	.long ExprRep__Self
	.long MM_Expr+524
	.long MI_ExprRep+480
	.long ExprRep__NoFPLiteral
	.long MM_Expr+529
	.long MI_ExprRep+500
	.long ExprRep__NoValue
	.long MM_Expr+541
	.long MI_ExprRep+476
	.long ExprRep__NoCheck
	.long MM_Expr+549
	.long MI_ExprRep+472
	.long ExprRep__NoType
	.long MM_Expr+557
	.long MI_ExprRep+468
	.long Expr__BadOperands
	.long MM_Expr+564
	.long MI_Expr+248
	.long Expr__GenFPLiteral
	.long MM_Expr+576
	.long MI_Expr+244
	.long Expr__GenLiteral
	.long MM_Expr+589
	.long MI_Expr+240
	.long Expr__PrepLiteral
	.long MM_Expr+600
	.long MI_Expr+236
	.long Expr__IsEqual
	.long MM_Expr+612
	.long MI_Expr+232
	.long Expr__NoteWrite
	.long MM_Expr+620
	.long MI_Expr+228
	.long Expr__CompileBranch
	.long MM_Expr+630
	.long MI_Expr+224
	.long Expr__PrepBranch
	.long MM_Expr+644
	.long MI_Expr+220
	.long Expr__CompileAddress
	.long MM_Expr+655
	.long MI_Expr+216
	.long Expr__CompileLValue
	.long MM_Expr+670
	.long MI_Expr+212
	.long Expr__PrepLValue
	.long MM_Expr+684
	.long MI_Expr+208
	.long Expr__Compile
	.long MM_Expr+695
	.long MI_Expr+204
	.long Expr__Prep
	.long MM_Expr+703
	.long MI_Expr+200
	.long Expr__IsMarkedForDirectAssignment
	.long MM_Expr+708
	.long MI_Expr+196
	.long Expr__MarkForDirectAssignment
	.long MM_Expr+736
	.long MI_Expr+192
	.long Expr__SupportsDirectAssignment
	.long MM_Expr+760
	.long MI_Expr+188
	.long Expr__NeedsAddress
	.long MM_Expr+785
	.long MI_Expr+184
	.long Expr__GetSign
	.long MM_Expr+798
	.long MI_Expr+180
	.long Expr__IsZeroes
	.long MM_Expr+806
	.long MI_Expr+176
	.long Expr__IsWritable
	.long MM_Expr+815
	.long MI_Expr+172
	.long Expr__IsDesignator
	.long MM_Expr+826
	.long MI_Expr+168
	.long Expr__GetBounds
	.long MM_Expr+839
	.long MI_Expr+164
	.long Expr__ConstValue
	.long MM_Expr+849
	.long MI_Expr+160
	.long Expr__TypeCheck
	.long MM_Expr+860
	.long MI_Expr+156
	.long Expr__TypeOf
	.long MM_Expr+870
	.long MI_Expr+152
	.long ExprRep__Init
	.long MM_Expr+877
	.long MI_ExprRep+460
	.long Expr__Parse
	.long MM_Expr+882
	.long MI_Expr+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/Expr.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
