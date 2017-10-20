	.file	"Value.mc"
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
	.type	 Value__TypeCheck,@function
Value__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L1
	testb $1,30(%ebx)
	jne .L1
	movswl 28(%ebx),%eax
	sall $20,%eax
	sarl $20,%eax
	cmpl $-1,%eax
	jne .L4
	movl MI_Scanner+88,%esi
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	movl MI_Type+44,%edx
	leal 2048(%edx),%eax
	cmpl $4095,%eax
	jbe .L5
	pushl $417
	call _m3_fault
	.align 16
.L5:
	movswl 28(%ebx),%eax
	andl $-4096,%eax
	andl $4095,%edx
	orw %ax,%dx
	movl (%ebx),%eax
	movw %dx,28(%ebx)
	movl 4(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	andw $61440,28(%ebx)
	orb $1,30(%ebx)
	movl %esi,MI_Scanner+88
	jmp .L1
	.align 16
.L4:
	cmpl %eax,MI_Type+44
	jne .L1
	pushl %ebx
	call Value__IllegalRecursion
.L1:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Value__TypeCheck,.Lfe1-Value__TypeCheck
	.align 16
	.type	 Value__TypeOf,@function
Value__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L12
	xorl %eax,%eax
	movb 31(%ebx),%al
	testb $64,%al
	jne .L10
	orb $64,%al
	movb %al,31(%ebx)
	movl (%ebx),%eax
	movl 44(%eax),%eax
	pushl %ebx
	call *%eax
	andb $191,31(%ebx)
	jmp .L11
	.align 16
.L10:
	pushl %ebx
	call Value__IllegalRecursion
.L12:
	movl MI_ErrType+44,%eax
.L11:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Value__TypeOf,.Lfe2-Value__TypeOf
	.align 16
	.type	 Value__SetGlobals,@function
Value__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L13
	testb $1,30(%edx)
	jne .L15
	pushl $832
	call _m3_fault
	.align 16
.L15:
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %edx
	call *%eax
.L13:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Value__SetGlobals,.Lfe3-Value__SetGlobals
	.align 16
	.type	 Value__Load,@function
Value__Load:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L16
	xorl %eax,%eax
	movb 30(%edx),%al
	testb $1,%al
	jne .L18
	pushl $944
	call _m3_fault
	.align 16
.L18:
	orb $128,%al
	movb %al,30(%edx)
	movl (%edx),%eax
	movl 12(%eax),%eax
	pushl %edx
	call *%eax
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Value__Load,.Lfe4-Value__Load
	.align 16
	.type	 Value__ToExpr,@function
Value__ToExpr:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L23
	xorl %eax,%eax
	movb 31(%ebx),%al
	testb $128,31(%ebx)
	jne .L21
	orb $128,%al
	movb %al,31(%ebx)
	movl (%ebx),%eax
	movl 36(%eax),%eax
	pushl %ebx
	call *%eax
	movl %eax,%esi
	andb $127,31(%ebx)
	jmp .L22
	.align 16
.L21:
	pushl %ebx
	call Value__IllegalRecursion
.L23:
	movl %esi,%eax
.L22:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Value__ToExpr,.Lfe5-Value__ToExpr
	.align 16
	.type	 Value__ToType,@function
Value__ToType:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L28
	xorl %eax,%eax
	movb 32(%ebx),%al
	testb $1,%al
	jne .L26
	orb $1,%al
	movb %al,32(%ebx)
	movl (%ebx),%eax
	movl 40(%eax),%eax
	pushl %ebx
	call *%eax
	movl %eax,%esi
	andb $254,32(%ebx)
	jmp .L27
	.align 16
.L26:
	pushl %ebx
	call Value__IllegalRecursion
.L28:
	movl %esi,%eax
.L27:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Value__ToType,.Lfe6-Value__ToType
	.align 16
	.type	 Value__Base,@function
Value__Base:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L30
	movl (%edx),%eax
	movl 48(%eax),%eax
	pushl %edx
	call *%eax
	jmp .L31
	.align 16
.L30:
	movl %edx,%eax
.L31:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Value__Base,.Lfe7-Value__Base
	.align 16
	.type	 Value__IllegalRecursion,@function
Value__IllegalRecursion:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testb $64,30(%ebx)
	jne .L32
	pushl $MM_Value+200
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	orb $64,30(%ebx)
.L32:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Value__IllegalRecursion,.Lfe8-Value__IllegalRecursion
	.align 16
	.type	 Value__ClassOf,@function
Value__ClassOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L35
	movb 29(%eax),%al
	andl $255,%eax
	shrl $4,%eax
	jmp .L36
	.align 16
.L35:
	movl $9,%eax
.L36:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Value__ClassOf,.Lfe9-Value__ClassOf
	.align 16
	.type	 Value__ToFP,@function
Value__ToFP:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $40
	xorl %ebx,%ebx
	pushl %ebx
	leal -48(%ebp),%edi
	pushl %edi
	call memset
	addl $12,%esp
	testl %esi,%esi
	jne .L38
	movl 12(%ebp),%eax
	movl MI_M3FP+44,%edx
	movl %edx,(%eax)
	movl MI_M3FP+48,%edx
	jmp .L44
	.align 16
.L38:
	pushl %esi
	call Value__Base
	movl %eax,%esi
	addl $4,%esp
	cmpl $0,MM_Value+44
	jne .L39
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,MM_Value+44
.L39:
	movl %ebx,-48(%ebp)
	movl MM_Value+44,%eax
	movl %eax,-44(%ebp)
	movl %ebx,MM_Value+44
	movl %ebx,-40(%ebp)
	movl %ebx,-12(%ebp)
	pushl %edi
	pushl %esi
	call Value__AddFPTag
	movl %eax,%ebx
	addl $8,%esp
	movl -48(%ebp),%edx
	testl %edx,%edx
	je .L40
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_TypeFP+48,%eax
	jmp .L45
	.align 16
.L40:
	leal -8(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_TypeFP+56,%eax
.L45:
	call *%eax
	addl $8,%esp
	movl -44(%ebp),%eax
	movl %eax,MM_Value+44
	movl $0,-44(%ebp)
	movl $0,-48(%ebp)
	testl %ebx,%ebx
	jle .L42
	cmpl $1,%ebx
	je .L43
	pushl $2064
	call _m3_fault
	.align 16
.L43:
	pushl $0
	leal -48(%ebp),%eax
	pushl %eax
	pushl %esi
	call Value__AddFPEdges
	leal -64(%ebp),%ebx
	pushl %ebx
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_TypeFP+44,%eax
	call *%eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %eax
	movl MI_TypeFP+52,%eax
	call *%eax
.L42:
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
.L44:
	movl %edx,4(%eax)
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Value__ToFP,.Lfe10-Value__ToFP
	.align 16
	.type	 Value__AddFPTag,@function
Value__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L47
	movl (%ebx),%eax
	movl 48(%eax),%eax
	pushl %ebx
	call *%eax
	movl %eax,%ebx
	pushl $60
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl (%ebx),%eax
	movl 52(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl %eax,%ebx
	pushl $62
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
.L47:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Value__AddFPTag,.Lfe11-Value__AddFPTag
	.align 16
	.type	 Value__AddFPEdges,@function
Value__AddFPEdges:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 16(%ebp),%ebx
	testl %edx,%edx
	je .L51
	movl (%edx),%eax
	movl 48(%eax),%eax
	pushl %edx
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 56(%eax),%eax
	pushl %edx
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L51
	movl 12(%ebp),%ecx
	movl 36(%ecx),%eax
	testl %eax,%eax
	jne .L55
	cmpl $5,%ebx
	jle .L53
	pushl $2497
	call _m3_fault
	.align 16
.L53:
	movl %edx,12(%ecx,%ebx,4)
	jmp .L54
	.align 16
.L55:
	cmpl %ebx,4(%eax)
	ja .L56
	pushl $2514
	call _m3_fault
	.align 16
.L56:
	movl (%eax),%eax
	movl %edx,(%eax,%ebx,4)
.L54:
	incl %ebx
.L51:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Value__AddFPEdges,.Lfe12-Value__AddFPEdges
	.align 16
	.type	 ValueRep__FPStart,@function
ValueRep__FPStart:
	pushl %ebp
	movl %esp,%ebp
	subl $404,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%ebp),%eax
	movl 20(%ebp),%edi
	movb 24(%ebp),%bl
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $8,%esp
	testb %bl,%bl
	je .L59
	movl $0,-404(%ebp)
	pushl $1
	pushl $1
	pushl $1
	leal -404(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_Scope+120,%eax
	call *%eax
	pushl %ebx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Scope+124,%eax
	call *%eax
	addl $28,%esp
	jmp .L60
	.align 16
.L59:
	movl 12(%esi),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
	addl $8,%esp
.L60:
	testl %edi,%edi
	je .L61
	pushl $64
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl %edi
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+56,%eax
	call *%eax
	addl $16,%esp
.L61:
	testb $4,30(%esi)
	je .L58
	pushl $36
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl 16(%esi),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
.L58:
	leal -416(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 ValueRep__FPStart,.Lfe13-ValueRep__FPStart
	.align 16
	.type	 Value__Declare,@function
Value__Declare:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $3
	pushl $0
	leal -12(%ebp),%ebx
	pushl %ebx
	call memset
	addl $12,%esp
	testl %esi,%esi
	je .L63
	xorl %eax,%eax
	movb 31(%esi),%al
	testb $1,%al
	jne .L63
	testb $128,30(%esi)
	jne .L66
	testb $8,%al
	jne .L63
.L66:
	orb $1,%al
	movb %al,31(%esi)
	pushl %ebx
	pushl %esi
	call Value__GetVSFlags
	movl (%esi),%eax
	movl 16(%eax),%ecx
	pushl %esi
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	je .L63
	cmpb $0,MI_Host+69
	je .L63
	cmpb $0,-12(%ebp)
	je .L63
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	call Value__ToFP
	pushl %esi
	movl MI_Scope+112,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl %eax,%edi
	movl (%edx),%eax
	movl 28(%eax),%ecx
	xorl %eax,%eax
	movb -10(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb -11(%ebp),%al
	pushl %eax
	pushl %ebx
	movl 12(%esi),%eax
	pushl %eax
	pushl %edi
	pushl %edx
	call *%ecx
.L63:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Value__Declare,.Lfe14-Value__Declare
	.align 16
	.type	 Value__GetVSFlags,@function
Value__GetVSFlags:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl $1,%edx
	xorl %eax,%eax
	movb 31(%ecx),%al
	testb $8,%al
	jne .L69
	shrl $4,%eax
	movl %eax,%edx
	andl $1,%edx
.L69:
	movl 12(%ebp),%eax
	movb %dl,(%eax)
	testb $4,30(%ecx)
	je .L70
	movl 12(%ebp),%edx
	testb $16,31(%ecx)
	sete %al
	jmp .L75
	.align 16
.L70:
	movl 12(%ebp),%edx
	xorl %eax,%eax
	movb 31(%ecx),%al
	sall $28,%eax
	shrl $31,%eax
.L75:
	movb %al,1(%edx)
	movl 12(%ebp),%edx
	cmpb $0,1(%edx)
	sete %al
	movb %al,2(%edx)
	testb $4,30(%ecx)
	jne .L68
	xorl %eax,%eax
	movb 29(%ecx),%al
	shrl $4,%eax
	cmpl $4,%eax
	jne .L68
	pushl %ecx
	call Value__Base
	movl %eax,%ecx
	addl $4,%esp
	testl %ecx,%ecx
	je .L73
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Value+244
	jg .L74
	movl MM_Value+240,%eax
	cmpl %edx,4(%eax)
	jge .L73
.L74:
	pushl $3509
	call _m3_fault
	.align 16
.L73:
	pushl %ecx
	movl MI_Procedure+52,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	movb %dl,2(%eax)
.L68:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Value__GetVSFlags,.Lfe15-Value__GetVSFlags
	.align 16
	.type	 Value__ConstInit,@function
Value__ConstInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L76
	xorl %eax,%eax
	movb 31(%edx),%al
	testb $2,%al
	jne .L76
	testb $1,30(%edx)
	jne .L79
	pushl $3664
	call _m3_fault
	.align 16
.L79:
	orb $2,%al
	movb %al,31(%edx)
	movl MI_Scanner+88,%ebx
	movl 4(%edx),%eax
	movl %eax,MI_Scanner+88
	movl (%edx),%eax
	movl 20(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebx,MI_Scanner+88
.L76:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Value__ConstInit,.Lfe16-Value__ConstInit
	.align 16
	.type	 Value__NeedsInit,@function
Value__NeedsInit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L81
	movl (%edx),%eax
	movl 24(%eax),%eax
	pushl %edx
	call *%eax
	jmp .L82
	.align 16
.L81:
	movl %edx,%eax
.L82:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Value__NeedsInit,.Lfe17-Value__NeedsInit
	.align 16
	.type	 Value__LangInit,@function
Value__LangInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L83
	xorl %eax,%eax
	movb 31(%edx),%al
	testb $4,%al
	jne .L83
	testb $1,30(%edx)
	jne .L86
	pushl $3968
	call _m3_fault
	.align 16
.L86:
	orb $4,%al
	movb %al,31(%edx)
	movl MI_Scanner+88,%ebx
	movl 4(%edx),%eax
	movl %eax,MI_Scanner+88
	movl (%edx),%eax
	movl 28(%eax),%eax
	pushl %edx
	call *%eax
	movl MI_CG+216,%eax
	call *%eax
	movl %ebx,MI_Scanner+88
.L83:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Value__LangInit,.Lfe18-Value__LangInit
	.align 16
	.type	 Value__UserInit,@function
Value__UserInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L87
	movl MI_Scanner+88,%ebx
	movl 4(%edx),%eax
	movl %eax,MI_Scanner+88
	movl (%edx),%eax
	movl 32(%eax),%eax
	pushl %edx
	call *%eax
	movl MI_CG+216,%eax
	call *%eax
	movl %ebx,MI_Scanner+88
.L87:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Value__UserInit,.Lfe19-Value__UserInit
	.align 16
	.type	 ValueRep__Init,@function
ValueRep__Init:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl MI_Scanner+88,%eax
	movl %esi,%ebx
	movl %eax,4(%esi)
	movl %edx,12(%esi)
	movl $0,16(%esi)
	movl $0,20(%ebx)
	orw $4095,28(%ebx)
	xorl %eax,%eax
	movb 29(%ebx),%al
	andb $15,%al
	xorl %ecx,%ecx
	movb 16(%ebp),%cl
	movb %cl,%dl
	salb $4,%dl
	orb %al,%dl
	movb %dl,29(%ebx)
	andb $192,30(%ebx)
	cmpl $5,%ecx
	je .L90
	movl MM_Value+56,%eax
	movl %eax,24(%ebx)
	movl %ebx,MM_Value+56
.L90:
	andb $63,30(%ebx)
	movb 31(%ebx),%al
	andb $252,%al
	andl $248,%eax
	movb %al,31(%ebx)
	andl $240,%eax
	cmpb $0,MI_Scanner+100
	jne .L91
	orb $8,%al
.L91:
	movb %al,31(%ebx)
	movl %esi,%ebx
	leal -8(%ebp),%esp
	andb $15,31(%ebx)
	andb $254,32(%ebx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 ValueRep__Init,.Lfe20-ValueRep__Init
	.align 16
	.type	 ValueRep__NoExpr,@function
ValueRep__NoExpr:
	pushl %ebp
	movl %esp,%ebp
	pushl $4864
	call _m3_fault
	.align 16
.Lfe21:
	.size	 ValueRep__NoExpr,.Lfe21-ValueRep__NoExpr
	.align 16
	.type	 ValueRep__NoType,@function
ValueRep__NoType:
	pushl %ebp
	movl %esp,%ebp
	pushl $4944
	call _m3_fault
	.align 16
.Lfe22:
	.size	 ValueRep__NoType,.Lfe22-ValueRep__NoType
	.align 16
	.type	 ValueRep__NoLoader,@function
ValueRep__NoLoader:
	pushl %ebp
	movl %esp,%ebp
	pushl $5024
	call _m3_fault
	.align 16
.Lfe23:
	.size	 ValueRep__NoLoader,.Lfe23-ValueRep__NoLoader
	.align 16
	.type	 ValueRep__Never,@function
ValueRep__Never:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 ValueRep__Never,.Lfe24-ValueRep__Never
	.align 16
	.type	 ValueRep__NoInit,@function
ValueRep__NoInit:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 ValueRep__NoInit,.Lfe25-ValueRep__NoInit
	.align 16
	.type	 ValueRep__Always,@function
ValueRep__Always:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 ValueRep__Always,.Lfe26-ValueRep__Always
	.align 16
	.type	 ValueRep__TypeVoid,@function
ValueRep__TypeVoid:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 ValueRep__TypeVoid,.Lfe27-ValueRep__TypeVoid
	.align 16
	.type	 ValueRep__Self,@function
ValueRep__Self:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 ValueRep__Self,.Lfe28-ValueRep__Self
	.align 16
	.type	 Value__Reset,@function
Value__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Value+56
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Value__Reset,.Lfe29-Value__Reset
	.align 16
	.type	 Value__SetModule,@function
Value__SetModule:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Value+56,%edx
	movl 8(%ebp),%eax
	movl %eax,MM_Value+56
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Value__SetModule,.Lfe30-Value__SetModule
	.align 16
	.type	 Value__Reuse,@function
Value__Reuse:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	jmp .L104
	.align 16
.L105:
	andb $63,30(%edx)
	movb 31(%edx),%al
	andb $252,%al
	andl $248,%eax
	movb %al,31(%edx)
	movl %edx,%ecx
	andl $240,%eax
	cmpb $0,MI_Host+70
	jne .L106
	orb $8,%al
.L106:
	movb %al,31(%ecx)
	andb $15,31(%edx)
	andb $254,32(%edx)
	movl 24(%edx),%edx
.L104:
	testl %edx,%edx
	jne .L105
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 Value__Reuse,.Lfe31-Value__Reuse
	.align 16
	.type	 Value__IsExternal,@function
Value__IsExternal:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movb 30(%eax),%al
	andl $255,%eax
	sall $29,%eax
	shrl $31,%eax
	ret
.Lfe32:
	.size	 Value__IsExternal,.Lfe32-Value__IsExternal
	.align 16
	.type	 Value__IsImported,@function
Value__IsImported:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L111
	testb $8,31(%edx)
	setne %al
	andl $255,%eax
.L111:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 Value__IsImported,.Lfe33-Value__IsImported
	.align 16
	.type	 Value__IsWritable,@function
Value__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testb $2,30(%eax)
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 Value__IsWritable,.Lfe34-Value__IsWritable
	.align 16
	.type	 Value__CName,@function
Value__CName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L114
	movl (%edx),%eax
	movl 48(%eax),%eax
	pushl %edx
	call *%eax
	movl 12(%eax),%eax
	jmp .L115
	.align 16
.L114:
	movl %edx,%eax
.L115:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 Value__CName,.Lfe35-Value__CName
	.align 16
	.type	 Value__GlobalName,@function
Value__GlobalName:
	pushl %ebp
	movl %esp,%ebp
	subl $404,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L117
	movl $0,-404(%ebp)
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	testl %eax,%eax
	sete %al
	andl $255,%eax
	pushl %eax
	leal -404(%ebp),%ebx
	pushl %ebx
	pushl %edx
	movl MI_Scope+120,%eax
	call *%eax
	pushl %ebx
	movl MI_Scope+128,%eax
	call *%eax
	jmp .L118
	.align 16
.L117:
	movl %edx,%eax
.L118:
	movl -408(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 Value__GlobalName,.Lfe36-Value__GlobalName
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Value
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe37:
	.size	 _m3_fault,.Lfe37-_m3_fault
.globl MM_Value
.data
	.align 4
	.type	 MM_Value,@object
	.size	 MM_Value,1140
MM_Value:
	.long MM_Value+994
	.zero	4
	.long MM_Value+240
	.zero	8
	.long MM_Value+552
	.zero	4
	.long MM_Value+988
	.long MM_Value+988
	.zero	12
	.long Value__ToFP
	.long Value__GetVSFlags
	.zero	4
	.long ValueRep__Init
	.long ValueRep__FPStart
	.long ValueRep__NoExpr
	.long ValueRep__NoType
	.long ValueRep__NoLoader
	.long ValueRep__Never
	.long ValueRep__NoInit
	.long ValueRep__Always
	.long ValueRep__TypeVoid
	.long ValueRep__Self
	.long Value__TypeCheck
	.long Value__TypeOf
	.long Value__SetGlobals
	.long Value__Load
	.long Value__Declare
	.long Value__ConstInit
	.long Value__NeedsInit
	.long Value__LangInit
	.long Value__UserInit
	.long Value__ClassOf
	.long Value__IsExternal
	.long Value__IsImported
	.long Value__IsWritable
	.long Value__ToExpr
	.long Value__ToType
	.long Value__Base
	.long Value__CName
	.long Value__GlobalName
	.long Value__IllegalRecursion
	.long Value__AddFPTag
	.long Value__AddFPEdges
	.long Value__Reset
	.long Value__SetModule
	.long Value__Reuse
	.long 2
	.long MM_Value+208
	.long 30
	.ascii	"illegal recursive declaration"
	.zero	7
	.long -712670126
	.ascii	"GlobalName"
	.zero	1
	.ascii	"CName"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsImported"
	.zero	1
	.ascii	"IsExternal"
	.zero	1
	.ascii	"Reuse"
	.zero	1
	.ascii	"SetModule"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Self"
	.zero	1
	.ascii	"TypeVoid"
	.zero	1
	.ascii	"Always"
	.zero	1
	.ascii	"NoInit"
	.zero	1
	.ascii	"Never"
	.zero	1
	.ascii	"NoLoader"
	.zero	1
	.ascii	"NoType"
	.zero	1
	.ascii	"NoExpr"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"UserInit"
	.zero	1
	.ascii	"LangInit"
	.zero	1
	.ascii	"NeedsInit"
	.zero	1
	.ascii	"ConstInit"
	.zero	1
	.ascii	"GetVSFlags"
	.zero	1
	.ascii	"Declare"
	.zero	1
	.ascii	"FPStart"
	.zero	1
	.ascii	"AddFPEdges"
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"ToFP"
	.zero	1
	.ascii	"ClassOf"
	.zero	1
	.ascii	"IllegalRecursion"
	.zero	1
	.ascii	"Base"
	.zero	1
	.ascii	"ToType"
	.zero	1
	.ascii	"ToExpr"
	.zero	1
	.ascii	"Load"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"TypeCheck"
	.zero	4
	.long Value__GlobalName
	.long MM_Value+248
	.long MI_Value+112
	.long Value__CName
	.long MM_Value+259
	.long MI_Value+108
	.long Value__IsWritable
	.long MM_Value+265
	.long MI_Value+92
	.long Value__IsImported
	.long MM_Value+276
	.long MI_Value+88
	.long Value__IsExternal
	.long MM_Value+287
	.long MI_Value+84
	.long Value__Reuse
	.long MM_Value+298
	.long MI_Value+136
	.long Value__SetModule
	.long MM_Value+304
	.long MI_Value+132
	.long Value__Reset
	.long MM_Value+314
	.long MI_Value+128
	.long ValueRep__Self
	.long MM_Value+320
	.long MI_ValueRep+184
	.long ValueRep__TypeVoid
	.long MM_Value+325
	.long MI_ValueRep+180
	.long ValueRep__Always
	.long MM_Value+334
	.long MI_ValueRep+176
	.long ValueRep__NoInit
	.long MM_Value+341
	.long MI_ValueRep+172
	.long ValueRep__Never
	.long MM_Value+348
	.long MI_ValueRep+168
	.long ValueRep__NoLoader
	.long MM_Value+354
	.long MI_ValueRep+164
	.long ValueRep__NoType
	.long MM_Value+363
	.long MI_ValueRep+160
	.long ValueRep__NoExpr
	.long MM_Value+370
	.long MI_ValueRep+156
	.long ValueRep__Init
	.long MM_Value+377
	.long MI_ValueRep+148
	.long Value__UserInit
	.long MM_Value+382
	.long MI_Value+76
	.long Value__LangInit
	.long MM_Value+391
	.long MI_Value+72
	.long Value__NeedsInit
	.long MM_Value+400
	.long MI_Value+68
	.long Value__ConstInit
	.long MM_Value+410
	.long MI_Value+64
	.long Value__GetVSFlags
	.long MM_Value+420
	.zero	4
	.long Value__Declare
	.long MM_Value+431
	.long MI_Value+60
	.long ValueRep__FPStart
	.long MM_Value+439
	.long MI_ValueRep+152
	.long Value__AddFPEdges
	.long MM_Value+447
	.long MI_Value+124
	.long Value__AddFPTag
	.long MM_Value+458
	.long MI_Value+120
	.long Value__ToFP
	.long MM_Value+467
	.zero	4
	.long Value__ClassOf
	.long MM_Value+472
	.long MI_Value+80
	.long Value__IllegalRecursion
	.long MM_Value+480
	.long MI_Value+116
	.long Value__Base
	.long MM_Value+497
	.long MI_Value+104
	.long Value__ToType
	.long MM_Value+502
	.long MI_Value+100
	.long Value__ToExpr
	.long MM_Value+509
	.long MI_Value+96
	.long Value__Load
	.long MM_Value+516
	.long MI_Value+56
	.long Value__SetGlobals
	.long MM_Value+521
	.long MI_Value+52
	.long Value__TypeOf
	.long MM_Value+532
	.long MI_Value+48
	.long Value__TypeCheck
	.long MM_Value+539
	.long MI_Value+44
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 41
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Value.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
