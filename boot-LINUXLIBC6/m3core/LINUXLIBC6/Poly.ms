	.file	"Poly.mc"
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
	.type	 Poly__Sum,@function
Poly__Sum:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl (%edx),%ecx
	xorl (%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 4(%edx),%edx
	xorl 4(%eax),%edx
	movl %edx,-4(%ebp)
	movl 16(%ebp),%edx
	subl $16,%esp
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Poly__Sum,.Lfe1-Poly__Sum
	.align 16
	.type	 Poly__Product,@function
Poly__Product:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	xorl %eax,%eax
	pushl %esi
	movl $1,%esi
	pushl %ebx
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl %eax,-16(%ebp)
	movl %eax,-12(%ebp)
	movl %eax,-8(%ebp)
	movl 8(%ebp),%edx
	movl %eax,-4(%ebp)
	movl (%edx),%eax
	movl %eax,-24(%ebp)
	movl 4(%edx),%eax
	movl %eax,-20(%ebp)
.L3:
	movl 12(%ebp),%eax
	movl $31,%ebx
	movl (%eax,%esi,4),%edi
.L4:
	cmpl $31,%ebx
	jg .L5
	btl %ebx,%edi
	jnc .L5
	leal -32(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call Poly__DoubleINC
	addl $8,%esp
.L5:
	leal -32(%ebp),%eax
	pushl %eax
	call Poly__DoubleTimesX
	addl $4,%esp
	decl %ebx
	jns .L4
	decl %esi
	jns .L3
	movl 16(%ebp),%eax
	pushl %eax
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	pushl $MI_Poly+44
	call Poly__ComputeMod
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Poly__Product,.Lfe2-Poly__Product
	.align 16
	.type	 Poly__ComputeMod,@function
Poly__ComputeMod:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
.L13:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl 8(%ebp),%edx
	movl %ecx,RTThread__handlerStack
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	cmpb $0,MM_Poly+148
	jne .L14
	call Poly__FindByteOrder
.L14:
	movl %edi,%ebx
	andl $3,%ebx
	cmpl $3,%esi
	jle .L17
	testl %ebx,%ebx
	je .L15
	movl $4,%eax
	subl %ebx,%eax
	movl %eax,%ebx
	leal -1(%ebx),%eax
	cmpl $2,%eax
	jbe .L16
	pushl $1441
	call _m3_fault
	.align 16
.L16:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edi
	pushl %eax
	call Poly__ExtendBytes
	addl %ebx,%edi
	subl %ebx,%esi
	addl $16,%esp
.L15:
	cmpl $3,%esi
	jle .L17
	movl %esi,%ebx
	andl $3,%ebx
	subl %ebx,%esi
	cmpb $0,MM_Poly+149
	je .L18
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
	pushl %eax
	call Poly__ExtendWords_LE
	jmp .L23
	.align 16
.L18:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
	pushl %eax
	call Poly__ExtendWords_BE
.L23:
	addl $16,%esp
	addl %esi,%edi
	movl %ebx,%esi
.L17:
	testl %esi,%esi
	jle .L20
	leal -1(%esi),%eax
	cmpl $2,%eax
	jbe .L21
	pushl $1745
	call _m3_fault
	.align 16
.L21:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
	pushl %eax
	call Poly__ExtendBytes
.L20:
	movl 20(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L22:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Poly__ComputeMod,.Lfe3-Poly__ComputeMod
	.align 16
	.type	 Poly__Fix32,@function
Poly__Fix32:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jge .L25
	orl $-2147483648,%eax
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Poly__Fix32,.Lfe4-Poly__Fix32
	.align 16
	.type	 Poly__ExtendBytes,@function
Poly__ExtendBytes:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	xorl %ecx,%ecx
	movb 16(%ebp),%cl
	movl %ecx,-36(%ebp)
	leal 0(,%ecx,8),%edx
	leal -8(%edx),%eax
	cmpl $16,%eax
	jbe .L28
	pushl $2081
	call _m3_fault
	.align 16
.L28:
	movb %dl,%al
	xorl %edx,%edx
	movb %al,%dl
	movl $32,%eax
	subb %dl,%al
	movl 8(%ebp),%edi
	movl %edi,-44(%ebp)
	xorl %ecx,%ecx
	movb %al,%cl
	movl (%edi),%ebx
	movl %ecx,-40(%ebp)
	movl $0,-32(%ebp)
	cmpl $31,%ecx
	ja .L29
	movl %ebx,%edi
	sall %cl,%edi
	movl %edi,-32(%ebp)
.L29:
	movl $0,-28(%ebp)
	cmpl $31,%edx
	ja .L31
	movl %edx,%ecx
	shrl %cl,%ebx
	movl %ebx,-28(%ebp)
.L31:
	movl -44(%ebp),%edi
	movl 4(%edi),%eax
	movl $0,-44(%ebp)
	cmpl $31,-40(%ebp)
	ja .L33
	movl %eax,%edi
	movl -40(%ebp),%ecx
	sall %cl,%edi
	movl %edi,-44(%ebp)
.L33:
	xorl %ebx,%ebx
	cmpl $31,%edx
	ja .L35
	movl %eax,%ebx
	movl %edx,%ecx
	shrl %cl,%ebx
.L35:
	movl -32(%ebp),%edi
	pushl %edi
	call Poly__Fix32
	movl %eax,-8(%ebp)
	movl -28(%ebp),%eax
	xorl -44(%ebp),%eax
	pushl %eax
	call Poly__Fix32
	movl %eax,-4(%ebp)
	addl $8,%esp
	cmpl $1,-36(%ebp)
	jle .L37
	cmpl $2,-36(%ebp)
	jle .L38
	cmpl $3,-36(%ebp)
	jle .L39
.L37:
	xorl %eax,%eax
	movb %bl,%al
	cmpl $255,%eax
	jbe .L40
	pushl $2321
	call _m3_fault
	.align 16
.L40:
	movb %al,-12(%ebp)
	movl %ebx,%eax
	sall $16,%eax
	shrl $24,%eax
	cmpl $255,%eax
	jbe .L41
	pushl $2337
	call _m3_fault
	.align 16
.L41:
	movb %al,-11(%ebp)
	movl %ebx,%eax
	sall $8,%eax
	shrl $24,%eax
	cmpl $255,%eax
	jbe .L42
	pushl $2353
	call _m3_fault
	.align 16
.L42:
	movb %al,-10(%ebp)
	testl %esi,%esi
	jne .L43
	pushl $2372
	call _m3_fault
	.align 16
.L43:
	movb (%esi),%al
	jmp .L55
	.align 16
.L38:
	xorl %eax,%eax
	movb %bl,%al
	cmpl $255,%eax
	jbe .L45
	pushl $2401
	call _m3_fault
	.align 16
.L45:
	movb %al,-12(%ebp)
	movl %ebx,%eax
	sall $16,%eax
	shrl $24,%eax
	cmpl $255,%eax
	jbe .L46
	pushl $2417
	call _m3_fault
	.align 16
.L46:
	movb %al,-11(%ebp)
	testl %esi,%esi
	jne .L47
	pushl $2436
	call _m3_fault
	.align 16
.L47:
	movb (%esi),%al
	movb %al,-10(%ebp)
	movb 1(%esi),%al
	jmp .L55
	.align 16
.L39:
	xorl %eax,%eax
	movb %bl,%al
	cmpl $255,%eax
	jbe .L49
	pushl $2481
	call _m3_fault
	.align 16
.L49:
	movb %al,-12(%ebp)
	testl %esi,%esi
	jne .L50
	pushl $2500
	call _m3_fault
	.align 16
.L50:
	movb (%esi),%al
	movb %al,-11(%ebp)
	movb 1(%esi),%al
	movb %al,-10(%ebp)
	movb 2(%esi),%al
.L55:
	movb %al,-9(%ebp)
	cmpb $0,MM_Poly+149
	je .L54
	movl 20(%ebp),%eax
	pushl %eax
	pushl $4
	leal -12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	call Poly__ExtendWords_LE
	jmp .L27
	.align 16
.L54:
	movl 20(%ebp),%eax
	pushl %eax
	pushl $4
	leal -12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	call Poly__ExtendWords_BE
.L27:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Poly__ExtendBytes,.Lfe5-Poly__ExtendBytes
	.align 16
	.type	 Poly__ExtendWords_LE,@function
Poly__ExtendWords_LE:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%edi
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl (%eax),%ecx
	movl 4(%eax),%eax
	movl %eax,-40(%ebp)
	jmp .L57
	.align 16
.L58:
	movl %ecx,-4(%ebp)
	xorl %ebx,%ebx
	movb -4(%ebp),%bl
	movl %ebx,-24(%ebp)
	xorl %ebx,%ebx
	movb -3(%ebp),%bl
	movl %ebx,-28(%ebp)
	movl -24(%ebp),%ebx
	movl MI_PolyBasis+6196(,%ebx,8),%edx
	movl -28(%ebp),%ebx
	xorl MI_PolyBasis+4148(,%ebx,8),%edx
	xorl %ebx,%ebx
	movb -2(%ebp),%bl
	movl %ebx,-32(%ebp)
	xorl %ebx,%ebx
	movb -1(%ebp),%bl
	movl %ebx,-36(%ebp)
	movl -32(%ebp),%ebx
	movl MI_PolyBasis+2100(,%ebx,8),%eax
	movl -36(%ebp),%ebx
	movl -40(%ebp),%ecx
	xorl MI_PolyBasis+52(,%ebx,8),%eax
	xorl %eax,%edx
	xorl %edx,%ecx
	testl %esi,%esi
	jne .L59
	pushl $2916
	call _m3_fault
	.align 16
.L59:
	movl -24(%ebp),%ebx
	movl MI_PolyBasis+6200(,%ebx,8),%eax
	movl -28(%ebp),%ebx
	xorl MI_PolyBasis+4152(,%ebx,8),%eax
	movl -32(%ebp),%ebx
	movl MI_PolyBasis+2104(,%ebx,8),%edx
	movl -36(%ebp),%ebx
	addl $-4,%edi
	xorl MI_PolyBasis+56(,%ebx,8),%edx
	xorl %edx,%eax
	xorl (%esi),%eax
	movl %eax,-40(%ebp)
	addl $4,%esi
.L57:
	testl %edi,%edi
	jg .L58
	movl %ecx,-20(%ebp)
	movl -40(%ebp),%ebx
	movl %ebx,-16(%ebp)
	movl 20(%ebp),%edx
	leal -52(%ebp),%esp
	movl %ecx,(%edx)
	movl -16(%ebp),%eax
	movl %eax,4(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Poly__ExtendWords_LE,.Lfe6-Poly__ExtendWords_LE
	.align 16
	.type	 Poly__ExtendWords_BE,@function
Poly__ExtendWords_BE:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,-40(%ebp)
	movl (%eax),%ecx
	movl %ecx,-36(%ebp)
	movl 4(%eax),%eax
	movl %eax,-32(%ebp)
	jmp .L62
	.align 16
.L63:
	cmpl $0,-40(%ebp)
	jne .L64
	pushl $3236
	call _m3_fault
	.align 16
.L64:
	movl -40(%ebp),%ecx
	movl (%ecx),%eax
	movl %eax,-4(%ebp)
	movb -1(%ebp),%al
	movb %al,-8(%ebp)
	movb -2(%ebp),%al
	movb %al,-7(%ebp)
	movb -3(%ebp),%al
	movb %al,-6(%ebp)
	movb -4(%ebp),%al
	movb %al,-5(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movzbl -9(%ebp),%edi
	movzbl -10(%ebp),%esi
	xorl %ebx,%ebx
	movb -11(%ebp),%bl
	xorl %ecx,%ecx
	movb -12(%ebp),%cl
	movl MI_PolyBasis+6196(,%edi,8),%edx
	xorl MI_PolyBasis+4148(,%esi,8),%edx
	movl MI_PolyBasis+2100(,%ebx,8),%eax
	xorl MI_PolyBasis+52(,%ecx,8),%eax
	xorl %eax,%edx
	xorl -32(%ebp),%edx
	movl %edx,-36(%ebp)
	movl MI_PolyBasis+6200(,%edi,8),%eax
	xorl MI_PolyBasis+4152(,%esi,8),%eax
	movl MI_PolyBasis+2104(,%ebx,8),%edx
	xorl MI_PolyBasis+56(,%ecx,8),%edx
	xorl %edx,%eax
	xorl -8(%ebp),%eax
	movl %eax,-32(%ebp)
	addl $-4,16(%ebp)
	addl $4,-40(%ebp)
.L62:
	cmpl $0,16(%ebp)
	jg .L63
	movl -36(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl 20(%ebp),%edx
	movl -36(%ebp),%ecx
	leal -56(%ebp),%esp
	movl %ecx,(%edx)
	movl -24(%ebp),%eax
	movl %eax,4(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Poly__ExtendWords_BE,.Lfe7-Poly__ExtendWords_BE
.section	.rodata
	.align 4
	.type	 L_9.0,@object
	.size	 L_9.0,64
L_9.0:
	.long .L77
	.long .L78
	.long .L79
	.long .L80
	.long .L81
	.long .L82
	.long .L83
	.long .L84
	.long .L85
	.long .L86
	.long .L87
	.long .L88
	.long .L89
	.long .L90
	.long .L91
	.long .L92
.text
	.align 16
	.type	 Poly__Power,@function
Poly__Power:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %esi
	pushl %ebx
	cmpb $0,MM_Poly+148
	jne .L67
	call Poly__FindByteOrder
.L67:
	cmpb $0,MM_Poly+149
	je .L68
	movb 8(%ebp),%cl
	movb %cl,-40(%ebp)
	movb 9(%ebp),%cl
	movb %cl,-36(%ebp)
	movb 10(%ebp),%cl
	movb %cl,-32(%ebp)
	movb 11(%ebp),%cl
	movb %cl,-28(%ebp)
	jmp .L69
	.align 16
.L68:
	movb 8(%ebp),%cl
	movb %cl,-28(%ebp)
	movb 9(%ebp),%cl
	movb %cl,-32(%ebp)
	movb 10(%ebp),%cl
	movb %cl,-36(%ebp)
	movb 11(%ebp),%cl
	movb %cl,-40(%ebp)
.L69:
	cmpb $0,-40(%ebp)
	setne %al
	cmpb $0,-36(%ebp)
	je .L71
	andl $255,%eax
	addl $2,%eax
.L71:
	cmpb $0,-32(%ebp)
	je .L73
	andl $255,%eax
	addl $4,%eax
	cmpl $15,%eax
	jle .L74
	pushl $3953
	call _m3_fault
	.align 16
.L74:
.L73:
	cmpb $0,-28(%ebp)
	je .L75
	andl $255,%eax
	addl $8,%eax
	cmpl $15,%eax
	jle .L76
	pushl $3969
	call _m3_fault
	.align 16
.L76:
.L75:
	andl $255,%eax
	jmp *L_9.0(,%eax,4)
	.align 16
.L77:
	movl 12(%ebp),%eax
	movl MI_Poly+52,%edx
	movl %edx,(%eax)
	movl MI_Poly+56,%edx
	movl %edx,4(%eax)
	jmp .L66
	.align 16
.L78:
	xorl %ecx,%ecx
	movb -40(%ebp),%cl
	movl $MI_PolyBasis+8244,%edx
	jmp .L95
	.align 16
.L79:
	xorl %ecx,%ecx
	movb -36(%ebp),%cl
	movl $MI_PolyBasis+10292,%edx
	jmp .L95
	.align 16
.L80:
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L81:
	xorl %ecx,%ecx
	movb -32(%ebp),%cl
	movl $MI_PolyBasis+12340,%edx
	jmp .L95
	.align 16
.L82:
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L83:
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L84:
	leal -16(%ebp),%ebx
	pushl %ebx
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	call Poly__Product
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L85:
	xorl %ecx,%ecx
	movb -28(%ebp),%cl
	movl $MI_PolyBasis+14388,%edx
.L95:
	movl 12(%ebp),%ebx
	movl (%edx,%ecx,8),%eax
	movl %eax,(%ebx)
	movl 4(%edx,%ecx,8),%eax
	movl %eax,4(%ebx)
	jmp .L66
	.align 16
.L86:
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L87:
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L88:
	leal -16(%ebp),%ebx
	pushl %ebx
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	call Poly__Product
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L89:
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L90:
	leal -16(%ebp),%ebx
	pushl %ebx
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	call Poly__Product
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L91:
	leal -16(%ebp),%ebx
	pushl %ebx
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	call Poly__Product
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	jmp .L96
	.align 16
.L92:
	leal -16(%ebp),%esi
	pushl %esi
	xorl %eax,%eax
	movb -32(%ebp),%al
	leal MI_PolyBasis+12340(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -28(%ebp),%al
	leal MI_PolyBasis+14388(,%eax,8),%eax
	pushl %eax
	call Poly__Product
	leal -24(%ebp),%ebx
	pushl %ebx
	xorl %eax,%eax
	movb -40(%ebp),%al
	leal MI_PolyBasis+8244(,%eax,8),%eax
	pushl %eax
	xorl %eax,%eax
	movb -36(%ebp),%al
	leal MI_PolyBasis+10292(,%eax,8),%eax
	pushl %eax
	call Poly__Product
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %esi
.L96:
	call Poly__Product
.L66:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Poly__Power,.Lfe8-Poly__Power
	.align 16
	.type	 Poly__TimesX,@function
Poly__TimesX:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	subl $16,%esp
	movl (%eax),%edx
	shrl $1,%edx
	movl %edx,-8(%ebp)
	testb $1,4(%eax)
	je .L98
	orl $-2147483648,%edx
	movl %edx,-8(%ebp)
.L98:
	movl 4(%eax),%eax
	shrl $1,%eax
	movl %eax,-4(%ebp)
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Poly__TimesX,.Lfe9-Poly__TimesX
	.align 16
	.type	 Poly__DoubleINC,@function
Poly__DoubleINC:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	movl (%eax),%eax
	xorl %eax,(%edx)
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl %ebp,%esp
	movl 4(%edx),%ecx
	xorl %ecx,4(%eax)
	movl 8(%edx),%ecx
	xorl %ecx,8(%eax)
	movl 12(%edx),%edx
	xorl %edx,12(%eax)
	popl %ebp
	ret
.Lfe10:
	.size	 Poly__DoubleINC,.Lfe10-Poly__DoubleINC
	.align 16
	.type	 Poly__DoubleTimesX,@function
Poly__DoubleTimesX:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	shrl $1,(%eax)
	movl 8(%ebp),%eax
	testb $1,4(%eax)
	je .L101
	orl $-2147483648,(%eax)
.L101:
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	shrl $1,%edx
	movl %edx,4(%eax)
	testb $1,8(%eax)
	je .L102
	orl $-2147483648,%edx
	movl %edx,4(%eax)
.L102:
	movl 8(%ebp),%eax
	movl 8(%eax),%edx
	shrl $1,%edx
	movl %edx,8(%eax)
	testb $1,12(%eax)
	je .L103
	orl $-2147483648,%edx
	movl %edx,8(%eax)
.L103:
	movl 8(%ebp),%eax
	movl %ebp,%esp
	shrl $1,12(%eax)
	popl %ebp
	ret
.Lfe11:
	.size	 Poly__DoubleTimesX,.Lfe11-Poly__DoubleTimesX
	.align 16
	.type	 Poly__FindByteOrder,@function
Poly__FindByteOrder:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl $86,%ecx
	movl $120,%edx
	pushl %esi
	movl $18,%esi
	pushl %ebx
	movl $305419896,-8(%ebp)
	movl $305419896,-4(%ebp)
	movl $52,%ebx
	cmpb $120,-4(%ebp)
	jne .L105
	xorl %eax,%eax
	movb -3(%ebp),%al
	cmpl %eax,%ecx
	jne .L105
	xorl %eax,%eax
	movb -2(%ebp),%al
	cmpl %eax,%ebx
	jne .L105
	xorl %eax,%eax
	movb -1(%ebp),%al
	cmpl %eax,%esi
	jne .L105
	movb $1,MM_Poly+149
	jmp .L106
	.align 16
.L105:
	xorl %eax,%eax
	movb -1(%ebp),%al
	cmpl %eax,%edx
	jne .L107
	xorl %eax,%eax
	movb -2(%ebp),%al
	cmpl %eax,%ecx
	jne .L107
	xorl %eax,%eax
	movb -3(%ebp),%al
	cmpl %eax,%ebx
	jne .L107
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl %eax,%esi
	jne .L107
	movb $1,MM_Poly+150
	jmp .L106
	.align 16
.L107:
	pushl $5552
	call _m3_fault
	.align 16
.L106:
	leal -16(%ebp),%esp
	movb $1,MM_Poly+148
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Poly__FindByteOrder,.Lfe12-Poly__FindByteOrder
	.align 16
	.type	 Poly__ToBytes,@function
Poly__ToBytes:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb (%eax),%dl
	cmpl $255,%edx
	jbe .L109
	pushl $5681
	call _m3_fault
	.align 16
.L109:
	movl 12(%ebp),%eax
	movb %dl,(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 1(%eax),%dl
	cmpl $255,%edx
	jbe .L110
	pushl $5697
	call _m3_fault
	.align 16
.L110:
	movl 12(%ebp),%eax
	movb %dl,1(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 2(%eax),%dl
	cmpl $255,%edx
	jbe .L111
	pushl $5713
	call _m3_fault
	.align 16
.L111:
	movl 12(%ebp),%eax
	movb %dl,2(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 3(%eax),%dl
	cmpl $255,%edx
	jbe .L112
	pushl $5729
	call _m3_fault
	.align 16
.L112:
	movl 12(%ebp),%eax
	movb %dl,3(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 4(%eax),%dl
	cmpl $255,%edx
	jbe .L113
	pushl $5745
	call _m3_fault
	.align 16
.L113:
	movl 12(%ebp),%eax
	movb %dl,4(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 5(%eax),%dl
	cmpl $255,%edx
	jbe .L114
	pushl $5761
	call _m3_fault
	.align 16
.L114:
	movl 12(%ebp),%eax
	movb %dl,5(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 6(%eax),%dl
	cmpl $255,%edx
	jbe .L115
	pushl $5777
	call _m3_fault
	.align 16
.L115:
	movl 12(%ebp),%eax
	movb %dl,6(%eax)
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 7(%eax),%dl
	cmpl $255,%edx
	jbe .L116
	pushl $5793
	call _m3_fault
	.align 16
.L116:
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movb %dl,7(%eax)
	popl %ebp
	ret
.Lfe13:
	.size	 Poly__ToBytes,.Lfe13-Poly__ToBytes
	.align 16
	.type	 Poly__FromBytes,@function
Poly__FromBytes:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	xorl %ebx,%ebx
	movb (%ecx),%bl
	xorl %eax,%eax
	movb 1(%ecx),%al
	sall $8,%eax
	orl %eax,%ebx
	xorl %edx,%edx
	movb 2(%ecx),%dl
	sall $16,%edx
	xorl %eax,%eax
	movb 3(%ecx),%al
	sall $24,%eax
	orl %eax,%edx
	orl %edx,%ebx
	pushl %ebx
	call Poly__Fix32
	movl %eax,%edx
	movl 12(%ebp),%eax
	movl %edx,(%eax)
	movl 8(%ebp),%ecx
	xorl %ebx,%ebx
	movb 4(%ecx),%bl
	xorl %eax,%eax
	movb 5(%ecx),%al
	sall $8,%eax
	orl %eax,%ebx
	xorl %edx,%edx
	movb 6(%ecx),%dl
	sall $16,%edx
	xorl %eax,%eax
	movb 7(%ecx),%al
	sall $24,%eax
	orl %eax,%edx
	orl %edx,%ebx
	pushl %ebx
	call Poly__Fix32
	movl %eax,%edx
	movl 12(%ebp),%eax
	movl %edx,4(%eax)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Poly__FromBytes,.Lfe14-Poly__FromBytes
	.align 16
	.type	 _INITM_Poly,@function
_INITM_Poly:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 _INITM_Poly,.Lfe15-_INITM_Poly
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Poly
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_Poly
.data
	.align 4
	.type	 MM_Poly,@object
	.size	 MM_Poly,816
MM_Poly:
	.long MM_Poly+648
	.long MM_Poly+44
	.zero	12
	.long MM_Poly+464
	.zero	16
	.long _INITM_Poly
	.zero	8
	.long 2070350314
.byte 87
.byte 176
.byte 98
.byte 105
.byte 189
.byte 185
.byte 5
.byte 18
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_Poly+799
	.zero	36
	.long MM_Poly+801
	.long MM_Poly+160
	.zero	4
	.long Poly__Fix32
	.long Poly__ExtendBytes
	.zero	8
	.long -988662723
.byte 114
.byte 28
.byte 187
.byte 196
.byte 79
.byte 40
.byte 169
.byte 1
	.zero	8
	.long 4
	.long 1
	.zero	20
	.long MM_Poly+794
	.zero	44
	.long Poly__ExtendWords_LE
	.long Poly__ExtendWords_BE
	.long Poly__DoubleINC
	.long Poly__DoubleTimesX
	.long Poly__FindByteOrder
	.long Poly__Sum
	.long Poly__Product
	.long Poly__TimesX
	.long Poly__Power
	.long Poly__ComputeMod
	.long Poly__ToBytes
	.long Poly__FromBytes
	.ascii	"_INITM_Poly"
	.zero	1
	.ascii	"FromBytes"
	.zero	1
	.ascii	"ToBytes"
	.zero	1
	.ascii	"FindByteOrder"
	.zero	1
	.ascii	"DoubleTimesX"
	.zero	1
	.ascii	"DoubleINC"
	.zero	1
	.ascii	"TimesX"
	.zero	1
	.ascii	"Power"
	.zero	1
	.ascii	"ExtendWords_BE"
	.zero	1
	.ascii	"ExtendWords_LE"
	.zero	1
	.ascii	"ExtendBytes"
	.zero	1
	.ascii	"Fix32"
	.zero	1
	.ascii	"ComputeMod"
	.zero	1
	.ascii	"Product"
	.zero	1
	.ascii	"Sum"
	.zero	2
	.long _INITM_Poly
	.long MM_Poly+312
	.zero	4
	.long Poly__FromBytes
	.long MM_Poly+324
	.long MI_Poly+92
	.long Poly__ToBytes
	.long MM_Poly+334
	.long MI_Poly+88
	.long Poly__FindByteOrder
	.long MM_Poly+342
	.zero	4
	.long Poly__DoubleTimesX
	.long MM_Poly+356
	.zero	4
	.long Poly__DoubleINC
	.long MM_Poly+369
	.zero	4
	.long Poly__TimesX
	.long MM_Poly+379
	.long MI_Poly+76
	.long Poly__Power
	.long MM_Poly+386
	.long MI_Poly+80
	.long Poly__ExtendWords_BE
	.long MM_Poly+392
	.zero	4
	.long Poly__ExtendWords_LE
	.long MM_Poly+407
	.zero	4
	.long Poly__ExtendBytes
	.long MM_Poly+422
	.zero	4
	.long Poly__Fix32
	.long MM_Poly+434
	.zero	4
	.long Poly__ComputeMod
	.long MM_Poly+440
	.long MI_Poly+84
	.long Poly__Product
	.long MM_Poly+451
	.long MI_Poly+72
	.long Poly__Sum
	.long MM_Poly+459
	.long MI_Poly+68
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/fingerprint/Poly.m3"
	.zero	1
.byte 1
.byte 16
.byte 26
.byte 4
.byte 0
.byte 14
.byte 0
	.ascii	"Poly.IntPtr"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
