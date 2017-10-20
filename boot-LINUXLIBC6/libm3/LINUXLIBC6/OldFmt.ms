	.file	"OldFmt.mc"
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
	.type	 OldFmt__Bool,@function
OldFmt__Bool:
	pushl %ebp
	movl %esp,%ebp
	movl $MM_OldFmt+164,%eax
	xorl %edx,%edx
	movb 8(%ebp),%dl
	movl %ebp,%esp
	popl %ebp
	movl (%eax,%edx,4),%eax
	ret
.Lfe1:
	.size	 OldFmt__Bool,.Lfe1-OldFmt__Bool
	.align 16
	.type	 OldFmt__Int,@function
OldFmt__Int:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L3:
	movl $5,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -40(%ebp),%esi
	movl %esi,-56(%ebp)
	movl $37,-52(%ebp)
	pushl $0
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	leal -56(%ebp),%ebx
	pushl %ebx
	movl MI_Convert+64,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L4
	pushl $385
	call _m3_fault
	.align 16
.L4:
	cmpl $37,%eax
	jle .L5
	pushl $385
	call _m3_fault
	.align 16
.L5:
	movl %eax,-52(%ebp)
	movl %esi,-56(%ebp)
	pushl %ebx
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L6:
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 OldFmt__Int,.Lfe2-OldFmt__Int
	.align 16
	.type	 OldFmt__Unsigned,@function
OldFmt__Unsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L8:
	movl $5,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -40(%ebp),%esi
	movl %esi,-56(%ebp)
	movl $37,-52(%ebp)
	pushl $0
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	leal -56(%ebp),%ebx
	pushl %ebx
	movl MI_Convert+68,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L9
	pushl $497
	call _m3_fault
	.align 16
.L9:
	cmpl $37,%eax
	jle .L10
	pushl $497
	call _m3_fault
	.align 16
.L10:
	movl %eax,-52(%ebp)
	movl %esi,-56(%ebp)
	pushl %ebx
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L11:
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 OldFmt__Unsigned,.Lfe3-OldFmt__Unsigned
	.align 16
	.type	 OldFmt__Addr,@function
OldFmt__Addr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L13
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call OldFmt__Unsigned
	jmp .L14
	.align 16
.L13:
	movl $MM_OldFmt+256,%eax
.L14:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 OldFmt__Addr,.Lfe4-OldFmt__Addr
	.align 16
	.type	 OldFmt__Ref,@function
OldFmt__Ref:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L16
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call OldFmt__Unsigned
	jmp .L17
	.align 16
.L16:
	movl $MM_OldFmt+256,%eax
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 OldFmt__Ref,.Lfe5-OldFmt__Ref
	.align 16
	.type	 OldFmt__Real,@function
OldFmt__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $120,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
.L19:
	movl $5,-108(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-112(%ebp)
	leal -112(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -104(%ebp),%esi
	movl %esi,-120(%ebp)
	movl $101,-116(%ebp)
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %edx
	leal -120(%ebp),%ebx
	movl 8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Convert+72,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L20
	pushl $865
	call _m3_fault
	.align 16
.L20:
	cmpl $101,%eax
	jle .L21
	pushl $865
	call _m3_fault
	.align 16
.L21:
	movl %eax,-116(%ebp)
	movl %esi,-120(%ebp)
	pushl %ebx
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl -112(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L22:
	leal -128(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 OldFmt__Real,.Lfe6-OldFmt__Real
	.align 16
	.type	 OldFmt__LongReal,@function
OldFmt__LongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $120,%esp
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%edx
.L24:
	movl $5,-108(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-112(%ebp)
	leal -112(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -104(%ebp),%esi
	movl %esi,-120(%ebp)
	movl $101,-116(%ebp)
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edx
	leal -120(%ebp),%ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_Convert+76,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jge .L25
	pushl $977
	call _m3_fault
	.align 16
.L25:
	cmpl $101,%eax
	jle .L26
	pushl $977
	call _m3_fault
	.align 16
.L26:
	movl %eax,-116(%ebp)
	movl %esi,-120(%ebp)
	pushl %ebx
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl -112(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L27:
	leal -128(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 OldFmt__LongReal,.Lfe7-OldFmt__LongReal
	.align 16
	.type	 OldFmt__Char,@function
OldFmt__Char:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	movl MI_Text+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 OldFmt__Char,.Lfe8-OldFmt__Char
	.align 16
	.type	 OldFmt__Pad,@function
OldFmt__Pad:
	pushl %ebp
	movl %esp,%ebp
	subl $108,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %esi
	movl MI_Text+56,%eax
	xorl %edi,%edi
	call *%eax
	subl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jle .L44
	leal -1(%ebx),%edx
	movl $99,%eax
	cmpl %edx,%eax
	jle .L31
	movl %edx,%eax
.L31:
	movl %edi,%edx
	jmp .L32
	.align 16
.L33:
	cmpl $99,%edx
	jle .L34
	pushl $1201
	call _m3_fault
	.align 16
.L34:
	movb 16(%ebp),%cl
	movb %cl,-100(%edx,%ebp)
	incl %edx
.L32:
	cmpl %eax,%edx
	jle .L33
	movl $100,%edx
	movl %ebx,%eax
	cmpl %edx,%ebx
	jle .L36
	movl %edx,%eax
.L36:
	testl %eax,%eax
	jge .L37
	pushl $1217
	call _m3_fault
	.align 16
.L37:
	cmpl $100,%eax
	jle .L38
	pushl $1217
	call _m3_fault
	.align 16
.L38:
	movl %eax,-104(%ebp)
	leal -100(%ebp),%ecx
	movl %ecx,-108(%ebp)
	leal -108(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	jmp .L39
	.align 16
.L40:
	cmpb $1,20(%ebp)
	jne .L41
	pushl %esi
	pushl %edi
	jmp .L50
	.align 16
.L41:
	pushl %edi
	pushl %esi
.L50:
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	addl $-100,%ebx
.L39:
	cmpl $99,%ebx
	jg .L40
	testl %ebx,%ebx
	jle .L44
	cmpb $1,20(%ebp)
	jne .L48
	pushl %ebx
	pushl $0
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	pushl %esi
	pushl %eax
	jmp .L51
	.align 16
.L48:
	pushl %ebx
	pushl $0
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	pushl %eax
	pushl %esi
.L51:
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
.L44:
	movl %esi,%eax
	leal -120(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 OldFmt__Pad,.Lfe9-OldFmt__Pad
	.align 16
	.type	 OldFmt__F,@function
OldFmt__F:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%edx
	movl 20(%ebp),%ecx
	movl 24(%ebp),%ebx
	movl 28(%ebp),%esi
	movl %eax,-20(%ebp)
	movl %edx,-16(%ebp)
	movl %ecx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %esi,-4(%ebp)
	movl $4,%eax
.L53:
	testl %eax,%eax
	jl .L54
	cmpl $4,%eax
	jbe .L55
	pushl $1601
	call _m3_fault
	.align 16
.L55:
	cmpl $0,-20(%ebp,%eax,4)
	je .L56
.L54:
	incl %eax
	jns .L57
	pushl $1617
	call _m3_fault
	.align 16
.L57:
	cmpl $5,%eax
	jle .L58
	pushl $1617
	call _m3_fault
	.align 16
.L58:
	movl %eax,-24(%ebp)
	leal -20(%ebp),%edi
	movl %edi,-28(%ebp)
	leal -28(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edi
	pushl %edi
	call OldFmt__FN
	jmp .L60
	.align 16
.L56:
	decl %eax
	jmp .L53
	.align 16
.L60:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 OldFmt__F,.Lfe10-OldFmt__F
	.align 16
	.type	 OldFmt__FormatSpecifier,@function
OldFmt__FormatSpecifier:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	testl %esi,%esi
	jne .L62
	pushl $2324
	call _m3_fault
	.align 16
.L62:
	movl %esi,%edx
	cmpl %edi,4(%edx)
	ja .L63
	pushl $2322
	call _m3_fault
	.align 16
.L63:
	movl (%edx),%eax
	leal 1(%edi),%ecx
	movb (%edi,%eax),%bl
	cmpb $45,%bl
	jne .L64
	movl 16(%ebp),%eax
	movb $0,5(%eax)
	cmpl %ecx,4(%edx)
	ja .L66
	pushl $2418
	call _m3_fault
	.align 16
.L66:
	movl (%edx),%eax
	movb (%ecx,%eax),%bl
	leal 2(%edi),%ecx
	jmp .L67
	.align 16
.L64:
	movl 16(%ebp),%eax
	movb $1,5(%eax)
.L67:
	cmpb $48,%bl
	jne .L68
	movl 16(%ebp),%eax
	movb $48,4(%eax)
	testl %esi,%esi
	jne .L69
	pushl $2532
	call _m3_fault
	.align 16
.L69:
	movl %esi,%edx
	cmpl %ecx,4(%edx)
	ja .L70
	pushl $2530
	call _m3_fault
	.align 16
.L70:
	movl (%edx),%eax
	movb (%ecx,%eax),%bl
	incl %ecx
	jmp .L71
	.align 16
.L68:
	movl 16(%ebp),%eax
	movb $32,4(%eax)
.L71:
	movl 16(%ebp),%eax
	movl $0,(%eax)
	jmp .L72
	.align 16
.L73:
	movl 16(%ebp),%ebx
	movl (%ebx),%eax
	leal (%eax,%eax,4),%eax
	leal -48(%edx,%eax,2),%eax
	testl %eax,%eax
	jge .L74
	pushl $2641
	call _m3_fault
	.align 16
.L74:
	movl %eax,(%ebx)
	testl %esi,%esi
	jne .L75
	pushl $2660
	call _m3_fault
	.align 16
.L75:
	movl %esi,%edx
	cmpl %ecx,4(%edx)
	ja .L76
	pushl $2658
	call _m3_fault
	.align 16
.L76:
	movl (%edx),%eax
	movb (%ecx,%eax),%bl
	incl %ecx
.L72:
	xorl %edx,%edx
	movb %bl,%dl
	cmpl $47,%edx
	jle .L78
	cmpl $57,%edx
	jle .L73
.L78:
	cmpl $115,%edx
	jne .L79
	movl %ecx,%eax
	subl %edi,%eax
	incl %eax
	jns .L81
	pushl $2737
	call _m3_fault
	.align 16
.L79:
	xorl %eax,%eax
.L81:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 OldFmt__FormatSpecifier,.Lfe11-OldFmt__FormatSpecifier
	.align 16
	.type	 OldFmt__PutSpec,@function
OldFmt__PutSpec:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	movl 16(%ebp),%edi
	movl 12(%ebp),%esi
	addl $-32,%esi
	jns .L83
	pushl $2945
	call _m3_fault
	.align 16
.L83:
	cmpl $31,%esi
	jle .L84
	movl (%edi),%eax
	testl %eax,%eax
	jne .L85
	pushl $2980
	call _m3_fault
	.align 16
.L85:
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call OldFmt__PutSpec
	jmp .L82
	.align 16
.L84:
	testl %esi,%esi
	jne .L87
	movl MM_OldFmt+268,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,(%edi)
	addl $4,%esp
.L87:
	movl (%edi),%edx
	testl %edx,%edx
	jne .L89
	pushl $3028
	call _m3_fault
	.align 16
.L89:
	leal (%esi,%esi,2),%eax
	leal 4(%edx,%eax,8),%edi
	movl 8(%ebp),%esi
	cld
	movl $6,%ecx
	rep
	movsl
.L82:
	leal -8(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 OldFmt__PutSpec,.Lfe12-OldFmt__PutSpec
	.align 16
	.type	 OldFmt__GetSpec,@function
OldFmt__GetSpec:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	addl $-32,%edx
	jns .L91
	pushl $3137
	call _m3_fault
	.align 16
.L91:
	cmpl $31,%edx
	jle .L92
	testl %ecx,%ecx
	jne .L93
	pushl $3172
	call _m3_fault
	.align 16
.L93:
	movl 16(%ebp),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	pushl %edx
	call OldFmt__GetSpec
	jmp .L90
	.align 16
.L92:
	testl %ecx,%ecx
	jne .L95
	pushl $3204
	call _m3_fault
	.align 16
.L95:
	leal (%edx,%edx,2),%eax
	movl 16(%ebp),%edi
	leal 4(%ecx,%eax,8),%esi
	cld
	movl $6,%ecx
	rep
	movsl
.L90:
	leal -32(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 OldFmt__GetSpec,.Lfe13-OldFmt__GetSpec
	.align 16
	.type	 OldFmt__FN,@function
OldFmt__FN:
	pushl %ebp
	movl %esp,%ebp
	subl $888,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L97:
	movl $5,-800(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-804(%ebp)
	leal -804(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-796(%ebp)
	movl $0,-792(%ebp)
	movl $0,-788(%ebp)
	movl $0,-784(%ebp)
	movl $0,-780(%ebp)
	movl $0,-776(%ebp)
	pushl $768
	pushl $0
	leal -772(%ebp),%eax
	pushl %eax
	call memset
	movl $0,-864(%ebp)
	movl -864(%ebp),%edi
	movl %edi,-860(%ebp)
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-856(%ebp)
	movl %eax,-852(%ebp)
	movl %edi,-4(%ebp)
	addl $16,%esp
	jmp .L98
	.align 16
.L99:
	cmpl $0,8(%ebp)
	jne .L100
	pushl $3492
	call _m3_fault
	.align 16
.L100:
	movl 8(%ebp),%ecx
	movl -864(%ebp),%edi
	cmpl %edi,4(%ecx)
	ja .L101
	pushl $3490
	call _m3_fault
	.align 16
.L101:
	movl 8(%ebp),%edi
	movl -864(%ebp),%ecx
	movl (%edi),%eax
	cmpb $37,(%ecx,%eax)
	jne .L102
	testl %ecx,%ecx
	jge .L103
	pushl $3505
	call _m3_fault
	.align 16
.L103:
	movl -864(%ebp),%edi
	movl %edi,-796(%ebp)
	movl -864(%ebp),%ebx
	incl %ebx
	jns .L104
	pushl $3521
	call _m3_fault
	.align 16
.L104:
	leal -780(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%ecx
	pushl %ecx
	call OldFmt__FormatSpecifier
	movl %eax,-792(%ebp)
	addl $12,%esp
	testl %eax,%eax
	je .L105
	movl 12(%ebp),%eax
	movl -860(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L106
	pushl $3554
	call _m3_fault
	.align 16
.L106:
	movl (%eax),%eax
	movl -860(%ebp),%ecx
	movl (%eax,%ecx,4),%eax
	movl %eax,-788(%ebp)
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-784(%ebp)
	movl -780(%ebp),%edx
	movl -792(%ebp),%ebx
	addl $4,%esp
	cmpl %edx,%eax
	jg .L163
	movl %edx,%eax
.L163:
	subl %ebx,%eax
	addl -852(%ebp),%eax
	jns .L109
	pushl $3585
	call _m3_fault
	.align 16
.L109:
	movl %eax,-852(%ebp)
	cmpl $31,-860(%ebp)
	jg .L110
	jbe .L111
	pushl $3617
	call _m3_fault
	.align 16
.L111:
	movl -860(%ebp),%edi
	leal (%edi,%edi,2),%eax
	leal -772(%ebp,%eax,8),%eax
	leal -796(%ebp),%esi
	movl %eax,%edi
	cld
	movl $6,%ecx
	rep
	movsl
	jmp .L112
	.align 16
.L110:
	cmpl $0,-860(%ebp)
	jge .L113
	pushl $3649
	call _m3_fault
	.align 16
.L113:
	leal -4(%ebp),%eax
	pushl %eax
	movl -860(%ebp),%ecx
	pushl %ecx
	leal -796(%ebp),%eax
	pushl %eax
	call OldFmt__PutSpec
	addl $12,%esp
.L112:
	incl -860(%ebp)
	movl -792(%ebp),%edi
	addl %edi,-864(%ebp)
	jmp .L98
	.align 16
.L105:
	movl %ebx,-864(%ebp)
	jmp .L98
	.align 16
.L102:
	incl -864(%ebp)
.L98:
	movl -856(%ebp),%ecx
	cmpl %ecx,-864(%ebp)
	jl .L99
	movl 12(%ebp),%eax
	movl -860(%ebp),%edi
	cmpl %edi,4(%eax)
	je .L117
	pushl $0
	pushl $MI_Convert+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L117:
	cmpl $0,-860(%ebp)
	jne .L118
	movl -804(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	jmp .L96
	.align 16
.L118:
	leal -816(%ebp),%eax
	leal -808(%ebp),%ecx
	movl %ecx,-816(%ebp)
	movl $1,-812(%ebp)
	movl -852(%ebp),%edi
	incl %edi
	movl %edi,-808(%ebp)
	pushl %eax
	movl MM_OldFmt+276,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-868(%ebp)
	movl $0,-864(%ebp)
	movl -864(%ebp),%ebx
	movl %ebx,-872(%ebp)
	movl -860(%ebp),%ecx
	decl %ecx
	movl %ecx,-876(%ebp)
	addl $8,%esp
	jmp .L119
	.align 16
.L120:
	cmpl $31,-872(%ebp)
	jg .L121
	movl -872(%ebp),%edi
	leal (%edi,%edi,2),%eax
	leal -796(%ebp),%edx
	leal -772(%ebp,%eax,8),%esi
	movl %edx,%edi
	cld
	movl $6,%ecx
	rep
	movsl
	jmp .L123
	.align 16
.L121:
	leal -796(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl -872(%ebp),%ecx
	pushl %ecx
	call OldFmt__GetSpec
	addl $12,%esp
.L123:
	movl -796(%ebp),%edx
	subl -864(%ebp),%edx
	testl %edx,%edx
	jle .L124
	cmpl $0,-868(%ebp)
	jne .L125
	pushl $4244
	call _m3_fault
	.align 16
.L125:
	testl %ebx,%ebx
	jge .L126
	pushl $4241
	call _m3_fault
	.align 16
.L126:
	movl %edx,-820(%ebp)
	leal (%edx,%ebx),%esi
	movl -868(%ebp),%edi
	movl %esi,%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L128
	pushl $4241
	call _m3_fault
	.align 16
.L128:
	movl -868(%ebp),%ecx
	addl (%ecx),%ebx
	movl %ebx,-824(%ebp)
	cmpl $0,8(%ebp)
	jne .L129
	pushl $4244
	call _m3_fault
	.align 16
.L129:
	cmpl $0,-864(%ebp)
	jge .L131
	pushl $4241
	call _m3_fault
	.align 16
.L131:
	movl %edx,-828(%ebp)
	movl -864(%ebp),%eax
	movl 8(%ebp),%edi
	addl %edx,%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L132
	pushl $4241
	call _m3_fault
	.align 16
.L132:
	movl 8(%ebp),%ecx
	movl -864(%ebp),%eax
	addl (%ecx),%eax
	movl %eax,-832(%ebp)
	pushl %edx
	pushl %eax
	pushl %ebx
	call memmove
	movl %esi,%ebx
	addl $12,%esp
.L124:
	movl -792(%ebp),%eax
	addl -796(%ebp),%eax
	movl %eax,-864(%ebp)
	movl -784(%ebp),%edx
	movl -780(%ebp),%esi
	subl %edx,%esi
	movb -776(%ebp),%cl
	movb %cl,-880(%ebp)
	testl %esi,%esi
	jle .L134
	cmpb $1,-775(%ebp)
	jne .L134
	addl %ebx,%esi
.L135:
	cmpl $0,-868(%ebp)
	jne .L136
	pushl $4468
	call _m3_fault
	.align 16
.L136:
	movl -868(%ebp),%edi
	cmpl %ebx,4(%edi)
	ja .L137
	pushl $4466
	call _m3_fault
	.align 16
.L137:
	movl -868(%ebp),%ecx
	movl (%ecx),%eax
	movb -880(%ebp),%cl
	movb %cl,(%ebx,%eax)
	incl %ebx
	cmpl %esi,%ebx
	jne .L135
	xorl %esi,%esi
.L134:
	testl %edx,%edx
	jle .L139
	cmpl $0,-868(%ebp)
	jne .L140
	pushl $4548
	call _m3_fault
	.align 16
.L140:
	testl %ebx,%ebx
	jge .L141
	pushl $4545
	call _m3_fault
	.align 16
.L141:
	movl %edx,-836(%ebp)
	leal (%edx,%ebx),%edi
	movl %edi,-888(%ebp)
	movl -868(%ebp),%ecx
	movl %edi,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L142
	pushl $4545
	call _m3_fault
	.align 16
.L142:
	movl -868(%ebp),%edi
	movl -788(%ebp),%eax
	addl (%edi),%ebx
	movl %ebx,-840(%ebp)
	testl %eax,%eax
	jne .L143
	pushl $4548
	call _m3_fault
	.align 16
.L143:
	movl %eax,-884(%ebp)
	movl %edx,-844(%ebp)
	movl -884(%ebp),%ecx
	movl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L144
	pushl $4545
	call _m3_fault
	.align 16
.L144:
	movl -884(%ebp),%edi
	movl (%edi),%eax
	movl %eax,-848(%ebp)
	pushl %edx
	pushl %eax
	pushl %ebx
	call memmove
	movl -888(%ebp),%ebx
	addl $12,%esp
.L139:
	testl %esi,%esi
	jle .L146
	cmpb $0,-775(%ebp)
	jne .L146
	leal (%esi,%ebx),%edx
.L147:
	cmpl $0,-868(%ebp)
	jne .L148
	pushl $4628
	call _m3_fault
	.align 16
.L148:
	movl -868(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L149
	pushl $4626
	call _m3_fault
	.align 16
.L149:
	movl -868(%ebp),%edi
	movl (%edi),%eax
	movb -880(%ebp),%cl
	movb %cl,(%ebx,%eax)
	incl %ebx
	cmpl %edx,%ebx
	jne .L147
.L146:
	incl -872(%ebp)
.L119:
	movl -876(%ebp),%edi
	cmpl %edi,-872(%ebp)
	jle .L120
	movl -856(%ebp),%edx
	subl -864(%ebp),%edx
	testl %edx,%edx
	jle .L152
	cmpl $0,-868(%ebp)
	jne .L153
	pushl $4788
	call _m3_fault
	.align 16
.L153:
	testl %ebx,%ebx
	jge .L154
	pushl $4785
	call _m3_fault
	.align 16
.L154:
	movl %edx,-844(%ebp)
	movl -868(%ebp),%ecx
	leal (%edx,%ebx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L156
	pushl $4785
	call _m3_fault
	.align 16
.L156:
	movl -868(%ebp),%edi
	addl (%edi),%ebx
	movl %ebx,-848(%ebp)
	cmpl $0,8(%ebp)
	jne .L157
	pushl $4788
	call _m3_fault
	.align 16
.L157:
	cmpl $0,-864(%ebp)
	jge .L158
	pushl $4785
	call _m3_fault
	.align 16
.L158:
	movl %edx,-836(%ebp)
	movl -864(%ebp),%eax
	movl 8(%ebp),%ecx
	addl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L160
	pushl $4785
	call _m3_fault
	.align 16
.L160:
	movl 8(%ebp),%edi
	movl -864(%ebp),%eax
	addl (%edi),%eax
	movl %eax,-840(%ebp)
	pushl %edx
	pushl %eax
	pushl %ebx
	call memmove
.L152:
	movl -804(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -868(%ebp),%eax
.L162:
.L96:
	leal -900(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 OldFmt__FN,.Lfe14-OldFmt__FN
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_OldFmt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_OldFmt
.data
	.align 4
	.type	 MM_OldFmt,@object
	.size	 MM_OldFmt,756
MM_OldFmt:
	.long MM_OldFmt+544
	.long MM_OldFmt+44
	.long MM_OldFmt+268
	.zero	8
	.long MM_OldFmt+372
	.zero	28
	.long 1742868920
.byte 162
.byte 167
.byte 214
.byte 111
.byte 26
.byte 182
.byte 52
.byte 8
	.long 1
	.zero	4
	.long 772
	.long 4
	.zero	20
	.long MM_OldFmt+686
	.long MM_OldFmt+699
	.long MM_OldFmt+708
	.zero	28
	.long MM_OldFmt+734
	.zero	4
	.long OldFmt__FormatSpecifier
	.long OldFmt__PutSpec
	.long OldFmt__GetSpec
	.long OldFmt__Bool
	.long MM_OldFmt+176
	.long MM_OldFmt+196
	.long 2
	.long MM_OldFmt+184
	.long 6
	.ascii	"FALSE"
	.zero	3
	.long 2
	.long MM_OldFmt+204
	.long 5
	.ascii	"TRUE"
	.zero	4
	.long OldFmt__Int
	.long OldFmt__Unsigned
	.long OldFmt__Addr
	.long OldFmt__Ref
	.long OldFmt__Real
	.long OldFmt__LongReal
	.long OldFmt__Char
	.long OldFmt__Pad
	.long OldFmt__F
	.long OldFmt__FN
	.long 2
	.long MM_OldFmt+264
	.long 4
	.ascii	"NIL"
	.zero	1
	.long MM_OldFmt+276
	.long 1742868920
	.zero	4
	.long 1358456180
	.ascii	"FN"
	.zero	1
	.ascii	"GetSpec"
	.zero	1
	.ascii	"PutSpec"
	.zero	1
	.ascii	"FormatSpecifier"
	.zero	1
	.ascii	"F"
	.zero	1
	.ascii	"Pad"
	.zero	1
	.ascii	"Char"
	.zero	1
	.ascii	"LongReal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"Ref"
	.zero	1
	.ascii	"Addr"
	.zero	1
	.ascii	"Unsigned"
	.zero	1
	.ascii	"Int"
	.zero	1
	.ascii	"Bool"
	.zero	2
	.long OldFmt__FN
	.long MM_OldFmt+284
	.long MI_OldFmt+84
	.long OldFmt__GetSpec
	.long MM_OldFmt+287
	.zero	4
	.long OldFmt__PutSpec
	.long MM_OldFmt+295
	.zero	4
	.long OldFmt__FormatSpecifier
	.long MM_OldFmt+303
	.zero	4
	.long OldFmt__F
	.long MM_OldFmt+319
	.long MI_OldFmt+80
	.long OldFmt__Pad
	.long MM_OldFmt+321
	.long MI_OldFmt+76
	.long OldFmt__Char
	.long MM_OldFmt+325
	.long MI_OldFmt+72
	.long OldFmt__LongReal
	.long MM_OldFmt+330
	.long MI_OldFmt+68
	.long OldFmt__Real
	.long MM_OldFmt+339
	.long MI_OldFmt+64
	.long OldFmt__Ref
	.long MM_OldFmt+344
	.long MI_OldFmt+60
	.long OldFmt__Addr
	.long MM_OldFmt+348
	.long MI_OldFmt+56
	.long OldFmt__Unsigned
	.long MM_OldFmt+353
	.long MI_OldFmt+52
	.long OldFmt__Int
	.long MM_OldFmt+362
	.long MI_OldFmt+48
	.long OldFmt__Bool
	.long MM_OldFmt+366
	.long MI_OldFmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/fmtlex/OldFmt.m3"
	.zero	1
.byte 4
.byte 1
.byte 18
.byte 18
.byte 4
.byte 18
.byte 18
.byte 16
.byte 16
.byte 35
.byte 26
.byte 32
.byte 0
.byte 4
.byte 1
.byte 41
.byte 4
.byte 42
.byte 12
.byte 26
.byte 32
.byte 0
.byte 12
.byte 15
.byte 2
.byte 16
.byte 184
.byte 17
.byte 226
.byte 103
.byte 1
.byte 32
.byte 15
.byte 5
.byte 3
.byte 26
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 26
.byte 15
.byte 3
.byte 26
.byte 4
.byte 5
.byte 2
	.ascii	"OldFmt.RefSpecBuffer"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
