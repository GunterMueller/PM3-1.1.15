	.file	"RTHeapInfo.mc"
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
	.type	 RTHeapInfo__Producer,@function
RTHeapInfo__Producer:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RT0u+156,%eax
	cmpl $1048575,%eax
	jle .L2
	pushl $353
	call _m3_fault
	.align 16
.L2:
	movl %eax,%edi
.L3:
	movl MI_RTOS+56,%eax
	call *%eax
	xorl %ecx,%ecx
	movl %ecx,%edx
	leal -1(%edi),%ebx
	jmp .L4
	.align 16
.L5:
	movl MI_RT0u+372,%eax
	testl %eax,%eax
	jne .L6
	pushl $468
	call _m3_fault
	.align 16
.L6:
	cmpl $0,(%eax,%edx,4)
	je .L7
	incl %ecx
.L7:
	incl %edx
.L4:
	cmpl %ebx,%edx
	jle .L5
	pushl %ecx
	call RTHeapInfo__Send
	xorl %ebx,%ebx
	leal -1(%edi),%esi
	addl $4,%esp
	jmp .L9
	.align 16
.L10:
	movl MI_RT0u+372,%eax
	testl %eax,%eax
	jne .L11
	pushl $564
	call _m3_fault
	.align 16
.L11:
	cmpl $0,(%eax,%ebx,4)
	je .L12
	pushl %ebx
	call RTHeapInfo__Send
	movl MI_RT0u+372,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L13
	pushl $596
	call _m3_fault
	.align 16
.L13:
	movl (%eax,%ebx,4),%eax
	pushl %eax
	call RTHeapInfo__Send
	movl MI_RT0u+372,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L14
	pushl $612
	call _m3_fault
	.align 16
.L14:
	movl $0,(%eax,%ebx,4)
	movl MI_RT0u+376,%eax
	testl %eax,%eax
	jne .L15
	pushl $628
	call _m3_fault
	.align 16
.L15:
	movl (%eax,%ebx,4),%eax
	testl %eax,%eax
	je .L12
	pushl %eax
	call RTHeapInfo__Send
	movl MI_RT0u+376,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L18
	pushl $660
	call _m3_fault
	.align 16
.L18:
	movl $0,(%eax,%ebx,4)
.L12:
	incl %ebx
.L9:
	cmpl %esi,%ebx
	jle .L10
	call RTHeapInfo__Flush
	movl MI_RTOS+60,%eax
	call *%eax
	movl MM_RTHeapInfo+168,%eax
	movl MM_RTHeapInfo+164,%edx
	pushl %eax
	pushl %edx
	movl MI_Thread+176,%eax
	call *%eax
	addl $8,%esp
	jmp .L3
	.align 16
.Lfe1:
	.size	 RTHeapInfo__Producer,.Lfe1-RTHeapInfo__Producer
	.align 16
	.type	 RTHeapInfo__SendTypes,@function
RTHeapInfo__SendTypes:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RTOS+56,%eax
	call *%eax
	movl MI_RT0u+156,%eax
	pushl %eax
	call RTHeapInfo__Send
	xorl %edi,%edi
	movl MI_RT0u+156,%edx
	decl %edx
	movl %edx,-44(%ebp)
	addl $4,%esp
	jmp .L22
	.align 16
.L23:
	cmpl $1048575,%edi
	jle .L24
	pushl $945
	call _m3_fault
	.align 16
.L24:
	pushl %edi
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L25
	pushl $964
	call _m3_fault
	.align 16
.L25:
	cmpl $0,44(%esi)
	jle .L28
	pushl $-1
	jmp .L34
	.align 16
.L28:
	movl 28(%esi),%eax
	pushl %eax
.L34:
	call RTHeapInfo__Send
	addl $4,%esp
	testl %esi,%esi
	jne .L29
	pushl $1028
	call _m3_fault
	.align 16
.L29:
	movl 96(%esi),%ebx
	testl %ebx,%ebx
	je .L30
	pushl %ebx
	call strlen
	movl %eax,%esi
	addl $4,%esp
	jmp .L31
	.align 16
.L30:
	leal -32(%ebp),%ebx
	movl %ebx,-40(%ebp)
	movl $32,-36(%ebp)
	leal -40(%ebp),%eax
	pushl %eax
	pushl %esi
	call RTHeapInfo__BuildTypeName
	movl %eax,%esi
	addl $8,%esp
.L31:
	pushl %esi
	call RTHeapInfo__Send
	call RTHeapInfo__Flush
	addl $4,%esp
	testl %esi,%esi
	jge .L32
	pushl $1137
	call _m3_fault
	.align 16
.L32:
	pushl %esi
	pushl %ebx
	movl MM_RTHeapInfo+148,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	incl %edi
	addl $12,%esp
.L22:
	cmpl %edi,-44(%ebp)
	jge .L23
	movl MI_RTOS+60,%eax
	call *%eax
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeapInfo__SendTypes,.Lfe2-RTHeapInfo__SendTypes
	.align 16
	.type	 RTHeapInfo__BuildTypeName,@function
RTHeapInfo__BuildTypeName:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L36:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl 12(%ebp),%eax
	movl %esi,RTThread__handlerStack
	cmpl $0,4(%eax)
	jne .L37
	pushl $1298
	call _m3_fault
	.align 16
.L37:
	movl (%eax),%eax
	movb $60,(%eax)
	movl 12(%ebp),%eax
	cmpl $1,4(%eax)
	ja .L38
	pushl $1314
	call _m3_fault
	.align 16
.L38:
	movl (%eax),%eax
	movb $95,1(%eax)
	movl 12(%ebp),%eax
	cmpl $2,4(%eax)
	ja .L39
	pushl $1330
	call _m3_fault
	.align 16
.L39:
	movl (%eax),%eax
	movb $116,2(%eax)
	testl %edi,%edi
	jne .L40
	pushl $1348
	call _m3_fault
	.align 16
.L40:
	movl 8(%edi),%ebx
	movl $10,%ecx
.L41:
	movl 12(%ebp),%edx
	cmpl %ecx,4(%edx)
	ja .L42
	pushl $1378
	call _m3_fault
	.align 16
.L42:
	movl %ebx,%eax
	andl $15,%eax
	cmpl $15,%eax
	jbe .L43
	pushl $1377
	call _m3_fault
	.align 16
.L43:
	movl (%edx),%edx
	movb MM_RTHeapInfo+200(%eax),%al
	shrl $4,%ebx
	movb %al,(%ecx,%edx)
	decl %ecx
	cmpl $2,%ecx
	jg .L41
	movl 12(%ebp),%eax
	cmpl $11,4(%eax)
	ja .L46
	pushl $1426
	call _m3_fault
	.align 16
.L46:
	movl (%eax),%eax
	movb $32,11(%eax)
	movl 12(%ebp),%eax
	cmpl $12,4(%eax)
	ja .L47
	pushl $1442
	call _m3_fault
	.align 16
.L47:
	movl (%eax),%eax
	movb $84,12(%eax)
	movl 12(%ebp),%eax
	cmpl $13,4(%eax)
	ja .L48
	pushl $1458
	call _m3_fault
	.align 16
.L48:
	movl (%eax),%eax
	movb $67,13(%eax)
	movl 12(%ebp),%eax
	cmpl $14,4(%eax)
	ja .L49
	pushl $1474
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%eax
	movb $61,14(%eax)
	testl %edi,%edi
	jne .L50
	pushl $1492
	call _m3_fault
	.align 16
.L50:
	movl (%edi),%ebx
	movl $1,-12(%ebp)
	jmp .L51
	.align 16
.L52:
	incl -12(%ebp)
	pushl %ebx
	pushl $10
	call m3_div
	movl %eax,%ebx
	addl $8,%esp
.L51:
	cmpl $10,%ebx
	jg .L52
	testl %edi,%edi
	jne .L54
	pushl $1540
	call _m3_fault
	.align 16
.L54:
	movl (%edi),%ebx
	movl -12(%ebp),%edi
	addl $14,%edi
	jmp .L55
	.align 16
.L56:
	movl 12(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L57
	pushl $1570
	call _m3_fault
	.align 16
.L57:
	pushl %ebx
	pushl $10
	call m3_mod
	movl %eax,%ecx
	addl $8,%esp
	cmpl $15,%ecx
	jbe .L58
	pushl $1569
	call _m3_fault
	.align 16
.L58:
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movb MM_RTHeapInfo+200(%ecx),%al
	movb %al,(%edi,%edx)
	pushl %ebx
	pushl $10
	call m3_div
	movl %eax,%ebx
	decl %edi
	addl $8,%esp
.L55:
	cmpl $14,%edi
	jg .L56
	movl -12(%ebp),%ecx
	movl 12(%ebp),%eax
	addl $15,%ecx
	cmpl %ecx,4(%eax)
	ja .L60
	pushl $1618
	call _m3_fault
	.align 16
.L60:
	movl (%eax),%eax
	movl -12(%ebp),%esi
	movb $62,15(%esi,%eax)
	movl -12(%ebp),%eax
	movl 12(%ebp),%edx
	addl $16,%eax
	cmpl %eax,4(%edx)
	ja .L61
	pushl $1634
	call _m3_fault
	.align 16
.L61:
	movl (%edx),%eax
	movl -12(%ebp),%esi
	movb $0,16(%esi,%eax)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ecx,%eax
.L62:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeapInfo__BuildTypeName,.Lfe3-RTHeapInfo__BuildTypeName
	.align 16
	.type	 RTHeapInfo__Send,@function
RTHeapInfo__Send:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $255,MM_RTHeapInfo+156
	jle .L64
	call RTHeapInfo__Flush
.L64:
	movl MM_RTHeapInfo+156,%eax
	cmpl $255,%eax
	jbe .L65
	pushl $1745
	call _m3_fault
	.align 16
.L65:
	movl %ebx,L_1(,%eax,4)
	incl %eax
	movl %eax,MM_RTHeapInfo+156
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeapInfo__Send,.Lfe4-RTHeapInfo__Send
	.align 16
	.type	 RTHeapInfo__Flush,@function
RTHeapInfo__Flush:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTHeapInfo+156,%eax
	testl %eax,%eax
	jle .L66
	sall $2,%eax
	jns .L68
	pushl $1857
	call _m3_fault
	.align 16
.L68:
	pushl %eax
	pushl $L_1
	movl MM_RTHeapInfo+148,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movl $0,MM_RTHeapInfo+156
.L66:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTHeapInfo__Flush,.Lfe5-RTHeapInfo__Flush
	.align 16
	.type	 RTHeapInfo__SetUpdate,@function
RTHeapInfo__SetUpdate:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L70:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %esi,%esi
	testl %edi,%edi
	je .L80
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L80
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %esi,%ebx
	decl %eax
	movl %eax,-12(%ebp)
	addl $4,%esp
	jmp .L73
	.align 16
.L74:
	pushl %ebx
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	leal -48(%eax),%edx
	addl $8,%esp
	testl %edx,%edx
	jl .L80
	cmpl $9,%edx
	jg .L80
	leal (%esi,%esi,4),%eax
	leal (%edx,%eax,2),%esi
	incl %ebx
.L73:
	cmpl %ebx,-12(%ebp)
	jge .L74
	pushl %esi
	fildl (%esp)
	addl $4,%esp
	fld1
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	jne .L81
	fstp %st(1)
	jmp .L82
	.align 16
.L81:
	fstp %st(0)
.L82:
	fstpl MM_RTHeapInfo+164
.L80:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHeapInfo__SetUpdate,.Lfe6-RTHeapInfo__SetUpdate
	.align 16
	.type	 RTHeapInfo__Init,@function
RTHeapInfo__Init:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RTHeapInfo+148
	pushl $MM_RTHeapInfo+220
	movl MI_RTPerfTool+44,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L83
	call RTHeapInfo__SendTypes
	pushl $MM_RTHeapInfo+240
	movl MI_RTParams+56,%eax
	call *%eax
	pushl %eax
	call RTHeapInfo__SetUpdate
	movl MM_RTHeapInfo+256,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl %eax
	movl MI_Thread+148,%eax
	call *%eax
	movl %eax,MM_RTHeapInfo+152
.L83:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTHeapInfo__Init,.Lfe7-RTHeapInfo__Init
	.align 16
	.type	 M_RTHeapInfo_t6c810e28_LINK,@function
M_RTHeapInfo_t6c810e28_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTHeapInfo+256,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RTHeapInfo+172,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_RTHeapInfo_t6c810e28_LINK,.Lfe8-M_RTHeapInfo_t6c810e28_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeapInfo
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_RTHeapInfo
.data
	.align 4
	.type	 MM_RTHeapInfo,@object
	.size	 MM_RTHeapInfo,596
MM_RTHeapInfo:
	.long MM_RTHeapInfo+416
	.long MM_RTHeapInfo+44
	.long MM_RTHeapInfo+256
	.zero	8
	.long MM_RTHeapInfo+324
	.zero	4
	.long MM_RTHeapInfo+412
	.long MM_RTHeapInfo+412
	.zero	16
	.long 1820397096
.byte 188
.byte 118
.byte 211
.byte 114
.byte 148
.byte 120
.byte 82
.byte 30
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RTHeapInfo+571
	.zero	4
	.long M_RTHeapInfo_t6c810e28_LINK
	.long -448425059
	.zero	16
	.long MM_RTHeapInfo+574
	.zero	16
	.long L_1
	.long 0x0,0x40140000
	.long RTHeapInfo__Producer
	.long RTHeapInfo__SendTypes
	.long RTHeapInfo__BuildTypeName
	.long RTHeapInfo__Send
	.long RTHeapInfo__Flush
	.long RTHeapInfo__SetUpdate
	.long RTHeapInfo__Init
.byte 48
.byte 49
.byte 50
.byte 51
.byte 52
.byte 53
.byte 54
.byte 55
.byte 56
.byte 57
.byte 97
.byte 98
.byte 99
.byte 100
.byte 101
.byte 102
	.long 2
	.long MM_RTHeapInfo+228
	.long 8
	.ascii	"shownew"
	.zero	1
	.long 2
	.long MM_RTHeapInfo+248
	.long 7
	.ascii	"update"
	.zero	6
	.long 1820397096
	.ascii	"Init"
	.zero	1
	.ascii	"SetUpdate"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"Send"
	.zero	1
	.ascii	"BuildTypeName"
	.zero	1
	.ascii	"SendTypes"
	.zero	1
	.ascii	"Producer"
	.zero	2
	.long RTHeapInfo__Init
	.long MM_RTHeapInfo+264
	.long MI_RTHeapInfo+44
	.long RTHeapInfo__SetUpdate
	.long MM_RTHeapInfo+269
	.zero	4
	.long RTHeapInfo__Flush
	.long MM_RTHeapInfo+279
	.zero	4
	.long RTHeapInfo__Send
	.long MM_RTHeapInfo+285
	.zero	4
	.long RTHeapInfo__BuildTypeName
	.long MM_RTHeapInfo+290
	.zero	4
	.long RTHeapInfo__SendTypes
	.long MM_RTHeapInfo+304
	.zero	4
	.long RTHeapInfo__Producer
	.long MM_RTHeapInfo+314
	.zero	8
.byte 42
.byte 152
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHeapInfo.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"RTHeapInfo.Closure"
	.zero	4
	.local	L_1
	.comm	L_1,1024,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
