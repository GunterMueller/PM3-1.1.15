	.file	"MxOut.mc"
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
	.type	 MxOut__WriteUnits,@function
MxOut__WriteUnits:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testl %esi,%esi
	je .L1
	testl %eax,%eax
	je .L1
	movl %eax,-24(%ebp)
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-20(%ebp)
	movl MM_MxOut+204,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%ebx
	pushl $409
	pushl %edx
	call *%ebx
	movl %eax,%edx
	movl %edx,-16(%ebp)
	movl $0,-12(%ebp)
	movl MM_MxOut+204,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%ebx
	pushl $709
	pushl %edx
	call *%ebx
	movl %eax,%edx
	movl %edx,-8(%ebp)
	movl $0,-4(%ebp)
	movl -24(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	movl MI_M3Buf+84,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	movl MI_Target+816,%eax
	pushl %eax
	pushl $MM_MxOut+216
	movl -20(%ebp),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
	jmp .L4
	.align 16
.L5:
	movl (%esi),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	call MxOut__WriteUnit
	addl $8,%esp
	movl 4(%esi),%esi
.L4:
	testl %esi,%esi
	jne .L5
	movl -24(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	movl MI_M3Buf+80,%eax
	call *%eax
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-8(%ebp)
.L1:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxOut__WriteUnits,.Lfe1-MxOut__WriteUnits
	.align 16
	.type	 MxOut__WriteUnit,@function
MxOut__WriteUnit:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	testl %esi,%esi
	jne .L10
	pushl $932
	call _m3_fault
	.align 16
.L10:
	movl (%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	addl $8,%esp
	pushl $0
	pushl $0
	movl %eax,%edi
	pushl $0
	xorl %eax,%eax
	movb 8(%esi),%al
	movl MM_MxOut+84(,%eax,4),%eax
	pushl %eax
	movl MI_Target+816,%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	movl $MM_MxOut+236,%ebx
	pushl %ebx
	pushl %edi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $36,%esp
	pushl %ebx
	movl 16(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 24(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 32(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 40(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 48(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 56(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 64(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 72(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 80(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 88(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 96(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	movl MI_Target+816,%eax
	pushl %eax
	movl 104(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl $MM_MxOut+252
	leal 12(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteNameInfo
	addl $16,%esp
	pushl $MM_MxOut+268
	leal 20(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteNameInfo
	addl $16,%esp
	pushl $MM_MxOut+284
	leal 36(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteNameInfo
	addl $16,%esp
	pushl $MM_MxOut+300
	leal 44(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteNameInfo
	addl $16,%esp
	pushl $MM_MxOut+316
	leal 28(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteNameInfo
	addl $16,%esp
	pushl $MM_MxOut+332
	leal 52(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteVSInfo
	addl $16,%esp
	pushl $MM_MxOut+348
	leal 60(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteVSInfo
	addl $16,%esp
	pushl $MM_MxOut+364
	leal 68(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteVSInfo
	addl $16,%esp
	pushl $MM_MxOut+380
	leal 76(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteVSInfo
	addl $16,%esp
	pushl $MM_MxOut+396
	leal 84(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteTypeInfo
	addl $16,%esp
	pushl $MM_MxOut+412
	leal 92(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteTypeInfo
	addl $16,%esp
	pushl $MM_MxOut+428
	leal 100(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteTypeInfo
	addl $16,%esp
	movl 108(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteOpaques
	addl $8,%esp
	pushl $0
	movl 112(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteObjects
	addl $12,%esp
	pushl $1
	movl 116(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteObjects
	addl $12,%esp
	movl 120(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteRevelations
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxOut__WriteUnit,.Lfe2-MxOut__WriteUnit
	.align 16
	.type	 MxOut__WriteNameInfo,@function
MxOut__WriteNameInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%esi
	leal -1(%eax),%edi
	jmp .L41
	.align 16
.L42:
	cmpl $0,12(%ebp)
	jne .L43
	pushl $1572
	call _m3_fault
	.align 16
.L43:
	movl 12(%ebp),%ecx
	movl 124(%ecx),%eax
	testl %eax,%eax
	jne .L44
	pushl $1572
	call _m3_fault
	.align 16
.L44:
	cmpl %esi,4(%eax)
	ja .L45
	pushl $1570
	call _m3_fault
	.align 16
.L45:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%ebx
	pushl $0
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_Target+816,%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	incl %esi
	addl $12,%esp
.L41:
	cmpl %edi,%esi
	jle .L42
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxOut__WriteNameInfo,.Lfe3-MxOut__WriteNameInfo
	.align 16
	.type	 MxOut__WriteVSInfo,@function
MxOut__WriteVSInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%esi
	leal -1(%eax),%edi
	jmp .L48
	.align 16
.L49:
	cmpl $0,12(%ebp)
	jne .L50
	pushl $1748
	call _m3_fault
	.align 16
.L50:
	movl 12(%ebp),%ecx
	movl 124(%ecx),%eax
	testl %eax,%eax
	jne .L51
	pushl $1748
	call _m3_fault
	.align 16
.L51:
	cmpl %esi,4(%eax)
	ja .L52
	pushl $1746
	call _m3_fault
	.align 16
.L52:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteVS
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%ebx
	pushl $0
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $32,%esp
	movl MI_Target+816,%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	incl %esi
	addl $12,%esp
.L48:
	cmpl %edi,%esi
	jle .L49
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxOut__WriteVSInfo,.Lfe4-MxOut__WriteVSInfo
	.align 16
	.type	 MxOut__WriteTypeInfo,@function
MxOut__WriteTypeInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl 12(%ebp),%edi
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%ebx
	leal -1(%eax),%esi
	jmp .L55
	.align 16
.L56:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
	testl %edi,%edi
	jne .L57
	pushl $1924
	call _m3_fault
	.align 16
.L57:
	movl 124(%edi),%edx
	testl %edx,%edx
	jne .L58
	pushl $1924
	call _m3_fault
	.align 16
.L58:
	cmpl %ebx,4(%edx)
	ja .L59
	pushl $1922
	call _m3_fault
	.align 16
.L59:
	movl MI_Target+816,%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	incl %ebx
	addl $12,%esp
.L55:
	cmpl %esi,%ebx
	jle .L56
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxOut__WriteTypeInfo,.Lfe5-MxOut__WriteTypeInfo
	.align 16
	.type	 MxOut__WriteOpaques,@function
MxOut__WriteOpaques:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	jmp .L62
	.align 16
.L63:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxOut+444
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
	pushl $MM_MxOut+236
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	addl $12,%esp
	movl MI_Target+816,%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	addl $12,%esp
	movl (%ebx),%ebx
.L62:
	testl %ebx,%ebx
	jne .L63
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxOut__WriteOpaques,.Lfe6-MxOut__WriteOpaques
	.align 16
	.type	 MxOut__WriteObjects,@function
MxOut__WriteObjects:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	jmp .L69
	.align 16
.L70:
	cmpb $0,16(%ebp)
	je .L73
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxOut+460
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
	jmp .L72
	.align 16
.L73:
	cmpb $0,29(%esi)
	je .L76
	movl 4(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%ebx
	pushl $MM_MxOut+476
	jmp .L84
	.align 16
.L76:
	movl 4(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%ebx
	pushl $MM_MxOut+492
.L84:
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $32,%esp
	pushl $MM_MxOut+236
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
.L72:
	testl %esi,%esi
	jne .L77
	pushl $2388
	call _m3_fault
	.align 16
.L77:
	movl $MM_MxOut+236,%ebx
	pushl %ebx
	movl 8(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 12(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 16(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 20(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	movl MI_Target+816,%eax
	pushl %eax
	movl 24(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	movl (%esi),%esi
.L69:
	testl %esi,%esi
	jne .L70
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 MxOut__WriteObjects,.Lfe7-MxOut__WriteObjects
	.align 16
	.type	 MxOut__WriteRevelations,@function
MxOut__WriteRevelations:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	jmp .L86
	.align 16
.L87:
	cmpb $0,17(%esi)
	je .L92
	xorl %eax,%eax
	movb 16(%esi),%al
	movl MM_MxOut+132(,%eax,4),%ebx
	jmp .L91
	.align 16
.L92:
	xorl %eax,%eax
	movb 16(%esi),%al
	movl MM_MxOut+124(,%eax,4),%ebx
.L91:
	testl %esi,%esi
	jne .L93
	pushl $2692
	call _m3_fault
	.align 16
.L93:
	movl (%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%edi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $32,%esp
	movl $MM_MxOut+236,%ebx
	pushl %ebx
	pushl %edi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $12,%esp
	pushl %ebx
	movl 4(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	addl $12,%esp
	movl MI_Target+816,%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
	addl $12,%esp
	movl 12(%esi),%esi
.L86:
	testl %esi,%esi
	jne .L87
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 MxOut__WriteRevelations,.Lfe8-MxOut__WriteRevelations
	.align 16
	.type	 MxOut__WriteVS,@function
MxOut__WriteVS:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%eax),%edx
	movl (%edx),%eax
	leal -20(%ebp),%edi
	movl 4(%eax),%ecx
	movl %edi,-28(%ebp)
	pushl %edi
	leal 12(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	jne .L99
	leal -16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	movl %eax,%esi
	movl %esi,-24(%ebp)
	movl -12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxOut__WriteName
	movl %eax,%esi
	movl 8(%ebp),%eax
	movl 20(%eax),%edx
	movl %edx,-20(%ebp)
	movl 16(%eax),%ecx
	incl 20(%eax)
	movl (%ecx),%eax
	movl 8(%eax),%edx
	pushl %edi
	pushl %ebx
	pushl %ecx
	call *%edx
	addl $36,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxOut+508
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	movl $MM_MxOut+236,%ebx
	pushl %ebx
	movl -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	addl $36,%esp
	pushl %ebx
	movl -24(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	movl MI_Target+816,%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+56,%eax
	call *%eax
.L99:
	leal -40(%ebp),%esp
	movl -20(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 MxOut__WriteVS,.Lfe9-MxOut__WriteVS
	.align 16
	.type	 MxOut__WriteName,@function
MxOut__WriteName:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 8(%eax),%edx
	movl 12(%ebp),%esi
	movl (%edx),%eax
	leal -4(%ebp),%ebx
	movl 4(%eax),%ecx
	movl %esi,-8(%ebp)
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	jne .L101
	movl 8(%ebp),%eax
	movl 12(%eax),%edx
	movl %edx,-4(%ebp)
	movl 8(%eax),%ecx
	incl 12(%eax)
	movl (%ecx),%eax
	movl 8(%eax),%edx
	movl %esi,-12(%ebp)
	pushl %ebx
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxOut+524
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $36,%esp
	pushl $MM_MxOut+236
	movl -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+52,%eax
	call *%eax
	pushl %esi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Target+816,%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
.L101:
	leal -20(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 MxOut__WriteName,.Lfe10-MxOut__WriteName
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxOut
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_MxOut
.data
	.align 4
	.type	 MM_MxOut,@object
	.size	 MM_MxOut,924
MM_MxOut:
	.long MM_MxOut+784
	.zero	4
	.long MM_MxOut+204
	.zero	8
	.long MM_MxOut+660
	.zero	20
	.long MxOut__WriteUnit
	.long MxOut__WriteNameInfo
	.long MxOut__WriteVSInfo
	.long MxOut__WriteTypeInfo
	.long MxOut__WriteOpaques
	.long MxOut__WriteObjects
	.long MxOut__WriteRevelations
	.long MxOut__WriteVS
	.long MxOut__WriteName
	.long MxOut__WriteUnits
	.long MM_MxOut+96
	.long MM_MxOut+112
	.long 2
	.long MM_MxOut+104
	.long 2
	.ascii	"M"
	.zero	3
	.long 2
	.long MM_MxOut+120
	.long 2
	.ascii	"I"
	.zero	3
	.long MM_MxOut+144
	.long MM_MxOut+160
	.long MM_MxOut+176
	.long MM_MxOut+192
	.long 2
	.long MM_MxOut+152
	.long 2
	.ascii	"r"
	.zero	3
	.long 2
	.long MM_MxOut+168
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_MxOut+184
	.long 2
	.ascii	"R"
	.zero	3
	.long 2
	.long MM_MxOut+200
	.long 2
	.ascii	"X"
	.zero	7
	.long 951908833
	.long 2
	.long MM_MxOut+224
	.long 8
	.ascii	"M3 v4.2"
	.zero	1
	.long 2
	.long MM_MxOut+244
	.long 2
	.ascii	" "
	.zero	3
	.long 2
	.long MM_MxOut+260
	.long 2
	.ascii	"A"
	.zero	3
	.long 2
	.long MM_MxOut+276
	.long 2
	.ascii	"B"
	.zero	3
	.long 2
	.long MM_MxOut+292
	.long 2
	.ascii	"C"
	.zero	3
	.long 2
	.long MM_MxOut+308
	.long 2
	.ascii	"D"
	.zero	3
	.long 2
	.long MM_MxOut+324
	.long 2
	.ascii	"g"
	.zero	3
	.long 2
	.long MM_MxOut+340
	.long 2
	.ascii	"J"
	.zero	3
	.long 2
	.long MM_MxOut+356
	.long 2
	.ascii	"i"
	.zero	3
	.long 2
	.long MM_MxOut+372
	.long 2
	.ascii	"E"
	.zero	3
	.long 2
	.long MM_MxOut+388
	.long 2
	.ascii	"e"
	.zero	3
	.long 2
	.long MM_MxOut+404
	.long 2
	.ascii	"t"
	.zero	3
	.long 2
	.long MM_MxOut+420
	.long 2
	.ascii	"T"
	.zero	3
	.long 2
	.long MM_MxOut+436
	.long 2
	.ascii	"w"
	.zero	3
	.long 2
	.long MM_MxOut+452
	.long 2
	.ascii	"Q"
	.zero	3
	.long 2
	.long MM_MxOut+468
	.long 2
	.ascii	"O"
	.zero	3
	.long 2
	.long MM_MxOut+484
	.long 2
	.ascii	"p"
	.zero	3
	.long 2
	.long MM_MxOut+500
	.long 2
	.ascii	"o"
	.zero	3
	.long 2
	.long MM_MxOut+516
	.long 2
	.ascii	"V"
	.zero	3
	.long 2
	.long MM_MxOut+532
	.long 2
	.ascii	"N"
	.zero	3
	.ascii	"WriteName"
	.zero	1
	.ascii	"WriteVS"
	.zero	1
	.ascii	"WriteRevelations"
	.zero	1
	.ascii	"WriteObjects"
	.zero	1
	.ascii	"WriteOpaques"
	.zero	1
	.ascii	"WriteTypeInfo"
	.zero	1
	.ascii	"WriteVSInfo"
	.zero	1
	.ascii	"WriteNameInfo"
	.zero	1
	.ascii	"WriteUnit"
	.zero	1
	.ascii	"WriteUnits"
	.zero	3
	.long MxOut__WriteName
	.long MM_MxOut+536
	.zero	4
	.long MxOut__WriteVS
	.long MM_MxOut+546
	.zero	4
	.long MxOut__WriteRevelations
	.long MM_MxOut+554
	.zero	4
	.long MxOut__WriteObjects
	.long MM_MxOut+571
	.zero	4
	.long MxOut__WriteOpaques
	.long MM_MxOut+584
	.zero	4
	.long MxOut__WriteTypeInfo
	.long MM_MxOut+597
	.zero	4
	.long MxOut__WriteVSInfo
	.long MM_MxOut+611
	.zero	4
	.long MxOut__WriteNameInfo
	.long MM_MxOut+623
	.zero	4
	.long MxOut__WriteUnit
	.long MM_MxOut+637
	.zero	4
	.long MxOut__WriteUnits
	.long MM_MxOut+647
	.long MI_MxOut+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxOut.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"