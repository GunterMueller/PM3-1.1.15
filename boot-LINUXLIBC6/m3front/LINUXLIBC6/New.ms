	.file	"New.mc"
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
	.type	 New__TypeOf,@function
New__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 20(%eax),%edx
	testl %edx,%edx
	jne .L2
	pushl $388
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%edx)
	jne .L3
	pushl $386
	call _m3_fault
	.align 16
.L3:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L9
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RefType+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_OpaqueType+48,%eax
	call *%eax
	testl %eax,%eax
	jne .L5
.L9:
	movl MI_Null+44,%eax
	movl %eax,-4(%ebp)
.L5:
	movl -4(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 New__TypeOf,.Lfe1-New__TypeOf
	.align 16
	.type	 New__Check,@function
New__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L11
	pushl $580
	call _m3_fault
	.align 16
.L11:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L12
	pushl $578
	call _m3_fault
	.align 16
.L12:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_KeywordExpr+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L13
	pushl $MM_New+124
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L13:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L14
	pushl $628
	call _m3_fault
	.align 16
.L14:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L15
	pushl $626
	call _m3_fault
	.align 16
.L15:
	leal -8(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L16
	pushl $MM_New+180
	movl MI_Error+44,%eax
	call *%eax
	movl MI_Null+44,%eax
	movl %eax,-8(%ebp)
	jmp .L17
	.align 16
.L16:
	leal -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RefType+64,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L18
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl -4(%ebp),%eax
	pushl %eax
	call New__CheckRef
	jmp .L17
	.align 16
.L18:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L19
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	call New__CheckObject
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $12,%esp
	cmpl %edx,-8(%ebp)
	je .L17
	pushl %edx
	movl MI_TypeExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L21
	pushl $756
	call _m3_fault
	.align 16
.L21:
	cmpl $0,4(%eax)
	jne .L22
	pushl $754
	call _m3_fault
	.align 16
.L22:
	movl (%eax),%ecx
	movl %edx,(%ecx)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L23
	pushl $772
	call _m3_fault
	.align 16
.L23:
	movl %eax,%ecx
	cmpl $0,4(%ecx)
	jne .L24
	pushl $770
	call _m3_fault
	.align 16
.L24:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%ecx),%eax
	jmp .L32
	.align 16
.L19:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_OpaqueType+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L25
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	call New__CheckOpaque
	movl %eax,%ecx
	movl %ecx,-4(%ebp)
	addl $12,%esp
	cmpl %ecx,-8(%ebp)
	je .L17
	pushl %ecx
	movl MI_TypeExpr+44,%eax
	call *%eax
	movl %eax,%ecx
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L27
	pushl $868
	call _m3_fault
	.align 16
.L27:
	cmpl $0,4(%eax)
	jne .L28
	pushl $866
	call _m3_fault
	.align 16
.L28:
	movl (%eax),%edx
	movl %ecx,(%edx)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L29
	pushl $884
	call _m3_fault
	.align 16
.L29:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L30
	pushl $882
	call _m3_fault
	.align 16
.L30:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
.L32:
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl %eax,-8(%ebp)
	jmp .L17
	.align 16
.L25:
	movl MI_ErrType+44,%eax
	cmpl %eax,-8(%ebp)
	je .L17
	pushl $MM_New+180
	movl MI_Error+44,%eax
	call *%eax
.L17:
	movl -8(%ebp),%eax
	movl %eax,8(%ebx)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 New__Check,.Lfe2-New__Check
	.align 16
	.type	 New__CheckRef,@function
New__CheckRef:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	xorl %ebx,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	testl %esi,%esi
	jne .L34
	pushl $MM_New+232
	jmp .L42
	.align 16
.L34:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testb $2,-1(%ebp)
	je .L35
	pushl $MM_New+300
	jmp .L42
	.align 16
.L35:
	xorl %eax,%eax
	movb -2(%ebp),%al
	cmpl $10,%eax
	jne .L37
	pushl %edi
	pushl %esi
	call New__CheckOpenArray
	jmp .L33
	.align 16
.L37:
	cmpl $13,%eax
	je .L43
	leal -24(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_RecordType+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L39
.L43:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edi
	pushl %ebx
	call New__CheckRecord
	jmp .L33
	.align 16
.L39:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L40
	pushl $1348
	call _m3_fault
	.align 16
.L40:
	cmpl $1,4(%eax)
	jle .L33
	pushl $MM_New+356
.L42:
	movl MI_Error+44,%eax
	call *%eax
.L33:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 New__CheckRef,.Lfe3-New__CheckRef
	.align 16
	.type	 New__CheckOpenArray,@function
New__CheckOpenArray:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%edx
	movl $0,-4(%ebp)
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L45
	pushl $1476
	call _m3_fault
	.align 16
.L45:
	movl $1,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-8(%ebp)
	jmp .L46
	.align 16
.L47:
	movl 12(%ebp),%edx
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L48
	pushl $1492
	call _m3_fault
	.align 16
.L48:
	cmpl %ebx,4(%eax)
	ja .L49
	pushl $1490
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%esi
	movl 12(%ebp),%edx
	addl $8,%esp
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L50
	pushl $1508
	call _m3_fault
	.align 16
.L50:
	cmpl %ebx,4(%eax)
	ja .L51
	pushl $1506
	call _m3_fault
	.align 16
.L51:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_KeywordExpr+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L52
	pushl $MM_New+396
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L52:
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L53
	pushl $MM_New+480
	jmp .L58
	.align 16
.L53:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_OpenArrayType+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L55
	pushl $MM_New+520
.L58:
	pushl %ebx
	movl MI_Error+48,%eax
	call *%eax
	addl $8,%esp
	jmp .L54
	.align 16
.L55:
	movl -4(%ebp),%edi
.L54:
	incl %ebx
.L46:
	cmpl %ebx,-8(%ebp)
	jge .L47
	pushl %edi
	movl MI_OpenArrayType+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L44
	pushl $MM_New+564
	movl MI_Error+44,%eax
	call *%eax
.L44:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 New__CheckOpenArray,.Lfe4-New__CheckOpenArray
	.align 16
	.type	 New__CheckRecord,@function
New__CheckRecord:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L60
	pushl $1876
	call _m3_fault
	.align 16
.L60:
	movl $1,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-16(%ebp)
	jmp .L61
	.align 16
.L62:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L63
	pushl $1892
	call _m3_fault
	.align 16
.L63:
	cmpl %ebx,4(%eax)
	ja .L64
	pushl $1890
	call _m3_fault
	.align 16
.L64:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%esi
	movl 20(%edi),%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L65
	pushl $1908
	call _m3_fault
	.align 16
.L65:
	cmpl %ebx,4(%edx)
	ja .L66
	pushl $1906
	call _m3_fault
	.align 16
.L66:
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L67
	pushl $MM_New+608
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L68
	.align 16
.L67:
	leal -4(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_RecordType+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L69
	pushl $MM_New+660
	jmp .L73
	.align 16
.L69:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Field+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L70
	pushl $MM_New+696
	jmp .L73
	.align 16
.L70:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	pushl %esi
	movl %eax,%edx
	pushl %edx
	movl MI_Type+124,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L71
	pushl $MM_New+728
.L73:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
	jmp .L68
	.align 16
.L71:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_AssignStmt+48,%eax
	call *%eax
	addl $16,%esp
.L68:
	incl %ebx
.L61:
	cmpl %ebx,-16(%ebp)
	jge .L62
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 New__CheckRecord,.Lfe5-New__CheckRecord
	.align 16
	.type	 New__CheckObject,@function
New__CheckObject:
	pushl %ebp
	movl %esp,%ebp
	subl $100,%esp
	pushl %edi
	pushl %esi
	leal -20(%ebp),%eax
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-76(%ebp)
	movl %ebx,-72(%ebp)
	movl %ebx,-68(%ebp)
	movl %ebx,-64(%ebp)
	movl %ebx,-60(%ebp)
	movl %ebx,-56(%ebp)
	movl %ebx,-52(%ebp)
	movl %ebx,-48(%ebp)
	movl %ebx,-44(%ebp)
	movl %ebx,-40(%ebp)
	movl %ebx,-36(%ebp)
	movl %ebx,-32(%ebp)
	movl %ebx,-28(%ebp)
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl %ebx,-88(%ebp)
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Type+68,%eax
	movl %ebx,%esi
	call *%eax
	movl %eax,8(%ebp)
	movl 12(%ebp),%ecx
	addl $8,%esp
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L75
	pushl $2436
	call _m3_fault
	.align 16
.L75:
	movl $1,%edi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-96(%ebp)
	jmp .L76
	.align 16
.L77:
	movl 12(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L78
	pushl $2452
	call _m3_fault
	.align 16
.L78:
	cmpl %edi,4(%eax)
	ja .L79
	pushl $2450
	call _m3_fault
	.align 16
.L79:
	movl (%eax),%eax
	movl (%eax,%edi,4),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl 12(%ebp),%ecx
	addl $4,%esp
	movl 20(%ecx),%edx
	testl %edx,%edx
	jne .L80
	pushl $2468
	call _m3_fault
	.align 16
.L80:
	cmpl %edi,4(%edx)
	ja .L81
	pushl $2466
	call _m3_fault
	.align 16
.L81:
	leal -76(%ebp),%eax
	pushl %eax
	leal -80(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%edi,4),%eax
	pushl %eax
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L82
	leal -68(%ebp),%eax
	pushl %eax
	leal -72(%ebp),%eax
	pushl %eax
	movl -80(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_ObjectType+60,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L82
	leal -64(%ebp),%ecx
	movl %ecx,-100(%ebp)
	pushl %ecx
	movl -72(%ebp),%eax
	pushl %eax
	movl MI_Method+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L82
	testl %esi,%esi
	jne .L83
	pushl %esi
	pushl %esi
	pushl %esi
	pushl %esi
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Scope+48,%eax
	movl %edx,-92(%ebp)
	call *%eax
	pushl %esi
	pushl %esi
	pushl %esi
	pushl %esi
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	movl MI_Scope+48,%eax
	addl $32,%esp
	call *%eax
	pushl %ebx
	movl -92(%ebp),%ecx
	pushl %ecx
	pushl %esi
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $1,%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_ObjectType+48,%eax
	call *%eax
	movl %eax,%esi
	addl $20,%esp
.L83:
	pushl %ebx
	movl MI_Scope+60,%eax
	call *%eax
	movl %eax,-84(%ebp)
	movl -80(%ebp),%eax
	movl %eax,-64(%ebp)
	movl -88(%ebp),%eax
	imull MI_Target+60,%eax
	movl %eax,-60(%ebp)
	movl %esi,-56(%ebp)
	movl $0,-52(%ebp)
	movl -76(%ebp),%eax
	movl %eax,-48(%ebp)
	movb $1,-44(%ebp)
	movl -100(%ebp),%ecx
	pushl %ecx
	movl MI_Method+44,%eax
	call *%eax
	movl %eax,%edx
	movl -72(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Method+56,%eax
	call *%eax
	incl -88(%ebp)
	movl -84(%ebp),%ecx
	pushl %ecx
	movl MI_Scope+64,%eax
	call *%eax
	addl $20,%esp
.L82:
	incl %edi
.L76:
	cmpl %edi,-96(%ebp)
	jge .L77
	testl %esi,%esi
	je .L85
	pushl %esi
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,8(%ebp)
	addl $4,%esp
.L85:
	movl 12(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L86
	pushl $2900
	call _m3_fault
	.align 16
.L86:
	movl $1,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L87
	.align 16
.L88:
	movl 12(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L89
	pushl $2916
	call _m3_fault
	.align 16
.L89:
	cmpl %esi,4(%eax)
	ja .L90
	pushl $2914
	call _m3_fault
	.align 16
.L90:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%ecx
	addl $4,%esp
	movl 20(%ecx),%edx
	testl %edx,%edx
	jne .L91
	pushl $2932
	call _m3_fault
	.align 16
.L91:
	cmpl %esi,4(%edx)
	ja .L92
	pushl $2930
	call _m3_fault
	.align 16
.L92:
	leal -76(%ebp),%eax
	pushl %eax
	leal -80(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L93
	pushl $MM_New+608
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L94
	.align 16
.L93:
	leal -68(%ebp),%eax
	pushl %eax
	leal -72(%ebp),%eax
	pushl %eax
	movl -80(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_ObjectType+60,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L95
	pushl $MM_New+776
	jmp .L104
	.align 16
.L95:
	leal -64(%ebp),%eax
	pushl %eax
	movl -72(%ebp),%eax
	pushl %eax
	movl MI_Method+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L96
	movl -52(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl MI_ProcType+92,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L97
	pushl $MM_New+820
	movl -80(%ebp),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L97:
	movl 12(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L98
	pushl $3060
	call _m3_fault
	.align 16
.L98:
	cmpl %esi,4(%eax)
	ja .L99
	pushl $3058
	call _m3_fault
	.align 16
.L99:
	movl (%eax),%eax
	movl $0,(%eax,%esi,4)
	jmp .L94
	.align 16
.L96:
	movl -72(%ebp),%eax
	pushl %eax
	movl MI_Field+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L100
	leal -40(%ebp),%eax
	pushl %eax
	movl -72(%ebp),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	pushl %ebx
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L101
	pushl $MM_New+728
	jmp .L104
	.align 16
.L101:
	movl 16(%ebp),%eax
	pushl %eax
	movl -76(%ebp),%eax
	pushl %eax
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+48,%eax
	call *%eax
	addl $12,%esp
	jmp .L94
	.align 16
.L100:
	pushl $MM_New+872
.L104:
	movl -80(%ebp),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L94:
	incl %esi
.L87:
	cmpl %edi,%esi
	jle .L88
	leal -112(%ebp),%esp
	movl 8(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 New__CheckObject,.Lfe6-New__CheckObject
	.align 16
	.type	 New__CheckOpaque,@function
New__CheckOpaque:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl $0,-4(%ebp)
	pushl %ebx
	movl MI_Revelation+176,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L106
	pushl $MM_New+896
	jmp .L109
	.align 16
.L106:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RefType+64,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L108
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl -4(%ebp),%eax
	pushl %eax
	call New__CheckRef
	jmp .L107
	.align 16
.L108:
	pushl $MM_New+956
.L109:
	movl MI_Error+44,%eax
	call *%eax
.L107:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 New__CheckOpaque,.Lfe7-New__CheckOpaque
	.align 16
	.type	 New__Prep,@function
New__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call New__Gen
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 New__Prep,.Lfe8-New__Prep
	.align 16
	.type	 New__Compile,@function
New__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
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
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 New__Compile,.Lfe9-New__Compile
	.align 16
	.type	 New__Gen,@function
New__Gen:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%ebx),%edx
	testl %edx,%edx
	jne .L113
	pushl $3828
	call _m3_fault
	.align 16
.L113:
	cmpl $0,4(%edx)
	jne .L114
	pushl $3826
	call _m3_fault
	.align 16
.L114:
	leal -8(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testb %al,%al
	jne .L115
	pushl $3824
	call _m3_fault
	.align 16
.L115:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RefType+64,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L116
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	call New__GenRef
	jmp .L112
	.align 16
.L116:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L118
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	call New__GenObject
	jmp .L112
	.align 16
.L118:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_OpaqueType+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L119
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	call New__GenOpaque
	jmp .L112
	.align 16
.L119:
	pushl $MM_New+1000
	movl MI_Error+44,%eax
	call *%eax
.L112:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 New__Gen,.Lfe10-New__Gen
	.align 16
	.type	 New__GenRef,@function
New__GenRef:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	movl $0,-44(%ebp)
	movl %eax,-40(%ebp)
	movl %eax,-36(%ebp)
	movl %eax,-32(%ebp)
	movl %eax,-28(%ebp)
	movl %eax,-24(%ebp)
	movl %eax,-20(%ebp)
	movl %eax,-16(%ebp)
	movl %eax,-12(%ebp)
	movl %eax,-8(%ebp)
	movl %eax,-4(%ebp)
	pushl %ebx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-48(%ebp)
	leal -40(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,%edi
	leal -20(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	addl $20,%esp
	cmpb $10,-2(%ebp)
	jne .L121
	movl 16(%ebp),%edx
	pushl %edx
	pushl %esi
	xorl %eax,%eax
	movb -21(%ebp),%al
	andl $1,%eax
	pushl %eax
	pushl %edi
	call New__GenOpenArray
	jmp .L120
	.align 16
.L121:
	leal -44(%ebp),%eax
	pushl %eax
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_RecordType+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L123
	movl 16(%ebp),%edx
	pushl %edx
	pushl %esi
	xorl %eax,%eax
	movb -21(%ebp),%al
	andl $1,%eax
	pushl %eax
	movl -48(%ebp),%edx
	pushl %edx
	pushl %edi
	call New__GenRecord
	jmp .L120
	.align 16
.L123:
	xorl %eax,%eax
	movb -21(%ebp),%al
	andl $1,%eax
	movb MM_New+112(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Procedure+92,%eax
	call *%eax
	pushl %ebx
	pushl $-1
	pushl %edi
	movl MI_Type+144,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+744,%eax
	call *%eax
	pushl %esi
	movl MI_Procedure+96,%eax
	call *%eax
	movl %eax,%esi
	movl 16(%ebp),%edx
	addl $28,%esp
	movl %esi,24(%edx)
	movl -12(%ebp),%eax
	testl %eax,%eax
	jge .L124
	pushl $4369
	call _m3_fault
	.align 16
.L124:
	movl 16(%ebp),%edx
	movl %eax,28(%edx)
.L120:
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 New__GenRef,.Lfe11-New__GenRef
	.align 16
	.type	 New__GenOpenArray,@function
New__GenOpenArray:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 20(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L126
	pushl $4516
	call _m3_fault
	.align 16
.L126:
	movl 4(%eax),%eax
	leal -1(%eax),%ecx
	movl %ecx,-8(%ebp)
	imull MI_Target+104,%eax
	movl %eax,%edx
	addl MI_Target+68,%edx
	jns .L127
	pushl $4529
	call _m3_fault
	.align 16
.L127:
	pushl $1
	pushl $14
	movl MI_Target+64,%eax
	pushl %eax
	pushl %edx
	movl MI_CG+208,%eax
	call *%eax
	movl %eax,%edi
	xorl %eax,%eax
	movb 12(%ebp),%al
	movb MM_New+114(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_M3RT+304,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+368,%eax
	call *%eax
	addl $32,%esp
	movl MI_M3RT+292,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+412,%eax
	call *%eax
	movl -8(%ebp),%ecx
	pushl %ecx
	movl MI_CG+424,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+408,%eax
	call *%eax
	movl MI_M3RT+304,%esi
	movl $1,%ebx
	movl -8(%ebp),%ecx
	movl %ecx,-12(%ebp)
	addl $20,%esp
	jmp .L128
	.align 16
.L129:
	movl 20(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L130
	pushl $4804
	call _m3_fault
	.align 16
.L130:
	cmpl %ebx,4(%eax)
	ja .L131
	pushl $4802
	call _m3_fault
	.align 16
.L131:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 20(%ebp),%ecx
	addl $4,%esp
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L132
	pushl $4820
	call _m3_fault
	.align 16
.L132:
	cmpl %ebx,4(%eax)
	ja .L133
	pushl $4818
	call _m3_fault
	.align 16
.L133:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	pushl %edi
	movl MI_CG+408,%eax
	call *%eax
	addl MI_Target+104,%esi
	incl %ebx
	addl $12,%esp
.L128:
	cmpl %ebx,-12(%ebp)
	jge .L129
	movl -4(%ebp),%ecx
	pushl %ecx
	movl MI_Procedure+92,%eax
	call *%eax
	movl MI_Target+752,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L135
	pushl $4932
	call _m3_fault
	.align 16
.L135:
	cmpb $0,8(%eax)
	je .L136
	pushl $0
	pushl $-1
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Type+144,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	pushl %edi
	movl MI_CG+368,%eax
	jmp .L139
	.align 16
.L136:
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	pushl %edi
	movl MI_CG+368,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	pushl $0
	pushl $-1
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Type+144,%eax
.L139:
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	addl $32,%esp
	movl -4(%ebp),%ecx
	pushl %ecx
	movl MI_Procedure+96,%eax
	call *%eax
	movl 20(%ebp),%ecx
	movl %eax,24(%ecx)
	movl 16(%ebp),%eax
	addl $4,%esp
	movl 8(%eax),%eax
	testl %eax,%eax
	jge .L138
	pushl $5121
	call _m3_fault
	.align 16
.L138:
	movl 20(%ebp),%ecx
	movl %eax,28(%ecx)
	pushl %edi
	movl MI_CG+212,%eax
	call *%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 New__GenOpenArray,.Lfe12-New__GenOpenArray
	.align 16
	.type	 New__GenRecord,@function
New__GenRecord:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 20(%ebp),%eax
	movl $0,-4(%ebp)
	movl 8(%eax),%edi
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl 8(%ebp),%ebx
	movb MM_New+116(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Procedure+92,%eax
	call *%eax
	pushl $0
	pushl $-1
	pushl %ebx
	movl MI_Type+144,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	pushl %esi
	movl MI_Procedure+96,%eax
	call *%eax
	movl %eax,%esi
	movl 24(%ebp),%ecx
	addl $28,%esp
	movl %esi,24(%ecx)
	testl %edi,%edi
	jge .L141
	pushl $5489
	call _m3_fault
	.align 16
.L141:
	movl 24(%ebp),%ecx
	movl %edi,28(%ecx)
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L142
	pushl $5540
	call _m3_fault
	.align 16
.L142:
	movl $1,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L143
	.align 16
.L144:
	movl 24(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L145
	pushl $5556
	call _m3_fault
	.align 16
.L145:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L146
	pushl $5554
	call _m3_fault
	.align 16
.L146:
	leal -28(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L147
	pushl $5552
	call _m3_fault
	.align 16
.L147:
	pushl $1
	movl -28(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+52,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	movl -32(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%ecx
	pushl %ecx
	movl MI_RecordType+56,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 24(%ebp),%ecx
	addl $32,%esp
	movl 24(%ecx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	addl $4,%esp
	testl %edi,%edi
	jge .L148
	pushl $5633
	call _m3_fault
	.align 16
.L148:
	pushl %edi
	movl MI_CG+720,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl -28(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+56,%eax
	call *%eax
	incl %ebx
	addl $16,%esp
.L143:
	cmpl %esi,%ebx
	jle .L144
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 New__GenRecord,.Lfe13-New__GenRecord
	.align 16
	.type	 New__GenObject,@function
New__GenObject:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl $0,-60(%ebp)
	movl $0,-56(%ebp)
	movl $0,-52(%ebp)
	movl $0,-48(%ebp)
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl %eax,-20(%ebp)
	movl %eax,-16(%ebp)
	movl %eax,-12(%ebp)
	movl %eax,-8(%ebp)
	movl %eax,-4(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%esi
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $1,%eax
	movb MM_New+118(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_Procedure+92,%eax
	call *%eax
	pushl $0
	pushl $-1
	pushl %esi
	movl MI_Type+144,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	addl $32,%esp
	pushl %ebx
	movl MI_Procedure+96,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,24(%edi)
	movl -12(%ebp),%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L151
	pushl $6097
	call _m3_fault
	.align 16
.L151:
	movl %eax,28(%edi)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L152
	pushl $6148
	call _m3_fault
	.align 16
.L152:
	movl $1,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-68(%ebp)
	jmp .L153
	.align 16
.L154:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L155
	pushl $6164
	call _m3_fault
	.align 16
.L155:
	cmpl %ebx,4(%eax)
	ja .L156
	pushl $6162
	call _m3_fault
	.align 16
.L156:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%edx
	testl %edx,%edx
	je .L157
	leal -60(%ebp),%eax
	pushl %eax
	leal -64(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_KeywordExpr+52,%eax
	call *%eax
	addl $12,%esp
	testb %al,%al
	jne .L160
	pushl $6176
	call _m3_fault
	.align 16
.L160:
	pushl $1
	movl -60(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+52,%eax
	call *%eax
	leal -32(%ebp),%eax
	pushl %eax
	leal -36(%ebp),%eax
	pushl %eax
	movl -64(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_ObjectType+60,%eax
	call *%eax
	addl $28,%esp
	testb %al,%al
	jne .L161
	pushl $6208
	call _m3_fault
	.align 16
.L161:
	leal -56(%ebp),%eax
	pushl %eax
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_Field+56,%eax
	call *%eax
	movl 24(%edi),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	leal -28(%ebp),%eax
	pushl %eax
	movl -32(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+68,%eax
	call *%eax
	movl -28(%ebp),%eax
	addl $24,%esp
	testl %eax,%eax
	jl .L162
	addl %eax,-48(%ebp)
	jmp .L163
	.align 16
.L162:
	pushl $0
	movl MI_M3RT+192,%eax
	pushl %eax
	movl -32(%ebp),%eax
	pushl %eax
	movl MI_Type+144,%eax
	call *%eax
	pushl $8
	movl MI_CG+712,%eax
	call *%eax
	addl $16,%esp
.L163:
	movl -48(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl -24(%ebp),%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L164
	pushl $6385
	call _m3_fault
	.align 16
.L164:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl -60(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_AssignStmt+56,%eax
	call *%eax
	addl $12,%esp
.L157:
	incl %ebx
.L153:
	cmpl %ebx,-68(%ebp)
	jge .L154
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 New__GenObject,.Lfe14-New__GenObject
	.align 16
	.type	 New__GenOpaque,@function
New__GenOpaque:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl $0,-4(%ebp)
	pushl %eax
	movl MI_Revelation+176,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L167
	pushl $6544
	call _m3_fault
	.align 16
.L167:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_RefType+64,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L168
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+76,%eax
	call *%eax
	pushl %esi
	pushl %eax
	pushl %ebx
	call New__GenRef
	jmp .L166
	.align 16
.L168:
	pushl $6624
	call _m3_fault
	.align 16
.L166:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 New__GenOpaque,.Lfe15-New__GenOpaque
	.align 16
	.type	 New__Initialize,@function
New__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_New+80,%eax
	pushl %eax
	movl MM_New+76,%eax
	pushl %eax
	movl MM_New+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MM_New+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	pushl $2147483647
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_New+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_New+1068
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 New__Initialize,.Lfe16-New__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_New
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe17:
	.size	 _m3_fault,.Lfe17-_m3_fault
.globl MM_New
.data
	.align 4
	.type	 MM_New,@object
	.size	 MM_New,1580
MM_New:
	.long MM_New+1432
	.zero	16
	.long MM_New+1232
	.zero	4
	.long MM_New+1428
	.long MM_New+1428
	.zero	12
	.long New__TypeOf
	.long New__Check
	.long New__CheckRef
	.long New__CheckOpenArray
	.long New__CheckRecord
	.long New__CheckObject
	.long New__CheckOpaque
	.long New__Prep
	.long New__Compile
	.long New__Gen
	.long New__GenRef
	.long New__GenOpenArray
	.long New__GenRecord
	.long New__GenObject
	.long New__GenOpaque
	.long New__Initialize
.byte 10
.byte 7
.byte 11
.byte 8
.byte 10
.byte 7
.byte 9
.byte 7
	.long 2
	.long MM_New+132
	.long 43
	.ascii	"NEW: keyword bindings not allowed for type"
	.zero	2
	.long 2
	.long MM_New+188
	.long 40
	.ascii	"NEW must be applied to a reference type"
	.zero	1
	.long 2
	.long MM_New+240
	.long 55
	.ascii	"cannot NEW a variable of type REFANY, ADDRESS, or NULL"
	.zero	2
	.long 2
	.long MM_New+308
	.long 41
	.ascii	"cannot allocate variables of empty types"
	.zero	4
	.long 2
	.long MM_New+364
	.long 26
	.ascii	"too many arguments to NEW"
	.zero	3
	.long 2
	.long MM_New+404
	.long 72
	.ascii	"NEW: not a procedure; keyword bindings not allowed for array"
	.ascii	" dimensions"
	.zero	1
	.long 2
	.long MM_New+488
	.long 28
	.ascii	"argument must be an integer"
	.zero	1
	.long 2
	.long MM_New+528
	.long 30
	.ascii	"too many dimensions specified"
	.zero	3
	.long 2
	.long MM_New+572
	.long 32
	.ascii	"not enough dimensions specified"
	.zero	1
	.long 2
	.long MM_New+616
	.long 38
	.ascii	"extra arguments must include keywords"
	.zero	3
	.long 2
	.long MM_New+668
	.long 21
	.ascii	"unknown record field"
	.zero	4
	.long 2
	.long MM_New+704
	.long 17
	.ascii	"undefined field?"
	.zero	4
	.long 2
	.long MM_New+736
	.long 33
	.ascii	"value is not assignable to field"
	.zero	4
	.long 2
	.long MM_New+784
	.long 31
	.ascii	"unknown object field or method"
	.zero	2
	.long 2
	.long MM_New+828
	.long 40
	.ascii	"procedure is not compatible with method"
	.zero	1
	.long 2
	.long MM_New+880
	.long 11
	.ascii	"undefined?"
	.zero	2
	.long 2
	.long MM_New+904
	.long 45
	.ascii	"cannot apply NEW to non-object, opaque types"
	.zero	4
	.long 2
	.long MM_New+964
	.long 30
	.ascii	"cannot apply NEW to this type"
	.zero	3
	.long 2
	.long MM_New+1008
	.long 54
	.ascii	"NEW must be applied to a variable of a reference type"
	.zero	3
	.long 2
	.long MM_New+1076
	.long 4
	.ascii	"NEW"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"GenOpaque"
	.zero	1
	.ascii	"GenObject"
	.zero	1
	.ascii	"GenRecord"
	.zero	1
	.ascii	"GenOpenArray"
	.zero	1
	.ascii	"GenRef"
	.zero	1
	.ascii	"Gen"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"CheckOpaque"
	.zero	1
	.ascii	"CheckObject"
	.zero	1
	.ascii	"CheckRecord"
	.zero	1
	.ascii	"CheckOpenArray"
	.zero	1
	.ascii	"CheckRef"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	2
	.long New__Initialize
	.long MM_New+1080
	.long MI_New+44
	.long New__GenOpaque
	.long MM_New+1091
	.zero	4
	.long New__GenObject
	.long MM_New+1101
	.zero	4
	.long New__GenRecord
	.long MM_New+1111
	.zero	4
	.long New__GenOpenArray
	.long MM_New+1121
	.zero	4
	.long New__GenRef
	.long MM_New+1134
	.zero	4
	.long New__Gen
	.long MM_New+1141
	.zero	4
	.long New__Compile
	.long MM_New+1145
	.zero	4
	.long New__Prep
	.long MM_New+1153
	.zero	4
	.long New__CheckOpaque
	.long MM_New+1158
	.zero	4
	.long New__CheckObject
	.long MM_New+1170
	.zero	4
	.long New__CheckRecord
	.long MM_New+1182
	.zero	4
	.long New__CheckOpenArray
	.long MM_New+1194
	.zero	4
	.long New__CheckRef
	.long MM_New+1209
	.zero	4
	.long New__Check
	.long MM_New+1218
	.zero	4
	.long New__TypeOf
	.long MM_New+1224
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/New.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
