	.file	"RTException.mc"
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
.section	.rodata
	.align 4
	.type	 L_1.0,@object
	.size	 L_1.0,28
L_1.0:
	.long .L8
	.long .L9
	.long .L10
	.long .L10
	.long .L11
	.long .L12
	.long .L10
.text
	.align 16
	.type	 RTException__Raise,@function
RTException__Raise:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MI_ThreadF+44,%eax
	xorl %ebx,%ebx
	call *%eax
	movl %eax,%esi
	cmpb $0,MM_RTException+44
	je .L4
	pushl $MM_RTException+156
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTException+180
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+200
	movl MI_RTIO+56,%eax
	call *%eax
	addl $20,%esp
	testl %edi,%edi
	jne .L3
	pushl $500
	call _m3_fault
	.align 16
.L3:
	movl (%edi),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTException+216
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	call RTException__DumpStack
	addl $20,%esp
.L4:
	testl %esi,%esi
	jne .L6
	pushl %esi
	pushl %edi
	call RTException__NoHandler
	addl $8,%esp
	testl %esi,%esi
	jne .L6
	pushl $644
	call _m3_fault
	.align 16
.L6:
	movl 4(%esi),%eax
	testl %eax,%eax
	jl .L7
	cmpl $6,%eax
	jg .L7
	jmp *L_1.0(,%eax,4)
	.align 16
.L8:
	testl %esi,%esi
	jne .L13
	pushl $676
	call _m3_fault
	.align 16
.L13:
	movl 8(%esi),%ebx
	jmp .L14
	.align 16
.L15:
	cmpl %edi,%eax
	jne .L17
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	call RTException__ResumeRaise
	addl $8,%esp
.L17:
	addl $4,%ebx
.L14:
	testl %ebx,%ebx
	jne .L18
	pushl $692
	call _m3_fault
	.align 16
.L18:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L15
	jmp .L20
	.align 16
.L9:
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	call RTException__ResumeRaise
	addl $8,%esp
.L10:
	jmp .L20
	.align 16
.L11:
	testl %esi,%esi
	jne .L21
	pushl $900
	call _m3_fault
	.align 16
.L21:
	movl 8(%esi),%ebx
	testl %ebx,%ebx
	jne .L24
	pushl $1
	pushl %edi
	call RTException__NoHandler
	addl $8,%esp
.L23:
	testl %ebx,%ebx
	jne .L24
	pushl $948
	call _m3_fault
	.align 16
.L24:
	cmpl $0,(%ebx)
	jne .L26
	pushl $1
	pushl %edi
	call RTException__NoHandler
	addl $8,%esp
.L26:
	cmpl %edi,(%ebx)
	je .L20
	addl $4,%ebx
	jmp .L23
	.align 16
.L12:
	pushl $1
	pushl %edi
	call RTException__NoHandler
	addl $8,%esp
	jmp .L20
	.align 16
.L7:
	call RTException__BadStack
.L20:
	testl %esi,%esi
	jne .L29
	pushl $1108
	call _m3_fault
	.align 16
.L29:
	movl (%esi),%esi
	jmp .L4
	.align 16
.Lfe1:
	.size	 RTException__Raise,.Lfe1-RTException__Raise
.section	.rodata
	.align 4
	.type	 L_2.1,@object
	.size	 L_2.1,28
L_2.1:
	.long .L38
	.long .L39
	.long .L39
	.long .L40
	.long .L41
	.long .L37
	.long .L42
.text
	.align 16
	.type	 RTException__ResumeRaise,@function
RTException__ResumeRaise:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MI_ThreadF+44,%eax
	xorl %ebx,%ebx
	call *%eax
	movl %eax,%esi
	cmpb $0,MM_RTException+44
	je .L34
	pushl $MM_RTException+252
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTException+180
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+200
	movl MI_RTIO+56,%eax
	call *%eax
	addl $20,%esp
	testl %edi,%edi
	jne .L33
	pushl $1300
	call _m3_fault
	.align 16
.L33:
	movl (%edi),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTException+216
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	call RTException__DumpStack
	addl $20,%esp
.L34:
	testl %esi,%esi
	jne .L36
	call RTException__BadStack
	testl %esi,%esi
	jne .L36
	pushl $1444
	call _m3_fault
	.align 16
.L36:
	movl 4(%esi),%eax
	testl %eax,%eax
	jl .L37
	cmpl $6,%eax
	jg .L37
	jmp *L_2.1(,%eax,4)
	.align 16
.L39:
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	pushl %esi
	call RTException__InvokeHandler
	addl $12,%esp
	jmp .L43
	.align 16
.L38:
	testl %esi,%esi
	jne .L44
	pushl $1524
	call _m3_fault
	.align 16
.L44:
	movl 8(%esi),%ebx
	jmp .L45
	.align 16
.L46:
	cmpl %edi,%eax
	jne .L48
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	pushl %esi
	call RTException__InvokeHandler
	addl $12,%esp
.L48:
	addl $4,%ebx
.L45:
	testl %ebx,%ebx
	jne .L49
	pushl $1540
	call _m3_fault
	.align 16
.L49:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L46
	jmp .L43
	.align 16
.L40:
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	pushl %esi
	call RTException__InvokeFinallyHandler
	addl $12,%esp
	jmp .L43
	.align 16
.L42:
	pushl %esi
	call RTException__ReleaseLock
	addl $4,%esp
.L41:
	jmp .L43
	.align 16
.L37:
	call RTException__BadStack
.L43:
	testl %esi,%esi
	jne .L51
	pushl $1764
	call _m3_fault
	.align 16
.L51:
	movl (%esi),%eax
	pushl %eax
	movl MI_ThreadF+48,%eax
	call *%eax
	addl $4,%esp
	movl (%esi),%esi
	jmp .L34
	.align 16
.Lfe2:
	.size	 RTException__ResumeRaise,.Lfe2-RTException__ResumeRaise
	.align 16
	.type	 RTException__InvokeHandler,@function
RTException__InvokeHandler:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	movl %edi,%ebx
	cmpb $0,MM_RTException+44
	je .L55
	pushl $MM_RTException+280
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTException+180
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+200
	movl MI_RTIO+56,%eax
	call *%eax
	addl $20,%esp
	testl %esi,%esi
	jne .L56
	pushl $1956
	call _m3_fault
	.align 16
.L56:
	movl (%esi),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTException+216
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+312
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+336
	movl MI_RTIO+56,%eax
	call *%eax
	addl $32,%esp
	testl %ebx,%ebx
	jne .L57
	pushl $2004
	call _m3_fault
	.align 16
.L57:
	pushl $0
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $12,%esp
.L55:
	testl %edi,%edi
	jne .L58
	pushl $2068
	call _m3_fault
	.align 16
.L58:
	movl (%edi),%eax
	pushl %eax
	movl MI_ThreadF+48,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jne .L59
	pushl $2084
	call _m3_fault
	.align 16
.L59:
	movl %esi,12(%ebx)
	movl 16(%ebp),%edx
	movl %edx,16(%ebx)
	pushl $1
	leal 20(%ebx),%eax
	pushl %eax
	call _longjmp
	.align 16
.Lfe3:
	.size	 RTException__InvokeHandler,.Lfe3-RTException__InvokeHandler
	.align 16
	.type	 RTException__InvokeFinallyHandler,@function
RTException__InvokeFinallyHandler:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl %edi,%esi
	cmpb $0,MM_RTException+44
	je .L63
	pushl $MM_RTException+360
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTException+180
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+200
	movl MI_RTIO+56,%eax
	call *%eax
	addl $20,%esp
	testl %ebx,%ebx
	jne .L64
	pushl $2324
	call _m3_fault
	.align 16
.L64:
	movl (%ebx),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTException+216
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+312
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+336
	movl MI_RTIO+56,%eax
	call *%eax
	addl $32,%esp
	testl %edi,%edi
	jne .L65
	pushl $2372
	call _m3_fault
	.align 16
.L65:
	pushl $0
	movl 4(%edi),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $12,%esp
.L63:
	movl $-1,-12(%ebp)
	testl %esi,%esi
	jne .L66
	pushl $2484
	call _m3_fault
	.align 16
.L66:
	movl 8(%esi),%eax
	movl %eax,-8(%ebp)
	movl 12(%esi),%eax
	movl %eax,-4(%ebp)
	testl %edi,%edi
	jne .L68
	pushl $2532
	call _m3_fault
	.align 16
.L68:
	movl (%edi),%eax
	pushl %eax
	movl MI_ThreadF+48,%eax
	call *%eax
	leal -12(%ebp),%eax
	pushl %eax
	call RTException__CallProc
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTException__InvokeFinallyHandler,.Lfe4-RTException__InvokeFinallyHandler
	.align 16
	.type	 RTException__CallProc,@function
RTException__CallProc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L70
	cmpl $-1,(%eax)
	jne .L70
	movl 8(%eax),%ecx
	movl 4(%eax),%eax
.L70:
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTException__CallProc,.Lfe5-RTException__CallProc
	.align 16
	.type	 RTException__ReleaseLock,@function
RTException__ReleaseLock:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,%esi
	cmpb $0,MM_RTException+44
	je .L73
	pushl $MM_RTException+400
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTException+312
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+424
	movl MI_RTIO+56,%eax
	call *%eax
	addl $20,%esp
	testl %ebx,%ebx
	jne .L74
	pushl $2804
	call _m3_fault
	.align 16
.L74:
	pushl $0
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $12,%esp
.L73:
	testl %esi,%esi
	jne .L75
	pushl $2868
	call _m3_fault
	.align 16
.L75:
	movl (%esi),%eax
	pushl %eax
	movl MI_ThreadF+48,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jne .L76
	pushl $2884
	call _m3_fault
	.align 16
.L76:
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Thread+164,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTException__ReleaseLock,.Lfe6-RTException__ReleaseLock
	.align 16
	.type	 RTException__NoHandler,@function
RTException__NoHandler:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movb 12(%ebp),%bl
	pushl %eax
	call RTException__EName
	movl %eax,%edx
	addl $4,%esp
	testb %bl,%bl
	je .L78
	pushl $MM_RTException+472
	pushl %eax
	pushl $MM_RTException+448
	jmp .L80
	.align 16
.L78:
	pushl $MM_RTException+544
	pushl %edx
	pushl $MM_RTException+508
.L80:
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTException__NoHandler,.Lfe7-RTException__NoHandler
	.align 16
	.type	 RTException__BadStack,@function
RTException__BadStack:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $0
	pushl $MM_RTException+560
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTException__BadStack,.Lfe8-RTException__BadStack
	.align 16
	.type	 RTException__SanityCheck,@function
RTException__SanityCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_ThreadF+44,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L83
	.align 16
.L84:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jl .L86
	cmpl $6,%eax
	jle .L87
.L86:
	call RTException__BadStack
.L87:
	testl %ebx,%ebx
	jne .L88
	pushl $3348
	call _m3_fault
	.align 16
.L88:
	movl (%ebx),%ebx
.L83:
	testl %ebx,%ebx
	jne .L84
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTException__SanityCheck,.Lfe9-RTException__SanityCheck
.section	.rodata
	.align 4
	.type	 L_3.2,@object
	.size	 L_3.2,28
L_3.2:
	.long .L106
	.long .L107
	.long .L108
	.long .L109
	.long .L110
	.long .L111
	.long .L112
.text
	.align 16
	.type	 RTException__DumpStack,@function
RTException__DumpStack:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl MI_ThreadF+44,%eax
	movl $0,-4(%ebp)
	call *%eax
	movl %eax,%esi
	cmpb $0,MM_RTException+44
	jne .L91
	cmpb $0,MM_RTException+45
	jne .L91
	pushl $MM_RTException+596
	movl MI_RTIO+56,%eax
	call *%eax
	jmp .L90
	.align 16
.L91:
	movl MI_RTOS+56,%eax
	call *%eax
	pushl $MM_RTException+656
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTException+736
	movl MI_RTIO+56,%eax
	call *%eax
	leal -36(%ebp),%ebx
	pushl %ebx
	call RTStack__CurFrame
	leal -24(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTStack__PrevFrame
	addl $20,%esp
	jmp .L93
	.align 16
.L94:
	leal -12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RTProcedureSRC+48,%eax
	call *%eax
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L95
	pushl $MM_RTException+116
	pushl %eax
	call strcmp
	addl $8,%esp
	testl %eax,%eax
	je .L96
.L95:
	pushl $10
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	movl $MM_RTException+776,%edi
	pushl %edi
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $10
	movl -20(%ebp),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	addl $20,%esp
	cmpl $0,-12(%ebp)
	je .L97
	movl -4(%ebp),%eax
	movl -24(%ebp),%ebx
	subl %eax,%ebx
	js .L97
	cmpl $2047,%ebx
	jg .L97
	pushl %edi
	movl MI_RTIO+56,%eax
	call *%eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	je .L99
	pushl $MM_RTException+792
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+64,%eax
	call *%eax
	addl $12,%esp
.L99:
	cmpl $0,-8(%ebp)
	je .L97
	pushl $MM_RTException+808
	movl MI_RTIO+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	addl $8,%esp
.L97:
	leal -24(%ebp),%eax
	pushl %eax
	call RTStack__ProcName
	movl %eax,-12(%ebp)
	addl $4,%esp
	testl %eax,%eax
	je .L101
	pushl $16
	pushl $MM_RTException+100
	pushl %eax
	call memcmp
	addl $12,%esp
	testl %eax,%eax
	je .L101
	pushl $MM_RTException+828
	movl MI_RTIO+56,%eax
	call *%eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTException+844
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
.L101:
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl %eax
	call RTStack__PrevFrame
	addl $12,%esp
.L93:
	movl -24(%ebp),%edx
	testl %edx,%edx
	jne .L94
.L96:
	pushl $MM_RTException+860
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	pushl $MM_RTException+940
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	jmp .L102
	.align 16
.L103:
	pushl $0
	pushl %esi
	movl MI_RTIO+68,%eax
	call *%eax
	addl $8,%esp
	movl 4(%esi),%eax
	testl %eax,%eax
	jl .L105
	cmpl $6,%eax
	jg .L105
	jmp *L_3.2(,%eax,4)
	.align 16
.L106:
	pushl $MM_RTException+1020
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L117
	pushl $4628
	call _m3_fault
	.align 16
.L107:
	pushl $MM_RTException+1048
	jmp .L122
	.align 16
.L108:
	pushl $MM_RTException+1080
	jmp .L122
	.align 16
.L109:
	pushl $MM_RTException+1108
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L115
	pushl $4756
	call _m3_fault
	.align 16
.L115:
	pushl $0
	movl 8(%esi),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTException+1144
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	pushl $0
	movl 12(%esi),%eax
	jmp .L123
	.align 16
.L110:
	pushl $MM_RTException+1168
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L117
	pushl $4852
	call _m3_fault
	.align 16
.L117:
	movl 8(%esi),%eax
	pushl %eax
	call RTException__DumpHandles
	addl $4,%esp
	jmp .L114
	.align 16
.L111:
	pushl $MM_RTException+1192
.L122:
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	jmp .L114
	.align 16
.L112:
	pushl $MM_RTException+1216
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L118
	pushl $4948
	call _m3_fault
	.align 16
.L118:
	pushl $0
	movl 8(%esi),%eax
.L123:
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	addl $8,%esp
	jmp .L114
	.align 16
.L105:
	pushl $MM_RTException+1244
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L119
	pushl $5012
	call _m3_fault
	.align 16
.L119:
	pushl $0
	movl 4(%esi),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTException+1292
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	jmp .L120
	.align 16
.L114:
	pushl $MM_RTException+236
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L121
	pushl $5092
	call _m3_fault
	.align 16
.L121:
	movl (%esi),%esi
.L102:
	testl %esi,%esi
	jne .L103
.L120:
	pushl $MM_RTException+860
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	movl MI_RTOS+60,%eax
	call *%eax
.L90:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTException__DumpStack,.Lfe10-RTException__DumpStack
	.align 16
	.type	 RTException__DumpHandles,@function
RTException__DumpHandles:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movb $1,-4(%ebp)
	pushl $MM_RTException+1312
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	je .L125
	jmp .L126
	.align 16
.L127:
	cmpb $0,-4(%ebp)
	jne .L128
	pushl $MM_RTException+1328
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L128:
	movb $0,-4(%ebp)
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L130
	pushl $5364
	call _m3_fault
	.align 16
.L130:
	movl (%eax),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	addl $4,%ebx
	addl $4,%esp
.L126:
	testl %ebx,%ebx
	jne .L131
	pushl $5300
	call _m3_fault
	.align 16
.L131:
	cmpl $0,(%ebx)
	jne .L127
.L125:
	pushl $MM_RTException+1344
	movl MI_RTIO+56,%eax
	call *%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTException__DumpHandles,.Lfe11-RTException__DumpHandles
	.align 16
	.type	 RTException__EName,@function
RTException__EName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L134
	pushl $5508
	call _m3_fault
	.align 16
.L134:
	movl (%eax),%eax
	pushl %eax
	movl MI_M3toC+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTException__EName,.Lfe12-RTException__EName
	.align 16
	.type	 _INITM_RTException,@function
_INITM_RTException:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	cmpb $0,MM_RTException+45
	jne .L136
	pushl $MM_RTException+1360
	movl MI_RTParams+52,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L136:
	movb %al,MM_RTException+45
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 _INITM_RTException,.Lfe13-_INITM_RTException
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTException
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_RTException
.data
	.align 4
	.type	 MM_RTException,@object
	.size	 MM_RTException,1852
MM_RTException:
	.long MM_RTException+1692
	.zero	16
	.long MM_RTException+1532
	.zero	16
	.long _INITM_RTException
	.zero	4
	.long MM_RTException+52
	.ascii	"RTException.OUCH"
	.zero	4
	.long RTException__InvokeHandler
	.long RTException__InvokeFinallyHandler
	.long RTException__CallProc
	.long RTException__ReleaseLock
	.long RTException__NoHandler
	.long RTException__BadStack
	.long RTException__SanityCheck
.byte 115
.byte 116
.byte 97
.byte 116
.byte 105
.byte 99
.byte 32
.byte 112
.byte 114
.byte 111
.byte 99
.byte 101
.byte 100
.byte 117
.byte 114
.byte 101
.byte 95
.byte 73
.byte 78
.byte 73
.byte 84
.byte 77
.byte 95
.byte 82
.byte 84
.byte 76
.byte 105
.byte 110
.byte 107
.byte 101
.byte 114
	.zero	1
	.long RTException__DumpHandles
	.long RTException__EName
	.long RTException__Raise
	.long RTException__ResumeRaise
	.long RTException__DumpStack
	.long 2
	.long MM_RTException+164
	.long 12
	.ascii	"---> RAISE:"
	.zero	1
	.long 2
	.long MM_RTException+188
	.long 6
	.ascii	"  en="
	.zero	3
	.long 2
	.long MM_RTException+208
	.long 2
	.ascii	" "
	.zero	3
	.long 2
	.long MM_RTException+224
	.long 7
	.ascii	"  arg="
	.zero	2
	.long 2
	.long MM_RTException+244
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_RTException+260
	.long 14
	.ascii	"---> RERAISE:"
	.zero	3
	.long 2
	.long MM_RTException+288
	.long 20
	.ascii	"--> INVOKE HANDLER:"
	.zero	1
	.long 2
	.long MM_RTException+320
	.long 9
	.ascii	"  frame="
	.zero	4
	.long 2
	.long MM_RTException+344
	.long 9
	.ascii	"  class="
	.zero	4
	.long 2
	.long MM_RTException+368
	.long 28
	.ascii	"--> INVOKE FINALLY HANDLER:"
	.zero	1
	.long 2
	.long MM_RTException+408
	.long 12
	.ascii	"--> UNLOCK:"
	.zero	1
	.long 2
	.long MM_RTException+432
	.long 9
	.ascii	"  mutex="
	.zero	4
	.long 2
	.long MM_RTException+456
	.long 12
	.ascii	"Exception \""
	.zero	1
	.long 2
	.long MM_RTException+480
	.long 21
	.ascii	"\" not in RAISES list"
	.zero	4
	.long 2
	.long MM_RTException+516
	.long 22
	.ascii	"Unhandled exception \""
	.zero	3
	.long 2
	.long MM_RTException+552
	.long 2
	.ascii	"\""
	.zero	3
	.long 2
	.long MM_RTException+568
	.long 24
	.ascii	"corrupt exception stack"
	.zero	1
	.long 2
	.long MM_RTException+604
	.long 48
	.ascii	"  use option @M3stackdump to get a stack trace\n"
	.zero	1
	.long 2
	.long MM_RTException+664
	.long 66
	.ascii	"------------------------- STACK DUMP -----------------------"
	.ascii	"----\n"
	.zero	3
	.long 2
	.long MM_RTException+744
	.long 26
	.ascii	"----PC----  ----SP----  \n"
	.zero	3
	.long 2
	.long MM_RTException+784
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_RTException+800
	.long 4
	.ascii	" + "
	.zero	1
	.long 2
	.long MM_RTException+816
	.long 5
	.ascii	" in "
	.zero	4
	.long 2
	.long MM_RTException+836
	.long 4
	.ascii	"  ["
	.zero	1
	.long 2
	.long MM_RTException+852
	.long 2
	.ascii	"]"
	.zero	3
	.long 2
	.long MM_RTException+868
	.long 66
	.ascii	"------------------------------------------------------------"
	.ascii	"----\n"
	.zero	3
	.long 2
	.long MM_RTException+948
	.long 66
	.ascii	"------------------ EXCEPTION HANDLER STACK -----------------"
	.ascii	"----\n"
	.zero	3
	.long 2
	.long MM_RTException+1028
	.long 13
	.ascii	" TRY-EXCEPT "
	.zero	4
	.long 2
	.long MM_RTException+1056
	.long 18
	.ascii	" TRY-EXCEPT-ELSE "
	.zero	3
	.long 2
	.long MM_RTException+1088
	.long 14
	.ascii	" TRY-FINALLY "
	.zero	3
	.long 2
	.long MM_RTException+1116
	.long 22
	.ascii	" TRY-FINALLY  proc = "
	.zero	3
	.long 2
	.long MM_RTException+1152
	.long 12
	.ascii	"   frame = "
	.zero	1
	.long 2
	.long MM_RTException+1176
	.long 9
	.ascii	" RAISES "
	.zero	4
	.long 2
	.long MM_RTException+1200
	.long 11
	.ascii	" RAISES {}"
	.zero	2
	.long 2
	.long MM_RTException+1224
	.long 16
	.ascii	" LOCK  mutex = "
	.zero	1
	.long 2
	.long MM_RTException+1252
	.long 36
	.ascii	" *** BAD EXCEPTION RECORD, class = "
	.zero	1
	.long 2
	.long MM_RTException+1300
	.long 6
	.ascii	" ***\n"
	.zero	3
	.long 2
	.long MM_RTException+1320
	.long 3
	.ascii	" {"
	.zero	2
	.long 2
	.long MM_RTException+1336
	.long 3
	.ascii	", "
	.zero	2
	.long 2
	.long MM_RTException+1352
	.long 2
	.ascii	"}"
	.zero	3
	.long 2
	.long MM_RTException+1368
	.long 10
	.ascii	"stackdump"
	.zero	3
	.ascii	"_INITM_RTException"
	.zero	1
	.ascii	"EName"
	.zero	1
	.ascii	"DumpHandles"
	.zero	1
	.ascii	"DumpStack"
	.zero	1
	.ascii	"SanityCheck"
	.zero	1
	.ascii	"BadStack"
	.zero	1
	.ascii	"NoHandler"
	.zero	1
	.ascii	"ReleaseLock"
	.zero	1
	.ascii	"CallProc"
	.zero	1
	.ascii	"InvokeFinallyHandler"
	.zero	1
	.ascii	"InvokeHandler"
	.zero	1
	.ascii	"ResumeRaise"
	.zero	1
	.ascii	"Raise"
	.zero	1
	.long _INITM_RTException
	.long MM_RTException+1380
	.zero	4
	.long RTException__EName
	.long MM_RTException+1399
	.zero	4
	.long RTException__DumpHandles
	.long MM_RTException+1405
	.zero	4
	.long RTException__DumpStack
	.long MM_RTException+1417
	.long MI_RTException+364
	.long RTException__SanityCheck
	.long MM_RTException+1427
	.zero	4
	.long RTException__BadStack
	.long MM_RTException+1439
	.zero	4
	.long RTException__NoHandler
	.long MM_RTException+1448
	.zero	4
	.long RTException__ReleaseLock
	.long MM_RTException+1458
	.zero	4
	.long RTException__CallProc
	.long MM_RTException+1470
	.zero	4
	.long RTException__InvokeFinallyHandler
	.long MM_RTException+1479
	.zero	4
	.long RTException__InvokeHandler
	.long MM_RTException+1500
	.zero	4
	.long RTException__ResumeRaise
	.long MM_RTException+1514
	.long MI_RTException+360
	.long RTException__Raise
	.long MM_RTException+1526
	.long MI_RTException+356
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/ex_frame/RTException.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
