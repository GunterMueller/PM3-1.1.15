	.file	"Text.mc"
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
	.type	 TextF__New,@function
TextF__New:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	leal 1(%ebx),%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_Text+100,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L2
	pushl $340
	call _m3_fault
	.align 16
.L2:
	cmpl %ebx,4(%edx)
	ja .L3
	pushl $338
	call _m3_fault
	.align 16
.L3:
	movl (%edx),%eax
	movb $0,(%ebx,%eax)
	movl %edx,%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TextF__New,.Lfe1-TextF__New
	.align 16
	.type	 Text__Cat,@function
Text__Cat:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L5
	pushl $452
	call _m3_fault
	.align 16
.L5:
	movl 4(%edi),%ebx
	cmpl $0,12(%ebp)
	jne .L6
	pushl $452
	call _m3_fault
	.align 16
.L6:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%ecx
	movl %ecx,-24(%ebp)
	cmpl $1,%ebx
	jg .L7
	movl 12(%ebp),%eax
	jmp .L18
	.align 16
.L7:
	cmpl $1,-24(%ebp)
	jg .L8
	movl %edi,%eax
	jmp .L18
	.align 16
.L8:
	leal -12(%ebp),%edx
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl -24(%ebp),%ecx
	leal -1(%ecx,%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_Text+100,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L9
	pushl $516
	call _m3_fault
	.align 16
.L9:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L10
	pushl $513
	call _m3_fault
	.align 16
.L10:
	movl (%esi),%edx
	movl %edx,-20(%ebp)
	cmpl %ebx,4(%edi)
	je .L12
	pushl $515
	call _m3_fault
	.align 16
.L12:
	pushl %ebx
	movl (%edi),%eax
	pushl %eax
	pushl %edx
	call memmove
	addl $12,%esp
	leal -1(%ebx),%edx
	testl %edx,%edx
	jge .L14
	pushl $529
	call _m3_fault
	.align 16
.L14:
	movl -24(%ebp),%ecx
	movl %ecx,-16(%ebp)
	leal (%ecx,%edx),%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L15
	pushl $529
	call _m3_fault
	.align 16
.L15:
	addl (%esi),%edx
	movl %edx,-20(%ebp)
	movl 12(%ebp),%eax
	movl -24(%ebp),%ecx
	cmpl %ecx,4(%eax)
	je .L17
	pushl $531
	call _m3_fault
	.align 16
.L17:
	movl -24(%ebp),%ecx
	pushl %ecx
	movl (%eax),%eax
	pushl %eax
	pushl %edx
	call memmove
	movl %esi,%eax
.L18:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Text__Cat,.Lfe2-Text__Cat
	.align 16
	.type	 Text__Equal,@function
Text__Equal:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	testl %ecx,%ecx
	jne .L20
	pushl $660
	call _m3_fault
	.align 16
.L20:
	movl 4(%ecx),%ebx
	cmpl $1,%ebx
	jg .L21
	testl %edx,%edx
	jne .L22
	pushl $676
	call _m3_fault
	.align 16
.L22:
	cmpl $1,4(%edx)
	setle %al
	andl $255,%eax
	jmp .L31
	.align 16
.L21:
	testl %edx,%edx
	jne .L23
	pushl $692
	call _m3_fault
	.align 16
.L23:
	movl 4(%edx),%eax
	cmpl $1,%eax
	jle .L27
	movl %ecx,%edi
	movl %edx,%esi
	cmpl %eax,%ebx
	jne .L27
	leal -1(%eax),%ecx
	jmp .L28
	.align 16
.L29:
	movl (%edi),%eax
	addl %ecx,%eax
	movl (%esi),%edx
	addl %ecx,%edx
	movb (%eax),%al
	cmpb %al,(%edx)
	jne .L27
	decl %ecx
.L28:
	testl %ecx,%ecx
	jge .L29
	movl $1,%eax
	jmp .L30
	.align 16
.L27:
	xorl %eax,%eax
.L30:
.L31:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Text__Equal,.Lfe3-Text__Equal
	.align 16
	.type	 Text__GetChar,@function
Text__GetChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	testl %ebx,%ebx
	jne .L33
	pushl $836
	call _m3_fault
	.align 16
.L33:
	movl 4(%ebx),%edx
	leal -1(%edx),%eax
	cmpl %ecx,%eax
	jne .L35
	movl %edx,%ecx
.L35:
	cmpl %edx,%ecx
	jb .L36
	pushl $850
	call _m3_fault
	.align 16
.L36:
	movl (%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	movb (%ecx,%eax),%al
	andl $255,%eax
	ret
.Lfe4:
	.size	 Text__GetChar,.Lfe4-Text__GetChar
	.align 16
	.type	 Text__Length,@function
Text__Length:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L38
	pushl $932
	call _m3_fault
	.align 16
.L38:
	movl 4(%eax),%edx
	decl %edx
	xorl %eax,%eax
	testl %edx,%edx
	jle .L39
	movl %edx,%eax
.L39:
	testl %eax,%eax
	jge .L41
	pushl $929
	call _m3_fault
	.align 16
.L41:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Text__Length,.Lfe5-Text__Length
	.align 16
	.type	 Text__Empty,@function
Text__Empty:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L43
	pushl $1012
	call _m3_fault
	.align 16
.L43:
	cmpl $1,4(%eax)
	setle %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Text__Empty,.Lfe6-Text__Empty
	.align 16
	.type	 Text__Sub,@function
Text__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L45
	pushl $1092
	call _m3_fault
	.align 16
.L45:
	movl 4(%edi),%esi
	leal -1(%esi),%ecx
	movl %ecx,-32(%ebp)
	movl %ecx,%edx
	subl 12(%ebp),%edx
	movl 16(%ebp),%eax
	cmpl %edx,%eax
	jle .L46
	movl %edx,%eax
.L46:
	movl %eax,%ebx
	testl %ebx,%ebx
	jg .L47
	movl $MM_Text+112,%eax
	jmp .L61
	.align 16
.L47:
	cmpl %ebx,-32(%ebp)
	jne .L48
	movl %edi,%eax
	jmp .L61
	.align 16
.L48:
	cmpl $1,%ebx
	jne .L49
	movl %edi,%edx
	cmpl %esi,12(%ebp)
	jb .L51
	pushl $1154
	call _m3_fault
	.align 16
.L51:
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movb (%ecx,%eax),%al
	andl $255,%eax
	pushl %eax
	call Text__FromChar
	jmp .L61
	.align 16
.L49:
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	leal 1(%ebx),%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_Text+100,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L52
	pushl $1188
	call _m3_fault
	.align 16
.L52:
	testl %ebx,%ebx
	jge .L53
	pushl $1185
	call _m3_fault
	.align 16
.L53:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L54
	pushl $1185
	call _m3_fault
	.align 16
.L54:
	movl (%esi),%eax
	movl %eax,-20(%ebp)
	movl %edi,%edx
	movl %ebx,%edi
	movl %ebx,-24(%ebp)
	movl 12(%ebp),%eax
	addl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L57
	pushl $1185
	call _m3_fault
	.align 16
.L57:
	movl 12(%ebp),%eax
	addl (%edx),%eax
	movl %eax,-28(%ebp)
	pushl %edi
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	call memmove
	addl $12,%esp
	testl %esi,%esi
	jne .L59
	pushl $1204
	call _m3_fault
	.align 16
.L59:
	cmpl %ebx,4(%esi)
	ja .L60
	pushl $1202
	call _m3_fault
	.align 16
.L60:
	movl (%esi),%eax
	movb $0,(%ebx,%eax)
	movl %esi,%eax
.L61:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Text__Sub,.Lfe7-Text__Sub
	.align 16
	.type	 Text__SetChars,@function
Text__SetChars:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L63
	pushl $1332
	call _m3_fault
	.align 16
.L63:
	movl 8(%ebp),%ecx
	movl 4(%ebx),%edx
	decl %edx
	movl 4(%ecx),%eax
	cmpl %eax,%edx
	jle .L64
	movl %eax,%edx
.L64:
	testl %edx,%edx
	jge .L65
	pushl $1345
	call _m3_fault
	.align 16
.L65:
	movl %edx,-4(%ebp)
	movl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L66
	pushl $1345
	call _m3_fault
	.align 16
.L66:
	movl (%ecx),%ecx
	movl %ecx,-8(%ebp)
	movl %edx,-12(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L69
	pushl $1345
	call _m3_fault
	.align 16
.L69:
	movl (%ebx),%eax
	movl %eax,-16(%ebp)
	pushl %edx
	pushl %eax
	pushl %ecx
	call memmove
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Text__SetChars,.Lfe8-Text__SetChars
	.align 16
	.type	 Text__FromChar,@function
Text__FromChar:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	xorl %ebx,%ebx
	movb 8(%ebp),%bl
	movl L_1(,%ebx,4),%eax
	testl %eax,%eax
	jne .L72
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $2,-4(%ebp)
	pushl %eax
	movl MM_Text+100,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L73
	pushl $1476
	call _m3_fault
	.align 16
.L73:
	cmpl $0,4(%edx)
	jne .L74
	pushl $1474
	call _m3_fault
	.align 16
.L74:
	movl (%edx),%eax
	movb 8(%ebp),%cl
	movb %cl,(%eax)
	cmpl $1,4(%edx)
	ja .L76
	pushl $1490
	call _m3_fault
	.align 16
.L76:
	movl (%edx),%eax
	movb $0,1(%eax)
	movl %edx,L_1(,%ebx,4)
	movl %edx,%eax
.L72:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Text__FromChar,.Lfe9-Text__FromChar
	.align 16
	.type	 Text__FromChars,@function
Text__FromChars:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	movl %ebx,-32(%ebp)
	testl %ebx,%ebx
	jne .L79
	movl $MM_Text+112,%eax
	jmp .L88
	.align 16
.L79:
	cmpl $1,%ebx
	jne .L80
	movl (%eax),%eax
	movb (%eax),%al
	andl $255,%eax
	pushl %eax
	call Text__FromChar
	jmp .L88
	.align 16
.L80:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	leal 1(%ebx),%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_Text+100,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L82
	pushl $1716
	call _m3_fault
	.align 16
.L82:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L83
	pushl $1713
	call _m3_fault
	.align 16
.L83:
	movl (%esi),%ecx
	movl %ecx,-20(%ebp)
	movl %ebx,-24(%ebp)
	movl 8(%ebp),%edx
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L84
	pushl $1713
	call _m3_fault
	.align 16
.L84:
	movl (%edx),%eax
	movl %eax,-28(%ebp)
	pushl %ebx
	pushl %eax
	pushl %ecx
	call memmove
	addl $12,%esp
	cmpl %ebx,4(%esi)
	ja .L87
	pushl $1730
	call _m3_fault
	.align 16
.L87:
	movl (%esi),%eax
	movl -32(%ebp),%edi
	movb $0,(%edi,%eax)
	movl %esi,%eax
.L88:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Text__FromChars,.Lfe10-Text__FromChars
	.align 16
	.type	 Text__FindChar,@function
Text__FindChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 16(%ebp),%edx
	testl %edx,%edx
	jl .L99
	testl %ecx,%ecx
	jne .L91
	pushl $1876
	call _m3_fault
	.align 16
.L91:
	movl 4(%ecx),%esi
	decl %esi
.L92:
	cmpl %esi,%edx
	jl .L93
.L99:
	movl $-1,%eax
	jmp .L98
	.align 16
.L93:
	testl %ecx,%ecx
	jne .L94
	pushl $1924
	call _m3_fault
	.align 16
.L94:
	cmpl %edx,4(%ecx)
	ja .L95
	pushl $1922
	call _m3_fault
	.align 16
.L95:
	movl (%ecx),%eax
	movb 12(%ebp),%bl
	cmpb %bl,(%edx,%eax)
	je .L96
	incl %edx
	jmp .L92
	.align 16
.L96:
	movl %edx,%eax
.L98:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Text__FindChar,.Lfe11-Text__FindChar
	.align 16
	.type	 Text__FindCharR,@function
Text__FindCharR:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movb 12(%ebp),%bl
	testl %ecx,%ecx
	jne .L101
	pushl $2052
	call _m3_fault
	.align 16
.L101:
	movl 4(%ecx),%eax
	addl $-2,%eax
	movl 16(%ebp),%edx
	cmpl %eax,%edx
	jle .L103
	movl %eax,%edx
.L103:
	testl %edx,%edx
	jge .L104
	movl $-1,%eax
	jmp .L109
	.align 16
.L104:
	testl %ecx,%ecx
	jne .L105
	pushl $2132
	call _m3_fault
	.align 16
.L105:
	cmpl %edx,4(%ecx)
	ja .L106
	pushl $2130
	call _m3_fault
	.align 16
.L106:
	movl (%ecx),%eax
	cmpb %bl,(%edx,%eax)
	je .L107
	decl %edx
	jmp .L103
	.align 16
.L107:
	movl %edx,%eax
.L109:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Text__FindCharR,.Lfe12-Text__FindCharR
	.align 16
	.type	 Text__Compare,@function
Text__Compare:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L111
	pushl $2244
	call _m3_fault
	.align 16
.L111:
	movl 8(%ebp),%edi
	movl 4(%edi),%ebx
	cmpl $1,%ebx
	setle %cl
	cmpl $0,12(%ebp)
	jne .L112
	pushl $2260
	call _m3_fault
	.align 16
.L112:
	movl 12(%ebp),%edi
	movl 4(%edi),%edx
	cmpl $1,%edx
	setle %al
	testb %cl,%cl
	je .L113
	testb %al,%al
	jne .L135
	jmp .L133
	.align 16
.L113:
	testb %al,%al
	jne .L136
	leal -1(%ebx),%esi
	leal -1(%edx),%ebx
	movl %ebx,%eax
	cmpl %esi,%ebx
	jle .L118
	movl %esi,%eax
.L118:
	xorl %edx,%edx
	movl %eax,-4(%ebp)
	jmp .L119
	.align 16
.L120:
	cmpl $0,8(%ebp)
	jne .L121
	pushl $2388
	call _m3_fault
	.align 16
.L121:
	movl 8(%ebp),%edi
	movl 4(%edi),%edi
	movl %edi,-8(%ebp)
	cmpl %edi,%edx
	jb .L122
	pushl $2386
	call _m3_fault
	.align 16
.L122:
	cmpl $0,12(%ebp)
	jne .L123
	pushl $2388
	call _m3_fault
	.align 16
.L123:
	movl 12(%ebp),%edi
	movl 4(%edi),%edi
	movl %edi,-12(%ebp)
	cmpl %edi,%edx
	jb .L124
	pushl $2386
	call _m3_fault
	.align 16
.L124:
	movl 8(%ebp),%edi
	movl (%edi),%eax
	movl 12(%ebp),%edi
	xorl %ecx,%ecx
	movb (%edx,%eax),%cl
	movl (%edi),%eax
	movb (%edx,%eax),%al
	andl $255,%eax
	cmpl %eax,%ecx
	jl .L133
	cmpl %edx,-8(%ebp)
	ja .L128
	pushl $2402
	call _m3_fault
	.align 16
.L128:
	cmpl %edx,-12(%ebp)
	ja .L129
	pushl $2402
	call _m3_fault
	.align 16
.L129:
	cmpl %eax,%ecx
	jg .L136
	incl %edx
.L119:
	cmpl %edx,-4(%ebp)
	jge .L120
	cmpl %ebx,%esi
	jne .L132
.L135:
	xorl %eax,%eax
	jmp .L134
	.align 16
.L132:
	cmpl %ebx,%esi
	jl .L133
.L136:
	movl $1,%eax
	jmp .L134
	.align 16
.L133:
	movl $-1,%eax
.L134:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Text__Compare,.Lfe13-Text__Compare
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Text
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_Text
.data
	.align 4
	.type	 MM_Text,@object
	.size	 MM_Text,532
MM_Text:
	.long MM_Text+390
	.zero	4
	.long MM_Text+100
	.zero	8
	.long MM_Text+220
	.zero	4
	.long MM_Text+380
	.long MM_Text+380
	.zero	8
	.long L_1
	.long TextF__New
	.long Text__Cat
	.long Text__Equal
	.long Text__GetChar
	.long Text__Length
	.long Text__Empty
	.long Text__Sub
	.long Text__SetChars
	.long Text__FromChar
	.long Text__FromChars
	.long Text__Compare
	.long Text__FindChar
	.long Text__FindCharR
	.zero	4
	.long 1358456180
	.long 2
	.long MM_Text+120
	.long 1
	.zero	4
	.ascii	"Compare"
	.zero	1
	.ascii	"FindCharR"
	.zero	1
	.ascii	"FindChar"
	.zero	1
	.ascii	"FromChars"
	.zero	1
	.ascii	"FromChar"
	.zero	1
	.ascii	"SetChars"
	.zero	1
	.ascii	"Sub"
	.zero	1
	.ascii	"Empty"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"GetChar"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Cat"
	.zero	1
	.ascii	"New"
	.zero	3
	.long Text__Compare
	.long MM_Text+124
	.long MI_Text+84
	.long Text__FindCharR
	.long MM_Text+132
	.long MI_Text+92
	.long Text__FindChar
	.long MM_Text+142
	.long MI_Text+88
	.long Text__FromChars
	.long MM_Text+151
	.long MI_Text+76
	.long Text__FromChar
	.long MM_Text+161
	.long MI_Text+72
	.long Text__SetChars
	.long MM_Text+170
	.long MI_Text+68
	.long Text__Sub
	.long MM_Text+179
	.long MI_Text+64
	.long Text__Empty
	.long MM_Text+183
	.long MI_Text+60
	.long Text__Length
	.long MM_Text+189
	.long MI_Text+56
	.long Text__GetChar
	.long MM_Text+196
	.long MI_Text+52
	.long Text__Equal
	.long MM_Text+204
	.long MI_Text+48
	.long Text__Cat
	.long MM_Text+210
	.long MI_Text+44
	.long TextF__New
	.long MM_Text+214
	.long MI_TextF+148
	.zero	4
.byte 42
.byte 44
.byte 2
.byte 1
.byte 4
.byte 27
.byte 0
.byte 1
.byte 3
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/text/Text.m3"
	.zero	4
	.local	L_1
	.comm	L_1,1024,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
