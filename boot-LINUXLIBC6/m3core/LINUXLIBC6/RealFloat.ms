	.file	"RealFloat.mc"
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
	.type	 RealFloat__Scalb,@function
RealFloat__Scalb:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 12(%ebp),%edx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	flds 8(%ebp)
	subl $8,%esp
	fstpl (%esp)
	call ldexp
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fstps -12(%ebp)
	flds -12(%ebp)
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RealFloat__Scalb,.Lfe1-RealFloat__Scalb
.section	.rodata
	.align 4
.LC0:
	.long 0xc2fc0000
.text
	.align 16
	.type	 RealFloat__Logb,@function
RealFloat__Logb:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L5:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 8(%ebp),%eax
	pushl %eax
	call RealFloat__Class
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
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds 8(%ebp)
	jmp .L4
	.align 16
.L7:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds 8(%ebp)
	fabs
	jmp .L4
	.align 16
.L10:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds MM_RealFloat+156
	jmp .L4
	.align 16
.L8:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	movw 10(%ebp),%ax
	sall $17,%eax
	shrl $24,%eax
	addl $-127,%eax
	pushl %eax
	fildl (%esp)
	addl $4,%esp
	jmp .L4
	.align 16
.L9:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds .LC0
.L13:
.L4:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RealFloat__Logb,.Lfe2-RealFloat__Logb
	.align 16
	.type	 RealFloat__ILogb,@function
RealFloat__ILogb:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	call RealFloat__Class
	addl $4,%esp
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
	pushl $752
	call _m3_fault
	.align 16
.L16:
	movl $2147483647,%eax
	jmp .L25
	.align 16
.L19:
	movl $-2147483648,%eax
	jmp .L25
	.align 16
.L17:
	xorl %eax,%eax
	movw -2(%ebp),%ax
	sall $17,%eax
	shrl $24,%eax
	addl $-127,%eax
	jmp .L25
	.align 16
.L18:
	movl $4194304,%edx
	movl $-127,%eax
	movl -4(%ebp),%ecx
	andl $8388607,%ecx
	jmp .L20
	.align 16
.L21:
	shrl $1,%edx
	decl %eax
.L20:
	testl %edx,%ecx
	je .L21
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RealFloat__ILogb,.Lfe3-RealFloat__ILogb
.section	.rodata
	.align 4
.LC1:
	.long 0x40000000
.text
	.align 16
	.type	 RealFloat__NextAfter,@function
RealFloat__NextAfter:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
.L27:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-16(%ebp)
	leal -16(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl %eax,-8(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-4(%ebp)
	flds 8(%ebp)
	flds 12(%ebp)
	fucomp %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L28
	movl %edx,RTThread__handlerStack
	jmp .L26
	.align 16
.L28:
	subl $4,%esp
	fstps (%esp)
	call RealFloat__IsNaN
	addl $4,%esp
	testl %eax,%eax
	jne .L29
	movl 8(%ebp),%eax
	pushl %eax
	call RealFloat__Finite
	addl $4,%esp
	testl %eax,%eax
	jne .L30
.L29:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds 8(%ebp)
	jmp .L26
	.align 16
.L30:
	movl 12(%ebp),%eax
	pushl %eax
	call RealFloat__IsNaN
	addl $4,%esp
	testl %eax,%eax
	je .L31
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds 12(%ebp)
	jmp .L26
	.align 16
.L31:
	flds 8(%ebp)
	fldz
	fucom %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L32
	fstp %st(0)
	fstp %st(0)
	movl -20(%ebp),%eax
	andl $-8388608,%eax
	orb $1,%al
	movl %eax,-20(%ebp)
	andw $32895,-18(%ebp)
	xorl %edx,%edx
	movb -17(%ebp),%dl
	andb $127,%dl
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $128,%eax
	orb %dl,%al
	movb %al,-17(%ebp)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -20(%ebp)
	jmp .L26
	.align 16
.L32:
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L33
	fxch %st(1)
	fcoms 12(%ebp)
	fnstsw %ax
	andb $69,%ah
	je .L48
	fxch %st(1)
.L33:
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L49
	fcomps 12(%ebp)
	fnstsw %ax
	andb $5,%ah
	je .L35
	jmp .L34
	.align 16
.L48:
	fstp %st(0)
	fstp %st(0)
.L34:
	movl -8(%ebp),%edx
	movl %edx,%eax
	andl $8388607,%eax
	jne .L36
	orl $8388607,%edx
	movl %edx,-8(%ebp)
	xorl %ecx,%ecx
	movw -6(%ebp),%cx
	movl %ecx,%eax
	sall $17,%eax
	shrl $24,%eax
	leal -1(%eax),%edx
	testl %edx,%edx
	jge .L37
	pushl $1265
	call _m3_fault
	.align 16
.L37:
	movl %ecx,%eax
	andl $-32641,%eax
	andl $255,%edx
	sall $7,%edx
	orw %ax,%dx
	movw %dx,-6(%ebp)
	xorl %eax,%eax
	movw %dx,%ax
	sall $17,%eax
	shrl $24,%eax
	jne .L41
	flds 8(%ebp)
	fadd %st(0),%st
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds .LC1
	fdivrp %st,%st(1)
	jmp .L26
	.align 16
.L36:
	decl %eax
	jns .L46
	pushl $1329
	call _m3_fault
	.align 16
.L49:
	fstp %st(0)
.L35:
	movl -8(%ebp),%edx
	movl %edx,%eax
	andl $8388607,%eax
	cmpl $8388607,%eax
	jne .L42
	andl $-8388608,%edx
	movl %edx,-8(%ebp)
	xorl %ecx,%ecx
	movw -6(%ebp),%cx
	movl %ecx,%eax
	sall $17,%eax
	shrl $24,%eax
	leal 1(%eax),%edx
	cmpl $255,%edx
	jle .L43
	pushl $1393
	call _m3_fault
	.align 16
.L43:
	movl %ecx,%eax
	andl $-32641,%eax
	andl $255,%edx
	sall $7,%edx
	orw %ax,%dx
	movw %dx,-6(%ebp)
	xorl %eax,%eax
	movw %dx,%ax
	shrl $7,%eax
	cmpb $255,%al
	jne .L41
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds 8(%ebp)
	fadd %st(0),%st
	jmp .L26
	.align 16
.L42:
	incl %eax
	cmpl $8388607,%eax
	jle .L46
	pushl $1457
	call _m3_fault
	.align 16
.L46:
	andl $-8388608,%edx
	andl $8388607,%eax
	orl %eax,%edx
	movl %edx,-8(%ebp)
.L41:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -8(%ebp)
.L47:
.L26:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RealFloat__NextAfter,.Lfe4-RealFloat__NextAfter
	.align 16
	.type	 RealFloat__CopySign,@function
RealFloat__CopySign:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	xorl %edx,%edx
	movb -1(%ebp),%dl
	andb $127,%dl
	xorl %eax,%eax
	movb 15(%ebp),%al
	andl $128,%eax
	orb %dl,%al
	movb %al,-1(%ebp)
	flds -4(%ebp)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RealFloat__CopySign,.Lfe5-RealFloat__CopySign
	.align 16
	.type	 RealFloat__Finite,@function
RealFloat__Finite:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	shrl $7,%eax
	cmpb $255,%al
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RealFloat__Finite,.Lfe6-RealFloat__Finite
	.align 16
	.type	 RealFloat__IsNaN,@function
RealFloat__IsNaN:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	xorl %edx,%edx
	movl 8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	shrl $7,%eax
	cmpb $255,%al
	jne .L53
	testl $8388607,%ecx
	setne %al
	xorl %edx,%edx
	movb %al,%dl
.L53:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RealFloat__IsNaN,.Lfe7-RealFloat__IsNaN
	.align 16
	.type	 RealFloat__Sign,@function
RealFloat__Sign:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movb -1(%ebp),%al
	shrl $7,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RealFloat__Sign,.Lfe8-RealFloat__Sign
	.align 16
	.type	 RealFloat__Differs,@function
RealFloat__Differs:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%edx
	flds 8(%ebp)
	flds 12(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	je .L57
	fcompp
	fnstsw %ax
	andb $69,%ah
	cmpb $1,%ah
	sete %al
	xorl %edx,%edx
	movb %al,%dl
	jmp .L56
	.align 16
.L57:
	fstp %st(0)
	fstp %st(0)
.L56:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RealFloat__Differs,.Lfe9-RealFloat__Differs
	.align 16
	.type	 RealFloat__Unordered,@function
RealFloat__Unordered:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%edx
	flds 8(%ebp)
	flds 12(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L60
	fcompp
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	setb %al
	xorl %edx,%edx
	movb %al,%dl
	jmp .L59
	.align 16
.L60:
	fstp %st(0)
	fstp %st(0)
.L59:
	movl %edx,%eax
	xorb $1,%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RealFloat__Unordered,.Lfe10-RealFloat__Unordered
	.align 16
	.type	 RealFloat__Sqrt,@function
RealFloat__Sqrt:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L62:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	flds 8(%ebp)
	movl %edx,RTThread__handlerStack
	subl $8,%esp
	fstpl (%esp)
	call sqrt
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fstps -12(%ebp)
	flds -12(%ebp)
.L63:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RealFloat__Sqrt,.Lfe11-RealFloat__Sqrt
	.align 16
	.type	 RealFloat__Class,@function
RealFloat__Class:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%edx
	movl %edx,-4(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	sall $17,%eax
	shrl $24,%eax
	jne .L65
	testl $8388607,%edx
	jne .L66
	movl $5,%eax
	jmp .L70
	.align 16
.L66:
	movl $4,%eax
	jmp .L70
	.align 16
.L65:
	cmpl $255,%eax
	je .L67
	movl $3,%eax
	jmp .L70
	.align 16
.L67:
	movl %edx,%eax
	andl $8388607,%eax
	jne .L68
	movl $2,%eax
	jmp .L70
	.align 16
.L68:
	testl $4194304,%eax
	je .L69
	xorl %eax,%eax
	jmp .L70
	.align 16
.L69:
	movl $1,%eax
.L70:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RealFloat__Class,.Lfe12-RealFloat__Class
	.align 16
	.type	 RealFloat__FromDecimal,@function
RealFloat__FromDecimal:
	pushl %ebp
	movl %esp,%ebp
	subl $84,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L72:
	movl $5,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl $0,-4(%ebp)
	xorl %ecx,%ecx
	movl %ecx,-80(%ebp)
	cmpl $0,16(%ebp)
	je .L73
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
	jge .L74
	pushl $2769
	call _m3_fault
	.align 16
.L74:
	movl %eax,-80(%ebp)
.L73:
	leal -68(%ebp),%edx
	leal -60(%ebp),%ebx
	movl %ebx,-68(%ebp)
	movl $1,-64(%ebp)
	movl 12(%ebp),%eax
	movl -80(%ebp),%ebx
	addl 4(%eax),%ebx
	movl %ebx,%eax
	addl $4,%eax
	movl %eax,-60(%ebp)
	pushl %edx
	movl MM_RealFloat+212,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $8,%esp
	testl %edx,%edx
	jne .L75
	pushl $2804
	call _m3_fault
	.align 16
.L75:
	cmpl $0,4(%edx)
	jne .L76
	pushl $2802
	call _m3_fault
	.align 16
.L76:
	movl (%edx),%eax
	xorl %edx,%edx
	movb 8(%ebp),%dl
	movl $1,%ecx
	movb MM_RealFloat+204(%edx),%dl
	movb %dl,(%eax)
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L77
	pushl $2820
	call _m3_fault
	.align 16
.L77:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L78
	pushl $2818
	call _m3_fault
	.align 16
.L78:
	movl 12(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L79
	pushl $2818
	call _m3_fault
	.align 16
.L79:
	movl (%eax),%eax
	movb (%eax),%al
	andl $255,%eax
	leal 48(%eax),%esi
	addl $176,%eax
	cmpl $255,%eax
	jbe .L80
	pushl $2817
	call _m3_fault
	.align 16
.L80:
	movl (%edx),%eax
	movl %esi,%ebx
	movb %bl,(%ecx,%eax)
	movl $2,%ecx
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L81
	pushl $2836
	call _m3_fault
	.align 16
.L81:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L82
	pushl $2834
	call _m3_fault
	.align 16
.L82:
	movl (%edx),%eax
	movb $46,(%ecx,%eax)
	movl $3,%ecx
	movl 12(%ebp),%eax
	movl $1,-84(%ebp)
	movl 4(%eax),%edi
	decl %edi
	jmp .L83
	.align 16
.L84:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L85
	pushl $2868
	call _m3_fault
	.align 16
.L85:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L86
	pushl $2866
	call _m3_fault
	.align 16
.L86:
	movl 12(%ebp),%eax
	movl -84(%ebp),%ebx
	cmpl %ebx,4(%eax)
	ja .L87
	pushl $2866
	call _m3_fault
	.align 16
.L87:
	movl (%eax),%eax
	movl -84(%ebp),%ebx
	movb (%ebx,%eax),%al
	andl $255,%eax
	leal 48(%eax),%esi
	addl $176,%eax
	cmpl $255,%eax
	jbe .L88
	pushl $2865
	call _m3_fault
	.align 16
.L88:
	movl (%edx),%eax
	movl %esi,%ebx
	movb %bl,(%ecx,%eax)
	incl %ecx
	incl -84(%ebp)
.L83:
	cmpl %edi,-84(%ebp)
	jle .L84
	cmpl $0,16(%ebp)
	je .L90
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L91
	pushl $2916
	call _m3_fault
	.align 16
.L91:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L92
	pushl $2914
	call _m3_fault
	.align 16
.L92:
	movl (%edx),%eax
	movb $101,(%ecx,%eax)
	incl %ecx
	movl $0,-84(%ebp)
	movl -80(%ebp),%edi
	decl %edi
	jmp .L93
	.align 16
.L94:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L95
	pushl $2948
	call _m3_fault
	.align 16
.L95:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L96
	pushl $2946
	call _m3_fault
	.align 16
.L96:
	cmpl $32,-84(%ebp)
	jle .L97
	pushl $2945
	call _m3_fault
	.align 16
.L97:
	movl -84(%ebp),%ebx
	movzbl -40(%ebx,%ebp),%esi
	leal 128(%esi),%eax
	cmpl $255,%eax
	jbe .L98
	pushl $2945
	call _m3_fault
	.align 16
.L98:
	movl (%edx),%eax
	movl %esi,%ebx
	movb %bl,(%ecx,%eax)
	incl %ecx
	incl -84(%ebp)
.L93:
	cmpl %edi,-84(%ebp)
	jle .L94
.L90:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L100
	pushl $2996
	call _m3_fault
	.align 16
.L100:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L101
	pushl $2994
	call _m3_fault
	.align 16
.L101:
	movl (%edx),%eax
	movb $0,(%ecx,%eax)
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L102
	pushl $3028
	call _m3_fault
	.align 16
.L102:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L103
	pushl $3026
	call _m3_fault
	.align 16
.L103:
	pushl $0
	movl (%edx),%eax
	pushl %eax
	call strtod
	fstps -76(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -76(%ebp)
.L104:
	leal -96(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RealFloat__FromDecimal,.Lfe13-RealFloat__FromDecimal
	.align 16
	.type	 RealFloat__ToDecimal,@function
RealFloat__ToDecimal:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movb $1,-22(%ebp)
	movl $0,-4(%ebp)
	movl 8(%ebp),%eax
	movl %eax,-28(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	call RealFloat__Class
	movb %al,-24(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	call RealFloat__Sign
	movb %al,-23(%ebp)
	xorl %eax,%eax
	movb -24(%ebp),%al
	addl $8,%esp
	cmpl $4,%eax
	je .L106
	cmpl $3,%eax
	je .L106
	movl 12(%ebp),%edi
	leal -24(%ebp),%esi
	jmp .L110
	.align 16
.L106:
	movl -28(%ebp),%edx
	andl $8388607,%edx
	xorl %eax,%eax
	movw -26(%ebp),%ax
	sall $17,%eax
	shrl $24,%eax
	jne .L107
	movl $-125,%ecx
	jmp .L108
	.align 16
.L107:
	leal -126(%eax),%ecx
	orl $8388608,%edx
.L108:
	leal -21(%ebp),%ebx
	movl %ebx,-56(%ebp)
	movl $9,-52(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -56(%ebp),%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $24
	pushl %edx
	pushl $0
	pushl %ecx
	movl MI_DragonT+44,%eax
	leal -24(%ebp),%esi
	call *%eax
	movl -4(%ebp),%edx
	leal -1(%edx),%eax
	addl $36,%esp
	cmpl $8,%eax
	jbe .L109
	pushl $3505
	call _m3_fault
	.align 16
.L109:
	movb %dl,-22(%ebp)
	movl 12(%ebp),%edi
	movb $0,-8(%ebp)
.L110:
	cld
	movl $5,%ecx
	rep
	movsl
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 RealFloat__ToDecimal,.Lfe14-RealFloat__ToDecimal
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RealFloat
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_RealFloat
.data
	.align 4
	.type	 MM_RealFloat,@object
	.size	 MM_RealFloat,688
MM_RealFloat:
	.long MM_RealFloat+500
	.long MM_RealFloat+44
	.long MM_RealFloat+212
	.zero	8
	.long MM_RealFloat+328
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
	.long MM_RealFloat+650
	.zero	36
	.long MM_RealFloat+655
	.zero	4
	.long RealFloat__Scalb
	.long RealFloat__Logb
	.zero	2
.byte 128
.byte 255
	.long RealFloat__ILogb
	.long RealFloat__NextAfter
	.long RealFloat__CopySign
	.long RealFloat__Finite
	.long RealFloat__IsNaN
	.long RealFloat__Sign
	.long RealFloat__Differs
	.long RealFloat__Unordered
	.long RealFloat__Sqrt
	.long RealFloat__Class
	.long RealFloat__FromDecimal
.byte 43
.byte 45
	.zero	2
	.long RealFloat__ToDecimal
	.zero	4
	.long -900030107
	.ascii	"ToDecimal"
	.zero	1
	.ascii	"FromDecimal"
	.zero	1
	.ascii	"Class"
	.zero	1
	.ascii	"Sqrt"
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
	.long RealFloat__ToDecimal
	.long MM_RealFloat+220
	.long MI_RealFloat+96
	.long RealFloat__FromDecimal
	.long MM_RealFloat+230
	.long MI_RealFloat+92
	.long RealFloat__Class
	.long MM_RealFloat+242
	.long MI_RealFloat+88
	.long RealFloat__Sqrt
	.long MM_RealFloat+248
	.long MI_RealFloat+84
	.long RealFloat__Unordered
	.long MM_RealFloat+253
	.long MI_RealFloat+80
	.long RealFloat__Differs
	.long MM_RealFloat+263
	.long MI_RealFloat+76
	.long RealFloat__Sign
	.long MM_RealFloat+271
	.long MI_RealFloat+72
	.long RealFloat__IsNaN
	.long MM_RealFloat+276
	.long MI_RealFloat+68
	.long RealFloat__Finite
	.long MM_RealFloat+282
	.long MI_RealFloat+64
	.long RealFloat__CopySign
	.long MM_RealFloat+289
	.long MI_RealFloat+60
	.long RealFloat__NextAfter
	.long MM_RealFloat+298
	.long MI_RealFloat+56
	.long RealFloat__ILogb
	.long MM_RealFloat+308
	.long MI_RealFloat+52
	.long RealFloat__Logb
	.long MM_RealFloat+314
	.long MI_RealFloat+48
	.long RealFloat__Scalb
	.long MM_RealFloat+319
	.long MI_RealFloat+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/float/IEEE/RealFloat.m3"
	.zero	1
.byte 24
.byte 1
.byte 12
.byte 0
.byte 0
	.ascii	"RealFloat.FromDecimal.CharBuf"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
