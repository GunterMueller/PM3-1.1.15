	.file	"RegEx.mc"
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
	.type	 RegEx__Compile__NextChar.0,@function
RegEx__Compile__NextChar.0:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movb -37(%ebx),%dl
	movb %dl,-8(%ebp)
	movl -44(%ebx),%eax
	decl %eax
	movl -48(%ebx),%ecx
	cmpl %ecx,%eax
	jle .L3
	leal 1(%ecx),%eax
	movl %eax,-48(%ebx)
	testl %eax,%eax
	jge .L4
	pushl $1457
	call _m3_fault
	.align 16
.L4:
	pushl %eax
	movl -52(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Text+52,%eax
	call *%eax
	movb %al,-37(%ebx)
	jmp .L5
	.align 16
.L3:
	movb $0,-37(%ebx)
.L5:
	xorl %eax,%eax
	movb -8(%ebp),%al
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RegEx__Compile__NextChar.0,.Lfe1-RegEx__Compile__NextChar.0
	.align 16
	.type	 RegEx__Compile__Put.1,@function
RegEx__Compile__Put.1:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl -56(%ebx),%edx
	leal -1(%edx),%eax
	cmpl %eax,-60(%ebx)
	jne .L7
	addl %edx,%edx
	movl %edx,-56(%ebx)
	leal -16(%ebp),%edx
	leal -8(%ebp),%ebx
	movl %ebx,-16(%ebp)
	movl -20(%ebp),%ebx
	movl $1,-12(%ebp)
	movl -56(%ebx),%eax
	movl %eax,-8(%ebp)
	pushl %edx
	movl MM_RegEx+320,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	xorl %ecx,%ecx
	movl -60(%ebx),%edi
	addl $8,%esp
	jmp .L8
	.align 16
.L9:
	testl %esi,%esi
	jne .L10
	pushl $1684
	call _m3_fault
	.align 16
.L10:
	cmpl %ecx,4(%esi)
	ja .L11
	pushl $1682
	call _m3_fault
	.align 16
.L11:
	movl -20(%ebp),%ebx
	movl -64(%ebx),%edx
	testl %edx,%edx
	jne .L12
	pushl $1684
	call _m3_fault
	.align 16
.L12:
	cmpl %ecx,4(%edx)
	ja .L13
	pushl $1682
	call _m3_fault
	.align 16
.L13:
	movl (%edx),%edx
	movl (%esi),%eax
	movb (%ecx,%edx),%dl
	movb %dl,(%ecx,%eax)
	incl %ecx
.L8:
	cmpl %edi,%ecx
	jle .L9
	movl -20(%ebp),%ebx
	movl %esi,-64(%ebx)
.L7:
	movl -20(%ebp),%ebx
	movl -64(%ebx),%eax
	testl %eax,%eax
	jne .L15
	pushl $1748
	call _m3_fault
	.align 16
.L15:
	movl -20(%ebp),%ebx
	movl -60(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L16
	pushl $1746
	call _m3_fault
	.align 16
.L16:
	movl (%eax),%eax
	movb 8(%ebp),%bl
	movb %bl,(%edx,%eax)
	movl -20(%ebp),%ebx
	leal -32(%ebp),%esp
	incl -60(%ebx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RegEx__Compile__Put.1,.Lfe2-RegEx__Compile__Put.1
	.align 16
	.type	 RegEx__Compile__PutChar.2,@function
RegEx__Compile__PutChar.2:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	pushl $MM_RegEx+256
	xorl %eax,%eax
	movb -37(%ebx),%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L18
	movl -68(%ebx),%ecx
	cmpl $-1,%ecx
	je .L18
	movl -64(%ebx),%eax
	testl %eax,%eax
	jne .L19
	pushl $1876
	call _m3_fault
	.align 16
.L19:
	movl %eax,%esi
	cmpl %ecx,4(%esi)
	ja .L20
	pushl $1874
	call _m3_fault
	.align 16
.L20:
	movl (%esi),%esi
	movzbl (%ecx,%esi),%edi
	leal 1(%edi,%ecx),%eax
	cmpl %eax,-60(%ebx)
	jne .L18
	cmpl $255,%edi
	jne .L27
.L18:
	pushl $1
	movl %ebx,%ecx
	call RegEx__Compile__Put.1
	pushl $MM_RegEx+256
	xorl %eax,%eax
	movb -37(%ebx),%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	jne .L24
	movl -60(%ebx),%eax
	movl %eax,-68(%ebx)
.L24:
	pushl $1
	movl %ebx,%ecx
	call RegEx__Compile__Put.1
	jmp .L29
	.align 16
.L27:
	addl %ecx,%esi
	xorl %eax,%eax
	movb (%esi),%al
	incl %eax
	cmpl $255,%eax
	jle .L28
	pushl $2081
	call _m3_fault
	.align 16
.L28:
	movb %al,(%esi)
.L29:
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	movl %ebx,%ecx
	call RegEx__Compile__Put.1
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RegEx__Compile__PutChar.2,.Lfe3-RegEx__Compile__PutChar.2
	.align 16
	.type	 RegEx__Compile__PutCharSet.3,@function
RegEx__Compile__PutCharSet.3:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	xorl %ecx,%ecx
	movb 8(%ebp),%cl
	movl %ecx,%edi
	shrl $3,%edi
	movl %edi,-8(%ebp)
	movl -64(%esi),%edx
	testl %edx,%edx
	jne .L31
	pushl $2260
	call _m3_fault
	.align 16
.L31:
	movl -72(%esi),%eax
	movl -8(%ebp),%edi
	leal 2(%eax,%edi),%eax
	cmpl %eax,4(%edx)
	ja .L32
	pushl $2258
	call _m3_fault
	.align 16
.L32:
	movl (%edx),%ebx
	addl %eax,%ebx
	movl %ebx,-12(%ebp)
	andl $7,%ecx
	cmpl $31,%ecx
	jbe .L33
	pushl $2273
	call _m3_fault
	.align 16
.L33:
	xorl %edx,%edx
	movb (%ebx),%dl
	cmpl $31,%ecx
	jg .L34
	movl $1,%eax
	sall %cl,%eax
	orl %edx,%eax
	jmp .L35
	.align 16
.L34:
	movl %edx,%eax
.L35:
	cmpl $255,%eax
	jbe .L36
	pushl $2273
	call _m3_fault
	.align 16
.L36:
	movl -12(%ebp),%edi
	movb %al,(%edi)
	movl -64(%esi),%eax
	testl %eax,%eax
	jne .L37
	pushl $2340
	call _m3_fault
	.align 16
.L37:
	movl %eax,%ebx
	movl -72(%esi),%ecx
	leal 1(%ecx),%eax
	cmpl %eax,4(%ebx)
	ja .L38
	pushl $2338
	call _m3_fault
	.align 16
.L38:
	movl -8(%ebp),%edx
	movl (%ebx),%ebx
	incl %edx
	xorl %eax,%eax
	movb 1(%ecx,%ebx),%al
	cmpl %eax,%edx
	jle .L30
	cmpl $255,%edx
	jbe .L42
	pushl $2353
	call _m3_fault
	.align 16
.L42:
	movb %dl,1(%ecx,%ebx)
.L30:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RegEx__Compile__PutCharSet.3,.Lfe4-RegEx__Compile__PutCharSet.3
.section	.rodata
	.align 4
	.type	 L_2.6,@object
	.size	 L_2.6,380
L_2.6:
	.long .L47
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L48
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L49
	.long .L49
	.long .L46
	.long .L46
	.long .L50
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L49
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L51
	.long .L52
	.long .L46
	.long .L53
.text
	.align 16
	.type	 RegEx__Compile,@function
RegEx__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $108,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edx
	pushl %ebx
	movl %edx,-52(%ebp)
	xorl %ebx,%ebx
	movl %ebx,-64(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-44(%ebp)
	movl %ebx,-48(%ebp)
	movl $10,-56(%ebp)
	leal -84(%ebp),%eax
	leal -76(%ebp),%edx
	movl %edx,-84(%ebp)
	movl $1,-80(%ebp)
	movl $10,-76(%ebp)
	pushl %eax
	movl MM_RegEx+320,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-64(%ebp)
	movl %ebx,-60(%ebp)
	movl $-1,-72(%ebp)
	movl $-1,-68(%ebp)
	movl %ebx,-96(%ebp)
	movl %ebx,-92(%ebp)
	movl $1,-88(%ebp)
	addl $12,%esp
	cmpl $0,-44(%ebp)
	je .L44
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Text+52,%eax
	call *%eax
	movb %al,-37(%ebp)
	addl $8,%esp
.L44:
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	movb %al,%bl
	pushl $MM_RegEx+256
	movl %ebx,%esi
	andl $255,%esi
	pushl %esi
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L45
	movl -60(%ebp),%eax
	movl %eax,-72(%ebp)
.L45:
	cmpl $94,%esi
	jg .L46
	jmp *L_2.6(,%esi,4)
	.align 16
.L53:
	cmpl $0,-60(%ebp)
	jne .L54
	pushl $5
	jmp .L113
	.align 16
.L54:
	pushl $94
	jmp .L114
	.align 16
.L50:
	pushl $2
	jmp .L113
	.align 16
.L49:
	movl -72(%ebp),%ecx
	cmpl $-1,%ecx
	je .L46
	movl -64(%ebp),%eax
	testl %eax,%eax
	jne .L59
	pushl $2836
	call _m3_fault
	.align 16
.L59:
	cmpl %ecx,4(%eax)
	ja .L60
	pushl $2834
	call _m3_fault
	.align 16
.L60:
	addl (%eax),%ecx
	movl %ecx,-108(%ebp)
	movl %ecx,-104(%ebp)
	pushl $MM_RegEx+328
	movl -104(%ebp),%edx
	xorl %eax,%eax
	movb (%edx),%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L61
	movl -60(%ebp),%eax
	movl %eax,-72(%ebp)
	jmp .L46
	.align 16
.L61:
	xorl %eax,%eax
	movb %bl,%al
	cmpl $42,%eax
	jne .L63
	movl -64(%ebp),%eax
	testl %eax,%eax
	jne .L64
	pushl $2964
	call _m3_fault
	.align 16
.L64:
	movl %eax,-108(%ebp)
	movl -72(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L65
	pushl $2962
	call _m3_fault
	.align 16
.L65:
	movl -104(%ebp),%edx
	xorl %eax,%eax
	movb (%edx),%al
	movl %eax,%ecx
	orb $192,%cl
	cmpl $255,%ecx
	jbe .L75
	pushl $2961
	call _m3_fault
	.align 16
.L63:
	cmpl $43,%eax
	jne .L68
	movl -64(%ebp),%eax
	testl %eax,%eax
	jne .L69
	pushl $3012
	call _m3_fault
	.align 16
.L69:
	movl %eax,-108(%ebp)
	movl -72(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L70
	pushl $3010
	call _m3_fault
	.align 16
.L70:
	movl -104(%ebp),%edx
	xorl %eax,%eax
	movb (%edx),%al
	movl %eax,%ecx
	orb $64,%cl
	cmpl $255,%ecx
	jbe .L75
	pushl $3009
	call _m3_fault
	.align 16
.L68:
	cmpl $63,%eax
	jne .L44
	movl -64(%ebp),%eax
	testl %eax,%eax
	jne .L73
	pushl $3060
	call _m3_fault
	.align 16
.L73:
	movl %eax,-108(%ebp)
	movl -72(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L74
	pushl $3058
	call _m3_fault
	.align 16
.L74:
	movl -104(%ebp),%edx
	xorl %eax,%eax
	movb (%edx),%al
	movl %eax,%ecx
	orb $128,%cl
	cmpl $255,%ecx
	jbe .L75
	pushl $3057
	call _m3_fault
	.align 16
.L75:
	movl -108(%ebp),%edx
	movl (%edx),%eax
	addl %esi,%eax
	movb %cl,(%eax)
	jmp .L44
	.align 16
.L48:
	cmpb $0,-37(%ebp)
	je .L76
	pushl $36
	jmp .L114
	.align 16
.L76:
	pushl $6
	jmp .L113
	.align 16
.L51:
	cmpb $94,-37(%ebp)
	jne .L78
	pushl $4
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	jmp .L115
	.align 16
.L78:
	pushl $3
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
.L115:
	addl $4,%esp
	pushl $0
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	xorl %ebx,%ebx
	addl $4,%esp
.L80:
	pushl $0
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	incl %ebx
	addl $4,%esp
	cmpl $31,%ebx
	jle .L80
	xorl %eax,%eax
	movb -37(%ebp),%al
	cmpl $45,%eax
	je .L83
	cmpl $93,%eax
	jne .L85
.L83:
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	pushl %eax
	movl %ebp,%ecx
	call RegEx__Compile__PutCharSet.3
	addl $4,%esp
.L85:
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	movb %al,%bl
	testb %bl,%bl
	jne .L86
	pushl $MM_RegEx+364
	pushl $MI_RegEx+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L86:
	movzbl -37(%ebp),%esi
	cmpl $45,%esi
	jne .L87
	movb %bl,-100(%ebp)
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	cmpb $93,-37(%ebp)
	jne .L88
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	movl %ebp,%ecx
	call RegEx__Compile__PutCharSet.3
	pushl %esi
	movl %ebp,%ecx
	call RegEx__Compile__PutCharSet.3
	addl $8,%esp
	jmp .L94
	.align 16
.L88:
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	movb %al,%bl
	movzbl -100(%ebp),%esi
	xorl %edx,%edx
	movb %bl,%dl
	movl %edx,-104(%ebp)
	cmpl %edx,%esi
	jle .L90
	pushl $MM_RegEx+388
	pushl $MI_RegEx+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L90:
	movl %esi,%ebx
	movl -104(%ebp),%esi
	jmp .L91
	.align 16
.L92:
	movb %bl,%al
	andl $255,%eax
	pushl %eax
	movl %ebp,%ecx
	call RegEx__Compile__PutCharSet.3
	incl %ebx
	addl $4,%esp
.L91:
	cmpl %esi,%ebx
	jle .L92
	jmp .L94
	.align 16
.L87:
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	movl %ebp,%ecx
	call RegEx__Compile__PutCharSet.3
	addl $4,%esp
.L94:
	cmpb $93,-37(%ebp)
	jne .L85
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	movl -64(%ebp),%eax
	testl %eax,%eax
	jne .L96
	pushl $3892
	call _m3_fault
	.align 16
.L96:
	movl %eax,-108(%ebp)
	movl -72(%ebp),%ecx
	movl -108(%ebp),%edx
	leal 1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L97
	pushl $3890
	call _m3_fault
	.align 16
.L97:
	movl -108(%ebp),%edx
	movl (%edx),%eax
	addl %ecx,%eax
	movb 1(%eax),%al
	andl $255,%eax
	addl %ecx,%eax
	addl $2,%eax
	movl %eax,-60(%ebp)
	jmp .L44
	.align 16
.L52:
	movl %ebp,%ecx
	call RegEx__Compile__NextChar.0
	movb %al,%bl
	xorl %eax,%eax
	movb %bl,%al
	cmpl $39,%eax
	jle .L46
	cmpl $40,%eax
	jle .L99
	cmpl $41,%eax
	jle .L100
	cmpl $48,%eax
	jle .L46
	cmpl $57,%eax
	jle .L101
	jmp .L46
	.align 16
.L99:
	cmpl $8,-92(%ebp)
	jle .L102
	pushl $MM_RegEx+420
	pushl $MI_RegEx+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L102:
	incl -92(%ebp)
	pushl $7
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	addl $4,%esp
	cmpl $255,-92(%ebp)
	jbe .L103
	pushl $4065
	call _m3_fault
	.align 16
.L103:
	movl -92(%ebp),%edx
	pushl %edx
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	movl -88(%ebp),%eax
	decl %eax
	addl $4,%esp
	cmpl $8,%eax
	jbe .L104
	pushl $4081
	call _m3_fault
	.align 16
.L104:
	movl -92(%ebp),%edx
	movl %edx,-36(%ebp,%eax,4)
	incl -88(%ebp)
	jmp .L44
	.align 16
.L100:
	cmpl $1,-88(%ebp)
	jg .L106
	pushl $MM_RegEx+452
	pushl $MI_RegEx+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L106:
	decl -88(%ebp)
	pushl $8
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	movl -88(%ebp),%eax
	decl %eax
	addl $4,%esp
	cmpl $8,%eax
	jbe .L107
	pushl $4225
	call _m3_fault
	.align 16
.L107:
	movl -36(%ebp,%eax,4),%eax
	cmpl $255,%eax
	jbe .L108
	pushl $4225
	call _m3_fault
	.align 16
.L108:
	pushl %eax
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	incl -96(%ebp)
	addl $4,%esp
	jmp .L44
	.align 16
.L101:
	leal -48(%eax),%esi
	cmpl %esi,-96(%ebp)
	jge .L109
	pushl $MM_RegEx+480
	pushl $MI_RegEx+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L109:
	pushl $9
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	addl $4,%esp
	cmpl $255,%esi
	jbe .L110
	pushl $4353
	call _m3_fault
	.align 16
.L110:
	pushl %esi
.L113:
	movl %ebp,%ecx
	call RegEx__Compile__Put.1
	addl $4,%esp
	jmp .L44
	.align 16
.L47:
	jmp .L111
	.align 16
.L46:
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
.L114:
	movl %ebp,%ecx
	call RegEx__Compile__PutChar.2
	addl $4,%esp
	jmp .L44
	.align 16
.L111:
	movl -92(%ebp),%edx
	cmpl %edx,-96(%ebp)
	je .L112
	pushl $MM_RegEx+520
	pushl $MI_RegEx+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L112:
	movl MM_RegEx+540,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-108(%ebp)
	movl -64(%ebp),%eax
	movl -108(%ebp),%edx
	leal -120(%ebp),%esp
	movl %eax,4(%edx)
	movl -108(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RegEx__Compile,.Lfe5-RegEx__Compile
	.align 16
	.type	 RegEx__InCharSet,@function
RegEx__InCharSet:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movzbl 16(%ebp),%edi
	movl %edi,%edx
	shrl $3,%edx
	movl %edx,-4(%ebp)
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L117
	pushl $4772
	call _m3_fault
	.align 16
.L117:
	movl 4(%eax),%ecx
	cmpl %ecx,%esi
	jb .L118
	pushl $4770
	call _m3_fault
	.align 16
.L118:
	movl (%eax),%ebx
	incl %edx
	xorl %eax,%eax
	movb (%esi,%ebx),%al
	cmpl %eax,%edx
	jg .L123
	leal (%edx,%esi),%eax
	cmpl %ecx,%eax
	jb .L121
	pushl $4802
	call _m3_fault
	.align 16
.L121:
	movl %edi,%edx
	andl $7,%edx
	cmpl $31,%edx
	jbe .L122
	pushl $4801
	call _m3_fault
	.align 16
.L122:
	cmpl $31,%edx
	jg .L123
	movl -4(%ebp),%eax
	addl %esi,%eax
	movb 1(%ebx,%eax),%al
	andl $255,%eax
	btl %edx,%eax
	setb %al
	andl $255,%eax
	jmp .L124
	.align 16
.L123:
	xorl %eax,%eax
.L124:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RegEx__InCharSet,.Lfe6-RegEx__InCharSet
	.align 16
	.type	 RegEx__Dump,@function
RegEx__Dump:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L127:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl MI_TextWr+148,%eax
	movl %ecx,RTThread__handlerStack
	call *%eax
	movl %eax,%edx
	movl (%edi),%eax
	movl %edx,%esi
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L128
	pushl $4932
	call _m3_fault
	.align 16
.L128:
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-12(%ebp)
	jmp .L129
	.align 16
.L130:
	movl (%edi),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L131
	pushl $4948
	call _m3_fault
	.align 16
.L131:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L132
	pushl $4946
	call _m3_fault
	.align 16
.L132:
	pushl $MI_ASCII+300
	movl (%edx),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L133
	movl (%edi),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L134
	pushl $4964
	call _m3_fault
	.align 16
.L134:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L135
	pushl $4962
	call _m3_fault
	.align 16
.L135:
	movl (%edx),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %esi
	movl MI_Wr+64,%eax
	jmp .L146
	.align 16
.L133:
	movl (%edi),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L137
	pushl $4996
	call _m3_fault
	.align 16
.L137:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L138
	pushl $4994
	call _m3_fault
	.align 16
.L138:
	pushl $8
	movl (%edx),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $1
	pushl $48
	pushl $3
	pushl %eax
	movl MI_Fmt+72,%eax
	call *%eax
	pushl %eax
	pushl $MM_RegEx+552
	movl MI_RTHooks+76,%eax
	call *%eax
	addl $32,%esp
	pushl %eax
	pushl %esi
	movl MI_Wr+68,%eax
.L146:
	call *%eax
	addl $8,%esp
	movl (%edi),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L139
	pushl $5028
	call _m3_fault
	.align 16
.L139:
	cmpl %ebx,4(%eax)
	ja .L140
	pushl $5026
	call _m3_fault
	.align 16
.L140:
	movl (%eax),%eax
	cmpb $0,(%ebx,%eax)
	je .L142
	incl %ebx
.L129:
	cmpl %ebx,-12(%ebp)
	jge .L130
.L142:
	testl %esi,%esi
	je .L143
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RegEx+568
	jg .L144
	movl MM_RegEx+564,%eax
	cmpl %edx,4(%eax)
	jge .L143
.L144:
	pushl $5061
	call _m3_fault
	.align 16
.L143:
	pushl %esi
	movl MI_TextWr+152,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L145:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RegEx__Dump,.Lfe7-RegEx__Dump
.section	.rodata
	.align 4
	.type	 L_8.7,@object
	.size	 L_8.7,40
L_8.7:
	.long .L156
	.long .L157
	.long .L158
	.long .L159
	.long .L159
	.long .L160
	.long .L161
	.long .L162
	.long .L163
	.long .L164
.text
	.align 16
	.type	 RegEx__Decompile__Decompile_Part.4,@function
RegEx__Decompile__Decompile_Part.4:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%ebx
	movl -4(%ebp),%edi
.L149:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
.L150:
	cmpl %ebx,12(%ebp)
	jle .L188
	movl -4(%edi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L152
	pushl $5284
	call _m3_fault
	.align 16
.L152:
	cmpl %ebx,4(%eax)
	ja .L153
	pushl $5282
	call _m3_fault
	.align 16
.L153:
	movl (%eax),%eax
	xorl %ecx,%ecx
	movb (%ebx,%eax),%cl
	movl %ecx,%eax
	andb $63,%al
	cmpl $255,%eax
	jbe .L154
	pushl $5297
	call _m3_fault
	.align 16
.L154:
	movb %al,-24(%ebp)
	movl %ecx,%eax
	shrl $6,%eax
	andb $1,%al
	movb %al,-20(%ebp)
	shrl $7,%ecx
	movb %cl,-16(%ebp)
	incl %ebx
	xorl %eax,%eax
	movb -24(%ebp),%al
	cmpl $9,%eax
	jg .L155
	jmp *L_8.7(,%eax,4)
	.align 16
.L156:
	jmp .L188
	.align 16
.L157:
	movl -4(%edi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L166
	pushl $5492
	call _m3_fault
	.align 16
.L166:
	cmpl %ebx,4(%eax)
	ja .L167
	pushl $5490
	call _m3_fault
	.align 16
.L167:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	leal (%ebx,%eax),%esi
	incl %ebx
	jmp .L168
	.align 16
.L169:
	movl -4(%edi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L170
	pushl $5540
	call _m3_fault
	.align 16
.L170:
	cmpl %ebx,4(%eax)
	ja .L171
	pushl $5538
	call _m3_fault
	.align 16
.L171:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L168:
	cmpl %esi,%ebx
	jle .L169
	jmp .L173
	.align 16
.L158:
	pushl $46
	jmp .L189
	.align 16
.L159:
	pushl $91
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	xorl %eax,%eax
	movb -24(%ebp),%al
	addl $8,%esp
	cmpl $4,%eax
	jne .L174
	pushl $94
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
.L174:
	xorl %esi,%esi
.L175:
	movl %esi,%eax
	xorl %edx,%edx
	movb %al,%dl
	movl %edx,-28(%ebp)
	pushl %edx
	pushl %ebx
	movl -4(%edi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	call RegEx__InCharSet
	addl $12,%esp
	testl %eax,%eax
	je .L176
	movl -28(%ebp),%edx
	pushl %edx
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
.L176:
	incl %esi
	cmpl $255,%esi
	jle .L175
	movl -4(%edi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L179
	pushl $5748
	call _m3_fault
	.align 16
.L179:
	cmpl %ebx,4(%eax)
	ja .L180
	pushl $5746
	call _m3_fault
	.align 16
.L180:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	leal 1(%eax,%ebx),%ebx
	pushl $93
	jmp .L189
	.align 16
.L160:
	pushl $94
	jmp .L189
	.align 16
.L161:
	pushl $36
.L189:
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
	jmp .L173
	.align 16
.L162:
	pushl $MM_RegEx+576
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	jmp .L190
	.align 16
.L163:
	pushl $MM_RegEx+592
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	jmp .L190
	.align 16
.L164:
	pushl $92
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	movl -4(%edi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl $8,%esp
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L181
	pushl $5924
	call _m3_fault
	.align 16
.L181:
	cmpl %ebx,4(%eax)
	ja .L182
	pushl $5922
	call _m3_fault
	.align 16
.L182:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	addl $48,%eax
	cmpl $255,%eax
	jbe .L183
	pushl $5921
	call _m3_fault
	.align 16
.L183:
	pushl %eax
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
.L190:
	call *%eax
	incl %ebx
	addl $8,%esp
	jmp .L173
	.align 16
.L155:
	pushl $5984
	call _m3_fault
	.align 16
.L173:
	cmpb $0,-20(%ebp)
	je .L186
	cmpb $0,-16(%ebp)
	je .L184
	pushl $42
	jmp .L191
	.align 16
.L184:
	pushl $43
	jmp .L191
	.align 16
.L186:
	cmpb $0,-16(%ebp)
	je .L150
	pushl $63
.L191:
	movl -8(%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
	jmp .L150
	.align 16
.L188:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RegEx__Decompile__Decompile_Part.4,.Lfe8-RegEx__Decompile__Decompile_Part.4
	.align 16
	.type	 RegEx__Decompile,@function
RegEx__Decompile:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	leal 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	movl MI_TextWr+148,%eax
	movl $0,-8(%ebp)
	call *%eax
	movl %eax,-8(%ebp)
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L192
	pushl $6212
	call _m3_fault
	.align 16
.L192:
	movl 4(%eax),%eax
	decl %eax
	pushl %eax
	movl %ebp,%ecx
	pushl $0
	call RegEx__Decompile__Decompile_Part.4
	addl $8,%esp
	movl -8(%ebp),%eax
	testl %eax,%eax
	je .L193
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RegEx+568
	jg .L194
	movl MM_RegEx+564,%eax
	cmpl %edx,4(%eax)
	jge .L193
.L194:
	pushl $6229
	call _m3_fault
	.align 16
.L193:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_TextWr+152,%eax
	call *%eax
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RegEx__Decompile,.Lfe9-RegEx__Decompile
.section	.rodata
	.align 4
	.type	 L_11.8,@object
	.size	 L_11.8,40
L_11.8:
	.long .L205
	.long .L206
	.long .L207
	.long .L208
	.long .L208
	.long .L209
	.long .L210
	.long .L211
	.long .L212
	.long .L213
.text
	.align 16
	.type	 RegEx__Execute__Advance.5,@function
RegEx__Execute__Advance.5:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 12(%ebp),%edi
	movl -4(%ebp),%ebx
	movl %ebx,-16(%ebp)
.L197:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl $1,-24(%ebp)
	movl $0,-20(%ebp)
	cmpb $0,MM_RegEx+44
	je .L200
	pushl $10
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_Fmt+52,%eax
	call *%eax
	movl %eax,-48(%ebp)
	pushl %eax
	pushl $MM_RegEx+608
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+636
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,-48(%ebp)
	pushl $10
	pushl %edi
	movl MI_Fmt+52,%eax
	call *%eax
	addl $32,%esp
	movl %eax,-44(%ebp)
	pushl %eax
	movl -48(%ebp),%esi
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+656
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Stdio+52,%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $24,%esp
.L200:
	movl -16(%ebp),%ebx
	movl -76(%ebx),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L201
	pushl $6724
	call _m3_fault
	.align 16
.L201:
	movl %eax,%edx
	cmpl %edi,4(%edx)
	ja .L202
	pushl $6722
	call _m3_fault
	.align 16
.L202:
	movl (%edx),%eax
	xorl %edx,%edx
	movb (%edi,%eax),%dl
	movl %edx,%eax
	andb $63,%al
	cmpl $255,%eax
	jbe .L203
	pushl $6737
	call _m3_fault
	.align 16
.L203:
	movb %al,-40(%ebp)
	movl %edx,%eax
	shrl $6,%eax
	xorb $1,%al
	andb $1,%al
	movb %al,-36(%ebp)
	movl %edx,%eax
	shrl $7,%eax
	xorb $1,%al
	movb %al,-32(%ebp)
	incl %edi
	movl 8(%ebp),%esi
	movl %esi,-28(%ebp)
	xorl %eax,%eax
	movb -40(%ebp),%al
	cmpl $9,%eax
	jg .L204
	jmp *L_11.8(,%eax,4)
	.align 16
.L205:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L196
	.align 16
.L206:
	movl -16(%ebp),%ebx
	movl -76(%ebx),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L214
	pushl $6964
	call _m3_fault
	.align 16
.L214:
	movl %eax,%edx
	cmpl %edi,4(%edx)
	ja .L215
	pushl $6962
	call _m3_fault
	.align 16
.L215:
	movl (%edx),%eax
	xorl %ebx,%ebx
	movb (%edi,%eax),%bl
	movl %ebx,-48(%ebp)
	incl %edi
.L216:
	movl 8(%ebp),%esi
	addl -48(%ebp),%esi
	movl -16(%ebp),%ebx
	movl %esi,-44(%ebp)
	cmpl %esi,-80(%ebx)
	jl .L218
	movl -76(%ebx),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L219
	pushl $7060
	call _m3_fault
	.align 16
.L219:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L220
	pushl $7058
	call _m3_fault
	.align 16
.L220:
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L221
	pushl $7060
	call _m3_fault
	.align 16
.L221:
	cmpl $0,4(%eax)
	jne .L222
	pushl $7058
	call _m3_fault
	.align 16
.L222:
	movl -48(%ebp),%esi
	pushl %esi
	movl (%eax),%eax
	addl %edi,%eax
	pushl %eax
	movl 8(%ebp),%eax
	addl (%edx),%eax
	pushl %eax
	call memcmp
	addl $12,%esp
	testl %eax,%eax
	jne .L218
	movl -44(%ebp),%ebx
	movl %ebx,8(%ebp)
	cmpb $0,-36(%ebp)
	je .L216
.L218:
	addl -48(%ebp),%edi
	jmp .L224
	.align 16
.L207:
	cmpb $0,-36(%ebp)
	jne .L225
	movl -16(%ebp),%esi
	movl -80(%esi),%esi
	movl %esi,8(%ebp)
	jmp .L224
	.align 16
.L225:
	movl -16(%ebp),%esi
	movl 8(%ebp),%ebx
	cmpl %ebx,-80(%esi)
	jle .L224
	incl %ebx
	movl %ebx,8(%ebp)
	jmp .L224
	.align 16
.L208:
.L228:
	movl -16(%ebp),%esi
	movl 8(%ebp),%ebx
	cmpl %ebx,-80(%esi)
	jle .L230
	movl -76(%esi),%edx
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L231
	pushl $7396
	call _m3_fault
	.align 16
.L231:
	movl 8(%ebp),%ebx
	cmpl %ebx,4(%eax)
	ja .L232
	pushl $7394
	call _m3_fault
	.align 16
.L232:
	movl (%eax),%eax
	movl 8(%ebp),%esi
	movb (%esi,%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %edi
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	call RegEx__InCharSet
	addl $12,%esp
	testl %eax,%eax
	je .L233
	xorl %eax,%eax
	movb -40(%ebp),%al
	cmpl $3,%eax
	jne .L230
	jmp .L235
	.align 16
.L233:
	xorl %eax,%eax
	movb -40(%ebp),%al
	cmpl $4,%eax
	jne .L230
.L235:
	incl 8(%ebp)
	cmpb $0,-36(%ebp)
	je .L228
.L230:
	movl -16(%ebp),%ebx
	movl -76(%ebx),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L237
	pushl $7540
	call _m3_fault
	.align 16
.L237:
	cmpl %edi,4(%eax)
	ja .L238
	pushl $7538
	call _m3_fault
	.align 16
.L238:
	movl (%eax),%eax
	movb (%edi,%eax),%al
	andl $255,%eax
	leal 1(%eax,%edi),%edi
	jmp .L224
	.align 16
.L209:
	cmpl $0,8(%ebp)
	jne .L240
	jmp .L224
	.align 16
.L210:
	movl -16(%ebp),%ebx
	movl 8(%ebp),%esi
	cmpl %esi,-80(%ebx)
	jne .L240
	jmp .L224
	.align 16
.L211:
	movl -16(%ebp),%esi
	movl -76(%esi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L242
	pushl $7668
	call _m3_fault
	.align 16
.L242:
	cmpl %edi,4(%eax)
	ja .L243
	pushl $7666
	call _m3_fault
	.align 16
.L243:
	movl (%eax),%eax
	movb (%edi,%eax),%al
	andl $255,%eax
	decl %eax
	cmpl $8,%eax
	jbe .L244
	pushl $7665
	call _m3_fault
	.align 16
.L244:
	movl 8(%ebp),%ebx
	movl -16(%ebp),%esi
	incl %edi
	movl %ebx,-72(%esi,%eax,8)
	jmp .L224
	.align 16
.L212:
	movl -16(%ebp),%ebx
	movl -76(%ebx),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L245
	pushl $7700
	call _m3_fault
	.align 16
.L245:
	cmpl %edi,4(%eax)
	ja .L246
	pushl $7698
	call _m3_fault
	.align 16
.L246:
	movl (%eax),%eax
	movb (%edi,%eax),%al
	andl $255,%eax
	decl %eax
	cmpl $8,%eax
	jbe .L247
	pushl $7697
	call _m3_fault
	.align 16
.L247:
	movl 8(%ebp),%esi
	movl -16(%ebp),%ebx
	incl %edi
	movl %esi,-68(%ebx,%eax,8)
	jmp .L224
	.align 16
.L213:
	movl -16(%ebp),%esi
	movl -76(%esi),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L248
	pushl $7796
	call _m3_fault
	.align 16
.L248:
	cmpl %edi,4(%eax)
	ja .L249
	pushl $7794
	call _m3_fault
	.align 16
.L249:
	movl (%eax),%eax
	movb (%edi,%eax),%al
	andl $255,%eax
	leal -1(%eax),%edx
	cmpl $8,%edx
	jbe .L250
	pushl $7793
	call _m3_fault
	.align 16
.L250:
	movl -16(%ebp),%ebx
	leal -72(%ebx,%edx,8),%ebx
	movl %ebx,-44(%ebp)
	movl -16(%ebp),%esi
	movl (%ebx),%eax
	movl -68(%esi,%edx,8),%edx
	subl %eax,%edx
	movl %edx,-24(%ebp)
.L254:
	movl 8(%ebp),%ebx
	addl -24(%ebp),%ebx
	movl -16(%ebp),%esi
	movl %ebx,-48(%ebp)
	cmpl %ebx,-80(%esi)
	jl .L256
	movl -76(%esi),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L257
	pushl $7924
	call _m3_fault
	.align 16
.L257:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L259
	pushl $7922
	call _m3_fault
	.align 16
.L259:
	movl -24(%ebp),%ebx
	pushl %ebx
	movl (%edx),%eax
	movl -44(%ebp),%esi
	movl %eax,%edx
	addl (%esi),%edx
	pushl %edx
	addl 8(%ebp),%eax
	pushl %eax
	call memcmp
	addl $12,%esp
	testl %eax,%eax
	jne .L256
	movl -48(%ebp),%ebx
	movl %ebx,8(%ebp)
	cmpb $0,-36(%ebp)
	je .L254
.L256:
	incl %edi
	jmp .L224
	.align 16
.L204:
	pushl $8112
	call _m3_fault
	.align 16
.L224:
	pushl $MM_RegEx+668
	xorl %eax,%eax
	movb -40(%ebp),%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L200
	cmpb $0,-32(%ebp)
	je .L263
	movl 8(%ebp),%esi
	cmpl %esi,-28(%ebp)
	jne .L264
	cmpl $0,-24(%ebp)
	jne .L240
.L264:
	movl -24(%ebp),%ebx
	addl %ebx,-28(%ebp)
.L263:
	cmpb $0,-36(%ebp)
	jne .L265
	movl 8(%ebp),%esi
	cmpl %esi,-28(%ebp)
	je .L265
	movl MM_RegEx+700,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl -20(%ebp),%ebx
	movl %ebx,16(%eax)
	movl %edi,8(%eax)
	movl %esi,(%eax)
	movl -28(%ebp),%esi
	movl %esi,4(%eax)
	movl -24(%ebp),%ebx
	movl %ebx,12(%eax)
	movl %eax,-20(%ebp)
	addl $4,%esp
.L265:
	movl $1,-24(%ebp)
	jmp .L200
	.align 16
.L240:
	cmpl $0,-20(%ebp)
	jne .L267
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -20(%ebp),%eax
	jmp .L196
	.align 16
.L267:
	movl -20(%ebp),%esi
	movl 12(%esi),%eax
	subl %eax,(%esi)
	cmpb $0,MM_RegEx+44
	je .L273
	pushl $10
	pushl %edi
	movl MI_Fmt+52,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl $MM_RegEx+712
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+740
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,-44(%ebp)
	pushl $10
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_Fmt+52,%eax
	call *%eax
	addl $32,%esp
	movl %eax,-48(%ebp)
	pushl %eax
	movl -44(%ebp),%esi
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+760
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	addl $16,%esp
	movl %eax,-48(%ebp)
	pushl $10
	movl -20(%ebp),%ebx
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	movl -48(%ebp),%esi
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+784
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	addl $24,%esp
	movl %eax,%edi
	pushl $10
	movl (%ebx),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+808
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	addl $24,%esp
	movl %eax,%edi
	pushl $10
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_RegEx+656
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Stdio+52,%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $32,%esp
.L273:
	movl -20(%ebp),%ebx
	movl -20(%ebp),%esi
	movl (%ebx),%ebx
	movl %ebx,8(%ebp)
	movl 8(%esi),%edi
	cmpl %ebx,4(%esi)
	jl .L200
	movl 16(%esi),%ebx
	movl %ebx,-20(%ebp)
	jmp .L200
	.align 16
.L280:
.L196:
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RegEx__Execute__Advance.5,.Lfe10-RegEx__Execute__Advance.5
	.align 16
	.type	 RegEx__Execute,@function
RegEx__Execute:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl 24(%ebp),%edi
	movl %esi,-76(%ebp)
	movl $0,-80(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	cmpl %eax,%ebx
	jg .L293
	movl %ebx,%edx
	addl 20(%ebp),%edx
	cmpl %edx,%eax
	jle .L282
	movl %edx,%eax
.L282:
	testl %eax,%eax
	jge .L283
	pushl $8913
	call _m3_fault
	.align 16
.L283:
	movl %eax,-80(%ebp)
	movl $1,%edx
.L284:
	leal 0(,%edx,8),%eax
	incl %edx
	movl $-1,-80(%eax,%ebp)
	movl $-1,-76(%eax,%ebp)
	cmpl $9,%edx
	jle .L284
.L287:
	pushl $0
	movl %ebp,%ecx
	pushl %ebx
	call RegEx__Execute__Advance.5
	addl $8,%esp
	testl %eax,%eax
	je .L288
	testl %edi,%edi
	je .L289
	leal -72(%ebp),%esi
	cld
	movl $18,%ecx
	rep
	movsl
.L289:
	movl %ebx,%eax
	jmp .L292
	.align 16
.L288:
	incl %ebx
	cmpl %ebx,-80(%ebp)
	jg .L287
.L293:
	movl $-1,%eax
.L292:
	leal -92(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RegEx__Execute,.Lfe11-RegEx__Execute
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RegEx
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_RegEx
.data
	.align 4
	.type	 MM_RegEx,@object
	.size	 MM_RegEx,1320
MM_RegEx:
	.long MM_RegEx+1112
	.long MM_RegEx+48
	.long MM_RegEx+320
	.long MM_RegEx+308
	.zero	4
	.long MM_RegEx+976
	.zero	32
	.long 307998955
.byte 225
.byte 31
.byte 82
.byte 19
.byte 10
.byte 175
.byte 9
.byte 1
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RegEx+1274
	.long MM_RegEx+1276
	.long MM_RegEx+1278
	.zero	8
	.long -1651526519
	.zero	12
	.long MM_RegEx+1286
	.long MM_RegEx+1304
	.long MM_RegEx+152
	.zero	8
	.long -794461426
.byte 31
.byte 127
.byte 109
.byte 223
.byte 17
.byte 4
.byte 200
.byte 15
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_RegEx+1252
	.long MM_RegEx+1258
	.long MM_RegEx+1262
	.zero	40
	.long -2147480576
	.zero	24
	.long RegEx__InCharSet
	.long RegEx__Compile
	.long RegEx__Decompile
	.long RegEx__Dump
	.long RegEx__Execute
	.long 1839226379
	.long 307998955
	.zero	4
	.long MM_RegEx+540
	.long -2020873848
	.long 416
	.zero	28
	.long 2
	.long MM_RegEx+372
	.long 10
	.ascii	"Missing ]"
	.zero	3
	.long 2
	.long MM_RegEx+396
	.long 18
	.ascii	"Range error in []"
	.zero	3
	.long 2
	.long MM_RegEx+428
	.long 20
	.ascii	"Too many \\(\\) pairs"
	.zero	1
	.long 2
	.long MM_RegEx+460
	.long 13
	.ascii	"Unmatched \\)"
	.zero	4
	.long 2
	.long MM_RegEx+488
	.long 26
	.ascii	"No matching \\) for \\DIGIT"
	.zero	3
	.long 2
	.long MM_RegEx+528
	.long 11
	.ascii	"Missing \\)"
	.zero	2
	.long MM_RegEx+564
	.long 1839226379
	.long 2
	.long MM_RegEx+560
	.long 2
	.ascii	"\\"
	.zero	3
	.long MM_RegEx+700
	.long 1937927358
	.long 2
	.long MM_RegEx+584
	.long 3
	.ascii	"\\("
	.zero	2
	.long 2
	.long MM_RegEx+600
	.long 3
	.ascii	"\\)"
	.zero	2
	.long 2
	.long MM_RegEx+616
	.long 14
	.ascii	"Advance: s = "
	.zero	3
	.long 2
	.long MM_RegEx+644
	.long 6
	.ascii	" b = "
	.zero	3
	.long 2
	.long MM_RegEx+664
	.long 2
	.ascii	"\n"
	.zero	3
	.long 542
	.zero	32
	.long -794461426
	.long 2
	.long MM_RegEx+720
	.long 14
	.ascii	"Failure: b = "
	.zero	3
	.long 2
	.long MM_RegEx+748
	.long 6
	.ascii	" s = "
	.zero	3
	.long 2
	.long MM_RegEx+768
	.long 10
	.ascii	" new b = "
	.zero	3
	.long 2
	.long MM_RegEx+792
	.long 10
	.ascii	" new s = "
	.zero	3
	.long 2
	.long MM_RegEx+816
	.long 11
	.ascii	" prev_s = "
	.zero	2
	.ascii	"Execute"
	.zero	1
	.ascii	"Execute.Advance"
	.zero	1
	.ascii	"Decompile"
	.zero	1
	.ascii	"Decompile.Decompile_Part"
	.zero	1
	.ascii	"Dump"
	.zero	1
	.ascii	"InCharSet"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Compile.PutCharSet"
	.zero	1
	.ascii	"Compile.PutChar"
	.zero	1
	.ascii	"Compile.Put"
	.zero	1
	.ascii	"Compile.NextChar"
	.zero	3
	.long RegEx__Execute
	.long MM_RegEx+828
	.long MI_RegEx+72
	.long RegEx__Execute__Advance.5
	.long MM_RegEx+836
	.zero	4
	.long RegEx__Decompile
	.long MM_RegEx+852
	.long MI_RegEx+64
	.long RegEx__Decompile__Decompile_Part.4
	.long MM_RegEx+862
	.zero	4
	.long RegEx__Dump
	.long MM_RegEx+887
	.long MI_RegEx+68
	.long RegEx__InCharSet
	.long MM_RegEx+892
	.zero	4
	.long RegEx__Compile
	.long MM_RegEx+902
	.long MI_RegEx+60
	.long RegEx__Compile__PutCharSet.3
	.long MM_RegEx+910
	.zero	4
	.long RegEx__Compile__PutChar.2
	.long MM_RegEx+929
	.zero	4
	.long RegEx__Compile__Put.1
	.long MM_RegEx+945
	.zero	4
	.long RegEx__Compile__NextChar.0
	.long MM_RegEx+957
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/regex/RegEx.m3"
	.zero	1
.byte 14
.byte 14
.byte 14
.byte 14
.byte 4
.byte 0
.byte 42
.byte 16
.byte 4
.byte 0
.byte 6
.byte 15
.byte 5
.byte 7
.byte 23
.byte 23
.byte 23
.byte 16
.byte 14
.byte 123
.byte 165
.byte 208
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 136
.byte 233
.byte 139
.byte 135
	.ascii	"Pattern version 1"
	.zero	1
	.ascii	"RegEx.Pattern"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
