	.file	"DragonInt.mc"
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
	.type	 DragonInt__NewSession,@function
DragonInt__NewSession:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
	movl MM_DragonInt+44,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L2:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MM_DragonInt+48,%esi
	testl %esi,%esi
	jne .L3
	movl MM_DragonInt+340,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -24(%ebp),%eax
	leal -16(%ebp),%edx
	movl %edx,-24(%ebp)
	movl $1,-20(%ebp)
	movl $340,-16(%ebp)
	pushl %eax
	movl MM_DragonInt+348,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $12,%esp
	testl %ebx,%ebx
	jne .L4
	pushl $1220
	call _m3_fault
	.align 16
.L4:
	movl %eax,4(%ebx)
	testl %eax,%eax
	jne .L6
	pushl $1236
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $1234
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl %esi,(%eax)
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L9
	pushl $1252
	call _m3_fault
	.align 16
.L9:
	cmpl $1,4(%eax)
	ja .L10
	pushl $1250
	call _m3_fault
	.align 16
.L10:
	movl (%eax),%eax
	movl $1,4(%eax)
	jmp .L14
	.align 16
.L3:
	movl %esi,%ebx
	movl 8(%ebx),%eax
	movl %eax,MM_DragonInt+48
	movl MM_DragonInt+52,%eax
	decl %eax
	jns .L13
	pushl $1313
	call _m3_fault
	.align 16
.L13:
	movl %eax,MM_DragonInt+52
.L14:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jne .L15
	pushl $1364
	call _m3_fault
	.align 16
.L15:
	movl $2,(%ebx)
	movl %ebx,8(%ebx)
	leal -32(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 DragonInt__NewSession,.Lfe1-DragonInt__NewSession
	.align 16
	.type	 DragonInt__EndSession,@function
DragonInt__EndSession:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L18
	pushl $1476
	call _m3_fault
	.align 16
.L18:
	cmpl %ebx,8(%ebx)
	je .L19
	pushl $1472
	call _m3_fault
	.align 16
.L19:
	movl MM_DragonInt+44,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L20:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl MM_DragonInt+52,%ecx
	cmpl $9,%ecx
	jg .L21
	testl %ebx,%ebx
	jne .L22
	pushl $1524
	call _m3_fault
	.align 16
.L22:
	movl %ebx,%edx
	movl MM_DragonInt+48,%eax
	incl %ecx
	movl %eax,8(%edx)
	movl %edx,MM_DragonInt+48
	movl %ecx,MM_DragonInt+52
	jmp .L25
	.align 16
.L21:
	testl %ebx,%ebx
	jne .L24
	pushl $1588
	call _m3_fault
	.align 16
.L24:
	movl $0,8(%ebx)
.L25:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 DragonInt__EndSession,.Lfe2-DragonInt__EndSession
	.align 16
	.type	 DragonInt__New,@function
DragonInt__New:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%eax
	testl %ecx,%ecx
	je .L27
	movl %eax,%esi
	andl $268435455,%esi
	movl %eax,%edx
	shrl $28,%edx
	movl %ecx,%eax
	andl $16777215,%eax
	sall $4,%eax
	movl %edx,%ebx
	orl %eax,%ebx
	shrl $24,%ecx
	movl %ecx,-20(%ebp)
	je .L28
	leal -8(%ebp),%eax
	pushl %eax
	pushl $3
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__InitValue
	addl $12,%esp
	testl %eax,%eax
	jne .L29
	pushl $2212
	call _m3_fault
	.align 16
.L29:
	movl %esi,(%eax)
	movl %ebx,4(%eax)
	movl -20(%ebp),%edi
	movl %edi,8(%eax)
	jmp .L35
	.align 16
.L28:
	leal -8(%ebp),%eax
	pushl %eax
	pushl $2
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__InitValue
	addl $12,%esp
	testl %eax,%eax
	jne .L37
	pushl $2228
	call _m3_fault
	.align 16
.L27:
	movl %eax,%esi
	andl $268435455,%esi
	movl %eax,%ebx
	shrl $28,%ebx
	je .L36
	leal -8(%ebp),%eax
	pushl %eax
	pushl $2
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__InitValue
	addl $12,%esp
	testl %eax,%eax
	jne .L37
	pushl $2324
	call _m3_fault
	.align 16
.L37:
	movl %esi,(%eax)
	movl %ebx,4(%eax)
	jmp .L35
	.align 16
.L36:
	leal -8(%ebp),%eax
	pushl %eax
	pushl $1
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__InitValue
	addl $12,%esp
	testl %eax,%eax
	jne .L40
	pushl $2340
	call _m3_fault
	.align 16
.L40:
	movl %esi,(%eax)
.L35:
	movl 20(%ebp),%eax
	movl -8(%ebp),%edx
	leal -32(%ebp),%esp
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 DragonInt__New,.Lfe3-DragonInt__New
	.align 16
	.type	 DragonInt__copy,@function
DragonInt__copy:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	leal -8(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %eax
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	call DragonInt__InitValue
	addl $12,%esp
	testl %ebx,%ebx
	jne .L42
	pushl $2500
	call _m3_fault
	.align 16
.L42:
	movl 4(%ebx),%ecx
	testl %ecx,%ecx
	jne .L43
	pushl $2500
	call _m3_fault
	.align 16
.L43:
	movl -4(%ebp),%edx
	testl %edx,%edx
	jge .L44
	pushl $2497
	call _m3_fault
	.align 16
.L44:
	movl 12(%ebp),%esi
	movl %esi,-40(%ebp)
	movl (%esi),%edi
	testl %edi,%edi
	jge .L45
	pushl $2497
	call _m3_fault
	.align 16
.L45:
	movl %edi,-20(%ebp)
	leal (%edi,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L46
	pushl $2497
	call _m3_fault
	.align 16
.L46:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-36(%ebp)
	movl %edx,-24(%ebp)
	movl 4(%ebx),%ebx
	testl %ebx,%ebx
	jne .L48
	pushl $2500
	call _m3_fault
	.align 16
.L48:
	movl -40(%ebp),%esi
	movl 4(%esi),%ecx
	testl %ecx,%ecx
	jge .L49
	pushl $2497
	call _m3_fault
	.align 16
.L49:
	movl -40(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	jge .L50
	pushl $2497
	call _m3_fault
	.align 16
.L50:
	movl %edx,-28(%ebp)
	leal (%edx,%ecx),%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L51
	pushl $2497
	call _m3_fault
	.align 16
.L51:
	movl (%ebx),%eax
	leal (%eax,%ecx,4),%ecx
	movl %ecx,-32(%ebp)
	cmpl %edi,%edx
	je .L52
	pushl $2499
	call _m3_fault
	.align 16
.L52:
	leal 0(,%edx,4),%eax
	pushl %eax
	pushl %ecx
	movl -36(%ebp),%esi
	pushl %esi
	call memmove
	movl 16(%ebp),%edx
	movl -8(%ebp),%eax
	leal -52(%ebp),%esp
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 DragonInt__copy,.Lfe4-DragonInt__copy
	.align 16
	.type	 DragonInt__add,@function
DragonInt__add:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-28(%ebp)
	movl 12(%ebp),%ecx
	movl 16(%ebp),%eax
	movl (%ecx),%ebx
	movl (%eax),%edx
	cmpl %edx,%ebx
	jge .L54
	movl 4(%eax),%eax
	movl %eax,-24(%ebp)
	movl %edx,-20(%ebp)
	movl 4(%ecx),%esi
	movl %ebx,-36(%ebp)
	jmp .L55
	.align 16
.L54:
	movl 4(%ecx),%ecx
	movl %ecx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl 4(%eax),%esi
	movl %edx,-36(%ebp)
.L55:
	leal -8(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	incl %eax
	pushl %eax
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__InitValue
	movl %eax,%ecx
	addl $12,%esp
	testl %edi,%edi
	jne .L56
	pushl $2852
	call _m3_fault
	.align 16
.L56:
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L57
	pushl $2852
	call _m3_fault
	.align 16
.L57:
	cmpl $0,4(%eax)
	jne .L58
	pushl $2850
	call _m3_fault
	.align 16
.L58:
	movl (%eax),%eax
	movl -24(%ebp),%edi
	leal (%eax,%edi,4),%edx
	leal (%eax,%esi,4),%ebx
	xorl %esi,%esi
	movl -36(%ebp),%edi
	decl %edi
	movl %edi,-32(%ebp)
	jmp .L59
	.align 16
.L60:
	testl %edx,%edx
	jne .L61
	pushl $2948
	call _m3_fault
	.align 16
.L61:
	testl %ebx,%ebx
	jne .L62
	pushl $2948
	call _m3_fault
	.align 16
.L62:
	movl (%ebx),%eax
	addl (%edx),%eax
	addl -28(%ebp),%eax
	testl %ecx,%ecx
	jne .L63
	pushl $2964
	call _m3_fault
	.align 16
.L63:
	movl %eax,%edi
	andl $268435455,%edi
	movl %edi,(%ecx)
	shrl $28,%eax
	movl %eax,-28(%ebp)
	addl $4,%edx
	addl $4,%ebx
	addl $4,%ecx
	incl %esi
.L59:
	cmpl %esi,-32(%ebp)
	jge .L60
	movl -36(%ebp),%ebx
	movl -20(%ebp),%esi
	decl %esi
	jmp .L65
	.align 16
.L66:
	testl %edx,%edx
	jne .L67
	pushl $3092
	call _m3_fault
	.align 16
.L67:
	movl -28(%ebp),%eax
	addl (%edx),%eax
	testl %ecx,%ecx
	jne .L68
	pushl $3108
	call _m3_fault
	.align 16
.L68:
	movl %eax,%edi
	andl $268435455,%edi
	movl %edi,(%ecx)
	shrl $28,%eax
	movl %eax,-28(%ebp)
	addl $4,%edx
	addl $4,%ecx
	incl %ebx
.L65:
	cmpl %esi,%ebx
	jle .L66
	testl %ecx,%ecx
	jne .L70
	pushl $3204
	call _m3_fault
	.align 16
.L70:
	movl -28(%ebp),%edi
	movl %edi,(%ecx)
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__FixSize
	movl 20(%ebp),%edx
	movl -8(%ebp),%eax
	leal -48(%ebp),%esp
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 DragonInt__add,.Lfe5-DragonInt__add
	.align 16
	.type	 DragonInt__diff,@function
DragonInt__diff:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl (%eax),%eax
	movl %eax,-24(%ebp)
	movl 16(%ebp),%eax
	xorl %edi,%edi
	movl (%eax),%eax
	movl %eax,-20(%ebp)
	cmpl %eax,-24(%ebp)
	jge .L72
	pushl $3440
	call _m3_fault
	.align 16
.L72:
	leal -8(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%esi
	pushl %esi
	call DragonInt__InitValue
	movl %eax,%ebx
	addl $12,%esp
	testl %esi,%esi
	jne .L73
	pushl $3476
	call _m3_fault
	.align 16
.L73:
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L74
	pushl $3476
	call _m3_fault
	.align 16
.L74:
	cmpl $0,4(%eax)
	jne .L75
	pushl $3474
	call _m3_fault
	.align 16
.L75:
	movl (%eax),%edx
	movl 12(%ebp),%eax
	movl -20(%ebp),%esi
	movl 4(%eax),%eax
	sall $2,%eax
	leal (%eax,%edx),%ecx
	movl 16(%ebp),%eax
	decl %esi
	movl 4(%eax),%eax
	sall $2,%eax
	addl %eax,%edx
	movl %edi,-32(%ebp)
	movl %esi,-28(%ebp)
	jmp .L76
	.align 16
.L77:
	testl %ecx,%ecx
	jne .L78
	pushl $3572
	call _m3_fault
	.align 16
.L78:
	testl %edx,%edx
	jne .L79
	pushl $3572
	call _m3_fault
	.align 16
.L79:
	movl (%edx),%eax
	movl (%ecx),%esi
	subl %eax,%esi
	movl %esi,%eax
	subl %edi,%eax
	testl %ebx,%ebx
	jne .L80
	pushl $3588
	call _m3_fault
	.align 16
.L80:
	movl %eax,%esi
	andl $268435455,%esi
	movl %esi,(%ebx)
	shrl $28,%eax
	movl %eax,%edi
	andl $1,%edi
	addl $4,%ecx
	addl $4,%edx
	addl $4,%ebx
	incl -32(%ebp)
.L76:
	movl -28(%ebp),%esi
	cmpl %esi,-32(%ebp)
	jle .L77
	movl -20(%ebp),%edx
	movl -24(%ebp),%esi
	decl %esi
	movl %esi,-32(%ebp)
	jmp .L82
	.align 16
.L83:
	testl %ecx,%ecx
	jne .L84
	pushl $3716
	call _m3_fault
	.align 16
.L84:
	movl (%ecx),%eax
	subl %edi,%eax
	testl %ebx,%ebx
	jne .L85
	pushl $3732
	call _m3_fault
	.align 16
.L85:
	movl %eax,%esi
	andl $268435455,%esi
	movl %esi,(%ebx)
	shrl $28,%eax
	movl %eax,%edi
	andl $1,%edi
	addl $4,%ecx
	addl $4,%ebx
	incl %edx
.L82:
	cmpl %edx,-32(%ebp)
	jge .L83
	testl %edi,%edi
	je .L87
	pushl $3824
	call _m3_fault
	.align 16
.L87:
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%esi
	pushl %esi
	call DragonInt__FixSize
	movl 20(%ebp),%edx
	movl -8(%ebp),%eax
	leal -44(%ebp),%esp
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 DragonInt__diff,.Lfe6-DragonInt__diff
	.align 16
	.type	 DragonInt__compare,@function
DragonInt__compare:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	movl (%ebx),%ecx
	movl (%edi),%edx
	cmpl %edx,%ecx
	jl .L104
	jg .L105
	testl %eax,%eax
	jne .L91
	pushl $4068
	call _m3_fault
	.align 16
.L91:
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L92
	pushl $4068
	call _m3_fault
	.align 16
.L92:
	cmpl $0,4(%eax)
	jne .L93
	pushl $4066
	call _m3_fault
	.align 16
.L93:
	decl %ecx
	movl (%eax),%eax
	leal (%eax,%ecx,4),%edx
	movl 4(%ebx),%ebx
	leal 0(,%ebx,4),%eax
	leal (%eax,%edx),%esi
	movl 4(%edi),%edi
	leal 0(,%edi,4),%eax
	leal (%eax,%edx),%ebx
	jmp .L94
	.align 16
.L95:
	testl %esi,%esi
	jne .L96
	pushl $4164
	call _m3_fault
	.align 16
.L96:
	testl %ebx,%ebx
	jne .L97
	pushl $4164
	call _m3_fault
	.align 16
.L97:
	movl (%esi),%edx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jae .L100
.L104:
	movl $-1,%eax
	jmp .L103
	.align 16
.L100:
	cmpl %eax,%edx
	jbe .L101
.L105:
	movl $1,%eax
	jmp .L103
	.align 16
.L101:
	addl $-4,%esi
	addl $-4,%ebx
	decl %ecx
.L94:
	testl %ecx,%ecx
	jge .L95
	xorl %eax,%eax
.L103:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 DragonInt__compare,.Lfe7-DragonInt__compare
	.align 16
	.type	 DragonInt__max,@function
DragonInt__max:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call DragonInt__compare
	addl $12,%esp
	testl %eax,%eax
	jge .L107
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	jmp .L108
	.align 16
.L107:
	movl 20(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
.L108:
	pushl %eax
	pushl %ebx
	call DragonInt__copy
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 DragonInt__max,.Lfe8-DragonInt__max
	.align 16
	.type	 DragonInt__shift,@function
DragonInt__shift:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%edi
.L110:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-36(%ebp)
	testl %edi,%edi
	je .L111
	movl 12(%ebp),%eax
	movl (%eax),%edx
	testl %edx,%edx
	jne .L112
.L111:
	movl 20(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%esi
	pushl %esi
	call DragonInt__copy
	jmp .L152
	.align 16
.L112:
	testl %edi,%edi
	jle .L113
	pushl %edi
	pushl $28
	call m3_div
	movl %eax,-40(%ebp)
	pushl %edi
	pushl $28
	call m3_mod
	movl %eax,%edi
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl -40(%ebp),%ecx
	addl (%eax),%ecx
	movl %ecx,%eax
	incl %eax
	pushl %eax
	movl 8(%ebp),%esi
	pushl %esi
	call DragonInt__InitValue
	movl %eax,%ebx
	addl $28,%esp
	testl %esi,%esi
	jne .L114
	pushl $4628
	call _m3_fault
	.align 16
.L114:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L115
	pushl $4628
	call _m3_fault
	.align 16
.L115:
	movl %eax,%edx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	movl %eax,-52(%ebp)
	cmpl %eax,4(%edx)
	ja .L116
	pushl $4626
	call _m3_fault
	.align 16
.L116:
	movl (%edx),%eax
	movl -52(%ebp),%esi
	leal (%eax,%esi,4),%eax
	movl %eax,-52(%ebp)
	movl -36(%ebp),%edx
	movl -40(%ebp),%eax
	decl %eax
	jmp .L117
	.align 16
.L118:
	testl %ebx,%ebx
	jne .L119
	pushl $4676
	call _m3_fault
	.align 16
.L119:
	movl $0,(%ebx)
	addl $4,%ebx
	incl %edx
.L117:
	cmpl %eax,%edx
	jle .L118
	movl 12(%ebp),%eax
	xorl %edx,%edx
	movl (%eax),%eax
	decl %eax
	movl %eax,-44(%ebp)
	jmp .L121
	.align 16
.L122:
	testl %ebx,%ebx
	jne .L123
	pushl $4740
	call _m3_fault
	.align 16
.L123:
	cmpl $0,-52(%ebp)
	jne .L124
	pushl $4740
	call _m3_fault
	.align 16
.L124:
	cmpl $31,%edi
	jbe .L125
	pushl $4737
	call _m3_fault
	.align 16
.L125:
	cmpl $31,%edi
	jg .L126
	movl -52(%ebp),%ecx
	movl (%ecx),%eax
	movl %edi,%ecx
	sall %cl,%eax
	andl $268435455,%eax
	orl -36(%ebp),%eax
	movl %eax,(%ebx)
	jmp .L127
	.align 16
.L126:
	movl -36(%ebp),%esi
	movl %esi,(%ebx)
.L127:
	cmpl $0,-52(%ebp)
	jne .L128
	pushl $4756
	call _m3_fault
	.align 16
.L128:
	movl $28,%eax
	subl %edi,%eax
	cmpl $31,%eax
	jbe .L129
	pushl $4753
	call _m3_fault
	.align 16
.L129:
	cmpl $31,%eax
	jg .L130
	movl -52(%ebp),%ecx
	movl (%ecx),%esi
	movl %eax,%ecx
	shrl %cl,%esi
	movl %esi,-36(%ebp)
	jmp .L131
	.align 16
.L130:
	movl $0,-36(%ebp)
.L131:
	addl $4,-52(%ebp)
	addl $4,%ebx
	incl %edx
.L121:
	cmpl %edx,-44(%ebp)
	jge .L122
	testl %ebx,%ebx
	jne .L133
	pushl $4820
	call _m3_fault
	.align 16
.L133:
	movl -36(%ebp),%ecx
	movl %ecx,(%ebx)
	jmp .L134
	.align 16
.L113:
	movl %edi,%eax
	negl %eax
	movl %eax,%esi
	sarl $5,%esi
	movl %esi,-40(%ebp)
	movl %eax,%edi
	andl $31,%edi
	leal -8(%ebp),%eax
	pushl %eax
	movl %edx,%eax
	subl %esi,%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call DragonInt__InitValue
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L135
	pushl $4948
	call _m3_fault
	.align 16
.L135:
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L136
	pushl $4948
	call _m3_fault
	.align 16
.L136:
	movl %eax,%edx
	movl 12(%ebp),%eax
	movl (%edx),%ebx
	movl %ebx,-32(%ebp)
	movl 4(%edx),%edx
	movl %edx,-28(%ebp)
	movl (%eax),%ecx
	movl %ecx,-48(%ebp)
	addl 4(%eax),%ecx
	movl %ecx,%eax
	decl %eax
	cmpl %edx,%eax
	jb .L137
	pushl $4962
	call _m3_fault
	.align 16
.L137:
	leal (%ebx,%eax,4),%eax
	movl %eax,-52(%ebp)
	movl -8(%ebp),%eax
	addl -4(%ebp),%eax
	decl %eax
	cmpl %edx,%eax
	jb .L138
	pushl $4978
	call _m3_fault
	.align 16
.L138:
	leal (%ebx,%eax,4),%ebx
	movl -48(%ebp),%eax
	subl -40(%ebp),%eax
	leal -1(%eax),%edx
	jmp .L139
	.align 16
.L140:
	testl %ebx,%ebx
	jne .L141
	pushl $5044
	call _m3_fault
	.align 16
.L141:
	cmpl $0,-52(%ebp)
	jne .L142
	pushl $5044
	call _m3_fault
	.align 16
.L142:
	cmpl $31,%edi
	jbe .L143
	pushl $5041
	call _m3_fault
	.align 16
.L143:
	cmpl $31,%edi
	jg .L144
	movl -52(%ebp),%ecx
	movl (%ecx),%eax
	movl %edi,%ecx
	shrl %cl,%eax
	orl -36(%ebp),%eax
	movl %eax,(%ebx)
	jmp .L145
	.align 16
.L144:
	movl -36(%ebp),%esi
	movl %esi,(%ebx)
.L145:
	cmpl $0,-52(%ebp)
	jne .L146
	pushl $5060
	call _m3_fault
	.align 16
.L146:
	movl $28,%eax
	subl %edi,%eax
	cmpl $31,%eax
	jbe .L147
	pushl $5057
	call _m3_fault
	.align 16
.L147:
	cmpl $31,%eax
	jg .L148
	movl -52(%ebp),%ecx
	movl (%ecx),%esi
	movl %eax,%ecx
	sall %cl,%esi
	movl %esi,%eax
	andl $268435455,%eax
	movl %eax,-36(%ebp)
	jmp .L149
	.align 16
.L148:
	movl $0,-36(%ebp)
.L149:
	addl $-4,-52(%ebp)
	addl $-4,%ebx
	decl %edx
.L139:
	testl %edx,%edx
	jge .L140
.L134:
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call DragonInt__FixSize
	movl 20(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L152:
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L151:
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 DragonInt__shift,.Lfe9-DragonInt__shift
	.align 16
	.type	 DragonInt__times2,@function
DragonInt__times2:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
	movl $0,-24(%ebp)
	movl (%edx),%esi
	movl 4(%edx),%ebx
	testl %esi,%esi
	jne .L154
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__copy
	jmp .L153
	.align 16
.L154:
	movl %esi,-20(%ebp)
	cmpl $0,8(%ebp)
	jne .L155
	pushl $5428
	call _m3_fault
	.align 16
.L155:
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L156
	pushl $5428
	call _m3_fault
	.align 16
.L156:
	movl %eax,%edx
	leal (%esi,%ebx),%ecx
	leal -1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L157
	pushl $5426
	call _m3_fault
	.align 16
.L157:
	leal 0(,%ecx,4),%eax
	addl (%edx),%eax
	testb $8,-1(%eax)
	je .L158
	leal 1(%esi),%edi
	movl %edi,-20(%ebp)
.L158:
	leal -8(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%edi
	pushl %edi
	call DragonInt__InitValue
	movl %eax,%ecx
	addl $12,%esp
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L160
	pushl $5476
	call _m3_fault
	.align 16
.L160:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L161
	pushl $5474
	call _m3_fault
	.align 16
.L161:
	movl (%edx),%eax
	leal (%eax,%ebx,4),%edx
	movl -24(%ebp),%ebx
	decl %esi
	jmp .L162
	.align 16
.L163:
	testl %ecx,%ecx
	jne .L164
	pushl $5524
	call _m3_fault
	.align 16
.L164:
	testl %edx,%edx
	jne .L165
	pushl $5524
	call _m3_fault
	.align 16
.L165:
	movl (%edx),%edi
	movl %edi,%eax
	addl %edi,%eax
	andl $268435455,%eax
	orl -24(%ebp),%eax
	movl %eax,(%ecx)
	movl (%edx),%edi
	shrl $27,%edi
	movl %edi,-24(%ebp)
	addl $4,%edx
	addl $4,%ecx
	incl %ebx
.L162:
	cmpl %esi,%ebx
	jle .L163
	cmpl $0,-24(%ebp)
	je .L168
	testl %ecx,%ecx
	jne .L169
	pushl $5604
	call _m3_fault
	.align 16
.L169:
	movl -24(%ebp),%edi
	movl %edi,(%ecx)
.L168:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L153:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 DragonInt__times2,.Lfe10-DragonInt__times2
	.align 16
	.type	 DragonInt__timesTenInPlace,@function
DragonInt__timesTenInPlace:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-36(%ebp)
	cmpl $0,8(%ebp)
	jne .L171
	pushl $5700
	call _m3_fault
	.align 16
.L171:
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L172
	pushl $5700
	call _m3_fault
	.align 16
.L172:
	movl 12(%ebp),%ebx
	movl %eax,%ecx
	movl 4(%ebx),%edx
	cmpl %edx,4(%ecx)
	ja .L173
	pushl $5698
	call _m3_fault
	.align 16
.L173:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%edx
	movl -36(%ebp),%ecx
	movl (%ebx),%ebx
	decl %ebx
	jmp .L174
	.align 16
.L175:
	testl %edx,%edx
	jne .L176
	pushl $5748
	call _m3_fault
	.align 16
.L176:
	movl (%edx),%eax
	leal (%eax,%eax,4),%eax
	movl -36(%ebp),%esi
	leal (%esi,%eax,2),%eax
	movl %eax,%esi
	andl $268435455,%esi
	movl %esi,(%edx)
	shrl $28,%eax
	movl %eax,-36(%ebp)
	addl $4,%edx
	incl %ecx
.L174:
	cmpl %ebx,%ecx
	jle .L175
	cmpl $0,-36(%ebp)
	je .L194
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl (%eax),%eax
	incl %eax
	pushl %eax
	movl 8(%ebp),%esi
	pushl %esi
	call DragonInt__InitValue
	addl $12,%esp
	testl %esi,%esi
	jne .L180
	pushl $5892
	call _m3_fault
	.align 16
.L180:
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L181
	pushl $5892
	call _m3_fault
	.align 16
.L181:
	movl %eax,%ecx
	movl -4(%ebp),%eax
	testl %eax,%eax
	jge .L182
	pushl $5889
	call _m3_fault
	.align 16
.L182:
	movl %eax,%edx
	movl 12(%ebp),%esi
	movl %esi,-44(%ebp)
	movl (%esi),%edi
	testl %edi,%edi
	jge .L183
	pushl $5889
	call _m3_fault
	.align 16
.L183:
	movl %edi,-20(%ebp)
	leal (%edi,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L184
	pushl $5889
	call _m3_fault
	.align 16
.L184:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-40(%ebp)
	movl 8(%ebp),%esi
	movl %edx,-24(%ebp)
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L186
	pushl $5892
	call _m3_fault
	.align 16
.L186:
	movl -44(%ebp),%esi
	movl %eax,%ebx
	movl 4(%esi),%ecx
	testl %ecx,%ecx
	jge .L187
	pushl $5889
	call _m3_fault
	.align 16
.L187:
	movl -44(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	jge .L188
	pushl $5889
	call _m3_fault
	.align 16
.L188:
	movl %edx,-28(%ebp)
	leal (%edx,%ecx),%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L189
	pushl $5889
	call _m3_fault
	.align 16
.L189:
	movl (%ebx),%eax
	leal (%eax,%ecx,4),%ecx
	movl %ecx,-32(%ebp)
	cmpl %edi,%edx
	je .L190
	pushl $5891
	call _m3_fault
	.align 16
.L190:
	leal 0(,%edx,4),%eax
	pushl %eax
	pushl %ecx
	movl -40(%ebp),%esi
	pushl %esi
	call memmove
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L191
	pushl $5908
	call _m3_fault
	.align 16
.L191:
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L192
	pushl $5908
	call _m3_fault
	.align 16
.L192:
	movl %eax,%ebx
	movl 12(%ebp),%edx
	movl -4(%ebp),%eax
	movl (%edx),%ecx
	addl %eax,%ecx
	cmpl %ecx,4(%ebx)
	ja .L193
	pushl $5906
	call _m3_fault
	.align 16
.L193:
	movl (%ebx),%eax
	movl -36(%ebp),%esi
	movl %esi,(%eax,%ecx,4)
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L194:
	movl 12(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 DragonInt__timesTenInPlace,.Lfe11-DragonInt__timesTenInPlace
	.align 16
	.type	 DragonInt__divideTen,@function
DragonInt__divideTen:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	xorl %edi,%edi
	movl (%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call DragonInt__InitValue
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L196
	pushl $6084
	call _m3_fault
	.align 16
.L196:
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L197
	pushl $6084
	call _m3_fault
	.align 16
.L197:
	movl %edx,%eax
	movl (%eax),%ebx
	movl %ebx,-24(%ebp)
	movl 4(%eax),%edx
	movl 12(%ebp),%eax
	movl %edx,-20(%ebp)
	movl (%eax),%ecx
	decl %ecx
	movl 4(%eax),%esi
	addl %ecx,%esi
	cmpl %edx,%esi
	jb .L198
	pushl $6098
	call _m3_fault
	.align 16
.L198:
	leal (%ebx,%esi,4),%esi
	movl -4(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	cmpl %edx,%eax
	jb .L199
	pushl $6114
	call _m3_fault
	.align 16
.L199:
	movl -28(%ebp),%eax
	leal (%ebx,%eax,4),%ebx
	jmp .L200
	.align 16
.L201:
	testl %esi,%esi
	jne .L202
	pushl $6180
	call _m3_fault
	.align 16
.L202:
	movl %edi,%eax
	sall $28,%eax
	movl %eax,%edi
	orl (%esi),%edi
	testl %ebx,%ebx
	jne .L203
	pushl $6196
	call _m3_fault
	.align 16
.L203:
	movl $0xcccccccd,%eax
	mull %edi
	shrl $3,%edx
	movl %edx,-28(%ebp)
	movl %edx,(%ebx)
	movl -28(%ebp),%eax
	leal (%eax,%eax,4),%eax
	addl %eax,%eax
	movl %eax,-28(%ebp)
	subl %eax,%edi
	addl $-4,%esi
	addl $-4,%ebx
	decl %ecx
.L200:
	testl %ecx,%ecx
	jge .L201
	leal -8(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call DragonInt__FixSize
	addl $8,%esp
	testl %edi,%edi
	je .L205
	pushl %ebx
	pushl $MI_DragonInt+60
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call DragonInt__add
.L205:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	leal -40(%ebp),%esp
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 DragonInt__divideTen,.Lfe12-DragonInt__divideTen
	.align 16
	.type	 DragonInt__divmod,@function
DragonInt__divmod:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	movl $1,%esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl 8(%ebp),%edi
	movl (%eax),%edx
	movl %edx,-16(%ebp)
	movl 4(%eax),%eax
	movl %eax,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	jmp .L207
	.align 16
.L208:
	movl -16(%ebp),%eax
	movl %eax,-8(%ebp)
	movl -12(%ebp),%eax
	movl %eax,-4(%ebp)
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	incl %esi
	pushl %edi
	call DragonInt__add
	addl $16,%esp
.L207:
	leal -16(%ebp),%ebx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call DragonInt__compare
	addl $12,%esp
	testl %eax,%eax
	jge .L208
	movl 20(%ebp),%ecx
	decl %esi
	movl %esi,(%ecx)
	movl 24(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call DragonInt__diff
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 DragonInt__divmod,.Lfe13-DragonInt__divmod
	.align 16
	.type	 DragonInt__InitValue,@function
DragonInt__InitValue:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 16(%ebp),%eax
	movl 12(%ebp),%esi
	movl %esi,(%eax)
	testl %ecx,%ecx
	jne .L211
	pushl $6756
	call _m3_fault
	.align 16
.L211:
	movl 16(%ebp),%edx
	movl (%ecx),%eax
	movl %ecx,%ebx
	movl %eax,4(%edx)
	movl (%ebx),%edx
	addl %esi,%edx
	movl %edx,(%ebx)
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L215
	pushl $6788
	call _m3_fault
	.align 16
.L215:
	cmpl %edx,4(%eax)
	jg .L217
	pushl %ebx
	call DragonInt__Expand
	addl $4,%esp
.L217:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L218
	pushl $6804
	call _m3_fault
	.align 16
.L218:
	movl %eax,%ebx
	movl 16(%ebp),%eax
	movl 4(%eax),%edx
	cmpl %edx,4(%ebx)
	ja .L219
	pushl $6802
	call _m3_fault
	.align 16
.L219:
	movl (%ebx),%eax
	leal -8(%ebp),%esp
	leal (%eax,%edx,4),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 DragonInt__InitValue,.Lfe14-DragonInt__InitValue
	.align 16
	.type	 DragonInt__Expand,@function
DragonInt__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L221
	pushl $6884
	call _m3_fault
	.align 16
.L221:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L222
	pushl $6884
	call _m3_fault
	.align 16
.L222:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%ecx
	addl %ebx,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_DragonInt+348,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L223
	pushl $6932
	call _m3_fault
	.align 16
.L223:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L224
	pushl $6929
	call _m3_fault
	.align 16
.L224:
	movl (%esi),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L226
	pushl $6932
	call _m3_fault
	.align 16
.L226:
	cmpl %ebx,4(%edx)
	je .L227
	pushl $6931
	call _m3_fault
	.align 16
.L227:
	leal 0(,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	leal -36(%ebp),%esp
	movl %esi,4(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 DragonInt__Expand,.Lfe15-DragonInt__Expand
	.align 16
	.type	 DragonInt__FixSize,@function
DragonInt__FixSize:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L230
	pushl $7028
	call _m3_fault
	.align 16
.L230:
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L231
	pushl $7028
	call _m3_fault
	.align 16
.L231:
	movl 12(%ebp),%edx
	movl %eax,%ecx
	movl (%edx),%eax
	addl 4(%edx),%eax
	leal -1(%eax),%edx
	cmpl %edx,4(%ecx)
	ja .L232
	pushl $7026
	call _m3_fault
	.align 16
.L232:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%eax
	jmp .L233
	.align 16
.L234:
	decl %edx
	movl %edx,(%ecx)
	addl $-4,%eax
.L233:
	movl 12(%ebp),%ecx
	movl (%ecx),%edx
	testl %edx,%edx
	jle .L229
	testl %eax,%eax
	jne .L236
	pushl $7060
	call _m3_fault
	.align 16
.L236:
	cmpl $0,(%eax)
	je .L234
.L229:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 DragonInt__FixSize,.Lfe16-DragonInt__FixSize
	.align 16
	.type	 _INITM_DragonInt,@function
_INITM_DragonInt:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_DragonInt+44
	movl MM_DragonInt+356,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_DragonInt+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 _INITM_DragonInt,.Lfe17-_INITM_DragonInt
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_DragonInt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe18:
	.size	 _m3_fault,.Lfe18-_m3_fault
.globl MM_DragonInt
.data
	.align 4
	.type	 MM_DragonInt,@object
	.size	 MM_DragonInt,932
MM_DragonInt:
	.long MM_DragonInt+717
	.long MM_DragonInt+56
	.long MM_DragonInt+340
	.long MM_DragonInt+328
	.zero	4
	.long MM_DragonInt+504
	.zero	4
	.long MM_DragonInt+712
	.long MM_DragonInt+712
	.zero	4
	.long _INITM_DragonInt
	.zero	20
	.long -440266374
.byte 244
.byte 147
.byte 36
.byte 238
.byte 142
.byte 130
.byte 230
.byte 11
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_DragonInt+874
	.long MM_DragonInt+878
	.long MM_DragonInt+882
	.zero	24
	.long MM_DragonInt+896
	.long MM_DragonInt+914
	.long MM_DragonInt+160
	.zero	8
	.long -1556270856
.byte 221
.byte 37
.byte 255
.byte 184
.byte 37
.byte 21
.byte 194
.byte 27
	.zero	8
	.long 12
	.long 4
	.zero	20
	.long MM_DragonInt+869
	.zero	44
	.long DragonInt__InitValue
	.long DragonInt__Expand
	.long DragonInt__FixSize
	.long DragonInt__NewSession
	.long DragonInt__EndSession
	.long DragonInt__New
	.long DragonInt__copy
	.long DragonInt__add
	.long DragonInt__diff
	.long DragonInt__compare
	.long DragonInt__max
	.long DragonInt__shift
	.long DragonInt__times2
	.long DragonInt__timesTenInPlace
	.long DragonInt__divideTen
	.long DragonInt__divmod
	.long -788015270
	.long -440266374
	.zero	4
	.long MM_DragonInt+348
	.long -788015270
	.long MM_DragonInt+356
	.long 562018850
	.zero	4
	.long 356643957
	.ascii	"_INITM_DragonInt"
	.zero	1
	.ascii	"FixSize"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"InitValue"
	.zero	1
	.ascii	"divmod"
	.zero	1
	.ascii	"divideTen"
	.zero	1
	.ascii	"timesTenInPlace"
	.zero	1
	.ascii	"times2"
	.zero	1
	.ascii	"shift"
	.zero	1
	.ascii	"max"
	.zero	1
	.ascii	"compare"
	.zero	1
	.ascii	"diff"
	.zero	1
	.ascii	"add"
	.zero	1
	.ascii	"copy"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"EndSession"
	.zero	1
	.ascii	"NewSession"
	.zero	1
	.long _INITM_DragonInt
	.long MM_DragonInt+364
	.zero	4
	.long DragonInt__FixSize
	.long MM_DragonInt+381
	.zero	4
	.long DragonInt__Expand
	.long MM_DragonInt+389
	.zero	4
	.long DragonInt__InitValue
	.long MM_DragonInt+396
	.zero	4
	.long DragonInt__divmod
	.long MM_DragonInt+406
	.long MI_DragonInt+108
	.long DragonInt__divideTen
	.long MM_DragonInt+413
	.long MI_DragonInt+104
	.long DragonInt__timesTenInPlace
	.long MM_DragonInt+423
	.long MI_DragonInt+100
	.long DragonInt__times2
	.long MM_DragonInt+439
	.long MI_DragonInt+96
	.long DragonInt__shift
	.long MM_DragonInt+446
	.long MI_DragonInt+92
	.long DragonInt__max
	.long MM_DragonInt+452
	.long MI_DragonInt+88
	.long DragonInt__compare
	.long MM_DragonInt+456
	.long MI_DragonInt+84
	.long DragonInt__diff
	.long MM_DragonInt+464
	.long MI_DragonInt+80
	.long DragonInt__add
	.long MM_DragonInt+469
	.long MI_DragonInt+76
	.long DragonInt__copy
	.long MM_DragonInt+473
	.long MI_DragonInt+72
	.long DragonInt__New
	.long MM_DragonInt+478
	.long MI_DragonInt+68
	.long DragonInt__EndSession
	.long MM_DragonInt+482
	.long MI_DragonInt+48
	.long DragonInt__NewSession
	.long MM_DragonInt+493
	.long MI_DragonInt+44
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/float/Common/DragonInt.m3"
	.zero	1
.byte 1
.byte 14
.byte 26
.byte 3
.byte 0
.byte 14
.byte 4
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 7
.byte 16
.byte 34
.byte 186
.byte 127
.byte 33
.byte 16
.byte 90
.byte 215
.byte 7
.byte 209
	.ascii	"DragonInt.Session"
	.zero	1
	.ascii	"DragonInt.Session"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
