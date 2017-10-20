	.file	"RTHeapDebug.mc"
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
	.type	 RTHeapDebug__Free,@function
RTHeapDebug__Free:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MM_RTHeapDebug+312,%ecx
	testl %ecx,%ecx
	jne .L3
	pushl $804
	call _m3_fault
	.align 16
.L3:
	movl %ecx,%ebx
	movl MM_RTHeapDebug+308,%eax
	movl %eax,-12(%ebp)
	movl MM_RTHeapDebug+304,%edx
	movl %edx,-16(%ebp)
	movl -12(%ebp),%eax
	cltd
	idivl -16(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L5
	movl -12(%ebp),%eax
	xorl -16(%ebp),%eax
	jns .L5
	addl -16(%ebp),%ecx
.L5:
	cmpl %ecx,4(%ebx)
	ja .L4
	pushl $802
	call _m3_fault
	.align 16
.L4:
	movl MM_RTHeapDebug+308,%eax
	movl %eax,-12(%ebp)
	movl MM_RTHeapDebug+304,%edx
	movl %edx,-16(%ebp)
	movl -12(%ebp),%eax
	cltd
	idivl -16(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L6
	movl -12(%ebp),%eax
	xorl -16(%ebp),%eax
	jns .L6
	addl -16(%ebp),%ecx
.L6:
	movl (%ebx),%eax
	leal (%eax,%ecx,8),%eax
	pushl %eax
	pushl $0
	pushl %esi
	movl MI_WeakRef+44,%eax
	call *%eax
	incl MM_RTHeapDebug+308
.L7:
	movl -8(%ebp),%eax
	leal -28(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHeapDebug__Free,.Lfe1-RTHeapDebug__Free
	.align 16
	.type	 RTHeapDebug__PushRefAtAddress,@function
RTHeapDebug__PushRefAtAddress:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L9
	pushl $900
	call _m3_fault
	.align 16
.L9:
	movl (%edx),%esi
	movl %esi,-4(%ebp)
	testl %esi,%esi
	je .L8
	cmpl $0,1040(%edi)
	jle .L8
	movl 1044(%edi),%eax
	cmpl %esi,%eax
	jg .L8
	cmpl %esi,1048(%edi)
	jle .L8
	cmpl $0,1052(%edi)
	jne .L14
	movl %edx,1052(%edi)
	pushl %edx
	pushl %edi
	call RTHeapDebug__PushRefAtAddress
	jmp .L46
	.align 16
.L16:
	movl %edi,%ecx
	decl %eax
	movl %eax,1056(%ecx)
	movl 1060(%ecx),%eax
	testl %eax,%eax
	jne .L17
	pushl $1092
	call _m3_fault
	.align 16
.L17:
	movl %eax,%ecx
	movl 1056(%edi),%edx
	cmpl %edx,4(%ecx)
	ja .L18
	pushl $1090
	call _m3_fault
	.align 16
.L18:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,-4(%ebp)
	testb $1,%al
	jne .L15
	movl 1060(%edi),%eax
	testl %eax,%eax
	jne .L20
	pushl $1140
	call _m3_fault
	.align 16
.L20:
	movl %eax,%ecx
	cmpl %edx,4(%ecx)
	ja .L21
	pushl $1138
	call _m3_fault
	.align 16
.L21:
	movl (%ecx),%eax
	movl -4(%ebp),%esi
	orl $1,%esi
	movl %edi,%ecx
	movl %esi,(%eax,%edx,4)
	incl 1056(%ecx)
	movl -4(%ebp),%eax
	addl $-4,%eax
	pushl %ecx
	pushl %eax
	movl MI_RTHeapMap+252,%eax
	call *%eax
.L46:
	addl $8,%esp
.L15:
	movl 1056(%edi),%eax
	testl %eax,%eax
	jg .L16
	movl $0,1052(%edi)
	jmp .L8
	.align 16
.L14:
	movl -4(%ebp),%esi
	subl %eax,%esi
	movl %esi,%eax
	movl %eax,%edx
	shrl $3,%edx
	shrl $8,%eax
	movl %eax,-12(%ebp)
	movl %edx,%ecx
	andl $31,%ecx
	cmpl $31,%ecx
	jbe .L24
	pushl $1313
	call _m3_fault
	.align 16
.L24:
	cmpl $31,%ecx
	jg .L25
	movl $1,%eax
	movl %eax,%edx
	sall %cl,%edx
	jmp .L26
	.align 16
.L25:
	xorl %edx,%edx
.L26:
	movl 1036(%edi),%eax
	testl %eax,%eax
	jne .L27
	pushl $1332
	call _m3_fault
	.align 16
.L27:
	movl %eax,%ecx
	movl -12(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L28
	pushl $1330
	call _m3_fault
	.align 16
.L28:
	movl (%ecx),%eax
	movl -12(%ebp),%esi
	movl %edx,%ebx
	movl (%eax,%esi,4),%ecx
	andl %ecx,%ebx
	jne .L8
	orl %edx,%ecx
	movl %ecx,(%eax,%esi,4)
	movl 1040(%edi),%esi
	decl %esi
	movl %esi,-8(%ebp)
	jmp .L32
	.align 16
.L33:
	movl 1032(%edi),%eax
	testl %eax,%eax
	jne .L34
	pushl $1460
	call _m3_fault
	.align 16
.L34:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L35
	pushl $1458
	call _m3_fault
	.align 16
.L35:
	movl (%ecx),%eax
	movl -4(%ebp),%esi
	cmpl %esi,(%eax,%ebx,4)
	jne .L36
	pushl %esi
	pushl %edi
	call RTHeapDebug__Dump
	movl %edi,%ecx
	addl $8,%esp
	decl 1040(%ecx)
	movl 1032(%ecx),%eax
	testl %eax,%eax
	jne .L37
	pushl $1508
	call _m3_fault
	.align 16
.L37:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L38
	pushl $1506
	call _m3_fault
	.align 16
.L38:
	movl 1032(%edi),%edx
	testl %edx,%edx
	jne .L39
	pushl $1508
	call _m3_fault
	.align 16
.L39:
	movl 1040(%edi),%esi
	movl %esi,-12(%ebp)
	cmpl %esi,4(%edx)
	ja .L40
	pushl $1506
	call _m3_fault
	.align 16
.L40:
	movl (%edx),%edx
	movl -12(%ebp),%esi
	movl (%ecx),%eax
	movl (%edx,%esi,4),%edx
	movl %edx,(%eax,%ebx,4)
.L36:
	incl %ebx
.L32:
	cmpl %ebx,-8(%ebp)
	jge .L33
	movl 1060(%edi),%eax
	testl %eax,%eax
	jne .L42
	pushl $1588
	call _m3_fault
	.align 16
.L42:
	movl 4(%eax),%eax
	cmpl %eax,1056(%edi)
	jl .L43
	pushl %edi
	call RTHeapDebug__ExpandStack
	addl $4,%esp
.L43:
	movl 1060(%edi),%eax
	testl %eax,%eax
	jne .L44
	pushl $1604
	call _m3_fault
	.align 16
.L44:
	movl %eax,%ecx
	movl 1056(%edi),%edx
	cmpl %edx,4(%ecx)
	ja .L45
	pushl $1602
	call _m3_fault
	.align 16
.L45:
	movl (%ecx),%eax
	movl -4(%ebp),%esi
	movl %esi,(%eax,%edx,4)
	incl 1056(%edi)
.L8:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeapDebug__PushRefAtAddress,.Lfe2-RTHeapDebug__PushRefAtAddress
	.align 16
	.type	 RTHeapDebug__Dump,@function
RTHeapDebug__Dump:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 1052(%edi),%eax
	pushl %eax
	pushl $MM_RTHeapDebug+384
	pushl $MM_RTHeapDebug+348
	call RTHeapDebug__Out
	movl 1060(%edi),%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L48
	pushl $1764
	call _m3_fault
	.align 16
.L48:
	movl 1056(%edi),%edx
	decl %edx
	movl 4(%eax),%eax
	decl %eax
	cmpl %edx,%eax
	jle .L49
	movl %edx,%eax
.L49:
	xorl %esi,%esi
	movl %eax,-4(%ebp)
	jmp .L50
	.align 16
.L51:
	movl 1060(%edi),%eax
	testl %eax,%eax
	jne .L52
	pushl $1780
	call _m3_fault
	.align 16
.L52:
	cmpl %esi,4(%eax)
	ja .L53
	pushl $1778
	call _m3_fault
	.align 16
.L53:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	testb $1,%bl
	je .L54
	movl %ebx,%eax
	andb $254,%al
	movl %eax,%ebx
	testl %eax,%eax
	je .L55
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
.L55:
	cmpl $1048575,%eax
	jbe .L56
	pushl $1841
	call _m3_fault
	.align 16
.L56:
	pushl %eax
	movl MI_RTTypeSRC+48,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	pushl $MM_RTHeapDebug+412
	call RTHeapDebug__Out
	addl $16,%esp
.L54:
	incl %esi
.L50:
	cmpl %esi,-4(%ebp)
	jge .L51
	movl 12(%ebp),%eax
	testl %eax,%eax
	je .L58
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
.L58:
	cmpl $1048575,%eax
	jbe .L59
	pushl $1905
	call _m3_fault
	.align 16
.L59:
	pushl %eax
	movl MI_RTTypeSRC+48,%eax
	call *%eax
	movl 12(%ebp),%ecx
	pushl %ecx
	pushl %eax
	pushl $MM_RTHeapDebug+444
	call RTHeapDebug__Out
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeapDebug__Dump,.Lfe3-RTHeapDebug__Dump
	.align 16
	.type	 RTHeapDebug__Out,@function
RTHeapDebug__Out:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %eax,%eax
	je .L61
	pushl %eax
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L61:
	testl %ebx,%ebx
	je .L62
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L62:
	pushl $MM_RTHeapDebug+480
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTHeapDebug+508
	movl MI_RTIO+56,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeapDebug__Out,.Lfe4-RTHeapDebug__Out
	.align 16
	.type	 RTHeapDebug__ExpandStack,@function
RTHeapDebug__ExpandStack:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 1060(%edi),%eax
	testl %eax,%eax
	jne .L64
	pushl $2116
	call _m3_fault
	.align 16
.L64:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%ecx
	addl %ebx,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_RTHeapDebug+524,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L65
	pushl $2148
	call _m3_fault
	.align 16
.L65:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L66
	pushl $2145
	call _m3_fault
	.align 16
.L66:
	movl (%esi),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl 1060(%edi),%edx
	testl %edx,%edx
	jne .L67
	pushl $2148
	call _m3_fault
	.align 16
.L67:
	cmpl %ebx,4(%edx)
	je .L68
	pushl $2147
	call _m3_fault
	.align 16
.L68:
	leal 0(,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	leal -36(%ebp),%esp
	movl %esi,1060(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTHeapDebug__ExpandStack,.Lfe5-RTHeapDebug__ExpandStack
	.align 16
	.type	 RTHeapDebug__CheckHeap,@function
RTHeapDebug__CheckHeap:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_RTHeapDebug+532,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-32(%ebp)
	movl MI_RTHeapRep+44,%eax
	movl MI_RTHeapRep+48,%edx
	subl %eax,%edx
	movl %edx,-28(%ebp)
	movl MM_RTHeapDebug+312,%ecx
	movl %ecx,-24(%ebp)
	leal -12(%ebp),%esi
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_RTHeapDebug+304,%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_RTHeapDebug+540,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl $0,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_RTHeapDebug+304,%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_RTHeapDebug+524,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl -32(%ebp),%edx
	movl %eax,1032(%edx)
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl -28(%ebp),%ecx
	sall $5,%ecx
	movl %ecx,-4(%ebp)
	pushl %esi
	movl MM_RTHeapDebug+524,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl -32(%ebp),%edx
	movl %eax,%edi
	movl %edi,1036(%edx)
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $4096,-4(%ebp)
	pushl %esi
	movl MM_RTHeapDebug+524,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl -32(%ebp),%ecx
	movl %eax,1060(%ecx)
	movl MI_RTCollector+44,%eax
	addl $36,%esp
	call *%eax
	movl MI_RTHeapRep+44,%eax
	movl -32(%ebp),%edx
	sall $13,%eax
	movl %eax,1044(%edx)
	movl -28(%ebp),%ecx
	sall $13,%ecx
	addl %ecx,%eax
	movl %eax,1048(%edx)
	movl MM_RTHeapDebug+308,%ebx
	movl MM_RTHeapDebug+304,%eax
	cmpl %ebx,%eax
	jle .L70
	movl %ebx,%eax
.L70:
	movl -16(%ebp),%ebx
	decl %eax
	movl %eax,-40(%ebp)
	jmp .L71
	.align 16
.L72:
	cmpl $0,-24(%ebp)
	jne .L73
	pushl $2532
	call _m3_fault
	.align 16
.L73:
	movl -24(%ebp),%edi
	cmpl %ebx,4(%edi)
	ja .L74
	pushl $2530
	call _m3_fault
	.align 16
.L74:
	movl (%edi),%eax
	movl 4(%eax,%ebx,8),%edx
	movl (%eax,%ebx,8),%ecx
	pushl %edx
	pushl %ecx
	movl MI_WeakRef+48,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	je .L75
	cmpl $0,-20(%ebp)
	jne .L76
	pushl $2564
	call _m3_fault
	.align 16
.L76:
	movl -20(%ebp),%ecx
	movl -16(%ebp),%edx
	cmpl %edx,4(%ecx)
	ja .L78
	pushl $2562
	call _m3_fault
	.align 16
.L78:
	cmpl %ebx,4(%edi)
	ja .L79
	pushl $2562
	call _m3_fault
	.align 16
.L79:
	movl -20(%ebp),%edx
	movl -16(%ebp),%ecx
	movl (%edx),%edx
	movl %edx,-44(%ebp)
	movl (%edi),%edi
	movl %edi,-48(%ebp)
	movl (%edi,%ebx,8),%eax
	movl %eax,(%edx,%ecx,8)
	movl -48(%ebp),%edx
	movl 4(%edx,%ebx,8),%eax
	movl -44(%ebp),%edx
	movl %eax,4(%edx,%ecx,8)
	movl -32(%ebp),%ecx
	movl 1032(%ecx),%eax
	testl %eax,%eax
	jne .L80
	pushl $2580
	call _m3_fault
	.align 16
.L80:
	movl %eax,%edi
	movl -16(%ebp),%edx
	cmpl %edx,4(%edi)
	ja .L81
	pushl $2578
	call _m3_fault
	.align 16
.L81:
	movl (%edi),%eax
	movl -16(%ebp),%ecx
	movl %esi,(%eax,%ecx,4)
	incl %ecx
	movl %ecx,-16(%ebp)
.L75:
	incl %ebx
.L71:
	cmpl %ebx,-40(%ebp)
	jge .L72
	movl -20(%ebp),%edx
	movl %edx,MM_RTHeapDebug+312
	movl -16(%ebp),%ecx
	movl %ecx,MM_RTHeapDebug+308
	testl %ecx,%ecx
	jle .L83
	movl -32(%ebp),%edx
	movl %ecx,1040(%edx)
	pushl %edx
	movl MI_RTHeapMap+256,%eax
	call *%eax
	addl $4,%esp
.L83:
	movl MI_RTCollector+48,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	movl -32(%ebp),%ecx
	leal -60(%ebp),%esp
	movl $0,1032(%ecx)
	movl $0,1036(%ecx)
	movl $0,1060(%ecx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHeapDebug__CheckHeap,.Lfe6-RTHeapDebug__CheckHeap
	.align 16
	.type	 RTHeapDebug__GetMaxFree,@function
RTHeapDebug__GetMaxFree:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $MM_RTHeapDebug+552
	movl MI_RTParams+56,%eax
	call *%eax
	movl %eax,%edi
	xorl %esi,%esi
	addl $4,%esp
	testl %edi,%edi
	je .L92
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L92
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %esi,%ebx
	decl %eax
	movl %eax,-4(%ebp)
	addl $4,%esp
	jmp .L87
	.align 16
.L88:
	pushl %ebx
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	leal -48(%eax),%edx
	addl $8,%esp
	testl %edx,%edx
	jl .L92
	cmpl $9,%edx
	jg .L92
	leal (%esi,%esi,4),%eax
	leal (%edx,%eax,2),%esi
	incl %ebx
.L87:
	cmpl %ebx,-4(%ebp)
	jge .L88
	testl %esi,%esi
	jle .L92
	movl %esi,%eax
	jmp .L94
	.align 16
.L92:
	movl $25,%eax
.L94:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTHeapDebug__GetMaxFree,.Lfe7-RTHeapDebug__GetMaxFree
	.align 16
	.type	 _INITM_RTHeapDebug,@function
_INITM_RTHeapDebug:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl $0,MM_RTHeapDebug+304
	movl $0,MM_RTHeapDebug+312
	call RTHeapDebug__GetMaxFree
	movl %eax,%edx
	movl %edx,MM_RTHeapDebug+304
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_RTHeapDebug+540,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_RTHeapDebug+312
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 _INITM_RTHeapDebug,.Lfe8-_INITM_RTHeapDebug
	.align 16
	.type	 M_RTHeapDebug_t81ccbc31_LINK,@function
M_RTHeapDebug_t81ccbc31_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTHeapDebug+532,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTHeapDebug+316,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe9:
	.size	 M_RTHeapDebug_t81ccbc31_LINK,.Lfe9-M_RTHeapDebug_t81ccbc31_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeapDebug
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_RTHeapDebug
.data
	.align 4
	.type	 MM_RTHeapDebug,@object
	.size	 MM_RTHeapDebug,1016
MM_RTHeapDebug:
	.long MM_RTHeapDebug+769
	.long MM_RTHeapDebug+96
	.long MM_RTHeapDebug+524
	.zero	8
	.long MM_RTHeapDebug+664
	.zero	4
	.long MM_RTHeapDebug+764
	.long MM_RTHeapDebug+764
	.zero	4
	.long _INITM_RTHeapDebug
	.long 2
	.long -1
	.long -1
	.long -1
	.long 3
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long 4
	.zero	8
	.long 933761312
.byte 116
.byte 133
.byte 71
.byte 53
.byte 84
.byte 148
.byte 239
.byte 2
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 8
	.zero	4
	.long MM_RTHeapDebug+975
	.zero	4
	.long MM_RTHeapDebug+983
	.zero	28
	.long MM_RTHeapDebug+996
	.long MM_RTHeapDebug+200
	.zero	8
	.long -2117288911
.byte 206
.byte 116
.byte 21
.byte 143
.byte 255
.byte 200
.byte 217
.byte 14
	.long 1
	.zero	4
	.long 32
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTHeapDebug+925
	.long MM_RTHeapDebug+934
	.long MM_RTHeapDebug+940
	.zero	4
	.long M_RTHeapDebug_t81ccbc31_LINK
	.long -1093060005
	.zero	16
	.long MM_RTHeapDebug+955
	.zero	16
	.long RTHeapDebug__PushRefAtAddress
	.long RTHeapDebug__Dump
	.long RTHeapDebug__Out
	.long RTHeapDebug__ExpandStack
	.long RTHeapDebug__GetMaxFree
	.long RTHeapDebug__Free
	.long RTHeapDebug__CheckHeap
	.long 2
	.long MM_RTHeapDebug+356
	.long 24
	.ascii	"Path to 'free' object:\n"
	.zero	1
	.long 2
	.long MM_RTHeapDebug+392
	.long 15
	.ascii	"   Ref in root"
	.zero	2
	.long 2
	.long MM_RTHeapDebug+420
	.long 19
	.ascii	"   Object of type "
	.zero	2
	.long 2
	.long MM_RTHeapDebug+452
	.long 24
	.ascii	"   Free object of type "
	.zero	1
	.long 2
	.long MM_RTHeapDebug+488
	.long 13
	.ascii	" at address "
	.zero	4
	.long 2
	.long MM_RTHeapDebug+516
	.long 5
	.ascii	"...\n"
	.zero	4
	.long MM_RTHeapDebug+532
	.long 562018850
	.long MM_RTHeapDebug+540
	.long -2117288911
	.zero	4
	.long 933761312
	.long 2
	.long MM_RTHeapDebug+560
	.long 17
	.ascii	"heapDebugMaxFree"
	.zero	4
	.ascii	"_INITM_RTHeapDebug"
	.zero	1
	.ascii	"GetMaxFree"
	.zero	1
	.ascii	"CheckHeap"
	.zero	1
	.ascii	"ExpandStack"
	.zero	1
	.ascii	"Out"
	.zero	1
	.ascii	"Dump"
	.zero	1
	.ascii	"PushRefAtAddress"
	.zero	1
	.ascii	"Free"
	.zero	2
	.long _INITM_RTHeapDebug
	.long MM_RTHeapDebug+580
	.zero	4
	.long RTHeapDebug__GetMaxFree
	.long MM_RTHeapDebug+599
	.zero	4
	.long RTHeapDebug__CheckHeap
	.long MM_RTHeapDebug+610
	.long MI_RTHeapDebug+48
	.long RTHeapDebug__ExpandStack
	.long MM_RTHeapDebug+620
	.zero	4
	.long RTHeapDebug__Out
	.long MM_RTHeapDebug+632
	.zero	4
	.long RTHeapDebug__Dump
	.long MM_RTHeapDebug+636
	.zero	4
	.long RTHeapDebug__PushRefAtAddress
	.long MM_RTHeapDebug+641
	.zero	4
	.long RTHeapDebug__Free
	.long MM_RTHeapDebug+658
	.long MI_RTHeapDebug+44
	.zero	4
.byte 43
.byte 56
.byte 1
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHeapDebug.m3"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 14
.byte 14
.byte 14
.byte 14
.byte 4
.byte 0
.byte 4
.byte 4
.byte 42
.byte 20
.byte 4
.byte 0
.byte 9
.byte 10
.byte 8
.byte 16
.byte 34
.byte 186
.byte 127
.byte 33
.byte 23
.byte 7
.byte 25
.byte 25
.byte 25
.byte 25
.byte 23
	.ascii	"RTHeapDebug.Visitor"
	.zero	1
.byte 24
.byte 1
.byte 1
.byte 16
.byte 26
.byte 8
.byte 0
.byte 0
.byte 5
.byte 11
.byte 1
.byte 15
.byte 1
.byte 1
.byte 8
.byte 12
.byte 8
.byte 19
.byte 0
.byte 65
.byte 255
	.ascii	"RTHeapDebug.WRList"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
