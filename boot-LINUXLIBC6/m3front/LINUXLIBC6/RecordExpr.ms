	.file	"RecordExpr.mc"
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
	.type	 RecordExpr__New,@function
RecordExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_RecordExpr+304,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,8(%edi)
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
	movl $0,24(%edi)
	movl $0,28(%edi)
	movl $0,32(%edi)
	movb $0,36(%edi)
	movb $0,37(%edi)
	movb $1,13(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RecordExpr__New,.Lfe1-RecordExpr__New
	.align 16
	.type	 RecordExpr__Is,@function
RecordExpr__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L3
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
.L3:
	cmpl %eax,MM_RecordExpr+308
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RecordExpr__Is,.Lfe2-RecordExpr__Is
	.align 16
	.type	 RecordExpr__Qualify,@function
RecordExpr__Qualify:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %esi,-32(%ebp)
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,%ebx
	movl %ebx,-4(%ebp)
	testl %edi,%edi
	je .L23
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RecordExpr+308
	jg .L23
	movl MM_RecordExpr+304,%eax
	cmpl %edx,4(%eax)
	jl .L23
	movl %edi,%esi
	leal -32(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 16(%esi),%eax
	pushl %eax
	movl MI_RecordType+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L22
	leal -28(%ebp),%eax
	pushl %eax
	movl -32(%ebp),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 20(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L12
	pushl $1492
	call _m3_fault
	.align 16
.L12:
	xorl %edi,%edi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-36(%ebp)
	jmp .L13
	.align 16
.L14:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L15
	pushl $1508
	call _m3_fault
	.align 16
.L15:
	cmpl %edi,4(%eax)
	ja .L16
	pushl $1506
	call _m3_fault
	.align 16
.L16:
	movl (%eax),%eax
	movl (%eax,%edi,4),%ebx
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L17
	movl 12(%ebp),%ecx
	cmpl %ecx,-8(%ebp)
	jne .L19
	movl 16(%ebp),%ecx
	movl -4(%ebp),%eax
	movl %eax,(%ecx)
	movl $1,%eax
	jmp .L22
	.align 16
.L17:
	cmpl %edi,-24(%ebp)
	jne .L19
	movl 16(%ebp),%ecx
	movl %ebx,(%ecx)
	movl $1,%eax
	jmp .L22
	.align 16
.L19:
	incl %edi
.L13:
	cmpl %edi,-36(%ebp)
	jge .L14
.L23:
	xorl %eax,%eax
.L22:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RecordExpr__Qualify,.Lfe3-RecordExpr__Qualify
	.align 16
	.type	 RecordExpr__Check,@function
RecordExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl $0,-32(%ebp)
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl 8(%ebp),%edx
	movl %esi,-4(%ebp)
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl 8(%ebp),%ecx
	addl $4,%esp
	movl %eax,16(%ecx)
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L25
	pushl $1876
	call _m3_fault
	.align 16
.L25:
	movl %esi,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L26
	.align 16
.L27:
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L28
	pushl $1876
	call _m3_fault
	.align 16
.L28:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L29
	pushl $1874
	call _m3_fault
	.align 16
.L29:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%ecx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L26:
	cmpl %esi,%ebx
	jle .L27
	movl 8(%ebp),%ecx
	movl 16(%ecx),%eax
	movl %eax,8(%ecx)
	leal -24(%ebp),%eax
	pushl %eax
	movl 16(%ecx),%eax
	pushl %eax
	movl MI_RecordType+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L31
	pushl $MM_RecordExpr+316
	movl MI_Error+44,%eax
	call *%eax
	jmp .L24
	.align 16
.L31:
	movl -24(%ebp),%ebx
	xorl %edi,%edi
	jmp .L32
	.align 16
.L33:
	incl %edi
	movl 8(%ebx),%ebx
.L32:
	testl %ebx,%ebx
	jne .L33
	leal -48(%ebp),%eax
	leal -40(%ebp),%edx
	movl %edx,-48(%ebp)
	movl $1,-44(%ebp)
	movl %edi,-40(%ebp)
	pushl %eax
	movl MM_RecordExpr+372,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%edx
	xorl %edi,%edi
	addl $8,%esp
	movl %ecx,24(%edx)
	movl -24(%ebp),%ebx
	jmp .L35
	.align 16
.L36:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Field+56,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $8,%esp
	movl 24(%edx),%eax
	testl %eax,%eax
	jne .L37
	pushl $2148
	call _m3_fault
	.align 16
.L37:
	cmpl %edi,4(%eax)
	ja .L38
	pushl $2146
	call _m3_fault
	.align 16
.L38:
	leal (%edi,%edi,4),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%ecx
	movl %ecx,-52(%ebp)
	incl %edi
	movl %ebx,(%ecx)
	movl -52(%ebp),%edx
	movl -20(%ebp),%eax
	movl %edx,%ecx
	movl %eax,12(%edx)
	movl -8(%ebp),%eax
	movl %eax,4(%ecx)
	movl -4(%ebp),%eax
	movl %eax,8(%ecx)
	movb $0,16(%ecx)
	movl 8(%ebx),%ebx
.L35:
	testl %ebx,%ebx
	jne .L36
	movb $1,-56(%ebp)
	movl 8(%ebp),%edx
	pushl %edx
	call RecordExpr__Fold
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L40
	pushl $2356
	call _m3_fault
	.align 16
.L40:
	movl %ebx,-60(%ebp)
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-64(%ebp)
	jmp .L41
	.align 16
.L42:
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L43
	pushl $2372
	call _m3_fault
	.align 16
.L43:
	movl %eax,%ecx
	movl -60(%ebp),%edx
	cmpl %edx,4(%ecx)
	ja .L44
	pushl $2370
	call _m3_fault
	.align 16
.L44:
	movl (%ecx),%eax
	movl -60(%ebp),%edx
	movl (%eax,%edx,4),%esi
	leal -28(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_RangeExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L45
	pushl $MM_RecordExpr+384
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L45:
	pushl %ebx
	leal -36(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L46
	movb $0,-56(%ebp)
	xorl %ebx,%ebx
	movl -32(%ebp),%esi
.L47:
	cmpl %edi,%ebx
	jl .L48
	pushl $MM_RecordExpr+452
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	movl -60(%ebp),%ebx
	addl $8,%esp
	jmp .L53
	.align 16
.L48:
	movl 8(%ebp),%edx
	movl 24(%edx),%eax
	testl %eax,%eax
	jne .L50
	pushl $2612
	call _m3_fault
	.align 16
.L50:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L51
	pushl $2610
	call _m3_fault
	.align 16
.L51:
	leal (%ebx,%ebx,4),%eax
	sall $2,%eax
	addl (%ecx),%eax
	movl -36(%ebp),%edx
	cmpl %edx,12(%eax)
	je .L53
	incl %ebx
	jmp .L47
	.align 16
.L46:
	cmpb $0,-56(%ebp)
	jne .L54
	pushl $MM_RecordExpr+480
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L54:
	cmpl %edi,-60(%ebp)
	jl .L55
	pushl $MM_RecordExpr+540
	movl MI_Error+44,%eax
	call *%eax
	leal -1(%edi),%ebx
	addl $4,%esp
	jmp .L53
	.align 16
.L55:
	movl -60(%ebp),%ebx
.L53:
	testl %ebx,%ebx
	jl .L57
	cmpl %edi,%ebx
	jge .L57
	movl 8(%ebp),%edx
	movl 24(%edx),%eax
	testl %eax,%eax
	jne .L58
	pushl $2836
	call _m3_fault
	.align 16
.L58:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L59
	pushl $2834
	call _m3_fault
	.align 16
.L59:
	leal (%ebx,%ebx,4),%edx
	movl (%ecx),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-52(%ebp)
	cmpb $0,16(%eax)
	je .L60
	pushl $MM_RecordExpr+568
	movl 12(%eax),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L60:
	movl -52(%ebp),%eax
	movb $1,16(%eax)
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl -52(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L61
	pushl $MM_RecordExpr+604
	movl -52(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
	jmp .L57
	.align 16
.L61:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl -52(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_AssignStmt+48,%eax
	call *%eax
	movl -52(%ebp),%eax
	addl $12,%esp
	movl %esi,8(%eax)
.L57:
	incl -60(%ebp)
.L41:
	movl -64(%ebp),%edx
	cmpl %edx,-60(%ebp)
	jle .L42
	xorl %ebx,%ebx
	leal -1(%edi),%esi
	jmp .L64
	.align 16
.L65:
	movl 8(%ebp),%edx
	movl 24(%edx),%eax
	testl %eax,%eax
	jne .L66
	pushl $3092
	call _m3_fault
	.align 16
.L66:
	cmpl %ebx,4(%eax)
	ja .L67
	pushl $3090
	call _m3_fault
	.align 16
.L67:
	leal (%ebx,%ebx,4),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%ecx
	movl %ecx,-52(%ebp)
	cmpb $0,16(%ecx)
	jne .L68
	cmpl $0,8(%ecx)
	jne .L68
	pushl $MM_RecordExpr+656
	movl 12(%ecx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L68:
	incl %ebx
.L64:
	cmpl %esi,%ebx
	jle .L65
.L24:
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RecordExpr__Check,.Lfe4-RecordExpr__Check
	.align 16
	.type	 RecordExpr__EqCheck,@function
RecordExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	je .L77
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RecordExpr+308
	jg .L77
	movl MM_RecordExpr+304,%eax
	cmpl %edx,4(%eax)
	jl .L77
	movl %ebx,%esi
	movl 16(%ebp),%ecx
	pushl %ecx
	movl 16(%esi),%eax
	pushl %eax
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L77
	cmpl $0,20(%edi)
	sete %al
	andl $255,%eax
	cmpl $0,20(%esi)
	jne .L78
	cmpl $1,%eax
	jne .L77
	jmp .L79
	.align 16
.L78:
	testl %eax,%eax
	jne .L77
.L79:
	movl 20(%edi),%edx
	testl %edx,%edx
	je .L80
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L82
	pushl $3348
	call _m3_fault
	.align 16
.L82:
	movl 4(%eax),%eax
	cmpl %eax,4(%edx)
	je .L80
.L77:
	xorl %eax,%eax
	jmp .L92
	.align 16
.L80:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L83
	pushl $3428
	call _m3_fault
	.align 16
.L83:
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L84
	.align 16
.L85:
	movl 20(%edi),%edx
	testl %edx,%edx
	jne .L86
	pushl $3444
	call _m3_fault
	.align 16
.L86:
	cmpl %ebx,4(%edx)
	ja .L87
	pushl $3442
	call _m3_fault
	.align 16
.L87:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L88
	pushl $3444
	call _m3_fault
	.align 16
.L88:
	cmpl %ebx,4(%eax)
	ja .L89
	pushl $3442
	call _m3_fault
	.align 16
.L89:
	movl 16(%ebp),%ecx
	pushl %ecx
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+232,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L92
	incl %ebx
.L84:
	cmpl %ebx,-4(%ebp)
	jge .L85
	movl $1,%eax
.L92:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RecordExpr__EqCheck,.Lfe5-RecordExpr__EqCheck
	.align 16
	.type	 RecordExpr__NeedsAddress,@function
RecordExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RecordExpr__NeedsAddress,.Lfe6-RecordExpr__NeedsAddress
	.align 16
	.type	 RecordExpr__PrepLV,@function
RecordExpr__PrepLV:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %ebx
	call RecordExpr__Fold
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L94
	movl %ebx,%edx
	movl 32(%edx),%eax
	incl %eax
	movl %eax,32(%edx)
	cmpl $0,28(%edx)
	je .L96
	cmpl $1,%eax
	jg .L94
.L96:
	leal -40(%ebp),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	addl $8,%esp
	cmpb $0,14(%ebx)
	je .L97
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,28(%ebx)
	jmp .L98
	.align 16
.L97:
	movl -40(%ebp),%edx
	testl %edx,%edx
	jge .L99
	pushl $3889
	call _m3_fault
	.align 16
.L99:
	movl -32(%ebp),%eax
	testl %eax,%eax
	jge .L100
	pushl $3889
	call _m3_fault
	.align 16
.L100:
	pushl $1
	pushl $14
	pushl %eax
	pushl %edx
	movl MI_CG+208,%eax
	call *%eax
	movl %eax,%edi
	addl $16,%esp
.L98:
	movl 24(%ebx),%eax
	testl %eax,%eax
	jne .L101
	pushl $3956
	call _m3_fault
	.align 16
.L101:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-48(%ebp)
	jmp .L102
	.align 16
.L103:
	movl 24(%ebx),%eax
	testl %eax,%eax
	jne .L104
	pushl $3972
	call _m3_fault
	.align 16
.L104:
	cmpl %esi,4(%eax)
	ja .L105
	pushl $3970
	call _m3_fault
	.align 16
.L105:
	leal (%esi,%esi,4),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-44(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	pushl $1
	movl -44(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+52,%eax
	call *%eax
	addl $20,%esp
	cmpb $0,14(%ebx)
	je .L106
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	addl $4,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L108
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	addl $4,%esp
	jmp .L108
	.align 16
.L106:
	movl -32(%ebp),%eax
	testl %eax,%eax
	jge .L109
	pushl $4081
	call _m3_fault
	.align 16
.L109:
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_CG+368,%eax
	call *%eax
	addl $12,%esp
.L108:
	movl -44(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+56,%eax
	call *%eax
	incl %esi
	addl $8,%esp
.L102:
	cmpl %esi,-48(%ebp)
	jge .L103
	cmpb $0,14(%ebx)
	jne .L94
	movl -32(%ebp),%eax
	testl %eax,%eax
	jge .L113
	pushl $4225
	call _m3_fault
	.align 16
.L113:
	pushl %eax
	pushl $0
	pushl %edi
	movl MI_CG+372,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,28(%ebx)
.L94:
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RecordExpr__PrepLV,.Lfe7-RecordExpr__PrepLV
	.align 16
	.type	 RecordExpr__CompileLV,@function
RecordExpr__CompileLV:
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
	cmpb $0,37(%ebx)
	je .L115
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	pushl $0
	pushl $MM_RecordExpr+700
	movl -12(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,%esi
	movl 16(%ebx),%eax
	pushl %eax
	pushl %ebx
	call RecordExpr__PrepLiteral
	addl $32,%esp
	movl 16(%ebx),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call RecordExpr__GenLiteral
	pushl $0
	movl MI_Module+112,%eax
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L116
	pushl $4433
	call _m3_fault
	.align 16
.L116:
	pushl %eax
	pushl %esi
	pushl %ebx
	movl MI_CG+368,%eax
	call *%eax
	jmp .L114
	.align 16
.L115:
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl 32(%ebx),%eax
	decl %eax
	movl %eax,32(%ebx)
	addl $4,%esp
	testl %eax,%eax
	jg .L114
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_CG+232,%eax
	call *%eax
	movl $0,28(%ebx)
.L114:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RecordExpr__CompileLV,.Lfe8-RecordExpr__CompileLV
	.align 16
	.type	 RecordExpr__Fold,@function
RecordExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %edx,%edx
	cmpb $0,36(%esi)
	jne .L120
	movb $1,36(%esi)
	movb $1,37(%esi)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L121
	pushl $4708
	call _m3_fault
	.align 16
.L121:
	movl %edx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L122
	.align 16
.L123:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L124
	pushl $4724
	call _m3_fault
	.align 16
.L124:
	cmpl %ebx,4(%eax)
	ja .L125
	pushl $4722
	call _m3_fault
	.align 16
.L125:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L126
	movb $0,37(%esi)
	jmp .L127
	.align 16
.L126:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L128
	pushl $4740
	call _m3_fault
	.align 16
.L128:
	cmpl %ebx,4(%eax)
	ja .L129
	pushl $4738
	call _m3_fault
	.align 16
.L129:
	movl (%eax),%eax
	movl %edx,(%eax,%ebx,4)
.L127:
	incl %ebx
.L122:
	cmpl %edi,%ebx
	jle .L123
.L120:
	cmpb $0,37(%esi)
	jne .L131
	xorl %eax,%eax
	jmp .L132
	.align 16
.L131:
	movl %esi,%eax
.L132:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RecordExpr__Fold,.Lfe9-RecordExpr__Fold
	.align 16
	.type	 RecordExpr__IsZeroes,@function
RecordExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 24(%edi),%eax
	testl %eax,%eax
	jne .L135
	pushl $4912
	call _m3_fault
	.align 16
.L135:
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L136
	.align 16
.L137:
	movl 24(%edi),%edx
	testl %edx,%edx
	jne .L138
	pushl $4948
	call _m3_fault
	.align 16
.L138:
	cmpl %ebx,4(%edx)
	ja .L139
	pushl $4946
	call _m3_fault
	.align 16
.L139:
	leal (%ebx,%ebx,4),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L142
	incl %ebx
.L136:
	cmpl %esi,%ebx
	jle .L137
	movl $1,%eax
.L142:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RecordExpr__IsZeroes,.Lfe10-RecordExpr__IsZeroes
	.align 16
	.type	 RecordExpr__GenFPLiteral,@function
RecordExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	pushl $MM_RecordExpr+724
	pushl %esi
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%eax
	testl %eax,%eax
	jne .L144
	pushl $5076
	call _m3_fault
	.align 16
.L144:
	xorl %ebx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L145
	.align 16
.L146:
	testl %ebx,%ebx
	jle .L147
	pushl $44
	pushl %esi
	movl MI_M3Buf+48,%eax
	call *%eax
	addl $8,%esp
.L147:
	movl 8(%ebp),%ecx
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L148
	pushl $5108
	call _m3_fault
	.align 16
.L148:
	cmpl %ebx,4(%edx)
	ja .L149
	pushl $5106
	call _m3_fault
	.align 16
.L149:
	pushl %esi
	leal (%ebx,%ebx,4),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L145:
	cmpl %edi,%ebx
	jle .L146
	pushl $62
	pushl %esi
	movl MI_M3Buf+48,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RecordExpr__GenFPLiteral,.Lfe11-RecordExpr__GenFPLiteral
	.align 16
	.type	 RecordExpr__PrepLiteral,@function
RecordExpr__PrepLiteral:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl 8(%ebp),%ecx
	movl %ebx,-4(%ebp)
	movl 24(%ecx),%eax
	testl %eax,%eax
	jne .L153
	pushl $5232
	call _m3_fault
	.align 16
.L153:
	movl %ebx,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L154
	.align 16
.L155:
	movl 8(%ebp),%ecx
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L156
	pushl $5268
	call _m3_fault
	.align 16
.L156:
	cmpl %esi,4(%edx)
	ja .L157
	pushl $5266
	call _m3_fault
	.align 16
.L157:
	leal (%esi,%esi,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-24(%ebp)
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L158
	pushl $5280
	call _m3_fault
	.align 16
.L158:
	pushl %ebx
	movl MI_Expr+176,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L159
	leal -20(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Expr+236,%eax
	call *%eax
	addl $16,%esp
.L159:
	incl %esi
.L154:
	cmpl %edi,%esi
	jle .L155
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RecordExpr__PrepLiteral,.Lfe12-RecordExpr__PrepLiteral
	.align 16
	.type	 RecordExpr__GenLiteral,@function
RecordExpr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl 8(%ebp),%ecx
	movl %ebx,-4(%ebp)
	movl 24(%ecx),%eax
	testl %eax,%eax
	jne .L163
	pushl $5472
	call _m3_fault
	.align 16
.L163:
	movl %ebx,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L164
	.align 16
.L165:
	movl 8(%ebp),%ecx
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L166
	pushl $5508
	call _m3_fault
	.align 16
.L166:
	cmpl %esi,4(%edx)
	ja .L167
	pushl $5506
	call _m3_fault
	.align 16
.L167:
	leal (%esi,%esi,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-24(%ebp)
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L168
	pushl $5520
	call _m3_fault
	.align 16
.L168:
	pushl %ebx
	movl MI_Expr+176,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L169
	leal -20(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	addl -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Expr+240,%eax
	call *%eax
	addl $20,%esp
.L169:
	incl %esi
.L164:
	cmpl %edi,%esi
	jle .L165
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RecordExpr__GenLiteral,.Lfe13-RecordExpr__GenLiteral
	.align 16
	.type	 M_RecordExpr_tff4b46ef_LINK,@function
M_RecordExpr_tff4b46ef_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RecordExpr+304,%eax
	movl MI_ExprRep+468,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_RecordExpr+252,%edx
	movl %edx,8(%eax)
	movl MM_RecordExpr+260,%edx
	movl %edx,36(%eax)
	movl MM_RecordExpr+264,%ecx
	movl %ecx,52(%eax)
	movl MM_RecordExpr+268,%edx
	movl %edx,56(%eax)
	movl %ecx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+524,%edx
	movl %edx,68(%eax)
	movl %edx,72(%eax)
	movl MM_RecordExpr+272,%edx
	movl %edx,16(%eax)
	movl MM_RecordExpr+256,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_RecordExpr+276,%edx
	movl %edx,32(%eax)
	movl MM_RecordExpr+280,%edx
	movl %edx,40(%eax)
	movl MM_RecordExpr+284,%edx
	movl %edx,44(%eax)
	movl MM_RecordExpr+288,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe14:
	.size	 M_RecordExpr_tff4b46ef_LINK,.Lfe14-M_RecordExpr_tff4b46ef_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RecordExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_RecordExpr
.data
	.align 4
	.type	 MM_RecordExpr,@object
	.size	 MM_RecordExpr,1256
MM_RecordExpr:
	.long MM_RecordExpr+1012
	.long MM_RecordExpr+44
	.long MM_RecordExpr+304
	.zero	8
	.long MM_RecordExpr+852
	.zero	28
	.long -11843857
.byte 93
.byte 245
.byte 5
.byte 234
.byte 178
.byte 179
.byte 78
.byte 21
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RecordExpr+1201
	.long MM_RecordExpr+1209
	.long MM_RecordExpr+1214
	.zero	4
	.long M_RecordExpr_tff4b46ef_LINK
	.long -350897909
	.zero	16
	.long MM_RecordExpr+1240
	.long MM_RecordExpr+148
	.zero	8
	.long -1720108430
.byte 253
.byte 103
.byte 4
.byte 134
.byte 143
.byte 93
.byte 125
.byte 31
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 20
	.zero	4
	.long MM_RecordExpr+1159
	.long MM_RecordExpr+1169
	.long MM_RecordExpr+1177
	.zero	36
	.long RecordExpr__Check
	.long RecordExpr__EqCheck
	.long RecordExpr__NeedsAddress
	.long RecordExpr__PrepLV
	.long RecordExpr__CompileLV
	.long RecordExpr__Fold
	.long RecordExpr__IsZeroes
	.long RecordExpr__GenFPLiteral
	.long RecordExpr__PrepLiteral
	.long RecordExpr__GenLiteral
	.long RecordExpr__New
	.long RecordExpr__Is
	.long RecordExpr__Qualify
	.long MM_RecordExpr+372
	.long -11843857
	.long 2
	.long MM_RecordExpr+324
	.long 46
	.ascii	"record constructor must specify a record type"
	.zero	7
	.long -1720108430
	.long 2
	.long MM_RecordExpr+392
	.long 53
	.ascii	"range expressions not allowed in record constructors"
	.zero	4
	.long 2
	.long MM_RecordExpr+460
	.long 14
	.ascii	"unknown field"
	.zero	3
	.long 2
	.long MM_RecordExpr+488
	.long 46
	.ascii	"positional values must precede keyword values"
	.zero	3
	.long 2
	.long MM_RecordExpr+548
	.long 16
	.ascii	"too many values"
	.zero	1
	.long 2
	.long MM_RecordExpr+576
	.long 24
	.ascii	"field already specified"
	.zero	1
	.long 2
	.long MM_RecordExpr+612
	.long 38
	.ascii	"expression is not assignable to field"
	.zero	3
	.long 2
	.long MM_RecordExpr+664
	.long 29
	.ascii	"no value specified for field"
	.zero	4
	.long 2
	.long MM_RecordExpr+708
	.long 9
	.ascii	"*record*"
	.zero	4
	.long 2
	.long MM_RecordExpr+732
	.long 8
	.ascii	"RECORD<"
	.zero	1
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"PrepLiteral"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"PrepLV"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Qualify"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"New"
	.zero	4
	.long RecordExpr__GenLiteral
	.long MM_RecordExpr+740
	.zero	4
	.long RecordExpr__PrepLiteral
	.long MM_RecordExpr+751
	.zero	4
	.long RecordExpr__GenFPLiteral
	.long MM_RecordExpr+763
	.zero	4
	.long RecordExpr__IsZeroes
	.long MM_RecordExpr+776
	.zero	4
	.long RecordExpr__Fold
	.long MM_RecordExpr+785
	.zero	4
	.long RecordExpr__CompileLV
	.long MM_RecordExpr+790
	.zero	4
	.long RecordExpr__PrepLV
	.long MM_RecordExpr+800
	.zero	4
	.long RecordExpr__NeedsAddress
	.long MM_RecordExpr+807
	.zero	4
	.long RecordExpr__EqCheck
	.long MM_RecordExpr+820
	.zero	4
	.long RecordExpr__Check
	.long MM_RecordExpr+828
	.zero	4
	.long RecordExpr__Qualify
	.long MM_RecordExpr+834
	.long MI_RecordExpr+52
	.long RecordExpr__Is
	.long MM_RecordExpr+842
	.long MI_RecordExpr+48
	.long RecordExpr__New
	.long MM_RecordExpr+845
	.long MI_RecordExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/RecordExpr.m3"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 4
.byte 4
.byte 14
.byte 16
.byte 36
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
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
.byte 106
.byte 188
.byte 176
.byte 249
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
.byte 19
.byte 254
.byte 126
.byte 2
.byte 4
.byte 4
.byte 4
.byte 4
.byte 14
.byte 16
.byte 16
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 8
.byte 10
.byte 7
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 144
.byte 218
.byte 98
.byte 13
.byte 16
.byte 114
.byte 58
.byte 121
.byte 153
.byte 16
.byte 194
.byte 223
.byte 210
.byte 77
.byte 7
.byte 2
.byte 28
	.ascii	"RecordExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
