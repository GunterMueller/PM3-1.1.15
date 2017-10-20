	.file	"RecordType.mc"
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
	.type	 RecordType__Parse,@function
RecordType__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_RecordType+220,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $13
	movl %eax,%ebx
	pushl %ebx
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,56(%ebx)
	pushl $86
	movl MI_Scanner+108,%eax
	call *%eax
	addl $32,%esp
	call RecordType__ParseFieldList
	pushl $58
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Scope+48,%eax
	call *%eax
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RecordType__Parse,.Lfe1-RecordType__Parse
	.align 16
	.type	 RecordType__ParseFieldList,@function
RecordType__ParseFieldList:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl %esi,-12(%ebp)
	jmp .L3
	.align 16
.L4:
	movl MI_Ident+160,%eax
	call *%eax
	movl %eax,%edi
	movl $0,-8(%ebp)
	cmpb $28,MI_Scanner+44
	jne .L5
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,-8(%ebp)
.L5:
	movl $0,-4(%ebp)
	cmpb $21,MI_Scanner+44
	jne .L6
	pushl $MM_RecordType+232
	movl MI_Error+44,%eax
	call *%eax
	movb $12,MI_Scanner+44
	addl $4,%esp
.L6:
	cmpb $12,MI_Scanner+44
	jne .L7
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,-4(%ebp)
.L7:
	cmpl $0,-8(%ebp)
	jne .L8
	cmpl $0,-4(%ebp)
	jne .L8
	pushl $MM_RecordType+280
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L8:
	movl MI_Ident+156,%ecx
	subl %edi,%ecx
	movl %ecx,-24(%ebp)
	xorl %ebx,%ebx
	leal -1(%edi),%ecx
	movl %ecx,-28(%ebp)
	jmp .L9
	.align 16
.L10:
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L11
	pushl $1252
	call _m3_fault
	.align 16
.L11:
	movl -24(%ebp),%edx
	addl %ebx,%edx
	cmpl %edx,4(%eax)
	ja .L12
	pushl $1250
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,-20(%ebp)
	movl %esi,-16(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Field+44,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+72,%eax
	incl %esi
	call *%eax
	incl %ebx
	addl $8,%esp
.L9:
	cmpl %ebx,-28(%ebp)
	jge .L10
	subl %edi,MI_Ident+156
	cmpb $16,MI_Scanner+44
	jne .L2
	movl MI_Scanner+104,%eax
	call *%eax
.L3:
	cmpb $1,MI_Scanner+44
	je .L4
.L2:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RecordType__ParseFieldList,.Lfe2-RecordType__ParseFieldList
	.align 16
	.type	 RecordType__Reduce,@function
RecordType__Reduce:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L20
	cmpb $1,34(%edx)
	jne .L18
	pushl %edx
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
.L18:
	cmpb $13,34(%edx)
	je .L19
	xorl %eax,%eax
	jmp .L22
	.align 16
.L19:
	testl %edx,%edx
	je .L20
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_RecordType+224
	jg .L21
	movl MM_RecordType+220,%eax
	cmpl %ecx,4(%eax)
	jge .L20
.L21:
	pushl $1493
	call _m3_fault
	.align 16
.L20:
	movl %edx,%eax
.L22:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RecordType__Reduce,.Lfe3-RecordType__Reduce
	.align 16
	.type	 RecordType__Split,@function
RecordType__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl %eax
	call RecordType__Reduce
	addl $4,%esp
	testl %eax,%eax
	je .L24
	movl 56(%eax),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,(%ebx)
	movl $1,%eax
.L24:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RecordType__Split,.Lfe4-RecordType__Split
	.align 16
	.type	 RecordType__LookUp,@function
RecordType__LookUp:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl %eax
	call RecordType__Reduce
	addl $4,%esp
	testl %eax,%eax
	je .L27
	pushl $1
	pushl %ebx
	movl 56(%eax),%eax
	pushl %eax
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,(%esi)
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L27:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RecordType__LookUp,.Lfe5-RecordType__LookUp
	.align 16
	.type	 RecordType__Check,@function
RecordType__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	leal -28(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl %ebx,-68(%ebp)
	movl %ebx,-64(%ebp)
	movl %ebx,-60(%ebp)
	movl %ebx,-56(%ebp)
	movl %ebx,-52(%ebp)
	movl %ebx,-48(%ebp)
	movl %ebx,-44(%ebp)
	movl %ebx,-40(%ebp)
	movl %ebx,-36(%ebp)
	movl %ebx,-32(%ebp)
	movb $0,-1(%ebp)
	movl %ebx,-28(%ebp)
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	pushl %eax
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Scope+92,%eax
	call *%eax
	leal -1(%ebp),%eax
	pushl %eax
	leal 64(%edi),%eax
	pushl %eax
	leal 60(%edi),%eax
	pushl %eax
	movl 56(%edi),%eax
	pushl %eax
	call RecordType__SizeAndAlignment
	movb 35(%edi),%al
	andb $254,%al
	movl %eax,%edx
	andl $252,%edx
	movb %dl,35(%edi)
	andl $248,%edx
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,35(%edi)
	movl 60(%edi),%edx
	movl %edx,%eax
	sall $4,%eax
	subl %edx,%eax
	sall $2,%eax
	subl %edx,%eax
	sall $4,%eax
	subl %edx,%eax
	movl %eax,%esi
	addl 64(%edi),%esi
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $28,%esp
	jmp .L30
	.align 16
.L31:
	leal -68(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Field+56,%eax
	call *%eax
	leal -48(%ebp),%eax
	pushl %eax
	movl -56(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl $1,%ecx
	xorl %edx,%edx
	movb 35(%edi),%dl
	addl $16,%esp
	testb $1,%dl
	jne .L32
	movb -29(%ebp),%al
	andb $1,%al
	xorl %ecx,%ecx
	movb %al,%cl
.L32:
	movl %edx,%eax
	andb $254,%al
	movl %ecx,%edx
	andl $1,%edx
	orl %edx,%eax
	movb %al,35(%edi)
	movl $1,%ecx
	xorl %edx,%edx
	movb %al,%dl
	testb $2,%dl
	jne .L33
	testb $2,-29(%ebp)
	setne %al
	xorl %ecx,%ecx
	movb %al,%cl
.L33:
	andb $253,%dl
	movl %ecx,%eax
	andl $1,%eax
	addl %eax,%eax
	orb %dl,%al
	movb %al,35(%edi)
	movl -68(%ebp),%eax
	pushl %eax
	movl MI_M3ID+60,%eax
	call *%eax
	movl %eax,%ecx
	leal (%esi,%esi,4),%eax
	leal (%esi,%eax,8),%eax
	leal (%ecx,%eax),%esi
	leal (%esi,%esi,8),%eax
	leal (%esi,%eax,4),%eax
	movl %eax,%esi
	addl -48(%ebp),%esi
	movl 8(%ebx),%ebx
	addl $4,%esp
.L30:
	testl %ebx,%ebx
	jne .L31
	movl %esi,28(%edi)
	movl 60(%edi),%eax
	movl %eax,16(%edi)
	movl 60(%edi),%eax
	movl %eax,20(%edi)
	movl 64(%edi),%eax
	movl %eax,24(%edi)
	movb $0,33(%edi)
	movb $0,32(%edi)
	leal -80(%ebp),%esp
	movb $13,34(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RecordType__Check,.Lfe6-RecordType__Check
	.align 16
	.type	 RecordType__SizeAndAlignment,@function
RecordType__SizeAndAlignment:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L36:
	movl $5,-56(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-60(%ebp)
	leal -60(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-52(%ebp)
	movl $0,-48(%ebp)
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	xorl %esi,%esi
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movb $0,-64(%ebp)
	movl MI_Target+776,%eax
	movl 20(%ebp),%ecx
	movl %eax,-4(%ebp)
	movb $1,(%ecx)
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Scope+84,%eax
	movl %esi,%edi
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	jmp .L37
	.align 16
.L38:
	leal -52(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Field+56,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	movl -40(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%edx
	xorl %eax,%eax
	movl 20(%ebp),%ecx
	addl $16,%esp
	cmpb $0,(%ecx)
	je .L39
	testb $4,-5(%ebp)
	setne %al
	andl $255,%eax
.L39:
	movl 20(%ebp),%ecx
	movb %al,(%ecx)
	cmpb $11,-6(%ebp)
	jne .L40
	leal -32(%ebp),%eax
	pushl %eax
	leal -28(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_PackedType+52,%eax
	call *%eax
	movb $1,-64(%ebp)
	addl $12,%esp
	jmp .L41
	.align 16
.L40:
	movl -24(%ebp),%eax
	movl %eax,-28(%ebp)
	movl -16(%ebp),%eax
	movl -4(%ebp),%edx
	cmpl %eax,%edx
	jle .L42
	movl %edx,-4(%ebp)
	jmp .L43
	.align 16
.L42:
	movl %eax,-4(%ebp)
.L43:
	pushl %eax
	movl %edi,%ebx
	pushl %ebx
	call RecordType__RoundUp
	movl %eax,%edi
	xorl %eax,%eax
	movl 20(%ebp),%ecx
	addl $8,%esp
	cmpb $0,(%ecx)
	je .L44
	cmpl %edi,%ebx
	sete %al
	andl $255,%eax
.L44:
	movl 20(%ebp),%ecx
	movb %al,(%ecx)
.L41:
	pushl %edi
	pushl %esi
	movl MI_Field+48,%eax
	call *%eax
	addl -28(%ebp),%edi
	movl 8(%esi),%esi
	addl $8,%esp
.L37:
	testl %esi,%esi
	jne .L38
	cmpb $0,-64(%ebp)
	je .L46
	movl 8(%ebp),%ecx
	pushl %ecx
	leal -4(%ebp),%eax
	pushl %eax
	call RecordType__FindAlignment
	addl $8,%esp
	testl %eax,%eax
	jne .L46
	pushl $MM_RecordType+336
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L46:
	movl -4(%ebp),%eax
	pushl %eax
	movl %edi,%ebx
	pushl %ebx
	call RecordType__RoundUp
	movl %eax,%edi
	xorl %eax,%eax
	movl 20(%ebp),%ecx
	addl $8,%esp
	cmpb $0,(%ecx)
	je .L48
	cmpl %edi,%ebx
	sete %al
	andl $255,%eax
.L48:
	movl 20(%ebp),%ecx
	movb %al,(%ecx)
	testl %edi,%edi
	jle .L49
	movl MI_Target+388,%eax
	cmpl %eax,-4(%ebp)
	jge .L50
	pushl %edi
	pushl %eax
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jne .L50
	movl MI_Target+388,%eax
	movl %eax,-4(%ebp)
.L50:
	movl MI_Target+352,%eax
	cmpl %eax,-4(%ebp)
	jge .L51
	pushl %edi
	pushl %eax
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jne .L51
	movl MI_Target+352,%eax
	movl %eax,-4(%ebp)
.L51:
	movl MI_Target+316,%eax
	cmpl %eax,-4(%ebp)
	jge .L52
	pushl %edi
	pushl %eax
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jne .L52
	movl MI_Target+316,%eax
	movl %eax,-4(%ebp)
.L52:
	movl MI_Target+280,%eax
	cmpl %eax,-4(%ebp)
	jge .L49
	pushl %edi
	pushl %eax
	call m3_mod
	testl %eax,%eax
	jne .L49
	movl MI_Target+280,%eax
	movl %eax,-4(%ebp)
.L49:
	movl 12(%ebp),%ecx
	movl %edi,(%ecx)
	movl 16(%ebp),%ecx
	movl -4(%ebp),%eax
	movl %eax,(%ecx)
.L54:
	movl -60(%ebp),%eax
	leal -76(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RecordType__SizeAndAlignment,.Lfe7-RecordType__SizeAndAlignment
	.align 16
	.type	 RecordType__FindAlignment,@function
RecordType__FindAlignment:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edi
.L56:
	movl MI_Target+632(,%esi,4),%ebx
	cmpl %ebx,(%edi)
	jg .L57
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ebx
	call RecordType__AlignmentOK
	addl $8,%esp
	testl %eax,%eax
	je .L57
	movl %ebx,(%edi)
	movl $1,%eax
	jmp .L61
	.align 16
.L57:
	incl %esi
	cmpl $3,%esi
	jle .L56
	xorl %eax,%eax
.L61:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RecordType__FindAlignment,.Lfe8-RecordType__FindAlignment
	.align 16
	.type	 RecordType__AlignmentOK,@function
RecordType__AlignmentOK:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L63:
	movl $5,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl %ebx,%esi
.L64:
	pushl %edi
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	jmp .L65
	.align 16
.L66:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Field+56,%eax
	call *%eax
	movl %esi,%eax
	addl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+72,%eax
	call *%eax
	movl %eax,%edx
	addl $16,%esp
	testl %edx,%edx
	jne .L67
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L62
	.align 16
.L67:
	movl 8(%ebx),%ebx
.L65:
	testl %ebx,%ebx
	jne .L66
	movl 8(%ebp),%ecx
	leal (%ecx,%esi),%eax
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	call m3_mod
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L64
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L70:
.L62:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RecordType__AlignmentOK,.Lfe9-RecordType__AlignmentOK
	.align 16
	.type	 RecordType__RoundUp,@function
RecordType__RoundUp:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
.L72:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L73
	movl %edx,RTThread__handlerStack
	jmp .L71
	.align 16
.L73:
	movl %edx,RTThread__handlerStack
	leal -1(%ebx,%eax),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	imull %ebx,%eax
.L74:
.L71:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RecordType__RoundUp,.Lfe10-RecordType__RoundUp
	.align 16
	.type	 RecordType__CheckAlign,@function
RecordType__CheckAlign:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 56(%eax),%eax
	pushl %eax
	pushl %edx
	call RecordType__AlignmentOK
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RecordType__CheckAlign,.Lfe11-RecordType__CheckAlign
	.align 16
	.type	 RecordType__Compiler,@function
RecordType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Scope+104,%eax
	call *%eax
	movl -4(%ebp),%ebx
	xorl %esi,%esi
	addl $8,%esp
	jmp .L77
	.align 16
.L78:
	incl %esi
	movl 8(%ebx),%ebx
.L77:
	testl %ebx,%ebx
	jne .L78
	pushl %edi
	movl MI_Type+132,%eax
	call *%eax
	movl 60(%edi),%edx
	addl $4,%esp
	testl %edx,%edx
	jge .L80
	pushl $4833
	call _m3_fault
	.align 16
.L80:
	pushl %esi
	pushl %edx
	pushl %eax
	movl MI_CG+100,%eax
	call *%eax
	movl -4(%ebp),%ebx
	addl $12,%esp
	jmp .L81
	.align 16
.L82:
	pushl %ebx
	movl MI_Field+60,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $4,%esp
.L81:
	testl %ebx,%ebx
	jne .L82
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RecordType__Compiler,.Lfe12-RecordType__Compiler
	.align 16
	.type	 RecordType__EqualChk,@function
RecordType__EqualChk:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	testl %ebx,%ebx
	je .L85
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RecordType+224
	jg .L86
	movl MM_RecordType+220,%eax
	cmpl %edx,4(%eax)
	jge .L85
.L86:
	pushl $4933
	call _m3_fault
	.align 16
.L85:
	movl 56(%ecx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	movl 56(%ebx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L87
	.align 16
.L88:
	pushl %edi
	pushl %ebx
	pushl %esi
	movl MI_Field+64,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L93
	movl 8(%esi),%esi
	movl 8(%ebx),%ebx
.L87:
	testl %esi,%esi
	je .L91
	testl %ebx,%ebx
	jne .L88
.L91:
	xorl %edx,%edx
	testl %esi,%esi
	jne .L92
	testl %ebx,%ebx
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L92:
	movl %edx,%eax
.L93:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RecordType__EqualChk,.Lfe13-RecordType__EqualChk
	.align 16
	.type	 RecordType__InitCoster,@function
RecordType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 56(%eax),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	xorl %esi,%esi
	addl $4,%esp
	jmp .L95
	.align 16
.L96:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Field+56,%eax
	call *%eax
	addl $8,%esp
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L97
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+156,%eax
	call *%eax
	addl %eax,%esi
	addl $8,%esp
	jmp .L98
	.align 16
.L97:
	cmpb $0,12(%ebp)
	je .L99
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L98
.L99:
	pushl $0
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+156,%eax
	call *%eax
	movl $1,%edx
	addl $8,%esp
	cmpl %eax,%edx
	jle .L100
	addl %edx,%esi
	jmp .L98
	.align 16
.L100:
	addl %eax,%esi
.L98:
	testl %esi,%esi
	jge .L102
	movl $2147483647,%eax
	jmp .L104
	.align 16
.L102:
	movl 8(%ebx),%ebx
.L95:
	testl %ebx,%ebx
	jne .L96
	movl %esi,%eax
.L104:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 RecordType__InitCoster,.Lfe14-RecordType__InitCoster
	.align 16
	.type	 RecordType__GenInit,@function
RecordType__GenInit:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 56(%edx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	jmp .L106
	.align 16
.L107:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Field+56,%eax
	call *%eax
	addl $8,%esp
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L108
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+156,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jle .L111
	pushl %edi
	movl MI_CG+228,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 64(%edx),%eax
	testl %eax,%eax
	jge .L110
	pushl $5761
	call _m3_fault
	.align 16
.L110:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+148,%eax
	jmp .L116
	.align 16
.L108:
	cmpb $0,12(%ebp)
	je .L112
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L111
.L112:
	pushl $1
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+52,%eax
	call *%eax
	pushl %edi
	movl MI_CG+228,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $16,%esp
	movl 64(%edx),%eax
	testl %eax,%eax
	jge .L114
	pushl $5889
	call _m3_fault
	.align 16
.L114:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+56,%eax
.L116:
	call *%eax
	addl $16,%esp
.L111:
	movl 8(%esi),%esi
.L106:
	testl %esi,%esi
	jne .L107
	pushl %edi
	movl MI_CG+232,%eax
	call *%eax
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 RecordType__GenInit,.Lfe15-RecordType__GenInit
	.align 16
	.type	 RecordType__GenMap,@function
RecordType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 56(%eax),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	jmp .L118
	.align 16
.L119:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Field+56,%eax
	call *%eax
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	movl %esi,%eax
	pushl $-1
	addl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+160,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $24,%esp
.L118:
	testl %ebx,%ebx
	jne .L119
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 RecordType__GenMap,.Lfe16-RecordType__GenMap
	.align 16
	.type	 RecordType__GenDesc,@function
RecordType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 56(%edx),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%ebp),%edx
	pushl %edx
	xorl %edi,%edi
	pushl $15
	movl MI_TipeDesc+52,%eax
	movl %ebx,%esi
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L121
	jmp .L123
	.align 16
.L124:
	incl %edi
	movl 8(%esi),%esi
.L123:
	testl %esi,%esi
	jne .L124
	pushl %edi
	movl MI_TipeDesc+60,%eax
	call *%eax
	addl $4,%esp
	jmp .L126
	.align 16
.L127:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Field+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+164,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $12,%esp
.L126:
	testl %ebx,%ebx
	jne .L127
.L121:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 RecordType__GenDesc,.Lfe17-RecordType__GenDesc
	.align 16
	.type	 RecordType__FPrinter,@function
RecordType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl $MM_RecordType+428
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $12,%esp
	jmp .L130
	.align 16
.L131:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Value+120,%eax
	call *%eax
	addl %eax,%ebx
	movl 8(%esi),%esi
	addl $8,%esp
.L130:
	testl %esi,%esi
	jne .L131
	movl 12(%ebp),%eax
	movl %ebx,8(%eax)
	cmpl $6,%ebx
	jle .L133
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %eax
	movl MM_RecordType+444,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	addl $8,%esp
	movl %edx,36(%eax)
.L133:
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L134
	.align 16
.L135:
	testl %ebx,%ebx
	jge .L136
	pushl $6721
	call _m3_fault
	.align 16
.L136:
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Value+124,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%esi),%esi
	addl $12,%esp
.L134:
	testl %esi,%esi
	jne .L135
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 RecordType__FPrinter,.Lfe18-RecordType__FPrinter
	.align 16
	.type	 M_RecordType_t0589f958_LINK,@function
M_RecordType_t0589f958_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RecordType+220,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RecordType+152,%eax
	movl %eax,4(%edx)
	movl MM_RecordType+164,%eax
	movl %eax,8(%edx)
	movl MM_RecordType+172,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_RecordType+168,%eax
	movl %eax,20(%edx)
	movl MM_RecordType+176,%eax
	movl %eax,24(%edx)
	movl MM_RecordType+180,%eax
	movl %eax,28(%edx)
	movl MM_RecordType+184,%eax
	movl %eax,32(%edx)
	movl MM_RecordType+188,%eax
	movl %eax,36(%edx)
	movl MM_RecordType+192,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe19:
	.size	 M_RecordType_t0589f958_LINK,.Lfe19-M_RecordType_t0589f958_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RecordType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe20:
	.size	 _m3_fault,.Lfe20-_m3_fault
.globl MM_RecordType
.data
	.align 4
	.type	 MM_RecordType,@object
	.size	 MM_RecordType,1020
MM_RecordType:
	.long MM_RecordType+844
	.long MM_RecordType+44
	.long MM_RecordType+220
	.zero	8
	.long MM_RecordType+624
	.zero	28
	.long 92928344
.byte 113
.byte 52
.byte 251
.byte 21
.byte 41
.byte 205
.byte 114
.byte 16
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RecordType+991
	.long MM_RecordType+995
	.long MM_RecordType+997
	.zero	4
	.long M_RecordType_t0589f958_LINK
	.long -2121051098
	.zero	16
	.long MM_RecordType+1007
	.zero	4
	.long RecordType__Reduce
	.long RecordType__Check
	.long RecordType__FindAlignment
	.long RecordType__AlignmentOK
	.long RecordType__CheckAlign
	.long RecordType__Compiler
	.long RecordType__EqualChk
	.long RecordType__InitCoster
	.long RecordType__GenInit
	.long RecordType__GenMap
	.long RecordType__GenDesc
	.long RecordType__FPrinter
	.long RecordType__Parse
	.long RecordType__ParseFieldList
	.long RecordType__Split
	.long RecordType__LookUp
	.long RecordType__SizeAndAlignment
	.long RecordType__RoundUp
	.long MM_RecordType+444
	.long 92928344
	.long 2
	.long MM_RecordType+240
	.long 35
	.ascii	"default value must begin with ':='"
	.zero	2
	.long 2
	.long MM_RecordType+288
	.long 44
	.ascii	"fields must include a type or default value"
	.zero	1
	.long 2
	.long MM_RecordType+344
	.long 80
	.ascii	"SRC Modula-3 restriction: scalars in packed fields cannot cr"
	.ascii	"oss word boundaries"
	.zero	1
	.long 2
	.long MM_RecordType+436
	.long 7
	.ascii	"RECORD"
	.zero	6
	.long 1942183804
	.ascii	"FPrinter"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"GenInit"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"EqualChk"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"CheckAlign"
	.zero	1
	.ascii	"RoundUp"
	.zero	1
	.ascii	"AlignmentOK"
	.zero	1
	.ascii	"FindAlignment"
	.zero	1
	.ascii	"SizeAndAlignment"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"LookUp"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"ParseFieldList"
	.zero	1
	.ascii	"Parse"
	.zero	3
	.long RecordType__FPrinter
	.long MM_RecordType+452
	.zero	4
	.long RecordType__GenDesc
	.long MM_RecordType+461
	.zero	4
	.long RecordType__GenMap
	.long MM_RecordType+469
	.zero	4
	.long RecordType__GenInit
	.long MM_RecordType+476
	.zero	4
	.long RecordType__InitCoster
	.long MM_RecordType+484
	.zero	4
	.long RecordType__EqualChk
	.long MM_RecordType+495
	.zero	4
	.long RecordType__Compiler
	.long MM_RecordType+504
	.zero	4
	.long RecordType__CheckAlign
	.long MM_RecordType+513
	.zero	4
	.long RecordType__RoundUp
	.long MM_RecordType+524
	.long MI_RecordType+64
	.long RecordType__AlignmentOK
	.long MM_RecordType+532
	.zero	4
	.long RecordType__FindAlignment
	.long MM_RecordType+544
	.zero	4
	.long RecordType__SizeAndAlignment
	.long MM_RecordType+558
	.long MI_RecordType+60
	.long RecordType__Check
	.long MM_RecordType+575
	.zero	4
	.long RecordType__LookUp
	.long MM_RecordType+581
	.long MI_RecordType+56
	.long RecordType__Split
	.long MM_RecordType+588
	.long MI_RecordType+52
	.long RecordType__Reduce
	.long MM_RecordType+594
	.zero	4
	.long RecordType__ParseFieldList
	.long MM_RecordType+601
	.long MI_RecordType+48
	.long RecordType__Parse
	.long MM_RecordType+616
	.long MI_RecordType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/RecordType.m3"
	.zero	1
.byte 4
.byte 14
.byte 14
.byte 0
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 7
.byte 24
	.ascii	"RecordType.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
