	.file	"Convert.mc"
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
	.type	 Convert__FromInt,@function
Convert__FromInt:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
.L2:
	movl $MM_Convert+216,-40(%ebp)
	movl $4,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %edi,%edi
	movb $0,-56(%ebp)
	movb -56(%ebp),%al
	movb %al,-52(%ebp)
	testl %ebx,%ebx
	jne .L3
	movb $48,-36(%ebp)
	movl $1,%edi
	jmp .L4
	.align 16
.L3:
	testl %ebx,%ebx
	jge .L8
	cmpl $-2147483648,%ebx
	jne .L6
	movb $1,-52(%ebp)
	movl $-2147483647,%ebx
.L6:
	movb $1,-56(%ebp)
	negl %ebx
	testl %ebx,%ebx
	jg .L9
	pushl $736
	call _m3_fault
	.align 16
.L9:
	cmpl $32,%edi
	jbe .L10
	pushl $817
	call _m3_fault
	.align 16
.L10:
	pushl %ebx
	xorl %edx,%edx
	movb 16(%ebp),%dl
	movl %edx,-64(%ebp)
	pushl %edx
	call m3_mod
	movl %eax,%ecx
	addl $8,%esp
	cmpl $15,%ecx
	jbe .L11
	pushl $817
	call _m3_fault
	.align 16
.L11:
	movb MM_Convert+44(%ecx),%cl
	movb %cl,-36(%edi,%ebp)
	pushl %ebx
	movl -64(%ebp),%esi
	pushl %esi
	call m3_div
	movl %eax,%ebx
	incl %edi
	addl $8,%esp
.L8:
	testl %ebx,%ebx
	jg .L9
	cmpb $0,-52(%ebp)
	je .L4
	cmpl $32,%edi
	jbe .L14
	pushl $929
	call _m3_fault
	.align 16
.L14:
	movb $48,-36(%edi,%ebp)
	xorl %ecx,%ecx
.L15:
	cmpl $32,%ecx
	jbe .L16
	pushl $977
	call _m3_fault
	.align 16
.L16:
	xorl %ebx,%ebx
	movb -36(%ecx,%ebp),%bl
	cmpl $57,%ebx
	jg .L17
	addl $-48,%ebx
	jmp .L18
	.align 16
.L17:
	addl $-87,%ebx
.L18:
	incl %ebx
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl %eax,%ebx
	jge .L19
	cmpl $32,%ecx
	jbe .L20
	pushl $1073
	call _m3_fault
	.align 16
.L20:
	cmpl $15,%ebx
	jbe .L21
	pushl $1073
	call _m3_fault
	.align 16
.L21:
	movb MM_Convert+44(%ebx),%al
	movb %al,-36(%ecx,%ebp)
	jmp .L22
	.align 16
.L19:
	cmpl $32,%ecx
	jbe .L23
	pushl $1089
	call _m3_fault
	.align 16
.L23:
	movb $48,-36(%ecx,%ebp)
	incl %ecx
	jmp .L15
	.align 16
.L22:
	incl %ecx
	cmpl %edi,%ecx
	jle .L4
	movl %ecx,%edi
.L4:
	movl %edi,%ecx
	cmpb $0,-56(%ebp)
	je .L26
	incl %ecx
.L26:
	cmpb $0,20(%ebp)
	je .L27
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl $9,%eax
	jle .L28
	addl $3,%ecx
	jmp .L27
	.align 16
.L28:
	addl $2,%ecx
.L27:
	movl 8(%ebp),%eax
	cmpl %ecx,4(%eax)
	jge .L30
	pushl $0
	pushl $MI_Convert+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L30:
	xorl %ecx,%ecx
	cmpb $0,-56(%ebp)
	je .L31
	movl 8(%ebp),%ecx
	cmpl $0,4(%ecx)
	jne .L32
	pushl $1330
	call _m3_fault
	.align 16
.L32:
	movl (%ecx),%eax
	movl $1,%ecx
	movb $45,(%eax)
.L31:
	cmpb $0,20(%ebp)
	je .L33
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl $9,%eax
	jle .L34
	movl 8(%ebp),%ebx
	cmpl %ecx,4(%ebx)
	ja .L35
	pushl $1362
	call _m3_fault
	.align 16
.L35:
	movl (%ebx),%eax
	movb $49,(%ecx,%eax)
	incl %ecx
.L34:
	movl 8(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L36
	pushl $1378
	call _m3_fault
	.align 16
.L36:
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl %eax,-60(%ebp)
	movl $10,%esi
	cltd
	idivl %esi
	movl %edx,%ebx
	cmpl $15,%ebx
	jbe .L38
	pushl $1377
	call _m3_fault
	.align 16
.L38:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movb MM_Convert+44(%ebx),%al
	movb %al,(%ecx,%edx)
	movl 8(%ebp),%ebx
	incl %ecx
	cmpl %ecx,4(%ebx)
	ja .L39
	pushl $1394
	call _m3_fault
	.align 16
.L39:
	movl (%ebx),%eax
	movb $95,(%ecx,%eax)
	incl %ecx
.L33:
	leal -1(%edi),%ebx
	jmp .L40
	.align 16
.L41:
	movl 8(%ebp),%edi
	cmpl %ecx,4(%edi)
	ja .L42
	pushl $1442
	call _m3_fault
	.align 16
.L42:
	cmpl $32,%ebx
	jle .L43
	pushl $1441
	call _m3_fault
	.align 16
.L43:
	movl (%edi),%edx
	movb -36(%ebx,%ebp),%al
	decl %ebx
	movb %al,(%ecx,%edx)
	incl %ecx
.L40:
	testl %ebx,%ebx
	jge .L41
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ecx,%eax
.L45:
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Convert__FromInt,.Lfe1-Convert__FromInt
	.align 16
	.type	 Convert__FromUnsigned,@function
Convert__FromUnsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movb 16(%ebp),%bl
.L47:
	movl $MM_Convert+216,-40(%ebp)
	movl $4,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %esi,%esi
	testl %ecx,%ecx
	jne .L51
	movb $48,-36(%ebp)
	movl $1,%esi
	jmp .L49
	.align 16
.L51:
	cmpl $32,%esi
	jbe .L52
	pushl $1809
	call _m3_fault
	.align 16
.L52:
	xorl %eax,%eax
	movb %bl,%al
	movl %eax,-52(%ebp)
	movl %ecx,%eax
	xorl %edx,%edx
	divl -52(%ebp)
	movl %edx,-60(%ebp)
	movl %eax,%ecx
	cmpl $15,%edx
	jbe .L53
	pushl $1809
	call _m3_fault
	.align 16
.L53:
	movl -60(%ebp),%eax
	movb MM_Convert+44(%eax),%al
	movb %al,-36(%esi,%ebp)
	incl %esi
	testl %ecx,%ecx
	jne .L51
.L49:
	movl %esi,%ecx
	cmpb $0,20(%ebp)
	je .L55
	xorl %eax,%eax
	movb %bl,%al
	cmpl $9,%eax
	jle .L56
	addl $3,%ecx
	jmp .L55
	.align 16
.L56:
	addl $2,%ecx
.L55:
	movl 8(%ebp),%eax
	cmpl %ecx,4(%eax)
	jge .L58
	pushl $0
	pushl $MI_Convert+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L58:
	xorl %ecx,%ecx
	cmpb $0,20(%ebp)
	je .L59
	xorl %eax,%eax
	movb %bl,%al
	cmpl $9,%eax
	jle .L60
	movl 8(%ebp),%edx
	movl %edx,-60(%ebp)
	cmpl %ecx,4(%edx)
	ja .L61
	pushl $2034
	call _m3_fault
	.align 16
.L61:
	movl -60(%ebp),%edi
	movl (%edi),%edi
	movl $1,%ecx
	movb $49,(%edi)
.L60:
	movl 8(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L62
	pushl $2050
	call _m3_fault
	.align 16
.L62:
	xorl %eax,%eax
	movb %bl,%al
	movl %eax,-56(%ebp)
	movl $10,%edi
	cltd
	idivl %edi
	movl %edx,%ebx
	cmpl $15,%ebx
	jbe .L64
	pushl $2049
	call _m3_fault
	.align 16
.L64:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movb MM_Convert+44(%ebx),%al
	movb %al,(%ecx,%edx)
	movl 8(%ebp),%ebx
	incl %ecx
	cmpl %ecx,4(%ebx)
	ja .L65
	pushl $2066
	call _m3_fault
	.align 16
.L65:
	movl (%ebx),%eax
	movb $95,(%ecx,%eax)
	incl %ecx
.L59:
	leal -1(%esi),%ebx
	jmp .L66
	.align 16
.L67:
	movl 8(%ebp),%esi
	cmpl %ecx,4(%esi)
	ja .L68
	pushl $2114
	call _m3_fault
	.align 16
.L68:
	cmpl $32,%ebx
	jle .L69
	pushl $2113
	call _m3_fault
	.align 16
.L69:
	movl (%esi),%edx
	movb -36(%ebx,%ebp),%al
	decl %ebx
	movb %al,(%ecx,%edx)
	incl %ecx
.L66:
	testl %ebx,%ebx
	jge .L67
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ecx,%eax
.L71:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Convert__FromUnsigned,.Lfe2-Convert__FromUnsigned
	.align 16
	.type	 Convert__FromFloat,@function
Convert__FromFloat:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 16(%ebp),%edx
.L73:
	movl $MM_Convert+216,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $69
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edx
	flds 12(%ebp)
	subl $8,%esp
	fstpl (%esp)
	movl 8(%ebp),%eax
	pushl %eax
	call Convert__InternalFromLongFloat
	movl %eax,%edx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L74:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Convert__FromFloat,.Lfe3-Convert__FromFloat
	.align 16
	.type	 Convert__FromLongFloat,@function
Convert__FromLongFloat:
	pushl %ebp
	movl %esp,%ebp
	movl 20(%ebp),%edx
	pushl $68
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %edx
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call Convert__InternalFromLongFloat
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Convert__FromLongFloat,.Lfe4-Convert__FromLongFloat
	.align 16
	.type	 Convert__FromExtended,@function
Convert__FromExtended:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 20(%ebp),%edx
.L77:
	movl $MM_Convert+216,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $88
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %edx
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call Convert__InternalFromLongFloat
	movl %eax,%edx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L78:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Convert__FromExtended,.Lfe5-Convert__FromExtended
	.align 16
	.type	 Convert__InternalFromLongFloat,@function
Convert__InternalFromLongFloat:
	pushl %ebp
	movl %esp,%ebp
	subl $140,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L80:
	movl $MM_Convert+216,-16(%ebp)
	movl $4,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %ebx,%ebx
	movl %ebx,-8(%ebp)
	movl %ebx,-120(%ebp)
	movl %ebx,-116(%ebp)
	movl -120(%ebp),%edi
	movb $1,-92(%ebp)
	movl $2147483647,-72(%ebp)
	cmpb $0,24(%ebp)
	je .L81
	xorl %eax,%eax
	movb 24(%ebp),%al
	cmpl $1,%eax
	je .L81
	cmpl $4,%eax
	jne .L82
.L81:
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%ecx
	pushl %ecx
	pushl $3
	pushl 16(%ebp)
	pushl 12(%ebp)
	call dtoa
	movl %eax,%edx
	movl %edx,%ebx
	movl -8(%ebp),%esi
	subl %ebx,%esi
	leal -36(%ebp),%eax
	leal -28(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $1,-32(%ebp)
	movl %esi,-28(%ebp)
	pushl %eax
	movl MM_Convert+224,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-116(%ebp)
	movl $0,-140(%ebp)
	leal -1(%esi),%ecx
	movl %ecx,-124(%ebp)
	addl $36,%esp
	jmp .L83
	.align 16
.L84:
	cmpl $0,-116(%ebp)
	jne .L85
	pushl $3300
	call _m3_fault
	.align 16
.L85:
	movl -116(%ebp),%edx
	movl -140(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L86
	pushl $3298
	call _m3_fault
	.align 16
.L86:
	testl %ebx,%ebx
	jne .L87
	pushl $3300
	call _m3_fault
	.align 16
.L87:
	movl (%edx),%edx
	movb (%ebx),%al
	movl -140(%ebp),%ecx
	incl %ebx
	movb %al,(%ecx,%edx)
	incl %ecx
	movl %ecx,-140(%ebp)
.L83:
	movl -124(%ebp),%ecx
	cmpl %ecx,-140(%ebp)
	jle .L84
	movl -4(%ebp),%eax
	cmpl $9999,%eax
	jne .L89
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L90
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L91
	pushl $3378
	call _m3_fault
	.align 16
.L91:
	movl (%eax),%eax
	movl $1,%edi
	movb $45,(%eax)
	jmp .L93
	.align 16
.L90:
	movl %eax,%edi
.L93:
	testl %esi,%esi
	jge .L94
	pushl $3441
	call _m3_fault
	.align 16
.L94:
	movl %esi,-40(%ebp)
	leal (%esi,%edi),%ebx
	movl 8(%ebp),%edx
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L95
	pushl $3441
	call _m3_fault
	.align 16
.L95:
	addl (%edx),%edi
	movl %edi,-44(%ebp)
	cmpl $0,-116(%ebp)
	jne .L96
	pushl $3444
	call _m3_fault
	.align 16
.L96:
	movl -116(%ebp),%edx
	cmpl %esi,4(%edx)
	je .L133
	pushl $3443
	call _m3_fault
	.align 16
.L89:
	testl %eax,%eax
	jg .L98
	movl $0,-112(%ebp)
	movl $1,-108(%ebp)
	negl %eax
	movl 20(%ebp),%ecx
	movl %ecx,-104(%ebp)
	cmpl %eax,%ecx
	jle .L99
	movl %eax,-104(%ebp)
.L99:
	movl 20(%ebp),%eax
	subl -104(%ebp),%eax
	movl %esi,-100(%ebp)
	cmpl %eax,%esi
	jle .L100
	movl %eax,-100(%ebp)
.L100:
	movl -104(%ebp),%eax
	addl -100(%ebp),%eax
	movl 20(%ebp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	movl -112(%ebp),%ecx
	jmp .L198
	.align 16
.L98:
	cmpl %esi,%eax
	jg .L104
	movl %eax,-112(%ebp)
	movl $0,-104(%ebp)
	movl -104(%ebp),%ecx
	movl %ecx,-108(%ebp)
	movl %esi,%eax
	subl -112(%ebp),%eax
	movl 20(%ebp),%ecx
	movl %ecx,-100(%ebp)
	cmpl %eax,%ecx
	jle .L105
	movl %eax,-100(%ebp)
.L105:
	movl 20(%ebp),%eax
	subl -100(%ebp),%eax
	movl -104(%ebp),%ecx
.L198:
	movl %ecx,-96(%ebp)
	testl %eax,%eax
	jle .L103
	movl %eax,-96(%ebp)
	jmp .L103
	.align 16
.L104:
	movl %esi,-112(%ebp)
	subl %esi,%eax
	movl %eax,-108(%ebp)
	movl 20(%ebp),%ecx
	movl %ecx,-104(%ebp)
	movl $0,-96(%ebp)
	movl -96(%ebp),%ecx
	movl %ecx,-100(%ebp)
.L103:
	xorl %eax,%eax
	movb 24(%ebp),%al
	cmpl $1,%eax
	je .L108
	cmpl $4,%eax
	jne .L82
.L108:
	movl $0,-96(%ebp)
	jmp .L110
	.align 16
.L111:
	decl -100(%ebp)
.L110:
	cmpl $0,-100(%ebp)
	jle .L115
	cmpl $0,-116(%ebp)
	jne .L113
	pushl $3812
	call _m3_fault
	.align 16
.L113:
	movl -116(%ebp),%edx
	movl -112(%ebp),%ebx
	addl -100(%ebp),%ebx
	leal -1(%ebx),%eax
	cmpl %eax,4(%edx)
	ja .L114
	pushl $3810
	call _m3_fault
	.align 16
.L114:
	movl (%edx),%eax
	addl %ebx,%eax
	cmpb $48,-1(%eax)
	je .L111
.L115:
	cmpl $0,-100(%ebp)
	jne .L82
	movl -100(%ebp),%ecx
	movl %ecx,-104(%ebp)
.L82:
	xorl %eax,%eax
	movb 24(%ebp),%al
	cmpl $2,%eax
	je .L117
	cmpl $3,%eax
	je .L117
	cmpl $4,%eax
	jne .L147
.L117:
	movl 20(%ebp),%edx
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	incl %edx
	pushl %edx
	pushl $2
	pushl 16(%ebp)
	pushl 12(%ebp)
	call dtoa
	movl %eax,%edx
	movl %edx,%ebx
	movl -8(%ebp),%esi
	subl %ebx,%esi
	leal -36(%ebp),%eax
	leal -28(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $1,-32(%ebp)
	movl %esi,-28(%ebp)
	pushl %eax
	movl MM_Convert+224,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-120(%ebp)
	movl $0,-140(%ebp)
	leal -1(%esi),%ecx
	movl %ecx,-128(%ebp)
	addl $36,%esp
	jmp .L119
	.align 16
.L120:
	cmpl $0,-120(%ebp)
	jne .L121
	pushl $4020
	call _m3_fault
	.align 16
.L121:
	movl -120(%ebp),%edx
	movl -140(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L122
	pushl $4018
	call _m3_fault
	.align 16
.L122:
	testl %ebx,%ebx
	jne .L123
	pushl $4020
	call _m3_fault
	.align 16
.L123:
	movl (%edx),%edx
	movb (%ebx),%al
	movl -140(%ebp),%ecx
	incl %ebx
	movb %al,(%ecx,%edx)
	incl %ecx
	movl %ecx,-140(%ebp)
.L119:
	movl -128(%ebp),%ecx
	cmpl %ecx,-140(%ebp)
	jle .L120
	movl -4(%ebp),%edx
	cmpl $9999,%edx
	jne .L125
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L126
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L127
	pushl $4098
	call _m3_fault
	.align 16
.L127:
	movl (%eax),%eax
	movl $1,%edi
	movb $45,(%eax)
	jmp .L129
	.align 16
.L126:
	movl %eax,%edi
.L129:
	testl %esi,%esi
	jge .L130
	pushl $4161
	call _m3_fault
	.align 16
.L130:
	movl %esi,-40(%ebp)
	leal (%esi,%edi),%ebx
	movl 8(%ebp),%edx
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L131
	pushl $4161
	call _m3_fault
	.align 16
.L131:
	addl (%edx),%edi
	movl %edi,-44(%ebp)
	cmpl $0,-120(%ebp)
	jne .L132
	pushl $4164
	call _m3_fault
	.align 16
.L132:
	movl -120(%ebp),%edx
	cmpl %esi,4(%edx)
	je .L133
	pushl $4163
	call _m3_fault
	.align 16
.L133:
	pushl %esi
	movl (%edx),%eax
	pushl %eax
	pushl %edi
	call memmove
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
	jmp .L79
	.align 16
.L125:
	movl $1,%eax
	movl %esi,-88(%ebp)
	cmpl %eax,%esi
	jle .L134
	movl %eax,-88(%ebp)
.L134:
	movl $0,-84(%ebp)
	leal -1(%esi),%eax
	movl 20(%ebp),%ecx
	movl %ecx,-80(%ebp)
	cmpl %eax,%ecx
	jle .L135
	movl %eax,-80(%ebp)
.L135:
	movl 20(%ebp),%eax
	subl %esi,%eax
	incl %eax
	movl -84(%ebp),%ecx
	movl %ecx,-76(%ebp)
	testl %eax,%eax
	jle .L136
	movl %eax,-76(%ebp)
.L136:
	decl %edx
	movl %edx,-72(%ebp)
	xorl %eax,%eax
	movb 24(%ebp),%al
	cmpl $3,%eax
	je .L138
	cmpl $4,%eax
	jne .L147
.L138:
	movl -84(%ebp),%ecx
	movl %ecx,-76(%ebp)
	jmp .L140
	.align 16
.L141:
	decl -80(%ebp)
.L140:
	cmpl $0,-80(%ebp)
	jle .L145
	cmpl $0,-120(%ebp)
	jne .L143
	pushl $4340
	call _m3_fault
	.align 16
.L143:
	movl -120(%ebp),%edx
	movl -88(%ebp),%ebx
	addl -80(%ebp),%ebx
	leal -1(%ebx),%eax
	cmpl %eax,4(%edx)
	ja .L144
	pushl $4338
	call _m3_fault
	.align 16
.L144:
	movl (%edx),%eax
	addl %ebx,%eax
	cmpb $48,-1(%eax)
	je .L141
.L145:
	cmpl $0,-80(%ebp)
	jne .L118
	movl -80(%ebp),%ecx
	movl %ecx,-84(%ebp)
.L118:
	cmpb $4,24(%ebp)
	jne .L147
	movl -112(%ebp),%eax
	addl -108(%ebp),%eax
	movl -104(%ebp),%ecx
	leal 1(%eax,%ecx),%eax
	addl -100(%ebp),%eax
	movl -96(%ebp),%ecx
	leal (%ecx,%eax),%esi
	movl -88(%ebp),%eax
	addl $0,%eax
	movl -84(%ebp),%ecx
	leal 1(%eax,%ecx),%eax
	addl -80(%ebp),%eax
	movl -76(%ebp),%ecx
	leal (%ecx,%eax),%ebx
	cmpl $2147483647,-72(%ebp)
	je .L148
	cmpl $0,-72(%ebp)
	jge .L149
	addl $3,%ebx
	movl -52(%ebp),%eax
	negl %eax
	jmp .L150
	.align 16
.L151:
	pushl %eax
	incl %ebx
	pushl $10
	call m3_div
	addl $8,%esp
.L150:
	cmpl $9,%eax
	jg .L151
	jmp .L148
	.align 16
.L149:
	addl $2,%ebx
	movl -52(%ebp),%eax
	jmp .L154
	.align 16
.L155:
	pushl %eax
	incl %ebx
	pushl $10
	call m3_div
	addl $8,%esp
.L154:
	cmpl $9,%eax
	jg .L155
.L148:
	cmpl %ebx,%esi
	jle .L157
	movb $3,24(%ebp)
	jmp .L197
	.align 16
.L157:
	movb $1,24(%ebp)
	cmpl $0,-100(%ebp)
	jne .L147
	cmpl $0,-104(%ebp)
	jne .L147
	movb $0,-92(%ebp)
.L147:
	cmpb $0,24(%ebp)
	je .L160
.L197:
	cmpb $1,24(%ebp)
	jne .L161
.L160:
	movl -112(%ebp),%edx
	movl -108(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -104(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -100(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -96(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $2147483647,-52(%ebp)
	movb -92(%ebp),%cl
	movb %cl,-48(%ebp)
	movl -116(%ebp),%esi
	jmp .L162
	.align 16
.L161:
	movl -88(%ebp),%edx
	movl $0,-68(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -80(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -76(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movb $1,-48(%ebp)
	movl -120(%ebp),%esi
.L162:
	cmpl $0,-12(%ebp)
	je .L163
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L164
	pushl $4898
	call _m3_fault
	.align 16
.L164:
	movl (%eax),%eax
	movb $45,(%edi,%eax)
	incl %edi
.L163:
	xorl %ebx,%ebx
	movl $1,-140(%ebp)
	movl %edx,-132(%ebp)
	jmp .L165
	.align 16
.L166:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L167
	pushl $4978
	call _m3_fault
	.align 16
.L167:
	testl %esi,%esi
	jne .L168
	pushl $4980
	call _m3_fault
	.align 16
.L168:
	movl %esi,%edx
	cmpl %ebx,4(%edx)
	ja .L169
	pushl $4978
	call _m3_fault
	.align 16
.L169:
	movl (%edx),%edx
	movl (%eax),%eax
	movb (%ebx,%edx),%dl
	movb %dl,(%edi,%eax)
	incl %edi
	incl %ebx
	incl -140(%ebp)
.L165:
	movl -132(%ebp),%ecx
	cmpl %ecx,-140(%ebp)
	jle .L166
	movl $1,%edx
	movl -68(%ebp),%ecx
	movl %ecx,-140(%ebp)
	jmp .L171
	.align 16
.L172:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L173
	pushl $5010
	call _m3_fault
	.align 16
.L173:
	movl (%eax),%eax
	incl %edx
	movb $48,(%edi,%eax)
	incl %edi
.L171:
	cmpl %edx,-140(%ebp)
	jge .L172
	cmpb $0,-48(%ebp)
	je .L175
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L176
	pushl $5042
	call _m3_fault
	.align 16
.L176:
	movl (%eax),%eax
	movb $46,(%edi,%eax)
	incl %edi
.L175:
	movl $1,%edx
	movl -64(%ebp),%ecx
	movl %ecx,-140(%ebp)
	jmp .L177
	.align 16
.L178:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L179
	pushl $5074
	call _m3_fault
	.align 16
.L179:
	movl (%eax),%eax
	incl %edx
	movb $48,(%edi,%eax)
	incl %edi
.L177:
	cmpl %edx,-140(%ebp)
	jge .L178
	movl $1,-140(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-136(%ebp)
	jmp .L181
	.align 16
.L182:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L183
	pushl $5106
	call _m3_fault
	.align 16
.L183:
	testl %esi,%esi
	jne .L184
	pushl $5108
	call _m3_fault
	.align 16
.L184:
	movl %esi,%edx
	cmpl %ebx,4(%edx)
	ja .L185
	pushl $5106
	call _m3_fault
	.align 16
.L185:
	movl (%edx),%edx
	movl (%eax),%eax
	movb (%ebx,%edx),%dl
	movb %dl,(%edi,%eax)
	incl %edi
	incl %ebx
	incl -140(%ebp)
.L181:
	movl -136(%ebp),%ecx
	cmpl %ecx,-140(%ebp)
	jle .L182
	movl $1,%edx
	movl -56(%ebp),%ebx
	jmp .L187
	.align 16
.L188:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L189
	pushl $5138
	call _m3_fault
	.align 16
.L189:
	movl (%eax),%eax
	incl %edx
	movb $48,(%edi,%eax)
	incl %edi
.L187:
	cmpl %ebx,%edx
	jle .L188
	cmpl $2147483647,-52(%ebp)
	je .L191
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L192
	pushl $5170
	call _m3_fault
	.align 16
.L192:
	movl (%eax),%eax
	movb 28(%ebp),%cl
	movb %cl,(%edi,%eax)
	addl $1,%edi
	jns .L193
	pushl $5185
	call _m3_fault
	.align 16
.L193:
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	subl %edi,%eax
	jns .L194
	pushl $5185
	call _m3_fault
	.align 16
.L194:
	movl %eax,-40(%ebp)
	addl %edi,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L195
	pushl $5185
	call _m3_fault
	.align 16
.L195:
	movl (%edx),%edx
	addl %edi,%edx
	movl %edx,-44(%ebp)
	pushl $0
	pushl $10
	movl -52(%ebp),%ecx
	pushl %ecx
	leal -44(%ebp),%eax
	pushl %eax
	call Convert__FromInt
	addl %eax,%edi
.L191:
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edi,%eax
.L196:
.L79:
	leal -152(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Convert__InternalFromLongFloat,.Lfe6-Convert__InternalFromLongFloat
	.align 16
	.type	 Convert__ToInt,@function
Convert__ToInt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L201
	movl 12(%ebp),%eax
	movl %ebx,(%eax)
	movl %ebx,%eax
	jmp .L212
	.align 16
.L201:
	movl (%esi),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $45,%eax
	jne .L206
	movl $1,%ebx
	decl %edx
	jns .L203
	pushl $5489
	call _m3_fault
	.align 16
.L203:
	movl %edx,-4(%ebp)
	movl 4(%esi),%eax
	decl %eax
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jle .L204
	pushl $5489
	call _m3_fault
	.align 16
.L204:
	movl (%esi),%esi
	incl %esi
	movl %esi,-8(%ebp)
	pushl $-2147483648
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	call Convert__InternalToInt
	notl %eax
	incl %eax
	jmp .L205
	.align 16
.L206:
	cmpl $43,%eax
	jne .L207
	movl $1,%ebx
.L207:
	testl %ebx,%ebx
	jge .L208
	pushl $5601
	call _m3_fault
	.align 16
.L208:
	movl %edx,%eax
	subl %ebx,%eax
	jns .L209
	pushl $5601
	call _m3_fault
	.align 16
.L209:
	movl %eax,-4(%ebp)
	addl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L210
	pushl $5601
	call _m3_fault
	.align 16
.L210:
	movl (%esi),%esi
	addl %ebx,%esi
	movl %esi,-8(%ebp)
	pushl $2147483647
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	call Convert__InternalToInt
.L205:
	movl 12(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	je .L211
	addl %ebx,%edx
	movl %edx,(%esi)
.L211:
.L212:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Convert__ToInt,.Lfe7-Convert__ToInt
	.align 16
	.type	 Convert__ToUnsigned,@function
Convert__ToUnsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	xorl %ebx,%ebx
	movl 4(%edx),%ecx
	testl %ecx,%ecx
	jne .L215
	movl 12(%ebp),%eax
	movl %ebx,(%eax)
	movl %ebx,%eax
	jmp .L221
	.align 16
.L215:
	movl (%edx),%eax
	cmpb $43,(%eax)
	jne .L216
	movl $1,%ebx
.L216:
	testl %ebx,%ebx
	jge .L217
	pushl $5953
	call _m3_fault
	.align 16
.L217:
	movl %ecx,%eax
	subl %ebx,%eax
	jns .L218
	pushl $5953
	call _m3_fault
	.align 16
.L218:
	movl %eax,-4(%ebp)
	addl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L219
	pushl $5953
	call _m3_fault
	.align 16
.L219:
	movl (%edx),%edx
	addl %ebx,%edx
	movl %edx,-8(%ebp)
	pushl $-1
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	call Convert__InternalToInt
	movl 12(%ebp),%ecx
	movl (%ecx),%edx
	testl %edx,%edx
	je .L220
	addl %ebx,%edx
	movl %edx,(%ecx)
.L220:
.L221:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Convert__ToUnsigned,.Lfe8-Convert__ToUnsigned
	.align 16
	.type	 Convert__InternalToInt,@function
Convert__InternalToInt:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl 8(%ebp),%eax
	movl %edi,-28(%ebp)
	movl 4(%eax),%edx
	movl %edx,-16(%ebp)
	testl %edx,%edx
	jne .L224
	movl 12(%ebp),%esi
	movl %edi,(%esi)
	xorl %eax,%eax
	jmp .L258
	.align 16
.L224:
	movl (%eax),%eax
	movb (%eax),%al
	jmp .L259
	.align 16
.L226:
	incl -28(%ebp)
	movl -16(%ebp),%edx
	cmpl %edx,-28(%ebp)
	jl .L227
	movl -28(%ebp),%edx
	movl 12(%ebp),%esi
	movl %edx,(%esi)
	xorl %eax,%eax
	jmp .L258
	.align 16
.L227:
	movl 8(%ebp),%eax
	movl -28(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L228
	pushl $6466
	call _m3_fault
	.align 16
.L228:
	movl (%eax),%eax
	movl -28(%ebp),%edx
	movb (%edx,%eax),%al
.L259:
	movb %al,-4(%ebp)
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl $48,%eax
	je .L226
	cmpl $49,%eax
	jne .L230
	movl -28(%ebp),%esi
	addl $3,%esi
	movl %esi,-20(%ebp)
	movl -16(%ebp),%edx
	cmpl %edx,%esi
	jge .L230
	movl -28(%ebp),%eax
	movl 8(%ebp),%ecx
	addl $2,%eax
	movl 4(%ecx),%esi
	movl %esi,-32(%ebp)
	cmpl %esi,%eax
	jb .L231
	pushl $6530
	call _m3_fault
	.align 16
.L231:
	movl (%ecx),%ecx
	movl -28(%ebp),%edx
	cmpb $95,2(%edx,%ecx)
	jne .L230
	movl %edx,%eax
	incl %eax
	cmpl %eax,-32(%ebp)
	ja .L232
	pushl $6530
	call _m3_fault
	.align 16
.L232:
	movl -28(%ebp),%esi
	xorl %eax,%eax
	movb 1(%esi,%ecx),%al
	cmpl $47,%eax
	jle .L230
	cmpl $54,%eax
	jg .L230
	movb $1,-12(%ebp)
	leal -38(%eax),%ebx
	movl -20(%ebp),%edx
	movl %edx,-28(%ebp)
	movl -32(%ebp),%esi
	cmpl %esi,%edx
	jb .L235
	pushl $6626
	call _m3_fault
	.align 16
.L235:
	movl -28(%ebp),%edx
	movb (%edx,%ecx),%cl
	movb %cl,-4(%ebp)
	jmp .L236
	.align 16
.L230:
	xorl %ebx,%ebx
	movb -4(%ebp),%bl
	cmpl $49,%ebx
	jle .L237
	cmpl $57,%ebx
	jg .L237
	movl -28(%ebp),%esi
	addl $2,%esi
	movl %esi,-24(%ebp)
	movl -16(%ebp),%edx
	cmpl %edx,%esi
	jge .L237
	movl -28(%ebp),%eax
	movl 8(%ebp),%ecx
	incl %eax
	movl 4(%ecx),%esi
	movl %esi,-32(%ebp)
	cmpl %esi,%eax
	jb .L238
	pushl $6642
	call _m3_fault
	.align 16
.L238:
	movl (%ecx),%eax
	movl -28(%ebp),%edx
	cmpb $95,1(%edx,%eax)
	jne .L237
	movb $1,-12(%ebp)
	addl $-48,%ebx
	movl -24(%ebp),%esi
	movl %esi,-28(%ebp)
	movl -32(%ebp),%edx
	cmpl %edx,%esi
	jb .L239
	pushl $6722
	call _m3_fault
	.align 16
.L239:
	movl -28(%ebp),%esi
	movb (%esi,%eax),%al
	movb %al,-4(%ebp)
	jmp .L236
	.align 16
.L237:
	movb $0,-12(%ebp)
	xorl %ebx,%ebx
	movb 16(%ebp),%bl
.L236:
	movl -28(%ebp),%edx
	movl %edx,-8(%ebp)
.L240:
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl $47,%eax
	jle .L241
	cmpl $57,%eax
	jg .L241
	leal -48(%eax),%ecx
	jmp .L242
	.align 16
.L241:
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl $64,%eax
	jle .L243
	cmpl $70,%eax
	jg .L243
	leal -55(%eax),%ecx
	jmp .L242
	.align 16
.L243:
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl $96,%eax
	jle .L245
	cmpl $102,%eax
	jg .L245
	leal -87(%eax),%ecx
.L242:
	cmpl %ebx,%ecx
	jge .L245
	movl 20(%ebp),%eax
	xorl %edx,%edx
	divl %ebx
	cmpl %edi,%eax
	jb .L245
	movl %edi,%esi
	imull %ebx,%esi
	movl %esi,-32(%ebp)
	movl 20(%ebp),%eax
	subl %ecx,%eax
	cmpl %edi,%eax
	jb .L245
	movl %esi,%edi
	addl %ecx,%edi
	incl -28(%ebp)
	movl -16(%ebp),%edx
	cmpl %edx,-28(%ebp)
	jge .L245
	movl 8(%ebp),%eax
	movl -28(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L250
	pushl $7090
	call _m3_fault
	.align 16
.L250:
	movl (%eax),%eax
	movl -28(%ebp),%edx
	movb (%edx,%eax),%al
	movb %al,-4(%ebp)
	jmp .L240
	.align 16
.L245:
	movl -28(%ebp),%esi
	cmpl %esi,-8(%ebp)
	jne .L251
	cmpb $0,-12(%ebp)
	je .L251
	cmpl $9,%ebx
	jg .L252
	decl %esi
	movl %esi,-28(%ebp)
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl %eax,%ebx
	jge .L253
	movl %ebx,%edi
	jmp .L251
	.align 16
.L253:
	decl -28(%ebp)
	jmp .L251
	.align 16
.L252:
	decl -28(%ebp)
	leal -10(%ebx),%eax
	xorl %ecx,%ecx
	movb 16(%ebp),%cl
	cmpl %ecx,%eax
	jge .L256
	leal -10(%ebx,%ecx),%edi
	jmp .L251
	.align 16
.L256:
	decl -28(%ebp)
	movl $1,%edi
.L251:
	movl -28(%ebp),%esi
	movl 12(%ebp),%edx
	movl %edi,%eax
	movl %esi,(%edx)
.L258:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Convert__InternalToInt,.Lfe9-Convert__InternalToInt
	.align 16
	.type	 Convert__ToFloat,@function
Convert__ToFloat:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %esi
	pushl %ebx
.L261:
	movl $MM_Convert+216,-48(%ebp)
	movl $4,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	movl $0,-36(%ebp)
	movl 4(%ecx),%edx
	cmpl $31,%edx
	jg .L262
	leal -32(%ebp),%esi
	movl %esi,-64(%ebp)
	movl $32,-60(%ebp)
	leal -44(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal -64(%ebp),%eax
	pushl %eax
	pushl $69
	pushl $69
	pushl %ecx
	call Convert__ToBinary
	movb %al,%bl
	addl $24,%esp
	jmp .L263
	.align 16
.L262:
	leal -76(%ebp),%eax
	leal -68(%ebp),%esi
	movl %esi,-76(%ebp)
	movl $1,-72(%ebp)
	incl %edx
	movl %edx,-68(%ebp)
	pushl %eax
	movl MM_Convert+232,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-36(%ebp)
	addl $8,%esp
	testl %edx,%edx
	jne .L264
	pushl $7796
	call _m3_fault
	.align 16
.L264:
	leal -44(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $69
	pushl $69
	movl 8(%ebp),%eax
	pushl %eax
	call Convert__ToBinary
	movb %al,%bl
	leal -36(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	addl $28,%esp
.L263:
	testb %bl,%bl
	je .L265
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -44(%ebp)
	fstps -80(%ebp)
	flds -80(%ebp)
	jmp .L260
	.align 16
.L265:
	pushl $0
	pushl $MI_Convert+44
	movl MI_RTHooks+52,%eax
	call *%eax
	fldz
.L266:
.L260:
	leal -88(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Convert__ToFloat,.Lfe10-Convert__ToFloat
	.align 16
	.type	 Convert__ToLongFloat,@function
Convert__ToLongFloat:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl $0,-36(%ebp)
	movl 4(%ecx),%edx
	cmpl $31,%edx
	jg .L268
	leal -32(%ebp),%esi
	movl %esi,-52(%ebp)
	movl $32,-48(%ebp)
	leal -44(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal -52(%ebp),%eax
	pushl %eax
	pushl $100
	pushl $68
	pushl %ecx
	call Convert__ToBinary
	movb %al,%bl
	addl $24,%esp
	jmp .L269
	.align 16
.L268:
	leal -64(%ebp),%eax
	leal -56(%ebp),%esi
	movl %esi,-64(%ebp)
	movl $1,-60(%ebp)
	incl %edx
	movl %edx,-56(%ebp)
	pushl %eax
	movl MM_Convert+232,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-36(%ebp)
	addl $8,%esp
	testl %edx,%edx
	jne .L270
	pushl $8148
	call _m3_fault
	.align 16
.L270:
	leal -44(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $100
	pushl $68
	movl 8(%ebp),%eax
	pushl %eax
	call Convert__ToBinary
	movb %al,%bl
	leal -36(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	addl $28,%esp
.L269:
	testb %bl,%bl
	je .L271
	fldl -44(%ebp)
	jmp .L267
	.align 16
.L271:
	pushl $0
	pushl $MI_Convert+44
	movl MI_RTHooks+52,%eax
	call *%eax
	fldz
.L267:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Convert__ToLongFloat,.Lfe11-Convert__ToLongFloat
	.align 16
	.type	 Convert__ToExtended,@function
Convert__ToExtended:
	pushl %ebp
	movl %esp,%ebp
	subl $76,%esp
	pushl %esi
	pushl %ebx
.L273:
	movl $MM_Convert+216,-48(%ebp)
	movl $4,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	movl $0,-36(%ebp)
	movl 4(%ecx),%edx
	cmpl $31,%edx
	jg .L274
	leal -32(%ebp),%esi
	movl %esi,-64(%ebp)
	movl $32,-60(%ebp)
	leal -44(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal -64(%ebp),%eax
	pushl %eax
	pushl $120
	pushl $88
	pushl %ecx
	call Convert__ToBinary
	movb %al,%bl
	addl $24,%esp
	jmp .L275
	.align 16
.L274:
	leal -76(%ebp),%eax
	leal -68(%ebp),%esi
	movl %esi,-76(%ebp)
	movl $1,-72(%ebp)
	incl %edx
	movl %edx,-68(%ebp)
	pushl %eax
	movl MM_Convert+232,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-36(%ebp)
	addl $8,%esp
	testl %edx,%edx
	jne .L276
	pushl $8500
	call _m3_fault
	.align 16
.L276:
	leal -44(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $120
	pushl $88
	movl 8(%ebp),%eax
	pushl %eax
	call Convert__ToBinary
	movb %al,%bl
	leal -36(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	addl $28,%esp
.L275:
	testb %bl,%bl
	je .L277
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -44(%ebp)
	jmp .L272
	.align 16
.L277:
	pushl $0
	pushl $MI_Convert+44
	movl MI_RTHooks+52,%eax
	call *%eax
	fldz
.L278:
.L272:
	leal -84(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Convert__ToExtended,.Lfe12-Convert__ToExtended
	.align 16
	.type	 Convert__ToBinary,@function
Convert__ToBinary:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 4(%eax),%esi
	leal -1(%esi),%edi
	jmp .L280
	.align 16
.L281:
	movl 8(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L282
	pushl $8786
	call _m3_fault
	.align 16
.L282:
	movl (%eax),%eax
	movb (%edx,%eax),%cl
	xorl %ebx,%ebx
	movb %cl,%bl
	movl %ebx,-8(%ebp)
	cmpb %cl,12(%ebp)
	je .L283
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl %eax,%ebx
	jne .L284
.L283:
	movb $101,%cl
.L284:
	movl 20(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L285
	pushl $8818
	call _m3_fault
	.align 16
.L285:
	movl (%eax),%eax
	movb %cl,(%edx,%eax)
	incl %edx
.L280:
	cmpl %edi,%edx
	jle .L281
	movl 20(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L287
	pushl $8850
	call _m3_fault
	.align 16
.L287:
	movl (%eax),%eax
	movb $0,(%esi,%eax)
	movl 20(%ebp),%edx
	cmpl $0,4(%edx)
	jne .L288
	pushl $8898
	call _m3_fault
	.align 16
.L288:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call strtod
	movl 28(%ebp),%ebx
	addl $8,%esp
	fstpl (%ebx)
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L291
	movl 20(%ebp),%edx
	cmpl $0,4(%edx)
	jne .L290
	pushl $8946
	call _m3_fault
	.align 16
.L290:
	movl 24(%ebp),%ebx
	subl (%edx),%eax
	movl %eax,(%ebx)
	movl $1,%eax
.L291:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Convert__ToBinary,.Lfe13-Convert__ToBinary
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Convert
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_Convert
.data
	.align 4
	.type	 MM_Convert,@object
	.size	 MM_Convert,720
MM_Convert:
	.long MM_Convert+552
	.long MM_Convert+68
	.long MM_Convert+224
	.zero	8
	.long MM_Convert+392
	.zero	20
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
	.long Convert__InternalFromLongFloat
	.long Convert__InternalToInt
	.zero	8
	.long -1120871894
.byte 247
.byte 217
.byte 80
.byte 168
.byte 221
.byte 3
.byte 96
.byte 21
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_Convert+697
	.zero	36
	.long MM_Convert+702
	.zero	4
	.long Convert__ToBinary
	.long Convert__FromInt
	.long Convert__FromUnsigned
	.long Convert__FromFloat
	.long Convert__FromLongFloat
	.long Convert__FromExtended
	.long Convert__ToInt
	.long Convert__ToUnsigned
	.long Convert__ToFloat
	.long Convert__ToLongFloat
	.long Convert__ToExtended
	.long MI_Convert+44
	.zero	4
	.long MM_Convert+232
	.long -2020873848
	.zero	4
	.long -1120871894
	.ascii	"ToBinary"
	.zero	1
	.ascii	"ToExtended"
	.zero	1
	.ascii	"ToLongFloat"
	.zero	1
	.ascii	"ToFloat"
	.zero	1
	.ascii	"InternalToInt"
	.zero	1
	.ascii	"ToUnsigned"
	.zero	1
	.ascii	"ToInt"
	.zero	1
	.ascii	"InternalFromLongFloat"
	.zero	1
	.ascii	"FromExtended"
	.zero	1
	.ascii	"FromLongFloat"
	.zero	1
	.ascii	"FromFloat"
	.zero	1
	.ascii	"FromUnsigned"
	.zero	1
	.ascii	"FromInt"
	.zero	2
	.long Convert__ToBinary
	.long MM_Convert+240
	.zero	4
	.long Convert__ToExtended
	.long MM_Convert+249
	.long MI_Convert+100
	.long Convert__ToLongFloat
	.long MM_Convert+260
	.long MI_Convert+96
	.long Convert__ToFloat
	.long MM_Convert+272
	.long MI_Convert+92
	.long Convert__InternalToInt
	.long MM_Convert+280
	.zero	4
	.long Convert__ToUnsigned
	.long MM_Convert+294
	.long MI_Convert+88
	.long Convert__ToInt
	.long MM_Convert+305
	.long MI_Convert+84
	.long Convert__InternalFromLongFloat
	.long MM_Convert+311
	.zero	4
	.long Convert__FromExtended
	.long MM_Convert+333
	.long MI_Convert+80
	.long Convert__FromLongFloat
	.long MM_Convert+346
	.long MI_Convert+76
	.long Convert__FromFloat
	.long MM_Convert+360
	.long MI_Convert+72
	.long Convert__FromUnsigned
	.long MM_Convert+370
	.long MI_Convert+68
	.long Convert__FromInt
	.long MM_Convert+383
	.long MI_Convert+64
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/convert/Convert.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
	.ascii	"Convert.BufPtr"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
