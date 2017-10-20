	.file	"RTutils.mc"
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
	.type	 RTutils__NewVisitor,@function
RTutils__NewVisitor:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl MM_RTutils+428,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	leal -12(%ebp),%ebx
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl MI_RTType+44,%eax
	movl $1,-8(%ebp)
	call *%eax
	incl %eax
	movl %eax,-4(%ebp)
	pushl %ebx
	movl MM_RTutils+436,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%esi)
	leal -20(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTutils__NewVisitor,.Lfe1-RTutils__NewVisitor
	.align 16
	.type	 RTutils__Heap,@function
RTutils__Heap:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 20(%ebp),%ebx
	call RTutils__Compute
	pushl %ebx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	movl MM_RTutils+356,%eax
	pushl %eax
	call RTutils__Report
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTutils__Heap,.Lfe2-RTutils__Heap
	.align 16
	.type	 RTutils__NewHeap,@function
RTutils__NewHeap:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 20(%ebp),%esi
	movl MM_RTutils+356,%ebx
	call RTutils__Compute
	pushl %ebx
	movl MM_RTutils+356,%eax
	pushl %eax
	call RTutils__Delta
	movl %eax,%edx
	pushl %esi
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	pushl %edx
	call RTutils__Report
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTutils__NewHeap,.Lfe3-RTutils__NewHeap
	.align 16
	.type	 RTutils__Compute,@function
RTutils__Compute:
	pushl %ebp
	movl %esp,%ebp
	call RTutils__NewVisitor
	movl %eax,MM_RTutils+356
	pushl %eax
	movl MI_RTHeapRep+664,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTutils__Compute,.Lfe4-RTutils__Compute
	.align 16
	.type	 RTutils__Delta,@function
RTutils__Delta:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	call RTutils__NewVisitor
	movl %eax,-28(%ebp)
	movl 12(%ebp),%esi
	movl 8(%ebp),%edi
	movl 8(%esi),%eax
	movl 8(%edi),%esi
	movl -28(%ebp),%edi
	subl %eax,%esi
	movl %esi,8(%edi)
	movl 12(%ebp),%edi
	movl 8(%ebp),%esi
	movl 12(%edi),%eax
	movl 12(%esi),%edi
	movl -28(%ebp),%esi
	subl %eax,%edi
	movl %edi,12(%esi)
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L6
	pushl $1204
	call _m3_fault
	.align 16
.L6:
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-16(%ebp)
	jmp .L7
	.align 16
.L8:
	movl -28(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L9
	pushl $1220
	call _m3_fault
	.align 16
.L9:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L10
	pushl $1218
	call _m3_fault
	.align 16
.L10:
	leal (%ebx,%ebx,2),%eax
	leal 0(,%eax,4),%ecx
	movl (%edx),%edx
	movl %edx,-20(%ebp)
	movl %edx,%edi
	addl %ecx,%edi
	movl 8(%ebp),%esi
	movl %edi,-4(%ebp)
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L11
	pushl $1220
	call _m3_fault
	.align 16
.L11:
	cmpl %ebx,4(%eax)
	ja .L12
	pushl $1218
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	movl %eax,-24(%ebp)
	movl %eax,%edi
	addl %ecx,%edi
	movl 12(%ebp),%esi
	movl %edi,-8(%ebp)
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L13
	pushl $1220
	call _m3_fault
	.align 16
.L13:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L14
	pushl $1218
	call _m3_fault
	.align 16
.L14:
	movl (%edx),%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -24(%ebp),%edi
	incl %ebx
	movl (%eax),%eax
	movl (%ecx,%edi),%esi
	movl -20(%ebp),%edi
	subl %eax,%esi
	movl %esi,(%ecx,%edi)
	movl -4(%ebp),%ecx
	movl -12(%ebp),%eax
	movl -8(%ebp),%edx
	movl 4(%eax),%eax
	movl 4(%edx),%edx
	subl %eax,%edx
	movl %edx,4(%ecx)
.L7:
	cmpl %ebx,-16(%ebp)
	jge .L8
	leal -40(%ebp),%esp
	movl -28(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTutils__Delta,.Lfe5-RTutils__Delta
	.align 16
	.type	 RTutils__Report,@function
RTutils__Report:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L17:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-32(%ebp)
	leal -20(%ebp),%edx
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl 8(%ebp),%ecx
	movl $1,-16(%ebp)
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L18
	pushl $1460
	call _m3_fault
	.align 16
.L18:
	movl 4(%eax),%eax
	movl %eax,-12(%ebp)
	pushl %edx
	movl MM_RTutils+444,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L19
	pushl $1540
	call _m3_fault
	.align 16
.L19:
	movl -32(%ebp),%edx
	movl 4(%esi),%ebx
	decl %ebx
	jmp .L20
	.align 16
.L21:
	testl %esi,%esi
	jne .L22
	pushl $1540
	call _m3_fault
	.align 16
.L22:
	cmpl %edx,4(%esi)
	ja .L23
	pushl $1538
	call _m3_fault
	.align 16
.L23:
	movl (%esi),%eax
	movl %edx,(%eax,%edx,4)
	incl %edx
.L20:
	cmpl %ebx,%edx
	jle .L21
	xorl %eax,%eax
	movb 16(%ebp),%al
	testl %eax,%eax
	jle .L28
	cmpl $1,%eax
	jle .L26
	cmpl $2,%eax
	jle .L27
	jmp .L28
	.align 16
.L26:
	movl MM_RTutils+400,%eax
	jmp .L74
	.align 16
.L27:
	movl MM_RTutils+404,%eax
.L74:
	pushl %eax
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	pushl %esi
	call RTutils__Sort
	addl $12,%esp
.L28:
	pushl $MM_RTutils+456
	movl MI_RTIO+56,%eax
	call *%eax
	movl 8(%ebp),%ecx
	addl $4,%esp
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L30
	pushl $1700
	call _m3_fault
	.align 16
.L30:
	xorl %edi,%edi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-36(%ebp)
	jmp .L31
	.align 16
.L32:
	movl 24(%ebp),%ecx
	cmpl %ecx,-32(%ebp)
	jge .L34
	testl %esi,%esi
	jne .L35
	pushl $1732
	call _m3_fault
	.align 16
.L35:
	cmpl %edi,4(%esi)
	ja .L36
	pushl $1730
	call _m3_fault
	.align 16
.L36:
	movl (%esi),%eax
	movl 8(%ebp),%ecx
	leal (%eax,%edi,4),%ebx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L37
	pushl $1732
	call _m3_fault
	.align 16
.L37:
	movl (%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L38
	pushl $1730
	call _m3_fault
	.align 16
.L38:
	leal (%edx,%edx,2),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-24(%ebp)
	cmpl $0,(%eax)
	jg .L39
	cmpb $0,12(%ebp)
	jne .L40
.L39:
	pushl $4
	movl (%ebx),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -24(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -24(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl -24(%ebp),%eax
	addl $24,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L41
	pushl $MM_RTutils+572
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	jmp .L42
	.align 16
.L41:
	pushl $10
	movl 4(%eax),%eax
	pushl %eax
	pushl %edx
	call m3_div
	addl $8,%esp
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $8,%esp
.L42:
	pushl $32
	movl MI_RTIO+44,%eax
	call *%eax
	movl (%ebx),%eax
	addl $4,%esp
	cmpl $1048575,%eax
	jbe .L43
	pushl $1889
	call _m3_fault
	.align 16
.L43:
	pushl %eax
	movl MI_RTTypeSRC+48,%eax
	call *%eax
	pushl %eax
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	incl -32(%ebp)
	movl -24(%ebp),%edx
	addl $12,%esp
	cmpl $0,8(%edx)
	je .L40
	movl 24(%ebp),%ecx
	pushl %ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %edx
	movl (%ebx),%eax
	pushl %eax
	call RTutils__PrintSites
	addl $16,%esp
.L40:
	incl %edi
.L31:
	cmpl %edi,-36(%ebp)
	jge .L32
.L34:
	pushl $MM_RTutils+596
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl 8(%ebp),%ecx
	movl 8(%ecx),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	addl $28,%esp
	cmpb $0,20(%ebp)
	je .L45
	movl MM_RTutils+640,%eax
	cmpl $1048575,%eax
	jle .L46
	pushl $2161
	call _m3_fault
	.align 16
.L46:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,-28(%ebp)
	leal -20(%ebp),%edx
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl 8(%ebp),%ecx
	addl $4,%esp
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L47
	pushl $2180
	call _m3_fault
	.align 16
.L47:
	movl 4(%eax),%eax
	movl %eax,-12(%ebp)
	pushl %edx
	movl MM_RTutils+436,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%ebx
	movl 4(%ecx),%eax
	pushl %eax
	pushl %ebx
	call RTutils__SumTrees
	addl $16,%esp
	testl %esi,%esi
	jne .L48
	pushl $2212
	call _m3_fault
	.align 16
.L48:
	xorl %edx,%edx
	movl 4(%esi),%edi
	decl %edi
	jmp .L49
	.align 16
.L50:
	testl %esi,%esi
	jne .L51
	pushl $2212
	call _m3_fault
	.align 16
.L51:
	cmpl %edx,4(%esi)
	ja .L52
	pushl $2210
	call _m3_fault
	.align 16
.L52:
	movl (%esi),%eax
	movl %edx,(%eax,%edx,4)
	incl %edx
.L49:
	cmpl %edi,%edx
	jle .L50
	xorl %eax,%eax
	movb 16(%ebp),%al
	testl %eax,%eax
	jle .L57
	cmpl $1,%eax
	jle .L55
	cmpl $2,%eax
	jle .L56
	jmp .L57
	.align 16
.L55:
	movl MM_RTutils+400,%eax
	jmp .L75
	.align 16
.L56:
	movl MM_RTutils+404,%eax
.L75:
	pushl %eax
	pushl %ebx
	pushl %esi
	call RTutils__Sort
	addl $12,%esp
.L57:
	pushl $MM_RTutils+648
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTutils+456
	movl MI_RTIO+56,%eax
	call *%eax
	movl $0,-32(%ebp)
	addl $8,%esp
	testl %ebx,%ebx
	jne .L59
	pushl $2404
	call _m3_fault
	.align 16
.L59:
	movl -32(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl 4(%ebx),%ecx
	decl %ecx
	movl %ecx,-44(%ebp)
	jmp .L60
	.align 16
.L61:
	movl 24(%ebp),%ecx
	cmpl %ecx,-32(%ebp)
	jge .L63
	testl %esi,%esi
	jne .L64
	pushl $2436
	call _m3_fault
	.align 16
.L64:
	movl -40(%ebp),%ecx
	cmpl %ecx,4(%esi)
	ja .L65
	pushl $2434
	call _m3_fault
	.align 16
.L65:
	movl (%esi),%eax
	movl -40(%ebp),%ecx
	leal (%eax,%ecx,4),%edi
	testl %ebx,%ebx
	jne .L66
	pushl $2436
	call _m3_fault
	.align 16
.L66:
	movl (%edi),%eax
	cmpl %eax,4(%ebx)
	ja .L67
	pushl $2434
	call _m3_fault
	.align 16
.L67:
	leal (%eax,%eax,2),%eax
	movl (%ebx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-24(%ebp)
	cmpl $0,(%eax)
	jg .L68
	cmpb $0,12(%ebp)
	jne .L69
.L68:
	movl (%edi),%eax
	cmpl $1048575,%eax
	jbe .L70
	pushl $2465
	call _m3_fault
	.align 16
.L70:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L71
	pushl $2484
	call _m3_fault
	.align 16
.L71:
	movl -28(%ebp),%ecx
	cmpl %ecx,80(%eax)
	jne .L72
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl (%edi),%eax
	pushl %eax
	pushl $0
	pushl %ebx
	call RTutils__PrintTree
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	addl $20,%esp
.L72:
	incl -32(%ebp)
.L69:
	incl -40(%ebp)
.L60:
	movl -44(%ebp),%ecx
	cmpl %ecx,-40(%ebp)
	jle .L61
.L63:
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	addl $4,%esp
.L45:
	movl MI_RTIO+72,%eax
	call *%eax
.L73:
	movl -8(%ebp),%eax
	leal -56(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTutils__Report,.Lfe6-RTutils__Report
	.align 16
	.type	 RTutils__PrintSites,@function
RTutils__PrintSites:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L77:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 12(%ebp),%eax
	xorl %esi,%esi
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L78
	pushl $2804
	call _m3_fault
	.align 16
.L78:
	movl 4(%eax),%eax
	movl %eax,-36(%ebp)
	leal -20(%ebp),%eax
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-12(%ebp)
	pushl %eax
	movl MM_RTutils+444,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-32(%ebp)
	addl $8,%esp
	testl %eax,%eax
	jne .L79
	pushl $2884
	call _m3_fault
	.align 16
.L79:
	movl %esi,%edx
	movl 4(%eax),%ebx
	decl %ebx
	jmp .L80
	.align 16
.L81:
	cmpl $0,-32(%ebp)
	jne .L82
	pushl $2884
	call _m3_fault
	.align 16
.L82:
	movl -32(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L83
	pushl $2882
	call _m3_fault
	.align 16
.L83:
	movl (%eax),%eax
	movl %edx,(%eax,%edx,4)
	incl %edx
.L80:
	cmpl %ebx,%edx
	jle .L81
	xorl %eax,%eax
	movb 16(%ebp),%al
	testl %eax,%eax
	jle .L85
	cmpl $1,%eax
	jle .L86
.L85:
	movl MM_RTutils+416,%eax
	jmp .L107
	.align 16
.L86:
	movl MM_RTutils+412,%eax
.L107:
	pushl %eax
	movl 12(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl -32(%ebp),%ecx
	pushl %ecx
	call RTutils__Sort0
	addl $12,%esp
	movl 20(%ebp),%eax
	movl -36(%ebp),%ecx
	cmpl %ecx,%eax
	jle .L89
	movl -36(%ebp),%eax
.L89:
	xorl %edi,%edi
	decl %eax
	movl %eax,-40(%ebp)
	jmp .L90
	.align 16
.L91:
	cmpl $0,-32(%ebp)
	jne .L92
	pushl $3028
	call _m3_fault
	.align 16
.L92:
	movl -32(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L93
	pushl $3026
	call _m3_fault
	.align 16
.L93:
	movl (%eax),%eax
	movl (%eax,%edi,4),%eax
	movl %eax,-28(%ebp)
	movl 12(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L94
	pushl $3044
	call _m3_fault
	.align 16
.L94:
	movl -28(%ebp),%ecx
	cmpl %ecx,4(%eax)
	ja .L95
	pushl $3042
	call _m3_fault
	.align 16
.L95:
	movl (%eax),%eax
	movl -28(%ebp),%ecx
	leal (%eax,%ecx,8),%eax
	movl %eax,-24(%ebp)
	cmpl $0,(%eax)
	je .L96
	movl $MM_RTutils+700,%ebx
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl -24(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -24(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -24(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call m3_div
	addl $8,%esp
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	xorl %ebx,%ebx
	movl MI_RTAllocStats+44,%ecx
	decl %ecx
	movl %ecx,-44(%ebp)
	addl $32,%esp
	jmp .L97
	.align 16
.L98:
	cmpl $1048575,8(%ebp)
	jbe .L99
	pushl $3169
	call _m3_fault
	.align 16
.L99:
	cmpl $0,-28(%ebp)
	jge .L100
	pushl $3169
	call _m3_fault
	.align 16
.L100:
	pushl %ebx
	movl -28(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_RTAllocStats+56,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	je .L96
	testl %ebx,%ebx
	je .L103
	pushl $MM_RTutils+720
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTutils+756
	movl MI_RTIO+56,%eax
	call *%eax
	addl $8,%esp
.L103:
	pushl %esi
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L97:
	cmpl %ebx,-44(%ebp)
	jge .L98
.L96:
	incl %edi
.L90:
	cmpl %edi,-40(%ebp)
	jge .L91
	cmpl $1,-36(%ebp)
	jle .L106
	cmpl $1,20(%ebp)
	jle .L106
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
.L106:
	movl -8(%ebp),%eax
	leal -56(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTutils__PrintSites,.Lfe7-RTutils__PrintSites
	.align 16
	.type	 RTutils__SumTrees,@function
RTutils__SumTrees:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L109
	pushl $3460
	call _m3_fault
	.align 16
.L109:
	movl 8(%ebp),%edx
	xorl %edi,%edi
	movl 4(%edx),%edx
	decl %edx
	movl %edx,-4(%ebp)
	jmp .L110
	.align 16
.L111:
	cmpl $1048575,%edi
	jle .L112
	pushl $3473
	call _m3_fault
	.align 16
.L112:
	pushl %edi
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%esp
	testl %ecx,%ecx
	jne .L113
	pushl $3492
	call _m3_fault
	.align 16
.L113:
	movl (%ecx),%ebx
	movl 4(%ecx),%ecx
	movl %ecx,-8(%ebp)
	jmp .L115
	.align 16
.L116:
	testl %ebx,%ebx
	jl .L117
	cmpl $0,12(%ebp)
	jne .L118
	pushl $3508
	call _m3_fault
	.align 16
.L118:
	movl 12(%ebp),%esi
	movl 4(%esi),%esi
	movl %esi,-20(%ebp)
	movl %esi,%eax
	decl %eax
	cmpl %ebx,%eax
	jl .L117
	cmpl $0,8(%ebp)
	jne .L119
	pushl $3524
	call _m3_fault
	.align 16
.L119:
	movl 8(%ebp),%ecx
	cmpl %edi,4(%ecx)
	ja .L120
	pushl $3522
	call _m3_fault
	.align 16
.L120:
	leal (%edi,%edi,2),%eax
	sall $2,%eax
	movl %eax,-12(%ebp)
	movl %eax,%edx
	addl (%ecx),%edx
	movl %edx,-16(%ebp)
	cmpl %ebx,-20(%ebp)
	ja .L122
	pushl $3522
	call _m3_fault
	.align 16
.L122:
	movl 12(%ebp),%esi
	leal (%ebx,%ebx,2),%edx
	movl (%esi),%eax
	leal 0(,%edx,4),%esi
	movl %esi,-20(%ebp)
	movl -16(%ebp),%edx
	movl (%eax,%esi),%eax
	addl %eax,(%edx)
	cmpl %edi,4(%ecx)
	ja .L124
	pushl $3538
	call _m3_fault
	.align 16
.L124:
	movl -12(%ebp),%esi
	addl (%ecx),%esi
	movl 12(%ebp),%ecx
	movl %esi,-16(%ebp)
	cmpl %ebx,4(%ecx)
	ja .L126
	pushl $3538
	call _m3_fault
	.align 16
.L126:
	movl -20(%ebp),%eax
	addl (%ecx),%eax
	movl -16(%ebp),%edx
	movl 4(%eax),%eax
	addl %eax,4(%edx)
.L117:
	incl %ebx
.L115:
	cmpl %ebx,-8(%ebp)
	jge .L116
	incl %edi
.L110:
	cmpl %edi,-4(%ebp)
	jge .L111
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTutils__SumTrees,.Lfe8-RTutils__SumTrees
	.align 16
	.type	 RTutils__PrintTree,@function
RTutils__PrintTree:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	cmpl $1048575,%ebx
	jbe .L130
	pushl $3665
	call _m3_fault
	.align 16
.L130:
	pushl %ebx
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L131
	pushl $3668
	call _m3_fault
	.align 16
.L131:
	movl 4(%eax),%esi
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	call RTutils__PrintNode
	incl %ebx
	jmp .L135
	.align 16
.L133:
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ebx
	leal 1(%edi),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call RTutils__PrintTree
	movl %eax,%ebx
.L135:
	addl $16,%esp
	cmpl %esi,%ebx
	jle .L133
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTutils__PrintTree,.Lfe9-RTutils__PrintTree
	.align 16
	.type	 RTutils__PrintNode,@function
RTutils__PrintNode:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
.L137:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L138
	pushl $3860
	call _m3_fault
	.align 16
.L138:
	cmpl %esi,4(%ecx)
	ja .L139
	pushl $3858
	call _m3_fault
	.align 16
.L139:
	leal (%esi,%esi,2),%edx
	movl (%ecx),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-12(%ebp)
	cmpl $0,(%eax)
	jg .L140
	cmpb $0,20(%ebp)
	jne .L148
.L140:
	pushl $4
	pushl %esi
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl -12(%ebp),%eax
	addl $24,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L142
	pushl $MM_RTutils+572
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	jmp .L143
	.align 16
.L142:
	pushl $10
	movl 4(%eax),%eax
	pushl %eax
	pushl %edx
	call m3_div
	addl $8,%esp
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $8,%esp
.L143:
	pushl $32
	movl MI_RTIO+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L144
	.align 16
.L145:
	pushl $32
	movl MI_RTIO+44,%eax
	call *%eax
	pushl $32
	movl MI_RTIO+44,%eax
	call *%eax
	decl %ebx
	addl $8,%esp
.L144:
	testl %ebx,%ebx
	jg .L145
	cmpl $1048575,%esi
	jbe .L147
	pushl $4097
	call _m3_fault
	.align 16
.L147:
	pushl %esi
	movl MI_RTTypeSRC+48,%eax
	call *%eax
	pushl %eax
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
.L148:
	movl -8(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTutils__PrintNode,.Lfe10-RTutils__PrintNode
	.align 16
	.type	 RTutils__Walk,@function
RTutils__Walk:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 20(%ebp),%esi
	incl 8(%edx)
	addl %esi,12(%edx)
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L150
	pushl $4356
	call _m3_fault
	.align 16
.L150:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L151
	pushl $4354
	call _m3_fault
	.align 16
.L151:
	leal (%ecx,%ecx,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-4(%ebp)
	incl (%eax)
	movl -4(%ebp),%eax
	addl %esi,4(%eax)
	pushl %ecx
	movl MI_RTAllocStats+52,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jl .L152
	movl -4(%ebp),%eax
	cmpl $0,8(%eax)
	jne .L153
	leal -16(%ebp),%eax
	leal -8(%ebp),%edi
	movl %edi,-16(%ebp)
	movl $1,-12(%ebp)
	incl %edx
	movl %edx,-8(%ebp)
	pushl %eax
	movl MM_RTutils+784,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl -4(%ebp),%edx
	addl $8,%esp
	movl %eax,8(%edx)
.L153:
	movl 16(%ebp),%eax
	addl $-4,%eax
	jne .L154
	pushl $4532
	call _m3_fault
	.align 16
.L154:
	xorl %ecx,%ecx
	movb 3(%eax),%cl
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L155
	pushl $4548
	call _m3_fault
	.align 16
.L155:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L156
	pushl $4546
	call _m3_fault
	.align 16
.L156:
	leal 0(,%ecx,8),%ebx
	movl (%edx),%eax
	addl %ebx,%eax
	incl (%eax)
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L157
	pushl $4564
	call _m3_fault
	.align 16
.L157:
	cmpl %ecx,4(%eax)
	ja .L158
	pushl $4562
	call _m3_fault
	.align 16
.L158:
	movl (%eax),%edx
	addl %ebx,%edx
	addl %esi,4(%edx)
.L152:
	leal -28(%ebp),%esp
	movl $1,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTutils__Walk,.Lfe11-RTutils__Walk
	.align 16
	.type	 RTutils__Sort,@function
RTutils__Sort:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L160
	pushl $4740
	call _m3_fault
	.align 16
.L160:
	movl 8(%ebp),%esi
	movl $1,-8(%ebp)
	movl 4(%esi),%esi
	decl %esi
	movl %esi,-12(%ebp)
	jmp .L161
	.align 16
.L162:
	cmpl $0,12(%ebp)
	jne .L163
	pushl $4788
	call _m3_fault
	.align 16
.L163:
	cmpl $0,8(%ebp)
	jne .L164
	pushl $4788
	call _m3_fault
	.align 16
.L164:
	movl 8(%ebp),%esi
	movl -8(%ebp),%edi
	cmpl %edi,4(%esi)
	ja .L165
	pushl $4786
	call _m3_fault
	.align 16
.L165:
	movl 8(%ebp),%edi
	movl -8(%ebp),%esi
	movl (%edi),%eax
	movl 12(%ebp),%edi
	movl (%eax,%esi,4),%eax
	cmpl %eax,4(%edi)
	ja .L166
	pushl $4786
	call _m3_fault
	.align 16
.L166:
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl %eax,%edi
	movl 12(%ebp),%esi
	movl -8(%ebp),%ebx
	decl %ebx
	addl (%esi),%edi
	movl %edi,-4(%ebp)
	jmp .L167
	.align 16
.L168:
	cmpl $0,8(%ebp)
	jne .L169
	pushl $4836
	call _m3_fault
	.align 16
.L169:
	movl 8(%ebp),%esi
	leal 1(%ebx),%eax
	movl 4(%esi),%edx
	cmpl %edx,%eax
	jb .L171
	pushl $4834
	call _m3_fault
	.align 16
.L171:
	cmpl %edx,%ebx
	jb .L172
	pushl $4834
	call _m3_fault
	.align 16
.L172:
	movl 8(%ebp),%edi
	movl (%edi),%edx
	movl (%edx,%ebx,4),%eax
	movl %eax,4(%edx,%ebx,4)
	decl %ebx
.L167:
	testl %ebx,%ebx
	jl .L180
	movl 16(%ebp),%esi
	movl %esi,-24(%ebp)
	cmpl $0,12(%ebp)
	jne .L174
	pushl $4820
	call _m3_fault
	.align 16
.L174:
	movl 12(%ebp),%edi
	movl %edi,-20(%ebp)
	cmpl $0,8(%ebp)
	jne .L175
	pushl $4820
	call _m3_fault
	.align 16
.L175:
	movl 8(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L176
	pushl $4818
	call _m3_fault
	.align 16
.L176:
	movl -20(%ebp),%esi
	movl (%ecx),%edx
	movl 4(%esi),%eax
	cmpl %eax,(%edx,%ebx,4)
	jb .L177
	pushl $4818
	call _m3_fault
	.align 16
.L177:
	cmpl $0,-24(%ebp)
	je .L178
	movl -24(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L178
	movl 8(%edi),%esi
	movl %esi,-16(%ebp)
	movl 4(%edi),%edi
	movl %edi,-24(%ebp)
.L178:
	movl (%ecx),%eax
	movl -20(%ebp),%esi
	movl (%eax,%ebx,4),%eax
	leal (%eax,%eax,2),%eax
	movl (%esi),%edx
	leal (%edx,%eax,4),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%edi
	movl -16(%ebp),%ecx
	call *%edi
	addl $8,%esp
	testl %eax,%eax
	jl .L168
.L180:
	cmpl $0,8(%ebp)
	jne .L181
	pushl $4884
	call _m3_fault
	.align 16
.L181:
	movl 8(%ebp),%ecx
	leal 1(%ebx),%eax
	cmpl %eax,4(%ecx)
	ja .L182
	pushl $4882
	call _m3_fault
	.align 16
.L182:
	movl (%ecx),%eax
	movl -8(%ebp),%esi
	movl %esi,4(%eax,%ebx,4)
	incl %esi
	movl %esi,-8(%ebp)
.L161:
	movl -12(%ebp),%edi
	cmpl %edi,-8(%ebp)
	jle .L162
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTutils__Sort,.Lfe12-RTutils__Sort
	.align 16
	.type	 RTutils__CompareCount,@function
RTutils__CompareCount:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	movl %ebp,%esp
	popl %ebp
	movl (%edx),%edx
	movl (%eax),%eax
	subl %edx,%eax
	ret
.Lfe13:
	.size	 RTutils__CompareCount,.Lfe13-RTutils__CompareCount
	.align 16
	.type	 RTutils__CompareSize,@function
RTutils__CompareSize:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	movl %ebp,%esp
	popl %ebp
	movl 4(%edx),%edx
	movl 4(%eax),%eax
	subl %edx,%eax
	ret
.Lfe14:
	.size	 RTutils__CompareSize,.Lfe14-RTutils__CompareSize
	.align 16
	.type	 RTutils__Sort0,@function
RTutils__Sort0:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L187
	pushl $5156
	call _m3_fault
	.align 16
.L187:
	movl 8(%ebp),%esi
	movl $1,-8(%ebp)
	movl 4(%esi),%esi
	decl %esi
	movl %esi,-12(%ebp)
	jmp .L188
	.align 16
.L189:
	cmpl $0,12(%ebp)
	jne .L190
	pushl $5204
	call _m3_fault
	.align 16
.L190:
	cmpl $0,8(%ebp)
	jne .L191
	pushl $5204
	call _m3_fault
	.align 16
.L191:
	movl 8(%ebp),%esi
	movl -8(%ebp),%edi
	cmpl %edi,4(%esi)
	ja .L192
	pushl $5202
	call _m3_fault
	.align 16
.L192:
	movl 8(%ebp),%edi
	movl -8(%ebp),%esi
	movl (%edi),%eax
	movl 12(%ebp),%edi
	movl (%eax,%esi,4),%eax
	cmpl %eax,4(%edi)
	ja .L193
	pushl $5202
	call _m3_fault
	.align 16
.L193:
	sall $3,%eax
	movl %eax,%edi
	movl 12(%ebp),%esi
	movl -8(%ebp),%ebx
	decl %ebx
	addl (%esi),%edi
	movl %edi,-4(%ebp)
	jmp .L194
	.align 16
.L195:
	cmpl $0,8(%ebp)
	jne .L196
	pushl $5252
	call _m3_fault
	.align 16
.L196:
	movl 8(%ebp),%esi
	leal 1(%ebx),%eax
	movl 4(%esi),%edx
	cmpl %edx,%eax
	jb .L198
	pushl $5250
	call _m3_fault
	.align 16
.L198:
	cmpl %edx,%ebx
	jb .L199
	pushl $5250
	call _m3_fault
	.align 16
.L199:
	movl 8(%ebp),%edi
	movl (%edi),%edx
	movl (%edx,%ebx,4),%eax
	movl %eax,4(%edx,%ebx,4)
	decl %ebx
.L194:
	testl %ebx,%ebx
	jl .L207
	movl 16(%ebp),%esi
	movl %esi,-24(%ebp)
	cmpl $0,12(%ebp)
	jne .L201
	pushl $5236
	call _m3_fault
	.align 16
.L201:
	movl 12(%ebp),%edi
	movl %edi,-20(%ebp)
	cmpl $0,8(%ebp)
	jne .L202
	pushl $5236
	call _m3_fault
	.align 16
.L202:
	movl 8(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L203
	pushl $5234
	call _m3_fault
	.align 16
.L203:
	movl -20(%ebp),%esi
	movl (%ecx),%edx
	movl 4(%esi),%eax
	cmpl %eax,(%edx,%ebx,4)
	jb .L204
	pushl $5234
	call _m3_fault
	.align 16
.L204:
	cmpl $0,-24(%ebp)
	je .L205
	movl -24(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L205
	movl 8(%edi),%esi
	movl %esi,-16(%ebp)
	movl 4(%edi),%edi
	movl %edi,-24(%ebp)
.L205:
	movl (%ecx),%eax
	movl -20(%ebp),%esi
	movl (%eax,%ebx,4),%eax
	sall $3,%eax
	addl (%esi),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%edi
	movl -16(%ebp),%ecx
	call *%edi
	addl $8,%esp
	testl %eax,%eax
	jl .L195
.L207:
	cmpl $0,8(%ebp)
	jne .L208
	pushl $5300
	call _m3_fault
	.align 16
.L208:
	movl 8(%ebp),%ecx
	leal 1(%ebx),%eax
	cmpl %eax,4(%ecx)
	ja .L209
	pushl $5298
	call _m3_fault
	.align 16
.L209:
	movl (%ecx),%eax
	movl -8(%ebp),%esi
	movl %esi,4(%eax,%ebx,4)
	incl %esi
	movl %esi,-8(%ebp)
.L188:
	movl -12(%ebp),%edi
	cmpl %edi,-8(%ebp)
	jle .L189
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 RTutils__Sort0,.Lfe15-RTutils__Sort0
	.align 16
	.type	 RTutils__CompareCount0,@function
RTutils__CompareCount0:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	movl %ebp,%esp
	popl %ebp
	movl (%edx),%edx
	movl (%eax),%eax
	subl %edx,%eax
	ret
.Lfe16:
	.size	 RTutils__CompareCount0,.Lfe16-RTutils__CompareCount0
	.align 16
	.type	 RTutils__CompareSize0,@function
RTutils__CompareSize0:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	movl %ebp,%esp
	popl %ebp
	movl 4(%edx),%edx
	movl 4(%eax),%eax
	subl %edx,%eax
	ret
.Lfe17:
	.size	 RTutils__CompareSize0,.Lfe17-RTutils__CompareSize0
	.align 16
	.type	 _INITM_RTutils,@function
_INITM_RTutils:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_RTutils+356
	call RTutils__NewVisitor
	movl %eax,MM_RTutils+356
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 _INITM_RTutils,.Lfe18-_INITM_RTutils
	.align 16
	.type	 M_RTutils_t97ae8024_LINK,@function
M_RTutils_t97ae8024_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTutils+428,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTutils+392,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe19:
	.size	 M_RTutils_t97ae8024_LINK,.Lfe19-M_RTutils_t97ae8024_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTutils
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe20:
	.size	 _m3_fault,.Lfe20-_m3_fault
.globl MM_RTutils
.data
	.align 4
	.type	 MM_RTutils,@object
	.size	 MM_RTutils,1436
MM_RTutils:
	.long MM_RTutils+1185
	.long MM_RTutils+44
	.long MM_RTutils+428
	.zero	8
	.long MM_RTutils+960
	.zero	4
	.long MM_RTutils+1180
	.long MM_RTutils+1180
	.zero	4
	.long _INITM_RTutils
	.zero	8
	.long -1932591204
.byte 173
.byte 110
.byte 231
.byte 153
.byte 49
.byte 145
.byte 41
.byte 21
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 8
	.zero	4
	.long MM_RTutils+1406
	.zero	4
	.long MM_RTutils+1412
	.zero	28
	.long MM_RTutils+1419
	.long MM_RTutils+148
	.zero	8
	.long -998316278
.byte 195
.byte 123
.byte 186
.byte 215
.byte 201
.byte 156
.byte 196
.byte 19
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 12
	.zero	4
	.long MM_RTutils+1369
	.long MM_RTutils+1376
	.long MM_RTutils+1382
	.zero	28
	.long MM_RTutils+1396
	.long MM_RTutils+252
	.zero	8
	.long -1750171612
.byte 110
.byte 247
.byte 253
.byte 131
.byte 74
.byte 119
.byte 83
.byte 20
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTutils+1337
	.long MM_RTutils+1341
	.long MM_RTutils+1343
	.zero	4
	.long M_RTutils_t97ae8024_LINK
	.long 328745727
	.zero	16
	.long MM_RTutils+1353
	.zero	8
	.long RTutils__NewVisitor
	.long RTutils__Compute
	.long RTutils__Delta
	.long RTutils__Report
	.long RTutils__PrintSites
	.long RTutils__SumTrees
	.long RTutils__PrintTree
	.long RTutils__PrintNode
	.long RTutils__Walk
	.long RTutils__Sort
	.long RTutils__CompareCount
	.long RTutils__CompareSize
	.long RTutils__Sort0
	.long RTutils__CompareCount0
	.long RTutils__CompareSize0
	.long RTutils__Heap
	.long RTutils__NewHeap
	.long MM_RTutils+436
	.long -1750171612
	.long MM_RTutils+444
	.long -998316278
	.long MM_RTutils+636
	.long 562018850
	.long 2
	.long MM_RTutils+464
	.long 103
	.ascii	"Code   Count   TotalSize  AvgSize  Name\n"
	.ascii	"---- --------- --------- --------- -------------------------"
	.ascii	"-\n"
	.zero	2
	.long 2
	.long MM_RTutils+580
	.long 11
	.ascii	"         0"
	.zero	2
	.long 2
	.long MM_RTutils+604
	.long 30
	.ascii	"     --------- ---------\n    "
	.zero	3
	.long MM_RTutils+784
	.long -1651526519
	.long 2
	.long MM_RTutils+656
	.long 40
	.ascii	"---- object types (full subtrees) ----\n"
	.zero	1
	.long 2
	.long MM_RTutils+708
	.long 5
	.ascii	"    "
	.zero	4
	.long 2
	.long MM_RTutils+728
	.long 21
	.ascii	"                    "
	.zero	4
	.long 2
	.long MM_RTutils+764
	.long 19
	.ascii	"                  "
	.zero	6
	.long -1932591204
	.ascii	"_INITM_RTutils"
	.zero	1
	.ascii	"CompareSize0"
	.zero	1
	.ascii	"CompareCount0"
	.zero	1
	.ascii	"Sort0"
	.zero	1
	.ascii	"CompareSize"
	.zero	1
	.ascii	"CompareCount"
	.zero	1
	.ascii	"Sort"
	.zero	1
	.ascii	"Walk"
	.zero	1
	.ascii	"PrintNode"
	.zero	1
	.ascii	"PrintTree"
	.zero	1
	.ascii	"SumTrees"
	.zero	1
	.ascii	"PrintSites"
	.zero	1
	.ascii	"Report"
	.zero	1
	.ascii	"Delta"
	.zero	1
	.ascii	"Compute"
	.zero	1
	.ascii	"NewHeap"
	.zero	1
	.ascii	"Heap"
	.zero	1
	.ascii	"NewVisitor"
	.zero	1
	.long _INITM_RTutils
	.long MM_RTutils+792
	.zero	4
	.long RTutils__CompareSize0
	.long MM_RTutils+807
	.zero	4
	.long RTutils__CompareCount0
	.long MM_RTutils+820
	.zero	4
	.long RTutils__Sort0
	.long MM_RTutils+834
	.zero	4
	.long RTutils__CompareSize
	.long MM_RTutils+840
	.zero	4
	.long RTutils__CompareCount
	.long MM_RTutils+852
	.zero	4
	.long RTutils__Sort
	.long MM_RTutils+865
	.zero	4
	.long RTutils__Walk
	.long MM_RTutils+870
	.zero	4
	.long RTutils__PrintNode
	.long MM_RTutils+875
	.zero	4
	.long RTutils__PrintTree
	.long MM_RTutils+885
	.zero	4
	.long RTutils__SumTrees
	.long MM_RTutils+895
	.zero	4
	.long RTutils__PrintSites
	.long MM_RTutils+904
	.zero	4
	.long RTutils__Report
	.long MM_RTutils+915
	.zero	4
	.long RTutils__Delta
	.long MM_RTutils+922
	.zero	4
	.long RTutils__Compute
	.long MM_RTutils+928
	.zero	4
	.long RTutils__NewHeap
	.long MM_RTutils+936
	.long MI_RTutils+48
	.long RTutils__Heap
	.long MM_RTutils+944
	.long MI_RTutils+44
	.long RTutils__NewVisitor
	.long MM_RTutils+949
	.zero	8
.byte 43
.byte 100
.byte 1
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTutils.m3"
	.zero	1
.byte 4
.byte 14
.byte 14
.byte 0
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 16
.byte 10
.byte 231
.byte 126
.byte 196
.byte 7
.byte 24
	.ascii	"RTutils.Visitor"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 14
.byte 4
.byte 0
.byte 0
.byte 24
.byte 1
.byte 41
.byte 4
.byte 0
.byte 0
.byte 6
.byte 11
.byte 1
.byte 15
.byte 2
.byte 15
.byte 2
.byte 7
.byte 25
.byte 16
.byte 156
.byte 255
.byte 206
.byte 140
	.ascii	"RTutils.R"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 14
.byte 0
.byte 0
.byte 4
.byte 11
.byte 1
.byte 15
.byte 2
.byte 7
.byte 24
	.ascii	"RTutils.StatList"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
