	.file	"LongFloat.mc"
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
	.type	 LongFloat__Scalb,@function
LongFloat__Scalb:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 16(%ebp),%edx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	call ldexp
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 LongFloat__Scalb,.Lfe1-LongFloat__Scalb
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0xc08ff000
.text
	.align 16
	.type	 LongFloat__Logb,@function
LongFloat__Logb:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L5:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call LongFloat__Class
	cmpl $1,%eax
	jle .L6
	cmpl $2,%eax
	jle .L7
	cmpl $3,%eax
	jle .L8
	cmpl $4,%eax
	jle .L9
	cmpl $5,%eax
	jle .L10
.L6:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl 8(%ebp)
	jmp .L4
	.align 16
.L7:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl 8(%ebp)
	fabs
	jmp .L4
	.align 16
.L10:
	movl MM_LongFloat+156,%eax
	movl %eax,-8(%ebp)
	movl MM_LongFloat+160,%eax
	movl %eax,-4(%ebp)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -8(%ebp)
	jmp .L4
	.align 16
.L8:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	movw 14(%ebp),%ax
	sall $17,%eax
	shrl $21,%eax
	addl $-1023,%eax
	pushl %eax
	fildl (%esp)
	addl $4,%esp
	jmp .L4
	.align 16
.L9:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl .LC0
.L13:
.L4:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LongFloat__Logb,.Lfe2-LongFloat__Logb
	.align 16
	.type	 LongFloat__ILogb,@function
LongFloat__ILogb:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	movl %eax,-8(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-4(%ebp)
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	call LongFloat__Class
	addl $8,%esp
	cmpl $1,%eax
	jle .L15
	cmpl $2,%eax
	jle .L16
	cmpl $3,%eax
	jle .L17
	cmpl $4,%eax
	jle .L18
	cmpl $5,%eax
	jle .L19
.L15:
	pushl $816
	call _m3_fault
	.align 16
.L16:
	movl $2147483647,%eax
	jmp .L27
	.align 16
.L19:
	movl $-2147483648,%eax
	jmp .L27
	.align 16
.L17:
	xorl %eax,%eax
	movw -2(%ebp),%ax
	sall $17,%eax
	shrl $21,%eax
	addl $-1023,%eax
	jmp .L27
	.align 16
.L18:
	movl -4(%ebp),%ecx
	andl $1048575,%ecx
	jne .L20
	movl $-2147483648,%edx
	movl $-1043,%eax
	movl -8(%ebp),%ecx
	jmp .L22
	.align 16
.L20:
	movl $524288,%edx
	movl $-1023,%eax
	jmp .L22
	.align 16
.L23:
	shrl $1,%edx
	decl %eax
.L22:
	testl %edx,%ecx
	je .L23
.L27:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 LongFloat__ILogb,.Lfe3-LongFloat__ILogb
.section	.rodata
	.align 4
.LC1:
	.long 0x0,0x40000000
	.align 4
.LC2:
	.long 0x0,0x80000000,0x4000
.text
	.align 16
	.type	 LongFloat__NextAfter,@function
LongFloat__NextAfter:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %esi
	pushl %ebx
.L29:
	movl $5,-28(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-32(%ebp)
	leal -32(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl %eax,-24(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-20(%ebp)
	movl 16(%ebp),%eax
	movl %eax,-16(%ebp)
	movl 20(%ebp),%eax
	movl %eax,-12(%ebp)
	fldl 8(%ebp)
	fldl 16(%ebp)
	fucomp %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L30
	movl %edx,RTThread__handlerStack
	jmp .L28
	.align 16
.L30:
	subl $8,%esp
	fstpl (%esp)
	call LongFloat__IsNaN
	addl $8,%esp
	testl %eax,%eax
	jne .L31
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	call LongFloat__Finite
	addl $8,%esp
	testl %eax,%eax
	jne .L32
.L31:
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl 8(%ebp)
	jmp .L28
	.align 16
.L32:
	movl 20(%ebp),%eax
	movl 16(%ebp),%edx
	pushl %eax
	pushl %edx
	call LongFloat__IsNaN
	addl $8,%esp
	testl %eax,%eax
	je .L33
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl 16(%ebp)
	jmp .L28
	.align 16
.L33:
	fldl 8(%ebp)
	fldz
	fucom %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L34
	fstp %st(0)
	fstp %st(0)
	xorl %eax,%eax
	movb -1(%ebp),%al
	andb $127,%al
	xorl %edx,%edx
	movb -9(%ebp),%dl
	andl $128,%edx
	orb %al,%dl
	movb %dl,-1(%ebp)
	andw $32783,-2(%ebp)
	andl $-1048576,-4(%ebp)
	movl $1,-8(%ebp)
	jmp .L52
	.align 16
.L34:
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L35
	fxch %st(1)
	fcoml 16(%ebp)
	fnstsw %ax
	andb $69,%ah
	je .L53
	fxch %st(1)
.L35:
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L54
	fcompl 16(%ebp)
	fnstsw %ax
	andb $5,%ah
	je .L37
	jmp .L36
	.align 16
.L53:
	fstp %st(0)
	fstp %st(0)
.L36:
	movl -20(%ebp),%edx
	movl %edx,%eax
	andl $1048575,%eax
	jne .L38
	cmpl $0,-24(%ebp)
	jne .L42
	orl $1048575,%edx
	movl %edx,-20(%ebp)
	movl $-1,-24(%ebp)
	xorl %edx,%edx
	movw -18(%ebp),%dx
	movl %edx,%eax
	sall $17,%eax
	shrl $21,%eax
	decl %eax
	jns .L39
	pushl $1457
	call _m3_fault
	.align 16
.L39:
	andl $-32753,%edx
	andl $2047,%eax
	sall $4,%eax
	orw %dx,%ax
	movw %ax,-18(%ebp)
	testl $32752,-18(%ebp)
	jne .L44
	fldl 8(%ebp)
	fadd %st(0),%st
	fldt .LC2
	fdivrp %st,%st(1)
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	subl $8,%esp
	fstpl (%esp)
	popl %ebx
	popl %esi
	movl %ebx,-40(%ebp)
	movl %esi,-36(%ebp)
	fldl -40(%ebp)
	jmp .L28
	.align 16
.L38:
	cmpl $0,-24(%ebp)
	jne .L42
	movl $-1,-24(%ebp)
	decl %eax
	jns .L50
	pushl $1537
	call _m3_fault
	.align 16
.L42:
	decl -24(%ebp)
	jmp .L44
	.align 16
.L54:
	fstp %st(0)
.L37:
	movl -20(%ebp),%edx
	movl %edx,%eax
	andl $1048575,%eax
	cmpl $1048575,%eax
	jne .L45
	cmpl $-1,-24(%ebp)
	jne .L49
	andl $-1048576,%edx
	movl %edx,-20(%ebp)
	movl $0,-24(%ebp)
	xorl %ecx,%ecx
	movw -18(%ebp),%cx
	movl %ecx,%eax
	sall $17,%eax
	shrl $21,%eax
	leal 1(%eax),%edx
	cmpl $2047,%edx
	jle .L46
	pushl $1649
	call _m3_fault
	.align 16
.L46:
	movl %ecx,%eax
	andl $-32753,%eax
	andl $2047,%edx
	sall $4,%edx
	orw %ax,%dx
	movw %dx,-18(%ebp)
	xorl %eax,%eax
	movw %dx,%ax
	sall $17,%eax
	shrl $21,%eax
	cmpl $2047,%eax
	jne .L44
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl 8(%ebp)
	fadd %st(0),%st
	jmp .L28
	.align 16
.L45:
	cmpl $-1,-24(%ebp)
	jne .L49
	movl $0,-24(%ebp)
	incl %eax
	cmpl $1048575,%eax
	jle .L50
	pushl $1729
	call _m3_fault
	.align 16
.L50:
	andl $-1048576,%edx
	andl $1048575,%eax
	orl %eax,%edx
	movl %edx,-20(%ebp)
	jmp .L44
	.align 16
.L49:
	incl -24(%ebp)
.L44:
	movl -24(%ebp),%eax
	movl %eax,-8(%ebp)
	movl -20(%ebp),%eax
	movl %eax,-4(%ebp)
.L52:
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -8(%ebp)
.L51:
.L28:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 LongFloat__NextAfter,.Lfe4-LongFloat__NextAfter
	.align 16
	.type	 LongFloat__CopySign,@function
LongFloat__CopySign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	xorl %edx,%edx
	movb -1(%ebp),%dl
	andb $127,%dl
	xorl %eax,%eax
	movb 23(%ebp),%al
	andl $128,%eax
	orb %dl,%al
	movb %al,-1(%ebp)
	fldl -8(%ebp)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 LongFloat__CopySign,.Lfe5-LongFloat__CopySign
	.align 16
	.type	 LongFloat__Finite,@function
LongFloat__Finite:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	movl %eax,-8(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	sall $17,%eax
	shrl $21,%eax
	cmpl $2047,%eax
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 LongFloat__Finite,.Lfe6-LongFloat__Finite
	.align 16
	.type	 LongFloat__IsNaN,@function
LongFloat__IsNaN:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	xorl %ecx,%ecx
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-8(%ebp)
	movl 12(%ebp),%edx
	movl %edx,-4(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	sall $17,%eax
	shrl $21,%eax
	cmpl $2047,%eax
	jne .L58
	testl $1048575,%edx
	jne .L59
	testl %ebx,%ebx
	je .L58
.L59:
	movl $1,%ecx
.L58:
	movl %ecx,%eax
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 LongFloat__IsNaN,.Lfe7-LongFloat__IsNaN
	.align 16
	.type	 LongFloat__Sign,@function
LongFloat__Sign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	movl %eax,-8(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movb -1(%ebp),%al
	shrl $7,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 LongFloat__Sign,.Lfe8-LongFloat__Sign
	.align 16
	.type	 LongFloat__Differs,@function
LongFloat__Differs:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%edx
	fldl 8(%ebp)
	fldl 16(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	je .L63
	fcompp
	fnstsw %ax
	andb $69,%ah
	cmpb $1,%ah
	sete %al
	xorl %edx,%edx
	movb %al,%dl
	jmp .L62
	.align 16
.L63:
	fstp %st(0)
	fstp %st(0)
.L62:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 LongFloat__Differs,.Lfe9-LongFloat__Differs
	.align 16
	.type	 LongFloat__Unordered,@function
LongFloat__Unordered:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%edx
	fldl 8(%ebp)
	fldl 16(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L66
	fcompp
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	setb %al
	xorl %edx,%edx
	movb %al,%dl
	jmp .L65
	.align 16
.L66:
	fstp %st(0)
	fstp %st(0)
.L65:
	movl %edx,%eax
	xorb $1,%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 LongFloat__Unordered,.Lfe10-LongFloat__Unordered
	.align 16
	.type	 LongFloat__Class,@function
LongFloat__Class:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%ecx
	movl %ecx,-8(%ebp)
	movl 12(%ebp),%edx
	movl %edx,-4(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	sall $17,%eax
	shrl $21,%eax
	jne .L68
	testl $1048575,%edx
	jne .L69
	testl %ecx,%ecx
	jne .L69
	movl $5,%eax
	jmp .L73
	.align 16
.L69:
	movl $4,%eax
	jmp .L73
	.align 16
.L68:
	cmpl $2047,%eax
	je .L70
	movl $3,%eax
	jmp .L73
	.align 16
.L70:
	testl $1048575,%edx
	jne .L71
	testl %ecx,%ecx
	jne .L71
	movl $2,%eax
	jmp .L73
	.align 16
.L71:
	testb $8,-2(%ebp)
	je .L72
	xorl %eax,%eax
	jmp .L73
	.align 16
.L72:
	movl $1,%eax
.L73:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 LongFloat__Class,.Lfe11-LongFloat__Class
	.align 16
	.type	 LongFloat__Sqrt,@function
LongFloat__Sqrt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L75:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call sqrt
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L76:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 LongFloat__Sqrt,.Lfe12-LongFloat__Sqrt
	.align 16
	.type	 LongFloat__FromDecimal,@function
LongFloat__FromDecimal:
	pushl %ebp
	movl %esp,%ebp
	subl $84,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L78:
	movl $5,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl $0,-4(%ebp)
	xorl %ecx,%ecx
	movl %ecx,-72(%ebp)
	cmpl $0,16(%ebp)
	je .L79
	leal -40(%ebp),%ebx
	movl %ebx,-56(%ebp)
	movl $33,-52(%ebp)
	pushl %ecx
	pushl $10
	movl 16(%ebp),%ebx
	pushl %ebx
	leal -56(%ebp),%eax
	pushl %eax
	movl MI_Convert+64,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L80
	pushl $3105
	call _m3_fault
	.align 16
.L80:
	movl %eax,-72(%ebp)
.L79:
	leal -68(%ebp),%edx
	leal -60(%ebp),%ebx
	movl %ebx,-68(%ebp)
	movl $1,-64(%ebp)
	movl 12(%ebp),%eax
	movl -72(%ebp),%ebx
	addl 4(%eax),%ebx
	movl %ebx,%eax
	addl $4,%eax
	movl %eax,-60(%ebp)
	pushl %edx
	movl MM_LongFloat+216,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $8,%esp
	testl %edx,%edx
	jne .L81
	pushl $3140
	call _m3_fault
	.align 16
.L81:
	cmpl $0,4(%edx)
	jne .L82
	pushl $3138
	call _m3_fault
	.align 16
.L82:
	movl (%edx),%eax
	xorl %edx,%edx
	movb 8(%ebp),%dl
	movl $1,%ecx
	movb MM_LongFloat+208(%edx),%dl
	movb %dl,(%eax)
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L83
	pushl $3156
	call _m3_fault
	.align 16
.L83:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L84
	pushl $3154
	call _m3_fault
	.align 16
.L84:
	movl 12(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L85
	pushl $3154
	call _m3_fault
	.align 16
.L85:
	movl (%eax),%eax
	movb (%eax),%al
	andl $255,%eax
	leal 48(%eax),%esi
	addl $176,%eax
	cmpl $255,%eax
	jbe .L86
	pushl $3153
	call _m3_fault
	.align 16
.L86:
	movl (%edx),%eax
	movl %esi,%ebx
	movb %bl,(%ecx,%eax)
	movl $2,%ecx
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L87
	pushl $3172
	call _m3_fault
	.align 16
.L87:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L88
	pushl $3170
	call _m3_fault
	.align 16
.L88:
	movl (%edx),%eax
	movb $46,(%ecx,%eax)
	movl $3,%ecx
	movl 12(%ebp),%eax
	movl $1,-84(%ebp)
	movl 4(%eax),%edi
	decl %edi
	jmp .L89
	.align 16
.L90:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L91
	pushl $3204
	call _m3_fault
	.align 16
.L91:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L92
	pushl $3202
	call _m3_fault
	.align 16
.L92:
	movl 12(%ebp),%eax
	movl -84(%ebp),%ebx
	cmpl %ebx,4(%eax)
	ja .L93
	pushl $3202
	call _m3_fault
	.align 16
.L93:
	movl (%eax),%eax
	movl -84(%ebp),%ebx
	movb (%ebx,%eax),%al
	andl $255,%eax
	leal 48(%eax),%esi
	addl $176,%eax
	cmpl $255,%eax
	jbe .L94
	pushl $3201
	call _m3_fault
	.align 16
.L94:
	movl (%edx),%eax
	movl %esi,%ebx
	movb %bl,(%ecx,%eax)
	incl %ecx
	incl -84(%ebp)
.L89:
	cmpl %edi,-84(%ebp)
	jle .L90
	cmpl $0,16(%ebp)
	je .L96
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L97
	pushl $3252
	call _m3_fault
	.align 16
.L97:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L98
	pushl $3250
	call _m3_fault
	.align 16
.L98:
	movl (%edx),%eax
	movb $101,(%ecx,%eax)
	incl %ecx
	movl $0,-84(%ebp)
	movl -72(%ebp),%edi
	decl %edi
	jmp .L99
	.align 16
.L100:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L101
	pushl $3284
	call _m3_fault
	.align 16
.L101:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L102
	pushl $3282
	call _m3_fault
	.align 16
.L102:
	cmpl $32,-84(%ebp)
	jle .L103
	pushl $3281
	call _m3_fault
	.align 16
.L103:
	movl -84(%ebp),%ebx
	movzbl -40(%ebx,%ebp),%esi
	leal 128(%esi),%eax
	cmpl $255,%eax
	jbe .L104
	pushl $3281
	call _m3_fault
	.align 16
.L104:
	movl (%edx),%eax
	movl %esi,%ebx
	movb %bl,(%ecx,%eax)
	incl %ecx
	incl -84(%ebp)
.L99:
	cmpl %edi,-84(%ebp)
	jle .L100
.L96:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L106
	pushl $3332
	call _m3_fault
	.align 16
.L106:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L107
	pushl $3330
	call _m3_fault
	.align 16
.L107:
	movl (%edx),%eax
	movb $0,(%ecx,%eax)
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L108
	pushl $3364
	call _m3_fault
	.align 16
.L108:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L109
	pushl $3362
	call _m3_fault
	.align 16
.L109:
	pushl $0
	movl (%edx),%eax
	pushl %eax
	call strtod
	leal -4(%ebp),%eax
	fstpl -80(%ebp)
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -80(%ebp)
.L110:
	leal -96(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 LongFloat__FromDecimal,.Lfe13-LongFloat__FromDecimal
	.align 16
	.type	 LongFloat__ToDecimal,@function
LongFloat__ToDecimal:
	pushl %ebp
	movl %esp,%ebp
	subl $76,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movb $1,-30(%ebp)
	movl $0,-4(%ebp)
	movl 8(%ebp),%eax
	movl %eax,-40(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-36(%ebp)
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	call LongFloat__Class
	movb %al,-32(%ebp)
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	call LongFloat__Sign
	movb %al,-31(%ebp)
	xorl %eax,%eax
	movb -32(%ebp),%al
	addl $16,%esp
	cmpl $4,%eax
	je .L112
	cmpl $3,%eax
	je .L112
	movl 16(%ebp),%edi
	leal -32(%ebp),%esi
	jmp .L116
	.align 16
.L112:
	movl -40(%ebp),%edi
	movl -36(%ebp),%edx
	andl $1048575,%edx
	xorl %eax,%eax
	movw -34(%ebp),%ax
	sall $17,%eax
	shrl $21,%eax
	jne .L113
	movl $-1021,%ecx
	jmp .L114
	.align 16
.L113:
	leal -1022(%eax),%ecx
	orl $1048576,%edx
.L114:
	leal -29(%ebp),%ebx
	movl %ebx,-76(%ebp)
	movl $17,-72(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -76(%ebp),%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $53
	pushl %edi
	pushl %edx
	pushl %ecx
	movl MI_DragonT+44,%eax
	leal -32(%ebp),%esi
	call *%eax
	movl -4(%ebp),%edx
	leal -1(%edx),%eax
	addl $36,%esp
	cmpl $16,%eax
	jbe .L115
	pushl $3905
	call _m3_fault
	.align 16
.L115:
	movb %dl,-30(%ebp)
	movl 16(%ebp),%edi
	movb $0,-8(%ebp)
.L116:
	cld
	movl $7,%ecx
	rep
	movsl
	leal -88(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 LongFloat__ToDecimal,.Lfe14-LongFloat__ToDecimal
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_LongFloat
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_LongFloat
.data
	.align 4
	.type	 MM_LongFloat,@object
	.size	 MM_LongFloat,692
MM_LongFloat:
	.long MM_LongFloat+504
	.long MM_LongFloat+44
	.long MM_LongFloat+216
	.zero	8
	.long MM_LongFloat+332
	.zero	28
	.long -900030107
.byte 4
.byte 220
.byte 23
.byte 212
.byte 97
.byte 125
.byte 77
.byte 30
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_LongFloat+654
	.zero	36
	.long MM_LongFloat+659
	.zero	4
	.long LongFloat__Scalb
	.long LongFloat__Logb
	.zero	6
.byte 240
.byte 255
	.long LongFloat__ILogb
	.long LongFloat__NextAfter
	.long LongFloat__CopySign
	.long LongFloat__Finite
	.long LongFloat__IsNaN
	.long LongFloat__Sign
	.long LongFloat__Differs
	.long LongFloat__Unordered
	.long LongFloat__Sqrt
	.long LongFloat__Class
	.long LongFloat__FromDecimal
.byte 43
.byte 45
	.zero	2
	.long LongFloat__ToDecimal
	.zero	4
	.long -900030107
	.ascii	"ToDecimal"
	.zero	1
	.ascii	"FromDecimal"
	.zero	1
	.ascii	"Sqrt"
	.zero	1
	.ascii	"Class"
	.zero	1
	.ascii	"Unordered"
	.zero	1
	.ascii	"Differs"
	.zero	1
	.ascii	"Sign"
	.zero	1
	.ascii	"IsNaN"
	.zero	1
	.ascii	"Finite"
	.zero	1
	.ascii	"CopySign"
	.zero	1
	.ascii	"NextAfter"
	.zero	1
	.ascii	"ILogb"
	.zero	1
	.ascii	"Logb"
	.zero	1
	.ascii	"Scalb"
	.zero	4
	.long LongFloat__ToDecimal
	.long MM_LongFloat+224
	.long MI_LongFloat+96
	.long LongFloat__FromDecimal
	.long MM_LongFloat+234
	.long MI_LongFloat+92
	.long LongFloat__Sqrt
	.long MM_LongFloat+246
	.long MI_LongFloat+84
	.long LongFloat__Class
	.long MM_LongFloat+251
	.long MI_LongFloat+88
	.long LongFloat__Unordered
	.long MM_LongFloat+257
	.long MI_LongFloat+80
	.long LongFloat__Differs
	.long MM_LongFloat+267
	.long MI_LongFloat+76
	.long LongFloat__Sign
	.long MM_LongFloat+275
	.long MI_LongFloat+72
	.long LongFloat__IsNaN
	.long MM_LongFloat+280
	.long MI_LongFloat+68
	.long LongFloat__Finite
	.long MM_LongFloat+286
	.long MI_LongFloat+64
	.long LongFloat__CopySign
	.long MM_LongFloat+293
	.long MI_LongFloat+60
	.long LongFloat__NextAfter
	.long MM_LongFloat+302
	.long MI_LongFloat+56
	.long LongFloat__ILogb
	.long MM_LongFloat+312
	.long MI_LongFloat+52
	.long LongFloat__Logb
	.long MM_LongFloat+318
	.long MI_LongFloat+48
	.long LongFloat__Scalb
	.long MM_LongFloat+323
	.long MI_LongFloat+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/float/IEEE/LongFloat.m3"
	.zero	1
.byte 24
.byte 1
.byte 12
.byte 0
.byte 0
	.ascii	"LongFloat.FromDecimal.CharBuf"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
