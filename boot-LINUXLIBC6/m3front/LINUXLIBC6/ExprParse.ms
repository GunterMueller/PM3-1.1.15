	.file	"ExprParse.mc"
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
	.type	 ExprParse__E0,@function
ExprParse__E0:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%esi
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E1
	movl %eax,%ebx
	addl $4,%esp
	jmp .L2
	.align 16
.L3:
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $0
	call ExprParse__E1
	pushl %eax
	pushl %ebx
	movl MI_OrExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	movl %esi,4(%ebx)
	movl MI_Scanner+88,%esi
.L2:
	cmpb $80,MI_Scanner+44
	je .L3
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ExprParse__E0,.Lfe1-ExprParse__E0
	.align 16
	.type	 ExprParse__E1,@function
ExprParse__E1:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%esi
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E2
	movl %eax,%ebx
	addl $4,%esp
	jmp .L6
	.align 16
.L7:
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $0
	call ExprParse__E2
	pushl %eax
	pushl %ebx
	movl MI_AndExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	movl %esi,4(%ebx)
	movl MI_Scanner+88,%esi
.L6:
	cmpb $44,MI_Scanner+44
	je .L7
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ExprParse__E1,.Lfe2-ExprParse__E1
	.align 16
	.type	 ExprParse__E2,@function
ExprParse__E2:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
.L10:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MI_Scanner+88,%esi
	xorl %ebx,%ebx
	jmp .L11
	.align 16
.L12:
	movl MI_Scanner+104,%eax
	call *%eax
	incl %ebx
.L11:
	cmpb $77,MI_Scanner+44
	je .L12
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E3
	movl %eax,%edx
	addl $4,%esp
	testl %ebx,%ebx
	jle .L14
	pushl %edx
	movl MI_NotExpr+44,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	movl %esi,4(%edx)
	testb $1,%bl
	jne .L14
	pushl %edx
	movl MI_NotExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %esi,4(%edx)
.L14:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L16:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ExprParse__E2,.Lfe3-ExprParse__E2
.section	.rodata
	.align 4
	.type	 L_2.0,@object
	.size	 L_2.0,200
L_2.0:
	.long .L21
	.long .L22
	.long .L23
	.long .L24
	.long .L25
	.long .L26
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L27
.text
	.align 16
	.type	 ExprParse__E3,@function
ExprParse__E3:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%edi
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E4
	movl %eax,%esi
	addl $4,%esp
	jmp .L18
	.align 16
.L19:
	movl MI_Scanner+104,%eax
	movb MI_Scanner+44,%bl
	call *%eax
	pushl $0
	call ExprParse__E4
	movl %eax,%edx
	xorl %eax,%eax
	movb %bl,%al
	addl $-21,%eax
	addl $4,%esp
	testl %eax,%eax
	jl .L20
	cmpl $49,%eax
	jg .L20
	jmp *L_2.0(,%eax,4)
	.align 16
.L21:
	pushl %edx
	pushl %esi
	movl MI_EqualExpr+44,%eax
	jmp .L30
	.align 16
.L22:
	pushl %edx
	pushl %esi
	movl MI_EqualExpr+48,%eax
	jmp .L30
	.align 16
.L23:
	pushl %edx
	pushl %esi
	movl MI_CompareExpr+44,%eax
	jmp .L30
	.align 16
.L25:
	pushl %edx
	pushl %esi
	movl MI_CompareExpr+48,%eax
	jmp .L30
	.align 16
.L24:
	pushl %edx
	pushl %esi
	movl MI_CompareExpr+52,%eax
	jmp .L30
	.align 16
.L26:
	pushl %edx
	pushl %esi
	movl MI_CompareExpr+56,%eax
	jmp .L30
	.align 16
.L27:
	pushl %edx
	pushl %esi
	movl MI_InExpr+44,%eax
.L30:
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	jmp .L28
	.align 16
.L20:
	pushl $1408
	call _m3_fault
	.align 16
.L28:
	movl %edi,4(%esi)
	movl MI_Scanner+88,%edi
.L18:
	pushl $MM_ExprParse+116
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L19
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ExprParse__E3,.Lfe4-ExprParse__E3
	.align 16
	.type	 ExprParse__E4,@function
ExprParse__E4:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%edi
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E5
	movl %eax,%esi
	addl $4,%esp
	jmp .L32
	.align 16
.L33:
	movl MI_Scanner+104,%eax
	movb MI_Scanner+44,%bl
	call *%eax
	pushl $0
	call ExprParse__E5
	xorl %edx,%edx
	movb %bl,%dl
	addl $4,%esp
	cmpl $7,%edx
	jle .L34
	cmpl $8,%edx
	jle .L35
	cmpl $9,%edx
	jle .L36
	cmpl $12,%edx
	jle .L34
	cmpl $13,%edx
	jle .L37
	jmp .L34
	.align 16
.L35:
	pushl %eax
	pushl %esi
	movl MI_AddExpr+44,%eax
	jmp .L40
	.align 16
.L36:
	pushl $0
	pushl %eax
	pushl %esi
	movl MI_SubtractExpr+44,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	jmp .L38
	.align 16
.L37:
	pushl %eax
	pushl %esi
	movl MI_ConcatExpr+44,%eax
.L40:
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	jmp .L38
	.align 16
.L34:
	pushl $1744
	call _m3_fault
	.align 16
.L38:
	movl %edi,4(%esi)
	movl MI_Scanner+88,%edi
.L32:
	pushl $MM_ExprParse+132
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L33
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ExprParse__E4,.Lfe5-ExprParse__E4
	.align 16
	.type	 ExprParse__E5,@function
ExprParse__E5:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%edi
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E6
	movl %eax,%esi
	addl $4,%esp
	jmp .L42
	.align 16
.L43:
	movl MI_Scanner+104,%eax
	movb MI_Scanner+44,%bl
	call *%eax
	pushl $0
	call ExprParse__E6
	xorl %edx,%edx
	movb %bl,%dl
	addl $4,%esp
	cmpl $9,%edx
	jle .L44
	cmpl $10,%edx
	jle .L45
	cmpl $11,%edx
	jle .L46
	cmpl $53,%edx
	jle .L44
	cmpl $54,%edx
	jle .L47
	cmpl $74,%edx
	jle .L44
	cmpl $75,%edx
	jle .L48
	jmp .L44
	.align 16
.L45:
	pushl %eax
	pushl %esi
	movl MI_MultiplyExpr+44,%eax
	jmp .L51
	.align 16
.L46:
	pushl %eax
	pushl %esi
	movl MI_DivideExpr+44,%eax
	jmp .L51
	.align 16
.L47:
	pushl %eax
	pushl %esi
	movl MI_DivExpr+44,%eax
	jmp .L51
	.align 16
.L48:
	pushl %eax
	pushl %esi
	movl MI_ModExpr+44,%eax
.L51:
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	jmp .L49
	.align 16
.L44:
	pushl $2096
	call _m3_fault
	.align 16
.L49:
	movl %edi,4(%esi)
	movl MI_Scanner+88,%edi
.L42:
	pushl $MM_ExprParse+148
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L43
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ExprParse__E5,.Lfe6-ExprParse__E5
	.align 16
	.type	 ExprParse__E6,@function
ExprParse__E6:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L53:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %ebx,%ebx
	movl MI_Scanner+88,%edx
	movl %edx,-12(%ebp)
	movl %ebx,%edi
	movl %edi,-16(%ebp)
.L54:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $8,%eax
	jne .L55
	movl MI_Scanner+104,%eax
	call *%eax
	incl %edi
	jmp .L54
	.align 16
.L55:
	cmpl $9,%eax
	jne .L58
	movl MI_Scanner+104,%eax
	call *%eax
	incl -16(%ebp)
	jmp .L54
	.align 16
.L58:
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E8
	movl %eax,%ebx
	xorl %esi,%esi
	addl $4,%esp
	jmp .L59
	.align 16
.L60:
	movl %ebx,%esi
	pushl %esi
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__ESelector
	movl %eax,%ebx
	movl -12(%ebp),%edx
	addl $8,%esp
	movl %edx,4(%ebx)
	movl MI_Scanner+88,%edx
	movl %edx,-12(%ebp)
.L59:
	cmpl %esi,%ebx
	je .L62
	pushl $MM_ExprParse+64
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L60
.L62:
	movl -16(%ebp),%edx
	leal (%edx,%edi),%eax
	testl %eax,%eax
	jle .L63
	testb $1,%dl
	je .L64
	pushl %ebx
	movl MI_NegateExpr+44,%eax
	jmp .L67
	.align 16
.L64:
	pushl %ebx
	movl MI_PlusExpr+44,%eax
.L67:
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%edx
	movl %edx,4(%ebx)
.L63:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L66:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ExprParse__E6,.Lfe7-ExprParse__E6
.section	.rodata
	.align 4
	.type	 L_4.1,@object
	.size	 L_4.1,396
L_4.1:
	.long .L70
	.long .L71
	.long .L72
	.long .L73
	.long .L74
	.long .L75
	.long .L76
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L77
	.long .L78
	.long .L78
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L78
	.long .L69
	.long .L69
	.long .L69
	.long .L79
	.long .L69
	.long .L69
	.long .L79
	.long .L78
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L78
	.long .L69
	.long .L69
	.long .L69
	.long .L78
	.long .L69
	.long .L69
	.long .L69
	.long .L79
	.long .L78
	.long .L69
	.long .L69
	.long .L69
	.long .L79
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L69
	.long .L78
.text
	.align 16
	.type	 ExprParse__E8,@function
ExprParse__E8:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%esi
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	decl %eax
	js .L69
	cmpl $98,%eax
	jg .L69
	jmp *L_4.1(,%eax,4)
	.align 16
.L70:
	movl MI_Scanner+84,%eax
	pushl %eax
	movl MI_Scanner+48,%eax
	pushl %eax
	movl MI_NamedExpr+44,%eax
	jmp .L83
	.align 16
.L71:
	pushl $MI_Scanner+56
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L84
	.align 16
.L75:
	pushl $MI_Scanner+56
	movl MI_CChar+44,%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	jmp .L83
	.align 16
.L76:
	movl MI_Scanner+52,%eax
	pushl %eax
	movl MI_TextExpr+44,%eax
	call *%eax
	jmp .L84
	.align 16
.L72:
	pushl $0
	jmp .L85
	.align 16
.L73:
	pushl $1
	jmp .L85
	.align 16
.L74:
	pushl $2
.L85:
	pushl $MI_Scanner+64
	movl MI_ReelExpr+44,%eax
.L83:
	call *%eax
.L84:
	movl %eax,%ebx
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L80
	.align 16
.L77:
	movl MI_Scanner+104,%eax
	call *%eax
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call ExprParse__E0
	movl %eax,%ebx
	pushl $29
	movl MI_Scanner+108,%eax
	call *%eax
	jmp .L80
	.align 16
.L79:
	movl MI_Type+56,%eax
	call *%eax
	pushl %eax
	movl MI_TypeExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	movl %esi,4(%ebx)
	cmpb $0,8(%ebp)
	jne .L80
	cmpb $19,MI_Scanner+44
	je .L80
	pushl $MM_ExprParse+168
	movl MI_Error+44,%eax
	call *%eax
	jmp .L80
	.align 16
.L78:
	cmpb $0,8(%ebp)
	jne .L82
	pushl $MM_ExprParse+204
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L82:
	movl MI_Type+56,%eax
	call *%eax
	pushl %eax
	movl MI_TypeExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	movl %esi,4(%ebx)
	jmp .L80
	.align 16
.L69:
	pushl $MM_ExprParse+244
	movl MI_Scanner+116,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%ebx
.L80:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ExprParse__E8,.Lfe8-ExprParse__E8
.section	.rodata
	.align 4
	.type	 L_5.2,@object
	.size	 L_5.2,260
L_5.2:
	.long .L88
	.long .L87
	.long .L87
	.long .L89
	.long .L90
	.long .L91
	.long .L92
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L93
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L87
	.long .L93
.text
	.align 16
	.type	 ExprParse__ESelector,@function
ExprParse__ESelector:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movb $0,-9(%ebp)
	movl MI_Scanner+88,%edi
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $-14,%eax
	js .L87
	cmpl $64,%eax
	jg .L87
	jmp *L_5.2(,%eax,4)
	.align 16
.L92:
	movl MI_Scanner+104,%eax
	call *%eax
	pushl %esi
	movl MI_DerefExpr+44,%eax
	call *%eax
	movl %eax,%esi
	jmp .L94
	.align 16
.L88:
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Scanner+112,%eax
	call *%eax
	pushl %eax
	pushl %esi
	movl MI_QualifyExpr+44,%eax
	call *%eax
	jmp .L102
	.align 16
.L90:
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $0
	call ExprParse__E0
	pushl %eax
	pushl %esi
	movl MI_SubscriptExpr+44,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	movl %edi,4(%esi)
	movl MI_Scanner+88,%edi
	cmpb $15,MI_Scanner+44
	je .L90
	pushl $30
	movl MI_Scanner+108,%eax
	jmp .L103
	.align 16
.L89:
	movl MI_Scanner+104,%eax
	call *%eax
	call ExprParse__ParseArgList
	movl %eax,%ebx
	pushl $29
	movl MI_Scanner+108,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl MI_CallExpr+44,%eax
	call *%eax
	jmp .L102
	.align 16
.L91:
	movl MI_Scanner+104,%eax
	call *%eax
	leal -9(%ebp),%eax
	pushl %eax
	call ExprParse__ParseConsList
	movl %eax,%ebx
	pushl $31
	movl MI_Scanner+108,%eax
	call *%eax
	xorl %eax,%eax
	movb -9(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %esi
	movl MI_ConsExpr+44,%eax
	call *%eax
	jmp .L102
	.align 16
.L93:
	cmpb $0,8(%ebp)
	je .L94
	movl MI_RefType+48,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-16(%ebp)
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_NamedExpr+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L99
	movl -8(%ebp),%eax
	pushl %eax
	pushl $0
	jmp .L104
	.align 16
.L99:
	pushl %ebx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_QualifyExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L101
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
.L104:
	movl MI_NamedType+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L100
	.align 16
.L101:
	movl %eax,%ebx
	pushl $MM_ExprParse+272
	movl MI_Scanner+116,%eax
	call *%eax
	addl $4,%esp
.L100:
	movl -16(%ebp),%edx
	pushl %edx
	pushl $1
	pushl %ebx
	movl MI_ObjectType+44,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_TypeExpr+44,%eax
	call *%eax
.L102:
	movl %eax,%esi
	movl %edi,4(%esi)
	jmp .L94
	.align 16
.L87:
	pushl $MM_ExprParse+272
	movl MI_Scanner+116,%eax
.L103:
	call *%eax
.L94:
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ExprParse__ESelector,.Lfe9-ExprParse__ESelector
	.align 16
	.type	 ExprParse__ParseArgList,@function
ExprParse__ParseArgList:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $40
	xorl %esi,%esi
	pushl %esi
	leal -40(%ebp),%eax
	pushl %eax
	call memset
	movl %esi,-64(%ebp)
	movl -64(%ebp),%ebx
	addl $12,%esp
	cmpb $29,MI_Scanner+44
	je .L106
.L107:
	call ExprParse__EActual
	movl %eax,%edx
	movl %edx,%esi
	cmpl $9,%ebx
	jg .L108
	jbe .L109
	pushl $4513
	call _m3_fault
	.align 16
.L109:
	movl %esi,-40(%ebp,%ebx,4)
	jmp .L110
	.align 16
.L108:
	cmpl $10,%ebx
	jne .L111
	leal -40(%ebp),%edi
	movl %edi,-48(%ebp)
	movl %ebx,-44(%ebp)
	leal -48(%ebp),%eax
	pushl %eax
	call ExprParse__Expand
	movl %eax,-64(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L112
	pushl $4564
	call _m3_fault
	.align 16
.L112:
	movl -64(%ebp),%edi
	cmpl %ebx,4(%edi)
	ja .L113
	pushl $4562
	call _m3_fault
	.align 16
.L113:
	movl -64(%ebp),%edi
	movl (%edi),%edx
	addl $40,%edx
	movl %esi,(%edx)
	jmp .L110
	.align 16
.L111:
	cmpl $0,-64(%ebp)
	jne .L114
	pushl $4580
	call _m3_fault
	.align 16
.L114:
	movl -64(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %ebx,%eax
	jne .L119
	pushl %edi
	call ExprParse__Expand
	movl %eax,%edx
	movl %edx,-64(%ebp)
	addl $4,%esp
	testl %edx,%edx
	jne .L117
	pushl $4612
	call _m3_fault
	.align 16
.L117:
	cmpl %ebx,4(%edx)
	ja .L118
	pushl $4610
	call _m3_fault
	.align 16
.L118:
	movl (%edx),%eax
	jmp .L138
	.align 16
.L119:
	cmpl %eax,%ebx
	jb .L120
	pushl $4642
	call _m3_fault
	.align 16
.L120:
	movl -64(%ebp),%edi
	movl (%edi),%eax
.L138:
	movl %esi,(%eax,%ebx,4)
.L110:
	incl %ebx
	cmpb $15,MI_Scanner+44
	jne .L106
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L107
	.align 16
.L106:
	leal -60(%ebp),%eax
	leal -52(%ebp),%edi
	movl %edi,-60(%ebp)
	movl $1,-56(%ebp)
	movl %ebx,-52(%ebp)
	pushl %eax
	movl MM_ExprParse+296,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	cmpl $10,%ebx
	jg .L123
	xorl %ecx,%ecx
	decl %ebx
	jmp .L124
	.align 16
.L125:
	testl %esi,%esi
	jne .L126
	pushl $4788
	call _m3_fault
	.align 16
.L126:
	cmpl %ecx,4(%esi)
	ja .L127
	pushl $4786
	call _m3_fault
	.align 16
.L127:
	movl (%esi),%eax
	leal (%eax,%ecx,4),%edx
	cmpl $9,%ecx
	jle .L128
	pushl $4785
	call _m3_fault
	.align 16
.L128:
	movl -40(%ebp,%ecx,4),%eax
	movl %eax,(%edx)
	incl %ecx
.L124:
	cmpl %ebx,%ecx
	jle .L125
	jmp .L130
	.align 16
.L123:
	xorl %ecx,%ecx
	decl %ebx
	jmp .L131
	.align 16
.L132:
	testl %esi,%esi
	jne .L133
	pushl $4804
	call _m3_fault
	.align 16
.L133:
	cmpl %ecx,4(%esi)
	ja .L134
	pushl $4802
	call _m3_fault
	.align 16
.L134:
	movl (%esi),%eax
	leal (%eax,%ecx,4),%edx
	cmpl $0,-64(%ebp)
	jne .L135
	pushl $4804
	call _m3_fault
	.align 16
.L135:
	movl -64(%ebp),%edi
	cmpl %ecx,4(%edi)
	ja .L136
	pushl $4802
	call _m3_fault
	.align 16
.L136:
	movl -64(%ebp),%edi
	movl (%edi),%eax
	movl (%eax,%ecx,4),%eax
	movl %eax,(%edx)
	incl %ecx
.L131:
	cmpl %ebx,%ecx
	jle .L132
.L130:
	leal -76(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 ExprParse__ParseArgList,.Lfe10-ExprParse__ParseArgList
	.align 16
	.type	 ExprParse__ParseConsList,@function
ExprParse__ParseConsList:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $40
	xorl %esi,%esi
	pushl %esi
	leal -40(%ebp),%eax
	pushl %eax
	call memset
	movl %esi,-64(%ebp)
	movl -64(%ebp),%ebx
	movl 8(%ebp),%edi
	addl $12,%esp
	movb $0,(%edi)
	cmpb $31,MI_Scanner+44
	je .L140
.L141:
	cmpb $27,MI_Scanner+44
	jne .L142
	testl %ebx,%ebx
	jne .L143
	pushl $MM_ExprParse+308
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L143:
	movl 8(%ebp),%edi
	movb $1,(%edi)
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L140
	.align 16
.L142:
	call ExprParse__EConstructor
	movl %eax,%edx
	movl %edx,%esi
	cmpl $9,%ebx
	jg .L145
	jbe .L146
	pushl $5217
	call _m3_fault
	.align 16
.L146:
	movl %esi,-40(%ebp,%ebx,4)
	jmp .L147
	.align 16
.L145:
	cmpl $10,%ebx
	jne .L148
	leal -40(%ebp),%edi
	movl %edi,-48(%ebp)
	movl %ebx,-44(%ebp)
	leal -48(%ebp),%eax
	pushl %eax
	call ExprParse__Expand
	movl %eax,-64(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L149
	pushl $5268
	call _m3_fault
	.align 16
.L149:
	movl -64(%ebp),%edi
	cmpl %ebx,4(%edi)
	ja .L150
	pushl $5266
	call _m3_fault
	.align 16
.L150:
	movl -64(%ebp),%edi
	movl (%edi),%edx
	addl $40,%edx
	movl %esi,(%edx)
	jmp .L147
	.align 16
.L148:
	cmpl $0,-64(%ebp)
	jne .L151
	pushl $5284
	call _m3_fault
	.align 16
.L151:
	movl -64(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %ebx,%eax
	jne .L156
	pushl %edi
	call ExprParse__Expand
	movl %eax,%edx
	movl %edx,-64(%ebp)
	addl $4,%esp
	testl %edx,%edx
	jne .L154
	pushl $5316
	call _m3_fault
	.align 16
.L154:
	cmpl %ebx,4(%edx)
	ja .L155
	pushl $5314
	call _m3_fault
	.align 16
.L155:
	movl (%edx),%eax
	jmp .L174
	.align 16
.L156:
	cmpl %eax,%ebx
	jb .L157
	pushl $5346
	call _m3_fault
	.align 16
.L157:
	movl -64(%ebp),%edi
	movl (%edi),%eax
.L174:
	movl %esi,(%eax,%ebx,4)
.L147:
	incl %ebx
	cmpb $15,MI_Scanner+44
	jne .L140
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L141
	.align 16
.L140:
	leal -60(%ebp),%eax
	leal -52(%ebp),%edi
	movl %edi,-60(%ebp)
	movl $1,-56(%ebp)
	movl %ebx,-52(%ebp)
	pushl %eax
	movl MM_ExprParse+296,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	cmpl $10,%ebx
	jg .L159
	xorl %ecx,%ecx
	decl %ebx
	jmp .L160
	.align 16
.L161:
	testl %esi,%esi
	jne .L162
	pushl $5492
	call _m3_fault
	.align 16
.L162:
	cmpl %ecx,4(%esi)
	ja .L163
	pushl $5490
	call _m3_fault
	.align 16
.L163:
	movl (%esi),%eax
	leal (%eax,%ecx,4),%edx
	cmpl $9,%ecx
	jle .L164
	pushl $5489
	call _m3_fault
	.align 16
.L164:
	movl -40(%ebp,%ecx,4),%eax
	movl %eax,(%edx)
	incl %ecx
.L160:
	cmpl %ebx,%ecx
	jle .L161
	jmp .L166
	.align 16
.L159:
	xorl %ecx,%ecx
	decl %ebx
	jmp .L167
	.align 16
.L168:
	testl %esi,%esi
	jne .L169
	pushl $5508
	call _m3_fault
	.align 16
.L169:
	cmpl %ecx,4(%esi)
	ja .L170
	pushl $5506
	call _m3_fault
	.align 16
.L170:
	movl (%esi),%eax
	leal (%eax,%ecx,4),%edx
	cmpl $0,-64(%ebp)
	jne .L171
	pushl $5508
	call _m3_fault
	.align 16
.L171:
	movl -64(%ebp),%edi
	cmpl %ecx,4(%edi)
	ja .L172
	pushl $5506
	call _m3_fault
	.align 16
.L172:
	movl -64(%ebp),%edi
	movl (%edi),%eax
	movl (%eax,%ecx,4),%eax
	movl %eax,(%edx)
	incl %ecx
.L167:
	cmpl %ebx,%ecx
	jle .L168
.L166:
	leal -76(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 ExprParse__ParseConsList,.Lfe11-ExprParse__ParseConsList
	.align 16
	.type	 ExprParse__Expand,@function
ExprParse__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	movl $200,%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
	movl 8(%ebp),%eax
	movl $1,-8(%ebp)
	movl 4(%eax),%eax
	addl %eax,%eax
	cmpl %edx,%eax
	jle .L176
	movl %eax,-4(%ebp)
	jmp .L177
	.align 16
.L176:
	movl %edx,-4(%ebp)
.L177:
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_ExprParse+296,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%eax
	xorl %edx,%edx
	addl $8,%esp
	movl 4(%eax),%esi
	decl %esi
	jmp .L178
	.align 16
.L179:
	testl %ecx,%ecx
	jne .L180
	pushl $5636
	call _m3_fault
	.align 16
.L180:
	cmpl %edx,4(%ecx)
	ja .L181
	pushl $5634
	call _m3_fault
	.align 16
.L181:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%ebx
	movl 8(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L182
	pushl $5634
	call _m3_fault
	.align 16
.L182:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,(%ebx)
	incl %edx
.L178:
	cmpl %esi,%edx
	jle .L179
	leal -24(%ebp),%esp
	movl %ecx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 ExprParse__Expand,.Lfe12-ExprParse__Expand
	.align 16
	.type	 ExprParse__EActual,@function
ExprParse__EActual:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%esi
	pushl $1
	call ExprParse__E0
	movl %eax,%ebx
	addl $4,%esp
	cmpb $12,MI_Scanner+44
	jne .L185
	movl MI_Scanner+104,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_NamedExpr+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L186
	pushl $0
	call ExprParse__E0
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_KeywordExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	movl %esi,4(%ebx)
	jmp .L185
	.align 16
.L186:
	pushl $MM_ExprParse+352
	movl MI_Error+44,%eax
	call *%eax
.L185:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 ExprParse__EActual,.Lfe13-ExprParse__EActual
	.align 16
	.type	 ExprParse__EConstructor,@function
ExprParse__EConstructor:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%esi
	pushl $0
	call ExprParse__E0
	movl %eax,%ebx
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $4,%esp
	cmpl $27,%eax
	jne .L189
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $0
	call ExprParse__E0
	pushl %eax
	pushl %ebx
	movl MI_RangeExpr+44,%eax
	jmp .L194
	.align 16
.L189:
	cmpl $12,%eax
	jne .L190
	movl MI_Scanner+104,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_NamedExpr+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L192
	pushl $0
	call ExprParse__E0
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_KeywordExpr+44,%eax
.L194:
	call *%eax
	movl %eax,%ebx
	movl %esi,4(%ebx)
	jmp .L190
	.align 16
.L192:
	pushl $MM_ExprParse+352
	movl MI_Error+44,%eax
	call *%eax
.L190:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 ExprParse__EConstructor,.Lfe14-ExprParse__EConstructor
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ExprParse
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_ExprParse
.data
	.align 4
	.type	 MM_ExprParse,@object
	.size	 MM_ExprParse,816
MM_ExprParse:
	.long MM_ExprParse+668
	.zero	4
	.long MM_ExprParse+296
	.zero	8
	.long MM_ExprParse+496
	.zero	20
	.long ExprParse__E1
	.long ExprParse__E2
	.long ExprParse__E3
	.long ExprParse__E4
	.long ExprParse__E5
	.long 1982464
	.long 262144
	.long 16384
	.zero	4
	.long ExprParse__E6
	.long ExprParse__E8
	.long ExprParse__ESelector
	.long ExprParse__ParseArgList
	.long ExprParse__ParseConsList
	.long ExprParse__Expand
	.long ExprParse__EActual
	.long ExprParse__EConstructor
	.long ExprParse__E0
	.long 132120576
	.zero	4
	.long 64
	.zero	4
	.long 8960
	.zero	12
	.long 3072
	.long 4194304
	.long 2048
	.zero	4
	.long 2
	.long MM_ExprParse+176
	.long 23
	.ascii	"expected a constructor"
	.zero	2
	.long 2
	.long MM_ExprParse+212
	.long 27
	.ascii	"unexpected type expression"
	.zero	2
	.long 2
	.long MM_ExprParse+252
	.long 15
	.ascii	"bad expression"
	.zero	2
	.long 2
	.long MM_ExprParse+280
	.long 13
	.ascii	"bad selector"
	.zero	8
	.long 224582288
	.long 2
	.long MM_ExprParse+316
	.long 32
	.ascii	"array constructor has no values"
	.zero	1
	.long 2
	.long MM_ExprParse+360
	.long 42
	.ascii	"syntax error: expected 'keyword := value'"
	.zero	3
	.ascii	"EConstructor"
	.zero	1
	.ascii	"EActual"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"ParseConsList"
	.zero	1
	.ascii	"ParseArgList"
	.zero	1
	.ascii	"ESelector"
	.zero	1
	.ascii	"E8"
	.zero	1
	.ascii	"E6"
	.zero	1
	.ascii	"E5"
	.zero	1
	.ascii	"E4"
	.zero	1
	.ascii	"E3"
	.zero	1
	.ascii	"E2"
	.zero	1
	.ascii	"E1"
	.zero	1
	.ascii	"E0"
	.zero	4
	.long ExprParse__EConstructor
	.long MM_ExprParse+404
	.zero	4
	.long ExprParse__EActual
	.long MM_ExprParse+417
	.zero	4
	.long ExprParse__Expand
	.long MM_ExprParse+425
	.zero	4
	.long ExprParse__ParseConsList
	.long MM_ExprParse+432
	.zero	4
	.long ExprParse__ParseArgList
	.long MM_ExprParse+446
	.zero	4
	.long ExprParse__ESelector
	.long MM_ExprParse+459
	.zero	4
	.long ExprParse__E8
	.long MM_ExprParse+469
	.zero	4
	.long ExprParse__E6
	.long MM_ExprParse+472
	.zero	4
	.long ExprParse__E5
	.long MM_ExprParse+475
	.zero	4
	.long ExprParse__E4
	.long MM_ExprParse+478
	.zero	4
	.long ExprParse__E3
	.long MM_ExprParse+481
	.zero	4
	.long ExprParse__E2
	.long MM_ExprParse+484
	.zero	4
	.long ExprParse__E1
	.long MM_ExprParse+487
	.zero	4
	.long ExprParse__E0
	.long MM_ExprParse+490
	.long MI_ExprParse+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/ExprParse.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
