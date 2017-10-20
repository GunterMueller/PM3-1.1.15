	.file	"TextConv.mc"
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
	.type	 TextConv__EncodedCharSize,@function
TextConv__EncodedCharSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	movb 8(%ebp),%bl
	cmpl $92,%ebx
	je .L14
	cmpl $10,%ebx
	je .L14
	cmpl $13,%ebx
	je .L14
	cmpl $9,%ebx
	je .L14
	cmpl $12,%ebx
	je .L14
	pushl $MI_TextConv+76
	pushl %ebx
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L11
.L14:
	movl $2,%eax
	jmp .L13
	.align 16
.L11:
	pushl $MI_TextConv+44
	pushl %ebx
	call set_member
	testl %eax,%eax
	jne .L12
	movl $1,%eax
	jmp .L13
	.align 16
.L12:
	movl $4,%eax
.L13:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TextConv__EncodedCharSize,.Lfe1-TextConv__EncodedCharSize
	.align 16
	.type	 TextConv__EncodeChar,@function
TextConv__EncodeChar:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
.L16:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 12(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movb $92,(%eax)
	xorl %ebx,%ebx
	movb 8(%ebp),%bl
	cmpl $92,%ebx
	je .L32
	cmpl $10,%ebx
	jne .L19
	movl 12(%ebp),%eax
	movb $110,1(%eax)
	jmp .L33
	.align 16
.L19:
	cmpl $13,%ebx
	jne .L21
	movl 12(%ebp),%eax
	movb $114,1(%eax)
	jmp .L33
	.align 16
.L21:
	cmpl $9,%ebx
	jne .L23
	movl 12(%ebp),%eax
	movb $116,1(%eax)
	jmp .L33
	.align 16
.L23:
	cmpl $12,%ebx
	jne .L25
	movl 12(%ebp),%eax
	movb $102,1(%eax)
	jmp .L33
	.align 16
.L25:
	pushl $MI_TextConv+76
	pushl %ebx
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L26
.L32:
	movl 12(%ebp),%eax
	movb 8(%ebp),%cl
	movb %cl,1(%eax)
.L33:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $2,%eax
	jmp .L15
	.align 16
.L26:
	pushl $MI_TextConv+44
	movl %ebx,%esi
	pushl %esi
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L27
	movl %esi,%eax
	sarl $6,%eax
	leal 48(%eax),%edx
	cmpl $255,%edx
	jbe .L28
	pushl $657
	call _m3_fault
	.align 16
.L28:
	movl 12(%ebp),%eax
	movb %dl,1(%eax)
	movl %esi,%eax
	andl $63,%eax
	sarl $3,%eax
	leal 48(%eax),%edx
	cmpl $255,%edx
	jbe .L29
	pushl $673
	call _m3_fault
	.align 16
.L29:
	movl 12(%ebp),%eax
	movb %dl,2(%eax)
	movl %ebx,%eax
	andl $7,%eax
	leal 48(%eax),%edx
	cmpl $255,%edx
	jbe .L30
	pushl $689
	call _m3_fault
	.align 16
.L30:
	movl 12(%ebp),%eax
	movb %dl,3(%eax)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $4,%eax
	jmp .L15
	.align 16
.L27:
	movl 12(%ebp),%eax
	movb 8(%ebp),%cl
	movb %cl,(%eax)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L31:
.L15:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TextConv__EncodeChar,.Lfe2-TextConv__EncodeChar
	.align 16
	.type	 TextConv__EncodedCharsSize,@function
TextConv__EncodedCharsSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,%esi
.L35:
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	cmpl %ebx,%edx
	jne .L36
	movl %esi,%eax
	jmp .L39
	.align 16
.L36:
	cmpl %edx,%ebx
	jb .L37
	pushl $914
	call _m3_fault
	.align 16
.L37:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call TextConv__EncodedCharSize
	addl %eax,%esi
	incl %ebx
	addl $4,%esp
	jmp .L35
	.align 16
.L39:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TextConv__EncodedCharsSize,.Lfe3-TextConv__EncodedCharsSize
	.align 16
	.type	 TextConv__EncodeChars,@function
TextConv__EncodeChars:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,%esi
.L41:
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	cmpl %ebx,%eax
	jne .L42
	movl %esi,%eax
	jmp .L50
	.align 16
.L42:
	cmpl %eax,%ebx
	jb .L43
	pushl $1154
	call _m3_fault
	.align 16
.L43:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call TextConv__EncodeChar
	xorl %ecx,%ecx
	leal -1(%eax),%edi
	addl $8,%esp
	jmp .L44
	.align 16
.L45:
	movl 12(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L46
	pushl $1186
	call _m3_fault
	.align 16
.L46:
	cmpl $3,%ecx
	jle .L47
	pushl $1185
	call _m3_fault
	.align 16
.L47:
	movl (%eax),%edx
	movb -4(%ecx,%ebp),%al
	incl %ecx
	movb %al,(%esi,%edx)
	incl %esi
.L44:
	cmpl %edi,%ecx
	jle .L45
	incl %ebx
	jmp .L41
	.align 16
.L50:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TextConv__EncodeChars,.Lfe4-TextConv__EncodeChars
	.align 16
	.type	 TextConv__Encode,@function
TextConv__Encode:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl 8(%ebp),%esi
	movl %edx,-32(%ebp)
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl -32(%ebp),%edx
	pushl %edx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-28(%ebp)
	addl $12,%esp
	testl %ebx,%ebx
	jne .L52
	pushl $1380
	call _m3_fault
	.align 16
.L52:
	pushl %esi
	pushl %ebx
	movl MI_Text+68,%eax
	call *%eax
	addl $8,%esp
	pushl %ebx
	call TextConv__EncodedCharsSize
	movl %eax,%esi
	movl %esi,-24(%ebp)
	addl $4,%esp
	cmpb $0,12(%ebp)
	je .L54
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	leal 2(%esi),%edx
	movl %edx,-4(%ebp)
	movl -32(%ebp),%edx
	pushl %edx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%edi
	addl $8,%esp
	testl %ebx,%ebx
	jne .L55
	pushl $1444
	call _m3_fault
	.align 16
.L55:
	cmpl $0,4(%ebx)
	jne .L56
	pushl $1442
	call _m3_fault
	.align 16
.L56:
	movl (%ebx),%eax
	movb $34,(%eax)
	testl %esi,%esi
	jge .L58
	pushl $1457
	call _m3_fault
	.align 16
.L58:
	movl %esi,-16(%ebp)
	movl 4(%ebx),%eax
	decl %eax
	subl %eax,%esi
	movl %esi,%eax
	testl %eax,%eax
	jle .L59
	pushl $1457
	call _m3_fault
	.align 16
.L59:
	movl (%ebx),%edx
	incl %edx
	movl %edx,-20(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl -28(%ebp),%edx
	pushl %edx
	call TextConv__EncodeChars
	addl $8,%esp
	movl -24(%ebp),%eax
	incl %eax
	cmpl %eax,4(%ebx)
	ja .L62
	pushl $1474
	call _m3_fault
	.align 16
.L62:
	movl (%ebx),%eax
	movl -24(%ebp),%edx
	movb $34,1(%edx,%eax)
	jmp .L63
	.align 16
.L54:
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,-4(%ebp)
	movl -32(%ebp),%edx
	pushl %edx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%edi
	addl $8,%esp
	testl %ebx,%ebx
	jne .L65
	pushl $1524
	call _m3_fault
	.align 16
.L65:
	pushl %ebx
	movl -28(%ebp),%edx
	pushl %edx
	call TextConv__EncodeChars
	addl $8,%esp
.L63:
	testl %edi,%edi
	jne .L66
	pushl $1556
	call _m3_fault
	.align 16
.L66:
	pushl %edi
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%ebx
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TextConv__Encode,.Lfe5-TextConv__Encode
	.align 16
	.type	 TextConv__DecodeChar,@function
TextConv__DecodeChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	testl %edi,%edi
	jg .L68
	pushl $0
	pushl $MI_TextConv+108
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L68:
	movl 8(%ebp),%eax
	movb (%eax),%al
	cmpb $92,%al
	jne .L69
	cmpl $1,%edi
	jg .L70
	pushl $0
	pushl $MI_TextConv+108
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L70:
	movl 8(%ebp),%eax
	movb 1(%eax),%al
	andl $255,%eax
	cmpl $92,%eax
	jne .L71
	movb $92,(%esi)
	movl $2,%eax
	jmp .L82
	.align 16
.L71:
	cmpl $110,%eax
	jne .L72
	movb $10,(%esi)
	movl $2,%eax
	jmp .L82
	.align 16
.L72:
	cmpl $114,%eax
	jne .L73
	movb $13,(%esi)
	movl $2,%eax
	jmp .L82
	.align 16
.L73:
	cmpl $116,%eax
	jne .L74
	movb $9,(%esi)
	movl $2,%eax
	jmp .L82
	.align 16
.L74:
	cmpl $102,%eax
	jne .L75
	movb $12,(%esi)
	movl $2,%eax
	jmp .L82
	.align 16
.L75:
	pushl $MI_TextConv+76
	pushl %eax
	call set_member
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L77
	pushl $MM_TextConv+76
	movl 8(%ebp),%eax
	movb 1(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L77
	cmpl $3,%edi
	jg .L78
	pushl %ebx
	pushl $MI_TextConv+108
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L78:
	movl $MM_TextConv+44,%edi
	pushl %edi
	movl 8(%ebp),%eax
	movb 2(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L79
	pushl %edi
	movl 8(%ebp),%eax
	movb 3(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L80
.L79:
	pushl %ebx
	pushl $MI_TextConv+108
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L80:
	movl 8(%ebp),%ecx
	xorl %edx,%edx
	movb 1(%ecx),%dl
	sall $6,%edx
	xorl %eax,%eax
	movb 2(%ecx),%al
	leal -3504(%edx,%eax,8),%eax
	xorl %edx,%edx
	movb 3(%ecx),%dl
	addl %edx,%eax
	cmpl $255,%eax
	jbe .L81
	pushl $1969
	call _m3_fault
	.align 16
.L81:
	movb %al,(%esi)
	movl $4,%eax
	jmp .L82
	.align 16
.L77:
	movl 8(%ebp),%eax
	movb 1(%eax),%al
	movb %al,(%esi)
	movl $2,%eax
	jmp .L82
	.align 16
.L69:
	movb %al,(%esi)
	movl $1,%eax
.L82:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TextConv__DecodeChar,.Lfe6-TextConv__DecodeChar
	.align 16
	.type	 TextConv__DecodedCharsSize,@function
TextConv__DecodedCharsSize:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	xorl %edi,%edi
	pushl %esi
	movl %edi,%esi
	pushl %ebx
.L84:
	movl 8(%ebp),%eax
	movl $4,%ecx
	movl 4(%eax),%eax
	subl %esi,%eax
	cmpl %eax,%ecx
	jle .L85
	movl %eax,%ecx
.L85:
	testl %ecx,%ecx
	jne .L86
	movl %edi,%eax
	jmp .L93
	.align 16
.L86:
	xorl %edx,%edx
	leal -1(%ecx),%ebx
	movl %ebx,-12(%ebp)
	jmp .L87
	.align 16
.L88:
	cmpl $3,%edx
	jle .L89
	pushl $2257
	call _m3_fault
	.align 16
.L89:
	leal (%edx,%esi),%ebx
	movl 8(%ebp),%eax
	movl %ebx,-16(%ebp)
	cmpl %ebx,4(%eax)
	ja .L90
	pushl $2258
	call _m3_fault
	.align 16
.L90:
	movl (%eax),%eax
	movl -16(%ebp),%ebx
	movb (%ebx,%eax),%al
	movb %al,-8(%edx,%ebp)
	incl %edx
.L87:
	cmpl %edx,-12(%ebp)
	jge .L88
	leal -1(%ebp),%eax
	pushl %eax
	pushl %ecx
	leal -8(%ebp),%eax
	pushl %eax
	call TextConv__DecodeChar
	addl %eax,%esi
	incl %edi
	addl $12,%esp
	jmp .L84
	.align 16
.L93:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TextConv__DecodedCharsSize,.Lfe7-TextConv__DecodedCharsSize
	.align 16
	.type	 TextConv__DecodeChars,@function
TextConv__DecodeChars:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	movl %esi,%edi
	pushl %ebx
.L95:
	movl 8(%ebp),%eax
	movl $4,%ebx
	movl 4(%eax),%eax
	subl %edi,%eax
	cmpl %eax,%ebx
	jle .L96
	movl %eax,%ebx
.L96:
	testl %ebx,%ebx
	jne .L97
	movl %esi,%eax
	jmp .L105
	.align 16
.L97:
	xorl %edx,%edx
	leal -1(%ebx),%ecx
	movl %ecx,-8(%ebp)
	jmp .L98
	.align 16
.L99:
	cmpl $3,%edx
	jle .L100
	pushl $2529
	call _m3_fault
	.align 16
.L100:
	leal (%edx,%edi),%ecx
	movl 8(%ebp),%eax
	movl %ecx,-12(%ebp)
	cmpl %ecx,4(%eax)
	ja .L101
	pushl $2530
	call _m3_fault
	.align 16
.L101:
	movl (%eax),%eax
	movl -12(%ebp),%ecx
	movb (%ecx,%eax),%al
	movb %al,-4(%edx,%ebp)
	incl %edx
.L98:
	cmpl %edx,-8(%ebp)
	jge .L99
	movl 12(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L103
	pushl $2546
	call _m3_fault
	.align 16
.L103:
	movl (%eax),%eax
	addl %esi,%eax
	pushl %eax
	pushl %ebx
	leal -4(%ebp),%eax
	pushl %eax
	call TextConv__DecodeChar
	addl %eax,%edi
	incl %esi
	addl $12,%esp
	jmp .L95
	.align 16
.L105:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TextConv__DecodeChars,.Lfe8-TextConv__DecodeChars
	.align 16
	.type	 TextConv__Decode,@function
TextConv__Decode:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%esi
	leal -12(%ebp),%ecx
	movl %ecx,-28(%ebp)
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %ecx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-24(%ebp)
	addl $12,%esp
	testl %ebx,%ebx
	jne .L107
	pushl $2724
	call _m3_fault
	.align 16
.L107:
	movl 8(%ebp),%edx
	pushl %edx
	pushl %ebx
	movl MI_Text+68,%eax
	call *%eax
	addl $8,%esp
	cmpb $0,12(%ebp)
	je .L108
	cmpl $1,%esi
	jle .L109
	movl 4(%ebx),%edi
	testl %edi,%edi
	jne .L111
	pushl $2754
	call _m3_fault
	.align 16
.L111:
	movl (%ebx),%ebx
	cmpb $34,(%ebx)
	jne .L109
	leal -1(%esi),%eax
	cmpl %edi,%eax
	jb .L113
	pushl $2754
	call _m3_fault
	.align 16
.L113:
	cmpb $34,-1(%esi,%ebx)
	je .L114
.L109:
	pushl $0
	pushl $MI_TextConv+108
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L114:
	leal -12(%ebp),%ebx
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	cmpl $0,-24(%ebp)
	jne .L115
	pushl $2804
	call _m3_fault
	.align 16
.L115:
	leal -2(%esi),%edi
	testl %edi,%edi
	jge .L116
	pushl $2801
	call _m3_fault
	.align 16
.L116:
	movl %edi,-16(%ebp)
	movl -24(%ebp),%edx
	movl %edi,%ecx
	movl 4(%edx),%eax
	decl %eax
	subl %eax,%ecx
	movl %ecx,%eax
	testl %eax,%eax
	jle .L117
	pushl $2801
	call _m3_fault
	.align 16
.L117:
	movl -24(%ebp),%edx
	leal -20(%ebp),%ecx
	movl (%edx),%edx
	incl %edx
	movl %edx,-20(%ebp)
	movl %ecx,-32(%ebp)
	pushl %ecx
	call TextConv__DecodedCharsSize
	movl %eax,-4(%ebp)
	pushl %ebx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $12,%esp
	movl -24(%ebp),%ebx
	movl %edi,-16(%ebp)
	movl 4(%ebx),%eax
	decl %eax
	subl %eax,%edi
	movl %edi,%eax
	testl %eax,%eax
	jle .L120
	pushl $2817
	call _m3_fault
	.align 16
.L120:
	movl (%ebx),%ebx
	incl %ebx
	movl %ebx,-20(%ebp)
	testl %esi,%esi
	jne .L121
	pushl $2820
	call _m3_fault
	.align 16
.L121:
	pushl %esi
	movl -32(%ebp),%edx
	jmp .L127
	.align 16
.L108:
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	pushl %ebx
	call TextConv__DecodedCharsSize
	movl %eax,-4(%ebp)
	movl -28(%ebp),%ecx
	pushl %ecx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $12,%esp
	testl %ebx,%ebx
	jne .L125
	pushl $2868
	call _m3_fault
	.align 16
.L125:
	pushl %ebx
	movl -24(%ebp),%edx
.L127:
	pushl %edx
	call TextConv__DecodeChars
	addl $8,%esp
	testl %esi,%esi
	jne .L126
	pushl $2900
	call _m3_fault
	.align 16
.L126:
	pushl %esi
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%ebx
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TextConv__Decode,.Lfe9-TextConv__Decode
	.align 16
	.type	 TextConv__ImplodedSize,@function
TextConv__ImplodedSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl %esi,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L129
	.align 16
.L130:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L131
	pushl $3026
	call _m3_fault
	.align 16
.L131:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	addl %eax,%esi
	incl %ebx
	addl $4,%esp
.L129:
	cmpl %edi,%ebx
	jle .L130
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	decl %eax
	testl %eax,%eax
	jle .L134
	addl %eax,%esi
.L134:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TextConv__ImplodedSize,.Lfe10-TextConv__ImplodedSize
	.align 16
	.type	 TextConv__Implode,@function
TextConv__Implode:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	leal -4(%ebp),%edx
	pushl %ebx
	leal -12(%ebp),%ebx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	call TextConv__ImplodedSize
	movl %eax,-4(%ebp)
	pushl %ebx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	movl 8(%ebp),%eax
	movl %ebx,%edi
	addl $12,%esp
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-28(%ebp)
	jmp .L136
	.align 16
.L137:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L138
	pushl $3234
	call _m3_fault
	.align 16
.L138:
	movl (%eax),%eax
	movl (%eax,%edi,4),%eax
	movl %eax,-24(%ebp)
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L139
	pushl $3268
	call _m3_fault
	.align 16
.L139:
	testl %ebx,%ebx
	jge .L140
	pushl $3265
	call _m3_fault
	.align 16
.L140:
	testl %eax,%eax
	jge .L141
	pushl $3265
	call _m3_fault
	.align 16
.L141:
	movl %eax,-16(%ebp)
	addl %ebx,%eax
	movl %eax,-32(%ebp)
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L142
	pushl $3265
	call _m3_fault
	.align 16
.L142:
	addl (%esi),%ebx
	movl %ebx,-20(%ebp)
	movl -24(%ebp),%edx
	pushl %edx
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	movl -32(%ebp),%ebx
	movl 8(%ebp),%eax
	addl $8,%esp
	movl 4(%eax),%eax
	decl %eax
	cmpl %edi,%eax
	je .L143
	cmpl %ebx,4(%esi)
	ja .L145
	pushl $3314
	call _m3_fault
	.align 16
.L145:
	movl (%esi),%eax
	movb 12(%ebp),%dl
	movb %dl,(%ebx,%eax)
	incl %ebx
.L143:
	incl %edi
.L136:
	cmpl %edi,-28(%ebp)
	jge .L137
	testl %esi,%esi
	jne .L147
	pushl $3380
	call _m3_fault
	.align 16
.L147:
	pushl %esi
	movl MI_Text+76,%eax
	call *%eax
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TextConv__Implode,.Lfe11-TextConv__Implode
	.align 16
	.type	 TextConv__ExplodedItemSize,@function
TextConv__ExplodedItemSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Text+56,%eax
	xorl %ebx,%ebx
	call *%eax
	movl %eax,%edi
	addl $4,%esp
.L149:
	movl (%esi),%eax
	cmpl %edi,%eax
	jge .L152
	testl %eax,%eax
	jge .L151
	pushl $3569
	call _m3_fault
	.align 16
.L151:
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Text+52,%eax
	call *%eax
	movb %al,%dl
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %dl,%al
	pushl %eax
	call set_member
	addl $16,%esp
	testl %eax,%eax
	jne .L152
	incl (%esi)
	incl %ebx
	jmp .L149
	.align 16
.L152:
	movl %ebx,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TextConv__ExplodedItemSize,.Lfe12-TextConv__ExplodedItemSize
	.align 16
	.type	 TextConv__ExplodeItem,@function
TextConv__ExplodeItem:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	xorl %ebx,%ebx
	call *%eax
	movl %eax,%edi
	addl $4,%esp
.L156:
	movl (%esi),%eax
	cmpl %edi,%eax
	jge .L163
	testl %eax,%eax
	jge .L158
	pushl $3841
	call _m3_fault
	.align 16
.L158:
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	movb %al,-4(%ebp)
	movl 20(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	call set_member
	addl $16,%esp
	testl %eax,%eax
	je .L159
.L163:
	movl %ebx,%eax
	jmp .L162
	.align 16
.L159:
	incl (%esi)
	movl 16(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L160
	pushl $3890
	call _m3_fault
	.align 16
.L160:
	movl (%eax),%eax
	movb -4(%ebp),%dl
	movb %dl,(%ebx,%eax)
	incl %ebx
	jmp .L156
	.align 16
.L162:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 TextConv__ExplodeItem,.Lfe13-TextConv__ExplodeItem
	.align 16
	.type	 TextConv__ExplodedSize,@function
TextConv__ExplodedSize:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-4(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	xorl %ebx,%ebx
	call *%eax
	movl %eax,%edx
	movl %edx,%edi
	addl $4,%esp
.L165:
	movl 12(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	call TextConv__ExplodedItemSize
	movl -4(%ebp),%eax
	addl $12,%esp
	cmpl %edi,%eax
	jl .L166
	leal 1(%ebx),%eax
	jmp .L170
	.align 16
.L166:
	testl %eax,%eax
	jge .L167
	pushl $4129
	call _m3_fault
	.align 16
.L167:
	pushl %eax
	pushl %esi
	movl MI_Text+52,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call set_member
	addl $16,%esp
	testl %eax,%eax
	je .L165
	incl -4(%ebp)
	incl %ebx
	jmp .L165
	.align 16
.L170:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 TextConv__ExplodedSize,.Lfe14-TextConv__ExplodedSize
	.align 16
	.type	 TextConv__Explode,@function
TextConv__Explode:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	xorl %eax,%eax
	pushl %esi
	movl %eax,%esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %eax,-8(%ebp)
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-24(%ebp)
	addl $4,%esp
.L172:
	movl -8(%ebp),%eax
	movl %eax,-4(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl 16(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%ebx
	pushl %edi
	call TextConv__ExplodedItemSize
	movl %eax,-12(%ebp)
	pushl %ebx
	movl MM_TextConv+168,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $20,%esp
	testl %ebx,%ebx
	jne .L173
	pushl $4388
	call _m3_fault
	.align 16
.L173:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edi
	call TextConv__ExplodeItem
	addl $16,%esp
	pushl %ebx
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%eax
	addl $4,%esp
	cmpl %esi,4(%eax)
	ja .L175
	pushl $4402
	call _m3_fault
	.align 16
.L175:
	movl (%eax),%eax
	movl %ebx,(%eax,%esi,4)
	movl -8(%ebp),%eax
	cmpl %eax,-24(%ebp)
	jle .L171
	testl %eax,%eax
	jge .L177
	pushl $4433
	call _m3_fault
	.align 16
.L177:
	pushl %eax
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	call set_member
	addl $16,%esp
	testl %eax,%eax
	je .L172
	incl -8(%ebp)
	incl %esi
	jmp .L172
	.align 16
.L171:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 TextConv__Explode,.Lfe15-TextConv__Explode
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextConv
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_TextConv
.data
	.align 4
	.type	 MM_TextConv,@object
	.size	 MM_TextConv,688
MM_TextConv:
	.long MM_TextConv+544
	.zero	4
	.long MM_TextConv+168
	.zero	8
	.long MM_TextConv+360
	.zero	24
	.long 16711680
	.zero	28
	.long 196608
	.zero	24
	.long TextConv__ImplodedSize
	.long TextConv__ExplodedItemSize
	.long TextConv__ExplodeItem
	.long TextConv__Encode
	.long TextConv__EncodedCharSize
	.long TextConv__EncodeChar
	.long TextConv__EncodedCharsSize
	.long TextConv__EncodeChars
	.long TextConv__Decode
	.long TextConv__DecodeChar
	.long TextConv__DecodedCharsSize
	.long TextConv__DecodeChars
	.long TextConv__Explode
	.long TextConv__ExplodedSize
	.long TextConv__Implode
	.zero	4
	.long -2020873848
	.ascii	"Explode"
	.zero	1
	.ascii	"ExplodedSize"
	.zero	1
	.ascii	"ExplodeItem"
	.zero	1
	.ascii	"ExplodedItemSize"
	.zero	1
	.ascii	"Implode"
	.zero	1
	.ascii	"ImplodedSize"
	.zero	1
	.ascii	"Decode"
	.zero	1
	.ascii	"DecodeChars"
	.zero	1
	.ascii	"DecodedCharsSize"
	.zero	1
	.ascii	"DecodeChar"
	.zero	1
	.ascii	"Encode"
	.zero	1
	.ascii	"EncodeChars"
	.zero	1
	.ascii	"EncodedCharsSize"
	.zero	1
	.ascii	"EncodeChar"
	.zero	1
	.ascii	"EncodedCharSize"
	.zero	4
	.long TextConv__Explode
	.long MM_TextConv+176
	.long MI_TextConv+164
	.long TextConv__ExplodedSize
	.long MM_TextConv+184
	.long MI_TextConv+168
	.long TextConv__ExplodeItem
	.long MM_TextConv+197
	.zero	4
	.long TextConv__ExplodedItemSize
	.long MM_TextConv+209
	.zero	4
	.long TextConv__Implode
	.long MM_TextConv+226
	.long MI_TextConv+172
	.long TextConv__ImplodedSize
	.long MM_TextConv+234
	.zero	4
	.long TextConv__Decode
	.long MM_TextConv+247
	.long MI_TextConv+148
	.long TextConv__DecodeChars
	.long MM_TextConv+254
	.long MI_TextConv+160
	.long TextConv__DecodedCharsSize
	.long MM_TextConv+266
	.long MI_TextConv+156
	.long TextConv__DecodeChar
	.long MM_TextConv+283
	.long MI_TextConv+152
	.long TextConv__Encode
	.long MM_TextConv+294
	.long MI_TextConv+128
	.long TextConv__EncodeChars
	.long MM_TextConv+301
	.long MI_TextConv+144
	.long TextConv__EncodedCharsSize
	.long MM_TextConv+313
	.long MI_TextConv+140
	.long TextConv__EncodeChar
	.long MM_TextConv+330
	.long MI_TextConv+136
	.long TextConv__EncodedCharSize
	.long MM_TextConv+341
	.long MI_TextConv+132
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/text/TextConv.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
