	.file	"RTTipe.mc"
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
	.type	 RTTipe__Get,@function
RTTipe__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	testl %eax,%eax
	jl .L10
	cmpl %eax,MI_RT0u+156
	jle .L10
	cmpl $1048575,%eax
	jbe .L4
	pushl $1057
	call _m3_fault
	.align 16
.L4:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,-40(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	pushl $1108
	call _m3_fault
	.align 16
.L5:
	movl 64(%eax),%eax
	movl %eax,-36(%ebp)
	testl %eax,%eax
	je .L10
	movl %eax,-32(%ebp)
	leal -32(%ebp),%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl %edx,-28(%ebp)
	leal -52(%ebp),%eax
	leal -44(%ebp),%edi
	movl %edi,-52(%ebp)
	movl $1,-48(%ebp)
	movl %edx,-44(%ebp)
	pushl %eax
	movl MM_RTTipe+308,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	leal -40(%ebp),%ebx
	call *%eax
	movl %eax,-24(%ebp)
	movl %esi,-20(%ebp)
	pushl %ebx
	call RTTipe__ReadOp
	movl %eax,%esi
	movl -28(%ebp),%eax
	addl $16,%esp
	cmpl %eax,-20(%ebp)
	je .L7
	pushl $1216
	call _m3_fault
	.align 16
.L7:
	movl 12(%ebp),%eax
	movl 4(%eax),%ecx
	movl %ecx,-16(%ebp)
	movl 8(%eax),%edx
	movl %edx,-12(%ebp)
	movl (%eax),%eax
	movl %eax,-8(%ebp)
	movl %ecx,%edx
	cmpl %eax,%edx
	jle .L8
	movl %eax,%edx
.L8:
	movl %edx,-4(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	pushl %esi
	call RTTipe__FixSizes
.L10:
	movl %esi,%eax
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTTipe__Get,.Lfe1-RTTipe__Get
.section	.rodata
	.align 4
	.type	 L_1.0,@object
	.size	 L_1.0,88
L_1.0:
	.long .L14
	.long .L15
	.long .L16
	.long .L17
	.long .L18
	.long .L19
	.long .L20
	.long .L21
	.long .L22
	.long .L23
	.long .L24
	.long .L25
	.long .L26
	.long .L27
	.long .L28
	.long .L29
	.long .L30
	.long .L31
	.long .L32
	.long .L33
	.long .L34
	.long .L35
.text
	.align 16
	.type	 RTTipe__ReadOp,@function
RTTipe__ReadOp:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movb $0,-4(%ebp)
	movl 8(%ecx),%edx
	testl %edx,%edx
	jne .L12
	pushl $1460
	call _m3_fault
	.align 16
.L12:
	movb (%edx),%al
	incl %edx
	movl %edx,8(%ecx)
	xorl %edx,%edx
	movb %al,%dl
	cmpl $21,%edx
	jg .L13
	jmp *L_1.0(,%edx,4)
	.align 16
.L14:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $0,4(%ebx)
	jmp .L36
	.align 16
.L16:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $2,4(%ebx)
	jmp .L36
	.align 16
.L17:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $3,4(%ebx)
	jmp .L36
	.align 16
.L18:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $4,4(%ebx)
	jmp .L36
	.align 16
.L20:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $6,4(%ebx)
	jmp .L36
	.align 16
.L21:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $7,4(%ebx)
	jmp .L36
	.align 16
.L22:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $8,4(%ebx)
	jmp .L36
	.align 16
.L23:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $9,4(%ebx)
	jmp .L36
	.align 16
.L27:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $13,4(%ebx)
	jmp .L36
	.align 16
.L28:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $14,4(%ebx)
	jmp .L36
	.align 16
.L31:
	movl MM_RTTipe+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	movb $17,4(%ebx)
	jmp .L36
	.align 16
.L15:
	movl MM_RTTipe+324,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $1,4(%ebx)
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,16(%ebx)
	movl %ebx,%esi
	movl 8(%ebp),%edx
	addl $8,%esp
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L37
	pushl $1764
	call _m3_fault
	.align 16
.L37:
	movl %eax,%ebx
	movl 20(%edx),%edx
	cmpl %edx,4(%ebx)
	ja .L45
	pushl $1762
	call _m3_fault
	.align 16
.L19:
	movl MM_RTTipe+332,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $5,4(%ebx)
	jmp .L55
	.align 16
.L24:
	movl MM_RTTipe+340,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $10,4(%ebx)
	movl 8(%ebp),%edx
	addl $4,%esp
	movl (%edx),%eax
	testl %eax,%eax
	jne .L39
	pushl $1892
	call _m3_fault
	.align 16
.L39:
	movl 80(%eax),%eax
	movl %eax,16(%ebx)
	movl $0,20(%ebx)
	movl %ebx,%esi
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L40
	pushl $1940
	call _m3_fault
	.align 16
.L40:
	movl 20(%edx),%edx
	cmpl %edx,4(%eax)
	ja .L41
	pushl $1938
	call _m3_fault
	.align 16
.L41:
	movl (%eax),%eax
	movl %esi,(%eax,%edx,4)
	movl 8(%ebp),%eax
	incl 20(%eax)
	movb $1,-4(%ebp)
	pushl %eax
	call RTTipe__GetFields
	jmp .L56
	.align 16
.L25:
	movl MM_RTTipe+348,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $11,4(%ebx)
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl %edx,16(%ebx)
	movl %ebx,%esi
	movl 8(%ebp),%edx
	addl $8,%esp
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L42
	pushl $2068
	call _m3_fault
	.align 16
.L42:
	movl %eax,%ebx
	movl 20(%edx),%edx
	cmpl %edx,4(%ebx)
	ja .L45
	pushl $2066
	call _m3_fault
	.align 16
.L26:
	movl MM_RTTipe+356,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $12,4(%ebx)
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl %edx,16(%ebx)
	movl %ebx,%esi
	movl 8(%ebp),%edx
	addl $8,%esp
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L44
	pushl $2196
	call _m3_fault
	.align 16
.L44:
	movl %eax,%ebx
	movl 20(%edx),%edx
	cmpl %edx,4(%ebx)
	ja .L45
	pushl $2194
	call _m3_fault
	.align 16
.L45:
	movl (%ebx),%eax
	movl %esi,(%eax,%edx,4)
	movl 8(%ebp),%eax
	incl 20(%eax)
	movb $1,-4(%ebp)
	pushl %eax
	call RTTipe__ReadOp
.L56:
	movl %eax,20(%esi)
	addl $4,%esp
	jmp .L36
	.align 16
.L29:
	movl MM_RTTipe+364,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movb $15,4(%eax)
	movl $0,16(%eax)
	movl %eax,%esi
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L46
	pushl $2292
	call _m3_fault
	.align 16
.L46:
	movl 20(%edx),%edx
	cmpl %edx,4(%eax)
	ja .L47
	pushl $2290
	call _m3_fault
	.align 16
.L47:
	movl (%eax),%eax
	movl %esi,(%eax,%edx,4)
	movl 8(%ebp),%eax
	incl 20(%eax)
	movb $1,-4(%ebp)
	pushl %eax
	call RTTipe__GetFields
	movl %eax,16(%esi)
	addl $4,%esp
	jmp .L36
	.align 16
.L30:
	movl MM_RTTipe+372,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $16,4(%ebx)
	movb $1,16(%ebx)
	jmp .L57
	.align 16
.L32:
	movl MM_RTTipe+332,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $18,4(%ebx)
.L55:
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl %edx,16(%ebx)
	movl %ebx,%esi
	addl $8,%esp
	jmp .L36
	.align 16
.L33:
	movl MM_RTTipe+380,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movb $19,4(%ebx)
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl %edx,16(%esi)
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl %edx,20(%esi)
	addl $12,%esp
	jmp .L36
	.align 16
.L34:
	movl MM_RTTipe+372,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $20,4(%ebx)
	movb $0,16(%ebx)
.L57:
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetUID
	movl %eax,%edx
	movl %edx,20(%ebx)
	pushl %edx
	movl MI_RTTypeSRC+52,%eax
	movl %ebx,%esi
	call *%eax
	movl %eax,%ebx
	movl %ebx,24(%esi)
	addl $12,%esp
	jmp .L36
	.align 16
.L35:
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edx
	movl 8(%ebp),%eax
	addl $4,%esp
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L48
	pushl $2756
	call _m3_fault
	.align 16
.L48:
	movl %eax,%ebx
	cmpl %edx,4(%ebx)
	ja .L49
	pushl $2754
	call _m3_fault
	.align 16
.L49:
	movl (%ebx),%eax
	movl (%eax,%edx,4),%esi
	jmp .L36
	.align 16
.L13:
	movl 16(%ecx),%eax
	testl %eax,%eax
	jne .L50
	pushl $2804
	call _m3_fault
	.align 16
.L50:
	movl %eax,%ebx
	leal -22(%edx),%eax
	cmpl %eax,4(%ebx)
	ja .L51
	pushl $2802
	call _m3_fault
	.align 16
.L51:
	movl (%ebx),%eax
	movl -88(%eax,%edx,4),%esi
.L36:
	cmpb $0,-4(%ebp)
	jne .L52
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L53
	pushl $2868
	call _m3_fault
	.align 16
.L53:
	movl %eax,%ebx
	movl 20(%edx),%edx
	cmpl %edx,4(%ebx)
	ja .L54
	pushl $2866
	call _m3_fault
	.align 16
.L54:
	movl (%ebx),%eax
	movl %esi,(%eax,%edx,4)
	movl 8(%ebp),%eax
	incl 20(%eax)
.L52:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTTipe__ReadOp,.Lfe2-RTTipe__ReadOp
	.align 16
	.type	 RTTipe__GetFields,@function
RTTipe__GetFields:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	addl $8,%eax
	pushl %eax
	call RTTipe__GetInt
	movl %eax,%edi
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L59
	.align 16
.L60:
	movl MM_RTTipe+388,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl %ebx,4(%esi)
	movl 8(%ebp),%eax
	pushl %eax
	call RTTipe__ReadOp
	movl %eax,%edx
	movl %esi,%eax
	movl %eax,%ebx
	decl %edi
	addl $8,%esp
	movl %edx,(%eax)
.L59:
	testl %edi,%edi
	jg .L60
	xorl %edx,%edx
	jmp .L62
	.align 16
.L63:
	movl 4(%ebx),%eax
	movl %edx,4(%ebx)
	movl %ebx,%edx
	movl %eax,%ebx
.L62:
	testl %ebx,%ebx
	jne .L63
	leal -12(%ebp),%esp
	movl %edx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTTipe__GetFields,.Lfe3-RTTipe__GetFields
	.align 16
	.type	 RTTipe__GetInt,@function
RTTipe__GetInt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl (%esi),%ecx
	testl %ecx,%ecx
	jne .L68
	pushl $3652
	call _m3_fault
	.align 16
.L68:
	movb (%ecx),%al
	movl $MM_RTTipe+300,%edx
	testb %al,%al
	jl .L69
	movl $MM_RTTipe+304,%edx
.L69:
	movl (%edx),%edi
	andl $255,%eax
	movl %eax,%edx
	andl $63,%edx
	movl 8(%ebp),%esi
	incl %ecx
	movl %ecx,(%esi)
	testb $64,%al
	jne .L71
	movl %edi,%eax
	imull %edx,%eax
	jmp .L85
	.align 16
.L71:
	cmpl $62,%edx
	jne .L72
	testl %edi,%edi
	jge .L73
	movl $-2147483648,%eax
	jmp .L85
	.align 16
.L73:
	movl $2147483647,%eax
	jmp .L85
	.align 16
.L72:
	cmpl $63,%edx
	jne .L74
	pushl $3920
	call _m3_fault
	.align 16
.L74:
	cmpl $4,%edx
	jle .L77
	pushl $4016
	call _m3_fault
	.align 16
.L77:
	xorl %ebx,%ebx
	movl %ebx,%ecx
	movl $1,-8(%ebp)
	movl %edx,-4(%ebp)
	jmp .L78
	.align 16
.L79:
	movl 8(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	jne .L80
	pushl $4068
	call _m3_fault
	.align 16
.L80:
	cmpl $31,%ecx
	jbe .L81
	pushl $4065
	call _m3_fault
	.align 16
.L81:
	cmpl $31,%ecx
	jg .L83
	xorl %eax,%eax
	movb (%edx),%al
	sall %cl,%eax
	orl %eax,%ebx
.L83:
	addl $8,%ecx
	movl 8(%ebp),%esi
	incl %edx
	movl %edx,(%esi)
	incl -8(%ebp)
.L78:
	movl -4(%ebp),%esi
	cmpl %esi,-8(%ebp)
	jle .L79
	movl %edi,%eax
	imull %ebx,%eax
.L85:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTTipe__GetInt,.Lfe4-RTTipe__GetInt
	.align 16
	.type	 RTTipe__GetUID,@function
RTTipe__GetUID:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%ecx
	testl %ecx,%ecx
	jne .L87
	pushl $4260
	call _m3_fault
	.align 16
.L87:
	xorl %edx,%edx
	movb (%ecx),%dl
	movl %edx,-4(%ebp)
	leal 1(%ecx),%eax
	movl %eax,(%ebx)
	testl %eax,%eax
	jne .L88
	pushl $4276
	call _m3_fault
	.align 16
.L88:
	movzbl 1(%ecx),%edi
	leal 2(%ecx),%eax
	movl %eax,(%ebx)
	testl %eax,%eax
	jne .L89
	pushl $4292
	call _m3_fault
	.align 16
.L89:
	movzbl 2(%ecx),%esi
	leal 3(%ecx),%eax
	movl %eax,(%ebx)
	testl %eax,%eax
	jne .L90
	pushl $4308
	call _m3_fault
	.align 16
.L90:
	xorl %edx,%edx
	movb 3(%ecx),%dl
	addl $4,%ecx
	movl %ecx,(%ebx)
	movl %edi,%eax
	sall $8,%eax
	movl -4(%ebp),%ecx
	orl %eax,%ecx
	movl %esi,%eax
	sall $16,%eax
	sall $24,%edx
	orl %edx,%eax
	leal -16(%ebp),%esp
	orl %ecx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTTipe__GetUID,.Lfe5-RTTipe__GetUID
.section	.rodata
	.align 4
	.type	 L_3.1,@object
	.size	 L_3.1,84
L_3.1:
	.long .L94
	.long .L95
	.long .L96
	.long .L94
	.long .L96
	.long .L97
	.long .L98
	.long .L94
	.long .L98
	.long .L94
	.long .L99
	.long .L100
	.long .L101
	.long .L94
	.long .L102
	.long .L103
	.long .L94
	.long .L94
	.long .L104
	.long .L105
	.long .L94
.text
	.align 16
	.type	 RTTipe__FixSizes,@function
RTTipe__FixSizes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	je .L91
	cmpl $0,12(%esi)
	jne .L91
	xorl %eax,%eax
	movb 4(%esi),%al
	jmp *L_3.1(,%eax,4)
	.align 16
.L94:
	movl 12(%ebp),%eax
	movl 8(%eax),%edx
	movl %edx,8(%esi)
	movl 12(%eax),%eax
	jmp .L145
	.align 16
.L96:
	movl $8,8(%esi)
	movl $8,12(%esi)
	jmp .L106
	.align 16
.L102:
	movl $32,8(%esi)
	movl 12(%ebp),%eax
	movl $32,%edx
.L152:
	movl (%eax),%eax
	cmpl %edx,%eax
	jle .L145
	movl %edx,%eax
	jmp .L145
	.align 16
.L98:
	movl $64,8(%esi)
	movl 12(%ebp),%eax
	movl (%eax),%eax
	jmp .L145
	.align 16
.L97:
	testl %esi,%esi
	je .L108
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+336
	jg .L109
	movl MM_RTTipe+332,%eax
	cmpl %edx,4(%eax)
	jge .L108
.L109:
	pushl $4917
	call _m3_fault
	.align 16
.L108:
	movl 16(%esi),%eax
	cmpl $256,%eax
	jg .L110
	movl $8,8(%esi)
	jmp .L111
	.align 16
.L110:
	cmpl $65535,%eax
	jg .L112
	movl $16,8(%esi)
	jmp .L111
	.align 16
.L112:
	cmpl $2147483647,%eax
	jg .L113
	movl $32,8(%esi)
	jmp .L111
	.align 16
.L113:
	movl $64,8(%esi)
.L111:
	movl 12(%ebp),%eax
	movl 8(%esi),%edx
	jmp .L152
	.align 16
.L105:
	testl %esi,%esi
	je .L115
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+384
	jg .L116
	movl MM_RTTipe+380,%eax
	cmpl %edx,4(%eax)
	jge .L115
.L116:
	pushl $5077
	call _m3_fault
	.align 16
.L115:
	movl %esi,%edx
	cmpl $0,16(%esi)
	jl .L117
	cmpl $255,20(%esi)
	jle .L148
.L117:
	cmpl $-128,16(%edx)
	jl .L119
	cmpl $127,20(%edx)
	jg .L119
.L148:
	movl $8,8(%esi)
	jmp .L118
	.align 16
.L119:
	cmpl $0,16(%edx)
	jl .L120
	cmpl $65535,20(%edx)
	jle .L149
.L120:
	cmpl $-32768,16(%edx)
	jl .L121
	cmpl $32767,20(%edx)
	jg .L121
.L149:
	movl $16,8(%esi)
	jmp .L118
	.align 16
.L121:
	movl 12(%ebp),%eax
	cmpl $32,8(%eax)
	jle .L150
	cmpl $0,16(%edx)
	jl .L123
	cmpl $0,20(%edx)
	jl .L150
.L123:
	cmpl $-2147483648,16(%edx)
	jl .L124
	cmpl $2147483647,20(%edx)
	jg .L124
.L150:
	movl $32,8(%esi)
	jmp .L118
	.align 16
.L124:
	movl $64,8(%esi)
.L118:
	movl 12(%ebp),%eax
	movl 8(%esi),%edx
	jmp .L152
	.align 16
.L104:
	testl %esi,%esi
	je .L126
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+336
	jg .L127
	movl MM_RTTipe+332,%eax
	cmpl %edx,4(%eax)
	jge .L126
.L127:
	pushl $5317
	call _m3_fault
	.align 16
.L126:
	movl 12(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	call RTTipe__RoundUp
	movl %eax,%edx
	movl %edx,8(%esi)
	movl 12(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%eax),%eax
	cmpl %edx,%eax
	jge .L145
	movl %edx,%eax
	jmp .L145
	.align 16
.L101:
	testl %esi,%esi
	je .L129
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+360
	jg .L130
	movl MM_RTTipe+356,%eax
	cmpl %edx,4(%eax)
	jge .L129
.L130:
	pushl $5413
	call _m3_fault
	.align 16
.L129:
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%esi),%eax
	pushl %eax
	call RTTipe__FixSizes
	movl 16(%esi),%eax
	movl %eax,8(%esi)
	movl 20(%esi),%eax
	movl 12(%eax),%eax
	jmp .L145
	.align 16
.L99:
	testl %esi,%esi
	je .L131
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+344
	jg .L132
	movl MM_RTTipe+340,%eax
	cmpl %edx,4(%eax)
	jge .L131
.L132:
	pushl $5525
	call _m3_fault
	.align 16
.L131:
	movl 12(%ebp),%edx
	movl 8(%edx),%eax
	movl %eax,8(%esi)
	movl 12(%edx),%eax
	movl %eax,12(%esi)
	leal 28(%esi),%eax
	pushl %eax
	leal 24(%esi),%eax
	pushl %eax
	pushl %edx
	movl 20(%esi),%eax
	jmp .L151
	.align 16
.L103:
	testl %esi,%esi
	je .L133
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+368
	jg .L134
	movl MM_RTTipe+364,%eax
	cmpl %edx,4(%eax)
	jge .L133
.L134:
	pushl $5637
	call _m3_fault
	.align 16
.L133:
	leal 12(%esi),%eax
	pushl %eax
	leal 8(%esi),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
.L151:
	pushl %eax
	call RTTipe__FixFields
	jmp .L106
	.align 16
.L95:
	testl %esi,%esi
	je .L135
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+328
	jg .L136
	movl MM_RTTipe+324,%eax
	cmpl %edx,4(%eax)
	jge .L135
.L136:
	pushl $5717
	call _m3_fault
	.align 16
.L135:
	movl 20(%esi),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl %esi,%edi
	pushl %ebx
	call RTTipe__FixSizes
	addl $8,%esp
	cmpb $12,4(%ebx)
	jne .L137
	movl 8(%ebx),%eax
	movl %eax,24(%esi)
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	call RTTipe__FindArrayAlign
	movl %eax,%edx
	movl %edx,12(%esi)
	addl $12,%esp
	jmp .L138
	.align 16
.L137:
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	call RTTipe__RoundUp
	movl %eax,%edx
	movl %edx,24(%esi)
	movl 12(%ebx),%eax
	movl %eax,12(%esi)
	addl $8,%esp
.L138:
	movl 12(%esi),%eax
	pushl %eax
	movl 16(%edi),%eax
	imull 24(%edi),%eax
	pushl %eax
	call RTTipe__RoundUp
	movl %eax,%edx
	movl %edx,8(%esi)
	jmp .L106
	.align 16
.L100:
	testl %esi,%esi
	je .L139
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+352
	jg .L140
	movl MM_RTTipe+348,%eax
	cmpl %edx,4(%eax)
	jge .L139
.L140:
	pushl $5925
	call _m3_fault
	.align 16
.L139:
	movl 20(%esi),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTTipe__FixSizes
	addl $8,%esp
	cmpb $12,4(%ebx)
	jne .L141
	movl 8(%ebx),%eax
	movl %eax,24(%esi)
	jmp .L142
	.align 16
.L141:
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	call RTTipe__RoundUp
	movl %eax,%edx
	movl %edx,24(%esi)
.L142:
	movl $-1,8(%esi)
	movl 12(%ebp),%eax
	movl 12(%ebx),%ecx
	movl 12(%eax),%edx
	movl 4(%eax),%eax
	cmpl %eax,%edx
	jle .L143
	movl %edx,%eax
.L143:
	cmpl %ecx,%eax
	jge .L145
	movl %ecx,%eax
.L145:
	movl %eax,12(%esi)
.L106:
	movl 12(%ebp),%eax
	movl 12(%esi),%edx
	movl (%eax),%eax
	cmpl %edx,%eax
	jle .L147
	movl %edx,%eax
.L147:
	movl %eax,12(%esi)
.L91:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTTipe__FixSizes,.Lfe6-RTTipe__FixSizes
	.align 16
	.type	 RTTipe__FixFields,@function
RTTipe__FixFields:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L154:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	xorl %esi,%esi
	movl 4(%eax),%edi
	movb $0,-12(%ebp)
	jmp .L155
	.align 16
.L156:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%ebx),%eax
	pushl %eax
	call RTTipe__FixSizes
	movl (%ebx),%eax
	addl $8,%esp
	cmpb $12,4(%eax)
	jne .L161
	movb $1,-12(%ebp)
	jmp .L160
	.align 16
.L161:
	movl 12(%eax),%eax
	pushl %eax
	pushl %esi
	call RTTipe__RoundUp
	movl %eax,%esi
	movl (%ebx),%eax
	addl $8,%esp
	movl 12(%eax),%eax
	cmpl %edi,%eax
	jle .L160
	movl %eax,%edi
.L160:
	testl %ebx,%ebx
	jne .L165
	pushl $6404
	call _m3_fault
	.align 16
.L165:
	movl %esi,8(%ebx)
	movl (%ebx),%eax
	movl 4(%ebx),%ebx
	addl 8(%eax),%esi
.L155:
	testl %ebx,%ebx
	jne .L156
	cmpb $0,-12(%ebp)
	je .L169
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	call RTTipe__FindRecordAlign
	movl %eax,%edi
	addl $12,%esp
.L169:
	pushl %edi
	pushl %esi
	call RTTipe__RoundUp
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jle .L170
	movl 12(%ebp),%eax
	movl 12(%eax),%ebx
	jmp .L171
	.align 16
.L172:
	pushl %esi
	pushl %ebx
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jne .L173
	movl %ebx,%edi
	jmp .L170
	.align 16
.L173:
	sarl $1,%ebx
.L171:
	cmpl %edi,%ebx
	jg .L172
.L170:
	movl 20(%ebp),%edx
	movl %edi,(%edx)
	movl 16(%ebp),%edx
	movl %esi,(%edx)
.L175:
	movl -8(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTTipe__FixFields,.Lfe7-RTTipe__FixFields
	.align 16
	.type	 RTTipe__FindRecordAlign,@function
RTTipe__FindRecordAlign:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	jmp .L177
	.align 16
.L178:
	pushl %edx
	pushl %ebx
	pushl %esi
	call RTTipe__FieldsAlignedOK
	addl $12,%esp
	testl %eax,%eax
	je .L179
	movl %ebx,%eax
	jmp .L181
	.align 16
.L179:
	addl %ebx,%ebx
.L177:
	movl 16(%ebp),%edx
	movl (%edx),%eax
	cmpl %ebx,%eax
	jg .L178
.L181:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTTipe__FindRecordAlign,.Lfe8-RTTipe__FindRecordAlign
	.align 16
	.type	 RTTipe__FieldsAlignedOK,@function
RTTipe__FieldsAlignedOK:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L183:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %esi,%esi
.L184:
	movl 8(%ebp),%ebx
	jmp .L185
	.align 16
.L186:
	movl 16(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	addl %esi,%eax
	pushl %eax
	movl (%ebx),%eax
	pushl %eax
	call RTTipe__IsAlignedOK
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L190
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L182
	.align 16
.L190:
	movl 4(%ebx),%ebx
.L185:
	testl %ebx,%ebx
	jne .L186
	leal (%edi,%esi),%eax
	pushl %eax
	movl 16(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L184
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L193:
.L182:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTTipe__FieldsAlignedOK,.Lfe9-RTTipe__FieldsAlignedOK
	.align 16
	.type	 RTTipe__FindArrayAlign,@function
RTTipe__FindArrayAlign:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%esi
	movl 12(%eax),%ebx
	jmp .L195
	.align 16
.L196:
	pushl %edx
	pushl %ebx
	pushl %esi
	call RTTipe__IsAlignedOK
	addl $12,%esp
	testl %eax,%eax
	je .L197
	movl %ebx,%eax
	jmp .L199
	.align 16
.L197:
	addl %ebx,%ebx
.L195:
	movl 16(%ebp),%edx
	movl (%edx),%eax
	cmpl %ebx,%eax
	jg .L196
.L199:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTTipe__FindArrayAlign,.Lfe10-RTTipe__FindArrayAlign
.section	.rodata
	.align 4
	.type	 L_7.2,@object
	.size	 L_7.2,84
L_7.2:
	.long .L202
	.long .L203
	.long .L204
	.long .L202
	.long .L204
	.long .L204
	.long .L202
	.long .L202
	.long .L202
	.long .L202
	.long .L205
	.long .L206
	.long .L207
	.long .L202
	.long .L202
	.long .L208
	.long .L202
	.long .L202
	.long .L202
	.long .L204
	.long .L202
.text
	.align 16
	.type	 RTTipe__IsAlignedOK,@function
RTTipe__IsAlignedOK:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L201:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	movb 4(%ebx),%al
	jmp *L_7.2(,%eax,4)
	.align 16
.L202:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	pushl %esi
	movl 12(%ebx),%eax
	pushl %eax
	call m3_mod
	testl %eax,%eax
	sete %al
	andl $255,%eax
	jmp .L200
	.align 16
.L204:
	pushl %esi
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	call m3_div
	movl 16(%ebp),%ecx
	movl %eax,%edx
	imull 12(%ecx),%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 8(%ebx),%eax
	addl %esi,%eax
	addl 8(%ecx),%edx
	cmpl %edx,%eax
	setle %al
	andl $255,%eax
	jmp .L200
	.align 16
.L207:
	testl %ebx,%ebx
	je .L209
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+360
	jg .L210
	movl MM_RTTipe+356,%eax
	cmpl %edx,4(%eax)
	jge .L209
.L210:
	pushl $7909
	call _m3_fault
	.align 16
.L209:
	pushl %esi
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	call m3_div
	movl %eax,%edx
	movl 16(%ebp),%eax
	movl %edx,%edi
	imull 12(%eax),%edi
	pushl %eax
	pushl %esi
	movl 20(%ebx),%eax
	pushl %eax
	call RTTipe__IsAlignedOK
	testl %eax,%eax
	jne .L236
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 8(%ebx),%edx
	movl 16(%ebp),%eax
	addl %esi,%edx
	movl 8(%eax),%eax
	addl %edi,%eax
	cmpl %eax,%edx
	setle %al
	andl $255,%eax
	jmp .L200
	.align 16
.L205:
	testl %ebx,%ebx
	je .L212
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+344
	jg .L213
	movl MM_RTTipe+340,%eax
	cmpl %edx,4(%eax)
	jge .L212
.L213:
	pushl $8037
	call _m3_fault
	.align 16
.L212:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl 20(%ebx),%eax
	pushl %eax
	call RTTipe__FieldsAlignedOK
	movl %eax,%edx
	jmp .L237
	.align 16
.L208:
	testl %ebx,%ebx
	je .L214
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+368
	jg .L215
	movl MM_RTTipe+364,%eax
	cmpl %edx,4(%eax)
	jge .L214
.L215:
	pushl $8117
	call _m3_fault
	.align 16
.L214:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl 16(%ebx),%eax
	pushl %eax
	call RTTipe__FieldsAlignedOK
	movl %eax,%edx
	jmp .L237
	.align 16
.L203:
	testl %ebx,%ebx
	je .L216
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+328
	jg .L217
	movl MM_RTTipe+324,%eax
	cmpl %edx,4(%eax)
	jge .L216
.L217:
	pushl $8213
	call _m3_fault
	.align 16
.L216:
	movl %ebx,%edi
	movl 20(%edi),%ecx
	movl %ecx,-12(%ebp)
	pushl %esi
	movl 16(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ebx
	xorl %esi,%esi
	movl 16(%edi),%ecx
	decl %ecx
	movl %ecx,-20(%ebp)
	addl $8,%esp
	jmp .L218
	.align 16
.L219:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl -12(%ebp),%ecx
	pushl %ecx
	call RTTipe__IsAlignedOK
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	je .L237
	movl 24(%edi),%eax
	addl %ebx,%eax
	pushl %eax
	movl 16(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%ebx
	addl $8,%esp
	cmpl %ebx,-16(%ebp)
	je .L236
	incl %esi
.L218:
	cmpl %esi,-20(%ebp)
	jge .L219
	jmp .L236
	.align 16
.L206:
	testl %ebx,%ebx
	je .L223
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+352
	jg .L224
	movl MM_RTTipe+348,%eax
	cmpl %edx,4(%eax)
	jge .L223
.L224:
	pushl $8453
	call _m3_fault
	.align 16
.L223:
	movl %ebx,%edi
	movl 20(%edi),%ebx
	pushl %esi
	movl 16(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,-24(%ebp)
	movl -24(%ebp),%esi
	addl $8,%esp
	jmp .L225
	.align 16
.L226:
	testl %ebx,%ebx
	je .L227
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTTipe+352
	jg .L228
	movl MM_RTTipe+348,%eax
	cmpl %edx,4(%eax)
	jge .L227
.L228:
	pushl $8549
	call _m3_fault
	.align 16
.L227:
	movl %ebx,%edi
	movl 20(%edi),%ebx
.L225:
	cmpb $11,4(%ebx)
	je .L226
.L230:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call RTTipe__IsAlignedOK
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L231
.L237:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L200
	.align 16
.L231:
	movl 24(%edi),%eax
	addl %esi,%eax
	pushl %eax
	movl 16(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%esi
	addl $8,%esp
	cmpl %esi,-24(%ebp)
	jne .L230
.L236:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L235:
.L200:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTTipe__IsAlignedOK,.Lfe11-RTTipe__IsAlignedOK
	.align 16
	.type	 RTTipe__RoundUp,@function
RTTipe__RoundUp:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
.L239:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	leal -1(%ebx,%edx),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	imull %ebx,%eax
.L240:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTTipe__RoundUp,.Lfe12-RTTipe__RoundUp
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTTipe
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_RTTipe
.data
	.align 4
	.type	 MM_RTTipe,@object
	.size	 MM_RTTipe,864
MM_RTTipe:
	.long MM_RTTipe+668
	.long MM_RTTipe+44
	.long MM_RTTipe+308
	.zero	8
	.long MM_RTTipe+520
	.zero	28
	.long 160538455
.byte 6
.byte 153
.byte 194
.byte 6
.byte 81
.byte 6
.byte 83
.byte 15
	.zero	8
	.long 1
	.long 1
	.zero	20
	.long MM_RTTipe+850
	.zero	36
	.long MM_RTTipe+852
	.long MM_RTTipe+148
	.zero	8
	.long -1324862259
.byte 184
.byte 70
.byte 182
.byte 177
.byte 117
.byte 114
.byte 190
.byte 0
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTTipe+819
	.long MM_RTTipe+824
	.long MM_RTTipe+829
	.zero	28
	.long MM_RTTipe+837
	.zero	4
	.long RTTipe__ReadOp
	.long RTTipe__GetFields
	.long RTTipe__GetInt
	.long RTTipe__GetUID
	.long RTTipe__FixSizes
	.long RTTipe__FixFields
	.long RTTipe__FindRecordAlign
	.long RTTipe__FieldsAlignedOK
	.long RTTipe__FindArrayAlign
	.long RTTipe__IsAlignedOK
	.long RTTipe__RoundUp
	.long RTTipe__Get
	.long -1
	.long 1
	.long MM_RTTipe+316
	.long -1324862259
	.long MM_RTTipe+324
	.long 1190547157
	.long MM_RTTipe+332
	.long -1738775955
	.long MM_RTTipe+340
	.long 2064731599
	.long MM_RTTipe+348
	.long -2101500047
	.long MM_RTTipe+356
	.long 1101661198
	.long MM_RTTipe+364
	.long -1183876889
	.long MM_RTTipe+372
	.long 160083678
	.long MM_RTTipe+380
	.long -460255276
	.long MM_RTTipe+388
	.long 243314224
	.zero	4
	.long -1320086116
	.ascii	"RoundUp"
	.zero	1
	.ascii	"IsAlignedOK"
	.zero	1
	.ascii	"FindArrayAlign"
	.zero	1
	.ascii	"FieldsAlignedOK"
	.zero	1
	.ascii	"FindRecordAlign"
	.zero	1
	.ascii	"FixFields"
	.zero	1
	.ascii	"FixSizes"
	.zero	1
	.ascii	"GetUID"
	.zero	1
	.ascii	"GetInt"
	.zero	1
	.ascii	"GetFields"
	.zero	1
	.ascii	"ReadOp"
	.zero	1
	.ascii	"Get"
	.zero	4
	.long RTTipe__RoundUp
	.long MM_RTTipe+396
	.zero	4
	.long RTTipe__IsAlignedOK
	.long MM_RTTipe+404
	.zero	4
	.long RTTipe__FindArrayAlign
	.long MM_RTTipe+416
	.zero	4
	.long RTTipe__FieldsAlignedOK
	.long MM_RTTipe+431
	.zero	4
	.long RTTipe__FindRecordAlign
	.long MM_RTTipe+447
	.zero	4
	.long RTTipe__FixFields
	.long MM_RTTipe+463
	.zero	4
	.long RTTipe__FixSizes
	.long MM_RTTipe+473
	.zero	4
	.long RTTipe__GetUID
	.long MM_RTTipe+482
	.zero	4
	.long RTTipe__GetInt
	.long MM_RTTipe+489
	.zero	4
	.long RTTipe__GetFields
	.long MM_RTTipe+496
	.zero	4
	.long RTTipe__ReadOp
	.long MM_RTTipe+506
	.zero	4
	.long RTTipe__Get
	.long MM_RTTipe+513
	.long MI_RTTipe+1188
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTTipe.m3"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 16
.byte 33
.byte 225
.byte 176
.byte 237
	.ascii	"RTTipe.TList"
	.zero	1
.byte 16
.byte 0
	.ascii	"RTTipe.Ptr"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
