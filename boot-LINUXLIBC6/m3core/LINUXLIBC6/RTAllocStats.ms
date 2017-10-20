	.file	"RTAllocStats.mc"
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
	.type	 RTAllocStats__EnableTrace,@function
RTAllocStats__EnableTrace:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_RTType+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L3
	pushl %eax
	pushl %eax
	pushl $MM_RTAllocStats+396
	pushl %eax
	pushl %eax
	movl MI_RTMisc+60,%eax
	call *%eax
	addl $20,%esp
.L3:
	cmpl $0,MM_RTAllocStats+356
	jne .L4
	leal -12(%ebp),%edx
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MI_RT0u+156,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_RTAllocStats+456,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,MM_RTAllocStats+356
	movl MM_RTAllocStats+360,%eax
	movl %eax,MI_RTAllocator+64
	addl $8,%esp
.L4:
	movl MM_RTAllocStats+464,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $4,-4(%ebp)
	pushl %eax
	movl MM_RTAllocStats+472,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%ebx)
	movl MM_RTAllocStats+356,%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L5
	pushl $756
	call _m3_fault
	.align 16
.L5:
	cmpl %esi,4(%eax)
	ja .L6
	pushl $754
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%eax
	leal -20(%ebp),%esp
	movl %ebx,(%eax,%esi,4)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTAllocStats__EnableTrace,.Lfe1-RTAllocStats__EnableTrace
	.align 16
	.type	 RTAllocStats__NSites,@function
RTAllocStats__NSites:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTAllocStats+356,%eax
	movl 8(%ebp),%edx
	testl %eax,%eax
	je .L14
	cmpl %edx,4(%eax)
	ja .L10
	pushl $866
	call _m3_fault
	.align 16
.L10:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	testl %eax,%eax
	jne .L12
.L14:
	movl $-1,%eax
	jmp .L13
	.align 16
.L12:
	movl (%eax),%eax
.L13:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTAllocStats__NSites,.Lfe2-RTAllocStats__NSites
	.align 16
	.type	 RTAllocStats__GetSiteText,@function
RTAllocStats__GetSiteText:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ecx
	movl 16(%ebp),%ebx
	movl MM_RTAllocStats+356,%edx
	testl %edx,%edx
	je .L29
	movl %edx,%eax
	cmpl %esi,4(%eax)
	ja .L18
	pushl $1010
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	testl %eax,%eax
	je .L29
	testl %ecx,%ecx
	jne .L22
	testl %ebx,%ebx
	jg .L23
	movl $MM_RTAllocStats+484,%eax
	jmp .L29
	.align 16
.L22:
	cmpl %ecx,(%eax)
	jl .L23
	cmpl $6,%ebx
	jle .L25
.L23:
	xorl %eax,%eax
	jmp .L29
	.align 16
.L25:
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L26
	pushl $1252
	call _m3_fault
	.align 16
.L26:
	leal -1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L27
	pushl $1250
	call _m3_fault
	.align 16
.L27:
	movl %ecx,%eax
	sall $5,%eax
	addl (%edx),%eax
	movl -28(%eax,%ebx,4),%eax
	pushl %eax
	call RTAllocStats__PcToText
.L29:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTAllocStats__GetSiteText,.Lfe3-RTAllocStats__GetSiteText
	.align 16
	.type	 RTAllocStats__NoteAllocation,@function
RTAllocStats__NoteAllocation:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MM_RTAllocStats+356,%ecx
	testl %ecx,%ecx
	je .L30
	movl %edi,%edx
	testl %edi,%edi
	je .L33
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
.L33:
	cmpl %edx,4(%ecx)
	ja .L34
	pushl $1426
	call _m3_fault
	.align 16
.L34:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%esi
	testl %esi,%esi
	je .L30
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L38
	pushl $1476
	call _m3_fault
	.align 16
.L38:
	movl 4(%eax),%eax
	decl %eax
	cmpl %eax,(%esi)
	jle .L40
	pushl %esi
	call RTAllocStats__ExpandSites
	addl $4,%esp
.L40:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L41
	pushl $1508
	call _m3_fault
	.align 16
.L41:
	movl %eax,%ecx
	movl (%esi),%eax
	cmpl %eax,4(%ecx)
	ja .L43
	pushl $1506
	call _m3_fault
	.align 16
.L43:
	sall $5,%eax
	movl (%ecx),%edx
	addl %eax,%edx
	movl %edx,-4(%ebp)
	pushl $2
	pushl %edx
	call RTAllocStats__GetSite
	xorl %ebx,%ebx
	addl $8,%esp
	jmp .L44
	.align 16
.L45:
	incl %ebx
.L44:
	testl %esi,%esi
	jne .L46
	pushl $1540
	call _m3_fault
	.align 16
.L46:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L47
	pushl $1540
	call _m3_fault
	.align 16
.L47:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L48
	pushl $1538
	call _m3_fault
	.align 16
.L48:
	movl (%edx),%ecx
	movl %ebx,%edx
	movl -4(%ebp),%eax
	sall $5,%edx
	movl (%eax),%eax
	cmpl %eax,(%ecx,%edx)
	jne .L45
	cmpl $254,%ebx
	jg .L30
	movl (%esi),%eax
	cmpl %ebx,%eax
	jg .L52
	incl %eax
	movl %eax,(%esi)
.L52:
	leal 1(%ebx),%eax
	pushl %eax
	pushl %edi
	call RTAllocStats__InsertSiteNum
.L30:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTAllocStats__NoteAllocation,.Lfe4-RTAllocStats__NoteAllocation
	.align 16
	.type	 RTAllocStats__ExpandSites,@function
RTAllocStats__ExpandSites:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L55
	pushl $1684
	call _m3_fault
	.align 16
.L55:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L56
	pushl $1684
	call _m3_fault
	.align 16
.L56:
	movl 4(%eax),%esi
	leal -12(%ebp),%ebx
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,%edx
	addl %esi,%edx
	movl $256,%eax
	cmpl %edx,%eax
	jle .L57
	movl %edx,%eax
.L57:
	movl %eax,-4(%ebp)
	pushl %ebx
	movl MM_RTAllocStats+472,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L58
	pushl $1716
	call _m3_fault
	.align 16
.L58:
	movl %esi,-16(%ebp)
	movl %esi,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L59
	pushl $1713
	call _m3_fault
	.align 16
.L59:
	movl (%ebx),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L61
	pushl $1716
	call _m3_fault
	.align 16
.L61:
	cmpl %esi,4(%edx)
	je .L62
	pushl $1715
	call _m3_fault
	.align 16
.L62:
	movl %esi,%eax
	sall $5,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	leal -36(%ebp),%esp
	movl %ebx,4(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTAllocStats__ExpandSites,.Lfe5-RTAllocStats__ExpandSites
	.align 16
	.type	 RTAllocStats__InsertSiteNum,@function
RTAllocStats__InsertSiteNum:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	addl $-4,%eax
	jne .L65
	pushl $1860
	call _m3_fault
	.align 16
.L65:
	cmpl $255,%edx
	jbe .L66
	pushl $1857
	call _m3_fault
	.align 16
.L66:
	movb %dl,3(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTAllocStats__InsertSiteNum,.Lfe6-RTAllocStats__InsertSiteNum
	.align 16
	.type	 RTAllocStats__GetSite,@function
RTAllocStats__GetSite:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	leal -24(%ebp),%eax
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	call RTStack__CurFrame
	xorl %esi,%esi
	decl %ebx
	addl $4,%esp
	jmp .L68
	.align 16
.L69:
	leal -12(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	call RTStack__PrevFrame
	movl -12(%ebp),%eax
	movl %eax,-24(%ebp)
	movl -8(%ebp),%eax
	movl %eax,-20(%ebp)
	movl -4(%ebp),%eax
	movl %eax,-16(%ebp)
	incl %esi
	addl $8,%esp
.L68:
	cmpl %ebx,%esi
	jle .L69
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl $0,(%eax)
.L71:
	cmpl $0,-24(%ebp)
	je .L72
	cmpl %ebx,MI_RTAllocStats+44
	jle .L72
	leal -12(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	call RTStack__PrevFrame
	movl -12(%ebp),%edx
	movl %edx,-24(%ebp)
	movl -8(%ebp),%eax
	movl %eax,-20(%ebp)
	movl -4(%ebp),%eax
	movl %eax,-16(%ebp)
	movl 8(%ebp),%eax
	addl $8,%esp
	xorl %edx,(%eax)
	movl 8(%ebp),%edx
	movl -24(%ebp),%eax
	movl %eax,4(%edx,%ebx,4)
	jmp .L73
	.align 16
.L72:
	movl 8(%ebp),%eax
	movl $0,4(%eax,%ebx,4)
.L73:
	incl %ebx
	cmpl $6,%ebx
	jle .L71
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTAllocStats__GetSite,.Lfe7-RTAllocStats__GetSite
	.align 16
	.type	 RTAllocStats__PcToText,@function
RTAllocStats__PcToText:
	pushl %ebp
	movl %esp,%ebp
	subl $540,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L77:
	movl $5,-528(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-532(%ebp)
	leal -532(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-524(%ebp)
	movl $0,-520(%ebp)
	movl $0,-516(%ebp)
	leal -516(%ebp),%eax
	pushl %eax
	leal -520(%ebp),%eax
	pushl %eax
	leal -524(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_RTProcedureSRC+48,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $16,%esp
	cmpl $0,-524(%ebp)
	jne .L78
	movl -532(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
	jmp .L76
	.align 16
.L78:
	movl -516(%ebp),%eax
	jmp .L79
	.align 16
.L80:
	cmpl $511,%ebx
	jbe .L82
	pushl $2529
	call _m3_fault
	.align 16
.L82:
	movb %dl,-512(%ebx,%ebp)
	incl %ebx
	incl %eax
.L79:
	testl %eax,%eax
	je .L85
	movb (%eax),%dl
	testb %dl,%dl
	jne .L80
.L85:
	cmpl $0,-516(%ebp)
	je .L86
	cmpl %esi,-524(%ebp)
	je .L86
	cmpl $511,%ebx
	jbe .L87
	pushl $2593
	call _m3_fault
	.align 16
.L87:
	movb $32,-512(%ebx,%ebp)
	incl %ebx
	cmpl $511,%ebx
	jbe .L88
	pushl $2609
	call _m3_fault
	.align 16
.L88:
	movb $43,-512(%ebx,%ebp)
	incl %ebx
	cmpl $511,%ebx
	jbe .L89
	pushl $2625
	call _m3_fault
	.align 16
.L89:
	movb $32,-512(%ebx,%ebp)
	incl %ebx
	movl $512,%eax
	subl %ebx,%eax
	jns .L90
	pushl $2641
	call _m3_fault
	.align 16
.L90:
	movl %eax,-536(%ebp)
	testl %ebx,%ebx
	jge .L91
	pushl $2641
	call _m3_fault
	.align 16
.L91:
	addl %ebx,%eax
	cmpl $512,%eax
	jle .L92
	pushl $2641
	call _m3_fault
	.align 16
.L92:
	leal -512(%ebx,%ebp),%eax
	movl %eax,-540(%ebp)
	pushl $1
	movl %esi,%eax
	pushl $16
	subl -524(%ebp),%eax
	pushl %eax
	leal -540(%ebp),%eax
	pushl %eax
	movl MI_Convert+68,%eax
	call *%eax
	addl %eax,%ebx
	addl $16,%esp
.L86:
	movl -520(%ebp),%eax
	jmp .L93
	.align 16
.L94:
	andl $255,%edx
	cmpl $47,%edx
	je .L96
	cmpl $92,%edx
	jne .L98
.L96:
	leal 1(%eax),%ecx
	movl %ecx,-520(%ebp)
.L98:
	incl %eax
.L93:
	testl %eax,%eax
	je .L101
	movb (%eax),%dl
	testb %dl,%dl
	jne .L94
.L101:
	cmpl $0,-520(%ebp)
	je .L102
	cmpl $511,%ebx
	jbe .L103
	pushl $2897
	call _m3_fault
	.align 16
.L103:
	movb $32,-512(%ebx,%ebp)
	incl %ebx
	cmpl $511,%ebx
	jbe .L104
	pushl $2913
	call _m3_fault
	.align 16
.L104:
	movb $105,-512(%ebx,%ebp)
	incl %ebx
	cmpl $511,%ebx
	jbe .L105
	pushl $2929
	call _m3_fault
	.align 16
.L105:
	movb $110,-512(%ebx,%ebp)
	incl %ebx
	cmpl $511,%ebx
	jbe .L106
	pushl $2945
	call _m3_fault
	.align 16
.L106:
	movb $32,-512(%ebx,%ebp)
	incl %ebx
.L102:
	movl -520(%ebp),%eax
	jmp .L107
	.align 16
.L108:
	cmpl $511,%ebx
	jbe .L110
	pushl $3025
	call _m3_fault
	.align 16
.L110:
	movb %dl,-512(%ebx,%ebp)
	incl %ebx
	incl %eax
.L107:
	testl %eax,%eax
	je .L113
	movb (%eax),%dl
	testb %dl,%dl
	jne .L108
.L113:
	testl %ebx,%ebx
	jge .L114
	pushl $3073
	call _m3_fault
	.align 16
.L114:
	cmpl $512,%ebx
	jle .L115
	pushl $3073
	call _m3_fault
	.align 16
.L115:
	movl %ebx,-536(%ebp)
	leal -512(%ebp),%ecx
	movl %ecx,-540(%ebp)
	leal -540(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl -532(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L116:
.L76:
	leal -548(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTAllocStats__PcToText,.Lfe8-RTAllocStats__PcToText
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTAllocStats
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_RTAllocStats
.data
	.align 4
	.type	 MM_RTAllocStats,@object
	.size	 MM_RTAllocStats,1028
MM_RTAllocStats:
	.long MM_RTAllocStats+701
	.long MM_RTAllocStats+44
	.long MM_RTAllocStats+456
	.zero	8
	.long MM_RTAllocStats+596
	.zero	4
	.long MM_RTAllocStats+696
	.long MM_RTAllocStats+696
	.zero	16
	.long 1790382691
.byte 143
.byte 195
.byte 37
.byte 117
.byte 236
.byte 209
.byte 146
.byte 31
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 32
	.zero	4
	.long MM_RTAllocStats+961
	.zero	4
	.long MM_RTAllocStats+970
	.zero	24
	.long MM_RTAllocStats+979
	.long MM_RTAllocStats+1005
	.long MM_RTAllocStats+148
	.zero	8
	.long 1012442258
.byte 126
.byte 33
.byte 111
.byte 46
.byte 236
.byte 133
.byte 55
.byte 18
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_RTAllocStats+924
	.long MM_RTAllocStats+927
	.long MM_RTAllocStats+930
	.zero	28
	.long MM_RTAllocStats+939
	.long MM_RTAllocStats+252
	.zero	8
	.long -267278112
.byte 194
.byte 218
.byte 241
.byte 247
.byte 34
.byte 114
.byte 224
.byte 7
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTAllocStats+858
	.long MM_RTAllocStats+863
	.long MM_RTAllocStats+868
	.zero	24
	.long MM_RTAllocStats+876
	.long MM_RTAllocStats+902
	.zero	8
	.long RTAllocStats__NoteAllocation
	.long RTAllocStats__ExpandSites
	.long RTAllocStats__InsertSiteNum
	.long RTAllocStats__GetSite
	.long RTAllocStats__PcToText
	.long RTAllocStats__EnableTrace
	.long RTAllocStats__NSites
	.long RTAllocStats__GetSiteText
	.long 2
	.long MM_RTAllocStats+404
	.long 51
	.ascii	"RTAllocStats.EnableTrace(untraced type) was called"
	.zero	2
	.long MM_RTAllocStats+464
	.long -267278112
	.long MM_RTAllocStats+472
	.long 1012442258
	.zero	4
	.long 1790382691
	.long 2
	.long MM_RTAllocStats+492
	.long 12
	.ascii	"OTHER SITES"
	.zero	1
	.ascii	"PcToText"
	.zero	1
	.ascii	"GetSite"
	.zero	1
	.ascii	"InsertSiteNum"
	.zero	1
	.ascii	"ExpandSites"
	.zero	1
	.ascii	"NoteAllocation"
	.zero	1
	.ascii	"GetSiteText"
	.zero	1
	.ascii	"NSites"
	.zero	1
	.ascii	"EnableTrace"
	.zero	4
	.long RTAllocStats__PcToText
	.long MM_RTAllocStats+504
	.zero	4
	.long RTAllocStats__GetSite
	.long MM_RTAllocStats+513
	.zero	4
	.long RTAllocStats__InsertSiteNum
	.long MM_RTAllocStats+521
	.zero	4
	.long RTAllocStats__ExpandSites
	.long MM_RTAllocStats+535
	.zero	4
	.long RTAllocStats__NoteAllocation
	.long MM_RTAllocStats+547
	.zero	4
	.long RTAllocStats__GetSiteText
	.long MM_RTAllocStats+562
	.long MI_RTAllocStats+56
	.long RTAllocStats__NSites
	.long MM_RTAllocStats+574
	.long MI_RTAllocStats+52
	.long RTAllocStats__EnableTrace
	.long MM_RTAllocStats+581
	.long MI_RTAllocStats+48
	.zero	4
.byte 43
.byte 100
.byte 1
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTAllocStats.m3"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 16
.byte 146
.byte 164
.byte 88
.byte 60
	.ascii	"RTAllocStats_^%#%^__0002M"
	.zero	1
	.ascii	"RTAllocStats.InfoList"
	.zero	1
.byte 14
.byte 4
.byte 0
.byte 37
.byte 4
.byte 0
.byte 3
.byte 15
.byte 2
.byte 7
.byte 16
.byte 99
.byte 18
.byte 183
.byte 106
	.ascii	"RTAllocStats.TypeInfo"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 1
.byte 5
.byte 26
.byte 7
.byte 0
.byte 0
.byte 5
.byte 11
.byte 1
.byte 15
.byte 2
.byte 7
.byte 1
.byte 7
.byte 0
	.ascii	"RTAllocStats_^%#%^__0001M"
	.zero	1
	.ascii	"RTAllocStats.SiteList"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
