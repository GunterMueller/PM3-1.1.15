	.file	"UserProc.mc"
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
	.type	 UserProc__TypeOf,@function
UserProc__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%eax),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L2
	pushl %ebx
	movl MI_QualifyExpr+60,%eax
	call *%eax
	addl $4,%esp
.L2:
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl %eax
	movl MI_ProcType+68,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 UserProc__TypeOf,.Lfe1-UserProc__TypeOf
	.align 16
	.type	 UserProc__NeedsAddress,@function
UserProc__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 UserProc__NeedsAddress,.Lfe2-UserProc__NeedsAddress
	.align 16
	.type	 UserProc__Check,@function
UserProc__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L5
	movl 16(%esi),%eax
	pushl %eax
	movl MI_QualifyExpr+60,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $4,%esp
.L5:
	pushl %ebx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%esi),%eax
	pushl %eax
	pushl %edx
	leal 20(%esi),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Formal+64,%eax
	call *%eax
	addl $24,%esp
	pushl %ebx
	movl MI_ProcType+68,%eax
	call *%eax
	movl %eax,%edx
	leal -8(%ebp),%esp
	movl %edx,8(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 UserProc__Check,.Lfe3-UserProc__Check
	.align 16
	.type	 UserProc__Compile,@function
UserProc__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
	testl %eax,%eax
	je .L7
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+232,%eax
	call *%eax
	movl $0,24(%ebx)
.L7:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 UserProc__Compile,.Lfe4-UserProc__Compile
	.align 16
	.type	 UserProc__Prep,@function
UserProc__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl $0,-24(%ebp)
	movl %edx,-56(%ebp)
	movl %edx,-48(%ebp)
	movl %edx,-20(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl %ecx,-12(%ebp)
	movl %ecx,-8(%ebp)
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%edx
	movl 8(%ebp),%ecx
	movl 16(%edx),%edx
	movl %edx,-68(%ebp)
	movl 20(%ecx),%ecx
	movl %ecx,-64(%ebp)
	movl -48(%ebp),%edx
	movl 8(%ebp),%ecx
	movl %edx,-44(%ebp)
	cmpb $0,14(%ecx)
	je .L10
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-44(%ebp)
.L10:
	movl -68(%ebp),%edx
	pushl %edx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-60(%ebp)
	addl $4,%esp
	testl %ebx,%ebx
	jne .L11
	movl -68(%ebp),%ecx
	pushl %ecx
	movl MI_QualifyExpr+60,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-60(%ebp)
	addl $4,%esp
.L11:
	movl -60(%ebp),%edx
	pushl %edx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-60(%ebp)
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-32(%ebp)
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_ProcType+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-28(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl -68(%ebp),%edx
	pushl %edx
	call UserProc__IsProcedureLiteral
	addl $20,%esp
	testl %eax,%eax
	jne .L12
	movl -68(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+200,%eax
	call *%eax
	movl -48(%ebp),%edx
	movl %edx,-24(%ebp)
	addl $4,%esp
.L12:
	testl %ebx,%ebx
	jne .L13
	pushl $1396
	call _m3_fault
	.align 16
.L13:
	cmpb $0,8(%ebx)
	je .L14
	movl -32(%ebp),%edi
	movl -48(%ebp),%esi
	jmp .L15
	.align 16
.L16:
	cmpl $0,-64(%ebp)
	jne .L17
	pushl $1444
	call _m3_fault
	.align 16
.L17:
	movl -64(%ebp),%ebx
	cmpl %esi,4(%ebx)
	ja .L18
	pushl $1442
	call _m3_fault
	.align 16
.L18:
	movl (%ebx),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	pushl %edi
	movl MI_Formal+68,%eax
	call *%eax
	movl 8(%edi),%edi
	incl %esi
	addl $8,%esp
.L15:
	testl %edi,%edi
	jne .L16
	jmp .L20
	.align 16
.L14:
	movl -48(%ebp),%ecx
	pushl %ecx
	movl -64(%ebp),%edx
	pushl %edx
	movl -32(%ebp),%ecx
	pushl %ecx
	call UserProc__PrepRightToLeft
	addl $12,%esp
.L20:
	movl -60(%ebp),%edx
	pushl %edx
	movl MI_ProcType+68,%eax
	call *%eax
	movl %eax,%ebx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%ebx
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_ProcType+72,%eax
	call *%eax
	movb %al,-52(%ebp)
	movl -12(%ebp),%edx
	movl %edx,-40(%ebp)
	pushl %ebx
	movl MI_ProcType+88,%eax
	call *%eax
	movb %al,-36(%ebp)
	addl $20,%esp
	testb %al,%al
	je .L21
	movl 8(%ebp),%ecx
	cmpb $0,14(%ecx)
	jne .L21
	movl -20(%ebp),%eax
	testl %eax,%eax
	jge .L22
	pushl $1665
	call _m3_fault
	.align 16
.L22:
	cmpl $0,-40(%ebp)
	jge .L23
	pushl $1665
	call _m3_fault
	.align 16
.L23:
	pushl $1
	pushl $14
	movl -40(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_CG+208,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-48(%ebp)
	addl $16,%esp
.L21:
	movl -24(%ebp),%edi
	testl %edi,%edi
	je .L24
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%esi
	shrl $12,%esi
	cmpl %esi,MM_UserProc+96
	jg .L26
	movl MM_UserProc+92,%eax
	cmpl %esi,4(%eax)
	jge .L25
.L26:
	pushl $1765
	call _m3_fault
	.align 16
.L25:
	pushl %edi
	movl MI_Procedure+92,%eax
	call *%eax
	addl $4,%esp
	jmp .L27
	.align 16
.L24:
	movl -68(%ebp),%ecx
	pushl %ecx
	call UserProc__CouldBeClosure
	addl $4,%esp
	testl %eax,%eax
	je .L28
	movl -68(%ebp),%edx
	pushl %edx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+224,%eax
	jmp .L56
	.align 16
.L28:
	movl -68(%ebp),%edx
	pushl %edx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
.L56:
	call *%eax
	movl %eax,%ebx
	movl %ebx,-56(%ebp)
	movl -28(%ebp),%ecx
	pushl %ecx
	xorl %eax,%eax
	movb -52(%ebp),%al
	pushl %eax
	movl MI_CG+736,%eax
	call *%eax
	addl $12,%esp
.L27:
	cmpb $0,-36(%ebp)
	je .L29
	cmpl $0,-28(%ebp)
	jne .L31
	pushl $1956
	call _m3_fault
	.align 16
.L31:
	movl -28(%ebp),%edx
	movb 8(%edx),%al
	cmpb %al,9(%edx)
	jne .L29
	cmpl $0,-40(%ebp)
	jge .L32
	pushl $1985
	call _m3_fault
	.align 16
.L32:
	movl -40(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%edx
	pushl %edx
	movl -44(%ebp),%ecx
	pushl %ecx
	call UserProc__GenResultArg
	addl $12,%esp
.L29:
	cmpl $0,-28(%ebp)
	jne .L33
	pushl $2020
	call _m3_fault
	.align 16
.L33:
	movl -28(%ebp),%edx
	cmpb $0,8(%edx)
	je .L34
	movl -68(%ebp),%ecx
	pushl %ecx
	movl MI_QualifyExpr+56,%eax
	call *%eax
	movl -32(%ebp),%edi
	xorl %esi,%esi
	addl $4,%esp
	jmp .L35
	.align 16
.L36:
	cmpl $0,-64(%ebp)
	jne .L37
	pushl $2084
	call _m3_fault
	.align 16
.L37:
	movl -64(%ebp),%ebx
	cmpl %esi,4(%ebx)
	ja .L38
	pushl $2082
	call _m3_fault
	.align 16
.L38:
	movl (%ebx),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	pushl %edi
	movl -68(%ebp),%edx
	pushl %edx
	movl MI_Formal+72,%eax
	call *%eax
	movl 8(%edi),%edi
	incl %esi
	addl $12,%esp
.L35:
	testl %edi,%edi
	jne .L36
	jmp .L40
	.align 16
.L34:
	pushl $0
	movl -64(%ebp),%ecx
	pushl %ecx
	movl -32(%ebp),%edx
	pushl %edx
	movl -68(%ebp),%ecx
	pushl %ecx
	call UserProc__EmitRightToLeft
	movl -68(%ebp),%edx
	pushl %edx
	movl MI_QualifyExpr+56,%eax
	call *%eax
	addl $20,%esp
.L40:
	cmpb $0,-36(%ebp)
	je .L41
	cmpl $0,-28(%ebp)
	jne .L43
	pushl $2212
	call _m3_fault
	.align 16
.L43:
	movl -28(%ebp),%ecx
	movb 8(%ecx),%al
	cmpb %al,9(%ecx)
	je .L41
	cmpl $0,-40(%ebp)
	jge .L44
	pushl $2241
	call _m3_fault
	.align 16
.L44:
	movl -40(%ebp),%edx
	pushl %edx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl -44(%ebp),%edx
	pushl %edx
	call UserProc__GenResultArg
	addl $12,%esp
.L41:
	movl -24(%ebp),%edi
	testl %edi,%edi
	je .L45
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%esi
	shrl $12,%esi
	cmpl %esi,MM_UserProc+96
	jg .L47
	movl MM_UserProc+92,%eax
	cmpl %esi,4(%eax)
	jge .L46
.L47:
	pushl $2325
	call _m3_fault
	.align 16
.L46:
	pushl %edi
	movl MI_Procedure+96,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%ebp),%ecx
	addl $4,%esp
	movl %ebx,24(%ecx)
	jmp .L48
	.align 16
.L45:
	movl -68(%ebp),%edx
	pushl %edx
	call UserProc__CouldBeClosure
	addl $4,%esp
	testl %eax,%eax
	je .L49
	movl -28(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%edx
	pushl %edx
	xorl %eax,%eax
	movb -52(%ebp),%al
	pushl %eax
	movl -56(%ebp),%ecx
	pushl %ecx
	call UserProc__GenClosureCall
	movl 8(%ebp),%edx
	movl %eax,%ebx
	movl %ebx,24(%edx)
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+232,%eax
	call *%eax
	addl $20,%esp
	jmp .L48
	.align 16
.L49:
	movl -56(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	movl -28(%ebp),%ecx
	pushl %ecx
	xorl %ebx,%ebx
	movb -52(%ebp),%bl
	pushl %ebx
	movl MI_CG+740,%eax
	call *%eax
	pushl %ebx
	movl MI_Procedure+88,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %eax,%ebx
	movl %ebx,24(%edx)
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+232,%eax
	call *%eax
	movl -60(%ebp),%edx
	pushl %edx
	movl MI_Marker+116,%eax
	call *%eax
	addl $24,%esp
.L48:
	cmpl $0,-40(%ebp)
	jge .L50
	pushl $2513
	call _m3_fault
	.align 16
.L50:
	movl 8(%ebp),%ecx
	movl -40(%ebp),%edx
	movl %edx,28(%ecx)
	cmpb $0,-36(%ebp)
	je .L9
	movl 24(%ecx),%eax
	testl %eax,%eax
	je .L52
	pushl $2544
	call _m3_fault
	.align 16
.L52:
	movl 8(%ebp),%ecx
	cmpb $0,14(%ecx)
	je .L55
	movl -44(%ebp),%edx
	movl %edx,24(%ecx)
	jmp .L9
	.align 16
.L55:
	movl -40(%ebp),%ecx
	pushl %ecx
	pushl %eax
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_CG+372,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%ebx
	movl %ebx,24(%ecx)
.L9:
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 UserProc__Prep,.Lfe5-UserProc__Prep
	.align 16
	.type	 UserProc__PrepRightToLeft,@function
UserProc__PrepRightToLeft:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %edi,%edi
	je .L57
	leal 1(%esi),%eax
	pushl %eax
	pushl %ebx
	movl 8(%edi),%eax
	pushl %eax
	call UserProc__PrepRightToLeft
	addl $12,%esp
	testl %ebx,%ebx
	jne .L59
	pushl $2772
	call _m3_fault
	.align 16
.L59:
	cmpl %esi,4(%ebx)
	ja .L60
	pushl $2770
	call _m3_fault
	.align 16
.L60:
	movl (%ebx),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	pushl %edi
	movl MI_Formal+68,%eax
	call *%eax
.L57:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 UserProc__PrepRightToLeft,.Lfe6-UserProc__PrepRightToLeft
	.align 16
	.type	 UserProc__EmitRightToLeft,@function
UserProc__EmitRightToLeft:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	movl 20(%ebp),%esi
	testl %edi,%edi
	je .L61
	leal 1(%esi),%eax
	pushl %eax
	pushl %ebx
	movl 8(%edi),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call UserProc__EmitRightToLeft
	addl $16,%esp
	testl %ebx,%ebx
	jne .L63
	pushl $2916
	call _m3_fault
	.align 16
.L63:
	cmpl %esi,4(%ebx)
	ja .L64
	pushl $2914
	call _m3_fault
	.align 16
.L64:
	movl (%ebx),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Formal+72,%eax
	call *%eax
.L61:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 UserProc__EmitRightToLeft,.Lfe7-UserProc__EmitRightToLeft
	.align 16
	.type	 UserProc__GenResultArg,@function
UserProc__GenResultArg:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	testl %eax,%eax
	je .L66
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	addl $4,%esp
	jmp .L67
	.align 16
.L66:
	pushl %edx
	pushl %eax
	pushl %ecx
	movl MI_CG+368,%eax
	call *%eax
	addl $12,%esp
.L67:
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 UserProc__GenResultArg,.Lfe8-UserProc__GenResultArg
	.align 16
	.type	 UserProc__GenClosureCall,@function
UserProc__GenClosureCall:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebp),%esi
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	pushl $50
	movl %eax,%edi
	pushl %edi
	pushl $-1
	pushl %ebx
	movl MI_CG+776,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	movl MI_CG+784,%eax
	call *%eax
	movl MI_CG+752,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	movl MI_CG+780,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+236,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl %edi
	movl MI_CG+316,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	pushl %esi
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	pushl %ebx
	movl MI_CG+740,%eax
	call *%eax
	pushl %ebx
	movl MI_Procedure+88,%eax
	call *%eax
	movl %eax,%ebx
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_Marker+116,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 UserProc__GenClosureCall,.Lfe9-UserProc__GenClosureCall
	.align 16
	.type	 UserProc__CouldBeClosure,@function
UserProc__CouldBeClosure:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_NamedExpr+52,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L70
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,%eax
	jne .L70
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L71
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_UserProc+104
	jg .L72
	movl MM_UserProc+100,%eax
	cmpl %edx,4(%eax)
	jge .L71
.L72:
	pushl $3509
	call _m3_fault
	.align 16
.L71:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Variable+68,%eax
	call *%eax
	testl %eax,%eax
	je .L70
	movl $1,%ebx
.L70:
	movl %ebx,%eax
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 UserProc__CouldBeClosure,.Lfe10-UserProc__CouldBeClosure
	.align 16
	.type	 UserProc__IsProcedureLiteral,@function
UserProc__IsProcedureLiteral:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl $0,-4(%ebp)
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L77
	leal -4(%ebp),%esi
	pushl %esi
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_NamedExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L75
	pushl %esi
	pushl %ebx
	movl MI_QualifyExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L75
	pushl %esi
	pushl %ebx
	movl MI_ProcExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L77
.L75:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpb $4,%al
	je .L76
	xorl %eax,%eax
	jmp .L77
	.align 16
.L76:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,(%edi)
	movl $1,%eax
.L77:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 UserProc__IsProcedureLiteral,.Lfe11-UserProc__IsProcedureLiteral
	.align 16
	.type	 UserProc__Initialize,@function
UserProc__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_UserProc+56,%eax
	pushl %eax
	movl MM_UserProc+60,%eax
	pushl %eax
	movl MM_UserProc+52,%eax
	pushl %eax
	movl MM_UserProc+48,%eax
	pushl %eax
	movl MM_UserProc+44,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $1
	pushl $0
	pushl $99999
	pushl $0
	movl MI_CallExpr+152,%eax
	call *%eax
	movl %eax,MI_UserProc+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 UserProc__Initialize,.Lfe12-UserProc__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_UserProc
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_UserProc
.data
	.align 4
	.type	 MM_UserProc,@object
	.size	 MM_UserProc,548
MM_UserProc:
	.long MM_UserProc+400
	.zero	4
	.long MM_UserProc+92
	.zero	8
	.long MM_UserProc+252
	.zero	20
	.long UserProc__TypeOf
	.long UserProc__NeedsAddress
	.long UserProc__Check
	.long UserProc__Compile
	.long UserProc__Prep
	.long UserProc__PrepRightToLeft
	.long UserProc__EmitRightToLeft
	.long UserProc__GenResultArg
	.long UserProc__GenClosureCall
	.long UserProc__CouldBeClosure
	.long UserProc__Initialize
	.long UserProc__IsProcedureLiteral
	.long MM_UserProc+100
	.long -712670126
	.zero	4
	.long 149856025
	.ascii	"Initialize"
	.zero	1
	.ascii	"IsProcedureLiteral"
	.zero	1
	.ascii	"CouldBeClosure"
	.zero	1
	.ascii	"GenClosureCall"
	.zero	1
	.ascii	"GenResultArg"
	.zero	1
	.ascii	"EmitRightToLeft"
	.zero	1
	.ascii	"PrepRightToLeft"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.long UserProc__Initialize
	.long MM_UserProc+108
	.long MI_UserProc+48
	.long UserProc__IsProcedureLiteral
	.long MM_UserProc+119
	.long MI_UserProc+52
	.long UserProc__CouldBeClosure
	.long MM_UserProc+138
	.zero	4
	.long UserProc__GenClosureCall
	.long MM_UserProc+153
	.zero	4
	.long UserProc__GenResultArg
	.long MM_UserProc+168
	.zero	4
	.long UserProc__EmitRightToLeft
	.long MM_UserProc+181
	.zero	4
	.long UserProc__PrepRightToLeft
	.long MM_UserProc+197
	.zero	4
	.long UserProc__Prep
	.long MM_UserProc+213
	.zero	4
	.long UserProc__Compile
	.long MM_UserProc+218
	.zero	4
	.long UserProc__Check
	.long MM_UserProc+226
	.zero	4
	.long UserProc__NeedsAddress
	.long MM_UserProc+232
	.zero	4
	.long UserProc__TypeOf
	.long MM_UserProc+245
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/UserProc.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
