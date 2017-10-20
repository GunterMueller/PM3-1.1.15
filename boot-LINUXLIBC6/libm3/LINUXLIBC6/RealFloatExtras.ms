	.file	"RealFloatExtras.mc"
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
	.type	 RealFloatExtras__RaiseInvalid,@function
RealFloatExtras__RaiseInvalid:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L2:
	movl $MM_RealFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	call RealFloatExtras__ZeroFn
	fstps -16(%ebp)
	call RealFloatExtras__ZeroFn
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fdivrs -16(%ebp)
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RealFloatExtras__RaiseInvalid,.Lfe1-RealFloatExtras__RaiseInvalid
	.align 16
	.type	 RealFloatExtras__RaiseDivByZero,@function
RealFloatExtras__RaiseDivByZero:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L5:
	movl $MM_RealFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	call RealFloatExtras__ZeroFn
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movsbl 8(%ebp),%eax
	pushl %eax
	fidivrl (%esp)
	addl $4,%esp
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RealFloatExtras__RaiseDivByZero,.Lfe2-RealFloatExtras__RaiseDivByZero
	.align 16
	.type	 RealFloatExtras__ZeroFn,@function
RealFloatExtras__ZeroFn:
	pushl %ebp
	movl %esp,%ebp
	fldz
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RealFloatExtras__ZeroFn,.Lfe3-RealFloatExtras__ZeroFn
	.align 16
	.type	 RealFloatExtras__RaiseLargeOverflow,@function
RealFloatExtras__RaiseLargeOverflow:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L9:
	movl $MM_RealFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0x7f7fffff
	movl MI_RealFloat+52,%eax
	call *%eax
	leal (%eax,%eax,2),%eax
	pushl %eax
	pushl $0x3f800000
	movl MI_RealFloat+44,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movsbl 8(%ebp),%eax
	pushl %eax
	fimull (%esp)
	addl $4,%esp
.L10:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RealFloatExtras__RaiseLargeOverflow,.Lfe4-RealFloatExtras__RaiseLargeOverflow
	.align 16
	.type	 RealFloatExtras__RaiseLargeUnderflow,@function
RealFloatExtras__RaiseLargeUnderflow:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L12:
	movl $MM_RealFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0x800000
	movl MI_RealFloat+52,%eax
	call *%eax
	leal (%eax,%eax,2),%eax
	pushl %eax
	pushl $0x3f800000
	movl MI_RealFloat+44,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movsbl 8(%ebp),%eax
	pushl %eax
	fimull (%esp)
	addl $4,%esp
.L13:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RealFloatExtras__RaiseLargeUnderflow,.Lfe5-RealFloatExtras__RaiseLargeUnderflow
.section	.rodata
	.align 4
	.type	 L_6.0,@object
	.size	 L_6.0,28
L_6.0:
	.long .L16
	.long .L17
	.long .L18
	.long .L19
	.long .L16
	.long .L16
	.long .L16
	.align 4
.LC0:
	.long 0x0,0x3fe00000
.text
	.align 16
	.type	 RealFloatExtras__Round,@function
RealFloatExtras__Round:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	flds 8(%ebp)
.L15:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MI_FloatMode+72,%eax
	fstpt -28(%ebp)
	call *%eax
	fldt -28(%ebp)
	jmp *L_6.0(,%eax,4)
	.align 16
.L17:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
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
	jb .L32
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L27
	decl %edx
	jmp .L27
	.align 16
.L18:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
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
	je .L33
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L27
	incl %edx
	jmp .L27
	.align 16
.L19:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -12(%ebp)
	jmp .L27
	.align 16
.L16:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L26
	fldl .LC0
	faddp %st,%st(1)
	jmp .L31
	.align 16
.L26:
	fldl .LC0
	fsubrp %st,%st(1)
.L31:
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -12(%ebp)
	jmp .L27
	.align 16
.L32:
.L33:
	fstp %st(0)
.L27:
	movl %edx,%eax
.L30:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RealFloatExtras__Round,.Lfe6-RealFloatExtras__Round
	.align 16
	.type	 RealFloatExtras__SetBehaviors,@function
RealFloatExtras__SetBehaviors:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
.L35:
	movb %bl,%al
	xorl %edx,%edx
	movb %al,%dl
	cmpl $31,%edx
	ja .L36
	btl %edx,%esi
	jnc .L36
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	movl MI_FloatMode+108,%eax
	call *%eax
	addl $8,%esp
.L36:
	incl %ebx
	cmpl $6,%ebx
	jle .L35
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RealFloatExtras__SetBehaviors,.Lfe7-RealFloatExtras__SetBehaviors
	.align 16
	.type	 RealFloatExtras__SetFlag,@function
RealFloatExtras__SetFlag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_FloatMode+76,%eax
	movb 8(%ebp),%bl
	call *%eax
	movl %eax,%edx
	xorl %ecx,%ecx
	movb %bl,%cl
	cmpl $31,%ecx
	ja .L44
	btl %ecx,%edx
	jc .L41
.L44:
	cmpl $31,%ecx
	ja .L45
	movl $1,%eax
	sall %cl,%eax
	orl %edx,%eax
	jmp .L46
	.align 16
.L45:
	movl %edx,%eax
.L46:
	pushl %eax
	movl MI_FloatMode+80,%eax
	call *%eax
.L41:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RealFloatExtras__SetFlag,.Lfe8-RealFloatExtras__SetFlag
	.align 16
	.type	 RealFloatExtras__ToBinary,@function
RealFloatExtras__ToBinary:
	pushl %ebp
	movl %esp,%ebp
	subl $104,%esp
	pushl %ebx
.L48:
	movl $MM_RealFloatExtras+80,-76(%ebp)
	movl $4,-80(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-84(%ebp)
	leal -84(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-64(%ebp)
	movl $0,-60(%ebp)
	pushl $56
	pushl $0
	leal -56(%ebp),%eax
	pushl %eax
	call memset
	xorl %ebx,%ebx
	addl $12,%esp
	fldz
	flds 8(%ebp)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L49
	movl %ebx,-64(%ebp)
	leal -96(%ebp),%eax
	leal -88(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl $1,-92(%ebp)
	movl $1,-88(%ebp)
	pushl %eax
	movl MM_RealFloatExtras+88,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-60(%ebp)
	addl $8,%esp
	testl %eax,%eax
	jne .L50
	pushl $1892
	call _m3_fault
	.align 16
.L50:
	cmpl $0,4(%eax)
	jne .L51
	pushl $1890
	call _m3_fault
	.align 16
.L51:
	movl (%eax),%eax
	movb $0,(%eax)
	jmp .L52
	.align 16
.L49:
	pushl 8(%ebp)
	movl MI_RealFloat+52,%eax
	call *%eax
	movl %eax,-64(%ebp)
	negl %eax
	pushl %eax
	flds 8(%ebp)
	fabs
	subl $4,%esp
	fstps (%esp)
	movl MI_RealFloat+44,%eax
	call *%eax
	addl $12,%esp
	jmp .L53
	.align 16
.L54:
	fld1
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	je .L64
	cmpl $55,%ebx
	jle .L56
	fstp %st(0)
	fstp %st(0)
	pushl $1969
	call _m3_fault
	.align 16
.L56:
	movb $1,-56(%ebx,%ebp)
	fsubrp %st,%st(1)
	jmp .L57
	.align 16
.L64:
	fstp %st(0)
	cmpl $55,%ebx
	jle .L58
	fstp %st(0)
	pushl $1969
	call _m3_fault
	.align 16
.L58:
	movb $0,-56(%ebx,%ebp)
.L57:
	incl %ebx
	fadd %st(0),%st
.L53:
	fldz
	fucomp %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L54
	fstp %st(0)
	leal -96(%ebp),%eax
	leal -88(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl $1,-92(%ebp)
	movl %ebx,-88(%ebp)
	pushl %eax
	movl MM_RealFloatExtras+88,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-60(%ebp)
	addl $8,%esp
	cmpl $56,%ebx
	jle .L60
	pushl $2049
	call _m3_fault
	.align 16
.L60:
	movl %ebx,-100(%ebp)
	leal -56(%ebp),%edx
	movl %edx,-104(%ebp)
	testl %eax,%eax
	jne .L61
	pushl $2052
	call _m3_fault
	.align 16
.L61:
	cmpl %ebx,4(%eax)
	je .L62
	pushl $2051
	call _m3_fault
	.align 16
.L62:
	pushl %ebx
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	call memmove
.L52:
	movl 12(%ebp),%edx
	movl -64(%ebp),%eax
	movl %eax,(%edx)
	movl -60(%ebp),%eax
	movl %eax,4(%edx)
	movl -84(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L63:
	movl -108(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RealFloatExtras__ToBinary,.Lfe9-RealFloatExtras__ToBinary
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RealFloatExtras
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_RealFloatExtras
.data
	.align 4
	.type	 MM_RealFloatExtras,@object
	.size	 MM_RealFloatExtras,488
MM_RealFloatExtras:
	.long MM_RealFloatExtras+320
	.zero	4
	.long MM_RealFloatExtras+88
	.zero	8
	.long MM_RealFloatExtras+208
	.zero	20
	.long RealFloatExtras__ZeroFn
	.long RealFloatExtras__ToBinary
	.long RealFloatExtras__RaiseInvalid
	.long RealFloatExtras__RaiseDivByZero
	.long RealFloatExtras__RaiseLargeOverflow
	.long RealFloatExtras__RaiseLargeUnderflow
	.long RealFloatExtras__Round
	.long RealFloatExtras__SetFlag
	.long RealFloatExtras__SetBehaviors
	.long MI_FloatMode+88
	.zero	8
	.long 287642492
	.ascii	"ToBinary"
	.zero	1
	.ascii	"SetFlag"
	.zero	1
	.ascii	"SetBehaviors"
	.zero	1
	.ascii	"Round"
	.zero	1
	.ascii	"RaiseLargeUnderflow"
	.zero	1
	.ascii	"RaiseLargeOverflow"
	.zero	1
	.ascii	"ZeroFn"
	.zero	1
	.ascii	"RaiseDivByZero"
	.zero	1
	.ascii	"RaiseInvalid"
	.zero	3
	.long RealFloatExtras__ToBinary
	.long MM_RealFloatExtras+96
	.long MI_RealFloatExtras+148
	.long RealFloatExtras__SetFlag
	.long MM_RealFloatExtras+105
	.long MI_RealFloatExtras+172
	.long RealFloatExtras__SetBehaviors
	.long MM_RealFloatExtras+113
	.long MI_RealFloatExtras+176
	.long RealFloatExtras__Round
	.long MM_RealFloatExtras+126
	.long MI_RealFloatExtras+168
	.long RealFloatExtras__RaiseLargeUnderflow
	.long MM_RealFloatExtras+132
	.long MI_RealFloatExtras+164
	.long RealFloatExtras__RaiseLargeOverflow
	.long MM_RealFloatExtras+152
	.long MI_RealFloatExtras+160
	.long RealFloatExtras__ZeroFn
	.long MM_RealFloatExtras+171
	.zero	4
	.long RealFloatExtras__RaiseDivByZero
	.long MM_RealFloatExtras+178
	.long MI_RealFloatExtras+156
	.long RealFloatExtras__RaiseInvalid
	.long MM_RealFloatExtras+193
	.long MI_RealFloatExtras+152
	.zero	4
	.ascii	"RealFloatExtras.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/langu"
	.ascii	"age/modula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6"
	.ascii	"/boot-LINUXLIBC6/libm3/src/sqrt/FloatExtras.mg"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
