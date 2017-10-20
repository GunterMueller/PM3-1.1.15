	.file	"Formal.mc"
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
	.type	 Formal__NewBuiltin,@function
Formal__NewBuiltin:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_Formal+448,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $0
	movl %eax,%edi
	pushl %ebx
	movl MI_M3ID+44,%eax
	call *%eax
	pushl $8
	pushl %eax
	pushl %edi
	movl MI_ValueRep+148,%eax
	call *%eax
	andb $253,30(%edi)
	movl %esi,36(%edi)
	movb $0,56(%edi)
	movl 16(%ebp),%edx
	movl %edx,40(%edi)
	movl $0,44(%edi)
	andb $247,30(%edi)
	movb $0,57(%edi)
	movl $0,48(%edi)
	movl $0,52(%edi)
	movl $0,60(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Formal__NewBuiltin,.Lfe1-Formal__NewBuiltin
	.align 16
	.type	 Formal__New,@function
Formal__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_Formal+448,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl $8
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+148,%eax
	call *%eax
	xorl %eax,%eax
	movb 30(%ebx),%al
	movl %eax,%edx
	andb $253,%dl
	movl 8(%ebp),%eax
	movl %ebx,%ecx
	cmpb $2,4(%eax)
	jne .L3
	movb %dl,%al
	orb $2,%al
	jmp .L4
	.align 16
.L3:
	movb %dl,%al
.L4:
	movb %al,30(%ecx)
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	movl %eax,36(%ebx)
	movb 4(%edx),%al
	movb %al,56(%ebx)
	movl 8(%ebp),%ecx
	xorl %edx,%edx
	movb 30(%ebx),%dl
	andb $247,%dl
	movl 12(%ecx),%eax
	movl %eax,40(%ebx)
	movl 16(%ecx),%eax
	movl %eax,44(%ebx)
	xorl %eax,%eax
	movb 20(%ecx),%al
	andl $1,%eax
	sall $3,%eax
	orb %dl,%al
	movb %al,30(%ebx)
	movb $0,57(%ebx)
	movl $0,48(%ebx)
	movl $0,52(%ebx)
	movl 8(%ebp),%eax
	movl 24(%eax),%eax
	movl %eax,60(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Formal__New,.Lfe2-Formal__New
	.align 16
	.type	 Formal__Split,@function
Formal__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L6
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formal+452
	jg .L7
	movl MM_Formal+448,%eax
	cmpl %edx,4(%eax)
	jge .L6
.L7:
	pushl $1413
	call _m3_fault
	.align 16
.L6:
	movl 12(%ebp),%edx
	movl 12(%ebx),%eax
	movl %eax,(%edx)
	movl 12(%ebp),%edx
	movl 36(%ebx),%eax
	movl %eax,8(%edx)
	movb 56(%ebx),%al
	movb %al,4(%edx)
	pushl %ebx
	call Formal__TypeOf
	movl 12(%ebp),%edx
	movl %eax,12(%edx)
	movl 44(%ebx),%eax
	movl %eax,16(%edx)
	xorl %eax,%eax
	movb 30(%ebx),%al
	sall $28,%eax
	shrl $31,%eax
	movb %al,20(%edx)
	movl 12(%ebp),%edx
	movl 60(%ebx),%eax
	movl %eax,24(%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Formal__Split,.Lfe3-Formal__Split
	.align 16
	.type	 Formal__EmitDeclaration,@function
Formal__EmitDeclaration:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	testl %esi,%esi
	je .L9
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formal+452
	jg .L10
	movl MM_Formal+448,%eax
	cmpl %edx,4(%eax)
	jge .L9
.L10:
	pushl $1621
	call _m3_fault
	.align 16
.L9:
	movl %esi,-28(%ebp)
	cmpb $0,12(%ebp)
	je .L11
	pushl %esi
	call Formal__TypeOf
	movl %eax,%ebx
	pushl %ebx
	movl MI_Type+140,%eax
	call *%eax
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,52(%esi)
	addl $12,%esp
	cmpb $0,56(%esi)
	jne .L12
	cmpl $0,48(%esi)
	je .L8
.L12:
	pushl %edx
	movl MI_CG+128,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,52(%esi)
	movl 48(%esi),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	jmp .L8
	.align 16
.L11:
	cmpb $0,16(%ebp)
	je .L15
	pushl %esi
	call Formal__TypeOf
	movl %eax,%ebx
	movl %ebx,%edi
	addl $4,%esp
	cmpb $0,56(%esi)
	jne .L16
	cmpl $0,48(%esi)
	jne .L16
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L17
	pushl $1921
	call _m3_fault
	.align 16
.L17:
	movl %eax,%ebx
	movl -12(%ebp),%eax
	testl %eax,%eax
	jge .L18
	pushl $1937
	call _m3_fault
	.align 16
.L18:
	movl %eax,%esi
	movb -3(%ebp),%cl
	movb %cl,-24(%ebp)
	pushl %edi
	movl MI_Type+88,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L20
	movb $14,-24(%ebp)
	jmp .L20
	.align 16
.L16:
	movl MI_Target+60,%ebx
	movl MI_Target+64,%esi
	movb $0,-24(%ebp)
.L20:
	pushl $50
	pushl $0
	pushl $0
	movl -28(%ebp),%ecx
	movl 52(%ecx),%eax
	pushl %eax
	xorl %eax,%eax
	movb -24(%ebp),%al
	pushl %eax
	pushl %esi
	pushl %ebx
	movl 12(%ecx),%eax
	pushl %eax
	movl MI_CG+204,%eax
	call *%eax
	jmp .L8
	.align 16
.L15:
	movl 52(%esi),%eax
	pushl %eax
	movl 12(%esi),%eax
	pushl %eax
	movl MI_CG+136,%eax
	call *%eax
.L8:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Formal__EmitDeclaration,.Lfe4-Formal__EmitDeclaration
	.align 16
	.type	 Formal__HasClosure,@function
Formal__HasClosure:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L25
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_Formal+452
	jg .L25
	movl MM_Formal+448,%eax
	cmpl %ebx,4(%eax)
	jl .L25
	xorl %ebx,%ebx
	cmpb $1,56(%edx)
	je .L27
	cmpb $12,57(%edx)
	je .L28
	pushl %edx
	call Formal__TypeOf
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl %eax
	movl MI_ProcType+56,%eax
	call *%eax
	testl %eax,%eax
	je .L27
.L28:
	movl $1,%ebx
.L27:
	movl %ebx,%eax
	jmp .L30
	.align 16
.L25:
	xorl %eax,%eax
.L30:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Formal__HasClosure,.Lfe5-Formal__HasClosure
	.align 16
	.type	 Formal__RefOpenArray,@function
Formal__RefOpenArray:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	testl %edx,%edx
	je .L35
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_Formal+452
	jg .L35
	movl MM_Formal+448,%eax
	cmpl %ecx,4(%eax)
	jl .L35
	movl 48(%edx),%eax
	movl %eax,(%ebx)
	testl %eax,%eax
	setne %al
	andl $255,%eax
	jmp .L38
	.align 16
.L35:
	xorl %eax,%eax
.L38:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Formal__RefOpenArray,.Lfe6-Formal__RefOpenArray
	.align 16
	.type	 Formal__TypeOf,@function
Formal__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,40(%ebx)
	jne .L40
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,40(%ebx)
.L40:
	movl 40(%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Formal__TypeOf,.Lfe7-Formal__TypeOf
	.align 16
	.type	 Formal__Check,@function
Formal__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %ebx
	call Formal__TypeOf
	leal -20(%ebp),%esi
	pushl %esi
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %ebx,%edx
	addl $12,%esp
	movl %eax,40(%edx)
	movb -2(%ebp),%al
	movb %al,57(%edx)
	cmpb $11,-2(%ebp)
	jne .L42
	movl 40(%edx),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl %esi
	movl %eax,%edx
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movb -2(%ebp),%al
	movb %al,57(%ebx)
	addl $12,%esp
.L42:
	movl 44(%ebx),%edx
	testl %edx,%edx
	je .L43
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Expr+156,%eax
	call *%eax
	addl $8,%esp
	cmpb $1,56(%ebx)
	jne .L44
	pushl $MM_Formal+460
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L44:
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L45
	pushl $MM_Formal+508
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L45:
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L43
	pushl $MM_Formal+556
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L43:
	cmpb $0,56(%ebx)
	jne .L41
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl %eax
	movl MI_OpenArrayType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L41
	pushl $0
	pushl $1
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_RefType+52,%eax
	call *%eax
	movl %eax,48(%ebx)
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,48(%ebx)
.L41:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Formal__Check,.Lfe8-Formal__Check
	.align 16
	.type	 Formal__Load,@function
Formal__Load:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,44(%ebx)
	jne .L49
	pushl $MM_Formal+592
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L49:
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Formal__Load,.Lfe9-Formal__Load
	.align 16
	.type	 Formal__Compile,@function
Formal__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl 48(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	addl $8,%esp
	movl 44(%ebx),%eax
	testl %eax,%eax
	je .L50
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
.L50:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Formal__Compile,.Lfe10-Formal__Compile
	.align 16
	.type	 Formal__SetGlobals,@function
Formal__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Formal__SetGlobals,.Lfe11-Formal__SetGlobals
	.align 16
	.type	 Formal__AddFPTag,@function
Formal__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $0
	pushl $0
	xorl %eax,%eax
	movb 56(%ebx),%al
	movl MM_Formal+372(,%eax,4),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+152,%eax
	call *%eax
	addl $20,%esp
	cmpl $0,44(%ebx)
	je .L54
	pushl $MM_Formal+632
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
.L54:
	movl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Formal__AddFPTag,.Lfe12-Formal__AddFPTag
	.align 16
	.type	 Formal__CheckArgs,@function
Formal__CheckArgs:
	pushl %ebp
	movl %esp,%ebp
	subl $340,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
	pushl $320
	pushl $0
	leal -320(%ebp),%eax
	pushl %eax
	call memset
	movl %esi,%eax
	xorl %ebx,%ebx
	addl $12,%esp
	jmp .L56
	.align 16
.L57:
	incl %ebx
	movl 8(%eax),%eax
.L56:
	testl %eax,%eax
	jne .L57
	cmpl $20,%ebx
	jg .L59
	leal -320(%ebp),%edx
	movl %edx,-328(%ebp)
	movl $20,-324(%ebp)
	pushl %edi
	leal -328(%ebp),%eax
	jmp .L62
	.align 16
.L59:
	leal -340(%ebp),%eax
	leal -332(%ebp),%edx
	movl %edx,-340(%ebp)
	movl $1,-336(%ebp)
	movl %ebx,-332(%ebp)
	pushl %eax
	movl MM_Formal+648,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L60
	pushl $3892
	call _m3_fault
	.align 16
.L60:
	pushl %edi
.L62:
	pushl %eax
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formal__DoCheckArgs
	leal -352(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Formal__CheckArgs,.Lfe13-Formal__CheckArgs
	.align 16
	.type	 Formal__DoCheckArgs,@function
Formal__DoCheckArgs:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movb $0,-40(%ebp)
	movl 12(%ebp),%ecx
	movb $1,-36(%ebp)
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L64
	pushl $4228
	call _m3_fault
	.align 16
.L64:
	movl 20(%ebp),%ecx
	cmpl %ecx,4(%eax)
	jle .L65
	movl 28(%ebp),%ecx
	pushl %ecx
	call Formal__ProcName
	pushl %eax
	pushl $MM_Formal+660
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Error+44,%eax
	call *%eax
	movb -40(%ebp),%cl
	movb %cl,-36(%ebp)
	addl $16,%esp
.L65:
	testl %ebx,%ebx
	je .L68
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%esi
	shrl $12,%esi
	cmpl %esi,MM_Formal+452
	jg .L67
	movl MM_Formal+448,%eax
	cmpl %esi,4(%eax)
	jge .L68
.L67:
	pushl $4325
	call _m3_fault
	.align 16
.L69:
	movl 24(%ebp),%edx
	movl 36(%ebx),%eax
	cmpl %eax,4(%edx)
	ja .L70
	pushl $4354
	call _m3_fault
	.align 16
.L70:
	sall $4,%eax
	movl (%edx),%edx
	addl %eax,%edx
	movl %edx,-20(%ebp)
	movl %ebx,(%edx)
	movl -20(%ebp),%edx
	movl 44(%ebx),%eax
	movl %eax,4(%edx)
	movb $0,12(%edx)
	movl -20(%ebp),%eax
	movb $0,13(%eax)
	movl -20(%ebp),%edx
	movl 12(%ebx),%eax
	movl %eax,8(%edx)
	movl 8(%ebx),%edx
	testl %edx,%edx
	je .L71
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%esi
	shrl $12,%esi
	cmpl %esi,MM_Formal+452
	jg .L72
	movl MM_Formal+448,%eax
	cmpl %esi,4(%eax)
	jge .L71
.L72:
	pushl $4469
	call _m3_fault
	.align 16
.L71:
	movl %edx,%ebx
.L68:
	testl %ebx,%ebx
	jne .L69
	movl 12(%ebp),%ecx
	movb $1,-40(%ebp)
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L74
	pushl $4548
	call _m3_fault
	.align 16
.L74:
	movl 4(%eax),%eax
	decl %eax
	movl 20(%ebp),%esi
	decl %esi
	cmpl %eax,%esi
	jle .L75
	movl %eax,%esi
.L75:
	movl %esi,%edi
	jmp .L76
	.align 16
.L77:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L78
	pushl $4564
	call _m3_fault
	.align 16
.L78:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L79
	pushl $4562
	call _m3_fault
	.align 16
.L79:
	movl (%edx),%eax
	movl (%eax,%ebx,4),%esi
	leal -16(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L80
	movb $0,-40(%ebp)
	movl -16(%ebp),%esi
	movl $0,-64(%ebp)
.L81:
	movl 20(%ebp),%ecx
	cmpl %ecx,-64(%ebp)
	jl .L82
	pushl $MM_Formal+700
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	movb $0,-36(%ebp)
	movl %ebx,-64(%ebp)
	addl $8,%esp
	jmp .L86
	.align 16
.L82:
	movl 24(%ebp),%edx
	movl -64(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L84
	pushl $4754
	call _m3_fault
	.align 16
.L84:
	movl -64(%ebp),%eax
	sall $4,%eax
	addl (%edx),%eax
	movl -4(%ebp),%edx
	cmpl %edx,8(%eax)
	je .L86
	incl -64(%ebp)
	jmp .L81
	.align 16
.L80:
	cmpb $0,-40(%ebp)
	jne .L87
	movl 28(%ebp),%ecx
	pushl %ecx
	call Formal__ProcName
	movl %eax,%edx
	pushl %edx
	pushl $MM_Formal+732
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
	movb -40(%ebp),%cl
	movb %cl,-36(%ebp)
	addl $16,%esp
.L87:
	movl %ebx,-64(%ebp)
.L86:
	movl 24(%ebp),%edx
	movl -64(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L88
	pushl $4930
	call _m3_fault
	.align 16
.L88:
	movl -64(%ebp),%eax
	sall $4,%eax
	addl (%edx),%eax
	movl %eax,-20(%ebp)
	cmpb $0,12(%eax)
	je .L89
	pushl $MM_Formal+800
	pushl %eax
	call Formal__Err
	movb $0,-36(%ebp)
	addl $8,%esp
.L89:
	movl -20(%ebp),%eax
	movb $1,12(%eax)
	movl -20(%ebp),%eax
	incl %ebx
	movl %esi,4(%eax)
.L76:
	cmpl %edi,%ebx
	jle .L77
	xorl %ebx,%ebx
	movl 20(%ebp),%esi
	decl %esi
	jmp .L91
	.align 16
.L92:
	movl 24(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L93
	pushl $5122
	call _m3_fault
	.align 16
.L93:
	movl %ebx,%edx
	sall $4,%edx
	movl (%eax),%eax
	addl %edx,%eax
	cmpl $0,4(%eax)
	je .L94
	movb $1,12(%eax)
.L94:
	movl 24(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L96
	pushl $5138
	call _m3_fault
	.align 16
.L96:
	addl (%eax),%edx
	movl %edx,%eax
	movb 12(%eax),%cl
	movb %cl,-52(%ebp)
	testb %cl,%cl
	jne .L97
	pushl $MM_Formal+840
	pushl %eax
	call Formal__Err
	movb -52(%ebp),%cl
	movb %cl,-36(%ebp)
	addl $8,%esp
.L97:
	incl %ebx
.L91:
	cmpl %esi,%ebx
	jle .L92
	xorl %edi,%edi
	movl 20(%ebp),%ecx
	decl %ecx
	movl %ecx,-56(%ebp)
	jmp .L100
	.align 16
.L101:
	movl 24(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L102
	pushl $5266
	call _m3_fault
	.align 16
.L102:
	movl %edi,%ecx
	sall $4,%ecx
	movl %ecx,-60(%ebp)
	addl (%eax),%ecx
	movl %ecx,%eax
	movl 4(%eax),%esi
	movl (%eax),%ebx
	testl %esi,%esi
	je .L104
	testl %ebx,%ebx
	je .L104
	movl 8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Expr+156,%eax
	call *%eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+88,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L105
	pushl %esi
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,-16(%ebp)
	addl $4,%esp
	testl %eax,%eax
	je .L105
	movl %eax,%esi
	movl 24(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L107
	pushl $5442
	call _m3_fault
	.align 16
.L107:
	movl -60(%ebp),%ecx
	addl (%eax),%ecx
	movl %ecx,%eax
	movl %esi,4(%eax)
.L105:
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-44(%ebp)
	movl 40(%ebx),%ecx
	movl %ecx,-48(%ebp)
	xorl %eax,%eax
	movb 56(%ebx),%al
	addl $4,%esp
	testl %eax,%eax
	jle .L108
	cmpl $1,%eax
	jle .L109
	cmpl $2,%eax
	jle .L110
.L108:
	movl -44(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L104
	movl 24(%ebp),%edx
	cmpl %edi,4(%edx)
	ja .L123
	pushl $5570
	call _m3_fault
	.align 16
.L109:
	pushl %esi
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L114
	movl 24(%ebp),%edx
	cmpl %edi,4(%edx)
	ja .L115
	pushl $5650
	call _m3_fault
	.align 16
.L115:
	pushl $MM_Formal+908
	jmp .L139
	.align 16
.L114:
	pushl %esi
	movl MI_Expr+172,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L117
	movl 24(%ebp),%edx
	cmpl %edi,4(%edx)
	ja .L118
	pushl $5698
	call _m3_fault
	.align 16
.L118:
	pushl $MM_Formal+952
	jmp .L139
	.align 16
.L117:
	pushl $0
	movl -44(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L140
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L120
	movl -44(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L140
.L120:
	movl 24(%ebp),%edx
	cmpl %edi,4(%edx)
	ja .L123
	pushl $5826
	call _m3_fault
	.align 16
.L110:
	movl -44(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L122
	movl 24(%ebp),%edx
	cmpl %edi,4(%edx)
	ja .L123
	pushl $5906
	call _m3_fault
	.align 16
.L123:
	pushl $MM_Formal+876
.L139:
	movl %edi,%eax
	sall $4,%eax
	addl (%edx),%eax
	pushl %eax
	call Formal__Err
	movb $0,-36(%ebp)
	addl $8,%esp
	jmp .L104
	.align 16
.L122:
	pushl %esi
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L104
	pushl $0
	movl -44(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L104
.L140:
	pushl %esi
	movl MI_Expr+184,%eax
	call *%eax
	addl $4,%esp
.L104:
	incl %edi
.L100:
	cmpl %edi,-56(%ebp)
	jge .L101
	cmpb $0,-36(%ebp)
	jne .L129
	xorl %eax,%eax
	jmp .L138
	.align 16
.L129:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L130
	pushl $6164
	call _m3_fault
	.align 16
.L130:
	movl 20(%ebp),%ecx
	cmpl %ecx,4(%eax)
	je .L131
	leal -32(%ebp),%eax
	leal -24(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,-28(%ebp)
	movl 20(%ebp),%ecx
	movl %ecx,-24(%ebp)
	pushl %eax
	movl MM_Formal+988,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl 12(%ebp),%ecx
	addl $8,%esp
	movl %eax,(%ecx)
.L131:
	xorl %edx,%edx
	movl 20(%ebp),%esi
	decl %esi
	jmp .L132
	.align 16
.L133:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L134
	pushl $6212
	call _m3_fault
	.align 16
.L134:
	cmpl %edx,4(%eax)
	ja .L135
	pushl $6210
	call _m3_fault
	.align 16
.L135:
	movl (%eax),%eax
	movl 24(%ebp),%edi
	leal (%eax,%edx,4),%ebx
	cmpl %edx,4(%edi)
	ja .L136
	pushl $6210
	call _m3_fault
	.align 16
.L136:
	movl %edx,%eax
	sall $4,%eax
	addl (%edi),%eax
	incl %edx
	movl 4(%eax),%eax
	movl %eax,(%ebx)
.L132:
	cmpl %esi,%edx
	jle .L133
	movl $1,%eax
.L138:
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Formal__DoCheckArgs,.Lfe14-Formal__DoCheckArgs
	.align 16
	.type	 Formal__Err,@function
Formal__Err:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	cmpb $0,13(%eax)
	jne .L141
	pushl %edx
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	movl 8(%ebp),%eax
	movb $1,13(%eax)
.L141:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Formal__Err,.Lfe15-Formal__Err
	.align 16
	.type	 Formal__ProcName,@function
Formal__ProcName:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	testl %edx,%edx
	je .L144
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_UserProc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L144
	pushl $1
	pushl $1
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+112,%eax
	call *%eax
	pushl %eax
	pushl $MM_Formal+1000
	movl MI_RTHooks+76,%eax
	call *%eax
	jmp .L145
	.align 16
.L144:
	movl $MM_Formal+1016,%eax
.L145:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Formal__ProcName,.Lfe16-Formal__ProcName
	.align 16
	.type	 Formal__PrepArg,@function
Formal__PrepArg:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	testl %esi,%esi
	je .L147
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formal+452
	jg .L148
	movl MM_Formal+448,%eax
	cmpl %edx,4(%eax)
	jge .L147
.L148:
	pushl $6613
	call _m3_fault
	.align 16
.L147:
	xorl %eax,%eax
	movb 56(%esi),%al
	testl %eax,%eax
	jle .L155
	cmpl $1,%eax
	jle .L150
	cmpl $2,%eax
	jle .L151
	jmp .L155
	.align 16
.L150:
	pushl %ebx
	movl MI_Expr+208,%eax
	jmp .L157
	.align 16
.L151:
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl 40(%esi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L155
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L155
	pushl %ebx
	movl MI_Expr+208,%eax
	jmp .L157
	.align 16
.L155:
	pushl %ebx
	movl MI_Expr+200,%eax
.L157:
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Formal__PrepArg,.Lfe17-Formal__PrepArg
.section	.rodata
	.align 4
	.type	 L_7.0,@object
	.size	 L_7.0,68
L_7.0:
	.long .L161
	.long .L161
	.long .L162
	.long .L163
	.long .L163
	.long .L163
	.long .L164
	.long .L162
	.long .L165
	.long .L165
	.long .L166
	.long .L161
	.long .L167
	.long .L168
	.long .L165
	.long .L169
	.long .L162
.text
	.align 16
	.type	 Formal__EmitArg,@function
Formal__EmitArg:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ecx
	movl 16(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testl %ecx,%ecx
	je .L159
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formal+452
	jg .L160
	movl MM_Formal+448,%eax
	cmpl %edx,4(%eax)
	jge .L159
.L160:
	pushl $6917
	call _m3_fault
	.align 16
.L159:
	movl %ecx,%ebx
	movb $0,-24(%ebp)
	xorl %eax,%eax
	movb 57(%ebx),%al
	jmp *L_7.0(,%eax,4)
	.align 16
.L161:
	pushl $6976
	call _m3_fault
	.align 16
.L162:
	pushl %esi
	pushl %ebx
	call Formal__GenOrdinal
	jmp .L178
	.align 16
.L163:
	pushl %esi
	pushl %ebx
	call Formal__GenFloat
	jmp .L178
	.align 16
.L165:
	pushl %esi
	pushl %ebx
	call Formal__GenReference
	jmp .L178
	.align 16
.L167:
	pushl %edi
	pushl %esi
	pushl %ebx
	call Formal__GenProcedure
	addl $12,%esp
	jmp .L170
	.align 16
.L168:
	pushl %esi
	pushl %ebx
	call Formal__GenRecord
	movb $1,-24(%ebp)
	jmp .L178
	.align 16
.L169:
	pushl %esi
	pushl %ebx
	call Formal__GenSet
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+88,%eax
	call *%eax
	movb %al,-24(%ebp)
	addl $12,%esp
	jmp .L170
	.align 16
.L164:
	pushl %esi
	pushl %ebx
	call Formal__GenArray
	movb $1,-24(%ebp)
	jmp .L178
	.align 16
.L166:
	pushl %esi
	pushl %ebx
	call Formal__GenArray
	movb $0,-24(%ebp)
.L178:
	addl $8,%esp
.L170:
	cmpb $0,56(%ebx)
	je .L172
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	addl $4,%esp
	jmp .L173
	.align 16
.L172:
	cmpb $0,-24(%ebp)
	je .L174
	leal -20(%ebp),%eax
	pushl %eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jge .L175
	pushl $7329
	call _m3_fault
	.align 16
.L175:
	movl -12(%ebp),%eax
	testl %eax,%eax
	jge .L176
	pushl $7329
	call _m3_fault
	.align 16
.L176:
	pushl %eax
	pushl %edx
	movl MI_CG+748,%eax
	call *%eax
	addl $8,%esp
	jmp .L173
	.align 16
.L174:
	pushl $1
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	pushl %eax
	movl MI_CG+744,%eax
	call *%eax
	addl $12,%esp
.L173:
	cmpb $1,56(%ebx)
	jne .L158
	pushl %esi
	movl MI_Expr+228,%eax
	call *%eax
.L158:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Formal__EmitArg,.Lfe18-Formal__EmitArg
	.align 16
	.type	 Formal__GenOrdinal,@function
Formal__GenOrdinal:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	leal -8(%ebp),%esi
	pushl %ebx
	movl 12(%ebp),%ebx
	pushl %esi
	leal -16(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $12,%esp
	xorl %eax,%eax
	movb 56(%edx),%al
	testl %eax,%eax
	jle .L180
	cmpl $1,%eax
	jle .L188
	cmpl $2,%eax
	jle .L182
.L180:
	pushl %esi
	pushl %edi
	pushl %ebx
	movl MI_CheckExpr+56,%eax
	call *%eax
	jmp .L179
	.align 16
.L182:
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L184
	pushl %esi
	pushl %edi
	pushl %ebx
	movl MI_CheckExpr+56,%eax
	call *%eax
	jmp .L189
	.align 16
.L184:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L186
.L188:
	pushl %ebx
	movl MI_Expr+216,%eax
	call *%eax
	jmp .L179
	.align 16
.L186:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
.L189:
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	pushl %eax
	call Formal__GenCopy
.L179:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Formal__GenOrdinal,.Lfe19-Formal__GenOrdinal
	.align 16
	.type	 Formal__GenFloat,@function
Formal__GenFloat:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	xorl %eax,%eax
	movb 56(%esi),%al
	testl %eax,%eax
	jle .L191
	cmpl $1,%eax
	jle .L198
	cmpl $2,%eax
	jle .L193
.L191:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	jmp .L190
	.align 16
.L193:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L195
.L198:
	pushl %ebx
	movl MI_Expr+216,%eax
	call *%eax
	jmp .L190
	.align 16
.L195:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	movl 40(%esi),%eax
	pushl %eax
	call Formal__GenCopy
.L190:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Formal__GenFloat,.Lfe20-Formal__GenFloat
	.align 16
	.type	 Formal__GenReference,@function
Formal__GenReference:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%esi
	xorl %eax,%eax
	movb 56(%edi),%al
	addl $4,%esp
	testl %eax,%eax
	jle .L200
	cmpl $1,%eax
	jle .L210
	cmpl $2,%eax
	jle .L202
.L200:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MI_Host+83
	je .L199
	pushl %esi
	movl 40(%edi),%eax
	pushl %eax
	movl MI_Narrow+48,%eax
	call *%eax
	jmp .L199
	.align 16
.L202:
	pushl $0
	pushl %esi
	movl 40(%edi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L205
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MI_Host+83
	je .L211
	pushl %esi
	movl 40(%edi),%eax
	pushl %eax
	movl MI_Narrow+48,%eax
	call *%eax
	addl $8,%esp
	jmp .L211
	.align 16
.L205:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L208
.L210:
	pushl %ebx
	movl MI_Expr+216,%eax
	call *%eax
	jmp .L199
	.align 16
.L208:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
.L211:
	movl 40(%edi),%eax
	pushl %eax
	call Formal__GenCopy
.L199:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Formal__GenReference,.Lfe21-Formal__GenReference
	.align 16
	.type	 Formal__GenProcedure,@function
Formal__GenProcedure:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	xorl %eax,%eax
	movb 56(%edi),%al
	testl %eax,%eax
	jle .L213
	cmpl $1,%eax
	jle .L220
	cmpl $2,%eax
	jle .L215
.L213:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	call Formal__GenClosure
	jmp .L212
	.align 16
.L215:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L217
.L220:
	pushl %ebx
	movl MI_Expr+216,%eax
	call *%eax
	jmp .L212
	.align 16
.L217:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	call Formal__GenClosure
	movl 40(%edi),%eax
	pushl %eax
	call Formal__GenCopy
.L212:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Formal__GenProcedure,.Lfe22-Formal__GenProcedure
	.align 16
	.type	 Formal__GenClosure,@function
Formal__GenClosure:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%esi
.L222:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-4(%ebp)
	movl MI_Target+60,%ebx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	call Formal__RequiresClosure
	addl $8,%esp
	testl %eax,%eax
	je .L227
	pushl %esi
	call Formal__IsExternalProcedure
	addl $4,%esp
	testl %eax,%eax
	je .L224
	pushl $MM_Formal+1032
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L224:
	movl MI_M3RT+56,%eax
	addl %ebx,%eax
	decl %eax
	pushl %eax
	pushl %ebx
	call m3_div
	pushl $1
	pushl $14
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_M3RT+56,%eax
	pushl %eax
	movl MI_CG+208,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_M3RT+48,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+412,%eax
	call *%eax
	addl $32,%esp
	pushl $-1
	movl MI_CG+424,%eax
	call *%eax
	movl MI_M3RT+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+408,%eax
	call *%eax
	addl $12,%esp
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L225
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formal+1092
	jg .L226
	movl MM_Formal+1088,%eax
	cmpl %edx,4(%eax)
	jge .L225
.L226:
	pushl $9125
	call _m3_fault
	.align 16
.L225:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Procedure+84,%eax
	call *%eax
	movl MI_M3RT+52,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+412,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	pushl %ebx
	movl MI_CG+372,%eax
	call *%eax
.L227:
	movl -12(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Formal__GenClosure,.Lfe23-Formal__GenClosure
	.align 16
	.type	 Formal__RequiresClosure,@function
Formal__RequiresClosure:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_UserProc+52,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L229
	movl 12(%ebp),%eax
	movl (%eax),%edx
	testl %edx,%edx
	je .L230
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_Formal+1092
	jg .L231
	movl MM_Formal+1088,%eax
	cmpl %ecx,4(%eax)
	jge .L230
.L231:
	pushl $9253
	call _m3_fault
	.align 16
.L230:
	pushl %edx
	movl MI_Procedure+56,%eax
	call *%eax
	testl %eax,%eax
	je .L229
	movl $1,%ebx
.L229:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Formal__RequiresClosure,.Lfe24-Formal__RequiresClosure
	.align 16
	.type	 Formal__IsExternalProcedure,@function
Formal__IsExternalProcedure:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	leal -4(%ebp),%edx
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	pushl %edx
	pushl %eax
	movl MI_UserProc+52,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L233
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+84,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L233:
	movl %ebx,%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Formal__IsExternalProcedure,.Lfe25-Formal__IsExternalProcedure
	.align 16
	.type	 Formal__GenRecord,@function
Formal__GenRecord:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl 40(%esi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L235
	pushl $9424
	call _m3_fault
	.align 16
.L235:
	xorl %eax,%eax
	movb 56(%esi),%al
	testl %eax,%eax
	jle .L240
	cmpl $1,%eax
	jle .L237
	cmpl $2,%eax
	jle .L238
	jmp .L240
	.align 16
.L237:
	pushl %ebx
	movl MI_Expr+216,%eax
	jmp .L243
	.align 16
.L238:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L240
	pushl %ebx
	movl MI_Expr+216,%eax
	jmp .L243
	.align 16
.L240:
	pushl %ebx
	movl MI_Expr+204,%eax
.L243:
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Formal__GenRecord,.Lfe26-Formal__GenRecord
	.align 16
	.type	 Formal__GenSet,@function
Formal__GenSet:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl 40(%esi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L245
	pushl $9712
	call _m3_fault
	.align 16
.L245:
	xorl %eax,%eax
	movb 56(%esi),%al
	testl %eax,%eax
	jle .L254
	cmpl $1,%eax
	jle .L255
	cmpl $2,%eax
	jg .L254
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L250
.L255:
	pushl %ebx
	movl MI_Expr+216,%eax
	call *%eax
	jmp .L244
	.align 16
.L250:
	movl 40(%esi),%eax
	pushl %eax
	movl MI_Type+88,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L252
.L254:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	jmp .L244
	.align 16
.L252:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	movl 40(%esi),%eax
	pushl %eax
	call Formal__GenCopy
.L244:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Formal__GenSet,.Lfe27-Formal__GenSet
	.align 16
	.type	 Formal__GenArray,@function
Formal__GenArray:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%esi
	xorl %eax,%eax
	movb 56(%edi),%al
	addl $4,%esp
	testl %eax,%eax
	jle .L265
	cmpl $1,%eax
	jle .L258
	cmpl $2,%eax
	jle .L259
	jmp .L265
	.align 16
.L258:
	pushl %ebx
	movl MI_Expr+216,%eax
	jmp .L266
	.align 16
.L259:
	pushl $0
	pushl %esi
	movl 40(%edi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L261
.L265:
	pushl %ebx
	movl MI_Expr+204,%eax
.L266:
	call *%eax
	pushl %esi
	movl 40(%edi),%eax
	pushl %eax
	call Formal__ReshapeArray
	jmp .L256
	.align 16
.L261:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L263
	pushl %ebx
	movl MI_Expr+216,%eax
	jmp .L267
	.align 16
.L263:
	pushl %ebx
	movl MI_Expr+204,%eax
.L267:
	call *%eax
.L256:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Formal__GenArray,.Lfe28-Formal__GenArray
	.align 16
	.type	 Formal__ReshapeArray,@function
Formal__ReshapeArray:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	jne .L268
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_OpenArrayType+64,%eax
	call *%eax
	movl %eax,-36(%ebp)
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_OpenArrayType+64,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	cmpl %ebx,-36(%ebp)
	je .L268
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,-28(%ebp)
	cmpl %ebx,-36(%ebp)
	jle .L271
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_OpenArrayType+72,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,-32(%ebp)
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jle .L272
	pushl $8
	movl MI_CG+768,%eax
	call *%eax
	addl $4,%esp
.L272:
	movl MI_M3RT+292,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+412,%eax
	call *%eax
	movl %esi,%edi
	movl -36(%ebp),%edx
	decl %edx
	movl %edx,-40(%ebp)
	jmp .L287
	.align 16
.L274:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_ArrayType+52,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	movl %esi,%edx
	testb %dl,%dl
	jne .L275
	pushl $10832
	call _m3_fault
	.align 16
.L275:
	movl -8(%ebp),%eax
	testl %eax,%eax
	jne .L276
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	pushl %edi
	movl MI_CG+772,%eax
	call *%eax
	addl $8,%esp
	jmp .L277
	.align 16
.L276:
	leal -16(%ebp),%ebx
	pushl %ebx
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+428,%eax
	call *%eax
	addl $12,%esp
.L277:
	movl %edi,%eax
	imull MI_Target+104,%eax
	addl MI_M3RT+296,%eax
	pushl %eax
	movl -32(%ebp),%edx
	pushl %edx
	movl MI_CG+408,%eax
	call *%eax
	movl -4(%ebp),%edx
	movl %edx,12(%ebp)
	incl %edi
.L287:
	addl $8,%esp
	cmpl %edi,-40(%ebp)
	jge .L274
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	movl -32(%ebp),%edx
	pushl %edx
	movl MI_CG+372,%eax
	call *%eax
	addl $12,%esp
	jmp .L279
	.align 16
.L271:
	cmpl %ebx,-36(%ebp)
	jl .L280
	pushl $11056
	call _m3_fault
	.align 16
.L280:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_OpenArrayType+68,%eax
	call *%eax
	movl %eax,8(%ebp)
	movl -36(%ebp),%edi
	decl %ebx
	movl %ebx,-44(%ebp)
	addl $4,%esp
	jmp .L281
	.align 16
.L282:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_ArrayType+52,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	movl %esi,%edx
	testb %dl,%dl
	jne .L283
	pushl $11152
	call _m3_fault
	.align 16
.L283:
	cmpl $0,-8(%ebp)
	jne .L284
	pushl $11168
	call _m3_fault
	.align 16
.L284:
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	pushl %edi
	movl MI_CG+772,%eax
	call *%eax
	leal -24(%ebp),%ebx
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+428,%eax
	call *%eax
	movl MI_CG+700,%eax
	call *%eax
	incl %edi
	addl $20,%esp
.L281:
	cmpl %edi,-44(%ebp)
	jge .L282
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	addl $4,%esp
	cmpl $0,-36(%ebp)
	jg .L286
	pushl $8
	movl MI_CG+768,%eax
	call *%eax
	addl $4,%esp
.L286:
	movl MI_CG+240,%eax
	call *%eax
.L279:
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_CG+232,%eax
	call *%eax
.L268:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Formal__ReshapeArray,.Lfe29-Formal__ReshapeArray
	.align 16
	.type	 Formal__GenCopy,@function
Formal__GenCopy:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	leal -20(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,-28(%ebp)
	movl %eax,-24(%ebp)
	pushl %ebx
	movl MI_Type+88,%eax
	xorl %esi,%esi
	call *%eax
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	je .L289
	movl -20(%ebp),%edx
	testl %edx,%edx
	jge .L290
	pushl $11521
	call _m3_fault
	.align 16
.L290:
	movl -12(%ebp),%eax
	testl %eax,%eax
	jge .L291
	pushl $11521
	call _m3_fault
	.align 16
.L291:
	pushl %esi
	pushl %esi
	pushl $1
	movl -28(%ebp),%edi
	pushl %edi
	pushl $14
	pushl %eax
	pushl %edx
	pushl %esi
	movl MI_CG+200,%eax
	call *%eax
	movl %eax,%esi
	movl -12(%ebp),%eax
	addl $32,%esp
	testl %eax,%eax
	jge .L292
	pushl $11569
	call _m3_fault
	.align 16
.L292:
	pushl %eax
	pushl $0
	pushl %esi
	movl MI_CG+368,%eax
	call *%eax
	movl MI_CG+636,%eax
	call *%eax
	movl -20(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L293
	pushl $11601
	call _m3_fault
	.align 16
.L293:
	pushl $0
	pushl %eax
	movl MI_CG+648,%eax
	call *%eax
	addl $8,%esp
	jmp .L294
	.align 16
.L289:
	movl -20(%ebp),%ecx
	testl %ecx,%ecx
	jge .L295
	pushl $11633
	call _m3_fault
	.align 16
.L295:
	movl -12(%ebp),%edx
	testl %edx,%edx
	jge .L296
	pushl $11633
	call _m3_fault
	.align 16
.L296:
	pushl %esi
	pushl %esi
	pushl $1
	movl -24(%ebp),%edi
	pushl %edi
	xorl %eax,%eax
	movb -3(%ebp),%al
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl %esi
	movl MI_CG+200,%eax
	call *%eax
	movl %eax,%esi
	movl -20(%ebp),%ecx
	addl $32,%esp
	testl %ecx,%ecx
	jge .L297
	pushl $11681
	call _m3_fault
	.align 16
.L297:
	movl -12(%ebp),%edx
	testl %edx,%edx
	jge .L298
	pushl $11681
	call _m3_fault
	.align 16
.L298:
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %esi
	movl MI_CG+392,%eax
	call *%eax
	addl $20,%esp
.L294:
	movl -12(%ebp),%eax
	testl %eax,%eax
	jge .L299
	pushl $11713
	call _m3_fault
	.align 16
.L299:
	pushl %eax
	pushl $0
	pushl %esi
	movl MI_CG+368,%eax
	call *%eax
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Formal__GenCopy,.Lfe30-Formal__GenCopy
	.align 16
	.type	 M_Formal_td7acb579_LINK,@function
M_Formal_td7acb579_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Formal+448,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Formal+152,%eax
	movl %eax,4(%edx)
	movl MM_Formal+164,%eax
	movl %eax,8(%edx)
	movl MM_Formal+156,%eax
	movl %eax,12(%edx)
	movl MI_ValueRep+168,%eax
	movl %eax,16(%edx)
	movl MI_ValueRep+172,%ecx
	movl %ecx,20(%edx)
	movl %eax,24(%edx)
	movl MM_Formal+160,%eax
	movl %eax,28(%edx)
	movl %ecx,32(%edx)
	movl MI_ValueRep+156,%eax
	movl %eax,36(%edx)
	movl MI_ValueRep+160,%eax
	movl %eax,40(%edx)
	movl MM_Formal+148,%ecx
	movl %ecx,44(%edx)
	movl MI_ValueRep+184,%eax
	movl %eax,48(%edx)
	movl MM_Formal+168,%eax
	movl %eax,52(%edx)
	movl %ecx,56(%edx)
	popl %ebp
	ret
.Lfe31:
	.size	 M_Formal_td7acb579_LINK,.Lfe31-M_Formal_td7acb579_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Formal
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe32:
	.size	 _m3_fault,.Lfe32-_m3_fault
.globl MM_Formal
.data
	.align 4
	.type	 MM_Formal,@object
	.size	 MM_Formal,2016
MM_Formal:
	.long MM_Formal+1760
	.long MM_Formal+44
	.long MM_Formal+448
	.zero	8
	.long MM_Formal+1396
	.zero	28
	.long -676547207
.byte 77
.byte 165
.byte 15
.byte 221
.byte 52
.byte 16
.byte 163
.byte 10
	.long 1
	.zero	4
	.long 28
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Formal+1941
	.long MM_Formal+1951
	.long MM_Formal+1958
	.zero	4
	.long M_Formal_td7acb579_LINK
	.long -105857942
	.zero	12
	.long MM_Formal+1987
	.long MM_Formal+2007
	.long MM_Formal+172
	.long Formal__TypeOf
	.long Formal__Check
	.long Formal__Load
	.long Formal__Compile
	.long Formal__SetGlobals
	.long Formal__AddFPTag
	.zero	8
	.long 722517847
.byte 146
.byte 50
.byte 28
.byte 62
.byte 197
.byte 141
.byte 12
.byte 21
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 16
	.zero	4
	.long MM_Formal+1904
	.long MM_Formal+1914
	.long MM_Formal+1921
	.zero	36
	.long Formal__DoCheckArgs
	.long Formal__Err
	.long Formal__ProcName
	.long Formal__GenOrdinal
	.long Formal__GenFloat
	.long Formal__GenReference
	.long Formal__GenProcedure
	.long Formal__GenClosure
	.long Formal__RequiresClosure
	.long Formal__IsExternalProcedure
	.long Formal__GenRecord
	.long Formal__GenSet
	.long Formal__GenArray
	.long Formal__ReshapeArray
	.long Formal__New
	.long Formal__NewBuiltin
	.long Formal__Split
	.long Formal__HasClosure
	.long Formal__RefOpenArray
	.long Formal__CheckArgs
	.long Formal__PrepArg
	.long Formal__EmitArg
	.long Formal__EmitDeclaration
	.long Formal__GenCopy
	.long MM_Formal+388
	.long MM_Formal+408
	.long MM_Formal+428
	.long 2
	.long MM_Formal+396
	.long 7
	.ascii	"VALUE "
	.zero	2
	.long 2
	.long MM_Formal+416
	.long 5
	.ascii	"VAR "
	.zero	4
	.long 2
	.long MM_Formal+436
	.long 10
	.ascii	"READONLY "
	.zero	3
	.long MM_Formal+648
	.long -676547207
	.long 2
	.long MM_Formal+468
	.long 36
	.ascii	"VAR parameters cannot have defaults"
	.zero	1
	.long 2
	.long MM_Formal+516
	.long 36
	.ascii	"default is not assignable to formal"
	.zero	1
	.long 2
	.long MM_Formal+564
	.long 24
	.ascii	"default is not constant"
	.zero	1
	.long 2
	.long MM_Formal+600
	.long 28
	.ascii	"formal has no default value"
	.zero	1
	.long 2
	.long MM_Formal+640
	.long 5
	.ascii	" := "
	.zero	4
	.long MM_Formal+988
	.long 722517847
	.long 2
	.long MM_Formal+668
	.long 27
	.ascii	"too many actual parameters"
	.zero	2
	.long 2
	.long MM_Formal+708
	.long 18
	.ascii	"unknown parameter"
	.zero	3
	.long 2
	.long MM_Formal+740
	.long 54
	.ascii	"positional parameters must precede keyword parameters"
	.zero	3
	.long 2
	.long MM_Formal+808
	.long 28
	.ascii	"parameter already specified"
	.zero	1
	.long 2
	.long MM_Formal+848
	.long 24
	.ascii	"parameter not specified"
	.zero	1
	.long 2
	.long MM_Formal+884
	.long 19
	.ascii	"incompatible types"
	.zero	2
	.long 2
	.long MM_Formal+916
	.long 32
	.ascii	"VAR actual must be a designator"
	.zero	1
	.long 2
	.long MM_Formal+960
	.long 28
	.ascii	"VAR actual must be writable"
	.zero	1
	.long MM_Formal+1088
	.long 224582288
	.long 2
	.long MM_Formal+1008
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_Formal+1024
	.long 1
	.zero	4
	.long 2
	.long MM_Formal+1040
	.long 47
	.ascii	"passing nested procedure to external procedure"
	.zero	6
	.long -712670126
	.ascii	"GenCopy"
	.zero	1
	.ascii	"ReshapeArray"
	.zero	1
	.ascii	"GenArray"
	.zero	1
	.ascii	"GenSet"
	.zero	1
	.ascii	"GenRecord"
	.zero	1
	.ascii	"IsExternalProcedure"
	.zero	1
	.ascii	"RequiresClosure"
	.zero	1
	.ascii	"GenClosure"
	.zero	1
	.ascii	"GenProcedure"
	.zero	1
	.ascii	"GenReference"
	.zero	1
	.ascii	"GenFloat"
	.zero	1
	.ascii	"GenOrdinal"
	.zero	1
	.ascii	"EmitArg"
	.zero	1
	.ascii	"PrepArg"
	.zero	1
	.ascii	"ProcName"
	.zero	1
	.ascii	"Err"
	.zero	1
	.ascii	"DoCheckArgs"
	.zero	1
	.ascii	"CheckArgs"
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Load"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"RefOpenArray"
	.zero	1
	.ascii	"HasClosure"
	.zero	1
	.ascii	"EmitDeclaration"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"NewBuiltin"
	.zero	3
	.long Formal__GenCopy
	.long MM_Formal+1096
	.long MI_Formal+80
	.long Formal__ReshapeArray
	.long MM_Formal+1104
	.zero	4
	.long Formal__GenArray
	.long MM_Formal+1117
	.zero	4
	.long Formal__GenSet
	.long MM_Formal+1126
	.zero	4
	.long Formal__GenRecord
	.long MM_Formal+1133
	.zero	4
	.long Formal__IsExternalProcedure
	.long MM_Formal+1143
	.zero	4
	.long Formal__RequiresClosure
	.long MM_Formal+1163
	.zero	4
	.long Formal__GenClosure
	.long MM_Formal+1179
	.zero	4
	.long Formal__GenProcedure
	.long MM_Formal+1190
	.zero	4
	.long Formal__GenReference
	.long MM_Formal+1203
	.zero	4
	.long Formal__GenFloat
	.long MM_Formal+1216
	.zero	4
	.long Formal__GenOrdinal
	.long MM_Formal+1225
	.zero	4
	.long Formal__EmitArg
	.long MM_Formal+1236
	.long MI_Formal+72
	.long Formal__PrepArg
	.long MM_Formal+1244
	.long MI_Formal+68
	.long Formal__ProcName
	.long MM_Formal+1252
	.zero	4
	.long Formal__Err
	.long MM_Formal+1261
	.zero	4
	.long Formal__DoCheckArgs
	.long MM_Formal+1265
	.zero	4
	.long Formal__CheckArgs
	.long MM_Formal+1277
	.long MI_Formal+64
	.long Formal__AddFPTag
	.long MM_Formal+1287
	.zero	4
	.long Formal__SetGlobals
	.long MM_Formal+1296
	.zero	4
	.long Formal__Compile
	.long MM_Formal+1307
	.zero	4
	.long Formal__Load
	.long MM_Formal+1315
	.zero	4
	.long Formal__Check
	.long MM_Formal+1320
	.zero	4
	.long Formal__TypeOf
	.long MM_Formal+1326
	.zero	4
	.long Formal__RefOpenArray
	.long MM_Formal+1333
	.long MI_Formal+60
	.long Formal__HasClosure
	.long MM_Formal+1346
	.long MI_Formal+56
	.long Formal__EmitDeclaration
	.long MM_Formal+1357
	.long MI_Formal+76
	.long Formal__Split
	.long MM_Formal+1373
	.long MI_Formal+52
	.long Formal__New
	.long MM_Formal+1379
	.long MI_Formal+44
	.long Formal__NewBuiltin
	.long MM_Formal+1383
	.long MI_Formal+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Formal.m3"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 4
.byte 14
.byte 16
.byte 16
.byte 35
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
.byte 4
.byte 41
.byte 0
.byte 0
.byte 7
.byte 11
.byte 1
.byte 15
.byte 5
.byte 16
.byte 121
.byte 181
.byte 172
.byte 215
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 19
.byte 254
.byte 126
.byte 2
.byte 27
.byte 14
.byte 4
.byte 4
.byte 4
.byte 14
.byte 16
.byte 16
.byte 35
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 4
.byte 41
.byte 4
.byte 0
.byte 10
.byte 10
.byte 8
.byte 7
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 24
.byte 12
.byte 32
.byte 19
.byte 254
.byte 126
.byte 5
.byte 3
.byte 5
.byte 17
.byte 16
.byte 88
.byte 162
.byte 69
.byte 139
	.ascii	"Formal_^%#%^__0001M"
	.zero	1
	.ascii	"Formal.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
