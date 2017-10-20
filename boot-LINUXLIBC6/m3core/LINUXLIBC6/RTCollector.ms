	.file	"RTCollector.mc"
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
	.type	 RTCollector__Disable,@function
RTCollector__Disable:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	call RTCollectorSRC__FinishVM
	incl MI_RTHeapRep+400
	movl MI_RTOS+60,%eax
	movb $0,MM_RTCollector+337
	call *%eax
	cmpb $0,MM_RTCollector+1472
	je .L1
	pushl $0
	call RTCollector__PerfAllow
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTCollector__Disable,.Lfe1-RTCollector__Disable
	.align 16
	.type	 RTCollector__Enable,@function
RTCollector__Enable:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	movl MI_RTHeapRep+400,%eax
	decl %eax
	jns .L4
	pushl $897
	call _m3_fault
	.align 16
.L4:
	movl %eax,MI_RTHeapRep+400
	call RTCollector__CollectEnough
	movl MI_RTOS+60,%eax
	call *%eax
	cmpb $0,MM_RTCollector+1472
	je .L3
	pushl $0
	call RTCollector__PerfAllow
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTCollector__Enable,.Lfe2-RTCollector__Enable
	.align 16
	.type	 RTCollector__DisableMotion,@function
RTCollector__DisableMotion:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	movl MI_RTOS+60,%eax
	incl MI_RTHeapRep+404
	call *%eax
	cmpb $0,MM_RTCollector+1472
	je .L6
	pushl $0
	call RTCollector__PerfAllow
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTCollector__DisableMotion,.Lfe3-RTCollector__DisableMotion
	.align 16
	.type	 RTCollector__EnableMotion,@function
RTCollector__EnableMotion:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	movl MI_RTHeapRep+404,%eax
	decl %eax
	jns .L9
	pushl $1233
	call _m3_fault
	.align 16
.L9:
	movl %eax,MI_RTHeapRep+404
	call RTCollector__CollectEnough
	movl MI_RTOS+60,%eax
	call *%eax
	cmpb $0,MM_RTCollector+1472
	je .L8
	pushl $0
	call RTCollector__PerfAllow
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTCollector__EnableMotion,.Lfe4-RTCollector__EnableMotion
	.align 16
	.type	 RTCollector__Collect,@function
RTCollector__Collect:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	call RTCollector__FinishGC
	call RTCollector__StartGC
	call RTCollector__FinishGC
	movl MI_RTOS+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTCollector__Collect,.Lfe5-RTCollector__Collect
	.align 16
	.type	 RTCollectorSRC__StartCollection,@function
RTCollectorSRC__StartCollection:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	call RTCollector__CollectorOn
	movb MM_RTCollector+324,%dl
	testb %dl,%dl
	jne .L13
	movl MI_RTHeapRep+404,%eax
	negl %eax
	cmpl %eax,MI_RTHeapRep+400
	jne .L13
	movb %dl,MM_RTCollector+337
.L14:
	call RTCollector__CollectSome
	cmpb $0,MM_RTCollector+324
	je .L14
	cmpb $0,MI_RTCollectorSRC+68
	je .L18
	cmpl $0,MI_RTHeapRep+408
	je .L13
.L18:
	call RTCollector__CollectSome
	cmpb $0,MM_RTCollector+324
	jne .L18
.L13:
	call RTCollector__CollectorOff
	movl MI_RTOS+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTCollectorSRC__StartCollection,.Lfe6-RTCollectorSRC__StartCollection
	.align 16
	.type	 RTCollectorSRC__FinishCollection,@function
RTCollectorSRC__FinishCollection:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	call RTCollector__CollectorOn
	jmp .L21
	.align 16
.L22:
	call RTCollector__CollectSome
.L21:
	cmpb $0,MM_RTCollector+324
	jne .L22
	call RTCollector__CollectorOff
	movl MI_RTOS+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTCollectorSRC__FinishCollection,.Lfe7-RTCollectorSRC__FinishCollection
	.align 16
	.type	 RTCollectorSRC__DisableVM,@function
RTCollectorSRC__DisableVM:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	call RTCollectorSRC__FinishVM
	movl MI_RTOS+60,%eax
	incl MI_RTHeapRep+408
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTCollectorSRC__DisableVM,.Lfe8-RTCollectorSRC__DisableVM
	.align 16
	.type	 RTCollectorSRC__EnableVM,@function
RTCollectorSRC__EnableVM:
	pushl %ebp
	movl MI_RTOS+56,%eax
	movl %esp,%ebp
	call *%eax
	movl MI_RTHeapRep+408,%eax
	decl %eax
	jns .L26
	pushl $2449
	call _m3_fault
	.align 16
.L26:
	movl %eax,MI_RTHeapRep+408
	call RTCollector__CollectEnough
	movl MI_RTOS+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTCollectorSRC__EnableVM,.Lfe9-RTCollectorSRC__EnableVM
	.align 16
	.type	 RTCollectorSRC__FinishVM,@function
RTCollectorSRC__FinishVM:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_RTOS+56,%eax
	call *%eax
	call RTCollector__FinishGC
	call RTCollector__CollectorOn
	movl MI_RTHeapRep+44,%ebx
	movl MI_RTHeapRep+48,%esi
	decl %esi
	jmp .L28
	.align 16
.L29:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L30
	pushl $2724
	call _m3_fault
	.align 16
.L30:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L31
	pushl $2722
	call _m3_fault
	.align 16
.L31:
	movl (%eax),%eax
	testb $1,1(%eax,%edx,4)
	je .L32
	pushl %ebx
	call RTCollector__Unprotect
	addl $4,%esp
.L32:
	incl %ebx
.L28:
	cmpl %esi,%ebx
	jle .L29
	call RTCollector__CollectorOff
	movl MI_RTOS+60,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTCollectorSRC__FinishVM,.Lfe10-RTCollectorSRC__FinishVM
	.align 16
	.type	 RTCollectorSRC__StartBackgroundCollection,@function
RTCollectorSRC__StartBackgroundCollection:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_RTOS+56,%eax
	xorb %bl,%bl
	call *%eax
	cmpb $0,MM_RTCollector+44
	jne .L35
	movb $1,%bl
	movb %bl,MM_RTCollector+44
.L35:
	movl MI_RTOS+60,%eax
	call *%eax
	testb %bl,%bl
	je .L34
	movl MM_RTCollector+2672,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl %eax
	movl MI_Thread+148,%eax
	call *%eax
.L34:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTCollectorSRC__StartBackgroundCollection,.Lfe11-RTCollectorSRC__StartBackgroundCollection
	.align 16
	.type	 RTCollector__HeaderOf,@function
RTCollector__HeaderOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	addl $-4,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTCollector__HeaderOf,.Lfe12-RTCollector__HeaderOf
	.align 16
	.type	 RTCollector__ReferentSize,@function
RTCollector__ReferentSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L39
	pushl $4948
	call _m3_fault
	.align 16
.L39:
	movl (%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl $1048575,%eax
	jne .L40
	movl %edx,%eax
	jmp .L56
	.align 16
.L40:
	cmpl $1048574,%eax
	jne .L41
	cmpl $-4,%ebx
	jne .L42
	pushl $5028
	call _m3_fault
	.align 16
.L42:
	movl 4(%ebx),%eax
	addl $-4,%eax
	jns .L56
	pushl $5041
	call _m3_fault
	.align 16
.L41:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L44
	pushl $5092
	call _m3_fault
	.align 16
.L44:
	movl 44(%edx),%esi
	testl %esi,%esi
	jne .L45
	movl 28(%edx),%eax
	testl %eax,%eax
	jge .L56
	pushl $5121
	call _m3_fault
	.align 16
.L45:
	leal 8(%ebx),%ecx
	movl $1,%eax
	xorl %ebx,%ebx
	decl %esi
	jmp .L49
	.align 16
.L50:
	testl %ecx,%ecx
	jne .L51
	pushl $5412
	call _m3_fault
	.align 16
.L51:
	imull (%ecx),%eax
	addl $4,%ecx
	incl %ebx
.L49:
	cmpl %esi,%ebx
	jle .L50
	testl %edx,%edx
	jne .L53
	pushl $5460
	call _m3_fault
	.align 16
.L53:
	imull 48(%edx),%eax
	pushl $4
	addl 28(%edx),%eax
	pushl %eax
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L55
	pushl $5505
	call _m3_fault
	.align 16
.L55:
.L56:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RTCollector__ReferentSize,.Lfe13-RTCollector__ReferentSize
	.align 16
	.type	 RTCollector__ReferentToPage,@function
RTCollector__ReferentToPage:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	shrl $13,%edx
	movl MI_RTHeapRep+44,%ecx
	cmpl %ecx,%edx
	jl .L58
	cmpl %edx,MI_RTHeapRep+48
	jle .L58
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L59
	pushl $5684
	call _m3_fault
	.align 16
.L59:
	movl %edx,%ebx
	subl %ecx,%ebx
	movl %ebx,%ecx
	cmpl %ecx,4(%eax)
	ja .L60
	pushl $5682
	call _m3_fault
	.align 16
.L60:
	movl (%eax),%eax
	testb $3,(%eax,%ecx,4)
	jne .L61
.L58:
	xorl %eax,%eax
	jmp .L63
	.align 16
.L61:
	cmpl $524287,%edx
	jbe .L62
	pushl $5713
	call _m3_fault
	.align 16
.L62:
	movl %edx,%eax
.L63:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 RTCollector__ReferentToPage,.Lfe14-RTCollector__ReferentToPage
	.align 16
	.type	 RTCollector__HeaderToPage,@function
RTCollector__HeaderToPage:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	shrl $13,%edx
	movl MI_RTHeapRep+44,%ecx
	cmpl %ecx,%edx
	jl .L65
	cmpl %edx,MI_RTHeapRep+48
	jle .L65
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L66
	pushl $5844
	call _m3_fault
	.align 16
.L66:
	movl %edx,%ebx
	subl %ecx,%ebx
	movl %ebx,%ecx
	cmpl %ecx,4(%eax)
	ja .L67
	pushl $5842
	call _m3_fault
	.align 16
.L67:
	movl (%eax),%eax
	testb $3,(%eax,%ecx,4)
	jne .L68
.L65:
	xorl %eax,%eax
	jmp .L70
	.align 16
.L68:
	cmpl $524287,%edx
	jbe .L69
	pushl $5873
	call _m3_fault
	.align 16
.L69:
	movl %edx,%eax
.L70:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 RTCollector__HeaderToPage,.Lfe15-RTCollector__HeaderToPage
	.align 16
	.type	 RTCollector__PageToHeader,@function
RTCollector__PageToHeader:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	sall $13,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 RTCollector__PageToHeader,.Lfe16-RTCollector__PageToHeader
	.align 16
	.type	 RTCollector__PageToAddress,@function
RTCollector__PageToAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	sall $13,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 RTCollector__PageToAddress,.Lfe17-RTCollector__PageToAddress
	.align 16
	.type	 RTCollector__Move,@function
RTCollector__Move:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl %ecx,-12(%ebp)
	testl %ecx,%ecx
	jne .L74
	pushl $6468
	call _m3_fault
	.align 16
.L74:
	movl -12(%ebp),%edi
	movl (%edi),%edi
	movl %edi,-8(%ebp)
	testl %edi,%edi
	je .L73
	pushl %edi
	call RTCollector__ReferentToPage
	movl %eax,%esi
	movl %esi,-16(%ebp)
	addl $4,%esp
	testl %esi,%esi
	je .L73
	movl %esi,%ebx
	subl MI_RTHeapRep+44,%ebx
	pushl %edi
	call RTCollector__HeaderOf
	movl %eax,-32(%ebp)
	movl MI_RTHeapRep+156,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L77
	pushl $6628
	call _m3_fault
	.align 16
.L77:
	movl 4(%eax),%ecx
	movl %ecx,-28(%ebp)
	cmpl %ecx,%ebx
	jb .L78
	pushl $6626
	call _m3_fault
	.align 16
.L78:
	movl (%eax),%edx
	xorl %eax,%eax
	movb (%edx,%ebx,4),%al
	andl $3,%eax
	cmpl $2,%eax
	jne .L73
	leal 1(%esi),%eax
	cmpl %eax,MI_RTHeapRep+48
	jle .L80
	leal 1(%ebx),%eax
	cmpl %eax,-28(%ebp)
	ja .L82
	pushl $6674
	call _m3_fault
	.align 16
.L82:
	testb $2,5(%edx,%ebx,4)
	je .L80
	cmpl $0,-32(%ebp)
	jne .L83
	pushl $6708
	call _m3_fault
	.align 16
.L83:
	movl -32(%ebp),%edi
	movl (%edi),%eax
	sall $11,%eax
	shrl $12,%eax
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L84
	pushl $6740
	call _m3_fault
	.align 16
.L84:
	cmpl $0,60(%eax)
	jne .L85
	cmpl $0,80(%eax)
	jne .L85
	orb $3,-4(%ebp)
	xorl %edx,%edx
	movb -4(%ebp),%dl
	andb $251,%dl
	xorl %eax,%eax
	movb MM_RTCollector+339,%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,-4(%ebp)
	orb $8,-4(%ebp)
	xorl %eax,%eax
	movb -4(%ebp),%al
	andb $143,%al
	orb $32,%al
	movb %al,-4(%ebp)
	andb $127,-4(%ebp)
	andb $254,-3(%ebp)
	andb $253,-3(%ebp)
	andl $-536869889,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	call RTCollector__PromotePage
	jmp .L73
	.align 16
.L85:
	orb $3,-4(%ebp)
	xorl %edx,%edx
	movb -4(%ebp),%dl
	andb $251,%dl
	xorl %eax,%eax
	movb MM_RTCollector+339,%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,-4(%ebp)
	andb $247,-4(%ebp)
	xorl %eax,%eax
	movb -4(%ebp),%al
	andb $143,%al
	orb $32,%al
	movb %al,-4(%ebp)
	orb $128,-4(%ebp)
	andb $254,-3(%ebp)
	andb $253,-3(%ebp)
	andl $-536869889,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%ecx
	pushl %ecx
	call RTCollector__PromotePage
	movl MI_RTHeapRep+156,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L88
	pushl $6900
	call _m3_fault
	.align 16
.L88:
	cmpl %ebx,4(%eax)
	ja .L89
	pushl $6898
	call _m3_fault
	.align 16
.L89:
	movl (%eax),%eax
	leal (%eax,%ebx,4),%edx
	movl MM_RTCollector+1668,%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%edx),%edi
	andl $-536869889,%edi
	orl %edi,%eax
	movl %eax,(%edx)
	movl -16(%ebp),%ecx
	movl %ecx,MM_RTCollector+1668
	jmp .L73
	.align 16
.L80:
	cmpl $0,-32(%ebp)
	jne .L91
	pushl $6964
	call _m3_fault
	.align 16
.L91:
	movl -32(%ebp),%edi
	testb $1,(%edi)
	je .L92
	cmpl $0,-12(%ebp)
	jne .L93
	pushl $6996
	call _m3_fault
	.align 16
.L93:
	movl -12(%ebp),%ebx
	cmpl $0,-8(%ebp)
	jne .L94
	pushl $6996
	call _m3_fault
	.align 16
.L94:
	movl -8(%ebp),%ecx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	jmp .L73
	.align 16
.L92:
	movl -32(%ebp),%edi
	movl (%edi),%eax
	sall $11,%eax
	shrl $12,%eax
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-20(%ebp)
	pushl %edi
	call RTCollector__ReferentSize
	movl %eax,-24(%ebp)
	addl $8,%esp
	testl %ebx,%ebx
	jne .L96
	pushl $7124
	call _m3_fault
	.align 16
.L96:
	cmpl $0,60(%ebx)
	jne .L100
	cmpl $0,80(%ebx)
	je .L103
.L100:
	movl 32(%ebx),%eax
	testl %eax,%eax
	jge .L101
	pushl $7137
	call _m3_fault
	.align 16
.L101:
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call RTCollector__AllocForImpureCopy
	jmp .L112
	.align 16
.L103:
	movl 32(%ebx),%eax
	testl %eax,%eax
	jge .L104
	pushl $7169
	call _m3_fault
	.align 16
.L104:
	pushl %eax
	movl -24(%ebp),%edi
	pushl %edi
	call RTCollector__AllocForPureCopy
.L112:
	movl %eax,%ebx
	movl %ebx,%esi
	addl $8,%esp
	pushl %esi
	call RTCollector__HeaderOf
	movl %eax,%ebx
	movl -24(%ebp),%eax
	addl $4,%eax
	pushl %eax
	pushl %ebx
	movl -32(%ebp),%ecx
	pushl %ecx
	movl MI_RTMisc+44,%eax
	call *%eax
	addl $16,%esp
	cmpl $0,-20(%ebp)
	jne .L105
	pushl $7284
	call _m3_fault
	.align 16
.L105:
	movl -20(%ebp),%edi
	cmpl $0,44(%edi)
	je .L106
	testl %esi,%esi
	jne .L107
	pushl $7316
	call _m3_fault
	.align 16
.L107:
	movl -20(%ebp),%ecx
	movl 28(%ecx),%ecx
	addl %esi,%ecx
	movl %ecx,(%esi)
.L106:
	cmpl $0,-32(%ebp)
	jne .L109
	pushl $7348
	call _m3_fault
	.align 16
.L109:
	movl -32(%ebp),%edi
	orb $1,(%edi)
	cmpl $0,-8(%ebp)
	jne .L110
	pushl $7364
	call _m3_fault
	.align 16
.L110:
	movl -8(%ebp),%ecx
	movl %esi,(%ecx)
	cmpl $0,-12(%ebp)
	jne .L111
	pushl $7380
	call _m3_fault
	.align 16
.L111:
	movl -12(%ebp),%edi
	movl %esi,(%edi)
.L73:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 RTCollector__Move,.Lfe18-RTCollector__Move
	.align 16
	.type	 RTCollector__Moved,@function
RTCollector__Moved:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L120
	pushl %ebx
	call RTCollector__ReferentToPage
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L120
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L116
	pushl $7636
	call _m3_fault
	.align 16
.L116:
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L117
	pushl $7634
	call _m3_fault
	.align 16
.L117:
	movl (%eax),%eax
	movb (%eax,%edx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $2,%eax
	jne .L120
	pushl %ebx
	call RTCollector__HeaderOf
	addl $4,%esp
	testl %eax,%eax
	jne .L119
	pushl $7716
	call _m3_fault
	.align 16
.L119:
	movb (%eax),%al
	andl $255,%eax
	andl $1,%eax
	je .L121
.L120:
	movl $1,%eax
.L121:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 RTCollector__Moved,.Lfe19-RTCollector__Moved
	.align 16
	.type	 RTCollector__NoteStackLocations,@function
RTCollector__NoteStackLocations:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L123:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%esi
	movl MI_RTHeapRep+44,%eax
	pushl %eax
	call RTCollector__PageToAddress
	movl %eax,-16(%ebp)
	movl MI_RTHeapRep+48,%eax
	pushl %eax
	call RTCollector__PageToAddress
	movl %eax,-20(%ebp)
	addl $8,%esp
	jmp .L124
	.align 16
.L125:
	testl %esi,%esi
	jne .L126
	pushl $8116
	call _m3_fault
	.align 16
.L126:
	movl (%esi),%eax
	cmpl %eax,-16(%ebp)
	ja .L127
	cmpl %eax,-20(%ebp)
	jbe .L127
	sarl $13,%eax
	cmpl $524287,%eax
	jbe .L128
	pushl $8145
	call _m3_fault
	.align 16
.L128:
	movl %eax,%ecx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L129
	pushl $8164
	call _m3_fault
	.align 16
.L129:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L130
	pushl $8162
	call _m3_fault
	.align 16
.L130:
	movl (%eax),%eax
	movb (%eax,%edx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $2,%eax
	jne .L127
	pushl %ecx
	call RTCollector__FirstPage
	movl %eax,%ebx
	movl MI_RTHeapRep+156,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L132
	pushl $8212
	call _m3_fault
	.align 16
.L132:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L133
	pushl $8210
	call _m3_fault
	.align 16
.L133:
	movl (%eax),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	andl $3,%eax
	cmpl $2,%eax
	je .L135
	pushl $8208
	call _m3_fault
	.align 16
.L135:
	testb $8,%dl
	je .L137
	orb $3,-12(%ebp)
	xorl %edx,%edx
	movb -12(%ebp),%dl
	andb $251,%dl
	xorl %eax,%eax
	movb MM_RTCollector+339,%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	orb $8,-12(%ebp)
	xorl %eax,%eax
	movb -12(%ebp),%al
	andb $143,%al
	orb $16,%al
	movb %al,-12(%ebp)
	andb $127,-12(%ebp)
	andb $254,-11(%ebp)
	andb $253,-11(%ebp)
	andl $-536869889,-12(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTCollector__PromotePage
	addl $8,%esp
	jmp .L127
	.align 16
.L137:
	orb $3,-12(%ebp)
	xorl %edx,%edx
	movb -12(%ebp),%dl
	andb $251,%dl
	xorl %eax,%eax
	movb MM_RTCollector+339,%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	andb $247,-12(%ebp)
	xorl %eax,%eax
	movb -12(%ebp),%al
	andb $143,%al
	orb $16,%al
	movb %al,-12(%ebp)
	orb $128,-12(%ebp)
	andb $254,-11(%ebp)
	andb $253,-11(%ebp)
	andl $-536869889,-12(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTCollector__PromotePage
	movl MI_RTHeapRep+156,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L139
	pushl $8388
	call _m3_fault
	.align 16
.L139:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L140
	pushl $8386
	call _m3_fault
	.align 16
.L140:
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl MM_RTCollector+1668,%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%edx),%ecx
	andl $-536869889,%ecx
	orl %eax,%ecx
	movl %ecx,(%edx)
	movl %ebx,MM_RTCollector+1668
.L127:
	addl $4,%esi
.L124:
	cmpl %esi,12(%ebp)
	jae .L125
.L142:
	movl -8(%ebp),%eax
	leal -32(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 RTCollector__NoteStackLocations,.Lfe20-RTCollector__NoteStackLocations
	.align 16
	.type	 RTCollector__PromotePage,@function
RTCollector__PromotePage:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L144
	pushl $8580
	call _m3_fault
	.align 16
.L144:
	movl 8(%ebp),%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%eax)
	ja .L145
	pushl $8578
	call _m3_fault
	.align 16
.L145:
	movl (%eax),%edx
	xorl %eax,%eax
	movb (%edx,%ecx,4),%al
	andl $3,%eax
	cmpl $2,%eax
	je .L147
	pushl $8576
	call _m3_fault
	.align 16
.L147:
	testb $2,1(%edx,%ecx,4)
	je .L149
	pushl $8592
	call _m3_fault
	.align 16
.L149:
	movl 8(%ebp),%edi
	pushl %edi
	call RTCollector__PageCount
	movl %eax,%esi
	movl MI_RTHeapRep+156,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L150
	pushl $8644
	call _m3_fault
	.align 16
.L150:
	movl 8(%ebp),%ebx
	subl MI_RTHeapRep+44,%ebx
	cmpl %ebx,4(%eax)
	ja .L151
	pushl $8642
	call _m3_fault
	.align 16
.L151:
	movl 12(%ebp),%ecx
	movl (%eax),%edx
	movl (%ecx),%eax
	movl %eax,(%edx,%ebx,4)
	cmpl $1,%esi
	jle .L152
	movl (%ecx),%eax
	movl %eax,-4(%ebp)
	orb $2,-3(%ebp)
	movl 8(%ebp),%ecx
	incl %ecx
	movl 8(%ebp),%edi
	leal -1(%esi,%edi),%edi
	movl %edi,-8(%ebp)
	jmp .L153
	.align 16
.L154:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L155
	pushl $8724
	call _m3_fault
	.align 16
.L155:
	movl %ecx,%ebx
	subl MI_RTHeapRep+44,%ebx
	cmpl %ebx,4(%eax)
	ja .L156
	pushl $8722
	call _m3_fault
	.align 16
.L156:
	movl (%eax),%edx
	movl -4(%ebp),%eax
	incl %ecx
	movl %eax,(%edx,%ebx,4)
.L153:
	cmpl %ecx,-8(%ebp)
	jge .L154
.L152:
	cmpb $0,MM_RTCollector+1472
	je .L158
	pushl %esi
	movl 8(%ebp),%edi
	pushl %edi
	call RTCollector__PerfChange
.L158:
	movl 12(%ebp),%eax
	movb (%eax),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $3,%eax
	jne .L143
	cmpl $1,%esi
	jne .L160
	incl MI_RTHeapRep+432
	jmp .L143
	.align 16
.L160:
	addl %esi,MI_RTHeapRep+436
.L143:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 RTCollector__PromotePage,.Lfe21-RTCollector__PromotePage
	.align 16
	.type	 RTCollector__InsertFiller,@function
RTCollector__InsertFiller:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	testl %ecx,%ecx
	je .L162
	cmpl $4,%ecx
	jne .L165
	testl %edx,%edx
	jne .L166
	pushl $9028
	call _m3_fault
	.align 16
.L166:
	movl MI_RTHeapRep+268,%eax
	movl %eax,(%edx)
	jmp .L162
	.align 16
.L165:
	cmpl $7,%ecx
	jle .L167
	testl %edx,%edx
	jne .L168
	pushl $9060
	call _m3_fault
	.align 16
.L168:
	movl MI_RTHeapRep+272,%eax
	movl %eax,(%edx)
	cmpl $-4,%edx
	jne .L169
	pushl $9076
	call _m3_fault
	.align 16
.L169:
	movl %ecx,4(%edx)
	jmp .L162
	.align 16
.L167:
	pushl $9104
	call _m3_fault
	.align 16
.L162:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 RTCollector__InsertFiller,.Lfe22-RTCollector__InsertFiller
	.align 16
	.type	 RTCollector__CollectEnough,@function
RTCollector__CollectEnough:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,MM_RTCollector+338
	jne .L170
	call RTCollector__Behind
	testl %eax,%eax
	je .L170
	call RTCollector__CollectorOn
	cmpb $0,MI_RTCollectorSRC+68
	je .L177
	cmpl $0,MI_RTHeapRep+408
	jne .L177
.L174:
	call RTCollector__CollectSome
	call RTCollector__Behind
	testl %eax,%eax
	jne .L174
	jmp .L176
	.align 16
.L178:
	call RTCollector__CollectSome
.L177:
	cmpb $0,MM_RTCollector+324
	je .L178
.L180:
	call RTCollector__CollectSome
	cmpb $0,MM_RTCollector+324
	jne .L180
.L176:
	call RTCollector__CollectorOff
.L170:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 RTCollector__CollectEnough,.Lfe23-RTCollector__CollectEnough
	.align 16
	.type	 RTCollector__Behind,@function
RTCollector__Behind:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L183:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl MI_RTHeapRep+404,%eax
	addl MI_RTHeapRep+400,%eax
	testl %eax,%eax
	jle .L184
	cmpb $0,MM_RTCollector+324
	jne .L185
	movl %edx,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L182
	.align 16
.L184:
	cmpb $0,MM_RTCollector+324
	jne .L185
	movl MI_RTHeapRep+428,%eax
	addl MI_RTHeapRep+424,%eax
	addl MI_RTHeapRep+432,%eax
	addl MI_RTHeapRep+436,%eax
	addl MI_RTHeapRep+416,%eax
	addl MI_RTHeapRep+420,%eax
	flds MM_RTCollector+332
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	movl %edx,RTThread__handlerStack
	fcomps MM_RTCollector+328
	fnstsw %ax
	andb $5,%ah
	sete %al
	andl $255,%eax
	jmp .L182
	.align 16
.L185:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl MI_RTHeapRep+420,%eax
	addl MI_RTHeapRep+416,%eax
	flds MI_RTCollectorSRC+64
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	movl MI_RTHeapRep+428,%eax
	addl MI_RTHeapRep+424,%eax
	pushl %eax
	ficompl (%esp)
	addl $4,%esp
	fnstsw %ax
	andb $5,%ah
	sete %al
	xorl %edx,%edx
	movb %al,%dl
	movl %edx,%eax
.L186:
.L182:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 RTCollector__Behind,.Lfe24-RTCollector__Behind
	.align 16
	.type	 RTCollector__CollectorOn,@function
RTCollector__CollectorOn:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,MM_RTCollector+338
	je .L188
	pushl $10176
	call _m3_fault
	.align 16
.L188:
	movb $1,MM_RTCollector+338
	cmpb $0,MI_RTCollectorSRC+68
	je .L189
	cmpl $0,MI_RTHeapRep+408
	je .L190
.L189:
	movl MI_ThreadF+52,%eax
	call *%eax
.L190:
	movl MI_RTHeapDep+48,%eax
	call *%eax
	fstps MM_RTCollector+352
	movl MM_RTCollector+1664,%ecx
	testl %ecx,%ecx
	je .L187
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L193
	pushl $10356
	call _m3_fault
	.align 16
.L193:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L194
	pushl $10354
	call _m3_fault
	.align 16
.L194:
	movl (%eax),%eax
	testb $128,(%eax,%edx,4)
	jne .L197
	pushl $10352
	call _m3_fault
	.align 16
.L197:
	testb $1,1(%eax,%edx,4)
	jne .L198
	pushl $10368
	call _m3_fault
	.align 16
.L198:
	pushl %ecx
	call RTCollector__Unprotect
.L187:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 RTCollector__CollectorOn,.Lfe25-RTCollector__CollectorOn
	.align 16
	.type	 RTCollector__CollectorOff,@function
RTCollector__CollectorOff:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
.L200:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	cmpb $0,MM_RTCollector+338
	jne .L201
	pushl $10496
	call _m3_fault
	.align 16
.L201:
	movl MM_RTCollector+1664,%ecx
	testl %ecx,%ecx
	je .L202
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L203
	pushl $10532
	call _m3_fault
	.align 16
.L203:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L204
	pushl $10530
	call _m3_fault
	.align 16
.L204:
	movl (%eax),%eax
	testb $128,(%eax,%edx,4)
	jne .L206
	pushl $10528
	call _m3_fault
	.align 16
.L206:
	movb 1(%eax,%edx,4),%al
	andl $255,%eax
	andl $1,%eax
	je .L208
	pushl $10544
	call _m3_fault
	.align 16
.L208:
	pushl %eax
	pushl %eax
	pushl %ecx
	call RTCollector__Protect
	addl $12,%esp
.L202:
	movl MM_RTCollector+1668,%ebx
	jmp .L209
	.align 16
.L210:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L211
	pushl $10644
	call _m3_fault
	.align 16
.L211:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L212
	pushl $10642
	call _m3_fault
	.align 16
.L212:
	movl (%eax),%eax
	testb $128,(%eax,%edx,4)
	je .L213
	movb 1(%eax,%edx,4),%al
	andl $255,%eax
	andl $1,%eax
	jne .L213
	pushl %eax
	pushl %eax
	pushl %ebx
	call RTCollector__Protect
	addl $12,%esp
.L213:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L216
	pushl $10692
	call _m3_fault
	.align 16
.L216:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L217
	pushl $10690
	call _m3_fault
	.align 16
.L217:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	movl %eax,%ebx
	shrl $13,%ebx
.L209:
	testl %ebx,%ebx
	jne .L210
	cmpb $0,MI_RTCollectorSRC+68
	je .L219
	cmpl $0,MI_RTHeapRep+408
	je .L220
.L219:
	movl MI_ThreadF+56,%eax
	call *%eax
.L220:
	movb $0,MM_RTCollector+338
	cmpb $0,MM_RTCollector+340
	jne .L221
	cmpb $0,MM_RTCollector+341
	je .L222
.L221:
	movb $0,MM_RTCollector+340
	movb $0,MM_RTCollector+341
	call RTCollector__Broadcast
.L222:
	movl MI_RTHeapDep+48,%eax
	call *%eax
	fsubs MM_RTCollector+352
	fadds MM_RTCollector+372
	fstps MM_RTCollector+372
.L224:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 RTCollector__CollectorOff,.Lfe26-RTCollector__CollectorOff
	.align 16
	.type	 RTCollector__CollectSome,@function
RTCollector__CollectSome:
	pushl %ebp
	movl %esp,%ebp
	cmpl $0,MI_RTHeapRep+400
	je .L226
	pushl $11056
	call _m3_fault
	.align 16
.L226:
	xorl %eax,%eax
	movb MM_RTCollector+324,%al
	testl %eax,%eax
	jle .L227
	cmpl $1,%eax
	jle .L228
	cmpl $2,%eax
	jle .L229
	cmpl $3,%eax
	jle .L230
	cmpl $4,%eax
	jle .L231
	cmpl $5,%eax
	jle .L232
.L227:
	call RTCollector__CollectSomeInStateZero
	jmp .L225
	.align 16
.L228:
	call RTCollector__CollectSomeInStateOne
	jmp .L225
	.align 16
.L229:
	call RTCollector__CollectSomeInStateTwo
	jmp .L225
	.align 16
.L230:
	call RTCollector__CollectSomeInStateThree
	jmp .L225
	.align 16
.L231:
	call RTCollector__CollectSomeInStateFour
	jmp .L225
	.align 16
.L232:
	call RTCollector__CollectSomeInStateFive
.L225:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 RTCollector__CollectSome,.Lfe27-RTCollector__CollectSome
	.align 16
	.type	 RTCollector__CollectSomeInStateZero,@function
RTCollector__CollectSomeInStateZero:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L236:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl MI_RTHeapRep+404,%eax
	negl %eax
	cmpl %eax,MI_RTHeapRep+400
	je .L237
	pushl $11456
	call _m3_fault
	.align 16
.L237:
	movl MI_RTHeapRep+420,%eax
	addl MI_RTHeapRep+416,%eax
	addl MM_RTCollector+384,%eax
	movl %eax,MM_RTCollector+384
	xorl %edx,%edx
	pushl %edx
	pushl %eax
	fildll (%esp)
	addl $8,%esp
	fdivrs MM_RTCollector+372
	fcoms MM_RTCollector+388
	fnstsw %ax
	andb $5,%ah
	je .L300
	fstps MM_RTCollector+388
	movl MM_RTCollector+380,%eax
	movl %eax,MM_RTCollector+392
	jmp .L238
	.align 16
.L300:
	fstp %st(0)
.L238:
	cmpb $0,MI_RTCollectorSRC+69
	je .L239
	movl MI_RTHeapRep+408,%eax
	testl %eax,%eax
	jne .L239
	movb $0,MM_RTCollector+339
	cmpb $0,MM_RTCollector+337
	je .L240
	movl MM_RTCollector+376,%eax
	cmpl %eax,MM_RTCollector+380
	setl %al
	andl $255,%eax
.L240:
	movb %al,MM_RTCollector+336
	testb %al,%al
	jne .L247
	movl MM_RTCollector+376,%eax
	cmpl %eax,MM_RTCollector+392
	jne .L242
	incl %eax
.L298:
	movl %eax,MM_RTCollector+376
	jmp .L247
	.align 16
.L242:
	leal -1(%eax),%edx
	movl $1,%eax
	cmpl %eax,%edx
	jle .L244
	movl %edx,%eax
.L244:
	testl %eax,%eax
	jge .L298
	pushl $11761
	call _m3_fault
	.align 16
.L239:
	movb $1,MM_RTCollector+339
	movb $0,MM_RTCollector+336
.L247:
	movb $1,MM_RTCollector+337
	cmpb $0,MM_RTCollector+336
	je .L248
	incl MM_RTCollector+380
	jmp .L249
	.align 16
.L248:
	movl $1,MM_RTCollector+380
	movl $0,MM_RTCollector+384
	movl $0,MM_RTCollector+392
	movl $0,MM_RTCollector+372
	movl $2139095039,MM_RTCollector+388
.L249:
	pushl $1
	movl MI_RTHeapRep+552,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MM_RTCollector+1472
	je .L250
	call RTCollector__PerfBegin
.L250:
	movl MM_RTCollector+72,%edx
	movl MM_RTCollector+76,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl $0,MM_RTCollector+1680
	movl $0,MM_RTCollector+1684
	movl $0,MM_RTCollector+72
	movl $0,MM_RTCollector+76
	incl MI_RTHeapRep+396
	movl MI_RTHeapRep+44,%ebx
	movl MI_RTHeapRep+48,%esi
	decl %esi
	addl $8,%esp
	jmp .L251
	.align 16
.L252:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L253
	pushl $12308
	call _m3_fault
	.align 16
.L253:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L254
	pushl $12306
	call _m3_fault
	.align 16
.L254:
	movl (%eax),%ecx
	xorl %eax,%eax
	movb (%ecx,%edx,4),%al
	andl $3,%eax
	cmpl $3,%eax
	jne .L255
	leal (%ecx,%edx,4),%edx
	xorl %eax,%eax
	movb (%edx),%al
	andb $252,%al
	orb $2,%al
	movb %al,(%edx)
	cmpb $0,MM_RTCollector+1472
	je .L255
	pushl $1
	pushl %ebx
	call RTCollector__PerfChange
	addl $8,%esp
.L255:
	incl %ebx
.L251:
	cmpl %esi,%ebx
	jle .L252
	cmpb $0,MM_RTCollector+1472
	je .L260
	call RTCollector__PerfFlip
.L260:
	movl $0,MI_RTHeapRep+416
	movl $0,MI_RTHeapRep+420
	movl $0,MI_RTHeapRep+424
	movl $0,MI_RTHeapRep+428
	movl $0,MI_RTHeapRep+432
	movl $0,MI_RTHeapRep+436
	movl MI_RTHeapRep+44,%esi
	movl MI_RTHeapRep+48,%edi
	decl %edi
	movl %edi,-16(%ebp)
	jmp .L261
	.align 16
.L262:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L263
	pushl $12580
	call _m3_fault
	.align 16
.L263:
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L264
	pushl $12578
	call _m3_fault
	.align 16
.L264:
	movl (%eax),%ecx
	xorl %ebx,%ebx
	movb (%ecx,%edx,4),%bl
	movl %ebx,%eax
	andl $3,%eax
	cmpl $2,%eax
	jne .L265
	xorl %eax,%eax
	movb 1(%ecx,%edx,4),%al
	testb $2,%al
	jne .L265
	testb $4,%bl
	jne .L292
	cmpb $0,MM_RTCollector+336
	je .L287
	cmpb $0,MM_RTCollector+339
	je .L272
	pushl $12640
	call _m3_fault
	.align 16
.L272:
	testb $1,%al
	je .L275
	testb $8,%bl
	je .L278
	pushl $12672
	call _m3_fault
	.align 16
.L278:
	orb $3,-12(%ebp)
	xorl %eax,%eax
	movb -12(%ebp),%al
	andb $251,%al
	xorl %edx,%edx
	movb MM_RTCollector+339,%dl
	andl $1,%edx
	sall $2,%edx
	orb %al,%dl
	movb %dl,-12(%ebp)
	andb $247,-12(%ebp)
	andb $143,-12(%ebp)
	andb $127,-12(%ebp)
	orb $1,-11(%ebp)
	jmp .L299
	.align 16
.L275:
	testb $8,%bl
	je .L282
	orb $3,-12(%ebp)
	andb $251,-12(%ebp)
	orb $8,-12(%ebp)
	andb $143,-12(%ebp)
	andb $127,-12(%ebp)
	andb $254,-11(%ebp)
.L299:
	andb $253,-11(%ebp)
	andl $-536869889,-12(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	pushl %esi
	call RTCollector__PromotePage
	addl $8,%esp
	jmp .L265
	.align 16
.L282:
	orb $3,-12(%ebp)
	xorl %eax,%eax
	movb -12(%ebp),%al
	andb $251,%al
	xorl %edx,%edx
	movb MM_RTCollector+339,%dl
	andl $1,%edx
	sall $2,%edx
	orb %al,%dl
	movb %dl,-12(%ebp)
	andb $247,-12(%ebp)
	andb $143,-12(%ebp)
	orb $128,-12(%ebp)
	andb $254,-11(%ebp)
	andb $253,-11(%ebp)
	andl $-536869889,-12(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	pushl %esi
	call RTCollector__PromotePage
	movl MI_RTHeapRep+156,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L284
	pushl $12964
	call _m3_fault
	.align 16
.L284:
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L285
	pushl $12962
	call _m3_fault
	.align 16
.L285:
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl MM_RTCollector+1668,%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%edx),%ecx
	andl $-536869889,%ecx
	orl %eax,%ecx
	movl %ecx,(%edx)
	movl %esi,MM_RTCollector+1668
	jmp .L265
	.align 16
.L287:
	testb $1,%al
	je .L265
	pushl %esi
	call RTCollector__Unprotect
	addl $4,%esp
	jmp .L265
	.align 16
.L292:
	testb $1,%al
	je .L265
	pushl $13088
	call _m3_fault
	.align 16
.L265:
	incl %esi
.L261:
	cmpl %esi,-16(%ebp)
	jge .L262
	movl MM_RTCollector+2680,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTCollector+368
	movl MI_ThreadF+52,%eax
	call *%eax
	movl MM_RTCollector+312,%eax
	pushl %eax
	movl MI_ThreadF+60,%eax
	call *%eax
	movl MM_RTCollector+368,%eax
	pushl %eax
	movl MI_RTHeapMap+256,%eax
	call *%eax
	movl MI_ThreadF+56,%eax
	call *%eax
	addl $12,%esp
	cmpb $0,MM_RTCollector+1472
	je .L295
	call RTCollector__PerfPromotedRoots
.L295:
	movb $1,MM_RTCollector+324
	cmpb $0,MM_RTCollector+684
	je .L297
	movb $1,MM_RTCollector+340
.L297:
	movl -8(%ebp),%eax
	leal -28(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 RTCollector__CollectSomeInStateZero,.Lfe28-RTCollector__CollectSomeInStateZero
	.align 16
	.type	 RTCollector__CollectSomeInStateOne,@function
RTCollector__CollectSomeInStateOne:
	pushl %ebp
	movl %esp,%ebp
	call RTCollector__CopySome
	testl %eax,%eax
	jne .L302
	movb $2,MM_RTCollector+324
.L302:
	cmpb $0,MM_RTCollector+684
	je .L301
	movb $1,MM_RTCollector+340
.L301:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 RTCollector__CollectSomeInStateOne,.Lfe29-RTCollector__CollectSomeInStateOne
	.align 16
	.type	 RTCollector__CollectSomeInStateTwo,@function
RTCollector__CollectSomeInStateTwo:
	pushl %ebp
	movl %esp,%ebp
	call RTCollector__PreHandleWeakRefs
	movb $3,MM_RTCollector+324
	cmpb $0,MM_RTCollector+684
	je .L304
	movb $1,MM_RTCollector+340
.L304:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 RTCollector__CollectSomeInStateTwo,.Lfe30-RTCollector__CollectSomeInStateTwo
	.align 16
	.type	 RTCollector__CollectSomeInStateThree,@function
RTCollector__CollectSomeInStateThree:
	pushl %ebp
	movl %esp,%ebp
	call RTCollector__CopySome
	testl %eax,%eax
	jne .L307
	call RTCollector__PostHandleWeakRefs
	movb $1,MM_RTCollector+341
	movb $4,MM_RTCollector+324
.L307:
	cmpb $0,MM_RTCollector+684
	je .L306
	movb $1,MM_RTCollector+340
.L306:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 RTCollector__CollectSomeInStateThree,.Lfe31-RTCollector__CollectSomeInStateThree
	.align 16
	.type	 RTCollector__CollectSomeInStateFour,@function
RTCollector__CollectSomeInStateFour:
	pushl %ebp
	movl %esp,%ebp
	call RTCollector__CopySome
	testl %eax,%eax
	jne .L310
	movb $5,MM_RTCollector+324
.L310:
	cmpb $0,MM_RTCollector+684
	je .L309
	movb $1,MM_RTCollector+340
.L309:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 RTCollector__CollectSomeInStateFour,.Lfe32-RTCollector__CollectSomeInStateFour
	.align 16
	.type	 RTCollector__CollectSomeInStateFive,@function
RTCollector__CollectSomeInStateFive:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L313:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl MI_RTHeapRep+44,%eax
	notl %eax
	xorl %ebx,%ebx
	movl %eax,%esi
	addl MI_RTHeapRep+48,%esi
	jmp .L314
	.align 16
.L315:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L316
	pushl $14244
	call _m3_fault
	.align 16
.L316:
	cmpl %ebx,4(%eax)
	ja .L317
	pushl $14242
	call _m3_fault
	.align 16
.L317:
	movl (%eax),%edx
	xorl %eax,%eax
	movb (%edx,%ebx,4),%al
	andl $3,%eax
	cmpl $2,%eax
	jne .L318
	leal 0(,%ebx,4),%ecx
	addl %ecx,%edx
	xorl %eax,%eax
	movb (%edx),%al
	andb $252,%al
	orb $1,%al
	movb %al,(%edx)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L321
	pushl $14276
	call _m3_fault
	.align 16
.L321:
	cmpl %ebx,4(%eax)
	ja .L322
	pushl $14274
	call _m3_fault
	.align 16
.L322:
	movl (%eax),%eax
	addl %ecx,%eax
	andb $253,1(%eax)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L323
	pushl $14292
	call _m3_fault
	.align 16
.L323:
	cmpl %ebx,4(%eax)
	ja .L324
	pushl $14290
	call _m3_fault
	.align 16
.L324:
	movl (%eax),%eax
	testb $1,1(%eax,%ebx,4)
	je .L325
	pushl $14288
	call _m3_fault
	.align 16
.L325:
	cmpb $0,MM_RTCollector+1472
	je .L318
	movl MI_RTHeapRep+44,%eax
	addl %ebx,%eax
	cmpl $524287,%eax
	jle .L327
	pushl $14305
	call _m3_fault
	.align 16
.L327:
	pushl $1
	pushl %eax
	call RTCollector__PerfChange
	addl $8,%esp
.L318:
	incl %ebx
.L314:
	cmpl %esi,%ebx
	jle .L315
	call RTCollector__RebuildFreelist
	movl MM_RTCollector+80,%edx
	movl MM_RTCollector+84,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl MM_RTCollector+88,%edx
	movl MM_RTCollector+92,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	addl $16,%esp
	movl MM_RTCollector+1664,%edx
	testl %edx,%edx
	je .L329
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L330
	pushl $14468
	call _m3_fault
	.align 16
.L330:
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L331
	pushl $14466
	call _m3_fault
	.align 16
.L331:
	movl (%eax),%eax
	andb $127,(%eax,%edx,4)
	cmpb $0,MM_RTCollector+1472
	je .L332
	pushl $1
	movl MM_RTCollector+1664,%eax
	pushl %eax
	call RTCollector__PerfChange
	addl $8,%esp
.L332:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L333
	pushl $14500
	call _m3_fault
	.align 16
.L333:
	movl MM_RTCollector+1664,%ebx
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L334
	pushl $14498
	call _m3_fault
	.align 16
.L334:
	movl (%eax),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	sall $29,%eax
	movl %eax,%ecx
	shrl $31,%ecx
	jne .L335
	movl %edx,%eax
	andl $3,%eax
	cmpl $3,%eax
	je .L338
	pushl $14512
	call _m3_fault
	.align 16
.L338:
	pushl %ecx
	pushl $1
	pushl %ebx
	call RTCollector__Protect
	addl $12,%esp
.L335:
	movl $0,MM_RTCollector+1664
.L329:
	movl MM_RTCollector+1668,%ebx
	testl %ebx,%ebx
	je .L339
	pushl $14592
	call _m3_fault
	.align 16
.L339:
	movl %ebx,MM_RTCollector+1672
	movl %ebx,MM_RTCollector+1676
	movl %ebx,MM_RTCollector+88
	movl %ebx,MM_RTCollector+92
	movl %ebx,MM_RTCollector+80
	movl %ebx,MM_RTCollector+84
	cmpb $0,MM_RTCollector+1472
	je .L340
	call RTCollector__PerfEnd
.L340:
	pushl %ebx
	movl MI_RTHeapRep+552,%eax
	call *%eax
	cmpb $0,MM_RTCollector+336
	je .L341
	movl MI_RTHeapRep+428,%eax
	addl MI_RTHeapRep+424,%eax
	addl MI_RTHeapRep+432,%eax
	addl MI_RTHeapRep+436,%eax
	flds MM_RTCollector+332
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	fcomps MM_RTCollector+328
	fnstsw %ax
	andb $69,%ah
	cmpb $1,%ah
	je .L342
	movb $0,MM_RTCollector+337
	jmp .L344
	.align 16
.L342:
	movb $1,MM_RTCollector+337
	jmp .L344
	.align 16
.L341:
	flds MI_RTCollectorSRC+64
	fld1
	fadd %st(1),%st
	movl MI_RTHeapRep+428,%eax
	addl MI_RTHeapRep+424,%eax
	addl MI_RTHeapRep+432,%eax
	addl MI_RTHeapRep+436,%eax
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	fxch %st(1)
	movb $1,MM_RTCollector+337
	fstps MM_RTCollector+332
	fstps MM_RTCollector+328
.L344:
	movb $0,MM_RTCollector+324
.L345:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 RTCollector__CollectSomeInStateFive,.Lfe33-RTCollector__CollectSomeInStateFive
	.align 16
	.type	 RTCollector__CopySome,@function
RTCollector__CopySome:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_RTCollector+1664,%edi
	movl %edi,-16(%ebp)
	movl MM_RTCollector+92,%edi
	movl %edi,-8(%ebp)
	movl -16(%ebp),%edi
	pushl %edi
	call RTCollector__PageToHeader
	movl %eax,-4(%ebp)
	addl $4,%esp
.L347:
	movl MM_RTCollector+88,%ebx
	cmpl %ebx,-4(%ebp)
	jae .L348
	pushl %ebx
	movl -4(%ebp),%edi
	pushl %edi
	call RTCollector__CleanBetween
	movl %ebx,-4(%ebp)
	addl $8,%esp
	jmp .L349
	.align 16
.L348:
	movl MM_RTCollector+1668,%eax
	testl %eax,%eax
	je .L387
	movl %eax,%esi
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L351
	pushl $15460
	call _m3_fault
	.align 16
.L351:
	movl %eax,%ebx
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L352
	pushl $15458
	call _m3_fault
	.align 16
.L352:
	movl (%ebx),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	shrl $13,%eax
	movl %eax,MM_RTCollector+1668
	cmpl %edx,4(%ebx)
	ja .L354
	pushl $15474
	call _m3_fault
	.align 16
.L354:
	movl (%ebx),%eax
	movb (%eax,%edx,4),%al
	andl $255,%eax
	testb $8,%al
	je .L356
	pushl $15472
	call _m3_fault
	.align 16
.L356:
	shrl $7,%eax
	je .L349
	cmpl %edx,4(%ebx)
	ja .L360
	pushl $15506
	call _m3_fault
	.align 16
.L360:
	movl (%ebx),%eax
	testb $1,1(%eax,%edx,4)
	je .L361
	pushl %esi
	call RTCollector__Unprotect
	addl $4,%esp
.L361:
	pushl %esi
	call RTCollector__PageToHeader
	movl %eax,%ebx
	leal 1(%esi),%eax
	addl $4,%esp
	cmpl $524287,%eax
	jle .L362
	pushl $15521
	call _m3_fault
	.align 16
.L362:
	pushl %eax
	call RTCollector__PageToHeader
	movl %eax,%edx
	pushl %edx
	pushl %ebx
	call RTCollector__CleanBetween
	pushl %esi
	call RTCollector__PageCount
	xorl %ebx,%ebx
	decl %eax
	movl %eax,-12(%ebp)
	addl $16,%esp
	jmp .L363
	.align 16
.L364:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L365
	pushl $15556
	call _m3_fault
	.align 16
.L365:
	movl %eax,%edx
	leal (%ebx,%esi),%eax
	movl %eax,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%edx)
	ja .L366
	pushl $15554
	call _m3_fault
	.align 16
.L366:
	movl (%edx),%eax
	incl %ebx
	andb $127,(%eax,%ecx,4)
.L363:
	cmpl %ebx,-12(%ebp)
	jge .L364
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L368
	pushl $15588
	call _m3_fault
	.align 16
.L368:
	movl %eax,%ebx
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L369
	pushl $15586
	call _m3_fault
	.align 16
.L369:
	movl (%ebx),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	sall $29,%eax
	movl %eax,%ecx
	shrl $31,%ecx
	jne .L370
	movl %edx,%eax
	andl $3,%eax
	cmpl $3,%eax
	je .L373
	pushl $15600
	call _m3_fault
	.align 16
.L373:
	pushl %ecx
	pushl $1
	pushl %esi
	call RTCollector__Protect
	addl $12,%esp
.L370:
	cmpb $0,MM_RTCollector+1472
	je .L349
	pushl %esi
	call RTCollector__PageCount
	pushl %eax
	pushl %esi
	call RTCollector__PerfChange
	addl $12,%esp
.L349:
	movl -16(%ebp),%edi
	cmpl %edi,MM_RTCollector+1664
	je .L347
	movl -8(%ebp),%edi
	pushl %edi
	movl -4(%ebp),%edi
	pushl %edi
	call RTCollector__CleanBetween
	addl $8,%esp
	cmpl $0,-16(%ebp)
	je .L377
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L378
	pushl $15796
	call _m3_fault
	.align 16
.L378:
	movl -16(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L379
	pushl $15794
	call _m3_fault
	.align 16
.L379:
	movl (%eax),%eax
	andb $127,(%eax,%edx,4)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L380
	pushl $15812
	call _m3_fault
	.align 16
.L380:
	movl -16(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L381
	pushl $15810
	call _m3_fault
	.align 16
.L381:
	movl (%eax),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	sall $29,%eax
	movl %eax,%ecx
	shrl $31,%ecx
	jne .L382
	movl %edx,%eax
	andl $3,%eax
	cmpl $3,%eax
	je .L385
	pushl $15824
	call _m3_fault
	.align 16
.L385:
	pushl %ecx
	pushl $1
	movl -16(%ebp),%edi
	pushl %edi
	call RTCollector__Protect
	addl $12,%esp
.L382:
	cmpb $0,MM_RTCollector+1472
	je .L377
	pushl $1
	movl -16(%ebp),%edi
	pushl %edi
	call RTCollector__PerfChange
.L377:
	movl $1,%eax
.L387:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 RTCollector__CopySome,.Lfe34-RTCollector__CopySome
	.align 16
	.type	 RTCollector__CleanBetween,@function
RTCollector__CleanBetween:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	jmp .L389
	.align 16
.L390:
	testb $3,%bl
	je .L391
	pushl $16016
	call _m3_fault
	.align 16
.L391:
	testl %ebx,%ebx
	jne .L392
	pushl $16036
	call _m3_fault
	.align 16
.L392:
	testb $1,(%ebx)
	je .L394
	pushl $16032
	call _m3_fault
	.align 16
.L394:
	andb $63,2(%ebx)
	movl MM_RTCollector+368,%eax
	pushl %eax
	pushl %ebx
	movl MI_RTHeapMap+252,%eax
	call *%eax
	pushl %ebx
	call RTCollector__ReferentSize
	leal 4(%eax,%ebx),%ebx
	addl $12,%esp
.L389:
	cmpl %esi,%ebx
	jb .L390
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 RTCollector__CleanBetween,.Lfe35-RTCollector__CleanBetween
	.align 16
	.type	 RTCollector__PreHandleWeakRefs,@function
RTCollector__PreHandleWeakRefs:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl MM_RTCollector+88,%edx
	movl MM_RTCollector+92,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl MM_RTCollector+80,%edx
	movl MM_RTCollector+84,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	call RTCollector__InitStack
	movl %eax,%esi
	movl MM_RTCollector+1620,%edx
	addl $16,%esp
	jmp .L398
	.align 16
.L399:
	movl MM_RTCollector+1616,%eax
	testl %eax,%eax
	jne .L400
	pushl $16772
	call _m3_fault
	.align 16
.L400:
	cmpl %edx,4(%eax)
	ja .L401
	pushl $16770
	call _m3_fault
	.align 16
.L401:
	leal (%edx,%edx,4),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-4(%ebp)
	cmpl $0,12(%eax)
	je .L402
	movl 8(%eax),%eax
	pushl %eax
	call RTCollector__Moved
	addl $4,%esp
	testl %eax,%eax
	jne .L402
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call RTCollector__HeaderOf
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L403
	pushl $16852
	call _m3_fault
	.align 16
.L403:
	xorl %eax,%eax
	movb 2(%ebx),%al
	testb $64,%al
	jne .L402
	shrl $7,%eax
	je .L406
	pushl $16864
	call _m3_fault
	.align 16
.L406:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl %esi
	call RTCollector__WeakWalk1
	addl $8,%esp
	xorl %eax,%eax
	movb 2(%ebx),%al
	testb $64,%al
	je .L409
	pushl $16976
	call _m3_fault
	.align 16
.L409:
	shrl $7,%eax
	jne .L410
	pushl $16992
	call _m3_fault
	.align 16
.L410:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl %esi
	call RTCollector__WeakWalk2
	addl $8,%esp
	xorl %eax,%eax
	movb 2(%ebx),%al
	testb $64,%al
	jne .L412
	pushl $17040
	call _m3_fault
	.align 16
.L412:
	shrl $7,%eax
	je .L402
	pushl $17056
	call _m3_fault
	.align 16
.L402:
	movl -4(%ebp),%eax
	movl 16(%eax),%edx
.L398:
	cmpl $-1,%edx
	jne .L399
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 RTCollector__PreHandleWeakRefs,.Lfe36-RTCollector__PreHandleWeakRefs
	.align 16
	.type	 RTCollector__WeakWalk1,@function
RTCollector__WeakWalk1:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl (%esi),%eax
	movl 12(%ebp),%edi
	movl 8(%eax),%eax
	pushl %esi
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L418
	pushl $17344
	call _m3_fault
	.align 16
.L418:
	movl 12(%ebp),%eax
	pushl %eax
	call RTCollector__Moved
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L419
	movl 12(%ebp),%eax
	pushl %eax
	call RTCollector__HeaderOf
	movl %eax,%ecx
	addl $4,%esp
	testl %eax,%eax
	jne .L420
	pushl $17428
	call _m3_fault
	.align 16
.L420:
	xorl %edx,%edx
	movb 2(%eax),%dl
	testb $64,%dl
	je .L425
	movl %edx,%eax
	shrl $7,%eax
	je .L423
	pushl $17440
	call _m3_fault
	.align 16
.L423:
	leal 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTCollector__Move
	jmp .L433
	.align 16
.L425:
	movl %edx,%eax
	shrl $7,%eax
	jne .L419
	testb $32,%dl
	je .L428
	cmpl %edi,12(%ebp)
	je .L428
	leal 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTCollector__Move
	jmp .L433
	.align 16
.L428:
	testl %ecx,%ecx
	jne .L430
	pushl $17540
	call _m3_fault
	.align 16
.L430:
	movl %ecx,%eax
	orb $128,2(%eax)
	pushl %esi
	pushl %eax
	movl MI_RTHeapMap+252,%eax
	call *%eax
.L433:
	addl $8,%esp
.L419:
	movl (%esi),%eax
	movl 8(%eax),%eax
	pushl %esi
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L416
	movl (%esi),%eax
	movl 12(%eax),%eax
	pushl %esi
	call *%eax
	movl %eax,12(%ebp)
	addl $4,%esp
	jmp .L418
	.align 16
.L416:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 RTCollector__WeakWalk1,.Lfe37-RTCollector__WeakWalk1
	.align 16
	.type	 RTCollector__WeakWalk2,@function
RTCollector__WeakWalk2:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl (%esi),%eax
	movl 12(%ebp),%ebx
	movl 8(%eax),%edx
	pushl %esi
	call *%edx
	addl $4,%esp
	testl %eax,%eax
	jne .L436
	pushl $17792
	call _m3_fault
	.align 16
.L436:
	pushl %ebx
	call RTCollector__Moved
	addl $4,%esp
	testl %eax,%eax
	jne .L437
	pushl %ebx
	call RTCollector__HeaderOf
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L438
	pushl $17876
	call _m3_fault
	.align 16
.L438:
	xorl %eax,%eax
	movb 2(%edx),%al
	testb $128,2(%edx)
	je .L437
	andl $127,%eax
	orb $64,%al
	movb %al,2(%edx)
	pushl %esi
	pushl %edx
	movl MI_RTHeapMap+252,%eax
	call *%eax
	addl $8,%esp
.L437:
	movl (%esi),%eax
	movl 8(%eax),%edx
	pushl %esi
	call *%edx
	addl $4,%esp
	testl %eax,%eax
	jne .L434
	movl (%esi),%eax
	movl 12(%eax),%edx
	pushl %esi
	call *%edx
	movl %eax,%ebx
	addl $4,%esp
	jmp .L436
	.align 16
.L434:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 RTCollector__WeakWalk2,.Lfe38-RTCollector__WeakWalk2
	.align 16
	.type	 RTCollector__PostHandleWeakRefs,@function
RTCollector__PostHandleWeakRefs:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl MM_RTCollector+88,%edx
	movl MM_RTCollector+92,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl MM_RTCollector+80,%edx
	movl MM_RTCollector+84,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl MM_RTCollector+1620,%ebx
	movl $-1,%esi
	addl $16,%esp
	jmp .L445
	.align 16
.L446:
	movl MM_RTCollector+1616,%edx
	testl %edx,%edx
	jne .L447
	pushl $18260
	call _m3_fault
	.align 16
.L447:
	cmpl %ebx,4(%edx)
	ja .L448
	pushl $18258
	call _m3_fault
	.align 16
.L448:
	leal (%ebx,%ebx,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-4(%ebp)
	movl 8(%eax),%eax
	pushl %eax
	call RTCollector__Moved
	addl $4,%esp
	testl %eax,%eax
	je .L449
	movl -4(%ebp),%eax
	addl $8,%eax
	pushl %eax
	pushl $0
	call RTCollector__Move
	movl %ebx,%esi
	movl -4(%ebp),%eax
	addl $8,%esp
	movl 16(%eax),%ebx
	jmp .L445
	.align 16
.L449:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call RTCollector__HeaderOf
	addl $4,%esp
	testl %eax,%eax
	jne .L451
	pushl $18420
	call _m3_fault
	.align 16
.L451:
	andb $223,2(%eax)
	movl -4(%ebp),%eax
	movl 16(%eax),%ecx
	cmpl $-1,%esi
	jne .L452
	movl %ecx,MM_RTCollector+1620
	jmp .L453
	.align 16
.L452:
	movl MM_RTCollector+1616,%edx
	testl %edx,%edx
	jne .L454
	pushl $18564
	call _m3_fault
	.align 16
.L454:
	cmpl %esi,4(%edx)
	ja .L455
	pushl $18562
	call _m3_fault
	.align 16
.L455:
	leal (%esi,%esi,4),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl %ecx,16(%eax)
.L453:
	movl -4(%ebp),%eax
	movl $-1,(%eax)
	movl -4(%ebp),%edx
	cmpl $0,12(%edx)
	je .L456
	movl MM_RTCollector+1628,%eax
	movl %eax,16(%edx)
	movl %ebx,MM_RTCollector+1628
	jmp .L457
	.align 16
.L456:
	movl MM_RTCollector+1632,%eax
	movl %eax,16(%edx)
	movl %ebx,MM_RTCollector+1632
.L457:
	movl %ecx,%ebx
.L445:
	cmpl $-1,%ebx
	jne .L446
	movl MM_RTCollector+1628,%edx
	jmp .L459
	.align 16
.L460:
	movl MM_RTCollector+1616,%eax
	testl %eax,%eax
	jne .L461
	pushl $18900
	call _m3_fault
	.align 16
.L461:
	cmpl %edx,4(%eax)
	ja .L462
	pushl $18898
	call _m3_fault
	.align 16
.L462:
	leal (%edx,%edx,4),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-4(%ebp)
	cmpl $-1,(%eax)
	je .L463
	pushl $18912
	call _m3_fault
	.align 16
.L463:
	addl $8,%eax
	pushl %eax
	pushl $0
	call RTCollector__Move
	movl -4(%ebp),%eax
	addl $8,%esp
	movl 16(%eax),%edx
.L459:
	cmpl $-1,%edx
	jne .L460
	movl MM_RTCollector+1624,%ebx
	movl %edx,%esi
	jmp .L465
	.align 16
.L466:
	movl MM_RTCollector+1616,%edx
	testl %edx,%edx
	jne .L467
	pushl $19108
	call _m3_fault
	.align 16
.L467:
	cmpl %ebx,4(%edx)
	ja .L468
	pushl $19106
	call _m3_fault
	.align 16
.L468:
	leal (%ebx,%ebx,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%edx
	movl %edx,-4(%ebp)
	movl 8(%edx),%eax
	pushl %eax
	call RTCollector__Moved
	addl $4,%esp
	testl %eax,%eax
	je .L469
	movl -4(%ebp),%eax
	addl $8,%eax
	pushl %eax
	pushl $0
	call RTCollector__Move
	movl %ebx,%esi
	movl -4(%ebp),%eax
	addl $8,%esp
	movl 16(%eax),%ebx
	jmp .L465
	.align 16
.L469:
	movl -4(%ebp),%eax
	movl 12(%eax),%edx
	movl 8(%eax),%eax
	pushl %eax
	call *%edx
	movl -4(%ebp),%eax
	addl $4,%esp
	movl 16(%eax),%ecx
	cmpl $-1,%esi
	jne .L471
	movl %ecx,MM_RTCollector+1624
	jmp .L472
	.align 16
.L471:
	movl MM_RTCollector+1616,%edx
	testl %edx,%edx
	jne .L473
	pushl $19380
	call _m3_fault
	.align 16
.L473:
	cmpl %esi,4(%edx)
	ja .L474
	pushl $19378
	call _m3_fault
	.align 16
.L474:
	leal (%esi,%esi,4),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl %ecx,16(%eax)
.L472:
	movl -4(%ebp),%edx
	movl MM_RTCollector+1632,%eax
	movl %eax,16(%edx)
	movl %ebx,MM_RTCollector+1632
	movl %ecx,%ebx
.L465:
	cmpl $-1,%ebx
	jne .L466
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 RTCollector__PostHandleWeakRefs,.Lfe39-RTCollector__PostHandleWeakRefs
	.align 16
	.type	 RTCollector__InitStack,@function
RTCollector__InitStack:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl MM_RTCollector+2688,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %eax
	movl MM_RTCollector+2696,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,1032(%ebx)
	addl $12,%esp
	testl %eax,%eax
	jne .L477
	pushl $19940
	call _m3_fault
	.align 16
.L477:
	movl 4(%eax),%eax
	movl %eax,1048(%ebx)
	movl 1032(%ebx),%eax
	testl %eax,%eax
	jne .L478
	pushl $19956
	call _m3_fault
	.align 16
.L478:
	cmpl $0,4(%eax)
	jne .L479
	pushl $19954
	call _m3_fault
	.align 16
.L479:
	movl (%eax),%eax
	movl %eax,1036(%ebx)
	movl 1048(%ebx),%ecx
	leal 0(,%ecx,4),%edx
	addl %edx,%eax
	movl %eax,1040(%ebx)
	movl 1036(%ebx),%eax
	movl %eax,1044(%ebx)
	movl %ebx,%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 RTCollector__InitStack,.Lfe40-RTCollector__InitStack
	.align 16
	.type	 RTCollector__PushStack,@function
RTCollector__PushStack:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L481
	pushl $20100
	call _m3_fault
	.align 16
.L481:
	movl (%eax),%esi
	testl %esi,%esi
	je .L480
	movl 1040(%ebx),%eax
	cmpl %eax,1044(%ebx)
	jne .L483
	pushl %ebx
	call RTCollector__ExpandStack
	addl $4,%esp
.L483:
	movl 1044(%ebx),%eax
	testl %eax,%eax
	jne .L484
	pushl $20164
	call _m3_fault
	.align 16
.L484:
	movl %esi,(%eax)
	addl $4,1044(%ebx)
.L480:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 RTCollector__PushStack,.Lfe41-RTCollector__PushStack
	.align 16
	.type	 RTCollector__ExpandStack,@function
RTCollector__ExpandStack:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	leal -12(%ebp),%eax
	movl 1048(%edi),%ebx
	movl %ebx,-36(%ebp)
	addl %ebx,%ebx
	movl %ebx,-40(%ebp)
	movl %ebx,-32(%ebp)
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl -40(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %eax
	movl MM_RTCollector+2696,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L486
	pushl $20340
	call _m3_fault
	.align 16
.L486:
	movl 1048(%edi),%ebx
	movl %ebx,-48(%ebp)
	movl %ebx,-16(%ebp)
	movl -48(%ebp),%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L487
	pushl $20337
	call _m3_fault
	.align 16
.L487:
	movl (%esi),%ebx
	movl %ebx,-44(%ebp)
	movl %ebx,-20(%ebp)
	movl 1032(%edi),%eax
	testl %eax,%eax
	jne .L488
	pushl $20340
	call _m3_fault
	.align 16
.L488:
	movl %eax,%ecx
	movl 1048(%edi),%edx
	movl %edx,-24(%ebp)
	movl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L489
	pushl $20337
	call _m3_fault
	.align 16
.L489:
	movl (%ecx),%ecx
	movl %ecx,-28(%ebp)
	cmpl %edx,-48(%ebp)
	je .L490
	pushl $20339
	call _m3_fault
	.align 16
.L490:
	leal 0(,%edx,4),%eax
	pushl %eax
	pushl %ecx
	movl -44(%ebp),%ebx
	pushl %ebx
	call memmove
	addl $12,%esp
	cmpl $0,4(%esi)
	jne .L492
	pushl $20354
	call _m3_fault
	.align 16
.L492:
	movl (%esi),%eax
	movl %eax,1036(%edi)
	movl 1048(%edi),%ebx
	leal 0(,%ebx,4),%edx
	addl %edx,%eax
	movl %eax,1044(%edi)
	movl -36(%ebp),%ebx
	leal 0(,%ebx,8),%eax
	addl 1036(%edi),%eax
	movl %eax,1040(%edi)
	movl %esi,1032(%edi)
	cmpl $0,-40(%ebp)
	jge .L493
	pushl $20417
	call _m3_fault
	.align 16
.L493:
	movl -32(%ebp),%ebx
	leal -60(%ebp),%esp
	movl %ebx,1048(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe42:
	.size	 RTCollector__ExpandStack,.Lfe42-RTCollector__ExpandStack
	.align 16
	.type	 RTCollector__PopStack,@function
RTCollector__PopStack:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 1044(%edx),%ecx
	leal -4(%ecx),%eax
	movl %eax,1044(%edx)
	testl %eax,%eax
	jne .L495
	pushl $20548
	call _m3_fault
	.align 16
.L495:
	movl -4(%ecx),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 RTCollector__PopStack,.Lfe43-RTCollector__PopStack
	.align 16
	.type	 RTCollector__StackEmpty,@function
RTCollector__StackEmpty:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 1036(%eax),%edx
	cmpl %edx,1044(%eax)
	sete %al
	andl $255,%eax
	ret
.Lfe44:
	.size	 RTCollector__StackEmpty,.Lfe44-RTCollector__StackEmpty
	.align 16
	.type	 RTHeapRep__Malloc,@function
RTHeapRep__Malloc:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_RTOS+56,%eax
	movl 8(%ebp),%esi
	call *%eax
	pushl %esi
	call malloc
	movl %eax,%ebx
	addl $4,%esp
	testl %eax,%eax
	jne .L498
	pushl %eax
	pushl %eax
	pushl $MM_RTCollector+2708
	pushl %eax
	pushl %eax
	movl MI_RTMisc+60,%eax
	call *%eax
	addl $20,%esp
.L498:
	movl MI_RTOS+60,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_RTMisc+48,%eax
	call *%eax
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe45:
	.size	 RTHeapRep__Malloc,.Lfe45-RTHeapRep__Malloc
	.align 16
	.type	 RTHeapRep__AllocForNew,@function
RTHeapRep__AllocForNew:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RTOS+56,%eax
	call *%eax
	movl MM_RTCollector+72,%edi
	leal 4(%edi),%ecx
	movl %ecx,%eax
	andl $7,%eax
	cmpl $7,%eax
	jbe .L500
	pushl $21249
	call _m3_fault
	.align 16
.L500:
	movl 12(%ebp),%ebx
	decl %ebx
	cmpl $7,%ebx
	jbe .L501
	pushl $21249
	call _m3_fault
	.align 16
.L501:
	sall $5,%eax
	movl 8(%ebp),%edx
	movl MM_RTCollector+1736(%eax,%ebx,4),%ebx
	leal (%edx,%ebx),%eax
	leal (%eax,%ecx),%esi
	cmpl %esi,MM_RTCollector+76
	jae .L502
	xorl %esi,%esi
	pushl %esi
	pushl %esi
	pushl $MM_RTCollector+1684
	pushl $MM_RTCollector+1680
	pushl $MM_RTCollector+76
	pushl $MM_RTCollector+72
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	call RTCollector__LongAlloc
	movl %eax,%ebx
	movl MI_RTOS+60,%eax
	addl $32,%esp
	jmp .L505
	.align 16
.L502:
	testl %ebx,%ebx
	je .L503
	pushl %ebx
	pushl %edi
	call RTCollector__InsertFiller
	addl %ebx,MM_RTCollector+72
	addl $8,%esp
.L503:
	movl MM_RTCollector+72,%ebx
	addl $4,%ebx
	movl MI_RTOS+60,%eax
	movl %esi,MM_RTCollector+72
.L505:
	call *%eax
	movl %ebx,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 RTHeapRep__AllocForNew,.Lfe46-RTHeapRep__AllocForNew
	.align 16
	.type	 RTCollector__AllocForPureCopy,@function
RTCollector__AllocForPureCopy:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpb $0,MM_RTCollector+338
	jne .L507
	pushl $21904
	call _m3_fault
	.align 16
.L507:
	movl MI_RTOS+56,%eax
	call *%eax
	movl MM_RTCollector+80,%edi
	leal 4(%edi),%ecx
	movl %ecx,%eax
	andl $7,%eax
	cmpl $7,%eax
	jbe .L508
	pushl $22113
	call _m3_fault
	.align 16
.L508:
	movl 12(%ebp),%ebx
	decl %ebx
	cmpl $7,%ebx
	jbe .L509
	pushl $22113
	call _m3_fault
	.align 16
.L509:
	sall $5,%eax
	movl 8(%ebp),%edx
	movl MM_RTCollector+1736(%eax,%ebx,4),%ebx
	leal (%edx,%ebx),%eax
	leal (%eax,%ecx),%esi
	cmpl %esi,MM_RTCollector+84
	jae .L510
	pushl $1
	pushl $1
	pushl $MM_RTCollector+1676
	pushl $MM_RTCollector+1672
	pushl $MM_RTCollector+84
	pushl $MM_RTCollector+80
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	call RTCollector__LongAlloc
	movl %eax,%ebx
	movl MI_RTOS+60,%eax
	addl $32,%esp
	jmp .L513
	.align 16
.L510:
	testl %ebx,%ebx
	je .L511
	pushl %ebx
	pushl %edi
	call RTCollector__InsertFiller
	addl %ebx,MM_RTCollector+80
	addl $8,%esp
.L511:
	movl MM_RTCollector+80,%ebx
	addl $4,%ebx
	movl MI_RTOS+60,%eax
	movl %esi,MM_RTCollector+80
.L513:
	call *%eax
	movl %ebx,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 RTCollector__AllocForPureCopy,.Lfe47-RTCollector__AllocForPureCopy
	.align 16
	.type	 RTCollector__AllocForImpureCopy,@function
RTCollector__AllocForImpureCopy:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	cmpb $0,MM_RTCollector+338
	jne .L515
	pushl $22640
	call _m3_fault
	.align 16
.L515:
	movl MI_RTOS+56,%eax
	call *%eax
	movl MM_RTCollector+88,%edx
	movl %edx,-4(%ebp)
	movl %edx,%ecx
	addl $4,%ecx
	movl %ecx,%eax
	andl $7,%eax
	cmpl $7,%eax
	jbe .L516
	pushl $22849
	call _m3_fault
	.align 16
.L516:
	movl 12(%ebp),%ebx
	decl %ebx
	cmpl $7,%ebx
	jbe .L517
	pushl $22849
	call _m3_fault
	.align 16
.L517:
	sall $5,%eax
	movl 8(%ebp),%edx
	movl MM_RTCollector+1736(%eax,%ebx,4),%ebx
	leal (%edx,%ebx),%eax
	leal (%eax,%ecx),%edi
	cmpl %edi,MM_RTCollector+92
	jae .L518
	pushl %esi
	pushl $1
	pushl $MM_RTCollector+1668
	pushl $MM_RTCollector+1664
	pushl $MM_RTCollector+92
	pushl $MM_RTCollector+88
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	call RTCollector__LongAlloc
	movl %eax,%esi
	movl MI_RTOS+60,%eax
	addl $32,%esp
	jmp .L521
	.align 16
.L518:
	testl %ebx,%ebx
	je .L519
	pushl %ebx
	movl -4(%ebp),%edx
	pushl %edx
	call RTCollector__InsertFiller
	addl %ebx,MM_RTCollector+88
	addl $8,%esp
.L519:
	movl MM_RTCollector+88,%esi
	addl $4,%esi
	movl MI_RTOS+60,%eax
	movl %edi,MM_RTCollector+88
.L521:
	call *%eax
	movl %esi,%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe48:
	.size	 RTCollector__AllocForImpureCopy,.Lfe48-RTCollector__AllocForImpureCopy
	.align 16
	.type	 RTCollector__LongAlloc,@function
RTCollector__LongAlloc:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L523:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 12(%ebp),%esi
	pushl %esi
	pushl $4
	movl MI_RTMisc+56,%eax
	call *%eax
	movl 8(%ebp),%ebx
	leal 8191(%ebx,%eax),%eax
	movl %eax,%edi
	sarl $13,%edi
	addl $8,%esp
	cmpb $0,32(%ebp)
	jne .L524
	call RTCollector__CollectEnough
	movl $32,%eax
	jmp .L525
	.align 16
.L524:
	movl $16,%eax
.L525:
	pushl %eax
	pushl %edi
	call RTCollector__FindFreePages
	movl %eax,-20(%ebp)
	pushl %eax
	call RTCollector__PageToHeader
	movl %eax,%ecx
	movl %ecx,-24(%ebp)
	movl -20(%ebp),%eax
	incl %eax
	addl $12,%esp
	cmpl $524287,%eax
	jle .L526
	pushl $23713
	call _m3_fault
	.align 16
.L526:
	pushl %eax
	call RTCollector__PageToHeader
	movl %eax,%ecx
	movl %ecx,-28(%ebp)
	xorl %eax,%eax
	addl $4,%esp
	cmpb $1,32(%ebp)
	jne .L527
	cmpb $0,36(%ebp)
	sete %al
	andl $255,%eax
.L527:
	movb %al,-32(%ebp)
	movl 12(%ebp),%esi
	pushl %esi
	movl -24(%ebp),%ebx
	addl $4,%ebx
	pushl %ebx
	movl MI_RTMisc+52,%eax
	call *%eax
	movl %eax,-16(%ebp)
	subl %ebx,%eax
	pushl %eax
	movl -24(%ebp),%esi
	pushl %esi
	call RTCollector__InsertFiller
	movl 8(%ebp),%ebx
	addl -16(%ebp),%ebx
	movl %ebx,-24(%ebp)
	addl $16,%esp
	cmpb $0,32(%ebp)
	jne .L528
	movb $1,-36(%ebp)
	movb $4,-40(%ebp)
	jmp .L529
	.align 16
.L528:
	movb MM_RTCollector+339,%bl
	movb %bl,-36(%ebp)
	testb %bl,%bl
	jne .L530
	cmpb $0,-32(%ebp)
	jne .L530
	cmpb $0,36(%ebp)
	jne .L530
	pushl $23984
	call _m3_fault
	.align 16
.L530:
	movb $5,-40(%ebp)
.L529:
	orb $3,-12(%ebp)
	xorl %edx,%edx
	movb -12(%ebp),%dl
	andb $251,%dl
	movb -36(%ebp),%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	xorl %edx,%edx
	movb %al,%dl
	andb $247,%dl
	movb 36(%ebp),%al
	andl $1,%eax
	sall $3,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	xorl %eax,%eax
	movb -12(%ebp),%al
	andb $143,%al
	movb -40(%ebp),%dl
	salb $4,%dl
	orb %al,%dl
	movb %dl,-12(%ebp)
	xorl %edx,%edx
	movb -12(%ebp),%dl
	andb $127,%dl
	movb -32(%ebp),%al
	andl $1,%eax
	sall $7,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	andb $254,-11(%ebp)
	andb $253,-11(%ebp)
	movl -12(%ebp),%esi
	andl $-536869889,%esi
	movl %esi,-52(%ebp)
	movl %esi,-12(%ebp)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L532
	pushl $24052
	call _m3_fault
	.align 16
.L532:
	movl %eax,%ecx
	movl -20(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L533
	pushl $24050
	call _m3_fault
	.align 16
.L533:
	movl (%ecx),%eax
	movl -52(%ebp),%ebx
	movl %ebx,(%eax,%edx,4)
	cmpl $1,%edi
	jne .L534
	xorl %eax,%eax
	movb 32(%ebp),%al
	testl %eax,%eax
	jle .L535
	cmpl $1,%eax
	jle .L536
.L535:
	incl MI_RTHeapRep+416
	jmp .L539
	.align 16
.L536:
	incl MI_RTHeapRep+424
	jmp .L539
	.align 16
.L534:
	xorl %eax,%eax
	movb 32(%ebp),%al
	testl %eax,%eax
	jle .L540
	cmpl $1,%eax
	jle .L541
.L540:
	movl MI_RTHeapRep+420,%eax
	addl %edi,%eax
	jns .L542
	pushl $24225
	call _m3_fault
	.align 16
.L542:
	movl %eax,MI_RTHeapRep+420
	jmp .L543
	.align 16
.L541:
	movl MI_RTHeapRep+428,%eax
	addl %edi,%eax
	jns .L544
	pushl $24241
	call _m3_fault
	.align 16
.L544:
	movl %eax,MI_RTHeapRep+428
.L543:
	movl $1,-52(%ebp)
	leal -1(%edi),%esi
	movl %esi,-44(%ebp)
	jmp .L546
	.align 16
.L547:
	orb $3,-12(%ebp)
	xorl %edx,%edx
	movb -12(%ebp),%dl
	andb $251,%dl
	movb -36(%ebp),%al
	andl $1,%eax
	sall $2,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	xorl %edx,%edx
	movb %al,%dl
	andb $247,%dl
	movb 36(%ebp),%al
	andl $1,%eax
	sall $3,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	xorl %eax,%eax
	movb -12(%ebp),%al
	andb $143,%al
	movb -40(%ebp),%dl
	salb $4,%dl
	orb %al,%dl
	movb %dl,-12(%ebp)
	xorl %edx,%edx
	movb -12(%ebp),%dl
	andb $127,%dl
	movb -32(%ebp),%al
	andl $1,%eax
	sall $7,%eax
	orb %dl,%al
	movb %al,-12(%ebp)
	andb $254,-11(%ebp)
	orb $2,-11(%ebp)
	movl -12(%ebp),%ebx
	andl $-536869889,%ebx
	movl %ebx,-48(%ebp)
	movl %ebx,-12(%ebp)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L548
	pushl $24292
	call _m3_fault
	.align 16
.L548:
	movl %eax,%ecx
	movl -20(%ebp),%eax
	addl -52(%ebp),%eax
	movl %eax,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L549
	pushl $24290
	call _m3_fault
	.align 16
.L549:
	movl (%ecx),%eax
	movl -48(%ebp),%esi
	movl %esi,(%eax,%edx,4)
	incl -52(%ebp)
.L546:
	movl -44(%ebp),%ebx
	cmpl %ebx,-52(%ebp)
	jle .L547
.L539:
	cmpb $0,MM_RTCollector+1472
	je .L551
	testl %edi,%edi
	jge .L552
	pushl $24385
	call _m3_fault
	.align 16
.L552:
	pushl %edi
	movl -20(%ebp),%esi
	pushl %esi
	call RTCollector__PerfChange
	addl $8,%esp
.L551:
	cmpl $1,%edi
	jne .L553
	movl -28(%ebp),%ecx
	subl -24(%ebp),%ecx
	movl 16(%ebp),%ebx
	movl 20(%ebp),%esi
	movl (%ebx),%edx
	movl (%esi),%eax
	subl %edx,%eax
	cmpl %eax,%ecx
	jle .L554
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl 24(%ebp),%ebx
	addl $8,%esp
	movl (%ebx),%edx
	testl %edx,%edx
	je .L555
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L556
	pushl $24516
	call _m3_fault
	.align 16
.L556:
	movl %eax,%ecx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L557
	pushl $24514
	call _m3_fault
	.align 16
.L557:
	movl (%ecx),%ecx
	xorl %eax,%eax
	movb (%ecx,%edx,4),%al
	andl $3,%eax
	cmpl $3,%eax
	je .L559
	pushl $24512
	call _m3_fault
	.align 16
.L559:
	leal (%ecx,%edx,4),%ecx
	movl 28(%ebp),%esi
	movl (%ecx),%eax
	andl $-536869889,%eax
	movl (%esi),%edx
	andl $524287,%edx
	sall $10,%edx
	orl %edx,%eax
	movl %eax,(%ecx)
	movl 24(%ebp),%ebx
	movl (%ebx),%eax
	movl %eax,(%esi)
	cmpb $1,32(%ebp)
	jne .L555
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L562
	pushl $24580
	call _m3_fault
	.align 16
.L562:
	movl %eax,%ecx
	movl 24(%ebp),%esi
	movl MI_RTHeapRep+44,%eax
	movl (%esi),%edx
	subl %eax,%edx
	cmpl %edx,4(%ecx)
	ja .L563
	pushl $24578
	call _m3_fault
	.align 16
.L563:
	movl (%ecx),%eax
	xorl %ecx,%ecx
	movb (%eax,%edx,4),%cl
	testb $128,(%eax,%edx,4)
	jne .L555
	testb $8,%cl
	jne .L555
	pushl $24576
	call _m3_fault
	.align 16
.L555:
	movl 16(%ebp),%ebx
	movl -24(%ebp),%esi
	movl %esi,(%ebx)
	movl 20(%ebp),%ebx
	movl -28(%ebp),%esi
	movl %esi,(%ebx)
	movl 24(%ebp),%ebx
	movl -20(%ebp),%esi
	movl %esi,(%ebx)
	jmp .L570
	.align 16
.L554:
	pushl %ecx
	movl -24(%ebp),%ebx
	pushl %ebx
	call RTCollector__InsertFiller
	movl MI_RTHeapRep+156,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L568
	pushl $24756
	call _m3_fault
	.align 16
.L568:
	movl %eax,%ecx
	movl -20(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L572
	pushl $24754
	call _m3_fault
	.align 16
.L553:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L571
	pushl $24836
	call _m3_fault
	.align 16
.L571:
	movl %eax,%ecx
	movl -20(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L572
	pushl $24834
	call _m3_fault
	.align 16
.L572:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%ecx
	movl 28(%ebp),%esi
	movl (%ecx),%edx
	andl $-536869889,%edx
	movl (%esi),%eax
	andl $524287,%eax
	sall $10,%eax
	orl %eax,%edx
	movl %edx,(%ecx)
	movl -20(%ebp),%ebx
	movl %ebx,(%esi)
.L570:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%eax
.L573:
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe49:
	.size	 RTCollector__LongAlloc,.Lfe49-RTCollector__LongAlloc
	.align 16
	.type	 RTCollector__BackgroundThread,@function
RTCollector__BackgroundThread:
	pushl %ebp
	movl %esp,%ebp
.L575:
	movb $1,MM_RTCollector+684
	jmp .L576
	.align 16
.L577:
	call RTCollector__Wait
.L576:
	cmpb $0,MM_RTCollector+324
	je .L577
	movb $0,MM_RTCollector+684
	jmp .L579
	.align 16
.L580:
	movl MI_RTOS+56,%eax
	call *%eax
	cmpb $0,MM_RTCollector+324
	je .L581
	call RTCollector__CollectorOn
	call RTCollector__CollectSome
	call RTCollector__CollectorOff
.L581:
	movl MI_RTOS+60,%eax
	call *%eax
	pushl $1072693248
	pushl $0
	movl MI_Thread+176,%eax
	call *%eax
	addl $8,%esp
.L579:
	cmpb $0,MM_RTCollector+324
	jne .L580
	jmp .L575
	.align 16
.Lfe50:
	.size	 RTCollector__BackgroundThread,.Lfe50-RTCollector__BackgroundThread
	.align 16
	.type	 RTCollector__StartGC,@function
RTCollector__StartGC:
	pushl %ebp
	movl %esp,%ebp
	call RTCollectorSRC__StartCollection
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe51:
	.size	 RTCollector__StartGC,.Lfe51-RTCollector__StartGC
	.align 16
	.type	 RTCollector__FinishGC,@function
RTCollector__FinishGC:
	pushl %ebp
	movl %esp,%ebp
	call RTCollectorSRC__FinishCollection
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe52:
	.size	 RTCollector__FinishGC,.Lfe52-RTCollector__FinishGC
	.align 16
	.type	 RTHeapRep__Crash,@function
RTHeapRep__Crash:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl MI_RTOS+56,%eax
	movb $0,-4(%ebp)
	call *%eax
	cmpb $0,MM_RTCollector+324
	jne .L587
	movb $1,MM_RTCollector+338
	movb $1,-4(%ebp)
	jmp .L588
	.align 16
.L587:
	cmpb $0,MM_RTCollector+338
	jne .L589
	call RTCollector__CollectorOn
	jmp .L590
	.align 16
.L591:
	call RTCollector__CollectSome
.L590:
	cmpb $0,MM_RTCollector+324
	jne .L591
	movb $1,-4(%ebp)
	jmp .L588
	.align 16
.L589:
	movb $1,MM_RTCollector+338
.L588:
	movl MI_RTHeapRep+44,%ebx
	movl MI_RTHeapRep+48,%esi
	decl %esi
	jmp .L593
	.align 16
.L594:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L595
	pushl $25956
	call _m3_fault
	.align 16
.L595:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L596
	pushl $25954
	call _m3_fault
	.align 16
.L596:
	movl (%eax),%eax
	testb $1,1(%eax,%edx,4)
	je .L597
	pushl %ebx
	call RTCollector__Unprotect
	addl $4,%esp
.L597:
	incl %ebx
.L593:
	cmpl %esi,%ebx
	jle .L594
	leal -12(%ebp),%esp
	xorl %eax,%eax
	movb -4(%ebp),%al
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe53:
	.size	 RTHeapRep__Crash,.Lfe53-RTHeapRep__Crash
	.align 16
	.type	 RTCollector__InstallSanityCheck,@function
RTCollector__InstallSanityCheck:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2760,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl %eax
	movl MI_RTHeapRep+544,%eax
	call *%eax
	addl $8,%esp
	cmpl $0,MM_RTCollector+704
	jne .L599
	movl MM_RTCollector+2768,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTCollector+700
	movl MM_RTCollector+2776,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTCollector+704
.L599:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe54:
	.size	 RTCollector__InstallSanityCheck,.Lfe54-RTCollector__InstallSanityCheck
	.align 16
	.type	 RTCollector__SanityCheck,@function
RTCollector__SanityCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RTHeapRep+44,%edi
	jmp .L602
	.align 16
.L603:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L604
	pushl $26404
	call _m3_fault
	.align 16
.L604:
	movl %eax,%edx
	movl %edi,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%eax)
	ja .L605
	pushl $26402
	call _m3_fault
	.align 16
.L605:
	movl (%eax),%eax
	movl %eax,%esi
	movl %eax,-20(%ebp)
	xorl %eax,%eax
	movb (%esi,%ecx,4),%al
	movl %eax,%ebx
	andl $3,%ebx
	testl %ebx,%ebx
	jle .L606
	cmpl $1,%ebx
	jle .L649
	cmpl $2,%ebx
	jle .L608
	cmpl $3,%ebx
	jle .L612
.L606:
	leal 1(%edi),%eax
	cmpl $524287,%eax
	jle .L651
	pushl $26417
	call _m3_fault
	.align 16
.L608:
	pushl $26432
	call _m3_fault
	.align 16
.L612:
	shrl $7,%eax
	je .L614
	pushl $26464
	call _m3_fault
	.align 16
.L614:
	cmpl %ecx,4(%edx)
	ja .L616
	pushl $26482
	call _m3_fault
	.align 16
.L616:
	movl (%edx),%eax
	testb $2,1(%eax,%ecx,4)
	je .L617
	pushl $26480
	call _m3_fault
	.align 16
.L617:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L618
	pushl $26500
	call _m3_fault
	.align 16
.L618:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L619
	pushl $26498
	call _m3_fault
	.align 16
.L619:
	movl (%edx),%eax
	testb $1,1(%eax,%ecx,4)
	je .L620
	testb $4,(%eax,%ecx,4)
	je .L620
	pushl $26512
	call _m3_fault
	.align 16
.L620:
	pushl %edi
	call RTCollector__PageToHeader
	movl %eax,%edx
	movl %edx,-20(%ebp)
	leal 1(%edi),%eax
	addl $4,%esp
	cmpl $524287,%eax
	jle .L624
	pushl $26593
	call _m3_fault
	.align 16
.L624:
	pushl %eax
	call RTCollector__PageToHeader
	movl %eax,%edx
	movl %edx,-12(%ebp)
	addl $4,%esp
	cmpl %edi,MM_RTCollector+1680
	jne .L626
	movl MM_RTCollector+72,%esi
	movl %esi,-12(%ebp)
	jmp .L626
	.align 16
.L627:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L628
	pushl $26676
	call _m3_fault
	.align 16
.L628:
	movl %eax,%edx
	movl %edi,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%edx)
	ja .L629
	pushl $26674
	call _m3_fault
	.align 16
.L629:
	movl (%edx),%eax
	testb $1,1(%eax,%ecx,4)
	je .L630
	movl MM_RTCollector+700,%eax
	jmp .L655
	.align 16
.L630:
	movl MM_RTCollector+704,%eax
.L655:
	pushl %eax
	movl -20(%ebp),%esi
	pushl %esi
	movl MI_RTHeapMap+252,%eax
	call *%eax
	addl $8,%esp
	movl -20(%ebp),%esi
	pushl %esi
	call RTCollector__ReferentSize
	movl %eax,%ebx
	leal 4(%ebx,%esi),%ebx
	movl %ebx,-20(%ebp)
	addl $4,%esp
.L626:
	movl -12(%ebp),%esi
	cmpl %esi,-20(%ebp)
	jb .L627
	jbe .L633
	movl -20(%ebp),%eax
	decl %eax
	pushl %eax
	call RTCollector__HeaderToPage
	movl %eax,%ebx
	pushl %edi
	call RTCollector__PageCount
	leal -1(%eax,%edi),%eax
	addl $8,%esp
	cmpl %ebx,%eax
	je .L635
	pushl $26800
	call _m3_fault
	.align 16
.L633:
	pushl %edi
	call RTCollector__PageCount
	addl $4,%esp
	cmpl $1,%eax
	je .L635
	pushl $26832
	call _m3_fault
	.align 16
.L635:
	pushl %edi
	call RTCollector__PageCount
	movl %eax,-20(%ebp)
	movl MI_RTHeapRep+156,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L637
	pushl $26916
	call _m3_fault
	.align 16
.L637:
	movl %eax,%edx
	movl %edi,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%edx)
	ja .L638
	pushl $26914
	call _m3_fault
	.align 16
.L638:
	movl (%edx),%eax
	movl (%eax,%ecx,4),%eax
	movl %eax,-4(%ebp)
	orb $2,-3(%ebp)
	andl $-536869889,-4(%ebp)
.L639:
	leal 1(%edi),%eax
	cmpl $524287,%eax
	jle .L640
	pushl $26993
	call _m3_fault
	.align 16
.L640:
	movl %eax,%edi
	movl -20(%ebp),%eax
	decl %eax
	jns .L641
	pushl $27009
	call _m3_fault
	.align 16
.L641:
	movl %eax,-20(%ebp)
	testl %eax,%eax
	je .L602
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L644
	pushl $27044
	call _m3_fault
	.align 16
.L644:
	movl %eax,%edx
	movl %edi,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%edx)
	ja .L645
	pushl $27042
	call _m3_fault
	.align 16
.L645:
	movl (%edx),%eax
	movl (%eax,%ecx,4),%eax
	andl $-536869889,%eax
	movl %eax,-16(%ebp)
	movl %eax,-8(%ebp)
	xorl %ebx,%ebx
	movb -8(%ebp),%bl
	movl %ebx,%edx
	andl $3,%edx
	xorl %ecx,%ecx
	movb -4(%ebp),%cl
	movl %ecx,%eax
	andl $3,%eax
	cmpl %eax,%edx
	jne .L646
	movl %ebx,%edx
	sall $29,%edx
	shrl $31,%edx
	movl %ecx,%eax
	sall $29,%eax
	shrl $31,%eax
	cmpl %eax,%edx
	jne .L646
	movl %ebx,%edx
	sall $28,%edx
	shrl $31,%edx
	movl %ecx,%eax
	sall $28,%eax
	shrl $31,%eax
	cmpl %eax,%edx
	jne .L646
	movl %ebx,%edx
	sall $25,%edx
	shrl $29,%edx
	movl %ecx,%eax
	sall $25,%eax
	shrl $29,%eax
	cmpl %eax,%edx
	jne .L646
	movl %ebx,%edx
	shrl $7,%edx
	movl %ecx,%eax
	shrl $7,%eax
	cmpl %eax,%edx
	jne .L646
	xorl %ebx,%ebx
	movb -7(%ebp),%bl
	movl %ebx,%edx
	andl $1,%edx
	xorl %ecx,%ecx
	movb -3(%ebp),%cl
	movl %ecx,%eax
	andl $1,%eax
	cmpl %eax,%edx
	jne .L646
	movl %ebx,%edx
	sall $30,%edx
	shrl $31,%edx
	movl %ecx,%eax
	sall $30,%eax
	shrl $31,%eax
	cmpl %eax,%edx
	jne .L646
	testl $2097148,-3(%ebp)
	je .L639
.L646:
	pushl $27088
	call _m3_fault
	.align 16
.L649:
	movl -20(%ebp),%esi
	testb $2,1(%esi,%ecx,4)
	je .L650
	pushl $27168
	call _m3_fault
	.align 16
.L650:
	leal 1(%edi),%eax
	cmpl $524287,%eax
	jle .L651
	pushl $27185
	call _m3_fault
	.align 16
.L651:
	movl %eax,%edi
.L602:
	movl MI_RTHeapRep+48,%eax
	cmpl %eax,%edi
	jl .L603
	je .L601
	pushl $27232
	call _m3_fault
	.align 16
.L601:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe55:
	.size	 RTCollector__SanityCheck,.Lfe55-RTCollector__SanityCheck
	.align 16
	.type	 RTCollector__RefSanityCheck,@function
RTCollector__RefSanityCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L657
	pushl $27300
	call _m3_fault
	.align 16
.L657:
	movl (%eax),%ebx
	testl %ebx,%ebx
	je .L656
	pushl %ebx
	call RTCollector__ReferentToPage
	movl %eax,%esi
	pushl %ebx
	call RTCollector__HeaderOf
	addl $8,%esp
	testl %eax,%eax
	jne .L659
	pushl $27396
	call _m3_fault
	.align 16
.L659:
	movl %edi,%edx
	andl $-1048576,%edx
	movl (%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	movl %edx,%edi
	orl %eax,%edi
	movl MI_RTHeapRep+44,%edx
	cmpl %esi,%edx
	jg .L660
	cmpl %esi,MI_RTHeapRep+48
	jle .L660
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L661
	pushl $27444
	call _m3_fault
	.align 16
.L661:
	subl %edx,%esi
	movl %esi,%edx
	cmpl %edx,4(%eax)
	ja .L662
	pushl $27442
	call _m3_fault
	.align 16
.L662:
	movl (%eax),%ecx
	xorl %eax,%eax
	movb (%ecx,%edx,4),%al
	andl $3,%eax
	cmpl $3,%eax
	je .L665
	pushl $27440
	call _m3_fault
	.align 16
.L665:
	testb $2,1(%ecx,%edx,4)
	je .L666
	pushl $27456
	call _m3_fault
	.align 16
.L666:
	movl %edi,%eax
	andl $1048575,%eax
	testl %eax,%eax
	jle .L667
	cmpl %eax,MI_RT0u+156
	jg .L656
.L667:
	cmpl $1048575,%eax
	je .L656
	cmpl $1048574,%eax
	je .L656
	pushl $27472
	call _m3_fault
	.align 16
.L660:
	movl %edi,%eax
	andl $1048575,%eax
	cmpl $1,%eax
	je .L656
	pushl $27568
	call _m3_fault
	.align 16
.L656:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe56:
	.size	 RTCollector__RefSanityCheck,.Lfe56-RTCollector__RefSanityCheck
	.align 16
	.type	 RTCollector__ProtectedOlderRefSanityCheck,@function
RTCollector__ProtectedOlderRefSanityCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L672
	pushl $27700
	call _m3_fault
	.align 16
.L672:
	movl (%eax),%ebx
	testl %ebx,%ebx
	je .L671
	pushl %ebx
	call RTCollector__ReferentToPage
	movl %eax,%esi
	pushl %ebx
	call RTCollector__HeaderOf
	addl $8,%esp
	testl %eax,%eax
	jne .L674
	pushl $27796
	call _m3_fault
	.align 16
.L674:
	movl %edi,%edx
	andl $-1048576,%edx
	movl (%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	movl %edx,%edi
	orl %eax,%edi
	movl MI_RTHeapRep+44,%edx
	cmpl %esi,%edx
	jg .L675
	cmpl %esi,MI_RTHeapRep+48
	jle .L675
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L676
	pushl $27844
	call _m3_fault
	.align 16
.L676:
	subl %edx,%esi
	movl %esi,%edx
	cmpl %edx,4(%eax)
	ja .L677
	pushl $27842
	call _m3_fault
	.align 16
.L677:
	movl (%eax),%ebx
	xorl %ecx,%ecx
	movb (%ebx,%edx,4),%cl
	movl %ecx,%eax
	andl $3,%eax
	cmpl $3,%eax
	je .L679
	pushl $27840
	call _m3_fault
	.align 16
.L679:
	testb $4,%cl
	je .L682
	pushl $27856
	call _m3_fault
	.align 16
.L682:
	testb $2,1(%ebx,%edx,4)
	je .L684
	pushl $27872
	call _m3_fault
	.align 16
.L684:
	movl %edi,%eax
	andl $1048575,%eax
	testl %eax,%eax
	jle .L685
	cmpl %eax,MI_RT0u+156
	jg .L671
.L685:
	cmpl $1048575,%eax
	je .L671
	cmpl $1048574,%eax
	je .L671
	pushl $27888
	call _m3_fault
	.align 16
.L675:
	movl %edi,%eax
	andl $1048575,%eax
	cmpl $1,%eax
	je .L671
	pushl $27984
	call _m3_fault
	.align 16
.L671:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe57:
	.size	 RTCollector__ProtectedOlderRefSanityCheck,.Lfe57-RTCollector__ProtectedOlderRefSanityCheck
	.align 16
	.type	 M_RTCollector_LINE_1785.0,@function
M_RTCollector_LINE_1785.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl %ecx,-4(%ebp)
	call RTCollector__Enable
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe58:
	.size	 M_RTCollector_LINE_1785.0,.Lfe58-M_RTCollector_LINE_1785.0
	.align 16
	.type	 RTHeapRep__VisitAllRefs,@function
RTHeapRep__VisitAllRefs:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $M_RTCollector_LINE_1785.0,-8(%ebp)
	movl %ebp,-4(%ebp)
.L690:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
	call RTCollector__Disable
	movl MI_RTHeapRep+44,%esi
	movl MI_RTHeapRep+48,%edi
	decl %edi
	movl %edi,-20(%ebp)
	jmp .L691
	.align 16
.L692:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L693
	pushl $28212
	call _m3_fault
	.align 16
.L693:
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L694
	pushl $28210
	call _m3_fault
	.align 16
.L694:
	movl (%eax),%ecx
	xorl %eax,%eax
	movb (%ecx,%edx,4),%al
	andl $3,%eax
	cmpl $3,%eax
	jne .L695
	testb $2,1(%ecx,%edx,4)
	jne .L695
	pushl %esi
	call RTCollector__PageToHeader
	movl %eax,%ebx
	leal 1(%esi),%eax
	pushl %eax
	call RTCollector__PageToHeader
	movl %eax,-24(%ebp)
	addl $8,%esp
	jmp .L698
	.align 16
.L699:
	pushl %ebx
	call RTCollector__ReferentSize
	movl %eax,-28(%ebp)
	addl $4,%esp
	testl %ebx,%ebx
	jne .L700
	pushl $28356
	call _m3_fault
	.align 16
.L700:
	movl (%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl $1048575,%edx
	je .L701
	cmpl $1048574,%edx
	je .L701
	movl 8(%ebp),%edi
	movl (%edi),%eax
	movl 4(%eax),%ecx
	cmpl $0,-28(%ebp)
	jge .L702
	pushl $28385
	call _m3_fault
	.align 16
.L702:
	movl -28(%ebp),%edi
	pushl %edi
	leal 4(%ebx),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%edi
	pushl %edi
	call *%ecx
	addl $16,%esp
	testl %eax,%eax
	je .L709
.L701:
	movl -28(%ebp),%edi
	leal 4(%edi,%ebx),%ebx
.L698:
	cmpl %ebx,-24(%ebp)
	jbe .L695
	cmpl %esi,MM_RTCollector+1680
	jne .L699
	cmpl %ebx,MM_RTCollector+72
	ja .L699
.L695:
	incl %esi
.L691:
	cmpl %esi,-20(%ebp)
	jge .L692
.L709:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_RTCollector_LINE_1785.0
.L707:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe59:
	.size	 RTHeapRep__VisitAllRefs,.Lfe59-RTHeapRep__VisitAllRefs
	.align 16
	.type	 RTCollector__One,@function
RTCollector__One:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	movl 12(%ebp),%edi
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L711
	pushl $29092
	call _m3_fault
	.align 16
.L711:
	xorl %edx,%edx
	movl 4(%eax),%ebx
	decl %ebx
	jmp .L712
	.align 16
.L713:
	movl 4(%esi),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L714
	pushl $29108
	call _m3_fault
	.align 16
.L714:
	cmpl %edx,4(%eax)
	ja .L715
	pushl $29106
	call _m3_fault
	.align 16
.L715:
	movl (%eax),%eax
	cmpl %edi,(%eax,%edx,4)
	jne .L716
	movl 16(%ecx),%eax
	testl %eax,%eax
	jne .L717
	pushl $29108
	call _m3_fault
	.align 16
.L717:
	cmpl %edx,4(%eax)
	ja .L718
	pushl $29106
	call _m3_fault
	.align 16
.L718:
	movl (%eax),%eax
	incl (%eax,%edx,4)
	jmp .L721
	.align 16
.L716:
	incl %edx
.L712:
	cmpl %ebx,%edx
	jle .L713
.L721:
	movl $1,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe60:
	.size	 RTCollector__One,.Lfe60-RTCollector__One
	.align 16
	.type	 RTCollector__All,@function
RTCollector__All:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	movl 12(%ebp),%edx
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L723
	pushl $29268
	call _m3_fault
	.align 16
.L723:
	cmpl %edx,4(%eax)
	ja .L724
	pushl $29266
	call _m3_fault
	.align 16
.L724:
	movl (%eax),%eax
	movl %ebp,%esp
	incl (%eax,%edx,4)
	movl $1,%eax
	popl %ebp
	ret
.Lfe61:
	.size	 RTCollector__All,.Lfe61-RTCollector__All
	.align 16
	.type	 RTCollector__CountRefsForTypecodes,@function
RTCollector__CountRefsForTypecodes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%esi),%eax
	testl %eax,%eax
	jne .L726
	pushl $29364
	call _m3_fault
	.align 16
.L726:
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L727
	.align 16
.L728:
	movl 16(%esi),%eax
	testl %eax,%eax
	jne .L729
	pushl $29380
	call _m3_fault
	.align 16
.L729:
	cmpl %edx,4(%eax)
	ja .L730
	pushl $29378
	call _m3_fault
	.align 16
.L730:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L727:
	cmpl %ecx,%edx
	jle .L728
	movl 20(%esi),%eax
	pushl %eax
	call RTHeapRep__VisitAllRefs
	movl 12(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L732
	pushl $29428
	call _m3_fault
	.align 16
.L732:
	xorl %ebx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L733
	.align 16
.L734:
	pushl $MM_RTCollector+2788
	movl MI_RTIO+56,%eax
	call *%eax
	movl 12(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L735
	pushl $29460
	call _m3_fault
	.align 16
.L735:
	cmpl %ebx,4(%eax)
	ja .L736
	pushl $29458
	call _m3_fault
	.align 16
.L736:
	pushl $0
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTCollector+2808
	movl MI_RTIO+56,%eax
	call *%eax
	movl 16(%esi),%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L737
	pushl $29492
	call _m3_fault
	.align 16
.L737:
	cmpl %ebx,4(%eax)
	ja .L738
	pushl $29490
	call _m3_fault
	.align 16
.L738:
	pushl $0
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl 12(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L739
	pushl $29508
	call _m3_fault
	.align 16
.L739:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	je .L740
	pushl $MM_RTCollector+2828
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L740:
	incl %ebx
.L733:
	cmpl %edi,%ebx
	jle .L734
	pushl $MM_RTCollector+2844
	movl MI_RTIO+56,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe62:
	.size	 RTCollector__CountRefsForTypecodes,.Lfe62-RTCollector__CountRefsForTypecodes
	.align 16
	.type	 RTCollector__CountRefsForAllTypecodes,@function
RTCollector__CountRefsForAllTypecodes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%esi),%eax
	testl %eax,%eax
	jne .L743
	pushl $29620
	call _m3_fault
	.align 16
.L743:
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L744
	.align 16
.L745:
	movl 12(%esi),%eax
	testl %eax,%eax
	jne .L746
	pushl $29636
	call _m3_fault
	.align 16
.L746:
	cmpl %edx,4(%eax)
	ja .L747
	pushl $29634
	call _m3_fault
	.align 16
.L747:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L744:
	cmpl %ecx,%edx
	jle .L745
	movl 16(%esi),%eax
	pushl %eax
	call RTHeapRep__VisitAllRefs
	movl 12(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L749
	pushl $29684
	call _m3_fault
	.align 16
.L749:
	xorl %ebx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L750
	.align 16
.L751:
	movl 12(%esi),%eax
	testl %eax,%eax
	jne .L752
	pushl $29700
	call _m3_fault
	.align 16
.L752:
	cmpl %ebx,4(%eax)
	ja .L753
	pushl $29698
	call _m3_fault
	.align 16
.L753:
	movl (%eax),%eax
	cmpl $1,(%eax,%ebx,4)
	jle .L754
	pushl $0
	pushl %ebx
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTCollector+2860
	movl MI_RTIO+56,%eax
	call *%eax
	movl 12(%esi),%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L755
	pushl $29748
	call _m3_fault
	.align 16
.L755:
	cmpl %ebx,4(%eax)
	ja .L756
	pushl $29746
	call _m3_fault
	.align 16
.L756:
	pushl $0
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl 12(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L757
	pushl $29764
	call _m3_fault
	.align 16
.L757:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	je .L754
	pushl $MM_RTCollector+2876
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L754:
	incl %ebx
.L750:
	cmpl %edi,%ebx
	jle .L751
	pushl $MM_RTCollector+2844
	movl MI_RTIO+56,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe63:
	.size	 RTCollector__CountRefsForAllTypecodes,.Lfe63-RTCollector__CountRefsForAllTypecodes
	.align 16
	.type	 RTCollector__PerfStart,@function
RTCollector__PerfStart:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	pushl $MM_RTCollector+1468
	pushl $MM_RTCollector+2892
	movl MI_RTPerfTool+44,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L760
	movb $1,MM_RTCollector+1472
	movl MM_RTCollector+1488,%eax
	pushl %eax
	movl MI_RTProcess+44,%eax
	call *%eax
	movl MI_RTHeapRep+44,%edx
	movl MI_RTHeapRep+48,%eax
	subl %edx,%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L762
	pushl $30097
	call _m3_fault
	.align 16
.L762:
	pushl %eax
	pushl %edx
	call RTCollector__PerfGrow
	movl MI_RTHeapRep+44,%ecx
	addl $8,%esp
	jmp .L763
	.align 16
.L764:
	leal 1(%ecx),%eax
	cmpl $524287,%eax
	jle .L768
	pushl $30161
	call _m3_fault
	.align 16
.L767:
	leal 1(%ebx),%eax
	cmpl $524287,%eax
	jle .L768
	pushl $30177
	call _m3_fault
	.align 16
.L768:
	movl %eax,%ebx
	cmpl %ebx,MI_RTHeapRep+48
	jle .L772
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L770
	pushl $30180
	call _m3_fault
	.align 16
.L770:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L771
	pushl $30178
	call _m3_fault
	.align 16
.L771:
	movl (%eax),%eax
	testb $2,1(%eax,%edx,4)
	jne .L767
.L772:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L773
	pushl $30196
	call _m3_fault
	.align 16
.L773:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L774
	pushl $30194
	call _m3_fault
	.align 16
.L774:
	movl (%eax),%eax
	movb (%eax,%edx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $1,%eax
	je .L775
	movl %ebx,%eax
	subl %ecx,%eax
	jns .L776
	pushl $30193
	call _m3_fault
	.align 16
.L776:
	pushl %eax
	pushl %ecx
	call RTCollector__PerfChange
	addl $8,%esp
.L775:
	movl %ebx,%ecx
.L763:
	testl %ecx,%ecx
	je .L760
	cmpl %ecx,MI_RTHeapRep+48
	jg .L764
.L760:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe64:
	.size	 RTCollector__PerfStart,.Lfe64-RTCollector__PerfStart
	.align 16
	.type	 RTCollector__PerfFlip,@function
RTCollector__PerfFlip:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_RTCollector+2592,%edx
	movl MM_RTCollector+2592,%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe65:
	.size	 RTCollector__PerfFlip,.Lfe65-RTCollector__PerfFlip
	.align 16
	.type	 RTCollector__PerfPromotedRoots,@function
RTCollector__PerfPromotedRoots:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_RTCollector+2608,%edx
	movl MM_RTCollector+2608,%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe66:
	.size	 RTCollector__PerfPromotedRoots,.Lfe66-RTCollector__PerfPromotedRoots
	.align 16
	.type	 RTCollector__PerfStop,@function
RTCollector__PerfStop:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_RTCollector+2624,%edx
	movl MM_RTCollector+2624,%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe67:
	.size	 RTCollector__PerfStop,.Lfe67-RTCollector__PerfStop
	.align 16
	.type	 RTCollector__PerfAllow,@function
RTCollector__PerfAllow:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl MI_RTHeapRep+404,%eax
	addl MI_RTHeapRep+400,%eax
	movb $6,-16(%ebp)
	movl $0,-12(%ebp)
	movl %eax,-8(%ebp)
	movl MM_RTCollector+2912,%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe68:
	.size	 RTCollector__PerfAllow,.Lfe68-RTCollector__PerfAllow
	.align 16
	.type	 RTCollector__PerfBegin,@function
RTCollector__PerfBegin:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_RTCollector+2640,%edx
	movl MM_RTCollector+2640,%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe69:
	.size	 RTCollector__PerfBegin,.Lfe69-RTCollector__PerfBegin
	.align 16
	.type	 RTCollector__PerfEnd,@function
RTCollector__PerfEnd:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_RTCollector+2656,%edx
	movl MM_RTCollector+2656,%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe70:
	.size	 RTCollector__PerfEnd,.Lfe70-RTCollector__PerfEnd
	.align 16
	.type	 RTCollector__PerfChange,@function
RTCollector__PerfChange:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movb $4,-16(%ebp)
	movl %edx,-12(%ebp)
	movl %eax,-8(%ebp)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L786
	pushl $30964
	call _m3_fault
	.align 16
.L786:
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L787
	pushl $30962
	call _m3_fault
	.align 16
.L787:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe71:
	.size	 RTCollector__PerfChange,.Lfe71-RTCollector__PerfChange
	.align 16
	.type	 RTCollector__PerfGrow,@function
RTCollector__PerfGrow:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movb $5,-16(%ebp)
	movl %eax,-12(%ebp)
	movl %edx,-8(%ebp)
	movl MM_RTCollector+2916,%eax
	movl %eax,-4(%ebp)
	pushl $16
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_RTCollector+1468,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_RTCollector+1472
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe72:
	.size	 RTCollector__PerfGrow,.Lfe72-RTCollector__PerfGrow
	.align 16
	.type	 RTWeakRef__WeakRefFromRef,@function
RTWeakRef__WeakRefFromRef:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movb $0,-48(%ebp)
	testl %esi,%esi
	jne .L790
	pushl $31968
	call _m3_fault
	.align 16
.L790:
	movl MI_RTOS+56,%eax
	call *%eax
	testl %edi,%edi
	je .L793
	cmpb $0,MM_RTCollector+1636
	jne .L793
	movb $1,-48(%ebp)
	movb -48(%ebp),%cl
	movb %cl,MM_RTCollector+1636
.L793:
	cmpl $-1,MM_RTCollector+1632
	jne .L794
	call RTCollector__ExpandWeakTable
.L794:
	testl %edi,%edi
	je .L797
	pushl %esi
	call RTCollector__HeaderOf
	addl $4,%esp
	testl %eax,%eax
	jne .L798
	pushl $32196
	call _m3_fault
	.align 16
.L798:
	xorl %edx,%edx
	movb 2(%eax),%dl
	testb $32,%dl
	je .L800
	pushl $32192
	call _m3_fault
	.align 16
.L800:
	orb $32,%dl
	movb %dl,2(%eax)
.L797:
	movl MM_RTCollector+1632,%ebx
	movl MM_RTCollector+1616,%edx
	testl %edx,%edx
	jne .L801
	pushl $32308
	call _m3_fault
	.align 16
.L801:
	cmpl %ebx,4(%edx)
	ja .L802
	pushl $32306
	call _m3_fault
	.align 16
.L802:
	leal (%ebx,%ebx,4),%eax
	sall $2,%eax
	movl %eax,-52(%ebp)
	addl (%edx),%eax
	movl 16(%eax),%eax
	movl %eax,MM_RTCollector+1632
	movl %ebx,-24(%ebp)
	cmpl %ebx,4(%edx)
	ja .L804
	pushl $32338
	call _m3_fault
	.align 16
.L804:
	movl -52(%ebp),%eax
	addl (%edx),%eax
	movl 4(%eax),%eax
	incl %eax
	movl %eax,-20(%ebp)
	jne .L805
	pushl $32368
	call _m3_fault
	.align 16
.L805:
	movl %ebx,-44(%ebp)
	movl %eax,-40(%ebp)
	movl %esi,-36(%ebp)
	movl %edi,-32(%ebp)
	movl MM_RTCollector+1620,%eax
	movl %eax,-28(%ebp)
	cmpl %ebx,4(%edx)
	ja .L807
	pushl $32402
	call _m3_fault
	.align 16
.L807:
	movl -52(%ebp),%edi
	addl (%edx),%edi
	leal -44(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl -24(%ebp),%eax
	movl %eax,-8(%ebp)
	movl -20(%ebp),%eax
	movl %eax,-4(%ebp)
	movl MI_RTOS+60,%eax
	movl %ebx,MM_RTCollector+1620
	call *%eax
	cmpb $0,-48(%ebp)
	je .L808
	movl MM_RTCollector+2920,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl %eax
	movl MI_Thread+148,%eax
	call *%eax
.L808:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	leal -64(%ebp),%esp
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe73:
	.size	 RTWeakRef__WeakRefFromRef,.Lfe73-RTWeakRef__WeakRefFromRef
	.align 16
	.type	 RTCollector__ExpandWeakTable,@function
RTCollector__ExpandWeakTable:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_RTCollector+1616,%eax
	testl %eax,%eax
	jne .L810
	pushl $32676
	call _m3_fault
	.align 16
.L810:
	movl 4(%eax),%eax
	addl %eax,%eax
	orb $1,%al
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_RTCollector+2928,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L811
	pushl $32724
	call _m3_fault
	.align 16
.L811:
	movl MM_RTCollector+1616,%ecx
	testl %ecx,%ecx
	jne .L812
	pushl $32724
	call _m3_fault
	.align 16
.L812:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L813
	pushl $32721
	call _m3_fault
	.align 16
.L813:
	movl (%ebx),%esi
	movl %esi,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L815
	pushl $32723
	call _m3_fault
	.align 16
.L815:
	leal (%edx,%edx,4),%eax
	sall $2,%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	pushl %esi
	call memmove
	movl MM_RTCollector+1616,%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L816
	pushl $32740
	call _m3_fault
	.align 16
.L816:
	movl 4(%eax),%ecx
	movl 4(%ebx),%esi
	decl %esi
	jmp .L818
	.align 16
.L819:
	testl %ebx,%ebx
	jne .L820
	pushl $32756
	call _m3_fault
	.align 16
.L820:
	cmpl %ecx,4(%ebx)
	ja .L821
	pushl $32754
	call _m3_fault
	.align 16
.L821:
	leal (%ecx,%ecx,4),%eax
	movl (%ebx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-24(%ebp)
	movl $0,4(%eax)
	movl MM_RTCollector+1632,%edx
	movl %edx,16(%eax)
	movl %ecx,MM_RTCollector+1632
	incl %ecx
.L818:
	cmpl %esi,%ecx
	jle .L819
	leal -36(%ebp),%esp
	movl %ebx,MM_RTCollector+1616
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe74:
	.size	 RTCollector__ExpandWeakTable,.Lfe74-RTCollector__ExpandWeakTable
	.align 16
	.type	 RTWeakRef__WeakRefToRef,@function
RTWeakRef__WeakRefToRef:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	movl MI_RTOS+56,%eax
	xorl %ebx,%ebx
	call *%eax
	movl MM_RTCollector+1616,%eax
	testl %eax,%eax
	jne .L824
	pushl $33028
	call _m3_fault
	.align 16
.L824:
	movl -8(%ebp),%ecx
	cmpl %ecx,4(%eax)
	ja .L825
	pushl $33026
	call _m3_fault
	.align 16
.L825:
	leal (%ecx,%ecx,4),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-12(%ebp)
	cmpl %ecx,(%edx)
	jne .L826
	movl -4(%ebp),%eax
	cmpl %eax,4(%edx)
	jne .L826
	movl 8(%edx),%eax
	testl %eax,%eax
	jne .L827
	pushl $33072
	call _m3_fault
	.align 16
.L827:
	cmpb $0,MM_RTCollector+324
	je .L828
	pushl %eax
	call RTCollector__ReferentToPage
	movl %eax,%ecx
	addl $4,%esp
	testl %ecx,%ecx
	jne .L829
	pushl $33136
	call _m3_fault
	.align 16
.L829:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L830
	pushl $33156
	call _m3_fault
	.align 16
.L830:
	movl %eax,%edx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%edx)
	ja .L831
	pushl $33154
	call _m3_fault
	.align 16
.L831:
	movl (%edx),%eax
	movb (%eax,%ecx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $2,%eax
	jne .L828
	call RTCollector__CollectorOn
	movl -12(%ebp),%eax
	addl $8,%eax
	pushl %eax
	pushl %ebx
	call RTCollector__Move
	call RTCollector__CollectorOff
	addl $8,%esp
.L828:
	movl -12(%ebp),%eax
	movl 8(%eax),%ebx
.L826:
	movl MI_RTOS+60,%eax
	call *%eax
	movl %ebx,%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe75:
	.size	 RTWeakRef__WeakRefToRef,.Lfe75-RTWeakRef__WeakRefToRef
	.align 16
	.type	 RTHeapRep__RegisterFinalCleanup,@function
RTHeapRep__RegisterFinalCleanup:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L834
	pushl $33456
	call _m3_fault
	.align 16
.L834:
	cmpl $0,12(%ebp)
	jne .L836
	pushl $33472
	call _m3_fault
	.align 16
.L836:
	movl MI_RTOS+56,%eax
	call *%eax
	cmpl $-1,MM_RTCollector+1632
	jne .L838
	call RTCollector__ExpandWeakTable
.L838:
	movl MM_RTCollector+1632,%ecx
	movl MM_RTCollector+1616,%esi
	testl %esi,%esi
	jne .L839
	pushl $33604
	call _m3_fault
	.align 16
.L839:
	movl %esi,%edx
	cmpl %ecx,4(%edx)
	ja .L840
	pushl $33602
	call _m3_fault
	.align 16
.L840:
	leal (%ecx,%ecx,4),%eax
	leal 0(,%eax,4),%ebx
	movl %ebx,%eax
	addl (%edx),%eax
	movl 16(%eax),%eax
	movl %eax,MM_RTCollector+1632
	cmpl %ecx,4(%edx)
	ja .L842
	pushl $33634
	call _m3_fault
	.align 16
.L842:
	movl (%edx),%eax
	addl %ebx,%eax
	movl 8(%ebp),%edi
	movl %edi,8(%eax)
	cmpl %ecx,4(%edx)
	ja .L844
	pushl $33650
	call _m3_fault
	.align 16
.L844:
	movl (%edx),%edx
	addl %ebx,%edx
	movl 12(%ebp),%edi
	movl %edi,12(%edx)
	movl %esi,%edx
	cmpl %ecx,4(%edx)
	ja .L846
	pushl $33666
	call _m3_fault
	.align 16
.L846:
	movl %ebx,%eax
	addl (%edx),%eax
	movl MM_RTCollector+1624,%edx
	movl %edx,16(%eax)
	movl MI_RTOS+60,%eax
	movl %ecx,MM_RTCollector+1624
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe76:
	.size	 RTHeapRep__RegisterFinalCleanup,.Lfe76-RTHeapRep__RegisterFinalCleanup
	.align 16
	.type	 RTCollector__WeakCleaner,@function
RTCollector__WeakCleaner:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	jmp .L850
	.align 16
.L851:
	call RTCollector__Wait
.L850:
	cmpl $-1,MM_RTCollector+1628
	je .L851
	movl MI_RTOS+56,%eax
	call *%eax
	movl MM_RTCollector+1628,%ebx
	cmpl $-1,%ebx
	jne .L853
	movl MI_RTOS+60,%eax
	call *%eax
	jmp .L850
	.align 16
.L853:
	movl MM_RTCollector+1616,%edx
	testl %edx,%edx
	jne .L855
	pushl $34052
	call _m3_fault
	.align 16
.L855:
	cmpl %ebx,4(%edx)
	ja .L856
	pushl $34050
	call _m3_fault
	.align 16
.L856:
	leal (%ebx,%ebx,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	movl %eax,-24(%ebp)
	cmpl $-1,(%eax)
	je .L857
	pushl $34064
	call _m3_fault
	.align 16
.L857:
	call RTCollector__CollectorOn
	movl -24(%ebp),%eax
	addl $8,%eax
	pushl %eax
	pushl $0
	call RTCollector__Move
	call RTCollector__CollectorOff
	leal -20(%ebp),%edi
	movl -24(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl -24(%ebp),%edx
	movl 16(%edx),%eax
	movl %eax,MM_RTCollector+1628
	movl MM_RTCollector+1632,%eax
	movl %eax,16(%edx)
	movl MI_RTOS+60,%eax
	movl %ebx,MM_RTCollector+1632
	call *%eax
	addl $8,%esp
	movl -8(%ebp),%edx
	testl %edx,%edx
	je .L858
	movl %ebx,-32(%ebp)
	movl -16(%ebp),%eax
	movl %eax,-28(%ebp)
	movl -12(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	call *%edx
	addl $8,%esp
.L858:
	movl $0,-12(%ebp)
	jmp .L850
	.align 16
.Lfe77:
	.size	 RTCollector__WeakCleaner,.Lfe77-RTCollector__WeakCleaner
	.align 16
	.type	 RTCollector__FirstPage,@function
RTCollector__FirstPage:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	jmp .L861
	.align 16
.L862:
	leal -1(%edx),%eax
	testl %eax,%eax
	jge .L863
	pushl $34497
	call _m3_fault
	.align 16
.L863:
	movl %eax,%edx
.L861:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L864
	pushl $34500
	call _m3_fault
	.align 16
.L864:
	movl %edx,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%eax)
	ja .L865
	pushl $34498
	call _m3_fault
	.align 16
.L865:
	movl (%eax),%eax
	testb $2,1(%eax,%ecx,4)
	jne .L862
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe78:
	.size	 RTCollector__FirstPage,.Lfe78-RTCollector__FirstPage
	.align 16
	.type	 RTCollector__PageCount,@function
RTCollector__PageCount:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	xorl %ebx,%ebx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L868
	pushl $34612
	call _m3_fault
	.align 16
.L868:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L869
	pushl $34610
	call _m3_fault
	.align 16
.L869:
	movl (%eax),%eax
	testb $2,1(%eax,%edx,4)
	je .L871
	pushl $34608
	call _m3_fault
	.align 16
.L871:
	leal 1(%ecx),%eax
	cmpl $524287,%eax
	jle .L872
	pushl $34625
	call _m3_fault
	.align 16
.L872:
	movl %eax,%ecx
	incl %ebx
	cmpl %ecx,MI_RTHeapRep+48
	jle .L876
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L874
	pushl $34628
	call _m3_fault
	.align 16
.L874:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L875
	pushl $34626
	call _m3_fault
	.align 16
.L875:
	movl (%eax),%eax
	testb $2,1(%eax,%edx,4)
	jne .L871
.L876:
	testl %ebx,%ebx
	jge .L877
	pushl $34641
	call _m3_fault
	.align 16
.L877:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe79:
	.size	 RTCollector__PageCount,.Lfe79-RTCollector__PageCount
	.align 16
	.type	 RTCollector__Protect,@function
RTCollector__Protect:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb 12(%ebp),%bl
	movl 8(%ebp),%ecx
	pushl %ecx
	call RTCollector__PageCount
	movl %eax,%esi
	addl $4,%esp
	cmpb $0,MM_RTCollector+338
	jne .L879
	testb %bl,%bl
	je .L880
	cmpb $0,16(%ebp)
	jne .L879
.L880:
	pushl $34768
	call _m3_fault
	.align 16
.L879:
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %esi
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_RTHeapDep+44,%eax
	call *%eax
	xorl %eax,%eax
	addl $16,%esp
	testb %bl,%bl
	je .L881
	cmpb $0,16(%ebp)
	setne %al
	andl $255,%eax
.L881:
	testl %eax,%eax
	sete %cl
	movb %cl,-4(%ebp)
	xorl %ebx,%ebx
	leal -1(%esi),%edi
	jmp .L882
	.align 16
.L883:
	movl MI_RTHeapRep+156,%edx
	testl %edx,%edx
	jne .L884
	pushl $34868
	call _m3_fault
	.align 16
.L884:
	movl 8(%ebp),%eax
	addl %ebx,%eax
	subl MI_RTHeapRep+44,%eax
	movl %eax,-8(%ebp)
	cmpl %eax,4(%edx)
	ja .L885
	pushl $34866
	call _m3_fault
	.align 16
.L885:
	movl (%edx),%eax
	movl -8(%ebp),%ecx
	leal (%eax,%ecx,4),%edx
	movb -4(%ebp),%cl
	incl %ebx
	xorl %eax,%eax
	movb 1(%edx),%al
	andb $254,%al
	orb %al,%cl
	movb %cl,1(%edx)
.L882:
	cmpl %edi,%ebx
	jle .L883
	cmpb $0,MM_RTCollector+1472
	je .L878
	pushl %esi
	movl 8(%ebp),%ecx
	pushl %ecx
	call RTCollector__PerfChange
.L878:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe80:
	.size	 RTCollector__Protect,.Lfe80-RTCollector__Protect
	.align 16
	.type	 RTCollector__Unprotect,@function
RTCollector__Unprotect:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $1
	pushl $1
	pushl %eax
	call RTCollector__Protect
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe81:
	.size	 RTCollector__Unprotect,.Lfe81-RTCollector__Unprotect
	.align 16
	.type	 RTHeapRep__Fault,@function
RTHeapRep__Fault:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L890:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl MI_ThreadF+52,%eax
	movl 8(%ebp),%edi
	call *%eax
	movl MI_RTHeapDep+52,%eax
	call *%eax
	fadds MM_RTCollector+372
	sarl $13,%edi
	movl MI_RTHeapRep+44,%edx
	fstps MM_RTCollector+372
	cmpl %edi,%edx
	jg .L891
	cmpl %edi,MI_RTHeapRep+48
	jle .L891
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L892
	pushl $35156
	call _m3_fault
	.align 16
.L892:
	movl %eax,%ebx
	movl %edi,%esi
	subl %edx,%esi
	movl %esi,%edx
	cmpl %edx,4(%ebx)
	ja .L893
	pushl $35154
	call _m3_fault
	.align 16
.L893:
	movl (%ebx),%ecx
	xorl %eax,%eax
	movb (%ecx,%edx,4),%al
	testb $3,%al
	jne .L895
.L891:
	movl MI_ThreadF+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L889
	.align 16
.L895:
	testb $1,1(%ecx,%edx,4)
	je .L951
	sall $28,%eax
	shrl $31,%eax
	movl %eax,-12(%ebp)
	je .L900
	pushl $35280
	call _m3_fault
	.align 16
.L900:
	cmpl %edx,4(%ebx)
	ja .L902
	pushl $35298
	call _m3_fault
	.align 16
.L902:
	movl (%ebx),%eax
	testb $128,(%eax,%edx,4)
	je .L903
	call RTCollector__CollectorOn
	cmpl %edi,MM_RTCollector+1664
	jne .L904
	call RTCollector__CopySome
	movl %eax,-16(%ebp)
	testl %eax,%eax
	je .L905
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L906
	pushl $35364
	call _m3_fault
	.align 16
.L906:
	movl %eax,%ebx
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L907
	pushl $35362
	call _m3_fault
	.align 16
.L907:
	movl (%ebx),%eax
	testb $128,(%eax,%edx,4)
	je .L930
	pushl $35360
	call _m3_fault
	.align 16
.L905:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L910
	pushl $35396
	call _m3_fault
	.align 16
.L910:
	movl %eax,%ebx
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L911
	pushl $35394
	call _m3_fault
	.align 16
.L911:
	movl (%ebx),%eax
	testb $128,(%eax,%edx,4)
	je .L930
	cmpl %edi,MM_RTCollector+1664
	jne .L913
	movl MM_RTCollector+1668,%ebx
	testl %ebx,%ebx
	je .L914
.L913:
	pushl $35408
	call _m3_fault
	.align 16
.L914:
	movl MM_RTCollector+88,%edx
	movl MM_RTCollector+92,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	call RTCollector__InsertFiller
	movl -16(%ebp),%esi
	movl %esi,MM_RTCollector+1664
	movl %esi,MM_RTCollector+1668
	movl %esi,MM_RTCollector+88
	movl %esi,MM_RTCollector+92
	addl $8,%esp
	cmpl $524287,%edi
	jbe .L915
	pushl $35505
	call _m3_fault
	.align 16
.L915:
	pushl %edi
	call RTCollector__PageCount
	movl %eax,-16(%ebp)
	movl %ebx,%ecx
	movl %eax,%esi
	decl %esi
	movl %esi,-16(%ebp)
	addl $4,%esp
	jmp .L916
	.align 16
.L917:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L918
	pushl $35524
	call _m3_fault
	.align 16
.L918:
	movl %eax,%ebx
	leal (%ecx,%edi),%eax
	movl %eax,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L919
	pushl $35522
	call _m3_fault
	.align 16
.L919:
	movl (%ebx),%eax
	incl %ecx
	andb $127,(%eax,%edx,4)
.L916:
	cmpl %ecx,-16(%ebp)
	jge .L917
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L921
	pushl $35556
	call _m3_fault
	.align 16
.L921:
	movl %eax,%ebx
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L922
	pushl $35554
	call _m3_fault
	.align 16
.L922:
	movl (%ebx),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	sall $29,%eax
	movl %eax,%ecx
	shrl $31,%ecx
	jne .L923
	movl %edx,%eax
	andl $3,%eax
	cmpl $3,%eax
	je .L926
	pushl $35568
	call _m3_fault
	.align 16
.L926:
	cmpl $524287,%edi
	jbe .L927
	pushl $35585
	call _m3_fault
	.align 16
.L927:
	pushl %ecx
	pushl $1
	pushl %edi
	call RTCollector__Protect
	addl $12,%esp
.L923:
	cmpb $0,MM_RTCollector+1472
	je .L930
	cmpl $524287,%edi
	jbe .L929
	pushl $35617
	call _m3_fault
	.align 16
.L929:
	pushl $1
	jmp .L958
	.align 16
.L904:
	cmpl $524287,%edi
	jbe .L931
	pushl $35681
	call _m3_fault
	.align 16
.L931:
	pushl %edi
	call RTCollector__FirstPage
	movl %eax,%edi
	addl $4,%esp
	cmpl $524287,%edi
	jbe .L932
	pushl $35697
	call _m3_fault
	.align 16
.L932:
	pushl %edi
	call RTCollector__Unprotect
	addl $4,%esp
	pushl %edi
	call RTCollector__PageToHeader
	movl %eax,%ebx
	leal 1(%edi),%eax
	addl $4,%esp
	cmpl $524287,%eax
	jbe .L934
	pushl $35713
	call _m3_fault
	.align 16
.L934:
	pushl %eax
	call RTCollector__PageToHeader
	movl %eax,%edx
	pushl %edx
	pushl %ebx
	call RTCollector__CleanBetween
	addl $12,%esp
	pushl %edi
	call RTCollector__PageCount
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl %eax,%esi
	decl %esi
	movl %esi,-16(%ebp)
	addl $4,%esp
	jmp .L936
	.align 16
.L937:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L938
	pushl $35748
	call _m3_fault
	.align 16
.L938:
	movl %eax,%edx
	leal (%ebx,%edi),%eax
	movl %eax,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%edx)
	ja .L939
	pushl $35746
	call _m3_fault
	.align 16
.L939:
	movl (%edx),%eax
	incl %ebx
	andb $127,(%eax,%ecx,4)
.L936:
	cmpl %ebx,-16(%ebp)
	jge .L937
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L941
	pushl $35780
	call _m3_fault
	.align 16
.L941:
	movl %eax,%ebx
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L942
	pushl $35778
	call _m3_fault
	.align 16
.L942:
	movl (%ebx),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	sall $29,%eax
	movl %eax,%ecx
	shrl $31,%ecx
	jne .L943
	movl %edx,%eax
	andl $3,%eax
	cmpl $3,%eax
	je .L946
	pushl $35792
	call _m3_fault
	.align 16
.L946:
	cmpl $524287,%edi
	jbe .L947
	pushl $35809
	call _m3_fault
	.align 16
.L947:
	pushl %ecx
	pushl $1
	pushl %edi
	call RTCollector__Protect
	addl $12,%esp
.L943:
	cmpb $0,MM_RTCollector+1472
	je .L930
	cmpl $524287,%edi
	jbe .L949
	pushl $35841
	call _m3_fault
	.align 16
.L949:
	pushl %edi
	call RTCollector__PageCount
	addl $4,%esp
	movl %eax,-16(%ebp)
	pushl %eax
.L958:
	pushl %edi
	call RTCollector__PerfChange
	addl $8,%esp
.L930:
	call RTCollector__CollectorOff
	jmp .L951
	.align 16
.L903:
	cmpl $524287,%edi
	jbe .L952
	pushl $35905
	call _m3_fault
	.align 16
.L952:
	pushl %edi
	call RTCollector__FirstPage
	movl %eax,%edi
	movl MI_RTHeapRep+156,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L953
	pushl $35924
	call _m3_fault
	.align 16
.L953:
	movl %eax,%ebx
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ebx)
	ja .L954
	pushl $35922
	call _m3_fault
	.align 16
.L954:
	movl (%ebx),%eax
	testb $4,(%eax,%edx,4)
	je .L955
	pushl $35920
	call _m3_fault
	.align 16
.L955:
	cmpl $524287,%edi
	jbe .L956
	pushl $35937
	call _m3_fault
	.align 16
.L956:
	pushl %edi
	call RTCollector__Unprotect
	addl $4,%esp
.L951:
	movl MI_ThreadF+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L957:
.L889:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe82:
	.size	 RTHeapRep__Fault,.Lfe82-RTHeapRep__Fault
	.align 16
	.type	 RTCollector__FindFreePages,@function
RTCollector__FindFreePages:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	cmpb $0,MM_RTCollector+324
	jne .L960
	pushl $1
	jmp .L967
	.align 16
.L960:
	pushl $1
	pushl %edx
	pushl %ebx
	call RTCollector__AllocateFreePagesFromBlock
	addl $12,%esp
	testl %eax,%eax
	jne .L966
	pushl %eax
.L967:
	pushl %eax
	pushl %ebx
	call RTCollector__AllocateFreePagesFromBlock
	addl $12,%esp
	testl %eax,%eax
	jne .L966
	pushl %ebx
	call RTCollector__GrowHeap
	pushl $1
	pushl $0
	pushl %ebx
	call RTCollector__AllocateFreePagesFromBlock
	addl $16,%esp
	testl %eax,%eax
	jne .L965
	pushl $37216
	call _m3_fault
	.align 16
.L965:
.L966:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe83:
	.size	 RTCollector__FindFreePages,.Lfe83-RTCollector__FindFreePages
	.align 16
	.type	 RTCollector__AllocateFreePagesFromBlock,@function
RTCollector__AllocateFreePagesFromBlock:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MM_RTCollector+1692,%ebx
	movl %esi,-4(%ebp)
.L969:
	testl %ebx,%ebx
	jne .L970
.L1028:
	movl %ebx,%eax
	jmp .L1027
	.align 16
.L970:
	pushl %ebx
	call RTCollector__FreeLength
	movl %eax,-16(%ebp)
	addl $4,%esp
	movl 8(%ebp),%edi
	cmpl %edi,%eax
	jl .L971
	movl MI_RTHeapRep+44,%edx
	cmpl %edx,%ebx
	jle .L979
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L973
	pushl $37668
	call _m3_fault
	.align 16
.L973:
	movl %eax,%ecx
	leal 1(%edx),%eax
	movl %ebx,%edx
	subl %eax,%edx
	cmpl %edx,4(%ecx)
	ja .L974
	pushl $37666
	call _m3_fault
	.align 16
.L974:
	movl (%ecx),%eax
	movb (%eax,%edx,4),%dl
	andl $255,%edx
	movl %edx,%eax
	andl $3,%eax
	cmpl $3,%eax
	jne .L979
	movl %edx,%eax
	sall $25,%eax
	shrl $29,%eax
	cmpl $31,%eax
	ja .L979
	movl 12(%ebp),%edi
	btl %eax,%edi
	jnc .L979
.L971:
	movl %ebx,%esi
	movl -16(%ebp),%edi
	movl %edi,-4(%ebp)
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L980
	pushl $37780
	call _m3_fault
	.align 16
.L980:
	movl %eax,%ecx
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L981
	pushl $37778
	call _m3_fault
	.align 16
.L981:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	movl %eax,%ebx
	shrl $13,%ebx
	jmp .L969
	.align 16
.L979:
	movl 8(%ebp),%edi
	cmpl %edi,-16(%ebp)
	jne .L982
	testl %esi,%esi
	jne .L983
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L984
	pushl $37844
	call _m3_fault
	.align 16
.L984:
	movl %eax,%ecx
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L985
	pushl $37842
	call _m3_fault
	.align 16
.L985:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	shrl $13,%eax
	movl %eax,MM_RTCollector+1692
	jmp .L1028
	.align 16
.L983:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L987
	pushl $37876
	call _m3_fault
	.align 16
.L987:
	movl %eax,%ecx
	movl MI_RTHeapRep+44,%edx
	subl %edx,%esi
	movl 4(%ecx),%eax
	cmpl %eax,%esi
	jb .L989
	pushl $37874
	call _m3_fault
	.align 16
.L989:
	movl %ebx,%edi
	subl %edx,%edi
	movl %edi,-16(%ebp)
	cmpl %eax,%edi
	jb .L990
	pushl $37874
	call _m3_fault
	.align 16
.L990:
	movl (%ecx),%eax
	leal (%eax,%esi,4),%ecx
	movl -16(%ebp),%edi
	movl (%ecx),%edx
	andl $-536869889,%edx
	movl (%eax,%edi,4),%eax
	andl $536869888,%eax
	orl %eax,%edx
	movl %edx,(%ecx)
	jmp .L1028
	.align 16
.L982:
	cmpb $0,16(%ebp)
	je .L991
	movl %ebx,-8(%ebp)
	movl %ebx,%eax
	addl 8(%ebp),%eax
	cmpl $524287,%eax
	jbe .L992
	pushl $38033
	call _m3_fault
	.align 16
.L992:
	movl %eax,-12(%ebp)
	jmp .L993
	.align 16
.L991:
	movl -16(%ebp),%edi
	leal (%edi,%ebx),%eax
	subl 8(%ebp),%eax
	cmpl $524287,%eax
	jbe .L994
	pushl $38065
	call _m3_fault
	.align 16
.L994:
	movl %eax,-8(%ebp)
	movl %ebx,-12(%ebp)
.L993:
	movl -16(%ebp),%eax
	subl 8(%ebp),%eax
	jns .L995
	pushl $38113
	call _m3_fault
	.align 16
.L995:
	movl %eax,-16(%ebp)
	movl -4(%ebp),%edi
	cmpl %edi,%eax
	jle .L996
	testl %esi,%esi
	jne .L997
	movl -12(%ebp),%edi
	movl %edi,MM_RTCollector+1692
	jmp .L998
	.align 16
.L997:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L999
	pushl $38196
	call _m3_fault
	.align 16
.L999:
	movl %eax,%ecx
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1000
	pushl $38194
	call _m3_fault
	.align 16
.L1000:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%ecx
	movl -12(%ebp),%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%ecx),%edx
	andl $-536869889,%edx
	orl %eax,%edx
	movl %edx,(%ecx)
.L998:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1001
	pushl $38228
	call _m3_fault
	.align 16
.L1001:
	movl %eax,%ecx
	movl MI_RTHeapRep+44,%eax
	movl -12(%ebp),%esi
	subl %eax,%esi
	movl 4(%ecx),%edx
	cmpl %edx,%esi
	jb .L1003
	pushl $38226
	call _m3_fault
	.align 16
.L1003:
	subl %eax,%ebx
	cmpl %edx,%ebx
	jb .L1004
	pushl $38226
	call _m3_fault
	.align 16
.L1004:
	movl (%ecx),%eax
	leal (%eax,%esi,4),%ecx
	movl (%ecx),%edx
	andl $-536869889,%edx
	movl (%eax,%ebx,4),%eax
	andl $536869888,%eax
	jmp .L1029
	.align 16
.L996:
	testl %esi,%esi
	jne .L1006
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1007
	pushl $38276
	call _m3_fault
	.align 16
.L1007:
	movl %eax,%ecx
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1008
	pushl $38274
	call _m3_fault
	.align 16
.L1008:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	shrl $13,%eax
	movl %eax,MM_RTCollector+1692
	jmp .L1009
	.align 16
.L1006:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1010
	pushl $38308
	call _m3_fault
	.align 16
.L1010:
	movl %eax,%ecx
	movl MI_RTHeapRep+44,%eax
	subl %eax,%esi
	movl 4(%ecx),%edx
	cmpl %edx,%esi
	jb .L1012
	pushl $38306
	call _m3_fault
	.align 16
.L1012:
	subl %eax,%ebx
	cmpl %edx,%ebx
	jb .L1013
	pushl $38306
	call _m3_fault
	.align 16
.L1013:
	movl (%ecx),%eax
	leal (%eax,%esi,4),%ecx
	movl (%ecx),%edx
	andl $-536869889,%edx
	movl (%eax,%ebx,4),%eax
	andl $536869888,%eax
	orl %eax,%edx
	movl %edx,(%ecx)
.L1009:
	movl MM_RTCollector+1692,%ebx
	xorl %esi,%esi
.L1014:
	testl %ebx,%ebx
	je .L1016
	pushl %ebx
	call RTCollector__FreeLength
	addl $4,%esp
	cmpl %eax,-16(%ebp)
	jl .L1016
	jne .L1018
	cmpl %ebx,-12(%ebp)
	jl .L1016
.L1018:
	movl %ebx,%esi
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1019
	pushl $38564
	call _m3_fault
	.align 16
.L1019:
	movl %eax,%ecx
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1020
	pushl $38562
	call _m3_fault
	.align 16
.L1020:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	movl %eax,%ebx
	shrl $13,%ebx
	jmp .L1014
	.align 16
.L1016:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1021
	pushl $38596
	call _m3_fault
	.align 16
.L1021:
	movl %eax,%ecx
	movl -12(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1022
	pushl $38594
	call _m3_fault
	.align 16
.L1022:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%ecx
	movl %ebx,%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%ecx),%edx
	andl $-536869889,%edx
	orl %eax,%edx
	movl %edx,(%ecx)
	testl %esi,%esi
	jne .L1023
	movl -12(%ebp),%edi
	movl %edi,MM_RTCollector+1692
	jmp .L1005
	.align 16
.L1023:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1025
	pushl $38660
	call _m3_fault
	.align 16
.L1025:
	movl %eax,%ecx
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1026
	pushl $38658
	call _m3_fault
	.align 16
.L1026:
	movl (%ecx),%eax
	leal (%eax,%edx,4),%ecx
	movl -12(%ebp),%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%ecx),%edx
	andl $-536869889,%edx
.L1029:
	orl %eax,%edx
	movl %edx,(%ecx)
.L1005:
	movl -8(%ebp),%eax
.L1027:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe84:
	.size	 RTCollector__AllocateFreePagesFromBlock,.Lfe84-RTCollector__AllocateFreePagesFromBlock
	.align 16
	.type	 RTCollector__RebuildFreelist,@function
RTCollector__RebuildFreelist:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movb $0,-4(%ebp)
	movl MI_RTHeapRep+44,%ebx
	movl %ebx,-36(%ebp)
	movl MI_RTHeapRep+48,%ebx
	decl %ebx
	movl %ebx,-8(%ebp)
	jmp .L1031
	.align 16
.L1032:
	movl MI_RTHeapRep+156,%edx
	testl %edx,%edx
	jne .L1033
	pushl $39012
	call _m3_fault
	.align 16
.L1033:
	movl MI_RTHeapRep+44,%ebx
	movl %ebx,-16(%ebp)
	movl -36(%ebp),%ecx
	subl %ebx,%ecx
	movl 4(%edx),%ebx
	movl %ebx,-20(%ebp)
	cmpl %ebx,%ecx
	jb .L1034
	pushl $39010
	call _m3_fault
	.align 16
.L1034:
	movb -12(%ebp),%al
	movl (%edx),%edi
	andl $252,%eax
	movb (%edi,%ecx,4),%dl
	andb $3,%dl
	orb %al,%dl
	movb %dl,-12(%ebp)
	movb %dl,%al
	andl $3,%eax
	cmpl $1,%eax
	jne .L1035
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl $1,%eax
	je .L1035
	testl %esi,%esi
	jne .L1038
	movl -36(%ebp),%ebx
	movl %ebx,MM_RTCollector+1692
	jmp .L1037
	.align 16
.L1038:
	movl %esi,%eax
	subl -16(%ebp),%eax
	cmpl %eax,-20(%ebp)
	ja .L1039
	pushl $39106
	call _m3_fault
	.align 16
.L1039:
	leal (%edi,%eax,4),%eax
	movl -36(%ebp),%edx
	andl $524287,%edx
	sall $10,%edx
	movl (%eax),%ecx
	andl $-536869889,%ecx
	orl %edx,%ecx
	movl %ecx,(%eax)
.L1037:
	movl -36(%ebp),%esi
.L1035:
	movb -12(%ebp),%bl
	andb $3,%bl
	movb %bl,-4(%ebp)
	incl -36(%ebp)
.L1031:
	movl -8(%ebp),%ebx
	cmpl %ebx,-36(%ebp)
	jle .L1032
	testl %esi,%esi
	jne .L1041
	movl %esi,MM_RTCollector+1692
	jmp .L1042
	.align 16
.L1041:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1043
	pushl $39268
	call _m3_fault
	.align 16
.L1043:
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1044
	pushl $39266
	call _m3_fault
	.align 16
.L1044:
	movl (%eax),%eax
	andl $-536869889,(%eax,%edx,4)
.L1042:
	movl $1,-24(%ebp)
	movl MM_RTCollector+1692,%esi
	movl $0,-28(%ebp)
.L1045:
	movl $0,-32(%ebp)
	movl -32(%ebp),%edi
	jmp .L1046
	.align 16
.L1047:
	pushl %esi
	call RTCollector__FreeLength
	addl $4,%esp
	cmpl %eax,-24(%ebp)
	jle .L1048
	pushl $39552
	call _m3_fault
	.align 16
.L1048:
	cmpl %eax,-24(%ebp)
	jge .L1049
	testl %edi,%edi
	jne .L1050
	movl %esi,-32(%ebp)
	jmp .L1051
	.align 16
.L1050:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1052
	pushl $39636
	call _m3_fault
	.align 16
.L1052:
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1053
	pushl $39634
	call _m3_fault
	.align 16
.L1053:
	movl (%eax),%eax
	leal (%eax,%edx,4),%ecx
	movl %esi,%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%ecx),%edx
	andl $-536869889,%edx
	orl %eax,%edx
	movl %edx,(%ecx)
.L1051:
	cmpl $0,-28(%ebp)
	jne .L1054
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1055
	pushl $39684
	call _m3_fault
	.align 16
.L1055:
	movl %eax,%ecx
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1056
	pushl $39682
	call _m3_fault
	.align 16
.L1056:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	shrl $13,%eax
	movl %eax,MM_RTCollector+1692
	jmp .L1057
	.align 16
.L1054:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1058
	pushl $39716
	call _m3_fault
	.align 16
.L1058:
	movl %eax,%ecx
	movl MI_RTHeapRep+44,%edx
	movl -28(%ebp),%ebx
	subl %edx,%ebx
	movl %ebx,-36(%ebp)
	movl 4(%ecx),%eax
	cmpl %eax,%ebx
	jb .L1060
	pushl $39714
	call _m3_fault
	.align 16
.L1060:
	movl %esi,%edi
	subl %edx,%edi
	cmpl %eax,%edi
	jb .L1061
	pushl $39714
	call _m3_fault
	.align 16
.L1061:
	movl (%ecx),%eax
	movl -36(%ebp),%ebx
	leal (%eax,%ebx,4),%edx
	movl (%edx),%ecx
	andl $-536869889,%ecx
	movl (%eax,%edi,4),%eax
	andl $536869888,%eax
	orl %eax,%ecx
	movl %ecx,(%edx)
.L1057:
	movl %esi,%edi
	jmp .L1062
	.align 16
.L1049:
	movl %esi,-28(%ebp)
.L1062:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1063
	pushl $39828
	call _m3_fault
	.align 16
.L1063:
	movl %esi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1064
	pushl $39826
	call _m3_fault
	.align 16
.L1064:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	movl %eax,%esi
	shrl $13,%esi
.L1046:
	testl %esi,%esi
	jne .L1047
	cmpl $0,-32(%ebp)
	je .L1030
	testl %edi,%edi
	jne .L1068
	pushl $39888
	call _m3_fault
	.align 16
.L1068:
	cmpl $0,-28(%ebp)
	jne .L1069
	movl -32(%ebp),%ebx
	movl %ebx,MM_RTCollector+1692
	jmp .L1070
	.align 16
.L1069:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1071
	pushl $39972
	call _m3_fault
	.align 16
.L1071:
	movl -28(%ebp),%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1072
	pushl $39970
	call _m3_fault
	.align 16
.L1072:
	movl (%eax),%eax
	leal (%eax,%edx,4),%ecx
	movl -32(%ebp),%eax
	andl $524287,%eax
	sall $10,%eax
	movl (%ecx),%edx
	andl $-536869889,%edx
	orl %eax,%edx
	movl %edx,(%ecx)
.L1070:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1073
	pushl $40004
	call _m3_fault
	.align 16
.L1073:
	movl %eax,%ecx
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%ecx)
	ja .L1074
	pushl $40002
	call _m3_fault
	.align 16
.L1074:
	movl (%ecx),%eax
	andl $-536869889,(%eax,%edx,4)
	movl -32(%ebp),%esi
	movl $2147483647,-24(%ebp)
	movl %esi,%edi
.L1075:
	pushl %edi
	call RTCollector__FreeLength
	addl $4,%esp
	cmpl %eax,-24(%ebp)
	jle .L1076
	movl %eax,-24(%ebp)
.L1076:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1077
	pushl $40196
	call _m3_fault
	.align 16
.L1077:
	movl %edi,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1078
	pushl $40194
	call _m3_fault
	.align 16
.L1078:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	sall $3,%eax
	movl %eax,%edi
	shrl $13,%edi
	jne .L1075
	jmp .L1045
	.align 16
.L1030:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe85:
	.size	 RTCollector__RebuildFreelist,.Lfe85-RTCollector__RebuildFreelist
	.align 16
	.type	 RTCollector__FreeLength,@function
RTCollector__FreeLength:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1081
	pushl $40372
	call _m3_fault
	.align 16
.L1081:
	movl %ebx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1082
	pushl $40370
	call _m3_fault
	.align 16
.L1082:
	movl (%eax),%eax
	movb (%eax,%edx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $1,%eax
	je .L1083
	pushl $40368
	call _m3_fault
	.align 16
.L1083:
	leal 1(%ebx),%edx
.L1084:
	cmpl %edx,MI_RTHeapRep+48
	jle .L1086
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1087
	pushl $40452
	call _m3_fault
	.align 16
.L1087:
	movl %edx,%ecx
	subl MI_RTHeapRep+44,%ecx
	cmpl %ecx,4(%eax)
	ja .L1088
	pushl $40450
	call _m3_fault
	.align 16
.L1088:
	movl (%eax),%eax
	movb (%eax,%ecx,4),%al
	andl $255,%eax
	andl $3,%eax
	cmpl $1,%eax
	jne .L1086
	incl %edx
	jmp .L1084
	.align 16
.L1086:
	movl %edx,%eax
	subl %ebx,%eax
	jns .L1090
	pushl $40497
	call _m3_fault
	.align 16
.L1090:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe86:
	.size	 RTCollector__FreeLength,.Lfe86-RTCollector__FreeLength
.section	.rodata
	.align 4
.LC0:
	.long 0x3e4ccccd
.text
	.align 16
	.type	 RTCollector__GrowHeap,@function
RTCollector__GrowHeap:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
.L1092:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl MI_RTHeapRep+160,%eax
	testl %eax,%eax
	jne .L1093
	movl %ecx,%eax
	movl $32,%ecx
	cmpl %ecx,%eax
	jle .L1096
	movl %eax,%ecx
	jmp .L1096
	.align 16
.L1093:
	movl %ecx,%ebx
	movl $32,%ecx
	cmpl %ecx,%ebx
	jle .L1097
	movl %ebx,%ecx
.L1097:
	xorl %edx,%edx
	pushl %edx
	pushl %eax
	fildll (%esp)
	addl $8,%esp
	flds .LC0
	fmulp %st,%st(1)
	fldz
	fxch %st(1)
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	fstp %st(1)
	jb .L1146
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L1100
	incl %edx
	jmp .L1100
	.align 16
.L1146:
	fstp %st(0)
.L1100:
	cmpl %ecx,%edx
	jle .L1096
	movl %edx,%ecx
.L1096:
	leal 1(%ecx),%eax
	movl %eax,%esi
	sall $13,%esi
	pushl %esi
	movl MI_RTOS+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L1104
	cmpl $-1,%ebx
	jne .L1105
.L1104:
	pushl $0
	pushl $0
	pushl $MM_RTCollector+2940
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	addl $20,%esp
.L1105:
	movl MM_RTCollector+1712,%eax
	cmpl %ebx,%eax
	jne .L1106
	movl MM_RTCollector+1708,%ebx
	subl %ebx,%eax
	addl %eax,%esi
.L1106:
	movl %ebx,%eax
	negl %eax
	andl $8191,%eax
	addl %eax,%ebx
	subl %eax,%esi
	movl %esi,%edx
	sarl $13,%edx
	movl %ebx,%eax
	sarl $13,%eax
	cmpl $524287,%eax
	jbe .L1107
	pushl $41233
	call _m3_fault
	.align 16
.L1107:
	movl %eax,-40(%ebp)
	movl %eax,%ecx
	addl %edx,%ecx
	leal -1(%ecx),%eax
	cmpl $524287,%eax
	jbe .L1108
	pushl $41249
	call _m3_fault
	.align 16
.L1108:
	movl %eax,-36(%ebp)
	movl %ecx,%edi
	sall $13,%edi
	movl %edi,MM_RTCollector+1708
	addl %esi,%ebx
	movl %ebx,MM_RTCollector+1712
	movl MI_RTHeapRep+44,%eax
	testl %eax,%eax
	jne .L1109
	movl -40(%ebp),%esi
	cmpl $524287,%ecx
	jle .L1114
	pushl $41393
	call _m3_fault
	.align 16
.L1109:
	cmpl %eax,-40(%ebp)
	jge .L1112
	movl -40(%ebp),%esi
	movl MI_RTHeapRep+48,%edi
	movl %edi,-32(%ebp)
	jmp .L1111
	.align 16
.L1112:
	movl MI_RTHeapRep+48,%edx
	cmpl %edx,-36(%ebp)
	jl .L1113
	movl %eax,%esi
	cmpl $524287,%ecx
	jle .L1114
	pushl $41489
	call _m3_fault
	.align 16
.L1114:
	movl %ecx,-32(%ebp)
	jmp .L1111
	.align 16
.L1113:
	movl %eax,%esi
	movl %edx,-32(%ebp)
.L1111:
	movl -32(%ebp),%edx
	subl %esi,%edx
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	je .L1115
	cmpl %edx,4(%eax)
	je .L1117
.L1115:
	leal -28(%ebp),%eax
	leal -20(%ebp),%edi
	movl %edi,-28(%ebp)
	movl $1,-24(%ebp)
	movl %edx,-20(%ebp)
	pushl %eax
	movl MM_RTCollector+2988,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	je .L1118
	xorl %ecx,%ecx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-44(%ebp)
	jmp .L1120
	.align 16
.L1121:
	testl %ebx,%ebx
	jne .L1122
	pushl $41668
	call _m3_fault
	.align 16
.L1122:
	movl %ecx,%eax
	addl MI_RTHeapRep+44,%eax
	subl %esi,%eax
	movl %eax,-48(%ebp)
	cmpl %eax,4(%ebx)
	ja .L1123
	pushl $41666
	call _m3_fault
	.align 16
.L1123:
	movl MI_RTHeapRep+156,%edx
	testl %edx,%edx
	jne .L1124
	pushl $41668
	call _m3_fault
	.align 16
.L1124:
	cmpl %ecx,4(%edx)
	ja .L1125
	pushl $41666
	call _m3_fault
	.align 16
.L1125:
	movl (%ebx),%eax
	movl (%edx),%edx
	movl -48(%ebp),%edi
	movl (%edx,%ecx,4),%edx
	movl %edx,(%eax,%edi,4)
	incl %ecx
.L1120:
	cmpl %ecx,-44(%ebp)
	jge .L1121
	movl MI_RTHeapRep+48,%ecx
	movl -40(%ebp),%edi
	decl %edi
	movl %edi,-48(%ebp)
	jmp .L1127
	.align 16
.L1128:
	testl %ebx,%ebx
	jne .L1129
	pushl $41716
	call _m3_fault
	.align 16
.L1129:
	movl %ecx,%edx
	subl %esi,%edx
	cmpl %edx,4(%ebx)
	ja .L1130
	pushl $41714
	call _m3_fault
	.align 16
.L1130:
	movl (%ebx),%eax
	incl %ecx
	andb $252,(%eax,%edx,4)
.L1127:
	cmpl %ecx,-48(%ebp)
	jge .L1128
	movl -36(%ebp),%ecx
	incl %ecx
	movl MI_RTHeapRep+44,%edi
	decl %edi
	movl %edi,-48(%ebp)
	jmp .L1132
	.align 16
.L1133:
	testl %ebx,%ebx
	jne .L1134
	pushl $41764
	call _m3_fault
	.align 16
.L1134:
	movl %ecx,%edx
	subl %esi,%edx
	cmpl %edx,4(%ebx)
	ja .L1135
	pushl $41762
	call _m3_fault
	.align 16
.L1135:
	movl (%ebx),%eax
	incl %ecx
	andb $252,(%eax,%edx,4)
.L1132:
	cmpl %ecx,-48(%ebp)
	jge .L1133
	pushl $MI_RTHeapRep+156
	movl MI_RTHooks+100,%eax
	call *%eax
	addl $4,%esp
.L1118:
	movl %ebx,MI_RTHeapRep+156
.L1117:
	movl %esi,MI_RTHeapRep+44
	movl -32(%ebp),%edi
	movl %edi,MI_RTHeapRep+48
	movl -40(%ebp),%ecx
	movl -36(%ebp),%ebx
	jmp .L1137
	.align 16
.L1138:
	movl MI_RTHeapRep+156,%eax
	testl %eax,%eax
	jne .L1139
	pushl $41924
	call _m3_fault
	.align 16
.L1139:
	movl %ecx,%edx
	subl MI_RTHeapRep+44,%edx
	cmpl %edx,4(%eax)
	ja .L1140
	pushl $41922
	call _m3_fault
	.align 16
.L1140:
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	incl %ecx
	xorl %eax,%eax
	movb (%edx),%al
	andb $252,%al
	orb $1,%al
	movb %al,(%edx)
.L1137:
	cmpl %ebx,%ecx
	jle .L1138
	cmpb $0,MM_RTCollector+1472
	je .L1142
	movl -36(%ebp),%eax
	subl -40(%ebp),%eax
	incl %eax
	jns .L1143
	pushl $41969
	call _m3_fault
	.align 16
.L1143:
	pushl %eax
	movl -40(%ebp),%edi
	pushl %edi
	call RTCollector__PerfGrow
	addl $8,%esp
.L1142:
	movl -36(%ebp),%edx
	subl -40(%ebp),%edx
	movl MI_RTHeapRep+160,%eax
	incl %eax
	addl %edx,%eax
	jns .L1144
	pushl $42001
	call _m3_fault
	.align 16
.L1144:
	movl %eax,MI_RTHeapRep+160
	call RTCollector__RebuildFreelist
.L1145:
	movl -8(%ebp),%eax
	leal -60(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe87:
	.size	 RTCollector__GrowHeap,.Lfe87-RTCollector__GrowHeap
	.align 16
	.type	 RTCollector__Wait,@function
RTCollector__Wait:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl MM_RTCollector+1720,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L1148:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MM_RTCollector+1724,%eax
	pushl %eax
	movl MM_RTCollector+1720,%eax
	pushl %eax
	movl MI_Thread+156,%eax
	call *%eax
	addl $8,%esp
.L1149:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe88:
	.size	 RTCollector__Wait,.Lfe88-RTCollector__Wait
	.align 16
	.type	 RTCollector__Broadcast,@function
RTCollector__Broadcast:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+1724,%eax
	pushl %eax
	movl MI_Thread+168,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe89:
	.size	 RTCollector__Broadcast,.Lfe89-RTCollector__Broadcast
	.align 16
	.type	 RTHeapRep__Init,@function
RTHeapRep__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -12(%ebp),%eax
	pushl %esi
	leal -4(%ebp),%ecx
	pushl %ebx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl MM_RTCollector+2928,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,MM_RTCollector+1616
	xorl %esi,%esi
	addl $8,%esp
.L1152:
	movl $1,%ebx
.L1153:
	pushl %ebx
	pushl %esi
	movl MI_RTMisc+56,%eax
	call *%eax
	movl %eax,%edx
	subl %esi,%edx
	addl $8,%esp
	testl %edx,%edx
	jge .L1154
	pushl $42721
	call _m3_fault
	.align 16
.L1154:
	movl %esi,%eax
	sall $5,%eax
	movl %edx,MM_RTCollector+1732(%eax,%ebx,4)
	incl %ebx
	cmpl $8,%ebx
	jle .L1153
	incl %esi
	cmpl $7,%esi
	jle .L1152
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe90:
	.size	 RTHeapRep__Init,.Lfe90-RTHeapRep__Init
	.align 16
	.type	 _INITM_RTCollector,@function
_INITM_RTCollector:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_RTCollector+1720
	movl $0,MM_RTCollector+1724
	movl MM_RTCollector+2996,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTCollector+1720
	movl MM_RTCollector+3004,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_RTCollector+1724
	pushl $MM_RTCollector+3016
	movl MI_RTParams+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L1160
	movl $1,MI_RTHeapRep+400
.L1160:
	pushl $MM_RTCollector+3036
	movl MI_RTParams+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L1161
	movl $1,MI_RTHeapRep+408
.L1161:
	pushl $MM_RTCollector+3056
	movl MI_RTParams+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L1162
	movb $0,MI_RTCollectorSRC+68
.L1162:
	pushl $MM_RTCollector+3084
	movl MI_RTParams+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L1163
	movb $0,MI_RTCollectorSRC+69
.L1163:
	pushl $MM_RTCollector+3112
	movl MI_RTParams+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L1164
	call RTCollector__InstallSanityCheck
.L1164:
	call RTCollector__PerfStart
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe91:
	.size	 _INITM_RTCollector,.Lfe91-_INITM_RTCollector
	.align 16
	.type	 M_RTCollector_tea427828_LINK,@function
M_RTCollector_tea427828_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2920,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+1644,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe92:
	.size	 M_RTCollector_tea427828_LINK,.Lfe92-M_RTCollector_tea427828_LINK
	.align 16
	.type	 M_RTCollector_te0af9685_LINK,@function
M_RTCollector_te0af9685_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2776,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+716,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe93:
	.size	 M_RTCollector_te0af9685_LINK,.Lfe93-M_RTCollector_te0af9685_LINK
	.align 16
	.type	 M_RTCollector_t70f71c7e_LINK,@function
M_RTCollector_t70f71c7e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2768,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+824,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe94:
	.size	 M_RTCollector_t70f71c7e_LINK,.Lfe94-M_RTCollector_t70f71c7e_LINK
	.align 16
	.type	 M_RTCollector_tbc072de1_LINK,@function
M_RTCollector_tbc072de1_LINK:
	pushl %ebp
	movl MM_RTCollector+2760,%eax
	movl %esp,%ebp
	movl 52(%eax),%edx
	movl %ebp,%esp
	movl MM_RTCollector+712,%eax
	movl %eax,4(%edx)
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe95:
	.size	 M_RTCollector_tbc072de1_LINK,.Lfe95-M_RTCollector_tbc072de1_LINK
	.align 16
	.type	 M_RTCollector_t75afb1a3_LINK,@function
M_RTCollector_t75afb1a3_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2672,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+688,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe96:
	.size	 M_RTCollector_t75afb1a3_LINK,.Lfe96-M_RTCollector_t75afb1a3_LINK
	.align 16
	.type	 M_RTCollector_tb50268ff_LINK,@function
M_RTCollector_tb50268ff_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+5636,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+1456,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe97:
	.size	 M_RTCollector_tb50268ff_LINK,.Lfe97-M_RTCollector_tb50268ff_LINK
	.align 16
	.type	 M_RTCollector_t9401f469_LINK,@function
M_RTCollector_t9401f469_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+5684,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+1452,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe98:
	.size	 M_RTCollector_t9401f469_LINK,.Lfe98-M_RTCollector_t9401f469_LINK
	.align 16
	.type	 M_RTCollector_t9bbfcf2c_LINK,@function
M_RTCollector_t9bbfcf2c_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+5736,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+1464,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe99:
	.size	 M_RTCollector_t9bbfcf2c_LINK,.Lfe99-M_RTCollector_t9bbfcf2c_LINK
	.align 16
	.type	 M_RTCollector_t0f0696fb_LINK,@function
M_RTCollector_t0f0696fb_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+5824,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+1460,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe100:
	.size	 M_RTCollector_t0f0696fb_LINK,.Lfe100-M_RTCollector_t0f0696fb_LINK
	.align 16
	.type	 M_RTCollector_tff56e508_LINK,@function
M_RTCollector_tff56e508_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2688,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+668,%eax
	movl %eax,8(%edx)
	movl MM_RTCollector+664,%eax
	movl %eax,12(%edx)
	movl MM_RTCollector+656,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe101:
	.size	 M_RTCollector_tff56e508_LINK,.Lfe101-M_RTCollector_tff56e508_LINK
	.align 16
	.type	 M_RTCollector_t49c2f36d_LINK,@function
M_RTCollector_t49c2f36d_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTCollector+2680,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTCollector+200,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe102:
	.size	 M_RTCollector_t49c2f36d_LINK,.Lfe102-M_RTCollector_t49c2f36d_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTCollector
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe103:
	.size	 _m3_fault,.Lfe103-_m3_fault
.globl MM_RTCollector
.data
	.align 4
	.type	 MM_RTCollector,@object
	.size	 MM_RTCollector,5940
MM_RTCollector:
	.long MM_RTCollector+5443
	.long MM_RTCollector+96
	.long MM_RTCollector+2672
	.zero	8
	.long MM_RTCollector+4332
	.zero	4
	.long MM_RTCollector+5428
	.long MM_RTCollector+5428
	.zero	4
	.long _INITM_RTCollector
	.zero	4
	.long RTCollector__HeaderOf
	.long RTCollector__ReferentSize
	.long RTCollector__ReferentToPage
	.long RTCollector__HeaderToPage
	.long RTCollector__PageToHeader
	.long RTCollector__PageToAddress
	.zero	32
	.long 1237513069
.byte 11
.byte 31
.byte 89
.byte 75
.byte 102
.byte 236
.byte 155
.byte 2
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTCollector+5916
	.zero	4
	.long M_RTCollector_t49c2f36d_LINK
	.long -1093060005
	.zero	16
	.long MM_RTCollector+5919
	.long MM_RTCollector+204
	.long RTCollector__Move
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
	.long MM_RTCollector+5914
	.zero	40
	.long MM_RTCollector+432
	.long RTCollector__Moved
	.long RTCollector__NoteStackLocations
	.long RTCollector__PromotePage
	.long RTCollector__InsertFiller
	.zero	4
	.long 0x40e00000
	.long 0x3f800000
	.zero	3
.byte 1
	.zero	4
	.long RTCollector__CollectEnough
	.long RTCollector__Behind
	.zero	4
	.long RTCollector__CollectorOn
	.long RTCollector__CollectorOff
	.long RTCollector__CollectSome
	.zero	8
	.long 1
	.zero	16
	.long RTCollector__CollectSomeInStateZero
	.long RTCollector__CollectSomeInStateOne
	.long RTCollector__CollectSomeInStateTwo
	.long RTCollector__CollectSomeInStateThree
	.long RTCollector__CollectSomeInStateFour
	.long RTCollector__CollectSomeInStateFive
	.long RTCollector__CopySome
	.long RTCollector__CleanBetween
	.long RTCollector__PreHandleWeakRefs
	.zero	8
	.long -11082488
.byte 93
.byte 180
.byte 216
.byte 249
.byte 85
.byte 81
.byte 142
.byte 6
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	4
	.long 8
	.zero	12
	.long MM_RTCollector+5870
	.long MM_RTCollector+5876
	.long MM_RTCollector+5878
	.zero	4
	.long M_RTCollector_tff56e508_LINK
	.long -1093060005
	.zero	16
	.long MM_RTCollector+5894
	.long MM_RTCollector+548
	.long RTCollector__WeakWalk1
	.long RTCollector__WeakWalk2
	.long RTCollector__PostHandleWeakRefs
	.zero	8
	.long 171290756
.byte 162
.byte 186
.byte 227
.byte 28
.byte 38
.byte 10
.byte 214
.byte 22
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTCollector+5861
	.zero	4
	.long MM_RTCollector+5866
	.zero	32
	.long MM_RTCollector+720
	.long RTCollector__InitStack
	.long RTCollector__PushStack
	.long RTCollector__ExpandStack
	.long RTCollector__PopStack
	.long RTCollector__StackEmpty
	.long RTCollector__AllocForPureCopy
	.long RTCollector__AllocForImpureCopy
	.long RTCollector__LongAlloc
	.zero	4
	.long RTCollector__BackgroundThread
	.long RTCollector__StartGC
	.long RTCollector__FinishGC
	.zero	8
	.long RTCollector__InstallSanityCheck
	.long RTCollector__SanityCheck
	.long RTCollector__RefSanityCheck
	.zero	8
	.long 328762429
.byte 4
.byte 159
.byte 197
.byte 16
.byte 57
.byte 27
.byte 93
.byte 3
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	20
	.long MM_RTCollector+5857
	.zero	4
	.long MM_RTCollector+5859
	.zero	32
	.long MM_RTCollector+828
	.long RTCollector__ProtectedOlderRefSanityCheck
	.zero	8
	.long 252090107
.byte 75
.byte 155
.byte 75
.byte 30
.byte 176
.byte 13
.byte 77
.byte 17
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTCollector+5795
	.long MM_RTCollector+5799
	.long MM_RTCollector+5803
	.zero	4
	.long M_RTCollector_t0f0696fb_LINK
	.long 41259960
	.zero	16
	.long MM_RTCollector+5832
	.long MM_RTCollector+932
	.zero	8
	.long -753632738
.byte 22
.byte 39
.byte 155
.byte 208
.byte 8
.byte 93
.byte 143
.byte 3
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTCollector+5781
	.zero	4
	.long MM_RTCollector+5786
	.zero	32
	.long MM_RTCollector+1036
	.zero	8
	.long -476616643
.byte 12
.byte 75
.byte 74
.byte 239
.byte 49
.byte 35
.byte 221
.byte 12
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTCollector+5772
	.zero	4
	.long MM_RTCollector+5777
	.zero	32
	.long MM_RTCollector+1140
	.zero	8
	.long -1681928404
.byte 202
.byte 188
.byte 14
.byte 151
.byte 230
.byte 115
.byte 177
.byte 12
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTCollector+5717
	.long MM_RTCollector+5720
	.long MM_RTCollector+5723
	.zero	4
	.long M_RTCollector_t9bbfcf2c_LINK
	.long 41259960
	.zero	16
	.long MM_RTCollector+5744
	.long MM_RTCollector+1244
	.zero	8
	.long -1811811223
.byte 50
.byte 141
.byte 182
.byte 130
.byte 91
.byte 121
.byte 183
.byte 22
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTCollector+5672
	.long MM_RTCollector+5674
	.long MM_RTCollector+5676
	.zero	4
	.long M_RTCollector_t9401f469_LINK
	.long 328745727
	.zero	16
	.long MM_RTCollector+5692
	.long MM_RTCollector+1348
	.zero	8
	.long -1258133249
.byte 102
.byte 69
.byte 64
.byte 167
.byte 153
.byte 45
.byte 66
.byte 18
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTCollector+5623
	.long MM_RTCollector+5625
	.long MM_RTCollector+5627
	.zero	4
	.long M_RTCollector_tb50268ff_LINK
	.long 328745727
	.zero	16
	.long MM_RTCollector+5644
	.long MM_RTCollector+1512
	.long RTCollector__One
	.long RTCollector__All
	.long RTCollector__CountRefsForTypecodes
	.long RTCollector__CountRefsForAllTypecodes
	.zero	8
	.long RTCollector__PerfStart
	.long RTCollector__PerfFlip
	.long RTCollector__PerfPromotedRoots
	.long RTCollector__PerfStop
	.long RTCollector__PerfAllow
	.long RTCollector__PerfBegin
	.long RTCollector__PerfEnd
	.long RTCollector__PerfChange
	.long RTCollector__PerfGrow
	.zero	8
	.long 964183246
.byte 9
.byte 106
.byte 123
.byte 42
.byte 199
.byte 46
.byte 3
.byte 19
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 20
	.zero	4
	.long MM_RTCollector+5614
	.zero	40
	.long MM_RTCollector+1992
	.zero	4
	.long -1
	.long -1
	.long -1
	.long -1
	.zero	4
	.long RTCollector__ExpandWeakTable
	.long RTCollector__WeakCleaner
	.long RTCollector__FirstPage
	.long RTCollector__PageCount
	.long RTCollector__Protect
	.long RTCollector__Unprotect
	.zero	24
	.long RTCollector__FindFreePages
	.zero	4
	.long RTCollector__AllocateFreePagesFromBlock
	.long RTCollector__RebuildFreelist
	.long RTCollector__FreeLength
	.zero	8
	.long RTCollector__GrowHeap
	.zero	8
	.long RTCollector__Wait
	.long RTCollector__Broadcast
	.zero	264
	.long 1974448547
.byte 224
.byte 200
.byte 104
.byte 121
.byte 67
.byte 121
.byte 199
.byte 12
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTCollector+5611
	.zero	4
	.long M_RTCollector_t75afb1a3_LINK
	.long -448425059
	.zero	20
	.long MM_RTCollector+2096
	.zero	8
	.long -1140380191
.byte 21
.byte 229
.byte 102
.byte 190
.byte 244
.byte 200
.byte 97
.byte 2
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTCollector+5608
	.zero	4
	.long M_RTCollector_tbc072de1_LINK
	.long 41259960
	.zero	20
	.long MM_RTCollector+2200
	.zero	8
	.long 1895242878
.byte 41
.byte 44
.byte 155
.byte 109
.byte 87
.byte 48
.byte 108
.byte 29
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTCollector+5605
	.zero	4
	.long M_RTCollector_t70f71c7e_LINK
	.long -1093060005
	.zero	20
	.long MM_RTCollector+2304
	.zero	8
	.long -525363579
.byte 4
.byte 243
.byte 131
.byte 247
.byte 129
.byte 101
.byte 44
.byte 23
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTCollector+5602
	.zero	4
	.long M_RTCollector_te0af9685_LINK
	.long -1093060005
	.zero	20
	.long MM_RTCollector+2408
	.zero	8
	.long -364742616
.byte 235
.byte 157
.byte 58
.byte 233
.byte 195
.byte 229
.byte 120
.byte 3
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTCollector+5599
	.zero	4
	.long M_RTCollector_tea427828_LINK
	.long -448425059
	.zero	24
	.long RTWeakRef__WeakRefFromRef
	.long RTWeakRef__WeakRefToRef
	.long RTHeapRep__AllocForNew
	.long RTHeapRep__Malloc
	.long RTHeapRep__RegisterFinalCleanup
	.long RTHeapRep__Crash
	.long RTHeapRep__Fault
	.long RTHeapRep__VisitAllRefs
	.long RTHeapRep__Init
	.long RTCollectorSRC__StartCollection
	.long RTCollectorSRC__FinishCollection
	.long RTCollectorSRC__DisableVM
	.long RTCollectorSRC__EnableVM
	.long RTCollectorSRC__FinishVM
	.long RTCollectorSRC__StartBackgroundCollection
	.long RTCollector__Disable
	.long RTCollector__Enable
	.long RTCollector__DisableMotion
	.long RTCollector__EnableMotion
	.long RTCollector__Collect
.byte 1
	.zero	7
	.long 1
	.long 68
.byte 2
	.zero	7
	.long 1
	.long 68
.byte 7
	.zero	7
	.long 1
	.long 68
	.zero	8
	.long 1
	.long 68
.byte 3
	.zero	7
	.long 1
	.long 68
	.long MM_RTCollector+2680
	.long 1974448547
	.long MM_RTCollector+2688
	.long 1237513069
	.long MM_RTCollector+2696
	.long -11082488
	.long MM_RTCollector+2760
	.long 171290756
	.long 2
	.long MM_RTCollector+2716
	.long 41
	.ascii	"malloc failed, unable to get more memory"
	.zero	4
	.long MM_RTCollector+2768
	.long -1140380191
	.long MM_RTCollector+2776
	.long 1895242878
	.long MM_RTCollector+2920
	.long -525363579
	.long 2
	.long MM_RTCollector+2796
	.long 7
	.ascii	"count["
	.zero	2
	.long 2
	.long MM_RTCollector+2816
	.long 5
	.ascii	"] = "
	.zero	4
	.long 2
	.long MM_RTCollector+2836
	.long 4
	.ascii	",  "
	.zero	1
	.long 2
	.long MM_RTCollector+2852
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_RTCollector+2868
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_RTCollector+2884
	.long 3
	.ascii	", "
	.zero	2
	.long 2
	.long MM_RTCollector+2900
	.long 9
	.ascii	"showheap"
	.zero	4
	.long 68
	.long 68
	.long MM_RTCollector+2928
	.long -364742616
	.long MM_RTCollector+2988
	.long 964183246
	.long 2
	.long MM_RTCollector+2948
	.long 37
	.ascii	"gc: Could not extend the traced heap"
	.zero	4
	.long MM_RTCollector+2996
	.long 404074804
	.long MM_RTCollector+3004
	.long 356643957
	.long MM_RTCollector+5636
	.long 1475387830
	.long 2
	.long MM_RTCollector+3024
	.long 5
	.ascii	"nogc"
	.zero	4
	.long 2
	.long MM_RTCollector+3044
	.long 5
	.ascii	"novm"
	.zero	4
	.long 2
	.long MM_RTCollector+3064
	.long 14
	.ascii	"noincremental"
	.zero	3
	.long 2
	.long MM_RTCollector+3092
	.long 15
	.ascii	"nogenerational"
	.zero	2
	.long 2
	.long MM_RTCollector+3120
	.long 11
	.ascii	"paranoidgc"
	.zero	2
	.ascii	"_INITM_RTCollector"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Broadcast"
	.zero	1
	.ascii	"Wait"
	.zero	1
	.ascii	"GrowHeap"
	.zero	1
	.ascii	"FreeLength"
	.zero	1
	.ascii	"RebuildFreelist"
	.zero	1
	.ascii	"AllocateFreePagesFromBlock"
	.zero	1
	.ascii	"FindFreePages"
	.zero	1
	.ascii	"Fault"
	.zero	1
	.ascii	"Unprotect"
	.zero	1
	.ascii	"Protect"
	.zero	1
	.ascii	"PageCount"
	.zero	1
	.ascii	"FirstPage"
	.zero	1
	.ascii	"WeakCleaner"
	.zero	1
	.ascii	"RegisterFinalCleanup"
	.zero	1
	.ascii	"WeakRefToRef"
	.zero	1
	.ascii	"ExpandWeakTable"
	.zero	1
	.ascii	"WeakRefFromRef"
	.zero	1
	.ascii	"PerfGrow"
	.zero	1
	.ascii	"PerfChange"
	.zero	1
	.ascii	"PerfEnd"
	.zero	1
	.ascii	"PerfBegin"
	.zero	1
	.ascii	"PerfAllow"
	.zero	1
	.ascii	"PerfStop"
	.zero	1
	.ascii	"PerfPromotedRoots"
	.zero	1
	.ascii	"PerfFlip"
	.zero	1
	.ascii	"PerfStart"
	.zero	1
	.ascii	"CountRefsForAllTypecodes"
	.zero	1
	.ascii	"CountRefsForTypecodes"
	.zero	1
	.ascii	"All"
	.zero	1
	.ascii	"One"
	.zero	1
	.ascii	"VisitAllRefs"
	.zero	1
	.ascii	"M_RTCollector_LINE_1785"
	.zero	1
	.ascii	"ProtectedOlderRefSanityCheck"
	.zero	1
	.ascii	"RefSanityCheck"
	.zero	1
	.ascii	"SanityCheck"
	.zero	1
	.ascii	"InstallSanityCheck"
	.zero	1
	.ascii	"Crash"
	.zero	1
	.ascii	"FinishGC"
	.zero	1
	.ascii	"StartGC"
	.zero	1
	.ascii	"BackgroundThread"
	.zero	1
	.ascii	"LongAlloc"
	.zero	1
	.ascii	"AllocForImpureCopy"
	.zero	1
	.ascii	"AllocForPureCopy"
	.zero	1
	.ascii	"AllocForNew"
	.zero	1
	.ascii	"Malloc"
	.zero	1
	.ascii	"StackEmpty"
	.zero	1
	.ascii	"PopStack"
	.zero	1
	.ascii	"ExpandStack"
	.zero	1
	.ascii	"PushStack"
	.zero	1
	.ascii	"InitStack"
	.zero	1
	.ascii	"PostHandleWeakRefs"
	.zero	1
	.ascii	"WeakWalk2"
	.zero	1
	.ascii	"WeakWalk1"
	.zero	1
	.ascii	"PreHandleWeakRefs"
	.zero	1
	.ascii	"CleanBetween"
	.zero	1
	.ascii	"CopySome"
	.zero	1
	.ascii	"CollectSomeInStateFive"
	.zero	1
	.ascii	"CollectSomeInStateFour"
	.zero	1
	.ascii	"CollectSomeInStateThree"
	.zero	1
	.ascii	"CollectSomeInStateTwo"
	.zero	1
	.ascii	"CollectSomeInStateOne"
	.zero	1
	.ascii	"CollectSomeInStateZero"
	.zero	1
	.ascii	"CollectSome"
	.zero	1
	.ascii	"CollectorOff"
	.zero	1
	.ascii	"CollectorOn"
	.zero	1
	.ascii	"Behind"
	.zero	1
	.ascii	"CollectEnough"
	.zero	1
	.ascii	"InsertFiller"
	.zero	1
	.ascii	"PromotePage"
	.zero	1
	.ascii	"NoteStackLocations"
	.zero	1
	.ascii	"Moved"
	.zero	1
	.ascii	"Move"
	.zero	1
	.ascii	"PageToAddress"
	.zero	1
	.ascii	"PageToHeader"
	.zero	1
	.ascii	"HeaderToPage"
	.zero	1
	.ascii	"ReferentToPage"
	.zero	1
	.ascii	"ReferentSize"
	.zero	1
	.ascii	"HeaderOf"
	.zero	1
	.ascii	"StartBackgroundCollection"
	.zero	1
	.ascii	"FinishVM"
	.zero	1
	.ascii	"EnableVM"
	.zero	1
	.ascii	"DisableVM"
	.zero	1
	.ascii	"FinishCollection"
	.zero	1
	.ascii	"StartCollection"
	.zero	1
	.ascii	"Collect"
	.zero	1
	.ascii	"EnableMotion"
	.zero	1
	.ascii	"DisableMotion"
	.zero	1
	.ascii	"Enable"
	.zero	1
	.ascii	"Disable"
	.zero	3
	.long _INITM_RTCollector
	.long MM_RTCollector+3132
	.zero	4
	.long RTHeapRep__Init
	.long MM_RTCollector+3151
	.long MI_RTHeapRep+672
	.long RTCollector__Broadcast
	.long MM_RTCollector+3156
	.zero	4
	.long RTCollector__Wait
	.long MM_RTCollector+3166
	.zero	4
	.long RTCollector__GrowHeap
	.long MM_RTCollector+3171
	.zero	4
	.long RTCollector__FreeLength
	.long MM_RTCollector+3180
	.zero	4
	.long RTCollector__RebuildFreelist
	.long MM_RTCollector+3191
	.zero	4
	.long RTCollector__AllocateFreePagesFromBlock
	.long MM_RTCollector+3207
	.zero	4
	.long RTCollector__FindFreePages
	.long MM_RTCollector+3234
	.zero	4
	.long RTHeapRep__Fault
	.long MM_RTCollector+3248
	.long MI_RTHeapRep+556
	.long RTCollector__Unprotect
	.long MM_RTCollector+3254
	.zero	4
	.long RTCollector__Protect
	.long MM_RTCollector+3264
	.zero	4
	.long RTCollector__PageCount
	.long MM_RTCollector+3272
	.zero	4
	.long RTCollector__FirstPage
	.long MM_RTCollector+3282
	.zero	4
	.long RTCollector__WeakCleaner
	.long MM_RTCollector+3292
	.zero	4
	.long RTHeapRep__RegisterFinalCleanup
	.long MM_RTCollector+3304
	.long MI_RTHeapRep+392
	.long RTWeakRef__WeakRefToRef
	.long MM_RTCollector+3325
	.long MI_RTWeakRef+48
	.long RTCollector__ExpandWeakTable
	.long MM_RTCollector+3338
	.zero	4
	.long RTWeakRef__WeakRefFromRef
	.long MM_RTCollector+3354
	.long MI_RTWeakRef+44
	.long RTCollector__PerfGrow
	.long MM_RTCollector+3369
	.zero	4
	.long RTCollector__PerfChange
	.long MM_RTCollector+3378
	.zero	4
	.long RTCollector__PerfEnd
	.long MM_RTCollector+3389
	.zero	4
	.long RTCollector__PerfBegin
	.long MM_RTCollector+3397
	.zero	4
	.long RTCollector__PerfAllow
	.long MM_RTCollector+3407
	.zero	4
	.long RTCollector__PerfStop
	.long MM_RTCollector+3417
	.zero	4
	.long RTCollector__PerfPromotedRoots
	.long MM_RTCollector+3426
	.zero	4
	.long RTCollector__PerfFlip
	.long MM_RTCollector+3444
	.zero	4
	.long RTCollector__PerfStart
	.long MM_RTCollector+3453
	.zero	4
	.long RTCollector__CountRefsForAllTypecodes
	.long MM_RTCollector+3463
	.zero	4
	.long RTCollector__CountRefsForTypecodes
	.long MM_RTCollector+3488
	.zero	4
	.long RTCollector__All
	.long MM_RTCollector+3510
	.zero	4
	.long RTCollector__One
	.long MM_RTCollector+3514
	.zero	4
	.long RTHeapRep__VisitAllRefs
	.long MM_RTCollector+3518
	.long MI_RTHeapRep+664
	.long M_RTCollector_LINE_1785.0
	.long MM_RTCollector+3531
	.zero	4
	.long RTCollector__ProtectedOlderRefSanityCheck
	.long MM_RTCollector+3555
	.zero	4
	.long RTCollector__RefSanityCheck
	.long MM_RTCollector+3584
	.zero	4
	.long RTCollector__SanityCheck
	.long MM_RTCollector+3599
	.zero	4
	.long RTCollector__InstallSanityCheck
	.long MM_RTCollector+3611
	.zero	4
	.long RTHeapRep__Crash
	.long MM_RTCollector+3630
	.long MI_RTHeapRep+412
	.long RTCollector__FinishGC
	.long MM_RTCollector+3636
	.zero	4
	.long RTCollector__StartGC
	.long MM_RTCollector+3645
	.zero	4
	.long RTCollector__BackgroundThread
	.long MM_RTCollector+3653
	.zero	4
	.long RTCollector__LongAlloc
	.long MM_RTCollector+3670
	.zero	4
	.long RTCollector__AllocForImpureCopy
	.long MM_RTCollector+3680
	.zero	4
	.long RTCollector__AllocForPureCopy
	.long MM_RTCollector+3699
	.zero	4
	.long RTHeapRep__AllocForNew
	.long MM_RTCollector+3716
	.long MI_RTHeapRep+384
	.long RTHeapRep__Malloc
	.long MM_RTCollector+3728
	.long MI_RTHeapRep+388
	.long RTCollector__StackEmpty
	.long MM_RTCollector+3735
	.zero	4
	.long RTCollector__PopStack
	.long MM_RTCollector+3746
	.zero	4
	.long RTCollector__ExpandStack
	.long MM_RTCollector+3755
	.zero	4
	.long RTCollector__PushStack
	.long MM_RTCollector+3767
	.zero	4
	.long RTCollector__InitStack
	.long MM_RTCollector+3777
	.zero	4
	.long RTCollector__PostHandleWeakRefs
	.long MM_RTCollector+3787
	.zero	4
	.long RTCollector__WeakWalk2
	.long MM_RTCollector+3806
	.zero	4
	.long RTCollector__WeakWalk1
	.long MM_RTCollector+3816
	.zero	4
	.long RTCollector__PreHandleWeakRefs
	.long MM_RTCollector+3826
	.zero	4
	.long RTCollector__CleanBetween
	.long MM_RTCollector+3844
	.zero	4
	.long RTCollector__CopySome
	.long MM_RTCollector+3857
	.zero	4
	.long RTCollector__CollectSomeInStateFive
	.long MM_RTCollector+3866
	.zero	4
	.long RTCollector__CollectSomeInStateFour
	.long MM_RTCollector+3889
	.zero	4
	.long RTCollector__CollectSomeInStateThree
	.long MM_RTCollector+3912
	.zero	4
	.long RTCollector__CollectSomeInStateTwo
	.long MM_RTCollector+3936
	.zero	4
	.long RTCollector__CollectSomeInStateOne
	.long MM_RTCollector+3958
	.zero	4
	.long RTCollector__CollectSomeInStateZero
	.long MM_RTCollector+3980
	.zero	4
	.long RTCollector__CollectSome
	.long MM_RTCollector+4003
	.zero	4
	.long RTCollector__CollectorOff
	.long MM_RTCollector+4015
	.zero	4
	.long RTCollector__CollectorOn
	.long MM_RTCollector+4028
	.zero	4
	.long RTCollector__Behind
	.long MM_RTCollector+4040
	.zero	4
	.long RTCollector__CollectEnough
	.long MM_RTCollector+4047
	.zero	4
	.long RTCollector__InsertFiller
	.long MM_RTCollector+4061
	.zero	4
	.long RTCollector__PromotePage
	.long MM_RTCollector+4074
	.zero	4
	.long RTCollector__NoteStackLocations
	.long MM_RTCollector+4086
	.zero	4
	.long RTCollector__Moved
	.long MM_RTCollector+4105
	.zero	4
	.long RTCollector__Move
	.long MM_RTCollector+4111
	.zero	4
	.long RTCollector__PageToAddress
	.long MM_RTCollector+4116
	.zero	4
	.long RTCollector__PageToHeader
	.long MM_RTCollector+4130
	.zero	4
	.long RTCollector__HeaderToPage
	.long MM_RTCollector+4143
	.zero	4
	.long RTCollector__ReferentToPage
	.long MM_RTCollector+4156
	.zero	4
	.long RTCollector__ReferentSize
	.long MM_RTCollector+4171
	.zero	4
	.long RTCollector__HeaderOf
	.long MM_RTCollector+4184
	.zero	4
	.long RTCollectorSRC__StartBackgroundCollection
	.long MM_RTCollector+4193
	.long MI_RTCollectorSRC+72
	.long RTCollectorSRC__FinishVM
	.long MM_RTCollector+4219
	.long MI_RTCollectorSRC+60
	.long RTCollectorSRC__EnableVM
	.long MM_RTCollector+4228
	.long MI_RTCollectorSRC+56
	.long RTCollectorSRC__DisableVM
	.long MM_RTCollector+4237
	.long MI_RTCollectorSRC+52
	.long RTCollectorSRC__FinishCollection
	.long MM_RTCollector+4247
	.long MI_RTCollectorSRC+48
	.long RTCollectorSRC__StartCollection
	.long MM_RTCollector+4264
	.long MI_RTCollectorSRC+44
	.long RTCollector__Collect
	.long MM_RTCollector+4280
	.long MI_RTCollector+60
	.long RTCollector__EnableMotion
	.long MM_RTCollector+4288
	.long MI_RTCollector+56
	.long RTCollector__DisableMotion
	.long MM_RTCollector+4301
	.long MI_RTCollector+52
	.long RTCollector__Enable
	.long MM_RTCollector+4315
	.long MI_RTCollector+48
	.long RTCollector__Disable
	.long MM_RTCollector+4322
	.long MI_RTCollector+44
	.zero	4
.byte 43
.byte 112
.byte 1
.byte 4
.byte 43
.byte 72
.byte 1
.byte 4
.byte 4
.byte 43
.byte 244
.byte 3
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTCollector.m3"
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
.byte 1
.byte 10
.byte 0
.byte 1
.byte 10
.byte 0
.byte 24
.byte 1
.byte 14
.byte 14
.byte 5
.byte 5
.byte 14
.byte 0
.byte 0
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 44
.byte 207
.byte 191
.byte 155
	.zero	1
	.long MM_RTCollector+5684
	.long -1258133249
	.ascii	"RTCollector.CountAllVisitor"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 251
.byte 150
.byte 6
.byte 15
	.long MM_RTCollector+5736
	.long -1811811223
	.ascii	"RTCollector.CountVisitor"
	.zero	1
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 61
.byte 104
.byte 151
.byte 227
.byte 16
.byte 255
.byte 66
.byte 152
.byte 19
	.long MM_RTCollector+5824
	.long -1681928404
	.ascii	"RTCollector.CountAllClosure"
	.zero	1
.byte 24
.byte 1
.byte 18
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 3
.byte 24
.byte 1
.byte 18
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 0
.byte 67
.byte 255
.byte 255
.byte 15
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 16
.byte 30
.byte 122
.byte 20
.byte 211
.byte 16
.byte 61
.byte 104
.byte 151
.byte 227
.byte 16
.byte 255
.byte 66
.byte 152
.byte 19
	.zero	7
	.long 252090107
	.ascii	"RTCollector.CountClosure"
	.zero	1
.byte 5
.byte 0
.byte 1
.byte 0
.byte 24
.byte 1
.byte 5
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 0
.byte 4
.byte 5
.byte 5
.byte 5
.byte 18
.byte 0
.byte 4
.byte 0
.byte 6
.byte 10
.byte 5
.byte 16
.byte 132
.byte 176
.byte 53
.byte 10
.byte 20
.byte 159
.byte 183
.byte 35
.byte 41
.byte 24
.byte 24
.byte 3
	.ascii	"RTCollector.Stacker"
	.zero	1
.byte 5
.byte 0
.byte 1
.byte 10
.byte 0
	.ascii	"RTCollector.Mover"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
