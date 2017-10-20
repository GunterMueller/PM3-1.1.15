	.file	"LongFloatExtras.mc"
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
	.type	 LongFloatExtras__RaiseInvalid,@function
LongFloatExtras__RaiseInvalid:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
.L2:
	movl $MM_LongFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	call LongFloatExtras__ZeroFn
	fstpl -20(%ebp)
	call LongFloatExtras__ZeroFn
	fldl -20(%ebp)
	fdivp %st,%st(1)
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	subl $8,%esp
	fstpl (%esp)
	popl %edx
	popl %ecx
	movl %edx,-28(%ebp)
	movl %ecx,-24(%ebp)
	fldl -28(%ebp)
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 LongFloatExtras__RaiseInvalid,.Lfe1-LongFloatExtras__RaiseInvalid
	.align 16
	.type	 LongFloatExtras__RaiseDivByZero,@function
LongFloatExtras__RaiseDivByZero:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
.L5:
	movl $MM_LongFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	call LongFloatExtras__ZeroFn
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movsbl 8(%ebp),%eax
	pushl %eax
	fildl (%esp)
	addl $4,%esp
	fdivp %st,%st(1)
	subl $8,%esp
	fstpl (%esp)
	popl %edx
	popl %ecx
	movl %edx,-20(%ebp)
	movl %ecx,-16(%ebp)
	fldl -20(%ebp)
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LongFloatExtras__RaiseDivByZero,.Lfe2-LongFloatExtras__RaiseDivByZero
	.align 16
	.type	 LongFloatExtras__ZeroFn,@function
LongFloatExtras__ZeroFn:
	pushl %ebp
	movl %esp,%ebp
	fldz
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 LongFloatExtras__ZeroFn,.Lfe3-LongFloatExtras__ZeroFn
	.align 16
	.type	 LongFloatExtras__RaiseLargeOverflow,@function
LongFloatExtras__RaiseLargeOverflow:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L9:
	movl $MM_LongFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $2146435071
	pushl $-80
	movl MI_LongFloat+52,%eax
	call *%eax
	leal (%eax,%eax,2),%eax
	pushl %eax
	pushl $1072693248
	pushl $0
	movl MI_LongFloat+44,%eax
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
	.size	 LongFloatExtras__RaiseLargeOverflow,.Lfe4-LongFloatExtras__RaiseLargeOverflow
	.align 16
	.type	 LongFloatExtras__RaiseLargeUnderflow,@function
LongFloatExtras__RaiseLargeUnderflow:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L12:
	movl $MM_LongFloatExtras+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $1048575
	pushl $-3
	movl MI_LongFloat+52,%eax
	call *%eax
	leal (%eax,%eax,2),%eax
	pushl %eax
	pushl $1072693248
	pushl $0
	movl MI_LongFloat+44,%eax
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
	.size	 LongFloatExtras__RaiseLargeUnderflow,.Lfe5-LongFloatExtras__RaiseLargeUnderflow
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
	.type	 LongFloatExtras__Round,@function
LongFloatExtras__Round:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	fldl 8(%ebp)
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
.L34:
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
	jmp .L34
	.align 16
.L26:
	fldl .LC0
	fsubrp %st,%st(1)
	jmp .L34
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
	.size	 LongFloatExtras__Round,.Lfe6-LongFloatExtras__Round
	.align 16
	.type	 LongFloatExtras__SetBehaviors,@function
LongFloatExtras__SetBehaviors:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
.L36:
	movb %bl,%al
	xorl %edx,%edx
	movb %al,%dl
	cmpl $31,%edx
	ja .L37
	btl %edx,%esi
	jnc .L37
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	movl MI_FloatMode+108,%eax
	call *%eax
	addl $8,%esp
.L37:
	incl %ebx
	cmpl $6,%ebx
	jle .L36
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 LongFloatExtras__SetBehaviors,.Lfe7-LongFloatExtras__SetBehaviors
	.align 16
	.type	 LongFloatExtras__SetFlag,@function
LongFloatExtras__SetFlag:
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
	ja .L45
	btl %ecx,%edx
	jc .L42
.L45:
	cmpl $31,%ecx
	ja .L46
	movl $1,%eax
	sall %cl,%eax
	orl %edx,%eax
	jmp .L47
	.align 16
.L46:
	movl %edx,%eax
.L47:
	pushl %eax
	movl MI_FloatMode+80,%eax
	call *%eax
.L42:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 LongFloatExtras__SetFlag,.Lfe8-LongFloatExtras__SetFlag
	.align 16
	.type	 LongFloatExtras__ToBinary,@function
LongFloatExtras__ToBinary:
	pushl %ebp
	movl %esp,%ebp
	subl $104,%esp
	pushl %ebx
.L49:
	movl $MM_LongFloatExtras+80,-76(%ebp)
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
	fldl 8(%ebp)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L50
	movl %ebx,-64(%ebp)
	leal -96(%ebp),%eax
	leal -88(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl $1,-92(%ebp)
	movl $1,-88(%ebp)
	pushl %eax
	movl MM_LongFloatExtras+88,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-60(%ebp)
	addl $8,%esp
	testl %eax,%eax
	jne .L51
	pushl $1892
	call _m3_fault
	.align 16
.L51:
	cmpl $0,4(%eax)
	jne .L52
	pushl $1890
	call _m3_fault
	.align 16
.L52:
	movl (%eax),%eax
	movb $0,(%eax)
	jmp .L53
	.align 16
.L50:
	pushl 12(%ebp)
	pushl 8(%ebp)
	movl MI_LongFloat+52,%eax
	call *%eax
	movl %eax,-64(%ebp)
	negl %eax
	pushl %eax
	fldl 8(%ebp)
	fabs
	subl $8,%esp
	fstpl (%esp)
	movl MI_LongFloat+44,%eax
	call *%eax
	addl $20,%esp
	jmp .L54
	.align 16
.L55:
	fld1
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	je .L65
	cmpl $55,%ebx
	jle .L57
	fstp %st(0)
	fstp %st(0)
	pushl $1969
	call _m3_fault
	.align 16
.L57:
	movb $1,-56(%ebx,%ebp)
	fsubrp %st,%st(1)
	jmp .L58
	.align 16
.L65:
	fstp %st(0)
	cmpl $55,%ebx
	jle .L59
	fstp %st(0)
	pushl $1969
	call _m3_fault
	.align 16
.L59:
	movb $0,-56(%ebx,%ebp)
.L58:
	incl %ebx
	fadd %st(0),%st
.L54:
	fldz
	fucomp %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L55
	fstp %st(0)
	leal -96(%ebp),%eax
	leal -88(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl $1,-92(%ebp)
	movl %ebx,-88(%ebp)
	pushl %eax
	movl MM_LongFloatExtras+88,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-60(%ebp)
	addl $8,%esp
	cmpl $56,%ebx
	jle .L61
	pushl $2049
	call _m3_fault
	.align 16
.L61:
	movl %ebx,-100(%ebp)
	leal -56(%ebp),%edx
	movl %edx,-104(%ebp)
	testl %eax,%eax
	jne .L62
	pushl $2052
	call _m3_fault
	.align 16
.L62:
	cmpl %ebx,4(%eax)
	je .L63
	pushl $2051
	call _m3_fault
	.align 16
.L63:
	pushl %ebx
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	call memmove
.L53:
	movl 16(%ebp),%edx
	movl -64(%ebp),%eax
	movl %eax,(%edx)
	movl -60(%ebp),%eax
	movl %eax,4(%edx)
	movl -84(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L64:
	movl -108(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 LongFloatExtras__ToBinary,.Lfe9-LongFloatExtras__ToBinary
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_LongFloatExtras
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_LongFloatExtras
.data
	.align 4
	.type	 MM_LongFloatExtras,@object
	.size	 MM_LongFloatExtras,488
MM_LongFloatExtras:
	.long MM_LongFloatExtras+320
	.zero	4
	.long MM_LongFloatExtras+88
	.zero	8
	.long MM_LongFloatExtras+208
	.zero	20
	.long LongFloatExtras__ZeroFn
	.long LongFloatExtras__ToBinary
	.long LongFloatExtras__RaiseInvalid
	.long LongFloatExtras__RaiseDivByZero
	.long LongFloatExtras__RaiseLargeOverflow
	.long LongFloatExtras__RaiseLargeUnderflow
	.long LongFloatExtras__Round
	.long LongFloatExtras__SetFlag
	.long LongFloatExtras__SetBehaviors
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
	.long LongFloatExtras__ToBinary
	.long MM_LongFloatExtras+96
	.long MI_LongFloatExtras+148
	.long LongFloatExtras__SetFlag
	.long MM_LongFloatExtras+105
	.long MI_LongFloatExtras+172
	.long LongFloatExtras__SetBehaviors
	.long MM_LongFloatExtras+113
	.long MI_LongFloatExtras+176
	.long LongFloatExtras__Round
	.long MM_LongFloatExtras+126
	.long MI_LongFloatExtras+168
	.long LongFloatExtras__RaiseLargeUnderflow
	.long MM_LongFloatExtras+132
	.long MI_LongFloatExtras+164
	.long LongFloatExtras__RaiseLargeOverflow
	.long MM_LongFloatExtras+152
	.long MI_LongFloatExtras+160
	.long LongFloatExtras__ZeroFn
	.long MM_LongFloatExtras+171
	.zero	4
	.long LongFloatExtras__RaiseDivByZero
	.long MM_LongFloatExtras+178
	.long MI_LongFloatExtras+156
	.long LongFloatExtras__RaiseInvalid
	.long MM_LongFloatExtras+193
	.long MI_LongFloatExtras+152
	.zero	4
	.ascii	"LongFloatExtras.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/langu"
	.ascii	"age/modula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6"
	.ascii	"/boot-LINUXLIBC6/libm3/src/sqrt/FloatExtras.mg"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
