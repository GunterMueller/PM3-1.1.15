	.file	"TWord.mc"
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
	.type	 TWord__New,@function
TWord__New:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	movl $MI_TInt+44,%ebx
	movl MI_TInt+44,%eax
	movl %eax,(%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	leal -24(%ebp),%eax
	pushl %eax
	pushl %ecx
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L12
	movl MI_TInt+44,%eax
	movl %eax,-16(%ebp)
	movl 4(%ebx),%eax
	movl %eax,-12(%ebp)
	movl 8(%ebp),%eax
	xorl %esi,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L3
	.align 16
.L4:
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L5
	pushl $514
	call _m3_fault
	.align 16
.L5:
	movl (%eax),%eax
	movb (%esi,%eax),%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpl $47,%eax
	jle .L6
	cmpl $57,%eax
	jg .L6
	addl $-48,%eax
	jmp .L7
	.align 16
.L6:
	xorl %eax,%eax
	movb %dl,%al
	cmpl $64,%eax
	jle .L8
	cmpl $70,%eax
	jg .L8
	addl $-55,%eax
	jmp .L7
	.align 16
.L8:
	xorl %eax,%eax
	movb %dl,%al
	cmpl $96,%eax
	jle .L9
	cmpl $102,%eax
	jg .L9
	addl $-87,%eax
	jmp .L7
	.align 16
.L9:
	xorl %eax,%eax
	jmp .L12
	.align 16
.L7:
	cmpl $65535,%eax
	jbe .L10
	pushl $609
	call _m3_fault
	.align 16
.L10:
	movw %ax,-16(%ebp)
	leal -8(%ebp),%ebx
	pushl %ebx
	leal -24(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	call TWord__Multiply
	movl 16(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	call TWord__Add
	incl %esi
	addl $24,%esp
.L3:
	cmpl %edi,%esi
	jle .L4
	movl $1,%eax
.L12:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TWord__New,.Lfe1-TWord__New
	.align 16
	.type	 TWord__Add,@function
TWord__Add:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,%ecx
	movzbl MI_Target+52,%esi
	jmp .L14
	.align 16
.L15:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	andl $65535,%eax
	movw (%edx,%ecx,2),%dx
	andl $65535,%edx
	addl %edx,%eax
	addl %eax,%ebx
	movl %ebx,%edx
	andl $65535,%edx
	cmpl $65535,%edx
	jbe .L16
	pushl $833
	call _m3_fault
	.align 16
.L16:
	movl 16(%ebp),%eax
	shrl $16,%ebx
	movw %dx,(%eax,%ecx,2)
	incl %ecx
.L14:
	cmpl %esi,%ecx
	jle .L15
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TWord__Add,.Lfe2-TWord__Add
	.align 16
	.type	 TWord__Subtract,@function
TWord__Subtract:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,%ecx
	movzbl MI_Target+52,%esi
	jmp .L19
	.align 16
.L20:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	andl $65535,%eax
	movw (%edx,%ecx,2),%dx
	andl $65535,%edx
	subl %edx,%eax
	subl %ebx,%eax
	movl %eax,%ebx
	movl %ebx,%edx
	andl $65535,%edx
	cmpl $65535,%edx
	jbe .L21
	pushl $993
	call _m3_fault
	.align 16
.L21:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%ecx,2)
	movl %ebx,%eax
	shrl $16,%eax
	movl %eax,%ebx
	andl $1,%ebx
	incl %ecx
.L19:
	cmpl %esi,%ecx
	jle .L20
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TWord__Subtract,.Lfe3-TWord__Subtract
	.align 16
	.type	 TWord__Multiply,@function
TWord__Multiply:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl 16(%ebp),%eax
	movl MI_TInt+44,%edx
	movl %edx,(%eax)
	movl MI_TInt+48,%edx
	movl %edx,4(%eax)
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	movl %ebx,-4(%ebp)
	jmp .L24
	.align 16
.L25:
	xorl %esi,%esi
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	movl %ebx,-8(%ebp)
	jmp .L26
	.align 16
.L27:
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movw (%eax,%edi,2),%dx
	movl 12(%ebp),%eax
	leal (%esi,%edi),%ecx
	movw (%eax,%esi,2),%ax
	andl $65535,%eax
	imull %eax,%edx
	jmp .L28
	.align 16
.L29:
	cmpl $3,%ecx
	jbe .L30
	pushl $1217
	call _m3_fault
	.align 16
.L30:
	movl 16(%ebp),%ebx
	movl %ebx,-12(%ebp)
	xorl %eax,%eax
	movw (%ebx,%ecx,2),%ax
	addl %eax,%edx
	movl %edx,%eax
	andl $65535,%eax
	cmpl $65535,%eax
	jbe .L32
	pushl $1233
	call _m3_fault
	.align 16
.L32:
	movl -12(%ebp),%ebx
	shrl $16,%edx
	movw %ax,(%ebx,%ecx,2)
	incl %ecx
.L28:
	testl %edx,%edx
	je .L34
	xorl %eax,%eax
	movb MI_Target+52,%al
	cmpl %eax,%ecx
	jle .L29
.L34:
	incl %esi
.L26:
	cmpl %esi,-8(%ebp)
	jge .L27
	incl %edi
.L24:
	cmpl %edi,-4(%ebp)
	jge .L25
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TWord__Multiply,.Lfe4-TWord__Multiply
	.align 16
	.type	 TWord__Div,@function
TWord__Div:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl $MI_TInt+44,%ebx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L38
	xorl %eax,%eax
	jmp .L40
	.align 16
.L38:
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L39
	leal -8(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TWord__DivMod
	jmp .L41
	.align 16
.L39:
	movl 16(%ebp),%eax
	movl MI_TInt+44,%edx
	movl %edx,(%eax)
	movl 4(%ebx),%edx
	movl %edx,4(%eax)
.L41:
	movl $1,%eax
.L40:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TWord__Div,.Lfe5-TWord__Div
	.align 16
	.type	 TWord__Mod,@function
TWord__Mod:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl $MI_TInt+44,%ebx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L43
	xorl %eax,%eax
	jmp .L45
	.align 16
.L43:
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L44
	movl 16(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TWord__DivMod
	jmp .L46
	.align 16
.L44:
	movl 16(%ebp),%eax
	movl MI_TInt+44,%edx
	movl %edx,(%eax)
	movl 4(%ebx),%edx
	movl %edx,4(%eax)
.L46:
	movl $1,%eax
.L45:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TWord__Mod,.Lfe6-TWord__Mod
	.align 16
	.type	 TWord__DivMod,@function
TWord__DivMod:
	pushl %ebp
	movl %esp,%ebp
	subl $72,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L48:
	movl $5,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl $0,-52(%ebp)
	movl -52(%ebp),%edi
	movl %edi,-72(%ebp)
	xorl %eax,%eax
	movb MI_Target+52,%al
	jmp .L49
	.align 16
.L50:
	movl $0,-40(%ebp,%eax,4)
	movl $0,-20(%ebp,%eax,4)
	incl %eax
.L49:
	cmpl $4,%eax
	jle .L50
	xorl %edx,%edx
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	jmp .L52
	.align 16
.L53:
	movl 8(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,-40(%ebp,%edx,4)
	testl %eax,%eax
	je .L54
	movl %edx,-72(%ebp)
.L54:
	incl %edx
.L52:
	cmpl %ecx,%edx
	jle .L53
	xorl %edx,%edx
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	jmp .L56
	.align 16
.L57:
	movl 12(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,-20(%ebp,%edx,4)
	testl %eax,%eax
	je .L58
	movl %edx,-52(%ebp)
.L58:
	incl %edx
.L56:
	cmpl %ecx,%edx
	jle .L57
	movl 16(%ebp),%edx
	movl $MI_TInt+44,%ecx
	movl MI_TInt+44,%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 20(%ebp),%edx
	movl MI_TInt+44,%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	cmpl $0,-52(%ebp)
	jne .L60
	movl -52(%ebp),%edx
	movl -72(%ebp),%esi
	jmp .L61
	.align 16
.L62:
	cmpl $4,%esi
	jle .L63
	pushl $2161
	call _m3_fault
	.align 16
.L63:
	movl %edx,%eax
	sall $16,%eax
	movl %eax,%ebx
	addl -40(%ebp,%esi,4),%ebx
	cmpl $3,%esi
	jle .L64
	pushl $2177
	call _m3_fault
	.align 16
.L64:
	pushl %ebx
	movl -20(%ebp),%eax
	pushl %eax
	call m3_div
	movl %eax,%edx
	addl $8,%esp
	cmpl $65535,%edx
	jbe .L65
	pushl $2177
	call _m3_fault
	.align 16
.L65:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%esi,2)
	pushl %ebx
	movl -20(%ebp),%eax
	pushl %eax
	call m3_mod
	movl %eax,%edx
	decl %esi
	addl $8,%esp
.L61:
	testl %esi,%esi
	jge .L62
	cmpl $65535,%edx
	jbe .L67
	pushl $2225
	call _m3_fault
	.align 16
.L67:
	movl 20(%ebp),%eax
	movw %dx,(%eax)
	jmp .L113
	.align 16
.L60:
	cmpl $4,-52(%ebp)
	jle .L68
	pushl $2337
	call _m3_fault
	.align 16
.L68:
	pushl $65536
	movl -52(%ebp),%edi
	movl -20(%ebp,%edi,4),%eax
	incl %eax
	pushl %eax
	call m3_div
	movl %eax,%esi
	addl $8,%esp
	cmpl $1,%esi
	jle .L69
	xorl %edx,%edx
	movl %edx,%ecx
.L70:
	movl -40(%ebp,%ecx,4),%eax
	imull %esi,%eax
	leal (%edx,%eax),%ebx
	movl %ebx,%eax
	andl $65535,%eax
	movl %eax,-40(%ebp,%ecx,4)
	movl %ebx,%edx
	shrl $16,%edx
	testl %eax,%eax
	je .L71
	movl %ecx,-72(%ebp)
.L71:
	incl %ecx
	cmpl $4,%ecx
	jle .L70
	xorl %edx,%edx
	movl %edx,%ecx
.L74:
	movl -20(%ebp,%ecx,4),%eax
	imull %esi,%eax
	leal (%edx,%eax),%ebx
	movl %ebx,%eax
	andl $65535,%eax
	movl %eax,-20(%ebp,%ecx,4)
	movl %ebx,%edx
	shrl $16,%edx
	testl %eax,%eax
	je .L75
	movl %ecx,-52(%ebp)
.L75:
	incl %ecx
	cmpl $4,%ecx
	jle .L74
.L69:
	movl -72(%ebp),%eax
	subl -52(%ebp),%eax
	incl %eax
	movl %eax,-60(%ebp)
	jmp .L78
	.align 16
.L79:
	movl -60(%ebp),%esi
	addl -52(%ebp),%esi
	cmpl $4,%esi
	jbe .L80
	pushl $2769
	call _m3_fault
	.align 16
.L80:
	movl -40(%ebp,%esi,4),%ebx
	sall $16,%ebx
	testl %esi,%esi
	jle .L81
	leal -1(%esi),%eax
	cmpl $4,%eax
	jbe .L82
	pushl $2785
	call _m3_fault
	.align 16
.L82:
	addl -40(%ebp,%eax,4),%ebx
.L81:
	cmpl $4,%esi
	jbe .L83
	pushl $2801
	call _m3_fault
	.align 16
.L83:
	cmpl $4,-52(%ebp)
	jle .L84
	pushl $2801
	call _m3_fault
	.align 16
.L84:
	movl -52(%ebp),%edi
	movl -20(%ebp,%edi,4),%eax
	cmpl %eax,-40(%ebp,%esi,4)
	je .L85
	pushl %ebx
	pushl %eax
	call m3_div
	movl %eax,-72(%ebp)
	addl $8,%esp
	jmp .L87
	.align 16
.L85:
	movl $65535,-72(%ebp)
.L87:
	xorl %ecx,%ecx
	cmpl $1,%esi
	jle .L90
	leal -2(%esi),%eax
	cmpl $4,%eax
	jbe .L89
	pushl $2897
	call _m3_fault
	.align 16
.L89:
	movl -40(%ebp,%eax,4),%ecx
.L90:
	movl -52(%ebp),%eax
	decl %eax
	cmpl $4,%eax
	jbe .L91
	pushl $2929
	call _m3_fault
	.align 16
.L91:
	movl -72(%ebp),%edx
	imull -20(%ebp,%eax,4),%edx
	cmpl $4,-52(%ebp)
	jle .L92
	pushl $2945
	call _m3_fault
	.align 16
.L92:
	movl -52(%ebp),%edi
	movl -72(%ebp),%eax
	imull -20(%ebp,%edi,4),%eax
	movl %ebx,%edi
	subl %eax,%edi
	movl %edi,%eax
	sall $16,%eax
	addl %ecx,%eax
	cmpl %edx,%eax
	jge .L94
	decl -72(%ebp)
	jmp .L90
	.align 16
.L94:
	movl $0,-56(%ebp)
	movl -56(%ebp),%edx
	movl -52(%ebp),%edi
	movl %edi,-64(%ebp)
	jmp .L95
	.align 16
.L96:
	movl -60(%ebp),%edi
	leal -1(%edx,%edi),%ecx
	cmpl $4,%ecx
	jle .L97
	pushl $3137
	call _m3_fault
	.align 16
.L97:
	cmpl $4,%edx
	jle .L98
	pushl $3137
	call _m3_fault
	.align 16
.L98:
	movl -72(%ebp),%eax
	imull -20(%ebp,%edx,4),%eax
	movl -40(%ebp,%ecx,4),%edi
	subl %eax,%edi
	movl %edi,%eax
	movl -56(%ebp),%edi
	leal (%edi,%eax),%ebx
	movl %ebx,%eax
	andl $65535,%eax
	movl %eax,-40(%ebp,%ecx,4)
	sarl $16,%ebx
	movl %ebx,-56(%ebp)
	incl %edx
.L95:
	cmpl %edx,-64(%ebp)
	jge .L96
	cmpl $4,%esi
	jbe .L101
	pushl $3233
	call _m3_fault
	.align 16
.L101:
	movl -56(%ebp),%eax
	negl %eax
	cmpl %eax,-40(%ebp,%esi,4)
	jge .L102
	decl -72(%ebp)
	xorl %edx,%edx
	movl %edx,%esi
	movl -52(%ebp),%edi
	movl %edi,-68(%ebp)
	jmp .L103
	.align 16
.L104:
	movl -60(%ebp),%edi
	leal -1(%esi,%edi),%ecx
	cmpl $4,%ecx
	jle .L105
	pushl $3297
	call _m3_fault
	.align 16
.L105:
	cmpl $4,%esi
	jle .L106
	pushl $3297
	call _m3_fault
	.align 16
.L106:
	movl -20(%ebp,%esi,4),%eax
	addl -40(%ebp,%ecx,4),%eax
	leal (%edx,%eax),%ebx
	movl %ebx,%eax
	andl $65535,%eax
	movl %eax,-40(%ebp,%ecx,4)
	movl %ebx,%edx
	sarl $16,%edx
	incl %esi
.L103:
	cmpl %esi,-68(%ebp)
	jge .L104
	movl -60(%ebp),%ecx
	addl -52(%ebp),%ecx
	cmpl $4,%ecx
	jle .L109
	pushl $3361
	call _m3_fault
	.align 16
.L109:
	movl -56(%ebp),%eax
	addl %edx,%eax
	addl %eax,-40(%ebp,%ecx,4)
.L102:
	movl -60(%ebp),%edx
	decl %edx
	cmpl $3,%edx
	jle .L110
	pushl $3425
	call _m3_fault
	.align 16
.L110:
	cmpl $65535,-72(%ebp)
	jbe .L111
	pushl $3425
	call _m3_fault
	.align 16
.L111:
	movl 16(%ebp),%eax
	movw -72(%ebp),%di
	movw %di,(%eax,%edx,2)
	movl %edx,-60(%ebp)
.L78:
	cmpl $0,-60(%ebp)
	jg .L79
	movl 20(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	call TWord__Multiply
	movl 20(%ebp),%eax
	pushl %eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TWord__Subtract
.L113:
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -84(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TWord__DivMod,.Lfe7-TWord__DivMod
	.align 16
	.type	 TWord__LT,@function
TWord__LT:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movb MI_Target+52,%dl
	jmp .L115
	.align 16
.L116:
	movl 8(%ebp),%eax
	xorl %ecx,%ecx
	movw (%eax,%edx,2),%cx
	movl 12(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	cmpl %eax,%ecx
	jge .L117
	movl $1,%eax
	jmp .L120
	.align 16
.L117:
	cmpl %eax,%ecx
	jg .L121
	decl %edx
.L115:
	testl %edx,%edx
	jge .L116
.L121:
	xorl %eax,%eax
.L120:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TWord__LT,.Lfe8-TWord__LT
	.align 16
	.type	 TWord__LE,@function
TWord__LE:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movb MI_Target+52,%dl
	jmp .L123
	.align 16
.L124:
	movl 8(%ebp),%eax
	xorl %ecx,%ecx
	movw (%eax,%edx,2),%cx
	movl 12(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	cmpl %eax,%ecx
	jl .L129
	jle .L126
	xorl %eax,%eax
	jmp .L128
	.align 16
.L126:
	decl %edx
.L123:
	testl %edx,%edx
	jge .L124
.L129:
	movl $1,%eax
.L128:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TWord__LE,.Lfe9-TWord__LE
	.align 16
	.type	 TWord__And,@function
TWord__And:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	pushl %ebx
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	jmp .L131
	.align 16
.L132:
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	movw (%edx,%ecx,2),%dx
	andw (%eax,%ecx,2),%dx
	movl %edx,%eax
	xorl %edx,%edx
	movw %ax,%dx
	cmpl $65535,%edx
	jbe .L133
	pushl $3921
	call _m3_fault
	.align 16
.L133:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%ecx,2)
	incl %ecx
.L131:
	cmpl %ebx,%ecx
	jle .L132
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TWord__And,.Lfe10-TWord__And
	.align 16
	.type	 TWord__Or,@function
TWord__Or:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	pushl %ebx
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	jmp .L136
	.align 16
.L137:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	orw (%edx,%ecx,2),%ax
	xorl %edx,%edx
	movw %ax,%dx
	cmpl $65535,%edx
	jbe .L138
	pushl $4033
	call _m3_fault
	.align 16
.L138:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%ecx,2)
	incl %ecx
.L136:
	cmpl %ebx,%ecx
	jle .L137
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TWord__Or,.Lfe11-TWord__Or
	.align 16
	.type	 TWord__Xor,@function
TWord__Xor:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	pushl %ebx
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	jmp .L141
	.align 16
.L142:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	xorw (%edx,%ecx,2),%ax
	xorl %edx,%edx
	movw %ax,%dx
	cmpl $65535,%edx
	jbe .L143
	pushl $4145
	call _m3_fault
	.align 16
.L143:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%ecx,2)
	incl %ecx
.L141:
	cmpl %ebx,%ecx
	jle .L142
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TWord__Xor,.Lfe12-TWord__Xor
	.align 16
	.type	 TWord__Not,@function
TWord__Not:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	pushl %ebx
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	jmp .L146
	.align 16
.L147:
	movl 8(%ebp),%eax
	movw (%eax,%edx,2),%ax
	notw %ax
	xorl %ecx,%ecx
	movw %ax,%cx
	cmpl $65535,%ecx
	jbe .L148
	pushl $4273
	call _m3_fault
	.align 16
.L148:
	movl 12(%ebp),%eax
	movw %cx,(%eax,%edx,2)
	incl %edx
.L146:
	cmpl %ebx,%edx
	jle .L147
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 TWord__Not,.Lfe13-TWord__Not
	.align 16
	.type	 TWord__Shift,@function
TWord__Shift:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L151:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -4(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L152
	movl -4(%ebp),%eax
	testl %eax,%eax
	jge .L154
	negl %eax
.L154:
	cmpl %eax,MI_Target+96
	jg .L153
.L152:
	movl 16(%ebp),%edx
	movl MI_TInt+44,%eax
	movl %eax,(%edx)
	movl MI_TInt+48,%eax
	movl %eax,4(%edx)
	jmp .L186
	.align 16
.L153:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L155
	movl 8(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	jmp .L186
	.align 16
.L155:
	testl %eax,%eax
	jle .L157
	movl %eax,%ecx
	sarl $4,%ecx
	movl %ecx,-20(%ebp)
	movl %eax,%esi
	andl $15,%esi
	movl $16,%eax
	subl %esi,%eax
	movl %eax,-16(%ebp)
	movzbl MI_Target+52,%edi
	jmp .L158
	.align 16
.L159:
	movl %edi,%edx
	subl -20(%ebp),%edx
	xorl %ebx,%ebx
	movl %ebx,-28(%ebp)
	testl %edx,%edx
	jl .L160
	cmpl $3,%edx
	jbe .L161
	pushl $4609
	call _m3_fault
	.align 16
.L161:
	cmpl $31,%esi
	jbe .L162
	pushl $4609
	call _m3_fault
	.align 16
.L162:
	cmpl $31,%esi
	jg .L160
	movl 8(%ebp),%eax
	movl %esi,%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%ebx
	sall %cl,%ebx
.L160:
	decl %edx
	js .L165
	cmpl $3,%edx
	jbe .L166
	pushl $4625
	call _m3_fault
	.align 16
.L166:
	cmpl $31,-16(%ebp)
	jbe .L167
	pushl $4625
	call _m3_fault
	.align 16
.L167:
	cmpl $31,-16(%ebp)
	jg .L168
	movl 8(%ebp),%eax
	movl -16(%ebp),%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	shrl %cl,%eax
	movl %eax,-28(%ebp)
	jmp .L165
	.align 16
.L168:
	movl $0,-28(%ebp)
.L165:
	movl -28(%ebp),%eax
	orl %ebx,%eax
	movl %eax,%edx
	andl $65535,%edx
	cmpl $65535,%edx
	jbe .L170
	pushl $4641
	call _m3_fault
	.align 16
.L170:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%edi,2)
	decl %edi
.L158:
	testl %edi,%edi
	jge .L159
	jmp .L186
	.align 16
.L157:
	negl %eax
	movl %eax,%ecx
	sarl $4,%ecx
	movl %ecx,-20(%ebp)
	movl %eax,%esi
	andl $15,%esi
	movl $16,%eax
	subl %esi,%eax
	movl %eax,-16(%ebp)
	xorl %edi,%edi
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	movl %ecx,-24(%ebp)
	jmp .L172
	.align 16
.L173:
	movl -20(%ebp),%ecx
	leal (%ecx,%edi),%edx
	xorl %ebx,%ebx
	movl %ebx,-28(%ebp)
	xorl %eax,%eax
	movb MI_Target+52,%al
	cmpl %eax,%edx
	jg .L174
	cmpl $3,%edx
	jbe .L175
	pushl $4785
	call _m3_fault
	.align 16
.L175:
	cmpl $31,%esi
	jbe .L176
	pushl $4785
	call _m3_fault
	.align 16
.L176:
	cmpl $31,%esi
	jg .L174
	movl 8(%ebp),%eax
	movl %esi,%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%ebx
	shrl %cl,%ebx
.L174:
	incl %edx
	xorl %eax,%eax
	movb MI_Target+52,%al
	cmpl %eax,%edx
	jg .L179
	cmpl $3,%edx
	jbe .L180
	pushl $4801
	call _m3_fault
	.align 16
.L180:
	cmpl $31,-16(%ebp)
	jbe .L181
	pushl $4801
	call _m3_fault
	.align 16
.L181:
	cmpl $31,-16(%ebp)
	jg .L182
	movl 8(%ebp),%eax
	movl -16(%ebp),%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	sall %cl,%eax
	movl %eax,-28(%ebp)
	jmp .L179
	.align 16
.L182:
	movl $0,-28(%ebp)
.L179:
	movl -28(%ebp),%eax
	orl %ebx,%eax
	movl %eax,%edx
	andl $65535,%edx
	cmpl $65535,%edx
	jbe .L184
	pushl $4817
	call _m3_fault
	.align 16
.L184:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%edi,2)
	incl %edi
.L172:
	cmpl %edi,-24(%ebp)
	jge .L173
.L186:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 TWord__Shift,.Lfe14-TWord__Shift
	.align 16
	.type	 TWord__Rotate,@function
TWord__Rotate:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L188:
	movl $5,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	movb MI_Target+52,%al
	incl %eax
	movl %eax,-24(%ebp)
	leal -8(%ebp),%ebx
	pushl %ebx
	movl MI_Target+96,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	pushl %ebx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+96,%eax
	call *%eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+72,%eax
	call *%eax
	addl $28,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	jne .L189
	movl 8(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	jmp .L216
	.align 16
.L189:
	testl %eax,%eax
	jle .L191
	movl %eax,%ecx
	sarl $4,%ecx
	movl %ecx,-36(%ebp)
	andl $15,%eax
	movl %eax,-32(%ebp)
	movl $16,%eax
	subl -32(%ebp),%eax
	movl %eax,-28(%ebp)
	movl $0,-40(%ebp)
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	movl %ecx,-44(%ebp)
	jmp .L192
	.align 16
.L193:
	movl -40(%ebp),%edi
	subl -36(%ebp),%edi
	xorl %esi,%esi
	movl %esi,%ebx
	pushl %edi
	movl -24(%ebp),%ecx
	pushl %ecx
	call m3_mod
	movl %eax,%edx
	addl $8,%esp
	cmpl $3,%edx
	jbe .L194
	pushl $5217
	call _m3_fault
	.align 16
.L194:
	cmpl $31,-32(%ebp)
	jbe .L195
	pushl $5217
	call _m3_fault
	.align 16
.L195:
	cmpl $31,-32(%ebp)
	jg .L197
	movl 8(%ebp),%eax
	movl -32(%ebp),%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%esi
	sall %cl,%esi
.L197:
	leal -1(%edi),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call m3_mod
	movl %eax,%edx
	addl $8,%esp
	cmpl $3,%edx
	jbe .L198
	pushl $5233
	call _m3_fault
	.align 16
.L198:
	cmpl $31,-28(%ebp)
	jbe .L199
	pushl $5233
	call _m3_fault
	.align 16
.L199:
	cmpl $31,-28(%ebp)
	jg .L200
	movl 8(%ebp),%eax
	movl -28(%ebp),%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%ebx
	shrl %cl,%ebx
.L200:
	movl %esi,%eax
	orl %ebx,%eax
	andl $65535,%eax
	cmpl $65535,%eax
	jbe .L202
	pushl $5249
	call _m3_fault
	.align 16
.L202:
	movl -40(%ebp),%ecx
	movw %ax,-8(%ebp,%ecx,2)
	incl %ecx
	movl %ecx,-40(%ebp)
.L192:
	movl -44(%ebp),%ecx
	cmpl %ecx,-40(%ebp)
	jle .L193
	jmp .L217
	.align 16
.L191:
	negl %eax
	sarl $4,%eax
	movl %eax,-32(%ebp)
	movl %eax,-36(%ebp)
	movl $16,%eax
	subl -32(%ebp),%eax
	movl %eax,-28(%ebp)
	movl $0,-48(%ebp)
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	movl %ecx,-52(%ebp)
	jmp .L204
	.align 16
.L205:
	movl -48(%ebp),%edi
	addl -36(%ebp),%edi
	xorl %esi,%esi
	movl %esi,%ebx
	pushl %edi
	movl -24(%ebp),%ecx
	pushl %ecx
	call m3_mod
	movl %eax,%edx
	addl $8,%esp
	cmpl $3,%edx
	jbe .L206
	pushl $5409
	call _m3_fault
	.align 16
.L206:
	cmpl $31,-32(%ebp)
	jbe .L207
	pushl $5409
	call _m3_fault
	.align 16
.L207:
	cmpl $31,-32(%ebp)
	jg .L209
	movl 8(%ebp),%eax
	movl -32(%ebp),%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%esi
	shrl %cl,%esi
.L209:
	leal 1(%edi),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call m3_mod
	movl %eax,%edx
	addl $8,%esp
	cmpl $3,%edx
	jbe .L210
	pushl $5425
	call _m3_fault
	.align 16
.L210:
	cmpl $31,-28(%ebp)
	jbe .L211
	pushl $5425
	call _m3_fault
	.align 16
.L211:
	cmpl $31,-28(%ebp)
	jg .L212
	movl 8(%ebp),%eax
	movl -28(%ebp),%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%ebx
	sall %cl,%ebx
.L212:
	movl %esi,%eax
	orl %ebx,%eax
	andl $65535,%eax
	cmpl $65535,%eax
	jbe .L214
	pushl $5441
	call _m3_fault
	.align 16
.L214:
	movl -48(%ebp),%ecx
	movw %ax,-8(%ebp,%ecx,2)
	incl %ecx
	movl %ecx,-48(%ebp)
.L204:
	movl -52(%ebp),%ecx
	cmpl %ecx,-48(%ebp)
	jle .L205
.L217:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L216:
	movl -20(%ebp),%eax
	leal -64(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 TWord__Rotate,.Lfe15-TWord__Rotate
	.align 16
	.type	 TWord__Extract,@function
TWord__Extract:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L219:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%edi
	movl %edi,RTThread__handlerStack
	leal -16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L234
	leal -12(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L234
	movl -16(%ebp),%edx
	movl %edx,%eax
	addl -12(%ebp),%eax
	cmpl %eax,MI_Target+96
	jge .L222
.L234:
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L218
	.align 16
.L222:
	leal -8(%ebp),%ebx
	pushl %ebx
	movl %edx,%eax
	negl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	movl 20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call TWord__Shift
	movl -12(%ebp),%eax
	movl %eax,%ebx
	sarl $4,%ebx
	movl %eax,%edx
	andl $15,%edx
	movl %ebx,%esi
	addl $20,%esp
	cmpl $3,%ebx
	jbe .L224
	pushl $5761
	call _m3_fault
	.align 16
.L224:
	movl $16,%eax
	movl %eax,%ecx
	subl %edx,%ecx
	cmpl $31,%ecx
	jbe .L225
	pushl $5761
	call _m3_fault
	.align 16
.L225:
	cmpl $31,%ecx
	jg .L226
	movl 20(%ebp),%eax
	xorl %edx,%edx
	movw (%eax,%ebx,2),%dx
	movl $65535,%eax
	shrl %cl,%eax
	andl %eax,%edx
	jmp .L227
	.align 16
.L226:
	xorl %edx,%edx
.L227:
	cmpl $65535,%edx
	jbe .L228
	pushl $5761
	call _m3_fault
	.align 16
.L228:
	movl 20(%ebp),%eax
	movw %dx,(%eax,%esi,2)
	leal 1(%ebx),%edx
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	jmp .L229
	.align 16
.L230:
	testl %edx,%edx
	jge .L231
	pushl $5777
	call _m3_fault
	.align 16
.L231:
	movl 20(%ebp),%eax
	movw $0,(%eax,%edx,2)
	incl %edx
.L229:
	cmpl %ecx,%edx
	jle .L230
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L233:
.L218:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 TWord__Extract,.Lfe16-TWord__Extract
	.align 16
	.type	 TWord__Insert,@function
TWord__Insert:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L239
	leal -4(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L239
	movl -4(%ebp),%eax
	addl -8(%ebp),%eax
	cmpl %eax,MI_Target+96
	jl .L238
	leal -40(%ebp),%ebx
	pushl %ebx
	negl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	leal -32(%ebp),%edi
	pushl %edi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call TWord__Shift
	movl 24(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edi
	call TWord__Shift
	addl $32,%esp
	pushl %ebx
	movl -4(%ebp),%eax
	movl MI_Target+96,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	pushl %edi
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	call TWord__Shift
	pushl %ebx
	movl MI_Target+96,%eax
	movl -4(%ebp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	leal -24(%ebp),%esi
	pushl %esi
	pushl %ebx
	pushl %edi
	call TWord__Shift
	addl $40,%esp
	movl 24(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %eax
	call TWord__Or
	leal -16(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl 24(%ebp),%eax
	pushl %eax
	call TWord__Shift
	movl 24(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	pushl %ebx
	movl -8(%ebp),%eax
	movl MI_Target+96,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $32,%esp
	pushl %edi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call TWord__Shift
	pushl %ebx
	movl MI_Target+96,%eax
	movl -8(%ebp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	pushl %edi
	call TWord__Shift
	addl $32,%esp
	movl 24(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %eax
	call TWord__Or
	movl $1,%eax
	jmp .L239
	.align 16
.L238:
	xorl %eax,%eax
.L239:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 TWord__Insert,.Lfe17-TWord__Insert
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TWord
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe18:
	.size	 _m3_fault,.Lfe18-_m3_fault
.globl MM_TWord
.data
	.align 4
	.type	 MM_TWord,@object
	.size	 MM_TWord,552
MM_TWord:
	.long MM_TWord+412
	.zero	16
	.long MM_TWord+204
	.zero	20
	.long TWord__New
	.long TWord__Add
	.long TWord__Subtract
	.long TWord__Multiply
	.long TWord__Div
	.long TWord__Mod
	.long TWord__DivMod
	.long TWord__LT
	.long TWord__LE
	.long TWord__And
	.long TWord__Or
	.long TWord__Xor
	.long TWord__Not
	.long TWord__Shift
	.long TWord__Rotate
	.long TWord__Extract
	.long TWord__Insert
	.ascii	"Insert"
	.zero	1
	.ascii	"Extract"
	.zero	1
	.ascii	"Rotate"
	.zero	1
	.ascii	"Shift"
	.zero	1
	.ascii	"Not"
	.zero	1
	.ascii	"Xor"
	.zero	1
	.ascii	"Or"
	.zero	1
	.ascii	"And"
	.zero	1
	.ascii	"LE"
	.zero	1
	.ascii	"LT"
	.zero	1
	.ascii	"DivMod"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Div"
	.zero	1
	.ascii	"Multiply"
	.zero	1
	.ascii	"Subtract"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"New"
	.zero	3
	.long TWord__Insert
	.long MM_TWord+112
	.long MI_TWord+108
	.long TWord__Extract
	.long MM_TWord+119
	.long MI_TWord+104
	.long TWord__Rotate
	.long MM_TWord+127
	.long MI_TWord+100
	.long TWord__Shift
	.long MM_TWord+134
	.long MI_TWord+96
	.long TWord__Not
	.long MM_TWord+140
	.long MI_TWord+92
	.long TWord__Xor
	.long MM_TWord+144
	.long MI_TWord+88
	.long TWord__Or
	.long MM_TWord+148
	.long MI_TWord+84
	.long TWord__And
	.long MM_TWord+151
	.long MI_TWord+80
	.long TWord__LE
	.long MM_TWord+155
	.long MI_TWord+76
	.long TWord__LT
	.long MM_TWord+158
	.long MI_TWord+72
	.long TWord__DivMod
	.long MM_TWord+161
	.long MI_TWord+68
	.long TWord__Mod
	.long MM_TWord+168
	.long MI_TWord+64
	.long TWord__Div
	.long MM_TWord+172
	.long MI_TWord+60
	.long TWord__Multiply
	.long MM_TWord+176
	.long MI_TWord+56
	.long TWord__Subtract
	.long MM_TWord+185
	.long MI_TWord+52
	.long TWord__Add
	.long MM_TWord+194
	.long MI_TWord+48
	.long TWord__New
	.long MM_TWord+198
	.long MI_TWord+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/TWord.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
