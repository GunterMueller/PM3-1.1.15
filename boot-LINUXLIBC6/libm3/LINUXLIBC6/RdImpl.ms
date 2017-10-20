	.file	"RdImpl.mc"
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
	.type	 M_RdImpl_LINE_56.0,@function
M_RdImpl_LINE_56.0:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -36(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_RdClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M_RdImpl_LINE_56.0,.Lfe1-M_RdImpl_LINE_56.0
	.align 16
	.type	 Rd__GetSubLine,@function
Rd__GetSubLine:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-36(%ebp)
	movl $0,-40(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RdClass+148,%eax
	call *%eax
	movl $M_RdImpl_LINE_56.0,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L2:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
.L3:
	movl 12(%ebp),%eax
	movl -40(%ebp),%edi
	cmpl %edi,4(%eax)
	jne .L4
	movl -40(%ebp),%ebx
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	jmp .L47
	.align 16
.L4:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L6
	pushl $452
	call _m3_fault
	.align 16
.L6:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ecx),%eax
	cmpl %eax,16(%edx,%ecx)
	jne .L7
	cmpb $0,20(%edx,%ecx)
	je .L9
	call RdImpl__Error
.L9:
	movl 8(%ebp),%ebx
	movl MM_RdImpl+204,%esi
	movl (%ebx),%edx
	movl 36(%esi),%eax
	movl (%eax,%edx),%ecx
	testl %ebx,%ebx
	jne .L10
	pushl $484
	call _m3_fault
	.align 16
.L10:
	pushl $0
	movl 24(%esi),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%ecx
	addl $12,%esp
	cmpl $2,%eax
	jne .L7
	movl -40(%ebp),%ebx
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	jmp .L47
	.align 16
.L7:
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L13
	pushl $548
	call _m3_fault
	.align 16
.L13:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%edx
	movl 12(%ebp),%eax
	movl 16(%edx,%ebx),%esi
	movl 4(%eax),%eax
	addl %esi,%eax
	movl 12(%edx,%ebx),%ecx
	subl -40(%ebp),%eax
	cmpl %ecx,%eax
	jle .L16
	movl %ecx,%eax
.L16:
	movl 8(%edx,%ebx),%ecx
	subl %ecx,%eax
	movl 4(%edx,%ebx),%edx
	addl %edx,%eax
	movl %eax,-44(%ebp)
	movl %esi,%eax
	subl %ecx,%eax
	addl %edx,%eax
	movl %eax,-60(%ebp)
	jmp .L20
	.align 16
.L21:
	incl -60(%ebp)
.L20:
	movl -44(%ebp),%edi
	cmpl %edi,-60(%ebp)
	je .L26
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L23
	pushl $596
	call _m3_fault
	.align 16
.L23:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	testl %eax,%eax
	jne .L24
	pushl $596
	call _m3_fault
	.align 16
.L24:
	movl %eax,%ecx
	movl -60(%ebp),%edi
	cmpl %edi,4(%ecx)
	ja .L25
	pushl $594
	call _m3_fault
	.align 16
.L25:
	movl (%ecx),%eax
	movl -60(%ebp),%edi
	cmpb $10,(%edi,%eax)
	jne .L21
.L26:
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L29
	pushl $628
	call _m3_fault
	.align 16
.L29:
	movl MM_RdImpl+204,%edi
	movl %edi,-48(%ebp)
	movl 24(%edi),%eax
	movl -60(%ebp),%ebx
	movl 8(%eax,%esi),%edx
	movl 16(%eax,%esi),%edi
	subl %edx,%edi
	movl %edi,%edx
	addl 4(%eax,%esi),%edx
	subl %edx,%ebx
	jns .L30
	pushl $673
	call _m3_fault
	.align 16
.L30:
	movl %ebx,-20(%ebp)
	movl -40(%ebp),%edi
	addl %ebx,%edi
	movl %edi,-52(%ebp)
	movl 12(%ebp),%ecx
	movl %edi,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L31
	pushl $673
	call _m3_fault
	.align 16
.L31:
	movl -40(%ebp),%edi
	addl (%ecx),%edi
	movl %edi,-56(%ebp)
	movl %edi,-24(%ebp)
	movl -48(%ebp),%edi
	movl 24(%edi),%eax
	movl (%eax,%esi),%eax
	testl %eax,%eax
	jne .L33
	pushl $676
	call _m3_fault
	.align 16
.L33:
	movl %eax,%ecx
	testl %edx,%edx
	jge .L34
	pushl $673
	call _m3_fault
	.align 16
.L34:
	movl %ebx,-28(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L36
	pushl $673
	call _m3_fault
	.align 16
.L36:
	movl (%ecx),%eax
	addl %edx,%eax
	movl %eax,-32(%ebp)
	pushl %ebx
	pushl %eax
	movl -56(%ebp),%edi
	pushl %edi
	call memmove
	addl $12,%esp
	cmpl $0,-52(%ebp)
	jge .L38
	pushl $689
	call _m3_fault
	.align 16
.L38:
	movl -52(%ebp),%edi
	movl %edi,-40(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L39
	pushl $708
	call _m3_fault
	.align 16
.L39:
	movl MM_RdImpl+204,%eax
	movl %edx,%ecx
	addl 24(%eax),%ecx
	movl 16(%ecx),%eax
	addl %ebx,%eax
	jns .L40
	pushl $705
	call _m3_fault
	.align 16
.L40:
	movl %eax,16(%ecx)
	movl -44(%ebp),%edi
	cmpl %edi,-60(%ebp)
	je .L3
	movl 12(%ebp),%eax
	movl -40(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L42
	pushl $770
	call _m3_fault
	.align 16
.L42:
	movl (%eax),%eax
	movl -40(%ebp),%edi
	movb $10,(%edi,%eax)
	incl %edi
	movl %edi,-40(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L43
	pushl $804
	call _m3_fault
	.align 16
.L43:
	movl MM_RdImpl+204,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	movl %ebp,%ecx
	incl 16(%eax)
	movl -40(%ebp),%ebx
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L47:
	call M_RdImpl_LINE_56.0
	movl %ebx,%eax
.L45:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Rd__GetSubLine,.Lfe2-Rd__GetSubLine
	.align 16
	.type	 M_RdImpl_LINE_85.1,@function
M_RdImpl_LINE_85.1:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -28(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_RdClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M_RdImpl_LINE_85.1,.Lfe3-M_RdImpl_LINE_85.1
	.align 16
	.type	 Rd__GetText,@function
Rd__GetText:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-28(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RdClass+148,%eax
	call *%eax
	movl $M_RdImpl_LINE_85.1,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L49:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L50
	pushl $1060
	call _m3_fault
	.align 16
.L50:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%edx)
	je .L51
	call RdImpl__Error
.L51:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L53
	pushl $1092
	call _m3_fault
	.align 16
.L53:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%edx
	movl 8(%edx,%ecx),%edi
	movl %edi,-36(%ebp)
	movl 16(%edx,%ecx),%ebx
	cmpl %ebx,%edi
	jg .L54
	movl 12(%edx,%ecx),%eax
	subl %ebx,%eax
	cmpl %eax,12(%ebp)
	jg .L54
	movl (%edx,%ecx),%esi
	testl %esi,%esi
	jne .L58
	pushl $1124
	call _m3_fault
	.align 16
.L58:
	movl %esi,-32(%ebp)
	movl %ebx,%eax
	subl -36(%ebp),%eax
	addl 4(%edx,%ecx),%eax
	jns .L62
	pushl $1121
	call _m3_fault
	.align 16
.L62:
	movl %eax,%edx
	movl 12(%ebp),%edi
	movl %edi,-20(%ebp)
	leal (%edi,%edx),%eax
	movl -32(%ebp),%edi
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L63
	pushl $1121
	call _m3_fault
	.align 16
.L63:
	addl (%esi),%edx
	movl %edx,-24(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%esi
	movl 8(%ebp),%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L64
	pushl $1156
	call _m3_fault
	.align 16
.L64:
	movl MM_RdImpl+204,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	movl 12(%ebp),%edi
	addl %edi,16(%eax)
	jmp .L65
	.align 16
.L54:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L66
	pushl $1188
	call _m3_fault
	.align 16
.L66:
	movl MM_RdImpl+204,%ebx
	movl 24(%ebx),%eax
	cmpb $0,22(%eax,%ecx)
	jne .L67
	movl (%ecx),%edx
	movl 36(%ebx),%eax
	movl 8(%eax,%edx),%eax
	pushl %ecx
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%ecx
	addl $4,%esp
	testl %ecx,%ecx
	jne .L68
	pushl $1220
	call _m3_fault
	.align 16
.L68:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	movl 12(%ebp),%ebx
	subl 16(%eax,%ecx),%edx
	movl %edx,%eax
	cmpl %eax,%ebx
	jle .L69
	movl %eax,%ebx
.L69:
	testl %ebx,%ebx
	jge .L70
	pushl $1233
	call _m3_fault
	.align 16
.L70:
	pushl %ebx
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L71
	pushl $1252
	call _m3_fault
	.align 16
.L71:
	movl %ebx,-20(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L73
	pushl $1249
	call _m3_fault
	.align 16
.L73:
	movl (%esi),%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_UnsafeRd+48,%eax
	call *%eax
	jmp .L76
	.align 16
.L67:
	movl 12(%ebp),%edi
	pushl %edi
	pushl %ecx
	call RdImpl__SlowGetText
	movl %eax,%esi
.L76:
	addl $8,%esp
.L65:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_RdImpl_LINE_85.1
.L74:
	leal -48(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Rd__GetText,.Lfe4-Rd__GetText
	.align 16
	.type	 RdImpl__SlowGetText,@function
RdImpl__SlowGetText:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	movl %esi,%edi
	pushl %ebx
	movl %esi,-20(%ebp)
.L78:
	movl 12(%ebp),%ecx
	cmpl %ecx,-20(%ebp)
	je .L80
	movl MM_RdImpl+212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl $0,(%eax)
	addl $4,%esp
	testl %esi,%esi
	jne .L81
	movl %eax,%esi
	jmp .L82
	.align 16
.L81:
	testl %edi,%edi
	jne .L83
	pushl $1700
	call _m3_fault
	.align 16
.L83:
	movl %eax,(%edi)
.L82:
	movl %eax,%edi
	movl 12(%ebp),%eax
	subl -20(%ebp),%eax
	movl $2040,%ebx
	cmpl %eax,%ebx
	jle .L84
	movl %eax,%ebx
.L84:
	testl %ebx,%ebx
	jge .L85
	pushl $1793
	call _m3_fault
	.align 16
.L85:
	cmpl $2040,%ebx
	jle .L86
	pushl $1793
	call _m3_fault
	.align 16
.L86:
	movl %ebx,-4(%ebp)
	testl %edi,%edi
	jne .L87
	pushl $1796
	call _m3_fault
	.align 16
.L87:
	leal 4(%edi),%ecx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_UnsafeRd+48,%eax
	call *%eax
	addl %eax,-20(%ebp)
	addl $8,%esp
	cmpl %ebx,%eax
	jge .L78
.L80:
	movl -20(%ebp),%ecx
	pushl %ecx
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%edi
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L89
	.align 16
.L90:
	movl $2040,%eax
	movl -20(%ebp),%ecx
	subl %ebx,%ecx
	movl %ecx,-28(%ebp)
	movl %eax,%edx
	cmpl %ecx,%edx
	jle .L91
	movl -28(%ebp),%edx
.L91:
	testl %edi,%edi
	jne .L92
	pushl $2036
	call _m3_fault
	.align 16
.L92:
	testl %ebx,%ebx
	jge .L93
	pushl $2033
	call _m3_fault
	.align 16
.L93:
	testl %edx,%edx
	jge .L94
	pushl $2033
	call _m3_fault
	.align 16
.L94:
	movl %edx,-4(%ebp)
	leal (%edx,%ebx),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L95
	pushl $2033
	call _m3_fault
	.align 16
.L95:
	addl (%edi),%ebx
	movl %ebx,-8(%ebp)
	cmpl $2040,%edx
	jle .L97
	pushl $2033
	call _m3_fault
	.align 16
.L97:
	movl %edx,-12(%ebp)
	leal 4(%esi),%eax
	movl %eax,-16(%ebp)
	pushl %edx
	pushl %eax
	pushl %ebx
	call memmove
	addl $12,%esp
	movl (%esi),%esi
	movl -24(%ebp),%ebx
.L89:
	testl %esi,%esi
	jne .L90
	leal -40(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RdImpl__SlowGetText,.Lfe5-RdImpl__SlowGetText
	.align 16
	.type	 M_RdImpl_LINE_177.2,@function
M_RdImpl_LINE_177.2:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -28(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_RdClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 M_RdImpl_LINE_177.2,.Lfe6-M_RdImpl_LINE_177.2
	.align 16
	.type	 Rd__GetLine,@function
Rd__GetLine:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-28(%ebp)
	movl $MM_RdImpl+224,-32(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RdClass+148,%eax
	call *%eax
	movl $M_RdImpl_LINE_177.2,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L103:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
.L104:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L106
	pushl $2260
	call _m3_fault
	.align 16
.L106:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ecx),%eax
	cmpl %eax,16(%edx,%ecx)
	jne .L107
	cmpb $0,20(%edx,%ecx)
	je .L109
	call RdImpl__Error
.L109:
	movl 8(%ebp),%ebx
	movl MM_RdImpl+204,%esi
	movl (%ebx),%edx
	movl 36(%esi),%eax
	movl (%eax,%edx),%ecx
	testl %ebx,%ebx
	jne .L110
	pushl $2292
	call _m3_fault
	.align 16
.L110:
	pushl $0
	movl 24(%esi),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%ecx
	movl %eax,%ebx
	addl $12,%esp
	cmpl $2,%ebx
	jne .L107
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jg .L148
	pushl $0
	pushl $MI_Rd+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L107:
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L115
	pushl $2388
	call _m3_fault
	.align 16
.L115:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	movl 8(%eax,%esi),%ebx
	movl 12(%eax,%esi),%edx
	subl %ebx,%edx
	movl 4(%eax,%esi),%ecx
	addl %ecx,%edx
	movl 16(%eax,%esi),%eax
	subl %ebx,%eax
	leal (%ecx,%eax),%esi
	jmp .L119
	.align 16
.L120:
	incl %esi
.L119:
	cmpl %edx,%esi
	je .L125
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L122
	pushl $2420
	call _m3_fault
	.align 16
.L122:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	movl (%eax,%ecx),%eax
	testl %eax,%eax
	jne .L123
	pushl $2420
	call _m3_fault
	.align 16
.L123:
	movl %eax,%ecx
	cmpl %esi,4(%ecx)
	ja .L124
	pushl $2418
	call _m3_fault
	.align 16
.L124:
	movl (%ecx),%eax
	cmpb $10,(%esi,%eax)
	jne .L120
.L125:
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L128
	pushl $2436
	call _m3_fault
	.align 16
.L128:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%ecx
	movl 8(%ecx,%ebx),%eax
	movl 16(%ecx,%ebx),%edi
	subl %eax,%edi
	movl %edi,%eax
	addl 4(%ecx,%ebx),%eax
	movl %eax,-40(%ebp)
	movl %esi,%edi
	subl %eax,%edi
	movl %edi,-36(%ebp)
	testl %edi,%edi
	jle .L129
	cmpl %edx,%esi
	je .L140
	movl (%ecx,%ebx),%eax
	testl %eax,%eax
	jne .L131
	pushl $2484
	call _m3_fault
	.align 16
.L131:
	movl %eax,%ecx
	leal -1(%esi),%eax
	cmpl %eax,4(%ecx)
	ja .L132
	pushl $2482
	call _m3_fault
	.align 16
.L132:
	movl (%ecx),%eax
	cmpb $13,-1(%esi,%eax)
	jne .L129
	cmpl $0,-40(%ebp)
	jge .L135
	pushl $2513
	call _m3_fault
	.align 16
.L135:
	movl -40(%ebp),%ebx
	movl -36(%ebp),%eax
	decl %eax
	jns .L136
	pushl $2513
	call _m3_fault
	.align 16
.L136:
	movl %eax,-20(%ebp)
	addl %ebx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L137
	pushl $2513
	call _m3_fault
	.align 16
.L137:
	addl (%ecx),%ebx
	movl %ebx,-24(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-32(%ebp)
	movl 8(%ebp),%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L138
	pushl $2532
	call _m3_fault
	.align 16
.L138:
	movl MM_RdImpl+204,%eax
	addl 24(%eax),%edx
	movl 16(%edx),%eax
	incl %eax
	addl -36(%ebp),%eax
	jns .L139
	pushl $2529
	call _m3_fault
	.align 16
.L139:
	movl %eax,16(%edx)
	jmp .L148
	.align 16
.L129:
	cmpl %edx,%esi
	je .L140
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L141
	pushl $2596
	call _m3_fault
	.align 16
.L141:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	testl %eax,%eax
	jne .L142
	pushl $2596
	call _m3_fault
	.align 16
.L142:
	movl %eax,%edx
	cmpl $0,-40(%ebp)
	jge .L143
	pushl $2593
	call _m3_fault
	.align 16
.L143:
	movl -40(%ebp),%ebx
	cmpl $0,-36(%ebp)
	jge .L144
	pushl $2593
	call _m3_fault
	.align 16
.L144:
	movl -36(%ebp),%edi
	movl %edi,-20(%ebp)
	leal (%edi,%ebx),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L145
	pushl $2593
	call _m3_fault
	.align 16
.L145:
	addl (%edx),%ebx
	movl %ebx,-24(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,-32(%ebp)
	movl 8(%ebp),%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L146
	pushl $2612
	call _m3_fault
	.align 16
.L146:
	movl MM_RdImpl+204,%eax
	movl %edx,%ecx
	addl 24(%eax),%ecx
	movl 16(%ecx),%eax
	incl %eax
	addl -36(%ebp),%eax
	jns .L147
	pushl $2609
	call _m3_fault
	.align 16
.L147:
	movl %eax,16(%ecx)
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_Text+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L148
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	decl %eax
	addl $4,%esp
	testl %eax,%eax
	jge .L149
	pushl $2625
	call _m3_fault
	.align 16
.L149:
	pushl %eax
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	addl $8,%esp
	cmpl $13,%eax
	jne .L148
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	decl %eax
	addl $4,%esp
	testl %eax,%eax
	jge .L150
	pushl $2657
	call _m3_fault
	.align 16
.L150:
	pushl %eax
	pushl %ebx
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,-32(%ebp)
	addl $12,%esp
.L148:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_RdImpl_LINE_177.2
	movl -32(%ebp),%eax
	jmp .L102
	.align 16
.L140:
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L151
	pushl $2740
	call _m3_fault
	.align 16
.L151:
	movl MM_RdImpl+204,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	testl %eax,%eax
	jne .L152
	pushl $2740
	call _m3_fault
	.align 16
.L152:
	movl %eax,%ecx
	cmpl $0,-40(%ebp)
	jge .L153
	pushl $2737
	call _m3_fault
	.align 16
.L153:
	movl -40(%ebp),%ebx
	cmpl $0,-36(%ebp)
	jge .L154
	pushl $2737
	call _m3_fault
	.align 16
.L154:
	movl -36(%ebp),%edi
	movl %edi,-20(%ebp)
	leal (%edi,%ebx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L155
	pushl $2737
	call _m3_fault
	.align 16
.L155:
	addl (%ecx),%ebx
	movl %ebx,-24(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	movl -32(%ebp),%edi
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-32(%ebp)
	movl 8(%ebp),%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L156
	pushl $2756
	call _m3_fault
	.align 16
.L156:
	movl MM_RdImpl+204,%eax
	addl 24(%eax),%edx
	movl -36(%ebp),%eax
	addl 16(%edx),%eax
	jns .L157
	pushl $2753
	call _m3_fault
	.align 16
.L157:
	movl %eax,16(%edx)
	jmp .L104
	.align 16
.L159:
.L102:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Rd__GetLine,.Lfe7-Rd__GetLine
	.align 16
	.type	 Rd__Intermittent,@function
Rd__Intermittent:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L162
	pushl $2932
	call _m3_fault
	.align 16
.L162:
	movl MM_RdImpl+204,%eax
	movl %ebp,%esp
	movl 24(%eax),%eax
	popl %ebp
	movb 22(%eax,%edx),%al
	andl $255,%eax
	ret
.Lfe8:
	.size	 Rd__Intermittent,.Lfe8-Rd__Intermittent
	.align 16
	.type	 Rd__Seekable,@function
Rd__Seekable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L164
	pushl $3012
	call _m3_fault
	.align 16
.L164:
	movl MM_RdImpl+204,%eax
	movl %ebp,%esp
	movl 24(%eax),%eax
	popl %ebp
	movb 21(%eax,%edx),%al
	andl $255,%eax
	ret
.Lfe9:
	.size	 Rd__Seekable,.Lfe9-Rd__Seekable
	.align 16
	.type	 Rd__Closed,@function
Rd__Closed:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L166
	pushl $3092
	call _m3_fault
	.align 16
.L166:
	movl MM_RdImpl+204,%eax
	movl %ebp,%esp
	movl 24(%eax),%eax
	popl %ebp
	movb 20(%eax,%edx),%al
	andl $255,%eax
	ret
.Lfe10:
	.size	 Rd__Closed,.Lfe10-Rd__Closed
	.align 16
	.type	 RdImpl__Error,@function
RdImpl__Error:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L168:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_RdImpl+152
	movl MI_RTHooks+52,%eax
	call *%eax
.L169:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RdImpl__Error,.Lfe11-RdImpl__Error
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RdImpl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_RdImpl
.data
	.align 4
	.type	 MM_RdImpl,@object
	.size	 MM_RdImpl,684
MM_RdImpl:
	.long MM_RdImpl+500
	.long MM_RdImpl+44
	.long MM_RdImpl+204
	.zero	8
	.long MM_RdImpl+364
	.zero	28
	.long -864286818
.byte 55
.byte 68
.byte 93
.byte 198
.byte 169
.byte 67
.byte 33
.byte 10
	.long 1
	.zero	4
	.long 2044
	.long 4
	.zero	20
	.long MM_RdImpl+645
	.long MM_RdImpl+652
	.long MM_RdImpl+654
	.zero	28
	.long MM_RdImpl+667
	.zero	4
	.long RdImpl__SlowGetText
	.long MM_RdImpl+156
	.ascii	"RdImpl.FatalError"
	.zero	3
	.long RdImpl__Error
	.long Rd__GetSubLine
	.long Rd__GetText
	.long Rd__GetLine
	.long Rd__Intermittent
	.long Rd__Seekable
	.long Rd__Closed
	.long MM_RdImpl+212
	.long -1638177541
	.zero	4
	.long -864286818
	.long 2
	.long MM_RdImpl+232
	.long 1
	.zero	4
	.ascii	"Error"
	.zero	1
	.ascii	"Closed"
	.zero	1
	.ascii	"Seekable"
	.zero	1
	.ascii	"Intermittent"
	.zero	1
	.ascii	"GetLine"
	.zero	1
	.ascii	"M_RdImpl_LINE_177"
	.zero	1
	.ascii	"SlowGetText"
	.zero	1
	.ascii	"GetText"
	.zero	1
	.ascii	"M_RdImpl_LINE_85"
	.zero	1
	.ascii	"GetSubLine"
	.zero	1
	.ascii	"M_RdImpl_LINE_56"
	.zero	3
	.long RdImpl__Error
	.long MM_RdImpl+236
	.zero	4
	.long Rd__Closed
	.long MM_RdImpl+242
	.long MI_Rd+136
	.long Rd__Seekable
	.long MM_RdImpl+249
	.long MI_Rd+132
	.long Rd__Intermittent
	.long MM_RdImpl+258
	.long MI_Rd+128
	.long Rd__GetLine
	.long MM_RdImpl+271
	.long MI_Rd+108
	.long M_RdImpl_LINE_177.2
	.long MM_RdImpl+279
	.zero	4
	.long RdImpl__SlowGetText
	.long MM_RdImpl+297
	.zero	4
	.long Rd__GetText
	.long MM_RdImpl+309
	.long MI_Rd+104
	.long M_RdImpl_LINE_85.1
	.long MM_RdImpl+317
	.zero	4
	.long Rd__GetSubLine
	.long MM_RdImpl+334
	.long MI_Rd+100
	.long M_RdImpl_LINE_56.0
	.long MM_RdImpl+345
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/RdImpl.m3"
	.zero	1
.byte 4
.byte 1
.byte 16
.byte 27
.byte 248
.byte 7
.byte 0
.byte 4
.byte 0
.byte 4
.byte 15
.byte 2
.byte 16
.byte 158
.byte 7
.byte 124
.byte 204
.byte 1
.byte 66
.byte 248
.byte 7
.byte 4
	.ascii	"RdImpl.Buffer"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
