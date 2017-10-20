	.file	"RTHeapStats.mc"
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
	.type	 RTHeapStats__ReportReachable,@function
RTHeapStats__ReportReachable:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MM_RTHeapStats+904,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+324
	movl MM_RTHeapStats+912,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+328
	movl MM_RTHeapStats+920,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+332
	movl MM_RTHeapStats+928,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+308
	leal -20(%ebp),%edx
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl MI_RTHeapRep+44,%eax
	movl MI_RTHeapRep+48,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	sall $5,%eax
	movl %eax,-12(%ebp)
	pushl %edx
	movl MM_RTHeapStats+936,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+168
	movl $0,L_1
	movl $0,L_2
	movl $0,L_3
	movl $0,L_4
	movl $0,L_5
	movl $0,MM_RTHeapStats+312
	movl $0,MM_RTHeapStats+316
	movl MI_RTCollector+44,%eax
	movl $0,MM_RTHeapStats+340
	call *%eax
	movl MI_RTOS+56,%eax
	call *%eax
	movl MI_RTHeapRep+44,%ecx
	sall $13,%ecx
	movl %ecx,MM_RTHeapStats+172
	movl MI_RTHeapRep+48,%ecx
	sall $13,%ecx
	movl %ecx,MM_RTHeapStats+176
	pushl $MM_RTHeapStats+948
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+172,%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	addl $36,%esp
	pushl $MM_RTHeapStats+968
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+176,%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+988
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+172,%eax
	movl MM_RTHeapStats+176,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	sarl $20,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1008
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+172,%eax
	movl MM_RTHeapStats+176,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	leal (%eax,%eax,4),%eax
	addl %eax,%eax
	sarl $20,%eax
	pushl %eax
	pushl $10
	call m3_mod
	addl $8,%esp
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $36,%esp
	pushl $MM_RTHeapStats+1024
	movl MI_RTIO+56,%eax
	call *%eax
	movl MM_RTHeapStats+1044,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+320
	call RTHeapStats__GetThreads
	movl MI_RTModule+44,%eax
	call *%eax
	xorl %ebx,%ebx
	leal -1(%eax),%esi
	addl $8,%esp
	jmp .L3
	.align 16
.L4:
	pushl %ebx
	call RTHeapStats__GetUnitStats
	incl %ebx
	addl $4,%esp
.L3:
	cmpl %esi,%ebx
	jle .L4
	movl MI_RTModule+44,%eax
	call *%eax
	xorl %ebx,%ebx
	leal -1(%eax),%esi
	jmp .L6
	.align 16
.L7:
	pushl %ebx
	call RTHeapStats__GetUnitRootStats
	incl %ebx
	addl $4,%esp
.L6:
	cmpl %esi,%ebx
	jle .L7
	xorl %ebx,%ebx
	movl MM_RTHeapStats+340,%esi
	decl %esi
	jmp .L9
	.align 16
.L10:
	cmpl $199,%ebx
	jle .L11
	pushl $1937
	call _m3_fault
	.align 16
.L11:
	leal (%ebx,%ebx,2),%eax
	leal L_6(,%eax,8),%eax
	pushl %eax
	call RTHeapStats__GetThreadStats
	incl %ebx
	addl $4,%esp
.L9:
	cmpl %esi,%ebx
	jle .L10
	xorl %ebx,%ebx
	movl MM_RTHeapStats+340,%esi
	decl %esi
	jmp .L13
	.align 16
.L14:
	cmpl $199,%ebx
	jle .L15
	pushl $1953
	call _m3_fault
	.align 16
.L15:
	leal (%ebx,%ebx,2),%eax
	leal L_6(,%eax,8),%eax
	pushl %eax
	call RTHeapStats__GetThreadRootStats
	incl %ebx
	addl $4,%esp
.L13:
	cmpl %esi,%ebx
	jle .L14
	xorl %ebx,%ebx
	movl MM_RTHeapStats+340,%esi
	decl %esi
	jmp .L17
	.align 16
.L18:
	cmpl $199,%ebx
	jle .L19
	pushl $1969
	call _m3_fault
	.align 16
.L19:
	leal (%ebx,%ebx,2),%eax
	leal L_6(,%eax,8),%eax
	pushl %eax
	call RTHeapStats__GetThreadPageStats
	incl %ebx
	addl $4,%esp
.L17:
	cmpl %esi,%ebx
	jle .L18
	cmpl $0,MM_RTHeapStats+316
	jle .L21
	pushl $MM_RTHeapStats+1056
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+316,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1084
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl $10001
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1120
	movl MI_RTIO+56,%eax
	call *%eax
	addl $28,%esp
.L21:
	call RTHeapStats__ReportUnits
	call RTHeapStats__ReportUnitRoots
	call RTHeapStats__ReportStacks
	call RTHeapStats__ReportStackRoots
	call RTHeapStats__ReportStackPages
	call RTHeapStats__DumpStacks
	movl MI_RTIO+72,%eax
	call *%eax
	pushl $MM_RTHeapStats+308
	movl MI_RTHooks+100,%eax
	call *%eax
	pushl $MM_RTHeapStats+168
	movl MI_RTHooks+100,%eax
	call *%eax
	movl MI_RTOS+60,%eax
	call *%eax
	movl MI_RTCollector+48,%eax
	call *%eax
.L22:
	movl -8(%ebp),%eax
	leal -28(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHeapStats__ReportReachable,.Lfe1-RTHeapStats__ReportReachable
	.align 16
	.type	 RTHeapStats__ResetVisitCounts,@function
RTHeapStats__ResetVisitCounts:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_RTHeapStats+196
	movl $0,MM_RTHeapStats+200
	movl $0,MM_RTHeapStats+312
	movl MM_RTHeapStats+168,%edx
	testl %edx,%edx
	jne .L24
	pushl $2516
	call _m3_fault
	.align 16
.L24:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L26
	pushl $2514
	call _m3_fault
	.align 16
.L26:
	sall $2,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_RTMisc+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeapStats__ResetVisitCounts,.Lfe2-RTHeapStats__ResetVisitCounts
	.align 16
	.type	 RTHeapStats__AddVisit,@function
RTHeapStats__AddVisit:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	movl 8(%ebp),%edx
	movl (%edx),%eax
	cmpl $19,%eax
	jg .L28
	jbe .L29
	pushl $2641
	call _m3_fault
	.align 16
.L29:
	leal (%eax,%eax,2),%eax
	movl $-1,24(%edx,%eax,8)
	incl (%edx)
.L28:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	jmp .L32
	.align 16
.L31:
	cmpl $18,%edx
	jg .L32
	leal 1(%edx),%eax
	cmpl $19,%eax
	jbe .L33
	pushl $2753
	call _m3_fault
	.align 16
.L33:
	cmpl $19,%edx
	jbe .L34
	pushl $2753
	call _m3_fault
	.align 16
.L34:
	leal (%eax,%eax,2),%eax
	leal 4(%esi,%eax,8),%edi
	leal 4(%ecx),%esi
	cld
	movl $6,%ecx
	rep
	movsl
.L32:
	decl %edx
	js .L37
	cmpl $19,%edx
	jbe .L36
	pushl $2737
	call _m3_fault
	.align 16
.L36:
	movl 8(%ebp),%esi
	leal (%edx,%edx,2),%eax
	leal (%esi,%eax,8),%ecx
	movl MM_RTHeapStats+200,%eax
	cmpl %eax,24(%ecx)
	jl .L31
.L37:
	movl 8(%ebp),%ecx
	incl %edx
	cmpl %edx,(%ecx)
	jle .L27
	cmpl $19,%edx
	jbe .L39
	pushl $2849
	call _m3_fault
	.align 16
.L39:
	leal (%edx,%edx,2),%eax
	leal 4(%ecx,%eax,8),%edi
	movl $MM_RTHeapStats+180,%esi
	cld
	movl $6,%ecx
	rep
	movsl
.L27:
	leal -8(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeapStats__AddVisit,.Lfe3-RTHeapStats__AddVisit
	.align 16
	.type	 RTHeapStats__Visit,@function
RTHeapStats__Visit:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	pushl %eax
	pushl $0
	call RTHeapStats__InnerVisit
	jmp .L46
	.align 16
.L42:
	leal -1(%eax),%edx
	movl %edx,MM_RTHeapStats+312
	movl MM_RTHeapStats+308,%ecx
	testl %ecx,%ecx
	jne .L43
	pushl $2980
	call _m3_fault
	.align 16
.L43:
	cmpl $10000,%edx
	jbe .L44
	pushl $2977
	call _m3_fault
	.align 16
.L44:
	movl MM_RTHeapStats+328,%eax
	pushl %eax
	movl (%ecx,%edx,4),%eax
	pushl %eax
	movl MI_RTHeapMap+252,%eax
	call *%eax
.L46:
	addl $8,%esp
	movl MM_RTHeapStats+312,%eax
	testl %eax,%eax
	jg .L42
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeapStats__Visit,.Lfe4-RTHeapStats__Visit
	.align 16
	.type	 RTHeapStats__InnerVisit,@function
RTHeapStats__InnerVisit:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
.L48:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %edx,%edx
	jne .L49
	pushl $3092
	call _m3_fault
	.align 16
.L49:
	movl (%edx),%edx
	leal -4(%edx),%edi
	movl MM_RTHeapStats+172,%ecx
	cmpl %edx,%ecx
	ja .L67
	cmpl %edx,MM_RTHeapStats+176
	jbe .L67
	movl %edx,%esi
	andl $3,%esi
	movl %esi,-12(%ebp)
	jne .L67
	testl %edi,%edi
	jne .L51
	pushl $3204
	call _m3_fault
	.align 16
.L51:
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	testl %eax,%eax
	jle .L67
	cmpl %eax,MI_RT0u+156
	jle .L67
	movl %edx,%eax
	subl %ecx,%eax
	movl %eax,%edx
	sarl $3,%edx
	movl %eax,%ebx
	sarl $8,%ebx
	movl %ebx,%eax
	sall $5,%eax
	movl %edx,%ecx
	subl %eax,%ecx
	cmpl $31,%ecx
	jbe .L53
	pushl $3281
	call _m3_fault
	.align 16
.L53:
	cmpl $31,%ecx
	jg .L54
	movl $1,%eax
	sall %cl,%eax
	jmp .L55
	.align 16
.L54:
	movl -12(%ebp),%eax
.L55:
	movl MM_RTHeapStats+168,%ecx
	testl %ecx,%ecx
	jne .L56
	pushl $3300
	call _m3_fault
	.align 16
.L56:
	cmpl %ebx,4(%ecx)
	ja .L57
	pushl $3298
	call _m3_fault
	.align 16
.L57:
	movl (%ecx),%edx
	movl (%edx,%ebx,4),%ecx
	testl %ecx,%eax
	jne .L67
	orl %eax,%ecx
	movl %ecx,(%edx,%ebx,4)
	incl MM_RTHeapStats+196
	pushl %edi
	call RTHeapStats__DataSize
	movl %eax,%edx
	movl MM_RTHeapStats+200,%eax
	addl $4,%eax
	addl %eax,%edx
	movl %edx,MM_RTHeapStats+200
	movl MM_RTHeapStats+312,%eax
	addl $4,%esp
	cmpl $10000,%eax
	jg .L63
	movl MM_RTHeapStats+308,%edx
	testl %edx,%edx
	jne .L64
	pushl $3396
	call _m3_fault
	.align 16
.L64:
	cmpl $10000,%eax
	jbe .L65
	pushl $3393
	call _m3_fault
	.align 16
.L65:
	movl %edi,(%edx,%eax,4)
	incl MM_RTHeapStats+312
	jmp .L67
	.align 16
.L63:
	incl MM_RTHeapStats+316
.L67:
	movl -8(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTHeapStats__InnerVisit,.Lfe5-RTHeapStats__InnerVisit
	.align 16
	.type	 RTHeapStats__DataSize,@function
RTHeapStats__DataSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L69
	pushl $3604
	call _m3_fault
	.align 16
.L69:
	movl (%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl $1048575,%eax
	jne .L70
	movl %edx,%eax
	jmp .L88
	.align 16
.L70:
	cmpl $1048574,%eax
	jne .L71
	cmpl $-4,%ebx
	jne .L72
	pushl $3684
	call _m3_fault
	.align 16
.L72:
	movl 4(%ebx),%eax
	addl $-4,%eax
	jns .L88
	pushl $3697
	call _m3_fault
	.align 16
.L71:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L74
	pushl $3748
	call _m3_fault
	.align 16
.L74:
	movl 44(%edx),%ecx
	testl %ecx,%ecx
	jne .L75
	movl 28(%edx),%eax
	testl %eax,%eax
	jge .L88
	pushl $3777
	call _m3_fault
	.align 16
.L75:
	addl $8,%ebx
	movl $1,%eax
	xorl %esi,%esi
	leal -1(%ecx),%edi
	jmp .L79
	.align 16
.L80:
	testl %ebx,%ebx
	jne .L81
	pushl $4068
	call _m3_fault
	.align 16
.L81:
	movl (%ebx),%ecx
	testl %ecx,%ecx
	jge .L83
	xorl %eax,%eax
.L83:
	imull %ecx,%eax
	addl $4,%ebx
	incl %esi
.L79:
	cmpl %edi,%esi
	jle .L80
	testl %edx,%edx
	jne .L85
	pushl $4164
	call _m3_fault
	.align 16
.L85:
	imull 48(%edx),%eax
	pushl $4
	addl 28(%edx),%eax
	pushl %eax
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L87
	pushl $4209
	call _m3_fault
	.align 16
.L87:
.L88:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHeapStats__DataSize,.Lfe6-RTHeapStats__DataSize
	.align 16
	.type	 RTHeapStats__TypeName,@function
RTHeapStats__TypeName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	leal -4(%eax),%edx
	testb $3,%dl
	jne .L90
	cmpl %eax,MM_RTHeapStats+172
	ja .L90
	cmpl %eax,MM_RTHeapStats+176
	jbe .L90
	testl %edx,%edx
	jne .L91
	pushl $4388
	call _m3_fault
	.align 16
.L91:
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	testl %eax,%eax
	jle .L90
	cmpl %eax,MI_RT0u+156
	jle .L90
	cmpl $1048575,%eax
	jbe .L93
	pushl $4417
	call _m3_fault
	.align 16
.L93:
	pushl %eax
	movl MI_RTTypeSRC+48,%eax
	call *%eax
	jmp .L94
	.align 16
.L90:
	movl $MM_RTHeapStats+1156,%eax
.L94:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTHeapStats__TypeName,.Lfe7-RTHeapStats__TypeName
	.align 16
	.type	 RTHeapStats__GetUnitStats,@function
RTHeapStats__GetUnitStats:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+180
	movl $-1,MM_RTHeapStats+184
	movl $0,MM_RTHeapStats+188
	movl $0,MM_RTHeapStats+192
	call RTHeapStats__ResetVisitCounts
	pushl %ebx
	movl MM_RTHeapStats+324,%eax
	pushl %eax
	movl MI_RTHeapMap+260,%eax
	call *%eax
	pushl $L_1
	call RTHeapStats__AddVisit
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTHeapStats__GetUnitStats,.Lfe8-RTHeapStats__GetUnitStats
	.align 16
	.type	 RTHeapStats__GetUnitRootStats,@function
RTHeapStats__GetUnitRootStats:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,MM_RTHeapStats+180
	movl $-1,MM_RTHeapStats+184
	movl $0,MM_RTHeapStats+188
	movl $0,MM_RTHeapStats+192
	pushl %ebx
	movl MM_RTHeapStats+332,%eax
	pushl %eax
	movl MI_RTHeapMap+260,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTHeapStats__GetUnitRootStats,.Lfe9-RTHeapStats__GetUnitRootStats
	.align 16
	.type	 RTHeapStats__VisitRoot,@function
RTHeapStats__VisitRoot:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl %ebx,MM_RTHeapStats+188
	testl %ebx,%ebx
	jne .L98
	pushl $4932
	call _m3_fault
	.align 16
.L98:
	movl (%ebx),%eax
	movl %eax,MM_RTHeapStats+192
	call RTHeapStats__ResetVisitCounts
	pushl %ebx
	pushl $0
	call RTHeapStats__Visit
	pushl $L_2
	call RTHeapStats__AddVisit
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTHeapStats__VisitRoot,.Lfe10-RTHeapStats__VisitRoot
	.align 16
	.type	 RTHeapStats__GetThreads,@function
RTHeapStats__GetThreads:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl $-1,MM_RTHeapStats+336
	leal -4(%ebp),%edx
	movl %edx,MM_RTHeapStats+492
	movl MM_RTHeapStats+500,%eax
	pushl %eax
	movl MI_ThreadF+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1172
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+340,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $16,%esp
	cmpl $200,MM_RTHeapStats+340
	jle .L100
	pushl $MM_RTHeapStats+1196
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl MM_RTHeapStats+340,%eax
	addl $-200,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1212
	movl MI_RTIO+56,%eax
	call *%eax
	movl $200,MM_RTHeapStats+340
	addl $16,%esp
.L100:
	pushl $10
	movl MI_RTIO+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTHeapStats__GetThreads,.Lfe11-RTHeapStats__GetThreads
	.align 16
	.type	 RTHeapStats__GetThread,@function
RTHeapStats__GetThread:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_RTHeapStats+492,%eax
	cmpl %eax,%ebx
	ja .L102
	cmpl %esi,%eax
	ja .L102
	movl MM_RTHeapStats+340,%eax
	movl %eax,MM_RTHeapStats+336
.L102:
	movl MM_RTHeapStats+340,%ecx
	cmpl $199,%ecx
	jg .L103
	jbe .L104
	pushl $5473
	call _m3_fault
	.align 16
.L104:
	leal (%ecx,%ecx,2),%eax
	sall $3,%eax
	movl %eax,%edx
	addl $L_6,%edx
	movl %edx,-4(%ebp)
	movl %ecx,L_6(%eax)
	movb $0,20(%edx)
	cmpb $0,MM_RTHeapStats+488
	je .L105
	movl -4(%ebp),%edx
	movl %ebx,12(%edx)
	movl %esi,16(%edx)
	jmp .L103
	.align 16
.L105:
	movl -4(%ebp),%edx
	movl %ebx,4(%edx)
	movl %esi,8(%edx)
.L103:
	movb MM_RTHeapStats+488,%al
	testb %al,%al
	je .L107
	incl MM_RTHeapStats+340
.L107:
	testb %al,%al
	sete %al
	leal -12(%ebp),%esp
	movb %al,MM_RTHeapStats+488
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTHeapStats__GetThread,.Lfe12-RTHeapStats__GetThread
	.align 16
	.type	 RTHeapStats__GetThreadStats,@function
RTHeapStats__GetThreadStats:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl $0,MM_RTHeapStats+180
	movl (%eax),%eax
	movl %eax,MM_RTHeapStats+184
	movl $0,MM_RTHeapStats+188
	movl $0,MM_RTHeapStats+192
	call RTHeapStats__ResetVisitCounts
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call RTHeapStats__ScanPages
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	call RTHeapStats__ScanPages
	pushl $L_3
	call RTHeapStats__AddVisit
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RTHeapStats__GetThreadStats,.Lfe13-RTHeapStats__GetThreadStats
	.align 16
	.type	 RTHeapStats__ScanPages,@function
RTHeapStats__ScanPages:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
.L110:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%ebx
	jmp .L111
	.align 16
.L112:
	testl %ebx,%ebx
	jne .L113
	pushl $5972
	call _m3_fault
	.align 16
.L113:
	movl (%ebx),%eax
	movl MM_RTHeapStats+172,%edx
	cmpl %eax,%edx
	ja .L114
	cmpl %eax,MM_RTHeapStats+176
	jbe .L114
	subl %edx,%eax
	movl %eax,%edx
	sarl $13,%edx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L115
	pushl $6020
	call _m3_fault
	.align 16
.L115:
	cmpl %edx,4(%eax)
	ja .L116
	pushl $6018
	call _m3_fault
	.align 16
.L116:
	movl (%eax),%eax
	movb (%eax,%edx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $3,%eax
	jne .L114
	pushl %edx
	call RTHeapStats__VisitPage
	addl $4,%esp
.L114:
	addl $4,%ebx
.L111:
	cmpl %esi,%ebx
	jbe .L112
.L119:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 RTHeapStats__ScanPages,.Lfe14-RTHeapStats__ScanPages
	.align 16
	.type	 RTHeapStats__GetThreadRootStats,@function
RTHeapStats__GetThreadRootStats:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl $0,MM_RTHeapStats+180
	movl (%edx),%eax
	movl %eax,MM_RTHeapStats+184
	movl $0,MM_RTHeapStats+188
	movl $0,MM_RTHeapStats+192
	pushl $1
	movl 8(%edx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call RTHeapStats__ScanThreadRoots
	pushl $0
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	call RTHeapStats__ScanThreadRoots
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 RTHeapStats__GetThreadRootStats,.Lfe15-RTHeapStats__GetThreadRootStats
	.align 16
	.type	 RTHeapStats__ScanThreadRoots,@function
RTHeapStats__ScanThreadRoots:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
.L122:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%ebx
	jmp .L123
	.align 16
.L124:
	testl %ebx,%ebx
	jne .L125
	pushl $6372
	call _m3_fault
	.align 16
.L125:
	movl (%ebx),%edx
	movl MM_RTHeapStats+172,%eax
	cmpl %edx,%eax
	ja .L126
	cmpl %edx,MM_RTHeapStats+176
	jbe .L126
	movl %edx,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	movl %eax,%edi
	sarl $13,%edi
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L127
	pushl $6420
	call _m3_fault
	.align 16
.L127:
	cmpl %edi,4(%eax)
	ja .L128
	pushl $6418
	call _m3_fault
	.align 16
.L128:
	movl (%eax),%eax
	movb (%eax,%edi,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $3,%eax
	jne .L126
	cmpb $0,16(%ebp)
	je .L130
	movl %ebx,MM_RTHeapStats+188
	jmp .L131
	.align 16
.L130:
	movl $0,MM_RTHeapStats+188
.L131:
	movl %edx,MM_RTHeapStats+192
	call RTHeapStats__ResetVisitCounts
	pushl %ebx
	pushl $0
	call RTHeapStats__Visit
	pushl $L_4
	call RTHeapStats__AddVisit
	addl $12,%esp
.L126:
	addl $4,%ebx
.L123:
	cmpl %esi,%ebx
	jbe .L124
.L133:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 RTHeapStats__ScanThreadRoots,.Lfe16-RTHeapStats__ScanThreadRoots
	.align 16
	.type	 RTHeapStats__GetThreadPageStats,@function
RTHeapStats__GetThreadPageStats:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl $0,MM_RTHeapStats+180
	movl (%edx),%eax
	movl %eax,MM_RTHeapStats+184
	movl $0,MM_RTHeapStats+188
	movl $0,MM_RTHeapStats+192
	pushl $1
	movl 8(%edx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call RTHeapStats__ScanThreadPageRoots
	pushl $0
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	call RTHeapStats__ScanThreadPageRoots
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 RTHeapStats__GetThreadPageStats,.Lfe17-RTHeapStats__GetThreadPageStats
	.align 16
	.type	 RTHeapStats__ScanThreadPageRoots,@function
RTHeapStats__ScanThreadPageRoots:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L136:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%esi
	jmp .L137
	.align 16
.L138:
	testl %esi,%esi
	jne .L139
	pushl $6884
	call _m3_fault
	.align 16
.L139:
	movl (%esi),%edx
	movl MM_RTHeapStats+172,%eax
	cmpl %edx,%eax
	ja .L140
	cmpl %edx,MM_RTHeapStats+176
	jbe .L140
	movl %edx,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	movl %eax,%ebx
	sarl $13,%ebx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L141
	pushl $6932
	call _m3_fault
	.align 16
.L141:
	cmpl %ebx,4(%eax)
	ja .L142
	pushl $6930
	call _m3_fault
	.align 16
.L142:
	movl (%eax),%eax
	movb (%eax,%ebx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $3,%eax
	jne .L140
	cmpb $0,16(%ebp)
	je .L144
	movl %esi,MM_RTHeapStats+188
	jmp .L145
	.align 16
.L144:
	movl $0,MM_RTHeapStats+188
.L145:
	movl %edx,MM_RTHeapStats+192
	call RTHeapStats__ResetVisitCounts
	pushl %ebx
	call RTHeapStats__VisitPage
	pushl $L_5
	call RTHeapStats__AddVisit
	addl $8,%esp
.L140:
	addl $4,%esi
.L137:
	cmpl %edi,%esi
	jbe .L138
.L147:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 RTHeapStats__ScanThreadPageRoots,.Lfe18-RTHeapStats__ScanThreadPageRoots
	.align 16
	.type	 RTHeapStats__VisitPage,@function
RTHeapStats__VisitPage:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	jmp .L149
	.align 16
.L150:
	decl %edx
.L149:
	testl %edx,%edx
	jle .L156
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L152
	pushl $7236
	call _m3_fault
	.align 16
.L152:
	cmpl %edx,4(%eax)
	ja .L153
	pushl $7234
	call _m3_fault
	.align 16
.L153:
	movl (%eax),%ecx
	xorl %eax,%eax
	movb (%ecx,%edx,4),%al
	andl $3,%eax
	cmpl $3,%eax
	jne .L156
	testb $2,1(%ecx,%edx,4)
	jne .L150
.L156:
	movl %edx,%eax
	sall $13,%eax
	movl MM_RTHeapStats+172,%edx
	addl %eax,%edx
	leal 8192(%edx),%edi
	movl MM_RTHeapStats+320,%eax
	cmpl %eax,%edx
	ja .L157
	cmpl %edi,%eax
	jae .L157
	movl %eax,%edi
.L157:
	movl %edx,%esi
	jmp .L158
	.align 16
.L159:
	leal 4(%esi),%ebx
	movl %ebx,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	pushl $0
	call RTHeapStats__Visit
	pushl %esi
	call RTHeapStats__DataSize
	leal (%eax,%ebx),%esi
	addl $12,%esp
.L158:
	cmpl %edi,%esi
	jae .L148
	testl %esi,%esi
	jne .L161
	pushl $7668
	call _m3_fault
	.align 16
.L161:
	testl $2097150,(%esi)
	jne .L159
.L148:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 RTHeapStats__VisitPage,.Lfe19-RTHeapStats__VisitPage
	.align 16
	.type	 RTHeapStats__ReportUnits,@function
RTHeapStats__ReportUnits:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	pushl $MM_RTHeapStats+1236
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1268
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1308
	movl MI_RTIO+56,%eax
	call *%eax
	xorl %ebx,%ebx
	movl L_1,%esi
	decl %esi
	addl $12,%esp
	jmp .L164
	.align 16
.L165:
	cmpl $19,%ebx
	jle .L166
	pushl $7905
	call _m3_fault
	.align 16
.L166:
	leal (%ebx,%ebx,2),%eax
	leal L_1+4(,%eax,8),%eax
	movl %eax,-4(%ebp)
	cmpl $0,20(%eax)
	jle .L167
	pushl $10
	movl 16(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -4(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1364
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $20,%esp
	movl (%eax),%eax
	testl %eax,%eax
	jne .L168
	pushl $7988
	call _m3_fault
	.align 16
.L168:
	movl (%eax),%eax
	pushl %eax
	call RTHeapStats__PathTail
	pushl %eax
	call RTHeapStats__PutStr
	pushl $MM_RTHeapStats+1380
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
.L167:
	incl %ebx
.L164:
	cmpl %esi,%ebx
	jle .L165
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 RTHeapStats__ReportUnits,.Lfe20-RTHeapStats__ReportUnits
	.align 16
	.type	 RTHeapStats__ReportUnitRoots,@function
RTHeapStats__ReportUnitRoots:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $MM_RTHeapStats+1396
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1436
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1512
	movl MI_RTIO+56,%eax
	call *%eax
	xorl %esi,%esi
	movl L_2,%edi
	decl %edi
	addl $12,%esp
	jmp .L171
	.align 16
.L172:
	cmpl $19,%esi
	jle .L173
	pushl $8193
	call _m3_fault
	.align 16
.L173:
	leal (%esi,%esi,2),%eax
	leal L_2+4(,%eax,8),%eax
	movl %eax,-4(%ebp)
	cmpl $0,20(%eax)
	jle .L174
	pushl $10
	movl 16(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -4(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl $MM_RTHeapStats+1364,%ebx
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl -4(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+1604
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $32,%esp
	movl 12(%eax),%eax
	pushl %eax
	call RTHeapStats__TypeName
	pushl $18
	pushl %eax
	call RTHeapStats__PadText
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $16,%esp
	movl (%eax),%eax
	testl %eax,%eax
	jne .L175
	pushl $8340
	call _m3_fault
	.align 16
.L175:
	movl (%eax),%eax
	pushl %eax
	call RTHeapStats__PathTail
	pushl %eax
	call RTHeapStats__PutStr
	pushl $MM_RTHeapStats+1620
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl -4(%ebp),%edx
	movl (%edx),%eax
	movl 8(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1380
	movl MI_RTIO+56,%eax
	call *%eax
	addl $24,%esp
.L174:
	incl %esi
.L171:
	cmpl %edi,%esi
	jle .L172
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 RTHeapStats__ReportUnitRoots,.Lfe21-RTHeapStats__ReportUnitRoots
	.align 16
	.type	 RTHeapStats__ReportStacks,@function
RTHeapStats__ReportStacks:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	pushl $MM_RTHeapStats+1636
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1692
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1752
	movl MI_RTIO+56,%eax
	call *%eax
	xorl %ebx,%ebx
	movl L_3,%esi
	decl %esi
	addl $12,%esp
	jmp .L178
	.align 16
.L179:
	cmpl $19,%ebx
	jle .L180
	pushl $8577
	call _m3_fault
	.align 16
.L180:
	leal (%ebx,%ebx,2),%eax
	leal L_3+4(,%eax,8),%eax
	movl %eax,-4(%ebp)
	cmpl $0,20(%eax)
	jle .L181
	pushl $10
	movl 16(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -4(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1820
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $1
	movl -4(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1840
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $32,%esp
	movl 4(%eax),%eax
	cmpl $199,%eax
	jbe .L182
	pushl $8689
	call _m3_fault
	.align 16
.L182:
	leal (%eax,%eax,2),%eax
	pushl $0
	movl L_6+4(,%eax,8),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+968
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $12,%esp
	movl 4(%eax),%eax
	cmpl $199,%eax
	jbe .L183
	pushl $8721
	call _m3_fault
	.align 16
.L183:
	leal (%eax,%eax,2),%eax
	pushl $0
	movl L_6+8(,%eax,8),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+1856
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $12,%esp
	movl 4(%eax),%eax
	cmpl $199,%eax
	jbe .L184
	pushl $8753
	call _m3_fault
	.align 16
.L184:
	leal (%eax,%eax,2),%eax
	movb $1,L_6+20(,%eax,8)
.L181:
	incl %ebx
.L178:
	cmpl %esi,%ebx
	jle .L179
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 RTHeapStats__ReportStacks,.Lfe22-RTHeapStats__ReportStacks
	.align 16
	.type	 RTHeapStats__ReportStackRoots,@function
RTHeapStats__ReportStackRoots:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RTHeapStats+1872
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $L_4
	call RTHeapStats__ReportStackInfo
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 RTHeapStats__ReportStackRoots,.Lfe23-RTHeapStats__ReportStackRoots
	.align 16
	.type	 RTHeapStats__ReportStackPages,@function
RTHeapStats__ReportStackPages:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RTHeapStats+1920
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $L_5
	call RTHeapStats__ReportStackInfo
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 RTHeapStats__ReportStackPages,.Lfe24-RTHeapStats__ReportStackPages
	.align 16
	.type	 RTHeapStats__ReportStackInfo,@function
RTHeapStats__ReportStackInfo:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $MM_RTHeapStats+1436
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+1512
	movl MI_RTIO+56,%eax
	call *%eax
	movl 8(%ebp),%eax
	xorl %esi,%esi
	addl $8,%esp
	movl (%eax),%edi
	decl %edi
	jmp .L189
	.align 16
.L190:
	cmpl $19,%esi
	jle .L191
	pushl $9121
	call _m3_fault
	.align 16
.L191:
	leal (%esi,%esi,2),%eax
	sall $3,%eax
	addl $4,%eax
	addl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	cmpl $0,20(%eax)
	jle .L192
	pushl $10
	movl 16(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $10
	movl -4(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl $MM_RTHeapStats+1364,%ebx
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl -4(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+1604
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $32,%esp
	movl 12(%eax),%eax
	pushl %eax
	call RTHeapStats__TypeName
	pushl $18
	pushl %eax
	call RTHeapStats__PadText
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $16,%esp
	cmpl $0,8(%eax)
	je .L193
	pushl $MM_RTHeapStats+1980
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%edx
	addl $4,%esp
	movl 4(%edx),%eax
	cmpl $199,%eax
	jbe .L194
	pushl $9297
	call _m3_fault
	.align 16
.L194:
	pushl $0
	leal (%eax,%eax,2),%eax
	movl 8(%edx),%edx
	movl L_6+4(,%eax,8),%eax
	subl %eax,%edx
	movl %edx,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $8,%esp
	jmp .L195
	.align 16
.L193:
	pushl $MM_RTHeapStats+1996
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L195:
	pushl $MM_RTHeapStats+2020
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl -4(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1380
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	addl $16,%esp
	movl 4(%eax),%eax
	cmpl $199,%eax
	jbe .L196
	pushl $9409
	call _m3_fault
	.align 16
.L196:
	leal (%eax,%eax,2),%eax
	movb $1,L_6+20(,%eax,8)
.L192:
	incl %esi
.L189:
	cmpl %edi,%esi
	jle .L190
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 RTHeapStats__ReportStackInfo,.Lfe25-RTHeapStats__ReportStackInfo
	.align 16
	.type	 RTHeapStats__DumpStacks,@function
RTHeapStats__DumpStacks:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
.L199:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $L_5
	call RTHeapStats__MinInfoBytes
	movl $1024,%edx
	sarl $1,%eax
	addl $4,%esp
	cmpl %edx,%eax
	jle .L200
	movl %eax,MM_RTHeapStats+556
	jmp .L201
	.align 16
.L200:
	movl %edx,MM_RTHeapStats+556
.L201:
	pushl $L_4
	call RTHeapStats__MinInfoBytes
	movl $1024,%edx
	sarl $1,%eax
	addl $4,%esp
	cmpl %edx,%eax
	jle .L202
	movl %eax,MM_RTHeapStats+560
	jmp .L203
	.align 16
.L202:
	movl %edx,MM_RTHeapStats+560
.L203:
	pushl $MM_RTHeapStats+2040
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+2112
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl MM_RTHeapStats+560,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+2184
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl MM_RTHeapStats+556,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+2236
	movl MI_RTIO+56,%eax
	call *%eax
	xorl %ebx,%ebx
	movl MM_RTHeapStats+340,%esi
	decl %esi
	addl $32,%esp
	jmp .L204
	.align 16
.L205:
	cmpl $199,%ebx
	jle .L206
	pushl $9793
	call _m3_fault
	.align 16
.L206:
	leal (%ebx,%ebx,2),%eax
	sall $3,%eax
	cmpb $0,L_6+20(%eax)
	je .L207
	addl $L_6,%eax
	pushl %eax
	call RTHeapStats__DumpStack
	addl $4,%esp
.L207:
	incl %ebx
.L204:
	cmpl %esi,%ebx
	jle .L205
.L210:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 RTHeapStats__DumpStacks,.Lfe26-RTHeapStats__DumpStacks
	.align 16
	.type	 RTHeapStats__MinInfoBytes,@function
RTHeapStats__MinInfoBytes:
	pushl %ebp
	movl %esp,%ebp
	movl $2147483647,%ecx
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movl (%eax),%ebx
	decl %ebx
	jmp .L212
	.align 16
.L213:
	cmpl $19,%edx
	jle .L214
	pushl $9921
	call _m3_fault
	.align 16
.L214:
	leal (%edx,%edx,2),%eax
	sall $3,%eax
	addl 8(%ebp),%eax
	movl 24(%eax),%eax
	cmpl %eax,%ecx
	jle .L215
	movl %eax,%ecx
.L215:
	incl %edx
.L212:
	cmpl %ebx,%edx
	jle .L213
	movl %ecx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 RTHeapStats__MinInfoBytes,.Lfe27-RTHeapStats__MinInfoBytes
	.align 16
	.type	 RTHeapStats__DumpStack,@function
RTHeapStats__DumpStack:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L218:
	movl $5,-40(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-44(%ebp)
	leal -44(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %esi,%esi
	movl %esi,-36(%ebp)
	movl %esi,-32(%ebp)
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movb $1,-48(%ebp)
	movl 8(%ebp),%edx
	movl MM_RTHeapStats+336,%eax
	cmpl %eax,(%edx)
	jne .L220
	leal -36(%ebp),%eax
	pushl %eax
	call RTStack__CurFrame
	addl $4,%esp
	jmp .L221
	.align 16
.L220:
	movl 12(%edx),%eax
	movl 16(%edx),%edx
	subl %eax,%edx
	pushl %edx
	pushl %eax
	leal -36(%ebp),%eax
	pushl %eax
	call RTStack__GetThreadFrame
	addl $12,%esp
.L221:
	cmpl $0,-36(%ebp)
	jne .L219
	movb $0,-48(%ebp)
.L219:
	pushl $MM_RTHeapStats+2288
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+2352
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $1
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+2376
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+968
	movl MI_RTIO+56,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+2400
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+2416
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+2468
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTHeapStats+2524
	movl MI_RTIO+56,%eax
	call *%eax
	movl 8(%ebp),%eax
	addl $24,%esp
	movl 4(%eax),%esi
	jmp .L223
	.align 16
.L224:
	cmpb $0,-48(%ebp)
	je .L225
	jmp .L226
	.align 16
.L227:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RTProcedureSRC+48,%eax
	call *%eax
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L228
	movl -36(%ebp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	cmpl $4095,%eax
	jg .L228
	pushl $5
	movl 8(%ebp),%eax
	movl -32(%ebp),%ecx
	movl 4(%eax),%eax
	subl %eax,%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+2588
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	pushl %eax
	call RTHeapStats__PutStr
	movl -12(%ebp),%eax
	addl $16,%esp
	cmpl %eax,-36(%ebp)
	je .L229
	pushl $MM_RTHeapStats+1620
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl -12(%ebp),%eax
	movl -36(%ebp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $12,%esp
.L229:
	cmpl $0,-8(%ebp)
	je .L230
	pushl $MM_RTHeapStats+2640
	movl MI_RTIO+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	call RTHeapStats__PathTail
	pushl %eax
	call RTHeapStats__PutStr
	addl $12,%esp
.L230:
	pushl $MM_RTHeapStats+1380
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L228:
	leal -24(%ebp),%eax
	pushl %eax
	leal -36(%ebp),%eax
	pushl %eax
	call RTStack__PrevFrame
	movl -24(%ebp),%eax
	movl %eax,-36(%ebp)
	movl -20(%ebp),%eax
	movl %eax,-32(%ebp)
	movl -16(%ebp),%eax
	movl %eax,-28(%ebp)
	addl $8,%esp
.L226:
	cmpl %esi,-32(%ebp)
	ja .L225
	movl -36(%ebp),%edx
	testl %edx,%edx
	jne .L227
.L225:
	testl %esi,%esi
	jne .L233
	pushl $10932
	call _m3_fault
	.align 16
.L233:
	movl (%esi),%edi
	movl MM_RTHeapStats+172,%eax
	cmpl %edi,%eax
	ja .L234
	cmpl %edi,MM_RTHeapStats+176
	jbe .L234
	movl %edi,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	movl %eax,%ebx
	sarl $13,%ebx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L235
	pushl $10980
	call _m3_fault
	.align 16
.L235:
	cmpl %ebx,4(%eax)
	ja .L236
	pushl $10978
	call _m3_fault
	.align 16
.L236:
	movl (%eax),%eax
	movb (%eax,%ebx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $3,%eax
	jne .L234
	movl %esi,MM_RTHeapStats+188
	movl %edi,MM_RTHeapStats+192
	call RTHeapStats__ResetVisitCounts
	pushl %ebx
	call RTHeapStats__VisitPage
	movl MM_RTHeapStats+200,%ecx
	movl %ecx,-56(%ebp)
	movl MM_RTHeapStats+196,%ecx
	movl %ecx,-60(%ebp)
	call RTHeapStats__ResetVisitCounts
	pushl %esi
	pushl $0
	call RTHeapStats__Visit
	movl MM_RTHeapStats+200,%ebx
	movl MM_RTHeapStats+196,%ecx
	movl %ecx,-52(%ebp)
	addl $12,%esp
	movl -56(%ebp),%ecx
	cmpl %ecx,MM_RTHeapStats+556
	jle .L238
	cmpl %ebx,MM_RTHeapStats+560
	jg .L234
.L238:
	pushl $5
	movl 8(%ebp),%eax
	movl %esi,%ecx
	subl 4(%eax),%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $8
	movl -52(%ebp),%ecx
	pushl %ecx
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $8
	pushl %ebx
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $7
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_RTIO+60,%eax
	call *%eax
	addl $32,%esp
	pushl $8
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+1364
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+1604
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %edi
	call RTHeapStats__TypeName
	pushl %eax
	movl MI_RTIO+56,%eax
	call *%eax
	addl $32,%esp
	pushl $MM_RTHeapStats+1380
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L234:
	cmpb $0,-48(%ebp)
	jne .L240
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_RTProcedureSRC+48,%eax
	call *%eax
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L240
	movl %edi,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	cmpl $4095,%eax
	jg .L240
	pushl $5
	movl 8(%ebp),%eax
	movl %esi,%ecx
	subl 4(%eax),%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapStats+2660
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapStats+2712
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	pushl %eax
	call RTHeapStats__PutStr
	addl $28,%esp
	cmpl %edi,-12(%ebp)
	je .L242
	pushl $MM_RTHeapStats+1620
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl %edi,%eax
	subl -12(%ebp),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $12,%esp
.L242:
	cmpl $0,-8(%ebp)
	je .L243
	pushl $MM_RTHeapStats+2640
	movl MI_RTIO+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	call RTHeapStats__PathTail
	pushl %eax
	call RTHeapStats__PutStr
	addl $12,%esp
.L243:
	pushl $MM_RTHeapStats+1380
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L240:
	addl $4,%esi
.L223:
	movl 8(%ebp),%eax
	cmpl %esi,8(%eax)
	jae .L224
.L245:
	movl -44(%ebp),%eax
	leal -72(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 RTHeapStats__DumpStack,.Lfe28-RTHeapStats__DumpStack
	.align 16
	.type	 RTHeapStats__PathTail,@function
RTHeapStats__PathTail:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl %edx,%eax
	testl %edx,%edx
	jne .L248
	jmp .L254
	.align 16
.L249:
	cmpb $47,%cl
	jne .L251
	leal 1(%eax),%edx
.L251:
	incl %eax
.L248:
	testl %eax,%eax
	jne .L252
	pushl $12020
	call _m3_fault
	.align 16
.L252:
	movb (%eax),%cl
	testb %cl,%cl
	jne .L249
	movl %edx,%eax
.L254:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 RTHeapStats__PathTail,.Lfe29-RTHeapStats__PathTail
	.align 16
	.type	 RTHeapStats__PutStr,@function
RTHeapStats__PutStr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L255
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
.L255:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 RTHeapStats__PutStr,.Lfe30-RTHeapStats__PutStr
	.align 16
	.type	 RTHeapStats__PadText,@function
RTHeapStats__PadText:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	addl $8,%esp
	jmp .L258
	.align 16
.L259:
	pushl $32
	movl MI_RTIO+44,%eax
	call *%eax
	incl %esi
	addl $4,%esp
.L258:
	cmpl %edi,%esi
	jl .L259
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 RTHeapStats__PadText,.Lfe31-RTHeapStats__PadText
	.align 16
	.type	 M_RTHeapStats_t0d2aa179_LINK,@function
M_RTHeapStats_t0d2aa179_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTHeapStats+920,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTHeapStats+484,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe32:
	.size	 M_RTHeapStats_t0d2aa179_LINK,.Lfe32-M_RTHeapStats_t0d2aa179_LINK
	.align 16
	.type	 M_RTHeapStats_t8e0ff5ca_LINK,@function
M_RTHeapStats_t8e0ff5ca_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTHeapStats+912,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTHeapStats+360,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe33:
	.size	 M_RTHeapStats_t8e0ff5ca_LINK,.Lfe33-M_RTHeapStats_t8e0ff5ca_LINK
	.align 16
	.type	 M_RTHeapStats_tb6c76823_LINK,@function
M_RTHeapStats_tb6c76823_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTHeapStats+904,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTHeapStats+356,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe34:
	.size	 M_RTHeapStats_tb6c76823_LINK,.Lfe34-M_RTHeapStats_tb6c76823_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeapStats
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe35:
	.size	 _m3_fault,.Lfe35-_m3_fault
.globl MM_RTHeapStats
.data
	.align 4
	.type	 MM_RTHeapStats,@object
	.size	 MM_RTHeapStats,3684
MM_RTHeapStats:
	.long MM_RTHeapStats+3503
	.long MM_RTHeapStats+64
	.long MM_RTHeapStats+904
	.zero	8
	.long MM_RTHeapStats+3120
	.zero	4
	.long MM_RTHeapStats+3496
	.long MM_RTHeapStats+3496
	.zero	8
	.long L_1
	.long L_2
	.long L_3
	.long L_4
	.long L_5
	.zero	8
	.long 465865088
.byte 56
.byte 84
.byte 12
.byte 24
.byte 184
.byte 221
.byte 200
.byte 3
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTHeapStats+3676
	.zero	40
	.long MM_RTHeapStats+204
	.zero	44
	.long 1863055891
.byte 133
.byte 198
.byte 48
.byte 102
.byte 150
.byte 60
.byte 59
.byte 9
	.zero	8
	.long 40004
	.long 4
	.zero	20
	.long MM_RTHeapStats+3670
	.zero	40
	.long MM_RTHeapStats+364
	.zero	36
	.long L_6
	.long RTHeapStats__ResetVisitCounts
	.long RTHeapStats__AddVisit
	.long RTHeapStats__Visit
	.long RTHeapStats__InnerVisit
	.zero	8
	.long 690206623
.byte 228
.byte 52
.byte 218
.byte 38
.byte 123
.byte 131
.byte 249
.byte 15
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_RTHeapStats+3668
	.zero	40
	.long MM_RTHeapStats+584
	.long RTHeapStats__DataSize
	.long RTHeapStats__TypeName
	.long RTHeapStats__GetUnitStats
	.long RTHeapStats__GetUnitRootStats
	.long RTHeapStats__VisitRoot
	.zero	8
	.long RTHeapStats__GetThreads
	.long RTHeapStats__GetThread
	.long RTHeapStats__GetThreadStats
	.long RTHeapStats__ScanPages
	.long RTHeapStats__GetThreadRootStats
	.long RTHeapStats__ScanThreadRoots
	.long RTHeapStats__GetThreadPageStats
	.long RTHeapStats__ScanThreadPageRoots
	.long RTHeapStats__VisitPage
	.long RTHeapStats__ReportUnits
	.long RTHeapStats__ReportUnitRoots
	.long RTHeapStats__ReportStacks
	.long RTHeapStats__ReportStackRoots
	.long RTHeapStats__ReportStackPages
	.long RTHeapStats__ReportStackInfo
	.zero	8
	.long RTHeapStats__DumpStacks
	.long RTHeapStats__MinInfoBytes
	.long RTHeapStats__DumpStack
	.long RTHeapStats__PathTail
	.long RTHeapStats__PutStr
	.zero	8
	.long -1228445661
.byte 62
.byte 229
.byte 199
.byte 178
.byte 29
.byte 141
.byte 0
.byte 4
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTHeapStats+3665
	.zero	4
	.long M_RTHeapStats_tb6c76823_LINK
	.long -1093060005
	.zero	20
	.long MM_RTHeapStats+688
	.zero	8
	.long -1911556662
.byte 211
.byte 239
.byte 137
.byte 152
.byte 25
.byte 26
.byte 134
.byte 22
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTHeapStats+3662
	.zero	4
	.long M_RTHeapStats_t8e0ff5ca_LINK
	.long -1093060005
	.zero	20
	.long MM_RTHeapStats+792
	.zero	8
	.long 220897657
.byte 70
.byte 239
.byte 235
.byte 21
.byte 63
.byte 78
.byte 193
.byte 24
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTHeapStats+3659
	.zero	4
	.long M_RTHeapStats_t0d2aa179_LINK
	.long -1093060005
	.zero	24
	.long RTHeapStats__PadText
	.long RTHeapStats__ReportReachable
	.long MM_RTHeapStats+912
	.long -1228445661
	.long MM_RTHeapStats+920
	.long -1911556662
	.long MM_RTHeapStats+928
	.long 220897657
	.long MM_RTHeapStats+936
	.long 1863055891
	.long MM_RTHeapStats+1044
	.long 465865088
	.long 2
	.long MM_RTHeapStats+956
	.long 8
	.ascii	"\nHEAP: "
	.zero	1
	.long 2
	.long MM_RTHeapStats+976
	.long 5
	.ascii	" .. "
	.zero	4
	.long 2
	.long MM_RTHeapStats+996
	.long 5
	.ascii	" => "
	.zero	4
	.long 2
	.long MM_RTHeapStats+1016
	.long 2
	.ascii	"."
	.zero	3
	.long 2
	.long MM_RTHeapStats+1032
	.long 9
	.ascii	" Mbytes\n"
	.zero	8
	.long 1355119930
	.long 2
	.long MM_RTHeapStats+1064
	.long 15
	.ascii	"  ** warning: "
	.zero	2
	.long 2
	.long MM_RTHeapStats+1092
	.long 21
	.ascii	" paths, longer than "
	.zero	4
	.long 2
	.long MM_RTHeapStats+1128
	.long 24
	.ascii	" REFs, were truncated.\n"
	.zero	1
	.long 2
	.long MM_RTHeapStats+1164
	.long 2
	.ascii	"?"
	.zero	3
	.long 2
	.long MM_RTHeapStats+1180
	.long 10
	.ascii	"Threads: "
	.zero	3
	.long 2
	.long MM_RTHeapStats+1204
	.long 4
	.ascii	"  ("
	.zero	1
	.long 2
	.long MM_RTHeapStats+1220
	.long 10
	.ascii	" ignored)"
	.zero	3
	.long 2
	.long MM_RTHeapStats+1244
	.long 18
	.ascii	"\nModule globals:\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+1276
	.long 28
	.ascii	" # objects   # bytes  unit\n"
	.zero	1
	.long 2
	.long MM_RTHeapStats+1316
	.long 41
	.ascii	" ---------  --------  -----------------\n"
	.zero	4
	.long 2
	.long MM_RTHeapStats+1372
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_RTHeapStats+1388
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+1404
	.long 25
	.ascii	"\nGlobal variable roots:\n"
	.zero	4
	.long 2
	.long MM_RTHeapStats+1444
	.long 63
	.ascii	" # objects   # bytes         ref type                locatio"
	.ascii	"n\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+1520
	.long 79
	.ascii	" ---------  --------  ---------- -----------------   -------"
	.ascii	"-----------------\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+1612
	.long 2
	.ascii	" "
	.zero	3
	.long 2
	.long MM_RTHeapStats+1628
	.long 4
	.ascii	" + "
	.zero	1
	.long 2
	.long MM_RTHeapStats+1644
	.long 42
	.ascii	"\nThread stacks (conservative page scan):\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+1700
	.long 46
	.ascii	" # objects   # bytes  thread  [stack bounds]\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+1760
	.long 55
	.ascii	" ---------  --------  -------------------------------\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+1828
	.long 5
	.ascii	"  T."
	.zero	4
	.long 2
	.long MM_RTHeapStats+1848
	.long 4
	.ascii	"  ["
	.zero	1
	.long 2
	.long MM_RTHeapStats+1864
	.long 3
	.ascii	"]\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+1880
	.long 35
	.ascii	"\nThread stack roots (optimistic):\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+1928
	.long 47
	.ascii	"\nThread stack roots (conservative page scan):\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+1988
	.long 4
	.ascii	"sp+"
	.zero	1
	.long 2
	.long MM_RTHeapStats+2004
	.long 9
	.ascii	"register"
	.zero	4
	.long 2
	.long MM_RTHeapStats+2028
	.long 7
	.ascii	" in T."
	.zero	2
	.long 2
	.long MM_RTHeapStats+2048
	.long 58
	.ascii	"\n-------------------------------------------------------\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+2120
	.long 57
	.ascii	"Thread stack dumps with references that reach\nat least:\n"
	.zero	4
	.long 2
	.long MM_RTHeapStats+2192
	.long 37
	.ascii	" bytes under the optimistic scan or\n"
	.zero	4
	.long 2
	.long MM_RTHeapStats+2244
	.long 38
	.ascii	" bytes under the conservative scan.\n\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+2296
	.long 51
	.ascii	"-------------------------------------------------\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+2360
	.long 10
	.ascii	"Thread T."
	.zero	3
	.long 2
	.long MM_RTHeapStats+2384
	.long 10
	.ascii	"  stack ["
	.zero	3
	.long 2
	.long MM_RTHeapStats+2408
	.long 4
	.ascii	"]\n\n"
	.zero	1
	.long 2
	.long MM_RTHeapStats+2424
	.long 38
	.ascii	" stack    optimistic    conservative\n"
	.zero	3
	.long 2
	.long MM_RTHeapStats+2476
	.long 43
	.ascii	"offset  #objs # bytes  #objs # bytes  ref\n"
	.zero	2
	.long 2
	.long MM_RTHeapStats+2532
	.long 52
	.ascii	"------  ----- -------  ----- -------  ------------\n"
	.zero	1
	.long 2
	.long MM_RTHeapStats+2596
	.long 38
	.ascii	"                                 --> "
	.zero	3
	.long 2
	.long MM_RTHeapStats+2648
	.long 5
	.ascii	" in "
	.zero	4
	.long 2
	.long MM_RTHeapStats+2668
	.long 38
	.ascii	"                                 [PC "
	.zero	3
	.long 2
	.long MM_RTHeapStats+2720
	.long 3
	.ascii	"] "
	.zero	2
	.ascii	"PadText"
	.zero	1
	.ascii	"PutStr"
	.zero	1
	.ascii	"PathTail"
	.zero	1
	.ascii	"DumpStack"
	.zero	1
	.ascii	"MinInfoBytes"
	.zero	1
	.ascii	"DumpStacks"
	.zero	1
	.ascii	"ReportStackInfo"
	.zero	1
	.ascii	"ReportStackPages"
	.zero	1
	.ascii	"ReportStackRoots"
	.zero	1
	.ascii	"ReportStacks"
	.zero	1
	.ascii	"ReportUnitRoots"
	.zero	1
	.ascii	"ReportUnits"
	.zero	1
	.ascii	"VisitPage"
	.zero	1
	.ascii	"ScanThreadPageRoots"
	.zero	1
	.ascii	"GetThreadPageStats"
	.zero	1
	.ascii	"ScanThreadRoots"
	.zero	1
	.ascii	"GetThreadRootStats"
	.zero	1
	.ascii	"ScanPages"
	.zero	1
	.ascii	"GetThreadStats"
	.zero	1
	.ascii	"GetThread"
	.zero	1
	.ascii	"GetThreads"
	.zero	1
	.ascii	"VisitRoot"
	.zero	1
	.ascii	"GetUnitRootStats"
	.zero	1
	.ascii	"GetUnitStats"
	.zero	1
	.ascii	"TypeName"
	.zero	1
	.ascii	"DataSize"
	.zero	1
	.ascii	"InnerVisit"
	.zero	1
	.ascii	"Visit"
	.zero	1
	.ascii	"AddVisit"
	.zero	1
	.ascii	"ResetVisitCounts"
	.zero	1
	.ascii	"ReportReachable"
	.zero	1
	.long RTHeapStats__PadText
	.long MM_RTHeapStats+2724
	.zero	4
	.long RTHeapStats__PutStr
	.long MM_RTHeapStats+2732
	.zero	4
	.long RTHeapStats__PathTail
	.long MM_RTHeapStats+2739
	.zero	4
	.long RTHeapStats__DumpStack
	.long MM_RTHeapStats+2748
	.zero	4
	.long RTHeapStats__MinInfoBytes
	.long MM_RTHeapStats+2758
	.zero	4
	.long RTHeapStats__DumpStacks
	.long MM_RTHeapStats+2771
	.zero	4
	.long RTHeapStats__ReportStackInfo
	.long MM_RTHeapStats+2782
	.zero	4
	.long RTHeapStats__ReportStackPages
	.long MM_RTHeapStats+2798
	.zero	4
	.long RTHeapStats__ReportStackRoots
	.long MM_RTHeapStats+2815
	.zero	4
	.long RTHeapStats__ReportStacks
	.long MM_RTHeapStats+2832
	.zero	4
	.long RTHeapStats__ReportUnitRoots
	.long MM_RTHeapStats+2845
	.zero	4
	.long RTHeapStats__ReportUnits
	.long MM_RTHeapStats+2861
	.zero	4
	.long RTHeapStats__VisitPage
	.long MM_RTHeapStats+2873
	.zero	4
	.long RTHeapStats__ScanThreadPageRoots
	.long MM_RTHeapStats+2883
	.zero	4
	.long RTHeapStats__GetThreadPageStats
	.long MM_RTHeapStats+2903
	.zero	4
	.long RTHeapStats__ScanThreadRoots
	.long MM_RTHeapStats+2922
	.zero	4
	.long RTHeapStats__GetThreadRootStats
	.long MM_RTHeapStats+2938
	.zero	4
	.long RTHeapStats__ScanPages
	.long MM_RTHeapStats+2957
	.zero	4
	.long RTHeapStats__GetThreadStats
	.long MM_RTHeapStats+2967
	.zero	4
	.long RTHeapStats__GetThread
	.long MM_RTHeapStats+2982
	.zero	4
	.long RTHeapStats__GetThreads
	.long MM_RTHeapStats+2992
	.zero	4
	.long RTHeapStats__VisitRoot
	.long MM_RTHeapStats+3003
	.zero	4
	.long RTHeapStats__GetUnitRootStats
	.long MM_RTHeapStats+3013
	.zero	4
	.long RTHeapStats__GetUnitStats
	.long MM_RTHeapStats+3030
	.zero	4
	.long RTHeapStats__TypeName
	.long MM_RTHeapStats+3043
	.zero	4
	.long RTHeapStats__DataSize
	.long MM_RTHeapStats+3052
	.zero	4
	.long RTHeapStats__InnerVisit
	.long MM_RTHeapStats+3061
	.zero	4
	.long RTHeapStats__Visit
	.long MM_RTHeapStats+3072
	.zero	4
	.long RTHeapStats__AddVisit
	.long MM_RTHeapStats+3078
	.zero	4
	.long RTHeapStats__ResetVisitCounts
	.long MM_RTHeapStats+3087
	.zero	4
	.long RTHeapStats__ReportReachable
	.long MM_RTHeapStats+3104
	.long MI_RTHeapStats+44
	.zero	4
.byte 43
.byte 68
.byte 1
.byte 4
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHeapStats.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
.byte 1
.byte 10
.byte 0
.byte 1
.byte 10
.byte 0
.byte 5
.byte 0
.byte 1
.byte 5
.byte 27
.byte 17
.byte 39
.byte 0
.byte 24
.byte 1
.byte 14
.byte 0
.byte 0
	.zero	3
	.local	L_1
	.comm	L_1,484,4
	.local	L_2
	.comm	L_2,484,4
	.local	L_3
	.comm	L_3,484,4
	.local	L_4
	.comm	L_4,484,4
	.local	L_5
	.comm	L_5,484,4
	.local	L_6
	.comm	L_6,4800,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
