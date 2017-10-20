	.file	"Type.mc"
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
	.type	 Type__Initialize,@function
Type__Initialize:
	pushl %ebp
	movl MI_UserProc+48,%eax
	movl %esp,%ebp
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Type__Initialize,.Lfe1-Type__Initialize
	.align 16
	.type	 Type__Reset,@function
Type__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MI_Type+44
	movb $0,MM_Type+460
	movl $0,MM_Type+464
	movl MM_Type+468,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	call *%eax
	movl MM_Type+472,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	call *%eax
	movl MM_Type+476,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Type__Reset,.Lfe2-Type__Reset
.section	.rodata
	.align 4
	.type	 L_1.0,@object
	.size	 L_1.0,396
L_1.0:
	.long .L5
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L6
	.long .L7
	.long .L8
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L9
	.long .L4
	.long .L4
	.long .L4
	.long .L10
	.long .L4
	.long .L4
	.long .L11
	.long .L12
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L13
	.long .L4
	.long .L4
	.long .L4
	.long .L14
	.long .L4
	.long .L4
	.long .L4
	.long .L15
	.long .L16
	.long .L4
	.long .L4
	.long .L4
	.long .L17
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L4
	.long .L18
.text
	.align 16
	.type	 Type__Parse,@function
Type__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	decl %eax
	js .L4
	cmpl $98,%eax
	jg .L4
	jmp *L_1.0(,%eax,4)
	.align 16
.L5:
	movl MI_NamedType+44,%eax
	jmp .L23
	.align 16
.L10:
	movl MI_ArrayType+44,%eax
	jmp .L23
	.align 16
.L11:
	movl MI_PackedType+44,%eax
	jmp .L23
	.align 16
.L12:
	movl MI_RefType+44,%eax
	jmp .L23
	.align 16
.L8:
	movl MI_EnumType+44,%eax
	jmp .L23
	.align 16
.L18:
	movl MI_RefType+44,%eax
	jmp .L23
	.align 16
.L13:
	pushl $0
	pushl $1
	pushl $0
	jmp .L24
	.align 16
.L9:
	movl MI_ProcType+44,%eax
	jmp .L23
	.align 16
.L14:
	movl MI_ProcType+44,%eax
	jmp .L23
	.align 16
.L15:
	movl MI_RecordType+44,%eax
	jmp .L23
	.align 16
.L16:
	movl MI_RefType+44,%eax
	jmp .L23
	.align 16
.L17:
	movl MI_SetType+44,%eax
	jmp .L23
	.align 16
.L7:
	movl MI_SubrangeType+44,%eax
.L23:
	call *%eax
	movl %eax,%ebx
	jmp .L19
	.align 16
.L6:
	movl MI_Scanner+104,%eax
	call *%eax
	call Type__Parse
	movl %eax,%ebx
	pushl $29
	movl MI_Scanner+108,%eax
	call *%eax
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $4,%esp
	cmpl $50,%eax
	jne .L20
	movl MI_RefType+48,%eax
	call *%eax
	pushl %eax
	jmp .L25
	.align 16
.L20:
	cmpl $78,%eax
	jne .L19
	pushl $0
.L25:
	pushl $0
	pushl %ebx
.L24:
	movl MI_ObjectType+44,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L19
	.align 16
.L4:
	pushl $MM_Type+724
	movl MI_Scanner+116,%eax
	call *%eax
	xorl %ebx,%ebx
.L19:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Type__Parse,.Lfe3-Type__Parse
	.align 16
	.type	 TypeRep__Init,@function
TypeRep__Init:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Scanner+88,%eax
	movl 8(%ebp),%ecx
	movb 12(%ebp),%dl
	movl %eax,4(%ecx)
	movb %dl,34(%ecx)
	movl $-1,36(%ecx)
	movl $0,40(%ecx)
	movl $-1,44(%ecx)
	orw $4095,48(%ecx)
	andb $207,49(%ecx)
	movl MM_Type+464,%edx
	testl %edx,%edx
	jne .L27
	pushl $2004
	call _m3_fault
	.align 16
.L27:
	movl (%edx),%eax
	movl %eax,52(%ecx)
	movl %ecx,(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TypeRep__Init,.Lfe4-TypeRep__Init
	.align 16
	.type	 Type__SetModule,@function
Type__SetModule:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl MM_Type+464,%ebx
	testl %eax,%eax
	jne .L30
	movl MM_Type+752,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
.L30:
	movl %eax,MM_Type+464
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Type__SetModule,.Lfe5-Type__SetModule
	.align 16
	.type	 Type__Reorder,@function
Type__Reorder:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L32
	pushl $2228
	call _m3_fault
	.align 16
.L32:
	cmpb $0,20(%eax)
	jne .L31
	movl (%eax),%edx
	jmp .L35
	.align 16
.L36:
	movl 52(%edx),%eax
	movl %ecx,52(%edx)
	movl %edx,%ecx
	movl %eax,%edx
.L35:
	testl %edx,%edx
	jne .L36
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L38
	pushl $2372
	call _m3_fault
	.align 16
.L38:
	movl %ecx,(%eax)
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L39
	pushl $2388
	call _m3_fault
	.align 16
.L39:
	movb $1,20(%eax)
.L31:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Type__Reorder,.Lfe6-Type__Reorder
	.align 16
	.type	 Type__Check,@function
Type__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L41
	movl MI_ErrType+44,%ebx
.L41:
	testb $16,49(%ebx)
	jne .L42
	movswl 48(%ebx),%eax
	sall $20,%eax
	movl %eax,%esi
	sarl $20,%esi
	movl MI_Type+44,%edx
	cmpl %edx,%esi
	jne .L43
	pushl %ebx
	call Type__IllegalRecursion
	addl $4,%esp
	jmp .L42
	.align 16
.L43:
	movl MI_Scanner+88,%edi
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	leal 2048(%edx),%eax
	cmpl $4095,%eax
	jbe .L45
	pushl $2673
	call _m3_fault
	.align 16
.L45:
	movswl 48(%ebx),%eax
	andl $-4096,%eax
	andl $4095,%edx
	orw %ax,%dx
	movl (%ebx),%eax
	movw %dx,48(%ebx)
	movl 4(%eax),%eax
	pushl %ebx
	call *%eax
	movl %edi,MI_Scanner+88
	leal 2048(%esi),%eax
	addl $4,%esp
	cmpl $4095,%eax
	jbe .L46
	pushl $2721
	call _m3_fault
	.align 16
.L46:
	movswl 48(%ebx),%eax
	andl $-4096,%eax
	movl %esi,%edx
	andl $4095,%edx
	orw %ax,%dx
	movw %dx,48(%ebx)
	orb $16,49(%ebx)
.L42:
	cmpb $1,34(%ebx)
	jne .L47
	pushl %ebx
	call Type__Strip
	movl %eax,%ebx
.L47:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Type__Check,.Lfe7-Type__Check
	.align 16
	.type	 Type__CheckInfo,@function
Type__CheckInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call Type__Check
	movl 12(%ebp),%edi
	leal 16(%eax),%esi
	leal -8(%ebp),%esp
	cld
	movl $5,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Type__CheckInfo,.Lfe8-Type__CheckInfo
	.align 16
	.type	 Type__IsAlignedOk,@function
Type__IsAlignedOk:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	testl %edx,%edx
	je .L50
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	jmp .L51
	.align 16
.L50:
	movl $1,%eax
.L51:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Type__IsAlignedOk,.Lfe9-Type__IsAlignedOk
	.align 16
	.type	 Type__Strip,@function
Type__Strip:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %edi,%esi
	movl %edi,%ebx
	testl %ebx,%ebx
	je .L57
.L54:
	cmpb $1,34(%esi)
	je .L55
	movl %esi,%eax
	jmp .L60
	.align 16
.L55:
	pushl %esi
	movl MI_NamedType+56,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	cmpb $1,34(%ebx)
	jne .L57
	pushl %ebx
	movl MI_NamedType+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	cmpb $1,34(%ebx)
	jne .L57
	pushl %ebx
	movl MI_NamedType+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	cmpl %ebx,%esi
	jne .L54
	pushl %edi
	call Type__IllegalRecursion
	movl MI_ErrType+44,%eax
	jmp .L60
	.align 16
.L57:
	movl %ebx,%eax
.L60:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Type__Strip,.Lfe10-Type__Strip
	.align 16
	.type	 Type__StripPacked,@function
Type__StripPacked:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %edi,%esi
	movl %edi,%ebx
	testl %edi,%edi
	jne .L63
	movl %edi,%eax
	jmp .L75
	.align 16
.L63:
	xorl %eax,%eax
	movb 34(%esi),%al
	cmpl $1,%eax
	jne .L64
	pushl %esi
	movl MI_NamedType+56,%eax
	jmp .L76
	.align 16
.L64:
	cmpl $11,%eax
	je .L66
	movl %esi,%eax
	jmp .L75
	.align 16
.L66:
	pushl %esi
	movl MI_PackedType+56,%eax
.L76:
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	xorl %eax,%eax
	movb 34(%ebx),%al
	cmpl $1,%eax
	jne .L67
	pushl %ebx
	movl MI_NamedType+56,%eax
	jmp .L77
	.align 16
.L67:
	cmpl $11,%eax
	jne .L78
	pushl %ebx
	movl MI_PackedType+56,%eax
.L77:
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	xorl %eax,%eax
	movb 34(%ebx),%al
	cmpl $1,%eax
	jne .L70
	pushl %ebx
	movl MI_NamedType+56,%eax
	jmp .L79
	.align 16
.L70:
	cmpl $11,%eax
	je .L72
.L78:
	movl %ebx,%eax
	jmp .L75
	.align 16
.L72:
	pushl %ebx
	movl MI_PackedType+56,%eax
.L79:
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	cmpl %ebx,%esi
	jne .L63
	pushl %edi
	call Type__IllegalRecursion
	movl MI_ErrType+44,%eax
.L75:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Type__StripPacked,.Lfe11-Type__StripPacked
	.align 16
	.type	 Type__Base,@function
Type__Base:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %edi,%esi
	movl %edi,%ebx
	testl %edi,%edi
	jne .L82
	movl %edi,%eax
	jmp .L97
	.align 16
.L82:
	xorl %eax,%eax
	movb 34(%esi),%al
	cmpl $1,%eax
	jne .L83
	pushl %esi
	movl MI_NamedType+56,%eax
	jmp .L98
	.align 16
.L83:
	cmpl $16,%eax
	jne .L85
	pushl %esi
	movl MI_SubrangeType+56,%eax
	jmp .L98
	.align 16
.L85:
	cmpl $11,%eax
	je .L86
	movl %esi,%eax
	jmp .L97
	.align 16
.L86:
	pushl %esi
	movl MI_PackedType+56,%eax
.L98:
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	xorl %eax,%eax
	movb 34(%ebx),%al
	cmpl $1,%eax
	jne .L87
	pushl %ebx
	movl MI_NamedType+56,%eax
	jmp .L99
	.align 16
.L87:
	cmpl $16,%eax
	jne .L89
	pushl %ebx
	movl MI_SubrangeType+56,%eax
	jmp .L99
	.align 16
.L89:
	cmpl $11,%eax
	jne .L100
	pushl %ebx
	movl MI_PackedType+56,%eax
.L99:
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	xorl %eax,%eax
	movb 34(%ebx),%al
	cmpl $1,%eax
	jne .L91
	pushl %ebx
	movl MI_NamedType+56,%eax
	jmp .L101
	.align 16
.L91:
	cmpl $16,%eax
	jne .L93
	pushl %ebx
	movl MI_SubrangeType+56,%eax
	jmp .L101
	.align 16
.L93:
	cmpl $11,%eax
	je .L94
.L100:
	movl %ebx,%eax
	jmp .L97
	.align 16
.L94:
	pushl %ebx
	movl MI_PackedType+56,%eax
.L101:
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	cmpl %ebx,%esi
	jne .L82
	pushl %edi
	call Type__IllegalRecursion
	movl MI_ErrType+44,%eax
.L97:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Type__Base,.Lfe12-Type__Base
	.align 16
	.type	 Type__CGType,@function
Type__CGType:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movb 12(%ebp),%bl
	pushl %eax
	call Type__Check
	movl %eax,%edx
	testb %bl,%bl
	jne .L103
	xorl %eax,%eax
	movb 32(%edx),%al
	jmp .L104
	.align 16
.L103:
	movb 33(%eax),%al
	andl $255,%eax
.L104:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Type__CGType,.Lfe13-Type__CGType
.section	.rodata
	.align 4
	.type	 L_2.1,@object
	.size	 L_2.1,40
L_2.1:
	.long .L108
	.long .L107
	.long .L107
	.long .L107
	.long .L108
	.long .L109
	.long .L107
	.long .L108
	.long .L107
	.long .L110
.text
	.align 16
	.type	 Type__IsStructured,@function
Type__IsStructured:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L107
	xorl %eax,%eax
	movb 34(%edx),%al
	addl $-6,%eax
	js .L107
	cmpl $9,%eax
	jg .L107
	jmp *L_2.1(,%eax,4)
	.align 16
.L109:
	pushl %edx
	call Type__Base
	movl %eax,%edx
	pushl %edx
	call Type__IsStructured
	jmp .L112
	.align 16
.L108:
	movl $1,%eax
	jmp .L112
	.align 16
.L110:
	pushl %edx
	call Type__Check
	movl %eax,%edx
	movl MI_Target+96,%eax
	cmpl %eax,16(%edx)
	setg %al
	andl $255,%eax
	jmp .L112
	.align 16
.L107:
	xorl %eax,%eax
.L112:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Type__IsStructured,.Lfe14-Type__IsStructured
.section	.rodata
	.align 4
	.type	 L_3.2,@object
	.size	 L_3.2,68
L_3.2:
	.long .L114
	.long .L114
	.long .L115
	.long .L115
	.long .L115
	.long .L115
	.long .L114
	.long .L115
	.long .L115
	.long .L115
	.long .L114
	.long .L116
	.long .L115
	.long .L114
	.long .L115
	.long .L117
	.long .L115
.text
	.align 16
	.type	 Type__LoadScalar,@function
Type__LoadScalar:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call Type__Check
	movl %eax,%ebx
	xorl %eax,%eax
	movb 34(%ebx),%al
	addl $4,%esp
	jmp *L_3.2(,%eax,4)
	.align 16
.L115:
	movl 16(%ebx),%eax
	testl %eax,%eax
	jge .L123
	pushl $4513
	call _m3_fault
	.align 16
.L116:
	pushl %ebx
	call Type__IsStructured
	addl $4,%esp
	testl %eax,%eax
	jne .L113
	movl 16(%ebx),%edx
	testl %edx,%edx
	jge .L121
	pushl $4561
	call _m3_fault
	.align 16
.L121:
	pushl %edx
	pushl %eax
	jmp .L125
	.align 16
.L117:
	movl 16(%ebx),%eax
	cmpl %eax,MI_Target+96
	jl .L113
	testl %eax,%eax
	jge .L123
	pushl $4625
	call _m3_fault
	.align 16
.L123:
	pushl %eax
	pushl $0
.L125:
	xorl %eax,%eax
	movb 32(%ebx),%al
	pushl %eax
	movl MI_CG+376,%eax
	call *%eax
.L114:
.L113:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Type__LoadScalar,.Lfe15-Type__LoadScalar
	.align 16
	.type	 Type__BeginSetGlobals,@function
Type__BeginSetGlobals:
	pushl %ebp
	movl %esp,%ebp
	call Type__Reorder
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L127
	pushl $4788
	call _m3_fault
	.align 16
.L127:
	movl %eax,%edx
	movl (%edx),%eax
	movl %eax,12(%edx)
	movl MI_Module+88,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L129
	pushl $4804
	call _m3_fault
	.align 16
.L129:
	movl %edx,16(%eax)
	movl MM_Type+472,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	call *%eax
	movl MM_Type+488,%eax
	pushl %eax
	movl MI_Module+120,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Type__BeginSetGlobals,.Lfe16-Type__BeginSetGlobals
	.align 16
	.type	 Type__NoteCells,@function
Type__NoteCells:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Module+116,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L131
	pushl $4932
	call _m3_fault
	.align 16
.L131:
	movl 4(%eax),%ebx
	jmp .L132
	.align 16
.L133:
	pushl %ebx
	movl 4(%ebx),%eax
	pushl %eax
	pushl $MM_Type+472
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $12,%esp
	movl (%ebx),%ebx
.L132:
	testl %ebx,%ebx
	jne .L133
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Type__NoteCells,.Lfe17-Type__NoteCells
	.align 16
	.type	 Type__SetGlobals,@function
Type__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L138
	pushl $5076
	call _m3_fault
	.align 16
.L138:
	movl 12(%eax),%ebx
	jmp .L139
	.align 16
.L140:
	pushl %ebx
	call Type__Check
	movl %eax,%esi
	xorl %edx,%edx
	movb 34(%eax),%dl
	addl $4,%esp
	cmpl $14,%edx
	je .L141
	cmpl $8,%edx
	jne .L142
.L141:
	pushl %eax
	movl MM_Type+472,%eax
	pushl %eax
	movl MI_TypeTbl+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L142
	pushl %esi
	call Type__AddCell
	addl $4,%esp
.L142:
	movl 52(%ebx),%ebx
.L139:
	testl %ebx,%ebx
	je .L145
	cmpl %edi,4(%ebx)
	jle .L140
.L145:
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L146
	pushl $5252
	call _m3_fault
	.align 16
.L146:
	movl %ebx,12(%eax)
	testl %ebx,%ebx
	jne .L137
	movl MM_Type+472,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	call *%eax
.L137:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Type__SetGlobals,.Lfe18-Type__SetGlobals
	.align 16
	.type	 Type__AddCell,@function
Type__AddCell:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_Type+760,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%edx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L149
	pushl $5364
	call _m3_fault
	.align 16
.L149:
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L150
	pushl $5364
	call _m3_fault
	.align 16
.L150:
	movl 4(%eax),%eax
	movl %eax,(%ebx)
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L151
	pushl $5364
	call _m3_fault
	.align 16
.L151:
	movl %edx,%ebx
	movl %edx,4(%eax)
	movl %esi,4(%ebx)
	movl 16(%eax),%eax
	movl %eax,8(%ebx)
	pushl $0
	pushl $MM_Type+772
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_M3RT+272,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	addl $16,%esp
	movl %eax,12(%ebx)
	pushl %ebx
	pushl %esi
	pushl $MM_Type+472
	movl MI_TypeTbl+44,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Type__AddCell,.Lfe19-Type__AddCell
	.align 16
	.type	 Type__IsOrdinal,@function
Type__IsOrdinal:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	call Type__Check
	movb 34(%eax),%al
	movl $1,%ebx
	xorl %edx,%edx
	movb %al,%dl
	addl $4,%esp
	cmpl $2,%edx
	je .L157
	cmpl $16,%edx
	je .L157
	cmpl $7,%edx
	je .L157
	testb %al,%al
	je .L157
	cmpl $11,%edx
	jne .L158
	pushl %esi
	call Type__StripPacked
	pushl %eax
	call Type__IsOrdinal
	testl %eax,%eax
	jne .L157
.L158:
	xorl %ebx,%ebx
.L157:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Type__IsOrdinal,.Lfe20-Type__IsOrdinal
	.align 16
	.type	 Type__Number,@function
Type__Number:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	addl $4,%esp
	movb 34(%edx),%cl
	xorl %eax,%eax
	movb %cl,%al
	cmpl $16,%eax
	jne .L160
	leal -16(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_SubrangeType+52,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L162
	pushl $5728
	call _m3_fault
	.align 16
.L160:
	cmpl $7,%eax
	jne .L163
	pushl %edx
	movl MI_EnumType+60,%eax
	call *%eax
	movl %eax,%edx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_TInt+68,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L169
	pushl $5760
	call _m3_fault
	.align 16
.L163:
	cmpl $2,%eax
	jne .L165
	movl MI_Target+112,%eax
	movl %eax,-24(%ebp)
	movl MI_Target+116,%eax
	movl %eax,-20(%ebp)
	movl MI_Target+120,%eax
	movl %eax,-16(%ebp)
	movl MI_Target+124,%eax
	movl %eax,-12(%ebp)
	jmp .L162
	.align 16
.L165:
	testb %cl,%cl
	jne .L166
	movl 12(%ebp),%eax
	movl MI_TInt+44,%edx
	movl %edx,(%eax)
	movl MI_TInt+48,%edx
	movl %edx,4(%eax)
	jmp .L159
	.align 16
.L166:
	cmpl $11,%eax
	jne .L167
	pushl %edx
	call Type__StripPacked
	movl %eax,%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call Type__Number
	jmp .L159
	.align 16
.L167:
	pushl $MM_Type+796
	movl MI_Error+44,%eax
	call *%eax
	pushl $5936
	call _m3_fault
	.align 16
.L162:
	leal -8(%ebp),%esi
	pushl %esi
	leal -24(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%ebx
	pushl %ebx
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L168
	pushl %ebx
	pushl $MI_TInt+52
	pushl %esi
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L168
.L169:
	movl 12(%ebp),%eax
	movl -16(%ebp),%edx
	movl %edx,(%eax)
	movl -12(%ebp),%edx
	movl %edx,4(%eax)
	jmp .L159
	.align 16
.L168:
	pushl $MM_Type+868
	movl MI_Error+44,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl MI_Target+120,%eax
	movl %eax,(%edx)
	movl MI_Target+124,%eax
	movl %eax,4(%edx)
.L159:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Type__Number,.Lfe21-Type__Number
	.align 16
	.type	 Type__GetBounds,@function
Type__GetBounds:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	addl $4,%esp
	xorl %eax,%eax
	movb 34(%edx),%al
	cmpl $16,%eax
	jne .L171
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_SubrangeType+52,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L180
	pushl $6160
	call _m3_fault
	.align 16
.L171:
	cmpl $7,%eax
	jne .L173
	pushl %edx
	movl MI_EnumType+60,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_TInt+68,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L174
	pushl $6208
	call _m3_fault
	.align 16
.L174:
	movl 16(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+52
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L175
	pushl $6224
	call _m3_fault
	.align 16
.L175:
	movl 12(%ebp),%eax
	movl MI_TInt+44,%edx
	movl %edx,(%eax)
	movl MI_TInt+48,%edx
	movl %edx,4(%eax)
.L180:
	movl $1,%eax
	jmp .L178
	.align 16
.L173:
	cmpl $2,%eax
	jne .L176
	movl 12(%ebp),%edx
	movl MI_Target+112,%eax
	movl %eax,(%edx)
	movl MI_Target+116,%eax
	movl %eax,4(%edx)
	movl 16(%ebp),%edx
	movl MI_Target+120,%eax
	movl %eax,(%edx)
	movl MI_Target+124,%eax
	movl %eax,4(%edx)
	jmp .L180
	.align 16
.L176:
	cmpl $11,%eax
	je .L177
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
	xorl %eax,%eax
	jmp .L178
	.align 16
.L177:
	pushl %edx
	call Type__StripPacked
	movl %eax,%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call Type__GetBounds
.L178:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Type__GetBounds,.Lfe22-Type__GetBounds
	.align 16
	.type	 Type__IllegalRecursion,@function
Type__IllegalRecursion:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-4(%ebp)
	testb $32,49(%esi)
	jne .L183
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_NamedType+64,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L184
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+116,%eax
	jmp .L186
	.align 16
.L184:
	leal -12(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_NamedType+60,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L185
	pushl $MM_Type+908
	pushl %ebx
	movl MI_Error+56,%eax
	call *%eax
	jmp .L183
	.align 16
.L185:
	pushl $MM_Type+908
	movl MI_Error+44,%eax
.L186:
	call *%eax
.L183:
	leal -20(%ebp),%esp
	orb $32,49(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Type__IllegalRecursion,.Lfe23-Type__IllegalRecursion
	.align 16
	.type	 Type__IsEqual,@function
Type__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testl %ebx,%ebx
	je .L215
	testl %esi,%esi
	je .L215
	cmpl %esi,%ebx
	je .L213
	movb 34(%ebx),%cl
	movb %cl,-20(%ebp)
	movb 34(%esi),%cl
	movb %cl,-16(%ebp)
	cmpb $1,-20(%ebp)
	jne .L191
	pushl %ebx
	call Type__Strip
	movl %eax,%ebx
	addl $4,%esp
	movb 34(%ebx),%cl
	movb %cl,-20(%ebp)
.L191:
	cmpb $1,-16(%ebp)
	jne .L192
	pushl %esi
	call Type__Strip
	movl %eax,%esi
	addl $4,%esp
	movb 34(%esi),%cl
	movb %cl,-16(%ebp)
.L192:
	cmpl %esi,%ebx
	je .L213
	cmpb $0,-20(%ebp)
	je .L213
	cmpb $0,-16(%ebp)
	je .L213
	movb -20(%ebp),%cl
	cmpb %cl,-16(%ebp)
	je .L196
.L215:
	xorl %eax,%eax
	jmp .L214
	.align 16
.L196:
	movl 36(%ebx),%edx
	cmpl $-1,%edx
	je .L197
	movl 36(%esi),%eax
	cmpl $-1,%eax
	je .L197
	cmpl %eax,%edx
	sete %al
	andl $255,%eax
	jmp .L214
	.align 16
.L197:
	movl %edi,%edx
	jmp .L198
	.align 16
.L199:
	movl 4(%edx),%eax
	cmpl %ebx,%eax
	jne .L205
	cmpl %esi,8(%edx)
	jne .L204
	jmp .L213
	.align 16
.L205:
	cmpl %esi,%eax
	jne .L204
	cmpl %ebx,8(%edx)
	je .L213
.L204:
	testl %edx,%edx
	jne .L209
	pushl $7188
	call _m3_fault
	.align 16
.L209:
	movl (%edx),%edx
.L198:
	testl %edx,%edx
	jne .L199
	movl %edi,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %esi,-4(%ebp)
	movl (%ebx),%eax
	leal -12(%ebp),%edx
	movl 12(%eax),%eax
	pushl %edx
	pushl %esi
	pushl %ebx
	call *%eax
	testl %eax,%eax
	je .L214
	cmpl $-1,36(%ebx)
	jne .L212
	movl 8(%esi),%eax
	movl %eax,8(%ebx)
	movl 12(%esi),%eax
	movl %eax,12(%ebx)
	movl 36(%esi),%eax
	movl %eax,36(%ebx)
.L212:
	cmpl $-1,36(%esi)
	jne .L213
	movl 8(%ebx),%eax
	movl %eax,8(%esi)
	movl 12(%ebx),%eax
	movl %eax,12(%esi)
	movl 36(%ebx),%eax
	movl %eax,36(%esi)
.L213:
	movl $1,%eax
.L214:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Type__IsEqual,.Lfe24-Type__IsEqual
	.align 16
	.type	 Type__IsSubtype,@function
Type__IsSubtype:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	je .L217
	testl %esi,%esi
	jne .L218
.L217:
	xorl %eax,%eax
	jmp .L232
	.align 16
.L218:
	cmpl %esi,%ebx
	je .L234
	movb 34(%ebx),%cl
	movb %cl,-8(%ebp)
	movb 34(%esi),%cl
	movb %cl,-4(%ebp)
	cmpb $1,-8(%ebp)
	jne .L220
	pushl %ebx
	call Type__Strip
	movl %eax,%ebx
	addl $4,%esp
	movb 34(%ebx),%cl
	movb %cl,-8(%ebp)
.L220:
	cmpb $1,-4(%ebp)
	jne .L221
	pushl %esi
	call Type__Strip
	movl %eax,%esi
	addl $4,%esp
	movb 34(%esi),%cl
	movb %cl,-4(%ebp)
.L221:
	cmpb $0,-8(%ebp)
	je .L234
	cmpb $0,-4(%ebp)
	je .L234
	cmpb $11,-8(%ebp)
	jne .L224
	pushl %ebx
	call Type__StripPacked
	movl %eax,%ebx
	addl $4,%esp
.L224:
	cmpb $11,-4(%ebp)
	jne .L225
	pushl %esi
	call Type__StripPacked
	movl %eax,%esi
	addl $4,%esp
.L225:
	movl 36(%ebx),%edx
	cmpl $-1,%edx
	je .L226
	movl 36(%esi),%eax
	cmpl $-1,%eax
	jne .L227
.L226:
	pushl $0
	pushl %esi
	pushl %ebx
	call Type__IsEqual
	addl $12,%esp
	testl %eax,%eax
	je .L229
.L234:
	movl $1,%eax
	jmp .L232
	.align 16
.L227:
	cmpl %eax,%edx
	je .L234
.L229:
	movl (%ebx),%eax
	movl 16(%eax),%eax
	pushl %esi
	movl $1,%edi
	pushl %ebx
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L231
	pushl %esi
	pushl %ebx
	movl MI_OpaqueType+56,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	movl %eax,%edi
	andl $255,%edi
.L231:
	movl %edi,%eax
.L232:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Type__IsSubtype,.Lfe25-Type__IsSubtype
	.align 16
	.type	 Type__IsAssignable,@function
Type__IsAssignable:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl $0,-56(%ebp)
	movl $0,-52(%ebp)
	pushl $0
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	call Type__IsEqual
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	jne .L236
	movl 8(%ebp),%edx
	pushl %edx
	pushl %edi
	call Type__IsSubtype
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L237
.L236:
	movl $1,%eax
	jmp .L245
	.align 16
.L237:
	movl 8(%ebp),%edx
	pushl %edx
	call Type__IsOrdinal
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L238
	movl 8(%ebp),%edx
	pushl %edx
	call Type__Base
	movl %eax,%ebx
	pushl %edi
	call Type__Base
	pushl %esi
	pushl %eax
	pushl %ebx
	call Type__IsEqual
	movl %eax,%ebx
	addl $20,%esp
	testl %ebx,%ebx
	je .L242
	leal -40(%ebp),%eax
	pushl %eax
	leal -48(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call Type__GetBounds
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	je .L242
	leal -24(%ebp),%edx
	movl %edx,-60(%ebp)
	pushl %edx
	leal -32(%ebp),%ebx
	pushl %ebx
	pushl %edi
	call Type__GetBounds
	addl $12,%esp
	testl %eax,%eax
	je .L242
	movl -48(%ebp),%eax
	movl %eax,-16(%ebp)
	movl -44(%ebp),%eax
	movl %eax,-12(%ebp)
	pushl %ebx
	leal -16(%ebp),%esi
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L240
	movl -32(%ebp),%eax
	movl %eax,-16(%ebp)
	movl -28(%ebp),%eax
	movl %eax,-12(%ebp)
.L240:
	movl -40(%ebp),%eax
	movl %eax,-8(%ebp)
	movl -36(%ebp),%eax
	movl %eax,-4(%ebp)
	leal -8(%ebp),%ebx
	pushl %ebx
	movl -60(%ebp),%edx
	pushl %edx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L241
	movl -24(%ebp),%eax
	movl %eax,-8(%ebp)
	movl -20(%ebp),%eax
	movl %eax,-4(%ebp)
.L241:
	pushl %ebx
	pushl %esi
	movl MI_TInt+108,%eax
	call *%eax
	jmp .L245
	.align 16
.L238:
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	call Type__IsSubtype
	addl $8,%esp
	testl %eax,%eax
	je .L242
	movl $1,-64(%ebp)
	movl MI_Reff+44,%eax
	pushl %eax
	pushl %edi
	call Type__IsSubtype
	addl $8,%esp
	testl %eax,%eax
	jne .L243
	leal -52(%ebp),%eax
	pushl %eax
	leal -56(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_ArrayType+52,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	jne .L243
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %edi
	call Type__IsSubtype
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L244
	movl MI_Module+68,%eax
	call *%eax
	testl %eax,%eax
	je .L243
	pushl %esi
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %edi
	call Type__IsEqual
	testl %eax,%eax
	je .L243
.L244:
	movl %esi,-64(%ebp)
.L243:
	movl -64(%ebp),%eax
	jmp .L245
	.align 16
.L242:
	xorl %eax,%eax
.L245:
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Type__IsAssignable,.Lfe26-Type__IsAssignable
	.align 16
	.type	 Type__GlobalUID,@function
Type__GlobalUID:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	call Type__Check
	movl %eax,%ebx
	addl $4,%esp
	cmpl $-1,36(%ebx)
	jne .L247
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeFP+44,%eax
	call *%eax
.L247:
	testl %esi,%esi
	je .L248
	cmpl $-1,36(%esi)
	jne .L248
	movl 36(%ebx),%eax
	movl %eax,36(%esi)
	movl 8(%ebx),%eax
	movl %eax,8(%esi)
	movl 12(%ebx),%eax
	movl %eax,12(%esi)
.L248:
	leal -16(%ebp),%esp
	movl 36(%ebx),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Type__GlobalUID,.Lfe27-Type__GlobalUID
	.align 16
	.type	 Type__Name,@function
Type__Name:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Type__GlobalUID
	movl %eax,%ecx
	movb $95,-12(%ebp)
	movb $116,-11(%ebp)
	movl $9,%edx
	addl $4,%esp
.L250:
	movl %ecx,%eax
	andl $15,%eax
	cmpl $15,%eax
	jbe .L251
	pushl $8673
	call _m3_fault
	.align 16
.L251:
	movb MM_Type+636(%eax),%al
	movb %al,-12(%edx,%ebp)
	shrl $4,%ecx
	decl %edx
	cmpl $1,%edx
	jg .L250
	leal -12(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl $10,-16(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Type__Name,.Lfe28-Type__Name
	.align 16
	.type	 Type__CompileAll,@function
Type__CompileAll:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L255
	pushl $8804
	call _m3_fault
	.align 16
.L255:
	movl (%eax),%ebx
	jmp .L256
	.align 16
.L257:
	pushl %ebx
	call Type__Compile
	movl 52(%ebx),%ebx
	addl $4,%esp
.L256:
	testl %ebx,%ebx
	jne .L257
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Type__CompileAll,.Lfe29-Type__CompileAll
	.align 16
	.type	 Type__Compile,@function
Type__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl %edi
	call Type__Check
	movl %eax,%esi
	movl %esi,%ebx
	addl $4,%esp
	cmpb $0,MM_Type+460
	jne .L260
	call Type__InitCompilation
.L260:
	pushl %esi
	pushl %esi
	pushl $MM_Type+468
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	jne .L259
	pushl %ebx
	movl MM_Type+476,%eax
	pushl %eax
	movl MI_TypeTbl+48,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	je .L262
	pushl %ebx
	call Type__GlobalUID
	movl MI_Host+52,%edx
	movl %eax,%ecx
	movl (%edx),%eax
	movl 56(%eax),%esi
	pushl $1
	jmp .L265
	.align 16
.L262:
	movl MI_Scanner+88,%ebx
	movl 4(%edi),%eax
	movl %eax,MI_Scanner+88
	movl (%edi),%eax
	movl 20(%eax),%esi
	pushl %edi
	call *%esi
	movl MI_Module+72,%eax
	movl %ebx,MI_Scanner+88
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L259
	pushl %edi
	call Type__GlobalUID
	movl MI_Host+52,%edx
	movl %eax,%ecx
	movl (%edx),%eax
	movl 56(%eax),%esi
	pushl $0
.L265:
	pushl %ecx
	pushl %edx
	call *%esi
.L259:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Type__Compile,.Lfe30-Type__Compile
	.align 16
	.type	 Type__InitCompilation,@function
Type__InitCompilation:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movb $1,MM_Type+460
	movl MM_Type+468,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	call *%eax
	movl MM_Type+476,%eax
	pushl %eax
	movl MI_TypeTbl+52,%eax
	movl $MM_Type+468,%ebx
	call *%eax
	addl $8,%esp
	cmpb $0,MI_Host+70
	jne .L266
	movl MM_Type+504,%eax
	pushl %eax
	movl MI_Module+120,%eax
	call *%eax
	movl MI_Addr+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_Bool+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Bool+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $36,%esp
	movl MI_CChar+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_CChar+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_Card+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Card+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_EReel+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_EReel+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_Int+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Int+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_LReel+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_LReel+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_Mutex+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Mutex+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_Null+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Null+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_ObjectRef+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_ObjectRef+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_ObjectAdr+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_ObjectAdr+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_Reel+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Reel+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_Reff+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Reff+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	movl MI_Textt+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_Textt+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_ErrType+44,%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl MI_ErrType+44,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_TypeTbl+44,%eax
	call *%eax
.L266:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 Type__InitCompilation,.Lfe31-Type__InitCompilation
	.align 16
	.type	 Type__NoteTypes,@function
Type__NoteTypes:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Module+116,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L269
	pushl $9668
	call _m3_fault
	.align 16
.L269:
	movl (%eax),%ebx
	jmp .L270
	.align 16
.L271:
	cmpb $1,34(%ebx)
	je .L272
	pushl %ebx
	pushl %ebx
	pushl $MM_Type+476
	movl MI_TypeTbl+44,%eax
	call *%eax
	addl $12,%esp
.L272:
	movl 52(%ebx),%ebx
.L270:
	testl %ebx,%ebx
	jne .L271
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 Type__NoteTypes,.Lfe32-Type__NoteTypes
	.align 16
	.type	 Type__AddCellPtr,@function
Type__AddCellPtr:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_Type+952,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L275
	pushl $9876
	call _m3_fault
	.align 16
.L275:
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L276
	pushl $9876
	call _m3_fault
	.align 16
.L276:
	movl 8(%eax),%eax
	movl %eax,(%ebx)
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L277
	pushl $9876
	call _m3_fault
	.align 16
.L277:
	movl %ebx,8(%eax)
	movl %esi,4(%ebx)
	pushl $0
	pushl $MM_Type+964
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_Target+68,%edx
	movl %edx,%eax
	addl %edx,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,8(%ebx)
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 Type__AddCellPtr,.Lfe33-Type__AddCellPtr
	.align 16
	.type	 Type__FindCell,@function
Type__FindCell:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L281
	pushl $10004
	call _m3_fault
	.align 16
.L281:
	movl 8(%eax),%ebx
	pushl %edx
	call Type__Check
	movl %eax,%esi
	addl $4,%esp
.L282:
	testl %ebx,%ebx
	jne .L284
	pushl %esi
	call Type__AddCellPtr
	jmp .L288
	.align 16
.L284:
	pushl $0
	pushl %esi
	movl 4(%ebx),%eax
	pushl %eax
	call Type__IsEqual
	addl $12,%esp
	testl %eax,%eax
	jne .L286
	movl (%ebx),%ebx
	jmp .L282
	.align 16
.L286:
	movl %ebx,%eax
.L288:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 Type__FindCell,.Lfe34-Type__FindCell
	.align 16
	.type	 Type__LoadInfo,@function
Type__LoadInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	pushl %eax
	call Type__FindCell
	movl %eax,%edx
	pushl $0
	movl MI_Module+112,%eax
	movl %edx,%ebx
	call *%eax
	movl %eax,%edx
	movl %edx,%edi
	addl $8,%esp
	testl %esi,%esi
	jge .L290
	cmpb $0,16(%ebp)
	je .L291
	pushl $10240
	call _m3_fault
	.align 16
.L291:
	testl %ebx,%ebx
	jne .L292
	pushl $10260
	call _m3_fault
	.align 16
.L292:
	movl 8(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_CG+388,%eax
	call *%eax
	movl MI_M3RT+276,%eax
	jmp .L299
	.align 16
.L290:
	cmpl %esi,MI_M3RT+172
	jne .L294
	testl %ebx,%ebx
	jne .L295
	pushl $10308
	call _m3_fault
	.align 16
.L295:
	movl MI_Target+68,%eax
	addl 8(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_CG+380,%eax
	call *%eax
	jmp .L289
	.align 16
.L294:
	testl %ebx,%ebx
	jne .L296
	pushl $10340
	call _m3_fault
	.align 16
.L296:
	movl 8(%ebx),%eax
	pushl %eax
	pushl %edi
	movl MI_CG+388,%eax
	call *%eax
	movl MI_M3RT+276,%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	addl $12,%esp
	cmpb $0,16(%ebp)
	je .L297
	movl MI_Target+60,%eax
	pushl %eax
	pushl %esi
	pushl $0
	movl MI_CG+376,%eax
	call *%eax
	movl MI_Target+64,%eax
.L299:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	jmp .L289
	.align 16
.L297:
	movl MI_Target+96,%eax
	pushl %eax
	pushl %esi
	pushl $2
	movl MI_CG+376,%eax
	call *%eax
.L289:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 Type__LoadInfo,.Lfe35-Type__LoadInfo
	.align 16
	.type	 Type__InitCost,@function
Type__InitCost:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movb 12(%ebp),%bl
	pushl %eax
	call Type__Check
	movl %eax,%ecx
	movl (%ecx),%eax
	movl 24(%eax),%edx
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %ecx
	call *%edx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 Type__InitCost,.Lfe36-Type__InitCost
	.align 16
	.type	 Type__GenMap,@function
Type__GenMap:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl %edx,%esi
	addl $4,%esp
	movl 16(%edx),%ecx
	movl %ecx,-4(%ebp)
	testl %ebx,%ebx
	jge .L302
	movl -4(%ebp),%ebx
.L302:
	cmpb $0,20(%ebp)
	je .L303
	testb $1,35(%edx)
	je .L301
.L303:
	movl (%edx),%eax
	movl 32(%eax),%edx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	movl -4(%ebp),%eax
	cmpl %ebx,%eax
	jle .L304
	movl %ebx,%eax
.L304:
	pushl %eax
	pushl %edi
	pushl %esi
	call *%edx
.L301:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 Type__GenMap,.Lfe37-Type__GenMap
	.align 16
	.type	 Type__GenDesc,@function
Type__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call Type__Check
	movl %eax,%edx
	movl (%edx),%eax
	movl 36(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 Type__GenDesc,.Lfe38-Type__GenDesc
	.align 16
	.type	 Type__GenTag,@function
Type__GenTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl %eax
	call Type__Name
	pushl $0
	pushl $0
	pushl %eax
	pushl %ebx
	pushl %esi
	movl MI_CG+788,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 Type__GenTag,.Lfe39-Type__GenTag
	.align 16
	.type	 Type__GenCells,@function
Type__GenCells:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MM_Type+464,%eax
	testl %eax,%eax
	jne .L308
	pushl $10916
	call _m3_fault
	.align 16
.L308:
	movl 4(%eax),%ebx
	xorl %esi,%esi
	jmp .L309
	.align 16
.L310:
	movl 4(%ebx),%eax
	pushl %eax
	call Type__Name
	addl $4,%esp
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_Type+992
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_CG+788,%eax
	call *%eax
	movl 4(%ebx),%edx
	addl $20,%esp
	cmpb $14,34(%edx)
	jne .L319
	pushl %esi
	movl 12(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_RefType+76,%eax
	jmp .L323
	.align 16
.L319:
	pushl %esi
	movl 12(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_ObjectType+88,%eax
.L323:
	call *%eax
	addl $12,%esp
	testl %ebx,%ebx
	jne .L320
	pushl $11044
	call _m3_fault
	.align 16
.L320:
	movl 12(%ebx),%esi
	movl (%ebx),%ebx
.L309:
	testl %ebx,%ebx
	jne .L310
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 Type__GenCells,.Lfe40-Type__GenCells
	.align 16
	.type	 Type__GenCellPtrs,@function
Type__GenCellPtrs:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	pushl $0
	movl MI_Module+112,%eax
	call *%eax
	movl %eax,%esi
	movl MM_Type+464,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L325
	pushl $11188
	call _m3_fault
	.align 16
.L325:
	movl 8(%eax),%ebx
	xorl %eax,%eax
	jmp .L326
	.align 16
.L327:
	testl %eax,%eax
	je .L330
	pushl %eax
	pushl %esi
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_CG+268,%eax
	call *%eax
	addl $12,%esp
.L330:
	movl 4(%ebx),%eax
	pushl %eax
	call Type__GlobalUID
	addl $4,%esp
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	movl MI_Target+68,%eax
	addl 8(%ebx),%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl $12,%esp
	movl 8(%ebx),%eax
	movl (%ebx),%ebx
.L326:
	testl %ebx,%ebx
	jne .L327
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 Type__GenCellPtrs,.Lfe41-Type__GenCellPtrs
	.align 16
	.type	 Type__InitValue,@function
Type__InitValue:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-4(%ebp)
	pushl %esi
	call Type__Check
	movl %eax,%ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl %ebx,%esi
	pushl %ebx
	call Type__InitCost
	movl %eax,%edi
	addl $12,%esp
	testl %edi,%edi
	jne .L336
	movl -4(%ebp),%edx
	pushl %edx
	movl MI_CG+640,%eax
	call *%eax
	jmp .L335
	.align 16
.L336:
	cmpb $0,12(%ebp)
	jne .L337
	pushl $1
	pushl %ebx
	call Type__InitCost
	addl $8,%esp
	testl %eax,%eax
	jne .L338
	movl 24(%ebx),%eax
	testl %eax,%eax
	jge .L339
	pushl $11681
	call _m3_fault
	.align 16
.L339:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	pushl %ebx
	call Type__Zero
	jmp .L335
	.align 16
.L338:
	addl %eax,%eax
	cmpl %edi,%eax
	jge .L337
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	movl 24(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L341
	pushl $11793
	call _m3_fault
	.align 16
.L341:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	pushl %esi
	call Type__Zero
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	movl 24(%esi),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L342
	pushl $11841
	call _m3_fault
	.align 16
.L342:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl (%esi),%eax
	movl 28(%eax),%ebx
	pushl $1
	pushl %esi
	call *%ebx
	movl -4(%ebp),%edx
	pushl %edx
	movl MI_CG+232,%eax
	call *%eax
	jmp .L335
	.align 16
.L337:
	movl (%esi),%eax
	movl 28(%eax),%ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call *%ebx
.L335:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe42:
	.size	 Type__InitValue,.Lfe42-Type__InitValue
.section	.rodata
	.align 4
	.type	 L_6.3,@object
	.size	 L_6.3,60
L_6.3:
	.long .L346
	.long .L347
	.long .L348
	.long .L349
	.long .L345
	.long .L346
	.long .L350
	.long .L350
	.long .L345
	.long .L345
	.long .L350
	.long .L345
	.long .L350
	.long .L351
	.long .L346
.text
	.align 16
	.type	 Type__Zero,@function
Type__Zero:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L344:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Type__Check
	movl %eax,%esi
	pushl %esi
	call Type__Base
	movl %eax,%edx
	addl $8,%esp
	movl 16(%esi),%ebx
	xorl %eax,%eax
	movb 34(%edx),%al
	addl $-2,%eax
	js .L345
	jmp *L_6.3(,%eax,4)
	.align 16
.L346:
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jge .L352
	pushl $12145
	call _m3_fault
	.align 16
.L352:
	pushl %ebx
	pushl $0
	xorl %eax,%eax
	movb 32(%esi),%al
	pushl %eax
	jmp .L368
	.align 16
.L347:
	pushl $MI_TFloat+44
	movl MI_CG+432,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jge .L354
	pushl $12193
	call _m3_fault
	.align 16
.L354:
	pushl %ebx
	pushl $0
	pushl $3
	jmp .L368
	.align 16
.L348:
	pushl $MI_TFloat+60
	movl MI_CG+432,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jge .L355
	pushl $12241
	call _m3_fault
	.align 16
.L355:
	pushl %ebx
	pushl $0
	pushl $4
	jmp .L368
	.align 16
.L349:
	pushl $MI_TFloat+76
	movl MI_CG+432,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jge .L356
	pushl $12289
	call _m3_fault
	.align 16
.L356:
	pushl %ebx
	pushl $0
	pushl $5
	jmp .L368
	.align 16
.L350:
	movl MI_CG+416,%eax
	call *%eax
	testl %ebx,%ebx
	jge .L357
	pushl $12337
	call _m3_fault
	.align 16
.L357:
	pushl %ebx
	pushl $0
	pushl $0
	jmp .L368
	.align 16
.L351:
	movl MI_Target+96,%eax
	cmpl %eax,%ebx
	jg .L358
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jge .L359
	pushl $12401
	call _m3_fault
	.align 16
.L359:
	pushl %ebx
	pushl $0
	pushl $2
.L368:
	movl MI_CG+400,%eax
	call *%eax
	jmp .L367
	.align 16
.L358:
	sall $3,%eax
	cmpl %ebx,%eax
	jge .L369
	testl %ebx,%ebx
	jge .L366
	pushl $12465
	call _m3_fault
	.align 16
.L345:
	testl %ebx,%ebx
	jg .L363
	pushl $0
	movl MI_CG+640,%eax
	jmp .L370
	.align 16
.L363:
	movl MI_Target+96,%ecx
	leal 0(,%ecx,8),%eax
	cmpl %ebx,%eax
	jl .L365
	movl MI_Target+100,%eax
	cmpl %eax,24(%edx)
	jl .L365
	pushl %ebx
	pushl %eax
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jne .L365
.L369:
	pushl %ebx
	call Type__ZeroWords
	jmp .L367
	.align 16
.L365:
	testl %ebx,%ebx
	jge .L366
	pushl $12625
	call _m3_fault
	.align 16
.L366:
	pushl %ebx
	movl MI_CG+652,%eax
.L370:
	call *%eax
.L367:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 Type__Zero,.Lfe43-Type__Zero
	.align 16
	.type	 Type__ZeroWords,@function
Type__ZeroWords:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_CG+220,%eax
	movl 8(%ebp),%esi
	call *%eax
	movl %eax,%edi
	xorl %ebx,%ebx
	jmp .L372
	.align 16
.L373:
	pushl %edi
	movl MI_CG+228,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	call *%eax
	movl MI_Target+96,%eax
	pushl %eax
	pushl %ebx
	pushl $2
	movl MI_CG+400,%eax
	call *%eax
	movl MI_Target+96,%eax
	addl %eax,%ebx
	subl %eax,%esi
	addl $20,%esp
.L372:
	cmpl %esi,MI_Target+96
	jle .L373
	pushl %edi
	movl MI_CG+232,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 Type__ZeroWords,.Lfe44-Type__ZeroWords
	.align 16
	.type	 TypeRep__NeverEqual,@function
TypeRep__NeverEqual:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	jne .L376
	pushl $12976
	call _m3_fault
	.align 16
.L376:
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe45:
	.size	 TypeRep__NeverEqual,.Lfe45-TypeRep__NeverEqual
	.align 16
	.type	 TypeRep__NoSubtypes,@function
TypeRep__NoSubtypes:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 TypeRep__NoSubtypes,.Lfe46-TypeRep__NoSubtypes
	.align 16
	.type	 TypeRep__InitToZeros,@function
TypeRep__InitToZeros:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,12(%ebp)
	jne .L379
	pushl %eax
	call Type__Zero
	jmp .L378
	.align 16
.L379:
	pushl $0
	movl MI_CG+640,%eax
	call *%eax
.L378:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 TypeRep__InitToZeros,.Lfe47-TypeRep__InitToZeros
	.align 16
	.type	 TypeRep__GenRefMap,@function
TypeRep__GenRefMap:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	pushl %eax
	call Type__Check
	addl $4,%esp
	cmpl %ebx,MI_Target+60
	je .L382
	pushl $13312
	call _m3_fault
	.align 16
.L382:
	movb 35(%eax),%al
	andl $255,%eax
	andl $1,%eax
	je .L383
	pushl $0
	pushl $4
	jmp .L386
	.align 16
.L383:
	cmpb $0,20(%ebp)
	jne .L381
	pushl %eax
	pushl $5
.L386:
	pushl %esi
	movl MI_TipeMap+52,%eax
	call *%eax
.L381:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe48:
	.size	 TypeRep__GenRefMap,.Lfe48-TypeRep__GenRefMap
	.align 16
	.type	 TypeRep__GenRefDesc,@function
TypeRep__GenRefDesc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Type__Check
	movl %eax,%ebx
	pushl %ebx
	xorl %eax,%eax
	movb 35(%ebx),%al
	andl $1,%eax
	movb MM_Type+544(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_TipeDesc+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L387
	pushl %ebx
	call Type__GlobalUID
	pushl %eax
	movl MI_TipeDesc+56,%eax
	call *%eax
.L387:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe49:
	.size	 TypeRep__GenRefDesc,.Lfe49-TypeRep__GenRefDesc
	.align 16
	.type	 TypeRep__ScalarAlign,@function
TypeRep__ScalarAlign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
.L390:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Type__Check
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	pushl %ebx
	movl 24(%edx),%eax
	pushl %eax
	call m3_mod
	testl %eax,%eax
	sete %al
	andl $255,%eax
.L391:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe50:
	.size	 TypeRep__ScalarAlign,.Lfe50-TypeRep__ScalarAlign
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Type
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe51:
	.size	 _m3_fault,.Lfe51-_m3_fault
.globl MM_Type
.data
	.align 4
	.type	 MM_Type,@object
	.size	 MM_Type,2456
MM_Type:
	.long MM_Type+2112
	.long MM_Type+44
	.long MM_Type+752
	.long MM_Type+700
	.zero	4
	.long MM_Type+1500
	.zero	4
	.long MM_Type+2104
	.long MM_Type+2104
	.zero	16
	.long -2135607957
.byte 122
.byte 131
.byte 79
.byte 158
.byte 17
.byte 182
.byte 250
.byte 30
	.zero	8
	.long 12
	.long 4
	.zero	20
	.long MM_Type+2413
	.long MM_Type+2417
	.zero	28
	.long MM_Type+2421
	.long MM_Type+2437
	.long MM_Type+148
	.zero	8
	.long 15261541
.byte 226
.byte 231
.byte 191
.byte 31
.byte 135
.byte 56
.byte 87
.byte 31
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_Type+2357
	.long MM_Type+2362
	.long MM_Type+2366
	.zero	24
	.long MM_Type+2385
	.long MM_Type+2399
	.long MM_Type+252
	.zero	8
	.long 1787626455
.byte 28
.byte 238
.byte 248
.byte 103
.byte 203
.byte 237
.byte 117
.byte 13
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_Type+2323
	.long MM_Type+2327
	.long MM_Type+2330
	.zero	28
	.long MM_Type+2344
	.long MM_Type+356
	.zero	8
	.long 755338313
.byte 138
.byte 30
.byte 219
.byte 62
.byte 195
.byte 146
.byte 222
.byte 19
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	20
	.long MM_Type+2253
	.long MM_Type+2260
	.long MM_Type+2266
	.zero	24
	.long MM_Type+2291
	.long MM_Type+2307
	.zero	24
	.long Type__Reorder
	.long Type__StripPacked
	.long Type__NoteCells
	.long Type__AddCell
	.long Type__IllegalRecursion
	.long Type__InitCompilation
	.long Type__NoteTypes
	.long Type__AddCellPtr
	.long Type__FindCell
	.long Type__ZeroWords
	.long TypeRep__Init
	.long TypeRep__NeverEqual
	.long TypeRep__NoSubtypes
	.long TypeRep__InitToZeros
	.long TypeRep__GenRefMap
	.long TypeRep__GenRefDesc
.byte 20
.byte 16
	.zero	2
	.long TypeRep__ScalarAlign
	.long Type__Initialize
	.long Type__Reset
	.long Type__Parse
	.long Type__SetModule
	.long Type__Check
	.long Type__CheckInfo
	.long Type__IsAlignedOk
	.long Type__Strip
	.long Type__Base
	.long Type__CGType
	.long Type__IsStructured
	.long Type__LoadScalar
	.long Type__BeginSetGlobals
	.long Type__SetGlobals
	.long Type__IsOrdinal
	.long Type__Number
	.long Type__GetBounds
	.long Type__IsEqual
	.long Type__IsSubtype
	.long Type__IsAssignable
	.long Type__Name
.byte 48
.byte 49
.byte 50
.byte 51
.byte 52
.byte 53
.byte 54
.byte 55
.byte 56
.byte 57
.byte 97
.byte 98
.byte 99
.byte 100
.byte 101
.byte 102
	.long Type__GlobalUID
	.long Type__CompileAll
	.long Type__Compile
	.long Type__LoadInfo
	.long Type__InitValue
	.long Type__Zero
	.long Type__InitCost
	.long Type__GenMap
	.long Type__GenDesc
	.long Type__GenTag
	.long Type__GenCells
	.long Type__GenCellPtrs
	.long -259638590
	.long 755338313
	.long 1282299353
	.long -2135607957
	.zero	4
	.long 2
	.long MM_Type+732
	.long 20
	.ascii	"bad type expression"
	.zero	1
	.long MM_Type+760
	.long -259638590
	.long MM_Type+952
	.long 15261541
	.long 2
	.long MM_Type+780
	.long 9
	.ascii	"typecell"
	.zero	4
	.long 2
	.long MM_Type+804
	.long 58
	.ascii	"INTERNAL ERROR: Type.Number applied to a non-ordinal type"
	.zero	3
	.long 2
	.long MM_Type+876
	.long 27
	.ascii	"type has too many elements"
	.zero	2
	.long 2
	.long MM_Type+916
	.long 35
	.ascii	"illegal recursive type declaration"
	.zero	6
	.long 1787626455
	.long 2
	.long MM_Type+972
	.long 13
	.ascii	"typecell ptr"
	.zero	4
	.long 2
	.long MM_Type+1000
	.long 14
	.ascii	"typecell for "
	.zero	3
	.ascii	"ScalarAlign"
	.zero	1
	.ascii	"GenRefDesc"
	.zero	1
	.ascii	"GenRefMap"
	.zero	1
	.ascii	"InitToZeros"
	.zero	1
	.ascii	"NoSubtypes"
	.zero	1
	.ascii	"NeverEqual"
	.zero	1
	.ascii	"ZeroWords"
	.zero	1
	.ascii	"Zero"
	.zero	1
	.ascii	"InitValue"
	.zero	1
	.ascii	"GenCellPtrs"
	.zero	1
	.ascii	"GenCells"
	.zero	1
	.ascii	"GenTag"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"InitCost"
	.zero	1
	.ascii	"LoadInfo"
	.zero	1
	.ascii	"FindCell"
	.zero	1
	.ascii	"AddCellPtr"
	.zero	1
	.ascii	"NoteTypes"
	.zero	1
	.ascii	"InitCompilation"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"CompileAll"
	.zero	1
	.ascii	"Name"
	.zero	1
	.ascii	"GlobalUID"
	.zero	1
	.ascii	"IsAssignable"
	.zero	1
	.ascii	"IsSubtype"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"IllegalRecursion"
	.zero	1
	.ascii	"GetBounds"
	.zero	1
	.ascii	"Number"
	.zero	1
	.ascii	"IsOrdinal"
	.zero	1
	.ascii	"AddCell"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"NoteCells"
	.zero	1
	.ascii	"BeginSetGlobals"
	.zero	1
	.ascii	"LoadScalar"
	.zero	1
	.ascii	"IsStructured"
	.zero	1
	.ascii	"CGType"
	.zero	1
	.ascii	"Base"
	.zero	1
	.ascii	"StripPacked"
	.zero	1
	.ascii	"Strip"
	.zero	1
	.ascii	"IsAlignedOk"
	.zero	1
	.ascii	"CheckInfo"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Reorder"
	.zero	1
	.ascii	"SetModule"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Initialize"
	.zero	4
	.long TypeRep__ScalarAlign
	.long MM_Type+1016
	.long MI_TypeRep+172
	.long TypeRep__GenRefDesc
	.long MM_Type+1028
	.long MI_TypeRep+168
	.long TypeRep__GenRefMap
	.long MM_Type+1039
	.long MI_TypeRep+164
	.long TypeRep__InitToZeros
	.long MM_Type+1049
	.long MI_TypeRep+160
	.long TypeRep__NoSubtypes
	.long MM_Type+1061
	.long MI_TypeRep+156
	.long TypeRep__NeverEqual
	.long MM_Type+1072
	.long MI_TypeRep+152
	.long Type__ZeroWords
	.long MM_Type+1083
	.zero	4
	.long Type__Zero
	.long MM_Type+1093
	.long MI_Type+152
	.long Type__InitValue
	.long MM_Type+1098
	.long MI_Type+148
	.long Type__GenCellPtrs
	.long MM_Type+1108
	.long MI_Type+176
	.long Type__GenCells
	.long MM_Type+1120
	.long MI_Type+172
	.long Type__GenTag
	.long MM_Type+1129
	.long MI_Type+168
	.long Type__GenDesc
	.long MM_Type+1136
	.long MI_Type+164
	.long Type__GenMap
	.long MM_Type+1144
	.long MI_Type+160
	.long Type__InitCost
	.long MM_Type+1151
	.long MI_Type+156
	.long Type__LoadInfo
	.long MM_Type+1160
	.long MI_Type+144
	.long Type__FindCell
	.long MM_Type+1169
	.zero	4
	.long Type__AddCellPtr
	.long MM_Type+1178
	.zero	4
	.long Type__NoteTypes
	.long MM_Type+1189
	.zero	4
	.long Type__InitCompilation
	.long MM_Type+1199
	.zero	4
	.long Type__Compile
	.long MM_Type+1215
	.long MI_Type+140
	.long Type__CompileAll
	.long MM_Type+1223
	.long MI_Type+136
	.long Type__Name
	.long MM_Type+1234
	.long MI_Type+128
	.long Type__GlobalUID
	.long MM_Type+1239
	.long MI_Type+132
	.long Type__IsAssignable
	.long MM_Type+1249
	.long MI_Type+124
	.long Type__IsSubtype
	.long MM_Type+1262
	.long MI_Type+120
	.long Type__IsEqual
	.long MM_Type+1272
	.long MI_Type+116
	.long Type__IllegalRecursion
	.long MM_Type+1280
	.zero	4
	.long Type__GetBounds
	.long MM_Type+1297
	.long MI_Type+112
	.long Type__Number
	.long MM_Type+1307
	.long MI_Type+108
	.long Type__IsOrdinal
	.long MM_Type+1314
	.long MI_Type+104
	.long Type__AddCell
	.long MM_Type+1324
	.zero	4
	.long Type__SetGlobals
	.long MM_Type+1332
	.long MI_Type+100
	.long Type__NoteCells
	.long MM_Type+1343
	.zero	4
	.long Type__BeginSetGlobals
	.long MM_Type+1353
	.long MI_Type+96
	.long Type__LoadScalar
	.long MM_Type+1369
	.long MI_Type+92
	.long Type__IsStructured
	.long MM_Type+1380
	.long MI_Type+88
	.long Type__CGType
	.long MM_Type+1393
	.long MI_Type+84
	.long Type__Base
	.long MM_Type+1400
	.long MI_Type+80
	.long Type__StripPacked
	.long MM_Type+1405
	.zero	4
	.long Type__Strip
	.long MM_Type+1417
	.long MI_Type+76
	.long Type__IsAlignedOk
	.long MM_Type+1423
	.long MI_Type+72
	.long Type__CheckInfo
	.long MM_Type+1435
	.long MI_Type+68
	.long Type__Check
	.long MM_Type+1445
	.long MI_Type+64
	.long Type__Reorder
	.long MM_Type+1451
	.zero	4
	.long Type__SetModule
	.long MM_Type+1459
	.long MI_Type+60
	.long TypeRep__Init
	.long MM_Type+1469
	.long MI_TypeRep+148
	.long Type__Parse
	.long MM_Type+1474
	.long MI_Type+56
	.long Type__Reset
	.long MM_Type+1480
	.long MI_Type+52
	.long Type__Initialize
	.long MM_Type+1486
	.long MI_Type+48
	.zero	4
.byte 43
.byte 208
.byte 1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/Type.m3"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 16
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 7
.byte 15
.byte 6
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 101
.byte 223
.byte 232
.byte 0
.byte 16
.byte 215
.byte 3
.byte 141
.byte 106
.byte 23
.byte 16
.byte 218
.byte 241
.byte 152
.byte 186
.byte 2
	.ascii	"Type.ModuleInfo"
	.zero	1
	.ascii	"Type.ModuleInfo"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 0
.byte 4
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 16
.byte 215
.byte 3
.byte 141
.byte 106
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 7
	.ascii	"Type.CellPtr"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 14
.byte 0
.byte 4
.byte 4
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 16
.byte 101
.byte 223
.byte 232
.byte 0
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 218
.byte 241
.byte 152
.byte 186
.byte 7
	.ascii	"Type.CellInfo"
	.zero	1
	.ascii	"Type.CellInfo"
	.zero	1
.byte 5
.byte 4
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 0
	.ascii	"Type.Assumption"
	.zero	1
	.ascii	"Type.Assumption"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
