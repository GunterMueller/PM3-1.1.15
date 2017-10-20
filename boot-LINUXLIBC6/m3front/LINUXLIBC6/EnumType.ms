	.file	"EnumType.mc"
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
	.type	 EnumType__Parse,@function
EnumType__Parse:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	movl MI_Scope+52,%eax
	call *%eax
	pushl %eax
	call EnumType__Create
	movl %eax,%ebx
	pushl $19
	movl MI_Scanner+108,%eax
	xorl %edi,%edi
	call *%eax
	addl $24,%esp
	cmpb $1,MI_Scanner+44
	jne .L2
	movl MI_Ident+160,%eax
	call *%eax
	movl %eax,%edi
	movl MI_Ident+156,%ecx
	subl %edi,%ecx
	movl %ecx,-12(%ebp)
	xorl %esi,%esi
	leal -1(%edi),%ecx
	movl %ecx,-16(%ebp)
	jmp .L3
	.align 16
.L4:
	leal -8(%ebp),%ecx
	movl %ecx,-20(%ebp)
	pushl %ecx
	pushl %esi
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testb %al,%al
	jne .L5
	pushl $752
	call _m3_fault
	.align 16
.L5:
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L6
	pushl $772
	call _m3_fault
	.align 16
.L6:
	movl -12(%ebp),%edx
	addl %esi,%edx
	cmpl %edx,4(%eax)
	ja .L7
	pushl $770
	call _m3_fault
	.align 16
.L7:
	pushl %ebx
	movl -20(%ebp),%ecx
	pushl %ecx
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	pushl %eax
	movl MI_EnumElt+44,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+72,%eax
	call *%eax
	incl %esi
	addl $16,%esp
.L3:
	cmpl %esi,-16(%ebp)
	jge .L4
	subl %edi,MI_Ident+156
.L2:
	pushl $31
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Scope+48,%eax
	call *%eax
	movl %edi,56(%ebx)
	pushl %ebx
	call EnumType__SetRep
	leal -32(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 EnumType__Parse,.Lfe1-EnumType__Parse
	.align 16
	.type	 EnumType__New,@function
EnumType__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	call EnumType__Create
	movl %eax,%esi
	movl %ebx,56(%esi)
	pushl %esi
	call EnumType__SetRep
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 EnumType__New,.Lfe2-EnumType__New
	.align 16
	.type	 EnumType__Reduce,@function
EnumType__Reduce:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L14
	cmpb $1,34(%edx)
	jne .L12
	pushl %edx
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
.L12:
	cmpb $7,34(%edx)
	je .L13
	xorl %eax,%eax
	jmp .L16
	.align 16
.L13:
	testl %edx,%edx
	je .L14
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_EnumType+224
	jg .L15
	movl MM_EnumType+220,%eax
	cmpl %ecx,4(%eax)
	jge .L14
.L15:
	pushl $1173
	call _m3_fault
	.align 16
.L14:
	movl %edx,%eax
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 EnumType__Reduce,.Lfe3-EnumType__Reduce
	.align 16
	.type	 EnumType__Is,@function
EnumType__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call EnumType__Reduce
	testl %eax,%eax
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 EnumType__Is,.Lfe4-EnumType__Is
	.align 16
	.type	 EnumType__LookUp,@function
EnumType__LookUp:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl %eax
	call EnumType__Reduce
	addl $4,%esp
	testl %eax,%eax
	je .L19
	pushl $1
	pushl %ebx
	movl 60(%eax),%eax
	pushl %eax
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,(%esi)
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L19:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 EnumType__LookUp,.Lfe5-EnumType__LookUp
	.align 16
	.type	 EnumType__NumElts,@function
EnumType__NumElts:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L22
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumType+224
	jg .L23
	movl MM_EnumType+220,%eax
	cmpl %edx,4(%eax)
	jge .L22
.L23:
	pushl $1445
	call _m3_fault
	.align 16
.L22:
	movl 56(%ecx),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 EnumType__NumElts,.Lfe6-EnumType__NumElts
	.align 16
	.type	 EnumType__Create,@function
EnumType__Create:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_EnumType+220,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $7
	movl %eax,%esi
	pushl %esi
	movl MI_TypeRep+148,%eax
	call *%eax
	movl %ebx,60(%esi)
	movl $0,56(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 EnumType__Create,.Lfe7-EnumType__Create
	.align 16
	.type	 EnumType__SetRep,@function
EnumType__SetRep:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	leal -8(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %eax
	movl 56(%esi),%eax
	decl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L26
	pushl $MM_EnumType+232
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L26:
	xorl %ebx,%ebx
.L27:
	leal (%ebx,%ebx,8),%eax
	movl MI_TargetMap+316,%edx
	leal 28(%edx,%eax,4),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_TInt+108,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L28
	movb %bl,64(%esi)
	jmp .L25
	.align 16
.L28:
	incl %ebx
	cmpl $7,%ebx
	jle .L27
	movb $7,64(%esi)
.L25:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 EnumType__SetRep,.Lfe8-EnumType__SetRep
	.align 16
	.type	 EnumType__Check,@function
EnumType__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal -24(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %eax
	movl 60(%esi),%eax
	pushl %eax
	movl MI_Scope+92,%eax
	call *%eax
	movl 60(%esi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	movl $37,%edi
	addl $12,%esp
	jmp .L32
	.align 16
.L33:
	pushl %ebx
	movl MI_Value+108,%eax
	call *%eax
	pushl %eax
	movl MI_M3ID+60,%eax
	call *%eax
	movl %eax,%edx
	movl %edi,%eax
	sall $5,%eax
	addl %edi,%eax
	leal (%edi,%eax,2),%eax
	leal (%edx,%eax),%edi
	movl 8(%ebx),%ebx
	addl $8,%esp
.L32:
	testl %ebx,%ebx
	jne .L33
	xorl %eax,%eax
	movb 64(%esi),%al
	leal (%eax,%eax,8),%eax
	sall $2,%eax
	addl MI_TargetMap+316,%eax
	movl 4(%eax),%eax
	movl %eax,16(%esi)
	pushl %esi
	call EnumType__MinSize
	movl %eax,%edx
	movl %edx,20(%esi)
	xorl %eax,%eax
	movb 64(%esi),%al
	movl MI_TargetMap+316,%edx
	leal (%eax,%eax,8),%eax
	movl 8(%edx,%eax,4),%eax
	movl %eax,24(%esi)
	xorl %eax,%eax
	movb 64(%esi),%al
	leal (%eax,%eax,8),%eax
	movb (%edx,%eax,4),%al
	movb %al,33(%esi)
	andl $255,%eax
	movl %esi,%edx
	movb MI_TargetMap+300(%eax),%al
	movb %al,32(%esi)
	movb $7,34(%esi)
	xorl %eax,%eax
	movb 35(%esi),%al
	andb $254,%al
	movb %al,35(%esi)
	andl $252,%eax
	cmpl $0,56(%esi)
	jg .L35
	orb $2,%al
.L35:
	movb %al,35(%edx)
	orb $4,35(%esi)
	leal -36(%ebp),%esp
	movl %edi,28(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 EnumType__Check,.Lfe9-EnumType__Check
	.align 16
	.type	 EnumType__CheckAlign,@function
EnumType__CheckAlign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%esi
.L38:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	movb 64(%edx),%al
	leal (%eax,%eax,8),%eax
	sall $2,%eax
	addl MI_TargetMap+316,%eax
	movl 4(%eax),%ebx
	pushl %esi
	movl MI_Target+100,%eax
	pushl %eax
	call m3_div
	movl %eax,%edx
	imull MI_Target+100,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl %esi,%ebx
	addl MI_Target+96,%edx
	cmpl %edx,%ebx
	setle %al
	andl $255,%eax
.L39:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 EnumType__CheckAlign,.Lfe10-EnumType__CheckAlign
	.align 16
	.type	 EnumType__Compiler,@function
EnumType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%edx
	xorl %eax,%eax
	movb 64(%ebx),%al
	leal (%eax,%eax,8),%eax
	sall $2,%eax
	addl MI_TargetMap+316,%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 56(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_CG+88,%eax
	call *%eax
	addl $20,%esp
	jmp .L41
	.align 16
.L42:
	pushl %esi
	movl MI_Value+108,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_CG+92,%eax
	call *%eax
	movl 8(%esi),%esi
	addl $8,%esp
.L41:
	testl %esi,%esi
	jne .L42
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 EnumType__Compiler,.Lfe11-EnumType__Compiler
	.align 16
	.type	 EnumType__EqualChk,@function
EnumType__EqualChk:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	je .L45
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumType+224
	jg .L46
	movl MM_EnumType+220,%eax
	cmpl %edx,4(%eax)
	jge .L45
.L46:
	pushl $2629
	call _m3_fault
	.align 16
.L45:
	movl 56(%ecx),%eax
	cmpl %eax,56(%ebx)
	je .L47
	xorl %eax,%eax
	jmp .L56
	.align 16
.L47:
	testl %eax,%eax
	jne .L48
	movl $1,%eax
	jmp .L56
	.align 16
.L48:
	movl 60(%ecx),%eax
	testl %eax,%eax
	je .L49
	cmpl $0,60(%ebx)
	jne .L50
.L49:
	cmpl %eax,60(%ebx)
	sete %al
	andl $255,%eax
	jmp .L56
	.align 16
.L50:
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L51
	.align 16
.L52:
	movl 8(%esi),%esi
	movl 8(%ebx),%ebx
.L51:
	testl %esi,%esi
	je .L54
	testl %ebx,%ebx
	je .L54
	pushl %ebx
	pushl %esi
	movl MI_EnumElt+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L52
.L54:
	xorl %edx,%edx
	testl %esi,%esi
	jne .L55
	testl %ebx,%ebx
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L55:
	movl %edx,%eax
.L56:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 EnumType__EqualChk,.Lfe12-EnumType__EqualChk
	.align 16
	.type	 EnumType__Subtyper,@function
EnumType__Subtyper:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl $0
	pushl %eax
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 EnumType__Subtyper,.Lfe13-EnumType__Subtyper
	.align 16
	.type	 EnumType__MinSize,@function
EnumType__MinSize:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%ecx
	movl 8(%ebp),%eax
	movl $2,%edx
	movl 56(%eax),%eax
	jmp .L59
	.align 16
.L60:
	incl %ecx
	addl %edx,%edx
.L59:
	cmpl %edx,%eax
	jg .L60
	movl %ecx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 EnumType__MinSize,.Lfe14-EnumType__MinSize
	.align 16
	.type	 EnumType__InitCoster,@function
EnumType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 56(%ebx),%eax
	testl %eax,%eax
	jle .L68
	cmpb $0,12(%ebp)
	jne .L68
	leal -8(%ebp),%esi
	pushl %esi
	decl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L66
	pushl $MI_TInt+44
	xorl %eax,%eax
	movb 64(%ebx),%al
	leal (%eax,%eax,8),%eax
	movl MI_TargetMap+316,%edx
	leal 20(%edx,%eax,4),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L66
	pushl %esi
	xorl %eax,%eax
	movb 64(%ebx),%al
	leal (%eax,%eax,8),%eax
	movl MI_TargetMap+316,%edx
	leal 28(%edx,%eax,4),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	testl %eax,%eax
	je .L66
.L68:
	xorl %eax,%eax
	jmp .L67
	.align 16
.L66:
	movl $1,%eax
.L67:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 EnumType__InitCoster,.Lfe15-EnumType__InitCoster
	.align 16
	.type	 EnumType__GenMap,@function
EnumType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%eax
.L70:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl %ebx,%ecx
	andl $7,%ecx
	cmpb $0,20(%ebp)
	je .L71
	movl %edx,RTThread__handlerStack
	jmp .L69
	.align 16
.L71:
	testl %ecx,%ecx
	je .L72
	movb $11,%dl
	jmp .L73
	.align 16
.L72:
	cmpl $8,%eax
	jne .L74
	movb $16,%dl
	jmp .L73
	.align 16
.L74:
	cmpl $16,%eax
	jne .L75
	movb $17,%dl
	jmp .L73
	.align 16
.L75:
	cmpl $32,%eax
	jne .L76
	movb $18,%dl
	jmp .L73
	.align 16
.L76:
	movb $11,%dl
	cmpl $64,%eax
	jne .L73
	movb $19,%dl
.L73:
	sall $8,%eax
	addl %ecx,%eax
	pushl %eax
	xorl %eax,%eax
	movb %dl,%al
	pushl %eax
	pushl %ebx
	movl MI_TipeMap+52,%eax
	call *%eax
.L78:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L69:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 EnumType__GenMap,.Lfe16-EnumType__GenMap
	.align 16
	.type	 EnumType__GenDesc,@function
EnumType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $0
	movl MI_CChar+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L80
	pushl %ebx
	pushl $4
	jmp .L84
	.align 16
.L80:
	pushl %eax
	movl MI_Bool+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L82
	pushl %ebx
	pushl $2
.L84:
	movl MI_TipeDesc+52,%eax
	call *%eax
	jmp .L79
	.align 16
.L82:
	pushl %ebx
	pushl $5
	movl MI_TipeDesc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L79
	movl 56(%ebx),%eax
	pushl %eax
	movl MI_TipeDesc+60,%eax
	call *%eax
.L79:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 EnumType__GenDesc,.Lfe17-EnumType__GenDesc
	.align 16
	.type	 EnumType__FPrinter,@function
EnumType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	xorl %ebx,%ebx
	movl %ebx,8(%eax)
	pushl %ebx
	movl MI_CChar+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L86
	movl 12(%ebp),%eax
	movl $MM_EnumType+272,(%eax)
	jmp .L85
	.align 16
.L86:
	pushl %ebx
	movl MI_Bool+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L88
	movl 12(%ebp),%eax
	movl $MM_EnumType+292,(%eax)
	jmp .L85
	.align 16
.L88:
	pushl $MM_EnumType+316
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 60(%esi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	jmp .L89
	.align 16
.L90:
	pushl $32
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl %ebx
	movl MI_Value+108,%eax
	call *%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $20,%esp
.L89:
	testl %ebx,%ebx
	jne .L90
.L85:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 EnumType__FPrinter,.Lfe18-EnumType__FPrinter
	.align 16
	.type	 M_EnumType_tdf436838_LINK,@function
M_EnumType_tdf436838_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_EnumType+220,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_EnumType+160,%eax
	movl %eax,4(%edx)
	movl MM_EnumType+164,%eax
	movl %eax,8(%edx)
	movl MM_EnumType+172,%eax
	movl %eax,12(%edx)
	movl MM_EnumType+176,%eax
	movl %eax,16(%edx)
	movl MM_EnumType+168,%eax
	movl %eax,20(%edx)
	movl MM_EnumType+184,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_EnumType+188,%eax
	movl %eax,32(%edx)
	movl MM_EnumType+192,%eax
	movl %eax,36(%edx)
	movl MM_EnumType+196,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe19:
	.size	 M_EnumType_tdf436838_LINK,.Lfe19-M_EnumType_tdf436838_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_EnumType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe20:
	.size	 _m3_fault,.Lfe20-_m3_fault
.globl MM_EnumType
.data
	.align 4
	.type	 MM_EnumType,@object
	.size	 MM_EnumType,876
MM_EnumType:
	.long MM_EnumType+688
	.long MM_EnumType+44
	.long MM_EnumType+220
	.zero	8
	.long MM_EnumType+468
	.zero	28
	.long -549230536
.byte 202
.byte 189
.byte 90
.byte 223
.byte 242
.byte 213
.byte 25
.byte 0
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_EnumType+833
	.long MM_EnumType+837
	.long MM_EnumType+840
	.zero	4
	.long M_EnumType_tdf436838_LINK
	.long -2121051098
	.zero	12
	.long MM_EnumType+852
	.long MM_EnumType+864
	.zero	4
	.long EnumType__Reduce
	.long EnumType__Create
	.long EnumType__SetRep
	.long EnumType__Check
	.long EnumType__CheckAlign
	.long EnumType__Compiler
	.long EnumType__EqualChk
	.long EnumType__Subtyper
	.long EnumType__MinSize
	.long EnumType__InitCoster
	.long EnumType__GenMap
	.long EnumType__GenDesc
	.long EnumType__FPrinter
	.long EnumType__Parse
	.long EnumType__New
	.long EnumType__Is
	.long EnumType__LookUp
	.long EnumType__NumElts
	.zero	4
	.long -549230536
	.long 2
	.long MM_EnumType+240
	.long 27
	.ascii	"enumeration type too large"
	.zero	2
	.long 2
	.long MM_EnumType+280
	.long 6
	.ascii	"$char"
	.zero	3
	.long 2
	.long MM_EnumType+300
	.long 9
	.ascii	"$boolean"
	.zero	4
	.long 2
	.long MM_EnumType+324
	.long 5
	.ascii	"ENUM"
	.zero	4
	.ascii	"FPrinter"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"MinSize"
	.zero	1
	.ascii	"Subtyper"
	.zero	1
	.ascii	"EqualChk"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"CheckAlign"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"SetRep"
	.zero	1
	.ascii	"Create"
	.zero	1
	.ascii	"NumElts"
	.zero	1
	.ascii	"LookUp"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.long EnumType__FPrinter
	.long MM_EnumType+332
	.zero	4
	.long EnumType__GenDesc
	.long MM_EnumType+341
	.zero	4
	.long EnumType__GenMap
	.long MM_EnumType+349
	.zero	4
	.long EnumType__InitCoster
	.long MM_EnumType+356
	.zero	4
	.long EnumType__MinSize
	.long MM_EnumType+367
	.zero	4
	.long EnumType__Subtyper
	.long MM_EnumType+375
	.zero	4
	.long EnumType__EqualChk
	.long MM_EnumType+384
	.zero	4
	.long EnumType__Compiler
	.long MM_EnumType+393
	.zero	4
	.long EnumType__CheckAlign
	.long MM_EnumType+402
	.zero	4
	.long EnumType__Check
	.long MM_EnumType+413
	.zero	4
	.long EnumType__SetRep
	.long MM_EnumType+419
	.zero	4
	.long EnumType__Create
	.long MM_EnumType+426
	.zero	4
	.long EnumType__NumElts
	.long MM_EnumType+433
	.long MI_EnumType+60
	.long EnumType__LookUp
	.long MM_EnumType+441
	.long MI_EnumType+56
	.long EnumType__Is
	.long MM_EnumType+448
	.long MI_EnumType+52
	.long EnumType__Reduce
	.long MM_EnumType+451
	.zero	4
	.long EnumType__New
	.long MM_EnumType+458
	.long MI_EnumType+48
	.long EnumType__Parse
	.long MM_EnumType+462
	.long MI_EnumType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/EnumType.m3"
	.zero	1
.byte 14
.byte 4
.byte 16
.byte 0
.byte 37
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 7
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 19
.byte 0
.byte 7
	.ascii	"EnumType.m3"
	.zero	1
	.ascii	"EnumType.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
