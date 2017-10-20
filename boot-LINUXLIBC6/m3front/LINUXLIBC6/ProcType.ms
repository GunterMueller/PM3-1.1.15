	.file	"ProcType.mc"
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
	.type	 ProcType__Parse,@function
ProcType__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_Target+752,%ebx
	cmpb $42,MI_Scanner+44
	jne .L2
	movl MI_Scanner+48,%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	movl MI_Target+756,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $35
	movl MI_Scanner+108,%eax
	call *%eax
	addl $12,%esp
.L2:
	pushl $82
	movl MI_Scanner+108,%eax
	call *%eax
	pushl %ebx
	pushl $0
	call ProcType__ParseSignature
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ProcType__Parse,.Lfe1-ProcType__Parse
	.align 16
	.type	 ProcType__ParseSignature,@function
ProcType__ParseSignature:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl %esi
	pushl %esi
	pushl %eax
	pushl %esi
	movl MI_Scope+52,%eax
	call *%eax
	pushl %eax
	call ProcType__Create
	movl %eax,%esi
	movl %ebx,76(%esi)
	pushl $17
	movl MI_Scanner+108,%eax
	call *%eax
	addl $24,%esp
	jmp .L4
	.align 16
.L5:
	pushl %esi
	call ProcType__ParseFormal
	addl $4,%esp
	cmpb $16,MI_Scanner+44
	jne .L7
	movl MI_Scanner+104,%eax
	call *%eax
.L4:
	pushl $MM_ProcType+148
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L5
.L7:
	pushl $29
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	cmpb $28,MI_Scanner+44
	jne .L8
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,68(%esi)
.L8:
	cmpb $84,MI_Scanner+44
	jne .L9
	movl MI_ESet+44,%eax
	call *%eax
	movl %eax,72(%esi)
.L9:
	movl MI_Scope+48,%eax
	call *%eax
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ProcType__ParseSignature,.Lfe2-ProcType__ParseSignature
	.align 16
	.type	 ProcType__ParseFormal,@function
ProcType__ParseFormal:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	xorl %ecx,%ecx
	pushl %ebx
	movl %ecx,-28(%ebp)
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl %ecx,-16(%ebp)
	movl %ecx,-12(%ebp)
	movl %ecx,-8(%ebp)
	movl %ecx,-4(%ebp)
	movb $0,-24(%ebp)
	movl %ecx,-16(%ebp)
	movl %ecx,-12(%ebp)
	movl %ecx,-4(%ebp)
	cmpb $39,MI_Scanner+44
	sete %al
	movb %al,-8(%ebp)
	testb %al,%al
	je .L11
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $35
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
.L11:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $100,%eax
	jne .L12
	movl MI_Scanner+104,%eax
	movb $0,-24(%ebp)
	jmp .L29
	.align 16
.L12:
	cmpl $101,%eax
	jne .L14
	movl MI_Scanner+104,%eax
	movb $1,-24(%ebp)
	jmp .L29
	.align 16
.L14:
	cmpl $85,%eax
	jne .L13
	movl MI_Scanner+104,%eax
	movb $2,-24(%ebp)
.L29:
	call *%eax
.L13:
	movl MI_Ident+160,%eax
	call *%eax
	movl %eax,-40(%ebp)
	cmpb $28,MI_Scanner+44
	jne .L16
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-16(%ebp)
.L16:
	cmpb $21,MI_Scanner+44
	jne .L17
	pushl $MM_ProcType+288
	movl MI_Error+44,%eax
	call *%eax
	movb $12,MI_Scanner+44
	addl $4,%esp
.L17:
	cmpb $12,MI_Scanner+44
	jne .L18
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
.L18:
	movl MI_Variable+112,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	cmpl $0,-16(%ebp)
	jne .L19
	cmpl $0,-12(%ebp)
	jne .L19
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L20
	pushl $1876
	call _m3_fault
	.align 16
.L20:
	movl %eax,%edx
	movl MI_Ident+156,%ecx
	leal -1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L21
	pushl $1874
	call _m3_fault
	.align 16
.L21:
	pushl $MM_ProcType+336
	movl (%edx),%eax
	movl -4(%eax,%ecx,4),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L19:
	movl MI_Ident+156,%edi
	subl -40(%ebp),%edi
	movl %edi,-32(%ebp)
	xorl %esi,%esi
	movl -40(%ebp),%edi
	decl %edi
	movl %edi,-36(%ebp)
	jmp .L22
	.align 16
.L23:
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L24
	pushl $1956
	call _m3_fault
	.align 16
.L24:
	movl %eax,%edx
	movl -32(%ebp),%ebx
	addl %esi,%ebx
	cmpl %ebx,4(%edx)
	ja .L25
	pushl $1954
	call _m3_fault
	.align 16
.L25:
	movl (%edx),%eax
	movl 8(%ebp),%edi
	movl (%eax,%ebx,4),%eax
	movl %eax,-28(%ebp)
	movl 64(%edi),%eax
	movl %eax,-20(%ebp)
	leal -28(%ebp),%eax
	pushl %eax
	movl MI_Formal+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ecx
	movl MI_Ident+152,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L26
	pushl $2004
	call _m3_fault
	.align 16
.L26:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L27
	pushl $2002
	call _m3_fault
	.align 16
.L27:
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	movl %eax,4(%ecx)
	pushl %ecx
	movl MI_Scope+72,%eax
	call *%eax
	movl 8(%ebp),%edi
	incl %esi
	addl $4,%esp
	incl 64(%edi)
.L22:
	cmpl %esi,-36(%ebp)
	jge .L23
	movl -40(%ebp),%edi
	leal -52(%ebp),%esp
	subl %edi,MI_Ident+156
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ProcType__ParseFormal,.Lfe3-ProcType__ParseFormal
	.align 16
	.type	 ProcType__MethodSigAsProcSig,@function
ProcType__MethodSigAsProcSig:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	movl %esi,%edi
	pushl %ebx
	movl 8(%ebp),%eax
	movl %esi,-32(%ebp)
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %eax
	call ProcType__Reduce
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L31
	movl MI_ErrType+44,%eax
	jmp .L36
	.align 16
.L31:
	pushl %esi
	pushl %esi
	pushl %esi
	pushl %esi
	movl MI_Scope+52,%eax
	call *%eax
	pushl %eax
	call ProcType__Create
	movl %eax,%esi
	movl 64(%ebx),%edx
	incl %edx
	addl $20,%esp
	movl %edx,64(%esi)
	movl 68(%ebx),%eax
	movl %eax,68(%esi)
	movl 72(%ebx),%eax
	movl %eax,72(%esi)
	movl 76(%ebx),%eax
	movl %eax,76(%esi)
	cmpl $0,MM_ProcType+168
	jne .L32
	pushl %edi
	pushl $MM_ProcType+392
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_ProcType+168
	addl $8,%esp
.L32:
	movl MM_ProcType+168,%eax
	movl %eax,-28(%ebp)
	movl -32(%ebp),%edx
	movl %edx,-20(%ebp)
	movb $0,-24(%ebp)
	movl 12(%ebp),%edx
	movl %edx,-16(%ebp)
	movl -32(%ebp),%edx
	movl %edx,-12(%ebp)
	movl %edx,-4(%ebp)
	movb $0,-8(%ebp)
	leal -28(%ebp),%eax
	pushl %eax
	movl MI_Formal+44,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+72,%eax
	call *%eax
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%edi
	addl $12,%esp
	jmp .L33
	.align 16
.L34:
	leal -28(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl MI_Formal+52,%eax
	call *%eax
	incl -20(%ebp)
	pushl %ebx
	movl MI_Formal+44,%eax
	call *%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%edx
	movl 4(%edi),%eax
	movl %eax,4(%edx)
	pushl %edx
	movl MI_Scope+72,%eax
	call *%eax
	movl 8(%edi),%edi
	addl $16,%esp
.L33:
	testl %edi,%edi
	jne .L34
	movl MI_Scope+48,%eax
	call *%eax
	movl %esi,%eax
.L36:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ProcType__MethodSigAsProcSig,.Lfe4-ProcType__MethodSigAsProcSig
	.align 16
	.type	 ProcType__Create,@function
ProcType__Create:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ProcType+408,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $12
	movl %eax,%esi
	pushl %esi
	movl MI_TypeRep+148,%eax
	call *%eax
	movl MI_UserProc+44,%eax
	movl %eax,56(%esi)
	movl %ebx,60(%esi)
	movl $0,64(%esi)
	movl $0,68(%esi)
	movl $0,72(%esi)
	movl MI_Target+752,%eax
	movl %eax,76(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ProcType__Create,.Lfe5-ProcType__Create
	.align 16
	.type	 ProcType__Check,@function
ProcType__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl %ebx,-52(%ebp)
	movl %ebx,-48(%ebp)
	movl %ebx,-44(%ebp)
	movl %ebx,-40(%ebp)
	movl %ebx,-36(%ebp)
	movl %ebx,-32(%ebp)
	movl %ebx,-28(%ebp)
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 72(%edi),%eax
	pushl %eax
	movl MI_ESet+92,%eax
	call *%eax
	movl 72(%edi),%eax
	pushl %eax
	movl MI_ESet+52,%eax
	call *%eax
	movl %eax,%esi
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L45
	.align 16
.L40:
	leal -52(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Formal+52,%eax
	call *%eax
	movl -52(%ebp),%eax
	pushl %eax
	movl MI_M3ID+60,%eax
	call *%eax
	movl %eax,%edx
	leal (%esi,%esi,2),%eax
	sall $3,%eax
	subl %esi,%eax
	leal (%edx,%eax),%esi
	leal (%esi,%esi,8),%eax
	leal (%esi,%eax,4),%eax
	xorl %edx,%edx
	movb -48(%ebp),%dl
	leal (%edx,%eax),%esi
	movl 8(%ebx),%ebx
.L45:
	addl $12,%esp
	testl %ebx,%ebx
	jne .L40
	movl 76(%edi),%eax
	testl %eax,%eax
	jne .L42
	pushl $3364
	call _m3_fault
	.align 16
.L42:
	addl 4(%eax),%esi
	movl MI_Target+60,%eax
	movl %eax,16(%edi)
	movl %eax,20(%edi)
	movl MI_Target+64,%eax
	movl %eax,24(%edi)
	movb $0,33(%edi)
	movb $0,32(%edi)
	movl %edi,%ebx
	movb $12,34(%edi)
	movb 35(%ebx),%al
	andb $252,%al
	andl $255,%eax
	orb $4,%al
	movb %al,35(%ebx)
	movl %esi,28(%ebx)
	incl MI_Type+44
	orb $16,49(%ebx)
	leal -24(%ebp),%eax
	pushl %eax
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_Scope+92,%eax
	call *%eax
	addl $8,%esp
	movl 68(%ebx),%eax
	testl %eax,%eax
	je .L43
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,68(%edi)
	pushl %ebx
	movl MI_OpenArrayType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L43
	pushl $MM_ProcType+420
	movl MI_Error+44,%eax
	call *%eax
.L43:
	leal -64(%ebp),%esp
	decl MI_Type+44
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ProcType__Check,.Lfe6-ProcType__Check
	.align 16
	.type	 ProcType__CheckAlign,@function
ProcType__CheckAlign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 12(%ebp),%edx
.L47:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	pushl %edx
	movl MI_Target+64,%eax
	pushl %eax
	call m3_mod
	testl %eax,%eax
	sete %al
	andl $255,%eax
.L48:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ProcType__CheckAlign,.Lfe7-ProcType__CheckAlign
	.align 16
	.type	 ProcType__Compiler,@function
ProcType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl 68(%edi),%eax
	testl %eax,%eax
	je .L59
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl 68(%edi),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	movl 68(%edi),%eax
	pushl %eax
	call ProcType__LargeResult
	addl $12,%esp
	testl %eax,%eax
	je .L51
.L59:
	movl %ebx,-4(%ebp)
.L51:
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	xorl %esi,%esi
	addl $4,%esp
	jmp .L53
	.align 16
.L54:
	pushl $0
	pushl $1
	pushl %ebx
	movl MI_Formal+76,%eax
	call *%eax
	incl %esi
	movl 8(%ebx),%ebx
	addl $12,%esp
.L53:
	testl %ebx,%ebx
	jne .L54
	movl 72(%edi),%eax
	pushl %eax
	movl MI_ESet+112,%eax
	call *%eax
	movl %eax,%edx
	pushl %edi
	movl MI_Type+132,%eax
	movl %edx,%ebx
	call *%eax
	movl %eax,%edx
	movl 76(%edi),%eax
	pushl %eax
	pushl %ebx
	movl -4(%ebp),%ecx
	pushl %ecx
	pushl %esi
	pushl %edx
	movl MI_CG+132,%eax
	call *%eax
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $32,%esp
	jmp .L56
	.align 16
.L57:
	pushl $0
	pushl $0
	pushl %ebx
	movl MI_Formal+76,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $12,%esp
.L56:
	testl %ebx,%ebx
	jne .L57
	movl 72(%edi),%eax
	pushl %eax
	movl MI_ESet+116,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ProcType__Compiler,.Lfe8-ProcType__Compiler
	.align 16
	.type	 ProcType__IsCompatible,@function
ProcType__IsCompatible:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	pushl %eax
	call ProcType__Reduce
	movl %eax,%esi
	pushl %ebx
	call ProcType__Reduce
	movl %eax,%ebx
	addl $8,%esp
	testl %esi,%esi
	je .L73
	testl %ebx,%ebx
	je .L73
	movl 64(%ebx),%eax
	incl %eax
	cmpl %eax,64(%esi)
	jne .L73
	movl 76(%esi),%edx
	testl %edx,%edx
	jne .L64
	pushl $4372
	call _m3_fault
	.align 16
.L64:
	movl 76(%ebx),%eax
	testl %eax,%eax
	jne .L65
	pushl $4372
	call _m3_fault
	.align 16
.L65:
	movl 4(%eax),%eax
	cmpl %eax,4(%edx)
	je .L66
.L73:
	xorl %eax,%eax
	jmp .L72
	.align 16
.L66:
	movl 68(%esi),%edx
	testl %edx,%edx
	jne .L67
	cmpl $0,68(%ebx)
	je .L68
.L67:
	pushl $0
	movl 68(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L72
.L68:
	pushl %edi
	movl 60(%esi),%eax
	pushl %eax
	call ProcType__FirstArgOK
	addl $8,%esp
	testl %eax,%eax
	je .L72
	pushl $0
	pushl $0
	pushl $0
	movl 60(%ebx),%eax
	pushl %eax
	movl 60(%esi),%eax
	pushl %eax
	call ProcType__FormalsMatch
	addl $20,%esp
	testl %eax,%eax
	je .L71
	movl 72(%ebx),%eax
	pushl %eax
	movl 72(%esi),%eax
	pushl %eax
	movl MI_ESet+88,%eax
	call *%eax
.L71:
.L72:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ProcType__IsCompatible,.Lfe9-ProcType__IsCompatible
	.align 16
	.type	 ProcType__FirstArgOK,@function
ProcType__FirstArgOK:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	jmp .L75
	.align 16
.L76:
	leal -28(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Formal+52,%eax
	call *%eax
	addl $8,%esp
	movl -20(%ebp),%eax
	testl %eax,%eax
	jne .L77
	cmpb $0,-24(%ebp)
	jne .L80
	movl -16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Type+120,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	andl $255,%eax
	jmp .L80
	.align 16
.L77:
	movl 8(%ebx),%ebx
.L75:
	testl %ebx,%ebx
	jne .L76
	movl %ebx,%eax
.L80:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 ProcType__FirstArgOK,.Lfe10-ProcType__FirstArgOK
	.align 16
	.type	 ProcType__EqualChk,@function
ProcType__EqualChk:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edi
	testl %ecx,%ecx
	je .L82
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ProcType+412
	jg .L83
	movl MM_ProcType+408,%eax
	cmpl %edx,4(%eax)
	jge .L82
.L83:
	pushl $4789
	call _m3_fault
	.align 16
.L82:
	movl %ecx,%ebx
	movl 56(%ebx),%eax
	cmpl %eax,56(%esi)
	jne .L94
	movl 64(%ebx),%eax
	cmpl %eax,64(%esi)
	jne .L94
	movl 76(%esi),%edx
	testl %edx,%edx
	jne .L86
	pushl $4852
	call _m3_fault
	.align 16
.L86:
	movl 76(%ebx),%eax
	testl %eax,%eax
	jne .L87
	pushl $4852
	call _m3_fault
	.align 16
.L87:
	movl 4(%eax),%eax
	cmpl %eax,4(%edx)
	je .L88
.L94:
	xorl %eax,%eax
	jmp .L93
	.align 16
.L88:
	movl 68(%esi),%edx
	testl %edx,%edx
	jne .L89
	cmpl $0,68(%ebx)
	je .L90
.L89:
	pushl %edi
	movl 68(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L93
.L90:
	pushl %edi
	pushl $1
	pushl $1
	movl 60(%ebx),%eax
	pushl %eax
	movl 60(%esi),%eax
	pushl %eax
	call ProcType__FormalsMatch
	addl $20,%esp
	testl %eax,%eax
	je .L92
	movl 72(%ebx),%eax
	pushl %eax
	movl 72(%esi),%eax
	pushl %eax
	movl MI_ESet+84,%eax
	call *%eax
.L92:
.L93:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 ProcType__EqualChk,.Lfe11-ProcType__EqualChk
	.align 16
	.type	 ProcType__Subtyper,@function
ProcType__Subtyper:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	xorl %ebx,%ebx
	cmpb $12,34(%edx)
	jne .L108
	testl %edx,%edx
	je .L97
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_ProcType+412
	jg .L98
	movl MM_ProcType+408,%eax
	cmpl %ecx,4(%eax)
	jge .L97
.L98:
	pushl $5077
	call _m3_fault
	.align 16
.L97:
	movl %edx,%ebx
	movl 64(%ebx),%eax
	cmpl %eax,64(%esi)
	jne .L108
	movl 76(%esi),%edx
	testl %edx,%edx
	jne .L100
	pushl $5108
	call _m3_fault
	.align 16
.L100:
	movl 76(%ebx),%eax
	testl %eax,%eax
	jne .L101
	pushl $5108
	call _m3_fault
	.align 16
.L101:
	movl 4(%eax),%eax
	cmpl %eax,4(%edx)
	je .L102
.L108:
	xorl %eax,%eax
	jmp .L107
	.align 16
.L102:
	movl 68(%esi),%edx
	testl %edx,%edx
	jne .L103
	cmpl $0,68(%ebx)
	je .L104
.L103:
	pushl $0
	movl 68(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L107
.L104:
	pushl $0
	pushl $1
	pushl $0
	movl 60(%ebx),%eax
	pushl %eax
	movl 60(%esi),%eax
	pushl %eax
	call ProcType__FormalsMatch
	addl $20,%esp
	testl %eax,%eax
	je .L106
	movl 72(%ebx),%eax
	pushl %eax
	movl 72(%esi),%eax
	pushl %eax
	movl MI_ESet+88,%eax
	call *%eax
.L106:
.L107:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 ProcType__Subtyper,.Lfe12-ProcType__Subtyper
	.align 16
	.type	 ProcType__FormalsMatch,@function
ProcType__FormalsMatch:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl %esi,-56(%ebp)
	movl %esi,-52(%ebp)
	movl %esi,-48(%ebp)
	movl %esi,-44(%ebp)
	movl %esi,-40(%ebp)
	movl %esi,-36(%ebp)
	movl %esi,-32(%ebp)
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%edi
	pushl %ebx
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	cmpb $0,20(%ebp)
	jne .L112
	testl %edi,%edi
	je .L123
	movl 8(%edi),%edi
	jmp .L112
	.align 16
.L113:
	leal -56(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_Formal+52,%eax
	call *%eax
	leal -28(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Formal+52,%eax
	call *%eax
	movb -52(%ebp),%al
	addl $16,%esp
	cmpb %al,-24(%ebp)
	jne .L123
	movl 24(%ebp),%edx
	pushl %edx
	movl -16(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L122
	cmpb $0,16(%ebp)
	je .L116
	movl -28(%ebp),%eax
	cmpl %eax,-56(%ebp)
	je .L117
.L123:
	xorl %eax,%eax
	jmp .L122
	.align 16
.L117:
	movl -40(%ebp),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl 24(%ebp),%edx
	pushl %edx
	pushl %eax
	pushl %ebx
	movl MI_Expr+232,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L122
.L116:
	movl 8(%edi),%edi
	movl 8(%esi),%esi
.L112:
	testl %edi,%edi
	je .L120
	testl %esi,%esi
	jne .L113
.L120:
	xorl %eax,%eax
	testl %edi,%edi
	jne .L121
	testl %esi,%esi
	sete %al
	andl $255,%eax
.L121:
.L122:
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 ProcType__FormalsMatch,.Lfe13-ProcType__FormalsMatch
	.align 16
	.type	 ProcType__Reduce,@function
ProcType__Reduce:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L128
	cmpb $1,34(%edx)
	jne .L126
	pushl %edx
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
.L126:
	cmpb $12,34(%edx)
	je .L127
	xorl %eax,%eax
	jmp .L130
	.align 16
.L127:
	testl %edx,%edx
	je .L128
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_ProcType+412
	jg .L129
	movl MM_ProcType+408,%eax
	cmpl %ecx,4(%eax)
	jge .L128
.L129:
	pushl $5845
	call _m3_fault
	.align 16
.L128:
	movl %edx,%eax
.L130:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 ProcType__Reduce,.Lfe14-ProcType__Reduce
	.align 16
	.type	 ProcType__Is,@function
ProcType__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	testl %eax,%eax
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 ProcType__Is,.Lfe15-ProcType__Is
	.align 16
	.type	 ProcType__Result,@function
ProcType__Result:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	testl %eax,%eax
	jne .L133
	movl MI_ErrType+44,%eax
	jmp .L134
	.align 16
.L133:
	movl 68(%eax),%eax
.L134:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 ProcType__Result,.Lfe16-ProcType__Result
	.align 16
	.type	 ProcType__CGResult,@function
ProcType__CGResult:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L140
	movl 68(%ebx),%eax
	testl %eax,%eax
	je .L140
	pushl %eax
	call ProcType__LargeResult
	addl $4,%esp
	testl %eax,%eax
	jne .L138
	pushl %eax
	movl 68(%ebx),%eax
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	jmp .L141
	.align 16
.L138:
	movl 76(%ebx),%eax
	testl %eax,%eax
	jne .L139
	pushl $6228
	call _m3_fault
	.align 16
.L139:
	cmpb $0,10(%eax)
	jne .L140
	movl $14,%eax
	jmp .L141
	.align 16
.L140:
	movl $15,%eax
.L141:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 ProcType__CGResult,.Lfe17-ProcType__CGResult
	.align 16
	.type	 ProcType__LargeResult,@function
ProcType__LargeResult:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Type+88,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 ProcType__LargeResult,.Lfe18-ProcType__LargeResult
	.align 16
	.type	 ProcType__NFormals,@function
ProcType__NFormals:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	je .L149
	movl 60(%esi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L145
	.align 16
.L146:
	movl 8(%eax),%eax
	incl %ebx
.L145:
	testl %eax,%eax
	jne .L146
	movl 68(%esi),%eax
	testl %eax,%eax
	je .L148
	pushl %eax
	call ProcType__LargeResult
	testl %eax,%eax
	je .L148
	incl %ebx
.L148:
	movl %ebx,%eax
.L149:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 ProcType__NFormals,.Lfe19-ProcType__NFormals
	.align 16
	.type	 ProcType__Formals,@function
ProcType__Formals:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	addl $4,%esp
	testl %eax,%eax
	je .L152
	movl 60(%eax),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
.L152:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 ProcType__Formals,.Lfe20-ProcType__Formals
	.align 16
	.type	 ProcType__Raises,@function
ProcType__Raises:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	movl %eax,%edx
	testl %eax,%eax
	je .L155
	movl 72(%edx),%eax
.L155:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 ProcType__Raises,.Lfe21-ProcType__Raises
	.align 16
	.type	 ProcType__Methods,@function
ProcType__Methods:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	movl %eax,%edx
	testl %eax,%eax
	je .L158
	movl 56(%edx),%eax
.L158:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 ProcType__Methods,.Lfe22-ProcType__Methods
	.align 16
	.type	 ProcType__CallConv,@function
ProcType__CallConv:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call ProcType__Reduce
	movl %eax,%edx
	testl %eax,%eax
	je .L161
	movl 76(%edx),%eax
.L161:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 ProcType__CallConv,.Lfe23-ProcType__CallConv
	.align 16
	.type	 ProcType__New,@function
ProcType__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	xorl %ebx,%ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	movl MI_Scope+52,%eax
	call *%eax
	pushl %eax
	call ProcType__Create
	movl %eax,%ebx
	addl $20,%esp
	testl %esi,%esi
	je .L163
	pushl %esi
	movl MI_Scope+72,%eax
	call *%eax
	incl 64(%ebx)
	addl $4,%esp
.L163:
	testl %edi,%edi
	je .L164
	pushl %edi
	movl MI_Scope+72,%eax
	call *%eax
	incl 64(%ebx)
	addl $4,%esp
.L164:
	cmpl $0,20(%ebp)
	je .L165
	movl 20(%ebp),%edx
	pushl %edx
	movl MI_Scope+72,%eax
	call *%eax
	incl 64(%ebx)
	addl $4,%esp
.L165:
	cmpl $0,24(%ebp)
	je .L166
	movl 24(%ebp),%edx
	pushl %edx
	movl MI_Scope+72,%eax
	call *%eax
	incl 64(%ebx)
	addl $4,%esp
.L166:
	movl 8(%ebp),%edx
	movl %edx,68(%ebx)
	movl MI_Scope+48,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 ProcType__New,.Lfe24-ProcType__New
	.align 16
	.type	 ProcType__SetMethods,@function
ProcType__SetMethods:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L168
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ProcType+412
	jg .L169
	movl MM_ProcType+408,%eax
	cmpl %edx,4(%eax)
	jge .L168
.L169:
	pushl $7445
	call _m3_fault
	.align 16
.L168:
	movl %ebx,56(%ecx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 ProcType__SetMethods,.Lfe25-ProcType__SetMethods
	.align 16
	.type	 ProcType__InitCoster,@function
ProcType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,12(%ebp)
	jne .L171
	movl $1,%eax
	jmp .L172
	.align 16
.L171:
	xorl %eax,%eax
.L172:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 ProcType__InitCoster,.Lfe26-ProcType__InitCoster
	.align 16
	.type	 ProcType__GenMap,@function
ProcType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+60,%eax
	movl 12(%ebp),%edx
	cmpl %eax,16(%ebp)
	je .L174
	pushl $7600
	call _m3_fault
	.align 16
.L174:
	cmpb $0,20(%ebp)
	jne .L173
	pushl $0
	pushl $6
	pushl %edx
	movl MI_TipeMap+52,%eax
	call *%eax
.L173:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 ProcType__GenMap,.Lfe27-ProcType__GenMap
	.align 16
	.type	 ProcType__GenDesc,@function
ProcType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $13
	movl MI_TipeDesc+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 ProcType__GenDesc,.Lfe28-ProcType__GenDesc
	.align 16
	.type	 ProcType__FPrinter,@function
ProcType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl $MM_ProcType+472
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 76(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L178
	pushl $7860
	call _m3_fault
	.align 16
.L178:
	cmpl $0,4(%eax)
	je .L179
	pushl $MM_ProcType+492
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 76(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L180
	pushl $7892
	call _m3_fault
	.align 16
.L180:
	movl 4(%eax),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+56,%eax
	call *%eax
	pushl $MM_ProcType+512
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $16,%esp
.L179:
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L181
	.align 16
.L182:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Value+120,%eax
	call *%eax
	addl %eax,%ebx
	movl 8(%esi),%esi
	addl $8,%esp
.L181:
	testl %esi,%esi
	jne .L182
	pushl $41
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	addl $8,%esp
	cmpl $0,68(%edi)
	je .L184
	pushl $MM_ProcType+528
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L184:
	movl 12(%ebp),%eax
	pushl %eax
	movl 72(%edi),%eax
	pushl %eax
	movl MI_ESet+120,%eax
	call *%eax
	addl %eax,%ebx
	movl 12(%ebp),%eax
	addl $8,%esp
	movl %ebx,8(%eax)
	cmpl $6,%ebx
	jg .L185
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L186
	.align 16
.L187:
	testl %ebx,%ebx
	jge .L188
	pushl $8113
	call _m3_fault
	.align 16
.L188:
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Value+124,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%esi),%esi
	addl $12,%esp
.L186:
	testl %esi,%esi
	jne .L187
	movl 68(%edi),%edx
	testl %edx,%edx
	je .L190
	cmpl $5,%ebx
	jbe .L191
	pushl $8129
	call _m3_fault
	.align 16
.L191:
	movl 12(%ebp),%eax
	movl %edx,12(%eax,%ebx,4)
	incl %ebx
.L190:
	testl %ebx,%ebx
	jge .L201
	pushl $8145
	call _m3_fault
	.align 16
.L185:
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %eax
	movl MM_ProcType+544,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl %eax,36(%edx)
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%esi
	xorl %ebx,%ebx
	jmp .L202
	.align 16
.L195:
	testl %ebx,%ebx
	jge .L196
	pushl $8209
	call _m3_fault
	.align 16
.L196:
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Value+124,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%esi),%esi
.L202:
	addl $12,%esp
	testl %esi,%esi
	jne .L195
	movl 68(%edi),%esi
	testl %esi,%esi
	je .L198
	movl 12(%ebp),%eax
	movl 36(%eax),%eax
	testl %eax,%eax
	jne .L199
	pushl $8228
	call _m3_fault
	.align 16
.L199:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L200
	pushl $8226
	call _m3_fault
	.align 16
.L200:
	movl (%edx),%eax
	movl %esi,(%eax,%ebx,4)
	incl %ebx
.L198:
	testl %ebx,%ebx
	jge .L201
	pushl $8241
	call _m3_fault
	.align 16
.L201:
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 72(%edi),%eax
	pushl %eax
	movl MI_ESet+124,%eax
	call *%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 ProcType__FPrinter,.Lfe29-ProcType__FPrinter
	.align 16
	.type	 M_ProcType_td016d564_LINK,@function
M_ProcType_td016d564_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ProcType+408,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ProcType+176,%eax
	movl %eax,4(%edx)
	movl MM_ProcType+180,%eax
	movl %eax,8(%edx)
	movl MM_ProcType+192,%eax
	movl %eax,12(%edx)
	movl MM_ProcType+196,%eax
	movl %eax,16(%edx)
	movl MM_ProcType+184,%eax
	movl %eax,20(%edx)
	movl MM_ProcType+208,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_ProcType+212,%eax
	movl %eax,32(%edx)
	movl MM_ProcType+216,%eax
	movl %eax,36(%edx)
	movl MM_ProcType+220,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe30:
	.size	 M_ProcType_td016d564_LINK,.Lfe30-M_ProcType_td016d564_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ProcType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe31:
	.size	 _m3_fault,.Lfe31-_m3_fault
.globl MM_ProcType
.data
	.align 4
	.type	 MM_ProcType,@object
	.size	 MM_ProcType,1388
MM_ProcType:
	.long MM_ProcType+1176
	.long MM_ProcType+44
	.long MM_ProcType+408
	.zero	8
	.long MM_ProcType+824
	.zero	28
	.long -803809948
.byte 19
.byte 129
.byte 13
.byte 206
.byte 119
.byte 84
.byte 27
.byte 30
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ProcType+1321
	.long MM_ProcType+1328
	.long MM_ProcType+1335
	.zero	4
	.long M_ProcType_td016d564_LINK
	.long -2121051098
	.zero	12
	.long MM_ProcType+1364
	.long MM_ProcType+1375
	.zero	4
	.long 2
	.long 128
	.long 2097152
	.long 48
	.long ProcType__ParseFormal
	.zero	4
	.long ProcType__Create
	.long ProcType__Check
	.long ProcType__CheckAlign
	.long ProcType__Compiler
	.long ProcType__FirstArgOK
	.long ProcType__EqualChk
	.long ProcType__Subtyper
	.long ProcType__FormalsMatch
	.long ProcType__Reduce
	.long ProcType__InitCoster
	.long ProcType__GenMap
	.long ProcType__GenDesc
	.long ProcType__FPrinter
	.long ProcType__Parse
	.long ProcType__ParseSignature
	.long ProcType__MethodSigAsProcSig
	.long ProcType__Is
	.long ProcType__NFormals
	.long ProcType__Formals
	.long ProcType__Result
	.long ProcType__CGResult
	.long ProcType__Raises
	.long ProcType__Methods
	.long ProcType__CallConv
	.long ProcType__LargeResult
	.long ProcType__IsCompatible
	.long ProcType__New
	.long ProcType__SetMethods
	.long 2
	.long MM_ProcType+296
	.long 35
	.ascii	"default value must begin with ':='"
	.zero	2
	.long 2
	.long MM_ProcType+344
	.long 42
	.ascii	"formals must have a type or default value"
	.zero	3
	.long 2
	.long MM_ProcType+400
	.long 7
	.ascii	"_self_"
	.zero	2
	.long MM_ProcType+544
	.long -803809948
	.long 2
	.long MM_ProcType+428
	.long 38
	.ascii	"procedures may not return open arrays"
	.zero	3
	.long 2
	.long MM_ProcType+480
	.long 6
	.ascii	"PROC("
	.zero	3
	.long 2
	.long MM_ProcType+500
	.long 6
	.ascii	"<*CC="
	.zero	3
	.long 2
	.long MM_ProcType+520
	.long 3
	.ascii	"*>"
	.zero	2
	.long 2
	.long MM_ProcType+536
	.long 6
	.ascii	" => ?"
	.zero	7
	.long 1942183804
	.ascii	"FPrinter"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"SetMethods"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"CallConv"
	.zero	1
	.ascii	"Methods"
	.zero	1
	.ascii	"Raises"
	.zero	1
	.ascii	"Formals"
	.zero	1
	.ascii	"NFormals"
	.zero	1
	.ascii	"LargeResult"
	.zero	1
	.ascii	"CGResult"
	.zero	1
	.ascii	"Result"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"FormalsMatch"
	.zero	1
	.ascii	"Subtyper"
	.zero	1
	.ascii	"EqualChk"
	.zero	1
	.ascii	"FirstArgOK"
	.zero	1
	.ascii	"IsCompatible"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"CheckAlign"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Create"
	.zero	1
	.ascii	"MethodSigAsProcSig"
	.zero	1
	.ascii	"ParseFormal"
	.zero	1
	.ascii	"ParseSignature"
	.zero	1
	.ascii	"Parse"
	.zero	4
	.long ProcType__FPrinter
	.long MM_ProcType+552
	.zero	4
	.long ProcType__GenDesc
	.long MM_ProcType+561
	.zero	4
	.long ProcType__GenMap
	.long MM_ProcType+569
	.zero	4
	.long ProcType__InitCoster
	.long MM_ProcType+576
	.zero	4
	.long ProcType__SetMethods
	.long MM_ProcType+587
	.long MI_ProcType+100
	.long ProcType__New
	.long MM_ProcType+598
	.long MI_ProcType+96
	.long ProcType__CallConv
	.long MM_ProcType+602
	.long MI_ProcType+84
	.long ProcType__Methods
	.long MM_ProcType+611
	.long MI_ProcType+80
	.long ProcType__Raises
	.long MM_ProcType+619
	.long MI_ProcType+76
	.long ProcType__Formals
	.long MM_ProcType+626
	.long MI_ProcType+64
	.long ProcType__NFormals
	.long MM_ProcType+634
	.long MI_ProcType+60
	.long ProcType__LargeResult
	.long MM_ProcType+643
	.long MI_ProcType+88
	.long ProcType__CGResult
	.long MM_ProcType+655
	.long MI_ProcType+72
	.long ProcType__Result
	.long MM_ProcType+664
	.long MI_ProcType+68
	.long ProcType__Is
	.long MM_ProcType+671
	.long MI_ProcType+56
	.long ProcType__Reduce
	.long MM_ProcType+674
	.zero	4
	.long ProcType__FormalsMatch
	.long MM_ProcType+681
	.zero	4
	.long ProcType__Subtyper
	.long MM_ProcType+694
	.zero	4
	.long ProcType__EqualChk
	.long MM_ProcType+703
	.zero	4
	.long ProcType__FirstArgOK
	.long MM_ProcType+712
	.zero	4
	.long ProcType__IsCompatible
	.long MM_ProcType+723
	.long MI_ProcType+92
	.long ProcType__Compiler
	.long MM_ProcType+736
	.zero	4
	.long ProcType__CheckAlign
	.long MM_ProcType+745
	.zero	4
	.long ProcType__Check
	.long MM_ProcType+756
	.zero	4
	.long ProcType__Create
	.long MM_ProcType+762
	.zero	4
	.long ProcType__MethodSigAsProcSig
	.long MM_ProcType+769
	.long MI_ProcType+52
	.long ProcType__ParseFormal
	.long MM_ProcType+788
	.zero	4
	.long ProcType__ParseSignature
	.long MM_ProcType+800
	.long MI_ProcType+48
	.long ProcType__Parse
	.long MM_ProcType+815
	.long MI_ProcType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/ProcType.m3"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 37
.byte 4
.byte 4
.byte 4
.byte 0
.byte 7
.byte 10
.byte 6
.byte 16
.byte 72
.byte 130
.byte 93
.byte 153
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 7
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 44
.byte 196
.byte 243
.byte 11
.byte 16
.byte 18
.byte 149
.byte 76
.byte 98
	.ascii	"ProcType.T"
	.zero	1
	.ascii	"ProcType.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
