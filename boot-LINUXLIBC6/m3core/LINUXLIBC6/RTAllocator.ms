	.file	"RTAllocator.mc"
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
	.type	 RTAllocator__NewTraced,@function
RTAllocator__NewTraced:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %ebx,%ebx
	je .L2
	testl %eax,%eax
	jne .L3
	pushl $500
	call _m3_fault
	.align 16
.L3:
	cmpl $0,20(%eax)
	je .L2
	cmpl $0,44(%eax)
	je .L5
.L2:
	pushl %ebx
	pushl $MM_RTAllocator+208
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L5:
	pushl %esi
	call RTHooks__Allocate
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTAllocator__NewTraced,.Lfe1-RTAllocator__NewTraced
	.align 16
	.type	 RTAllocator__NewUntraced,@function
RTAllocator__NewUntraced:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %ebx,%ebx
	je .L7
	testl %eax,%eax
	jne .L8
	pushl $740
	call _m3_fault
	.align 16
.L8:
	cmpl $0,20(%eax)
	jne .L7
	cmpl $0,52(%eax)
	jne .L7
	cmpl $0,44(%eax)
	je .L11
.L7:
	pushl %ebx
	pushl $MM_RTAllocator+264
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L11:
	pushl %esi
	call RTHooks__AllocateUntracedRef
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTAllocator__NewUntraced,.Lfe2-RTAllocator__NewUntraced
	.align 16
	.type	 RTAllocator__NewUntracedObject,@function
RTAllocator__NewUntracedObject:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %ebx,%ebx
	je .L13
	testl %eax,%eax
	jne .L14
	pushl $964
	call _m3_fault
	.align 16
.L14:
	cmpl $0,20(%eax)
	jne .L13
	cmpl $0,52(%eax)
	jne .L16
.L13:
	pushl %ebx
	pushl $MM_RTAllocator+324
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L16:
	pushl %esi
	call RTHooks__AllocateUntracedObj
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTAllocator__NewUntracedObject,.Lfe3-RTAllocator__NewUntracedObject
	.align 16
	.type	 RTAllocator__NewTracedArray,@function
RTAllocator__NewTracedArray:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %esi,%esi
	je .L18
	testl %eax,%eax
	jne .L19
	pushl $1220
	call _m3_fault
	.align 16
.L19:
	cmpl $0,20(%eax)
	je .L18
	cmpl $0,44(%eax)
	jne .L21
.L18:
	pushl %esi
	pushl $MM_RTAllocator+388
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L21:
	testl %ebx,%ebx
	jne .L22
	pushl $1268
	call _m3_fault
	.align 16
.L22:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	cmpl %eax,44(%ebx)
	je .L23
	pushl %eax
	pushl $MM_RTAllocator+448
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L23:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTHooks__AllocateOpenArray
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTAllocator__NewTracedArray,.Lfe4-RTAllocator__NewTracedArray
	.align 16
	.type	 RTAllocator__NewUntracedArray,@function
RTAllocator__NewUntracedArray:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %esi,%esi
	je .L25
	testl %eax,%eax
	jne .L26
	pushl $1524
	call _m3_fault
	.align 16
.L26:
	cmpl $0,20(%eax)
	jne .L25
	cmpl $0,44(%eax)
	jne .L28
.L25:
	pushl %esi
	pushl $MM_RTAllocator+504
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L28:
	testl %ebx,%ebx
	jne .L29
	pushl $1572
	call _m3_fault
	.align 16
.L29:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	cmpl %eax,44(%ebx)
	je .L30
	pushl %eax
	pushl $MM_RTAllocator+568
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L30:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTHooks__AllocateUntracedOpenArray
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTAllocator__NewUntracedArray,.Lfe5-RTAllocator__NewUntracedArray
	.align 16
	.type	 RTHooks__Allocate,@function
RTHooks__Allocate:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L32
	pushl $1812
	call _m3_fault
	.align 16
.L32:
	movl (%esi),%eax
	cmpl $1048575,%eax
	jbe .L33
	pushl $1809
	call _m3_fault
	.align 16
.L33:
	movl %eax,-8(%ebp)
	movl MI_RTOS+56,%eax
	call *%eax
	movl MI_RT0u+372,%eax
	testl %eax,%eax
	jne .L34
	pushl $1892
	call _m3_fault
	.align 16
.L34:
	movl -8(%ebp),%ecx
	incl (%eax,%ecx,4)
	movl 28(%esi),%edx
	testl %edx,%edx
	jge .L37
	pushl $1905
	call _m3_fault
	.align 16
.L37:
	movl 32(%esi),%eax
	testl %eax,%eax
	jge .L38
	pushl $1905
	call _m3_fault
	.align 16
.L38:
	pushl %eax
	pushl %edx
	movl MI_RTHeapRep+384,%eax
	call *%eax
	movl %eax,%edi
	addl $8,%esp
	cmpl $4095,-8(%ebp)
	jg .L39
	movl -8(%ebp),%ecx
	movl L_1(,%ecx,4),%edx
	testl %edx,%edx
	je .L39
	movl 28(%esi),%eax
	addl $4,%eax
	pushl %eax
	leal -4(%edi),%eax
	pushl %eax
	pushl %edx
	jmp .L64
	.align 16
.L39:
	andb $254,-4(%ebp)
	movl -4(%ebp),%edx
	andl $-2097151,%edx
	movl -8(%ebp),%eax
	andl $1048575,%eax
	addl %eax,%eax
	orl %eax,%edx
	movl %edx,-4(%ebp)
	andb $223,-2(%ebp)
	andb $191,-2(%ebp)
	andb $127,-2(%ebp)
	movb $0,-1(%ebp)
	cmpl $4,%edi
	jne .L44
	pushl $1988
	call _m3_fault
	.align 16
.L44:
	movl -4(%ebp),%eax
	movl %eax,-4(%edi)
	testl %esi,%esi
	jne .L45
	pushl $2020
	call _m3_fault
	.align 16
.L45:
	movl 28(%esi),%eax
	pushl %eax
	pushl %edi
	movl MI_RTMisc+48,%eax
	call *%eax
	addl $8,%esp
	movl 52(%esi),%eax
	testl %eax,%eax
	je .L47
	testl %edi,%edi
	jne .L48
	pushl $2052
	call _m3_fault
	.align 16
.L48:
	movl %eax,(%edi)
.L47:
	movl %esi,%ebx
	jmp .L50
	.align 16
.L51:
	movl 68(%ebx),%eax
	testl %eax,%eax
	je .L55
	pushl %edi
	call *%eax
	addl $4,%esp
.L55:
	movl 80(%ebx),%ebx
.L50:
	testl %ebx,%ebx
	jne .L51
	testl %esi,%esi
	jne .L57
	pushl $2196
	call _m3_fault
	.align 16
.L57:
	movl 28(%esi),%eax
	cmpl $104,%eax
	jg .L43
	cmpl $4095,-8(%ebp)
	jg .L43
	addl $4,%eax
	pushl %eax
	movl MI_RTHeapRep+388,%eax
	call *%eax
	movl -8(%ebp),%ecx
	addl $4,%esp
	movl %eax,L_1(,%ecx,4)
	movl 28(%esi),%eax
	addl $4,%eax
	pushl %eax
	movl L_1(,%ecx,4),%eax
	pushl %eax
	leal -4(%edi),%eax
	pushl %eax
.L64:
	movl MI_RTMisc+44,%eax
	call *%eax
	addl $12,%esp
.L43:
	movl MI_RTOS+60,%eax
	call *%eax
	movl MI_RTAllocator+64,%eax
	testl %eax,%eax
	je .L63
	pushl %edi
	call *%eax
.L63:
	leal -20(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHooks__Allocate,.Lfe6-RTHooks__Allocate
	.align 16
	.type	 RTHooks__AllocateUntracedRef,@function
RTHooks__AllocateUntracedRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,%edi
	testl %ebx,%ebx
	jne .L66
	pushl $2436
	call _m3_fault
	.align 16
.L66:
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_RTHeapRep+388,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	movl (%ebx),%edx
	cmpl $1048575,%edx
	jbe .L68
	pushl $2449
	call _m3_fault
	.align 16
.L68:
	movl MI_RT0u+372,%eax
	testl %eax,%eax
	jne .L69
	pushl $2484
	call _m3_fault
	.align 16
.L69:
	incl (%eax,%edx,4)
	movl 68(%edi),%eax
	testl %eax,%eax
	je .L71
	pushl %esi
	call *%eax
.L71:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTHooks__AllocateUntracedRef,.Lfe7-RTHooks__AllocateUntracedRef
	.align 16
	.type	 RTHooks__AllocateUntracedObj,@function
RTHooks__AllocateUntracedObj:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L74
	pushl $2612
	call _m3_fault
	.align 16
.L74:
	movl 32(%esi),%eax
	movl $4,%ebx
	cmpl %ebx,%eax
	jle .L77
	movl %eax,%ebx
.L77:
	movl 28(%esi),%eax
	addl %ebx,%eax
	pushl %eax
	movl MI_RTHeapRep+388,%eax
	call *%eax
	addl %eax,%ebx
	addl $4,%esp
	movl (%esi),%eax
	cmpl $1048575,%eax
	jbe .L79
	pushl $2641
	call _m3_fault
	.align 16
.L79:
	movl MI_RT0u+372,%edx
	testl %edx,%edx
	jne .L80
	pushl $2692
	call _m3_fault
	.align 16
.L80:
	incl (%edx,%eax,4)
	andb $254,-4(%ebp)
	movl -4(%ebp),%edx
	andl $-2097151,%edx
	andl $1048575,%eax
	addl %eax,%eax
	orl %eax,%edx
	movl %edx,-4(%ebp)
	andb $223,-2(%ebp)
	andb $191,-2(%ebp)
	andb $127,-2(%ebp)
	movb $0,-1(%ebp)
	cmpl $4,%ebx
	jne .L81
	pushl $2708
	call _m3_fault
	.align 16
.L81:
	movl -4(%ebp),%eax
	movl %eax,-4(%ebx)
	movl 52(%esi),%eax
	testl %eax,%eax
	je .L86
	testl %ebx,%ebx
	jne .L84
	pushl $2756
	call _m3_fault
	.align 16
.L84:
	movl %eax,(%ebx)
	jmp .L86
	.align 16
.L87:
	movl 68(%esi),%eax
	testl %eax,%eax
	je .L91
	pushl %ebx
	call *%eax
	addl $4,%esp
.L91:
	movl 80(%esi),%esi
.L86:
	testl %esi,%esi
	jne .L87
	testl %ebx,%ebx
	je .L93
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_RTAllocator+628
	jg .L94
	movl MM_RTAllocator+624,%eax
	cmpl %edx,4(%eax)
	jge .L93
.L94:
	pushl $2853
	call _m3_fault
	.align 16
.L93:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTHooks__AllocateUntracedObj,.Lfe8-RTHooks__AllocateUntracedObj
	.align 16
	.type	 RTHooks__AllocateOpenArray,@function
RTHooks__AllocateOpenArray:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	pushl %eax
	call RTAllocator__OpenArrayCount
	movl %eax,-8(%ebp)
	addl $4,%esp
	testl %esi,%esi
	jne .L97
	pushl $2980
	call _m3_fault
	.align 16
.L97:
	movl -8(%ebp),%eax
	imull 48(%esi),%eax
	movl 28(%esi),%ebx
	addl %eax,%ebx
	movl (%esi),%edi
	cmpl $1048575,%edi
	jbe .L99
	pushl $2993
	call _m3_fault
	.align 16
.L99:
	movl MI_RTOS+56,%eax
	call *%eax
	movl MI_RT0u+372,%eax
	testl %eax,%eax
	jne .L100
	pushl $3060
	call _m3_fault
	.align 16
.L100:
	leal 0(,%edi,4),%edx
	incl (%edx,%eax)
	movl MI_RT0u+376,%eax
	testl %eax,%eax
	jne .L101
	pushl $3076
	call _m3_fault
	.align 16
.L101:
	addl %ebx,(%edx,%eax)
	pushl $4
	pushl %ebx
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L103
	pushl $3089
	call _m3_fault
	.align 16
.L103:
	movl 32(%esi),%edx
	testl %edx,%edx
	jge .L104
	pushl $3089
	call _m3_fault
	.align 16
.L104:
	pushl %edx
	pushl %eax
	movl MI_RTHeapRep+384,%eax
	call *%eax
	movl %eax,%ebx
	andb $254,-4(%ebp)
	movl -4(%ebp),%edx
	andl $-2097151,%edx
	movl %edi,%eax
	andl $1048575,%eax
	addl %eax,%eax
	orl %eax,%edx
	movl %edx,-4(%ebp)
	andb $223,-2(%ebp)
	andb $191,-2(%ebp)
	andb $127,-2(%ebp)
	movb $0,-1(%ebp)
	addl $8,%esp
	cmpl $4,%ebx
	jne .L105
	pushl $3124
	call _m3_fault
	.align 16
.L105:
	movl -4(%ebp),%eax
	movl %eax,-4(%ebx)
	testl %ebx,%ebx
	jne .L106
	pushl $3156
	call _m3_fault
	.align 16
.L106:
	movl 28(%esi),%ecx
	addl %ebx,%ecx
	movl %ecx,(%ebx)
	movl 12(%ebp),%eax
	xorl %edx,%edx
	movl 4(%eax),%edi
	decl %edi
	jmp .L108
	.align 16
.L109:
	leal 4(%ebx,%edx,4),%ecx
	movl %ecx,-12(%ebp)
	testl %ecx,%ecx
	jne .L110
	pushl $3188
	call _m3_fault
	.align 16
.L110:
	movl 12(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L111
	pushl $3186
	call _m3_fault
	.align 16
.L111:
	movl (%eax),%eax
	movl -12(%ebp),%ecx
	movl (%eax,%edx,4),%eax
	movl %eax,(%ecx)
	incl %edx
.L108:
	cmpl %edi,%edx
	jle .L109
	testl %esi,%esi
	jne .L114
	pushl $3236
	call _m3_fault
	.align 16
.L114:
	movl -8(%ebp),%eax
	imull 48(%esi),%eax
	pushl %eax
	movl %ebx,%eax
	addl 28(%esi),%eax
	pushl %eax
	movl MI_RTMisc+48,%eax
	call *%eax
	addl $8,%esp
	jmp .L115
	.align 16
.L116:
	movl 68(%esi),%eax
	testl %eax,%eax
	je .L120
	pushl %ebx
	call *%eax
	addl $4,%esp
.L120:
	movl 80(%esi),%esi
.L115:
	testl %esi,%esi
	jne .L116
	movl MI_RTOS+60,%eax
	call *%eax
	movl MI_RTAllocator+64,%eax
	testl %eax,%eax
	je .L122
	pushl %ebx
	call *%eax
.L122:
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTHooks__AllocateOpenArray,.Lfe9-RTHooks__AllocateOpenArray
	.align 16
	.type	 RTHooks__AllocateUntracedOpenArray,@function
RTHooks__AllocateUntracedOpenArray:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	call RTAllocator__OpenArrayCount
	addl $4,%esp
	testl %ebx,%ebx
	jne .L125
	pushl $3492
	call _m3_fault
	.align 16
.L125:
	imull 48(%ebx),%eax
	movl 28(%ebx),%edi
	addl %eax,%edi
	pushl %edi
	movl MI_RTHeapRep+388,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	movl (%ebx),%edx
	cmpl $1048575,%edx
	jbe .L127
	pushl $3521
	call _m3_fault
	.align 16
.L127:
	movl MI_RT0u+372,%eax
	testl %eax,%eax
	jne .L128
	pushl $3556
	call _m3_fault
	.align 16
.L128:
	sall $2,%edx
	incl (%edx,%eax)
	movl MI_RT0u+376,%eax
	testl %eax,%eax
	jne .L129
	pushl $3572
	call _m3_fault
	.align 16
.L129:
	addl %edi,(%edx,%eax)
	testl %esi,%esi
	jne .L130
	pushl $3588
	call _m3_fault
	.align 16
.L130:
	movl 28(%ebx),%ecx
	addl %esi,%ecx
	movl %ecx,(%esi)
	movl 12(%ebp),%eax
	xorl %edx,%edx
	movl 4(%eax),%edi
	decl %edi
	jmp .L132
	.align 16
.L133:
	leal 4(%esi,%edx,4),%ecx
	movl %ecx,-4(%ebp)
	testl %ecx,%ecx
	jne .L134
	pushl $3620
	call _m3_fault
	.align 16
.L134:
	movl 12(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L135
	pushl $3618
	call _m3_fault
	.align 16
.L135:
	movl (%eax),%eax
	movl -4(%ebp),%ecx
	movl (%eax,%edx,4),%eax
	movl %eax,(%ecx)
	incl %edx
.L132:
	cmpl %edi,%edx
	jle .L133
	jmp .L137
	.align 16
.L138:
	movl 68(%ebx),%eax
	testl %eax,%eax
	je .L142
	pushl %esi
	call *%eax
	addl $4,%esp
.L142:
	movl 80(%ebx),%ebx
.L137:
	testl %ebx,%ebx
	jne .L138
	leal -16(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTHooks__AllocateUntracedOpenArray,.Lfe10-RTHooks__AllocateUntracedOpenArray
	.align 16
	.type	 RTHooks__DisposeUntracedRef,@function
RTHooks__DisposeUntracedRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%eax
	testl %eax,%eax
	je .L144
	pushl %eax
	call free
	movl $0,(%ebx)
.L144:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTHooks__DisposeUntracedRef,.Lfe11-RTHooks__DisposeUntracedRef
	.align 16
	.type	 RTHooks__DisposeUntracedObj,@function
RTHooks__DisposeUntracedObj:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%eax
	testl %eax,%eax
	je .L146
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl $1048575,%eax
	jle .L149
	pushl $3921
	call _m3_fault
	.align 16
.L149:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L150
	pushl $3940
	call _m3_fault
	.align 16
.L150:
	movl 32(%eax),%eax
	movl (%ebx),%edx
	cmpl $4,%eax
	jle .L151
	subl %eax,%edx
	movl %edx,%eax
	jmp .L152
	.align 16
.L151:
	leal -4(%edx),%eax
.L152:
	pushl %eax
	call free
	movl $0,(%ebx)
.L146:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTHooks__DisposeUntracedObj,.Lfe12-RTHooks__DisposeUntracedObj
	.align 16
	.type	 RTAllocator__OpenArrayCount,@function
RTAllocator__OpenArrayCount:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	movl $1,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L154
	.align 16
.L155:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L156
	pushl $4162
	call _m3_fault
	.align 16
.L156:
	movl (%eax),%eax
	leal (%eax,%ebx,4),%edi
	movl (%edi),%eax
	testl %eax,%eax
	jge .L157
	pushl %eax
	pushl $MM_RTAllocator+636
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L157:
	imull (%edi),%esi
	incl %ebx
.L154:
	cmpl %ebx,-4(%ebp)
	jge .L155
	testl %esi,%esi
	jge .L159
	pushl $4273
	call _m3_fault
	.align 16
.L159:
	leal -16(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RTAllocator__OpenArrayCount,.Lfe13-RTAllocator__OpenArrayCount
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTAllocator
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_RTAllocator
.data
	.align 4
	.type	 MM_RTAllocator,@object
	.size	 MM_RTAllocator,1228
MM_RTAllocator:
	.long MM_RTAllocator+1068
	.long MM_RTAllocator+48
	.long MM_RTAllocator+624
	.zero	8
	.long MM_RTAllocator+908
	.zero	20
	.long L_1
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
	.long MM_RTAllocator+1224
	.zero	44
	.long RTAllocator__OpenArrayCount
	.long RTHooks__Allocate
	.long RTHooks__AllocateOpenArray
	.long RTHooks__AllocateUntracedObj
	.long RTHooks__AllocateUntracedRef
	.long RTHooks__AllocateUntracedOpenArray
	.long RTHooks__DisposeUntracedRef
	.long RTHooks__DisposeUntracedObj
	.long RTAllocator__NewTraced
	.long RTAllocator__NewUntraced
	.long RTAllocator__NewUntracedObject
	.long RTAllocator__NewTracedArray
	.long RTAllocator__NewUntracedArray
	.long 2
	.long MM_RTAllocator+216
	.long 43
	.ascii	"RTAllocator.NewTraced: improper typecode: "
	.zero	2
	.long 2
	.long MM_RTAllocator+272
	.long 45
	.ascii	"RTAllocator.NewUntraced: improper typecode: "
	.zero	4
	.long 2
	.long MM_RTAllocator+332
	.long 50
	.ascii	"RTAllocator.NewUntracedObject: improper typecode:"
	.zero	3
	.long 2
	.long MM_RTAllocator+396
	.long 48
	.ascii	"RTAllocator.NewTracedArray: improper typecode: "
	.zero	1
	.long 2
	.long MM_RTAllocator+456
	.long 44
	.ascii	"RTAllocator.NewTracedArray: bad NUMBER(s): "
	.zero	1
	.long 2
	.long MM_RTAllocator+512
	.long 50
	.ascii	"RTAllocator.NewUntracedArray: improper typecode: "
	.zero	3
	.long 2
	.long MM_RTAllocator+576
	.long 46
	.ascii	"RTAllocator.NewUntracedArray: bad NUMBER(s): "
	.zero	7
	.long -1987139703
	.long 2
	.long MM_RTAllocator+644
	.long 43
	.ascii	"negative size passed to NEW (open array): "
	.zero	2
	.ascii	"OpenArrayCount"
	.zero	1
	.ascii	"DisposeUntracedObj"
	.zero	1
	.ascii	"DisposeUntracedRef"
	.zero	1
	.ascii	"AllocateUntracedOpenArray"
	.zero	1
	.ascii	"AllocateOpenArray"
	.zero	1
	.ascii	"AllocateUntracedObj"
	.zero	1
	.ascii	"AllocateUntracedRef"
	.zero	1
	.ascii	"Allocate"
	.zero	1
	.ascii	"NewUntracedArray"
	.zero	1
	.ascii	"NewTracedArray"
	.zero	1
	.ascii	"NewUntracedObject"
	.zero	1
	.ascii	"NewUntraced"
	.zero	1
	.ascii	"NewTraced"
	.zero	3
	.long RTAllocator__OpenArrayCount
	.long MM_RTAllocator+688
	.zero	4
	.long RTHooks__DisposeUntracedObj
	.long MM_RTAllocator+703
	.long MI_RTHooks+104
	.long RTHooks__DisposeUntracedRef
	.long MM_RTAllocator+722
	.long MI_RTHooks+100
	.long RTHooks__AllocateUntracedOpenArray
	.long MM_RTAllocator+741
	.long MI_RTHooks+96
	.long RTHooks__AllocateOpenArray
	.long MM_RTAllocator+767
	.long MI_RTHooks+84
	.long RTHooks__AllocateUntracedObj
	.long MM_RTAllocator+785
	.long MI_RTHooks+88
	.long RTHooks__AllocateUntracedRef
	.long MM_RTAllocator+805
	.long MI_RTHooks+92
	.long RTHooks__Allocate
	.long MM_RTAllocator+825
	.long MI_RTHooks+80
	.long RTAllocator__NewUntracedArray
	.long MM_RTAllocator+834
	.long MI_RTAllocator+60
	.long RTAllocator__NewTracedArray
	.long MM_RTAllocator+851
	.long MI_RTAllocator+56
	.long RTAllocator__NewUntracedObject
	.long MM_RTAllocator+866
	.long MI_RTAllocator+52
	.long RTAllocator__NewUntraced
	.long MM_RTAllocator+884
	.long MI_RTAllocator+48
	.long RTAllocator__NewTraced
	.long MM_RTAllocator+896
	.long MI_RTAllocator+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTAllocator.m3"
	.zero	1
.byte 5
.byte 0
	.zero	2
	.local	L_1
	.comm	L_1,16384,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
