	.file	"TFloat.mc"
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
	.type	 TFloat__New,@function
TFloat__New:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	pushl %ebx
	movl 16(%ebp),%edx
	movb 12(%ebp),%al
	movb %al,(%edx)
	movl 16(%ebp),%eax
	movl $0,4(%eax)
.L2:
	movl $MM_TFloat+236,-176(%ebp)
	movl $0,-180(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-184(%ebp)
	leal -184(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -164(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L3
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Convert+100,%eax
	call *%eax
	movl 16(%ebp),%eax
	addl $8,%esp
	fstpl 8(%eax)
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L4
	.align 16
.L3:
	xorl %eax,%eax
	jmp .L7
	.align 16
.L4:
	xorl %ecx,%ecx
	movl 8(%ebp),%edx
	movl -4(%ebp),%eax
	cmpl %eax,4(%edx)
	jne .L6
	movl 16(%ebp),%eax
	pushl %eax
	call TFloat__Normalize
	testl %eax,%eax
	setne %al
	xorl %ecx,%ecx
	movb %al,%cl
.L6:
	movl %ecx,%eax
.L7:
	movl -188(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TFloat__New,.Lfe1-TFloat__New
	.align 16
	.type	 TFloat__Prec,@function
TFloat__Prec:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movb (%eax),%al
	andl $255,%eax
	ret
.Lfe2:
	.size	 TFloat__Prec,.Lfe2-TFloat__Prec
	.align 16
	.type	 TFloat__Add,@function
TFloat__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L10:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%ecx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl 8(%ebp),%eax
	movl %ebx,RTThread__handlerStack
	movb (%eax),%dl
	movl 12(%ebp),%eax
	cmpb %dl,(%eax)
	je .L11
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L9
	.align 16
.L11:
	movl 16(%ebp),%eax
	movb %dl,(%eax)
	movl 16(%ebp),%edx
	movl $0,4(%edx)
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	fldl 8(%ecx)
	faddl 8(%eax)
	fstpl 8(%edx)
	pushl %edx
	call TFloat__Normalize
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L12:
.L9:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TFloat__Add,.Lfe3-TFloat__Add
	.align 16
	.type	 TFloat__Subtract,@function
TFloat__Subtract:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L14:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%ecx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl 8(%ebp),%eax
	movl %ebx,RTThread__handlerStack
	movb (%eax),%dl
	movl 12(%ebp),%eax
	cmpb %dl,(%eax)
	je .L15
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L13
	.align 16
.L15:
	movl 16(%ebp),%eax
	movb %dl,(%eax)
	movl 16(%ebp),%edx
	movl $0,4(%edx)
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	fldl 8(%ecx)
	fsubl 8(%eax)
	fstpl 8(%edx)
	pushl %edx
	call TFloat__Normalize
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L16:
.L13:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TFloat__Subtract,.Lfe4-TFloat__Subtract
	.align 16
	.type	 TFloat__Multiply,@function
TFloat__Multiply:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L18:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%ecx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl 8(%ebp),%eax
	movl %ebx,RTThread__handlerStack
	movb (%eax),%dl
	movl 12(%ebp),%eax
	cmpb %dl,(%eax)
	je .L19
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L17
	.align 16
.L19:
	movl 16(%ebp),%eax
	movb %dl,(%eax)
	movl 16(%ebp),%edx
	movl $0,4(%edx)
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	fldl 8(%ecx)
	fmull 8(%eax)
	fstpl 8(%edx)
	pushl %edx
	call TFloat__Normalize
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L20:
.L17:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TFloat__Multiply,.Lfe5-TFloat__Multiply
	.align 16
	.type	 TFloat__Divide,@function
TFloat__Divide:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L22:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl 8(%ebp),%eax
	movl %ebx,RTThread__handlerStack
	movb (%eax),%cl
	movl 12(%ebp),%eax
	cmpb %cl,(%eax)
	jne .L26
	fldl 8(%eax)
	fldz
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L24
.L26:
	movl %edx,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L21
	.align 16
.L24:
	movl 16(%ebp),%eax
	movb %cl,(%eax)
	movl 16(%ebp),%eax
	movl $0,4(%eax)
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	fldl 8(%edx)
	fldl 8(%ecx)
	fdivrp %st,%st(1)
	fstpl 8(%eax)
	pushl %eax
	call TFloat__Normalize
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L25:
.L21:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TFloat__Divide,.Lfe6-TFloat__Divide
	.align 16
	.type	 TFloat__Mod,@function
TFloat__Mod:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L28:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	movb (%ecx),%bl
	cmpb %bl,(%eax)
	jne .L36
	fldl 8(%ecx)
	fldl 8(%eax)
	fldz
	fucom %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L30
	fstp %st(0)
	fstp %st(0)
	fstp %st(0)
.L36:
	movl %edx,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L27
	.align 16
.L30:
	fld %st(2)
	fld %st(2)
	fdivrp %st,%st(1)
	movl 16(%ebp),%eax
	movb %bl,(%eax)
	movl 16(%ebp),%ecx
	movl $0,4(%ecx)
	subl $8,%esp
	fstpl (%esp)
	popl %esi
	popl %edi
	movl %esi,-24(%ebp)
	movl %edi,-20(%ebp)
	fldl -24(%ebp)
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	fstp %st(1)
	jne .L31
	fstp %st(0)
	pushl %edx
	fimull (%esp)
	addl $4,%esp
	jmp .L37
	.align 16
.L31:
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucom %st(1)
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	fstp %st(1)
	je .L33
	fstp %st(0)
	leal -1(%edx),%eax
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	jmp .L37
	.align 16
.L33:
	fmulp %st,%st(1)
.L37:
	fsubrp %st,%st(1)
	fstpl 8(%ecx)
	movl 16(%ebp),%eax
	pushl %eax
	call TFloat__Normalize
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L35:
.L27:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TFloat__Mod,.Lfe7-TFloat__Mod
	.align 16
	.type	 TFloat__EQ,@function
TFloat__EQ:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movb (%ecx),%al
	cmpb %al,(%edx)
	jne .L41
	movl 4(%edx),%eax
	cmpl %eax,4(%ecx)
	jne .L41
	fldl 8(%ecx)
	fldl 8(%edx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L41
	movl $1,%eax
	jmp .L42
	.align 16
.L41:
	xorl %eax,%eax
.L42:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TFloat__EQ,.Lfe8-TFloat__EQ
	.align 16
	.type	 TFloat__LT,@function
TFloat__LT:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movb (%ecx),%al
	cmpb %al,(%edx)
	jne .L44
	fldl 8(%edx)
	fcompl 8(%ecx)
	fnstsw %ax
	andb $69,%ah
	sete %al
	andl $255,%eax
	jmp .L45
	.align 16
.L44:
	xorl %eax,%eax
.L45:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TFloat__LT,.Lfe9-TFloat__LT
	.align 16
	.type	 TFloat__LE,@function
TFloat__LE:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movb (%ecx),%al
	cmpb %al,(%edx)
	jne .L47
	fldl 8(%edx)
	fcompl 8(%ecx)
	fnstsw %ax
	andb $5,%ah
	sete %al
	andl $255,%eax
	jmp .L48
	.align 16
.L47:
	xorl %eax,%eax
.L48:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TFloat__LE,.Lfe10-TFloat__LE
	.align 16
	.type	 TFloat__FloatF,@function
TFloat__FloatF:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 16(%ebp),%eax
	movb 12(%ebp),%dl
	movb %dl,(%eax)
	movl 8(%ebp),%ecx
	movl 16(%ebp),%edx
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl 12(%ecx),%ebx
	movl %eax,8(%edx)
	movl %ebx,12(%edx)
	pushl %edx
	call TFloat__Normalize
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TFloat__FloatF,.Lfe11-TFloat__FloatF
	.align 16
	.type	 TFloat__FloatI,@function
TFloat__FloatI:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movb 12(%ebp),%bl
.L51:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L54
	movl 16(%ebp),%eax
	movb %bl,(%eax)
	movl 16(%ebp),%eax
	movl $0,4(%eax)
	fildl -4(%ebp)
	fstpl 8(%eax)
	pushl %eax
	call TFloat__Normalize
	movl %eax,%edx
.L54:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L53:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TFloat__FloatI,.Lfe12-TFloat__FloatI
	.align 16
	.type	 TFloat__Trunc,@function
TFloat__Trunc:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L56:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movb (%eax),%dl
	testb %dl,%dl
	jne .L57
	pushl %eax
	call TFloat__ToReal
	movl 12(%ebp),%eax
	pushl %eax
	fnstcw -12(%ebp)
	movl -12(%ebp),%edx
	movb $12,%dh
	movl %edx,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -12(%ebp)
	jmp .L60
	.align 16
.L57:
	cmpb $1,%dl
	jne .L58
	pushl %eax
	call TFloat__ToLongreal
	jmp .L61
	.align 16
.L58:
	pushl %eax
	call TFloat__ToExtended
.L61:
	movl 12(%ebp),%eax
	pushl %eax
	fnstcw -12(%ebp)
	movl -12(%ebp),%edx
	movb $12,%dh
	movl %edx,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -12(%ebp)
.L60:
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L59:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 TFloat__Trunc,.Lfe13-TFloat__Trunc
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x3fe00000
.text
	.align 16
	.type	 TFloat__Round,@function
TFloat__Round:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L63:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movb (%eax),%dl
	testb %dl,%dl
	jne .L64
	pushl %eax
	call TFloat__ToReal
	jmp .L76
	.align 16
.L64:
	cmpb $1,%dl
	jne .L67
	pushl %eax
	call TFloat__ToLongreal
	jmp .L76
	.align 16
.L67:
	pushl %eax
	call TFloat__ToExtended
.L76:
	movl 12(%ebp),%eax
	pushl %eax
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L70
	fldl .LC0
	faddp %st,%st(1)
	jmp .L74
	.align 16
.L70:
	fldl .LC0
	fsubrp %st,%st(1)
.L74:
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -12(%ebp)
	pushl %edx
	movl MI_TInt+68,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L72:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 TFloat__Round,.Lfe14-TFloat__Round
	.align 16
	.type	 TFloat__Floor,@function
TFloat__Floor:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L78:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movb (%eax),%dl
	testb %dl,%dl
	jne .L79
	pushl %eax
	call TFloat__ToReal
	movl 12(%ebp),%eax
	pushl %eax
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L93
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L88
	jmp .L91
	.align 16
.L79:
	cmpb $1,%dl
	jne .L83
	pushl %eax
	call TFloat__ToLongreal
	jmp .L92
	.align 16
.L83:
	pushl %eax
	call TFloat__ToExtended
.L92:
	movl 12(%ebp),%eax
	pushl %eax
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L94
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L88
.L91:
	decl %edx
	jmp .L88
	.align 16
.L93:
.L94:
	fstp %st(0)
.L88:
	pushl %edx
	movl MI_TInt+68,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L90:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 TFloat__Floor,.Lfe15-TFloat__Floor
	.align 16
	.type	 TFloat__Ceiling,@function
TFloat__Ceiling:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L96:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movb (%eax),%dl
	testb %dl,%dl
	jne .L97
	pushl %eax
	call TFloat__ToReal
	movl 12(%ebp),%eax
	pushl %eax
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L111
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L106
	jmp .L109
	.align 16
.L97:
	cmpb $1,%dl
	jne .L101
	pushl %eax
	call TFloat__ToLongreal
	jmp .L110
	.align 16
.L101:
	pushl %eax
	call TFloat__ToExtended
.L110:
	movl 12(%ebp),%eax
	pushl %eax
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L112
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L106
.L109:
	incl %edx
	jmp .L106
	.align 16
.L111:
.L112:
	fstp %st(0)
.L106:
	pushl %edx
	movl MI_TInt+68,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L108:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 TFloat__Ceiling,.Lfe16-TFloat__Ceiling
	.align 16
	.type	 TFloat__ToChars,@function
TFloat__ToChars:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L114:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%edi
	movl 8(%ebp),%ecx
	movl %edi,RTThread__handlerStack
	cmpl $0,4(%ecx)
	je .L115
	pushl $2672
	call _m3_fault
	.align 16
.L115:
	leal -32(%ebp),%esi
	movl %esi,-48(%ebp)
	movl $32,-44(%ebp)
	pushl $2
	pushl $13
	movl 12(%ecx),%eax
	movl 8(%ecx),%edx
	pushl %eax
	pushl %edx
	leal -48(%ebp),%eax
	pushl %eax
	movl MI_Convert+80,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%edx
	addl $20,%esp
	cmpl %ebx,4(%edx)
	jge .L116
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $-1,%eax
	jmp .L113
	.align 16
.L116:
	testl %ebx,%ebx
	jge .L117
	pushl $2721
	call _m3_fault
	.align 16
.L117:
	movl %ebx,-44(%ebp)
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L118
	pushl $2721
	call _m3_fault
	.align 16
.L118:
	movl (%edx),%eax
	movl %eax,-48(%ebp)
	cmpl $32,%ebx
	jle .L120
	pushl $2721
	call _m3_fault
	.align 16
.L120:
	movl %ebx,-52(%ebp)
	movl %esi,-56(%ebp)
	pushl %ebx
	pushl %esi
	pushl %eax
	call memmove
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L122:
.L113:
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 TFloat__ToChars,.Lfe17-TFloat__ToChars
	.align 16
	.type	 TFloat__ToInts,@function
TFloat__ToInts:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L124:
	movl $5,-24(%ebp)
	movl RTThread__handlerStack,%esi
	movl %esi,-28(%ebp)
	leal -28(%ebp),%ecx
	movl 8(%ebp),%edi
	movl %ecx,RTThread__handlerStack
	movb (%edi),%cl
	xorl %edx,%edx
	movb %cl,%dl
	leal (%edx,%edx,2),%eax
	sall $4,%eax
	movb %cl,-48(%ebp)
	movl MI_TargetMap+324(%eax),%ebx
	sarl $5,%ebx
	movl 12(%ebp),%eax
	cmpl %ebx,4(%eax)
	jge .L125
	movl %esi,RTThread__handlerStack
	movl $-1,%eax
	jmp .L123
	.align 16
.L125:
	cmpb $0,-48(%ebp)
	jne .L126
	pushl %edi
	call TFloat__ToReal
	fstps -20(%ebp)
	leal -20(%ebp),%eax
	jmp .L136
	.align 16
.L126:
	cmpl $1,%edx
	jne .L128
	pushl %edi
	call TFloat__ToLongreal
	fstpl -16(%ebp)
	leal -16(%ebp),%eax
	jmp .L136
	.align 16
.L128:
	pushl %edi
	call TFloat__ToExtended
	fstpl -8(%ebp)
	leal -8(%ebp),%eax
.L136:
	addl $4,%esp
	movl %eax,%esi
	testl %ebx,%ebx
	jge .L129
	pushl $3281
	call _m3_fault
	.align 16
.L129:
	movl %ebx,-32(%ebp)
	movl 12(%ebp),%edx
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L130
	pushl $3281
	call _m3_fault
	.align 16
.L130:
	movl (%edx),%edx
	movl %edx,-36(%ebp)
	cmpl $129,%ebx
	jle .L132
	pushl $3281
	call _m3_fault
	.align 16
.L132:
	movl %ebx,-40(%ebp)
	testl %esi,%esi
	jne .L133
	pushl $3284
	call _m3_fault
	.align 16
.L133:
	movl %esi,-44(%ebp)
	leal 0(,%ebx,4),%eax
	pushl %eax
	pushl %esi
	pushl %edx
	call memmove
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L135:
.L123:
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 TFloat__ToInts,.Lfe18-TFloat__ToInts
	.align 16
	.type	 TFloat__Normalize,@function
TFloat__Normalize:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 TFloat__Normalize,.Lfe19-TFloat__Normalize
	.align 16
	.type	 TFloat__ToReal,@function
TFloat__ToReal:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L139:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	fldl 8(%eax)
	fstps -12(%ebp)
	flds -12(%ebp)
.L140:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 TFloat__ToReal,.Lfe20-TFloat__ToReal
	.align 16
	.type	 TFloat__ToLongreal,@function
TFloat__ToLongreal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L142:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	fldl 8(%eax)
.L143:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 TFloat__ToLongreal,.Lfe21-TFloat__ToLongreal
	.align 16
	.type	 TFloat__ToExtended,@function
TFloat__ToExtended:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	fldl 8(%eax)
	ret
.Lfe22:
	.size	 TFloat__ToExtended,.Lfe22-TFloat__ToExtended
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TFloat
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe23:
	.size	 _m3_fault,.Lfe23-_m3_fault
.globl MM_TFloat
.data
	.align 4
	.type	 MM_TFloat,@object
	.size	 MM_TFloat,824
MM_TFloat:
	.long MM_TFloat+660
	.long MM_TFloat+44
	.zero	12
	.long MM_TFloat+392
	.zero	28
	.long 1980082802
.byte 113
.byte 223
.byte 186
.byte 122
.byte 3
.byte 117
.byte 191
.byte 12
	.zero	8
	.long 516
	.long 4
	.zero	20
	.long MM_TFloat+798
	.zero	36
	.long MM_TFloat+803
	.zero	4
	.long TFloat__Normalize
	.long TFloat__ToReal
	.long TFloat__ToLongreal
	.long TFloat__ToExtended
	.long TFloat__New
	.long TFloat__Prec
	.long TFloat__Add
	.long TFloat__Subtract
	.long TFloat__Multiply
	.long TFloat__Divide
	.long TFloat__Mod
	.long TFloat__EQ
	.long TFloat__LT
	.long TFloat__LE
	.long TFloat__FloatF
	.long TFloat__FloatI
	.long TFloat__Trunc
	.long TFloat__Round
	.long TFloat__Floor
	.long TFloat__Ceiling
	.long TFloat__ToChars
	.long TFloat__ToInts
	.long MI_Convert+44
	.zero	4
	.ascii	"ToExtended"
	.zero	1
	.ascii	"ToLongreal"
	.zero	1
	.ascii	"ToReal"
	.zero	1
	.ascii	"Normalize"
	.zero	1
	.ascii	"ToInts"
	.zero	1
	.ascii	"ToChars"
	.zero	1
	.ascii	"Ceiling"
	.zero	1
	.ascii	"Floor"
	.zero	1
	.ascii	"Round"
	.zero	1
	.ascii	"Trunc"
	.zero	1
	.ascii	"FloatI"
	.zero	1
	.ascii	"FloatF"
	.zero	1
	.ascii	"LE"
	.zero	1
	.ascii	"LT"
	.zero	1
	.ascii	"EQ"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Divide"
	.zero	1
	.ascii	"Multiply"
	.zero	1
	.ascii	"Subtract"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"Prec"
	.zero	1
	.ascii	"New"
	.zero	4
	.long TFloat__ToExtended
	.long MM_TFloat+244
	.zero	4
	.long TFloat__ToLongreal
	.long MM_TFloat+255
	.zero	4
	.long TFloat__ToReal
	.long MM_TFloat+266
	.zero	4
	.long TFloat__Normalize
	.long MM_TFloat+273
	.zero	4
	.long TFloat__ToInts
	.long MM_TFloat+283
	.long MI_TFloat+160
	.long TFloat__ToChars
	.long MM_TFloat+290
	.long MI_TFloat+156
	.long TFloat__Ceiling
	.long MM_TFloat+298
	.long MI_TFloat+152
	.long TFloat__Floor
	.long MM_TFloat+306
	.long MI_TFloat+148
	.long TFloat__Round
	.long MM_TFloat+312
	.long MI_TFloat+144
	.long TFloat__Trunc
	.long MM_TFloat+318
	.long MI_TFloat+140
	.long TFloat__FloatI
	.long MM_TFloat+324
	.long MI_TFloat+136
	.long TFloat__FloatF
	.long MM_TFloat+331
	.long MI_TFloat+132
	.long TFloat__LE
	.long MM_TFloat+338
	.long MI_TFloat+128
	.long TFloat__LT
	.long MM_TFloat+341
	.long MI_TFloat+124
	.long TFloat__EQ
	.long MM_TFloat+344
	.long MI_TFloat+120
	.long TFloat__Mod
	.long MM_TFloat+347
	.long MI_TFloat+116
	.long TFloat__Divide
	.long MM_TFloat+351
	.long MI_TFloat+112
	.long TFloat__Multiply
	.long MM_TFloat+358
	.long MI_TFloat+108
	.long TFloat__Subtract
	.long MM_TFloat+367
	.long MI_TFloat+104
	.long TFloat__Add
	.long MM_TFloat+376
	.long MI_TFloat+100
	.long TFloat__Prec
	.long MM_TFloat+380
	.long MI_TFloat+96
	.long TFloat__New
	.long MM_TFloat+385
	.long MI_TFloat+92
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/TFloat.m3"
	.zero	1
.byte 1
.byte 14
.byte 26
.byte 129
.byte 0
	.ascii	"TFloat.ToInts.Ptr"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
