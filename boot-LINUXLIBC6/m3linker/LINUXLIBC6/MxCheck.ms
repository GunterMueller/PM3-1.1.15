	.file	"MxCheck.mc"
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
	.type	 MxCheck__IsProgram,@function
MxCheck__IsProgram:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl $44
	pushl $0
	leal -44(%ebp),%edi
	pushl %edi
	call memset
	pushl %ebx
	pushl %esi
	pushl %edi
	call MxCheck__InitState
	pushl %edi
	call MxCheck__CheckUnits
	addl $28,%esp
	cmpb $0,-36(%ebp)
	jne .L5
	pushl %edi
	call MxCheck__CheckMain
	addl $4,%esp
	cmpb $0,-36(%ebp)
	jne .L5
	pushl %edi
	call MxCheck__CheckStamps
	addl $4,%esp
	cmpb $0,-36(%ebp)
	jne .L5
	pushl %edi
	call MxCheck__CheckOpaques
	cmpb $0,-36(%ebp)
	jne .L5
	movl $1,%eax
	jmp .L6
	.align 16
.L5:
	xorl %eax,%eax
.L6:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxCheck__IsProgram,.Lfe1-MxCheck__IsProgram
	.align 16
	.type	 MxCheck__IsLibrary,@function
MxCheck__IsLibrary:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	pushl $44
	pushl $0
	leal -44(%ebp),%ebx
	pushl %ebx
	call memset
	pushl %esi
	pushl %edi
	pushl %ebx
	call MxCheck__InitState
	pushl %ebx
	call MxCheck__CheckUnits
	cmpb $0,-36(%ebp)
	jne .L8
	movl $1,%eax
	jmp .L9
	.align 16
.L8:
	xorl %eax,%eax
.L9:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxCheck__IsLibrary,.Lfe2-MxCheck__IsLibrary
	.align 16
	.type	 MxCheck__InitState,@function
MxCheck__InitState:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	movl 16(%ebp),%edx
	movl %eax,(%ecx)
	movl 8(%ebp),%ecx
	movl %ebp,%esp
	movl %edx,4(%ecx)
	movb $0,8(%ecx)
	popl %ebp
	ret
.Lfe3:
	.size	 MxCheck__InitState,.Lfe3-MxCheck__InitState
	.align 16
	.type	 MxCheck__CheckUnits,@function
MxCheck__CheckUnits:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl $0,20(%edx)
	movl MM_MxCheck+260,%eax
	pushl %eax
	pushl %edx
	call MxCheck__ForEachUnit
	movl MM_MxCheck+264,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ForEachUnit
	movl 8(%ebp),%edx
	addl $16,%esp
	movl 20(%edx),%eax
	testl %eax,%eax
	je .L11
	pushl %eax
	pushl %edx
	call MxCheck__DumpImportErrors
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxCheck__CheckUnits,.Lfe4-MxCheck__CheckUnits
	.align 16
	.type	 MxCheck__CheckVirtualUnit,@function
MxCheck__CheckVirtualUnit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L14
	pushl $1508
	call _m3_fault
	.align 16
.L14:
	cmpb $0,9(%ebx)
	je .L13
	movl MM_MxCheck+392,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	movl %eax,8(%edx)
	movl %ebx,4(%edx)
	movl $2147483647,(%edx)
	movl 8(%ebp),%eax
	movl %edx,20(%eax)
.L13:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxCheck__CheckVirtualUnit,.Lfe5-MxCheck__CheckVirtualUnit
	.align 16
	.type	 MxCheck__CheckUnitImports,@function
MxCheck__CheckUnitImports:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L17
	pushl $1636
	call _m3_fault
	.align 16
.L17:
	leal 20(%ebx),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__CheckUnitList
	addl $12,%esp
	leal 12(%ebx),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__CheckUnitList
	addl $12,%esp
	leal 36(%ebx),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__CheckUnitList
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxCheck__CheckUnitImports,.Lfe6-MxCheck__CheckUnitImports
	.align 16
	.type	 MxCheck__CheckUnitList,@function
MxCheck__CheckUnitList:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl 12(%ebp),%edi
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%ebx
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L21
	.align 16
.L22:
	testl %edi,%edi
	jne .L23
	pushl $1780
	call _m3_fault
	.align 16
.L23:
	movl 124(%edi),%eax
	testl %eax,%eax
	jne .L24
	pushl $1780
	call _m3_fault
	.align 16
.L24:
	cmpl %ebx,4(%eax)
	ja .L25
	pushl $1778
	call _m3_fault
	.align 16
.L25:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L26
	pushl $1796
	call _m3_fault
	.align 16
.L26:
	pushl %esi
	movl (%eax),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L27
	movl MM_MxCheck+392,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	movl %eax,8(%edx)
	movl %edi,4(%edx)
	movl %esi,(%edx)
	movl 8(%ebp),%eax
	addl $4,%esp
	movl %edx,20(%eax)
.L27:
	incl %ebx
.L21:
	cmpl %ebx,-4(%ebp)
	jge .L22
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 MxCheck__CheckUnitList,.Lfe7-MxCheck__CheckUnitList
	.align 16
	.type	 MxCheck__DumpImportErrors,@function
MxCheck__DumpImportErrors:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
	jmp .L30
	.align 16
.L31:
	xorl %ebx,%ebx
	movl %edx,%ecx
	movl 8(%edx),%edx
	movl %ebx,8(%ecx)
	jmp .L34
	.align 16
.L35:
	movl 8(%edx),%esi
	testl %ecx,%ecx
	jne .L38
	pushl $2068
	call _m3_fault
	.align 16
.L38:
	movl (%ecx),%eax
	cmpl %eax,(%edx)
	jne .L42
	movl %ecx,8(%edx)
	movl %edx,%ecx
	jmp .L41
	.align 16
.L42:
	movl %ebx,8(%edx)
	movl %edx,%ebx
.L41:
	movl %esi,%edx
.L34:
	testl %edx,%edx
	jne .L35
	testl %ecx,%ecx
	jne .L44
	pushl $2164
	call _m3_fault
	.align 16
.L44:
	cmpl $2147483647,(%ecx)
	jne .L45
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpMissingUnit
	jmp .L48
	.align 16
.L45:
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpImportErrorList
.L48:
	addl $8,%esp
	movl %ebx,%edx
.L30:
	testl %edx,%edx
	jne .L31
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 MxCheck__DumpImportErrors,.Lfe8-MxCheck__DumpImportErrors
	.align 16
	.type	 MxCheck__DumpImportErrorList,@function
MxCheck__DumpImportErrorList:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L50
	pushl $2308
	call _m3_fault
	.align 16
.L50:
	movl (%ebx),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $MM_MxCheck+448
	pushl %eax
	pushl $MM_MxCheck+404
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $24,%esp
	jmp .L51
	.align 16
.L52:
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxCheck+480
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $24,%esp
	movl 8(%ebx),%ebx
.L51:
	testl %ebx,%ebx
	jne .L52
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 MxCheck__DumpImportErrorList,.Lfe9-MxCheck__DumpImportErrorList
	.align 16
	.type	 MxCheck__DumpMissingUnit,@function
MxCheck__DumpMissingUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
	jmp .L83
	.align 16
.L58:
	movl -4(%ebp),%edx
	movl 4(%edx),%esi
	pushl %esi
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,-8(%ebp)
	addl $4,%esp
	testl %esi,%esi
	jne .L61
	pushl $2612
	call _m3_fault
	.align 16
.L61:
	movl 80(%esi),%eax
	addl 72(%esi),%eax
	testl %eax,%eax
	jle .L65
	pushl $0
	pushl $0
	pushl $MM_MxCheck+496
	movl -8(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $20,%esp
	leal 68(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpVSList
	addl $12,%esp
	leal 76(%esi),%eax
	pushl %eax
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpVSList
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $16,%esp
.L65:
	movl 120(%esi),%ebx
	testl %ebx,%ebx
	je .L66
	pushl $0
	pushl $0
	pushl $MM_MxCheck+540
	movl -8(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $20,%esp
	jmp .L67
	.align 16
.L68:
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	movl %eax,%edi
	addl $8,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	addl $8,%esp
	pushl $MM_MxCheck+580
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebx),%al
	movl MM_MxCheck+348(,%eax,4),%eax
	pushl %eax
	pushl %edi
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $20,%esp
	movl 12(%ebx),%ebx
.L67:
	testl %ebx,%ebx
	jne .L68
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $4,%esp
.L66:
	testl %esi,%esi
	jne .L74
	pushl $2852
	call _m3_fault
	.align 16
.L74:
	movl 116(%esi),%ebx
	testl %ebx,%ebx
	je .L75
	pushl $0
	pushl $0
	pushl $MM_MxCheck+596
	movl -8(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $20,%esp
	jmp .L76
	.align 16
.L77:
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	pushl $0
	pushl $0
	pushl $MM_MxCheck+480
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $28,%esp
	movl (%ebx),%ebx
.L76:
	testl %ebx,%ebx
	jne .L77
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $4,%esp
.L75:
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpClients
	addl $8,%esp
	cmpl $0,-4(%ebp)
	jne .L81
	pushl $3012
	call _m3_fault
	.align 16
.L81:
	movl -4(%ebp),%edx
	movl 8(%edx),%edx
.L83:
	movl %edx,-4(%ebp)
	cmpl $0,-4(%ebp)
	jne .L58
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 MxCheck__DumpMissingUnit,.Lfe10-MxCheck__DumpMissingUnit
	.align 16
	.type	 MxCheck__DumpVSList,@function
MxCheck__DumpVSList:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%ebx
	leal -1(%eax),%edi
	jmp .L85
	.align 16
.L86:
	cmpl $0,12(%ebp)
	jne .L87
	pushl $3140
	call _m3_fault
	.align 16
.L87:
	movl 12(%ebp),%ecx
	movl 124(%ecx),%edx
	testl %edx,%edx
	jne .L88
	pushl $3140
	call _m3_fault
	.align 16
.L88:
	cmpl %ebx,4(%edx)
	ja .L89
	pushl $3138
	call _m3_fault
	.align 16
.L89:
	leal -16(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%esi
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $MM_MxCheck+480
	pushl %eax
	pushl $MM_MxCheck+636
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	incl %ebx
	addl $36,%esp
.L85:
	cmpl %edi,%ebx
	jle .L86
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 MxCheck__DumpVSList,.Lfe11-MxCheck__DumpVSList
	.align 16
	.type	 MxCheck__DumpClients,@function
MxCheck__DumpClients:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl (%eax),%edx
	testl %edx,%edx
	jne .L92
	pushl $3284
	call _m3_fault
	.align 16
.L92:
	testl %esi,%esi
	jne .L93
	pushl $3284
	call _m3_fault
	.align 16
.L93:
	movl (%esi),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L94
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxCheck+652
	je .L94
	pushl $3285
	call _m3_fault
	.align 16
.L94:
	pushl %edx
	movl MI_MxSet+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L91
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxCheck+660
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $20,%esp
	jmp .L96
	.align 16
.L97:
	movl (%ebx),%eax
	cmpl %esi,%eax
	je .L101
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxCheck+480
	movl %eax,%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $24,%esp
.L101:
	movl 4(%ebx),%ebx
.L96:
	testl %ebx,%ebx
	jne .L97
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
.L91:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 MxCheck__DumpClients,.Lfe12-MxCheck__DumpClients
	.align 16
	.type	 MxCheck__CheckMain,@function
MxCheck__CheckMain:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_MxCheck+688
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	addl $8,%esp
	movl (%eax),%eax
	testl %eax,%eax
	jne .L104
	pushl $3572
	call _m3_fault
	.align 16
.L104:
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L103
	pushl %eax
	pushl %eax
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxCheck+708
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
.L103:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 MxCheck__CheckMain,.Lfe13-MxCheck__CheckMain
	.align 16
	.type	 MxCheck__CheckStamps,@function
MxCheck__CheckStamps:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L107
	pushl $3796
	call _m3_fault
	.align 16
.L107:
	movl 16(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+56,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %eax,%eax
	jne .L108
	pushl $3812
	call _m3_fault
	.align 16
.L108:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L109
	.align 16
.L110:
	testl %edi,%edi
	jne .L111
	pushl $3828
	call _m3_fault
	.align 16
.L111:
	movl %edi,%eax
	cmpl %esi,4(%eax)
	ja .L112
	pushl $3826
	call _m3_fault
	.align 16
.L112:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	testl %ebx,%ebx
	je .L113
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L114
	pushl $3860
	call _m3_fault
	.align 16
.L114:
	pushl %ebx
	movl 20(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L113
	pushl $MM_MxCheck+744
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpStamp
	addl $12,%esp
.L113:
	incl %esi
.L109:
	cmpl %esi,-4(%ebp)
	jge .L110
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L117
	pushl $3972
	call _m3_fault
	.align 16
.L117:
	movl 20(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+56,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %eax,%eax
	jne .L118
	pushl $3988
	call _m3_fault
	.align 16
.L118:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-8(%ebp)
	jmp .L119
	.align 16
.L120:
	testl %edi,%edi
	jne .L121
	pushl $4004
	call _m3_fault
	.align 16
.L121:
	movl %edi,%eax
	cmpl %esi,4(%eax)
	ja .L122
	pushl $4002
	call _m3_fault
	.align 16
.L122:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	testl %ebx,%ebx
	je .L123
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L124
	pushl $4036
	call _m3_fault
	.align 16
.L124:
	pushl %ebx
	movl 16(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L123
	pushl $MM_MxCheck+796
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__DumpStamp
	addl $12,%esp
.L123:
	incl %esi
.L119:
	cmpl %esi,-8(%ebp)
	jge .L120
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 MxCheck__CheckStamps,.Lfe14-MxCheck__CheckStamps
	.align 16
	.type	 MxCheck__DumpStamp,@function
MxCheck__DumpStamp:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	leal -16(%ebp),%eax
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl %eax
	pushl %ebx
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxCheck+636
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	addl $32,%esp
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %esi
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	addl $28,%eax
	pushl %eax
	pushl %ebx
	movl MI_MxVS+48,%eax
	call *%eax
	addl $32,%esp
	movl MM_MxCheck+304,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ForEachUnit
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 MxCheck__DumpStamp,.Lfe15-MxCheck__DumpStamp
	.align 16
	.type	 MxCheck__DumpBadVS,@function
MxCheck__DumpBadVS:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L129
	pushl $4356
	call _m3_fault
	.align 16
.L129:
	movl 8(%ebp),%eax
	leal 28(%eax),%edx
	pushl %edx
	leal 68(%ebx),%edx
	pushl %edx
	pushl %ebx
	pushl %eax
	call MxCheck__DumpBadVStamps
	addl $16,%esp
	testl %eax,%eax
	jne .L128
	movl 8(%ebp),%eax
	leal 28(%eax),%edx
	pushl %edx
	leal 76(%ebx),%edx
	pushl %edx
	pushl %ebx
	pushl %eax
	call MxCheck__DumpBadVStamps
	addl $16,%esp
	testl %eax,%eax
	jne .L128
	movl 8(%ebp),%eax
	leal 28(%eax),%edx
	pushl %edx
	leal 52(%ebx),%edx
	pushl %edx
	pushl %ebx
	pushl %eax
	call MxCheck__DumpBadVStamps
	addl $16,%esp
	testl %eax,%eax
	jne .L128
	movl 8(%ebp),%eax
	leal 28(%eax),%edx
	pushl %edx
	leal 60(%ebx),%edx
	pushl %edx
	pushl %ebx
	pushl %eax
	call MxCheck__DumpBadVStamps
.L128:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 MxCheck__DumpBadVS,.Lfe16-MxCheck__DumpBadVS
	.align 16
	.type	 MxCheck__DumpBadVStamps,@function
MxCheck__DumpBadVStamps:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl 12(%ebp),%esi
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%ebx
	leal -1(%eax),%edi
	jmp .L136
	.align 16
.L137:
	testl %esi,%esi
	jne .L138
	pushl $4548
	call _m3_fault
	.align 16
.L138:
	movl 124(%esi),%eax
	testl %eax,%eax
	jne .L139
	pushl $4548
	call _m3_fault
	.align 16
.L139:
	cmpl %ebx,4(%eax)
	ja .L140
	pushl $4546
	call _m3_fault
	.align 16
.L140:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%edx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_MxVS+48,%eax
	call *%eax
	movl 20(%ebp),%edx
	movl -16(%ebp),%eax
	addl $8,%esp
	cmpl %eax,(%edx)
	jne .L141
	movl -12(%ebp),%eax
	cmpl %eax,4(%edx)
	jne .L141
	pushl %esi
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxCheck+480
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl $1,%eax
	jmp .L143
	.align 16
.L141:
	incl %ebx
.L136:
	cmpl %edi,%ebx
	jle .L137
	xorl %eax,%eax
.L143:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 MxCheck__DumpBadVStamps,.Lfe17-MxCheck__DumpBadVStamps
	.align 16
	.type	 MxCheck__CheckOpaques,@function
MxCheck__CheckOpaques:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	pushl $503
	movl MI_MxMap+44,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %eax,12(%edx)
	movl MM_MxCheck+316,%eax
	pushl %eax
	pushl %edx
	call MxCheck__ForEachUnit
	movl MM_MxCheck+320,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ForEachUnit
	movl 8(%ebp),%eax
	addl $20,%esp
	movl 16(%eax),%ebx
	jmp .L145
	.align 16
.L146:
	movl 12(%ebx),%esi
	testl %esi,%esi
	jne .L148
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L150
	pushl $4868
	call _m3_fault
	.align 16
.L150:
	movl 4(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	pushl %esi
	pushl %esi
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+848
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $32,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl %esi
	pushl %esi
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+892
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $28,%esp
.L148:
	testl %ebx,%ebx
	jne .L152
	pushl $4948
	call _m3_fault
	.align 16
.L152:
	movl (%ebx),%ebx
.L145:
	testl %ebx,%ebx
	jne .L146
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 MxCheck__CheckOpaques,.Lfe18-MxCheck__CheckOpaques
	.align 16
	.type	 MxCheck__NoteOpaques,@function
MxCheck__NoteOpaques:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	testl %edi,%edi
	jne .L155
	pushl $5060
	call _m3_fault
	.align 16
.L155:
	movl 108(%edi),%esi
	jmp .L156
	.align 16
.L157:
	movl 4(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L159
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxCheck+920
	je .L159
	pushl $5093
	call _m3_fault
	.align 16
.L159:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L160
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L162
	pushl $5124
	call _m3_fault
	.align 16
.L162:
	movl 4(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+928
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $32,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+968
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	pushl %edi
	movl MI_MxRep+148,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+996
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $24,%esp
	jmp .L164
	.align 16
.L160:
	movl MM_MxCheck+916,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ecx
	movl %esi,4(%edx)
	movl %edi,8(%edx)
	movl 8(%ebp),%eax
	movl %ecx,%ebx
	movl 16(%eax),%eax
	movl %eax,(%ecx)
	movl 8(%ebp),%ecx
	addl $4,%esp
	movl %edx,16(%ecx)
	testl %esi,%esi
	jne .L165
	pushl $5236
	call _m3_fault
	.align 16
.L165:
	pushl %ebx
	movl 4(%esi),%eax
	pushl %eax
	movl 12(%ecx),%eax
	pushl %eax
	movl MI_MxMap+164,%eax
	call *%eax
	addl $12,%esp
.L164:
	testl %esi,%esi
	jne .L166
	pushl $5268
	call _m3_fault
	.align 16
.L166:
	movl (%esi),%esi
.L156:
	testl %esi,%esi
	jne .L157
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 MxCheck__NoteOpaques,.Lfe19-MxCheck__NoteOpaques
	.align 16
	.type	 MxCheck__IdentifyOpaques,@function
MxCheck__IdentifyOpaques:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	testl %edi,%edi
	jne .L169
	pushl $5348
	call _m3_fault
	.align 16
.L169:
	movl 120(%edi),%ebx
	jmp .L170
	.align 16
.L171:
	cmpb $0,16(%ebx)
	jne .L176
	cmpb $0,17(%ebx)
	je .L176
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L178
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxCheck+920
	je .L178
	pushl $5445
	call _m3_fault
	.align 16
.L178:
	movl %edx,%esi
	testl %edx,%edx
	je .L179
	cmpl $0,12(%edx)
	je .L187
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L183
	pushl $5492
	call _m3_fault
	.align 16
.L183:
	movl 4(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+1024
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $32,%esp
	movl 8(%esi),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+968
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $28,%esp
	movl 16(%esi),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+1076
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	pushl %edi
	movl MI_MxRep+148,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+1104
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $24,%esp
	jmp .L176
	.align 16
.L187:
	movl %ebx,12(%edx)
	movl %edi,16(%edx)
	jmp .L176
	.align 16
.L179:
	testl %ebx,%ebx
	jne .L190
	pushl $5652
	call _m3_fault
	.align 16
.L190:
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__TName
	pushl %esi
	pushl %esi
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+1132
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $32,%esp
	pushl %edi
	movl MI_MxRep+148,%eax
	call *%eax
	pushl %esi
	pushl %esi
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxCheck+1076
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__Err
	movl 8(%ebp),%eax
	pushl %eax
	call MxCheck__ErrNL
	addl $28,%esp
.L176:
	testl %ebx,%ebx
	jne .L191
	pushl $5732
	call _m3_fault
	.align 16
.L191:
	movl 12(%ebx),%ebx
.L170:
	testl %ebx,%ebx
	jne .L171
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 MxCheck__IdentifyOpaques,.Lfe20-MxCheck__IdentifyOpaques
	.align 16
	.type	 MxCheck__ForEachUnit,@function
MxCheck__ForEachUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl (%eax),%eax
	testl %eax,%eax
	jne .L194
	pushl $5876
	call _m3_fault
	.align 16
.L194:
	movl (%eax),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,-28(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L195
	pushl $5892
	call _m3_fault
	.align 16
.L195:
	movl %ebx,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L196
	.align 16
.L197:
	cmpl $0,-28(%ebp)
	jne .L198
	pushl $5908
	call _m3_fault
	.align 16
.L198:
	movl -28(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L199
	pushl $5906
	call _m3_fault
	.align 16
.L199:
	movl (%eax),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L200
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxCheck+1200
	je .L200
	pushl $5909
	call _m3_fault
	.align 16
.L200:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L201
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L202
	cmpl $-1,(%edx)
	jne .L202
	movl 8(%edx),%edi
	movl %edi,-8(%ebp)
	movl 4(%edx),%edx
.L202:
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%ecx
	call *%edx
	addl $8,%esp
.L201:
	incl %esi
.L196:
	cmpl %esi,-4(%ebp)
	jge .L197
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L205
	pushl $5956
	call _m3_fault
	.align 16
.L205:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,-28(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L206
	pushl $5972
	call _m3_fault
	.align 16
.L206:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-12(%ebp)
	jmp .L207
	.align 16
.L208:
	cmpl $0,-28(%ebp)
	jne .L209
	pushl $5988
	call _m3_fault
	.align 16
.L209:
	movl -28(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L210
	pushl $5986
	call _m3_fault
	.align 16
.L210:
	movl (%eax),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L211
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxCheck+1200
	je .L211
	pushl $5989
	call _m3_fault
	.align 16
.L211:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L212
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L213
	cmpl $-1,(%edx)
	jne .L213
	movl 8(%edx),%edi
	movl %edi,-16(%ebp)
	movl 4(%edx),%edx
.L213:
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%ecx
	call *%edx
	addl $8,%esp
.L212:
	incl %esi
.L207:
	cmpl %esi,-12(%ebp)
	jge .L208
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L216
	pushl $6036
	call _m3_fault
	.align 16
.L216:
	movl 8(%eax),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,-28(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L217
	pushl $6052
	call _m3_fault
	.align 16
.L217:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-20(%ebp)
	jmp .L218
	.align 16
.L219:
	cmpl $0,-28(%ebp)
	jne .L220
	pushl $6068
	call _m3_fault
	.align 16
.L220:
	movl -28(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L221
	pushl $6066
	call _m3_fault
	.align 16
.L221:
	movl (%eax),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L222
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxCheck+1200
	je .L222
	pushl $6069
	call _m3_fault
	.align 16
.L222:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L223
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L224
	cmpl $-1,(%edx)
	jne .L224
	movl 8(%edx),%edi
	movl %edi,-24(%ebp)
	movl 4(%edx),%edx
.L224:
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	call *%edx
	addl $8,%esp
.L223:
	incl %esi
.L218:
	cmpl %esi,-20(%ebp)
	jge .L219
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 MxCheck__ForEachUnit,.Lfe21-MxCheck__ForEachUnit
	.align 16
	.type	 MxCheck__TName,@function
MxCheck__TName:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	pushl $16
	pushl %eax
	movl MI_Fmt+56,%eax
	call *%eax
	pushl %eax
	pushl $MM_MxCheck+1208
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 MxCheck__TName,.Lfe22-MxCheck__TName
	.align 16
	.type	 MxCheck__Err,@function
MxCheck__Err:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
.L229:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movb $1,8(%eax)
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	je .L240
	xorl %ebx,%ebx
	testl %esi,%esi
	je .L231
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
.L231:
	testl %edi,%edi
	je .L232
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	addl %eax,%ebx
	addl $4,%esp
.L232:
	cmpl $0,20(%ebp)
	je .L233
	movl 20(%ebp),%ecx
	pushl %ecx
	movl MI_Text+56,%eax
	call *%eax
	addl %eax,%ebx
	addl $4,%esp
.L233:
	cmpl $0,24(%ebp)
	je .L234
	movl 24(%ebp),%ecx
	pushl %ecx
	movl MI_Text+56,%eax
	call *%eax
	addl %eax,%ebx
	addl $4,%esp
.L234:
	movl 8(%ebp),%edx
	movl 24(%edx),%eax
	addl %ebx,%eax
	cmpl $78,%eax
	jle .L235
	movl MI_Wr+60,%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	pushl $MM_MxCheck+580
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	movl 8(%ebp),%eax
	addl $16,%esp
	movl $3,24(%eax)
.L235:
	testl %esi,%esi
	je .L236
	pushl %esi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L236:
	testl %edi,%edi
	je .L237
	pushl %edi
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L237:
	cmpl $0,20(%ebp)
	je .L238
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L238:
	cmpl $0,24(%ebp)
	je .L239
	movl 24(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
.L239:
	movl 8(%ebp),%eax
	addl %ebx,24(%eax)
.L240:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 MxCheck__Err,.Lfe23-MxCheck__Err
	.align 16
	.type	 MxCheck__ErrNL,@function
MxCheck__ErrNL:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L242:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl 8(%ebp),%eax
	movl %ebx,RTThread__handlerStack
	movl 4(%eax),%ecx
	testl %ecx,%ecx
	jne .L243
	movl %edx,RTThread__handlerStack
	jmp .L241
	.align 16
.L243:
	cmpl $0,24(%eax)
	jle .L245
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	movl MI_Wr+68,%eax
	call *%eax
	movl 8(%ebp),%eax
	movl $0,24(%eax)
.L245:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L241:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 MxCheck__ErrNL,.Lfe24-MxCheck__ErrNL
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxCheck
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe25:
	.size	 _m3_fault,.Lfe25-_m3_fault
.globl MM_MxCheck
.data
	.align 4
	.type	 MM_MxCheck,@object
	.size	 MM_MxCheck,2044
MM_MxCheck:
	.long MM_MxCheck+1804
	.long MM_MxCheck+44
	.long MM_MxCheck+392
	.zero	8
	.long MM_MxCheck+1512
	.zero	28
	.long 806557552
.byte 0
.byte 193
.byte 56
.byte 44
.byte 112
.byte 214
.byte 43
.byte 28
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_MxCheck+1987
	.long MM_MxCheck+1993
	.long MM_MxCheck+1999
	.zero	28
	.long MM_MxCheck+2023
	.long MM_MxCheck+148
	.zero	8
	.long 1099373747
.byte 144
.byte 204
.byte 56
.byte 65
.byte 35
.byte 208
.byte 191
.byte 0
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_MxCheck+1943
	.long MM_MxCheck+1947
	.long MM_MxCheck+1951
	.zero	28
	.long MM_MxCheck+1967
	.zero	4
	.long MxCheck__InitState
	.long MxCheck__CheckUnits
	.long MxCheck__CheckVirtualUnit
	.long MxCheck__CheckUnitImports
	.long MxCheck__CheckUnitList
	.long MxCheck__DumpImportErrors
	.long MxCheck__DumpImportErrorList
	.long MxCheck__DumpMissingUnit
	.long MxCheck__DumpVSList
	.long MxCheck__DumpClients
	.long MxCheck__CheckMain
	.long MxCheck__CheckStamps
	.long MxCheck__DumpStamp
	.long MxCheck__DumpBadVS
	.long MxCheck__DumpBadVStamps
	.long MxCheck__CheckOpaques
	.long MxCheck__NoteOpaques
	.long MxCheck__IdentifyOpaques
	.long MxCheck__ForEachUnit
	.long MxCheck__TName
	.long MxCheck__Err
	.long MxCheck__ErrNL
	.long MxCheck__IsProgram
	.long MxCheck__IsLibrary
	.long MM_MxCheck+360
	.long MM_MxCheck+376
	.long 2
	.long MM_MxCheck+368
	.long 4
	.ascii	" = "
	.zero	1
	.long 2
	.long MM_MxCheck+384
	.long 5
	.ascii	" <: "
	.zero	4
	.long MM_MxCheck+648
	.long 1099373747
	.long 2
	.long MM_MxCheck+412
	.long 29
	.ascii	"missing compiled interface \""
	.zero	4
	.long 2
	.long MM_MxCheck+456
	.long 20
	.ascii	".io\" imported by:  "
	.zero	1
	.long 2
	.long MM_MxCheck+488
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_MxCheck+504
	.long 30
	.ascii	": missing exported symbols:  "
	.zero	3
	.long 2
	.long MM_MxCheck+548
	.long 25
	.ascii	": missing revelations:  "
	.zero	4
	.long 2
	.long MM_MxCheck+588
	.long 4
	.ascii	"   "
	.zero	1
	.long 2
	.long MM_MxCheck+604
	.long 26
	.ascii	": missing object types:  "
	.zero	3
	.long 2
	.long MM_MxCheck+644
	.long 2
	.ascii	"."
	.zero	3
	.long MM_MxCheck+916
	.long 1109077765
	.long 2
	.long MM_MxCheck+668
	.long 15
	.ascii	"imported by:  "
	.zero	2
	.long 2
	.long MM_MxCheck+696
	.long 5
	.ascii	"Main"
	.zero	4
	.long 2
	.long MM_MxCheck+716
	.long 22
	.ascii	"missing \"Main\" module"
	.zero	3
	.long 2
	.long MM_MxCheck+752
	.long 38
	.ascii	": is exported, but not implemented:  "
	.zero	3
	.long 2
	.long MM_MxCheck+804
	.long 38
	.ascii	": is implemented, but not exported:  "
	.zero	3
	.long 2
	.long MM_MxCheck+856
	.long 29
	.ascii	"opaque type never revealed: "
	.zero	4
	.long 2
	.long MM_MxCheck+900
	.long 14
	.ascii	"  defined in "
	.zero	3
	.long MM_MxCheck+1196
	.long 806557552
	.long 2
	.long MM_MxCheck+936
	.long 28
	.ascii	"opaque type defined twice: "
	.zero	1
	.long 2
	.long MM_MxCheck+976
	.long 15
	.ascii	"  defined in  "
	.zero	2
	.long 2
	.long MM_MxCheck+1004
	.long 15
	.ascii	"  and also    "
	.zero	2
	.long 2
	.long MM_MxCheck+1032
	.long 40
	.ascii	"multiple revelations for opaque type:  "
	.zero	1
	.long 2
	.long MM_MxCheck+1084
	.long 15
	.ascii	"  revealed in "
	.zero	2
	.long 2
	.long MM_MxCheck+1112
	.long 15
	.ascii	"  and also in "
	.zero	2
	.long 2
	.long MM_MxCheck+1140
	.long 55
	.ascii	"revelation without matching opaque type declaration:  "
	.zero	6
	.long 880986034
	.long 2
	.long MM_MxCheck+1216
	.long 3
	.ascii	"_t"
	.zero	2
	.ascii	"ErrNL"
	.zero	1
	.ascii	"Err"
	.zero	1
	.ascii	"TName"
	.zero	1
	.ascii	"ForEachUnit"
	.zero	1
	.ascii	"IdentifyOpaques"
	.zero	1
	.ascii	"NoteOpaques"
	.zero	1
	.ascii	"CheckOpaques"
	.zero	1
	.ascii	"DumpBadVStamps"
	.zero	1
	.ascii	"DumpBadVS"
	.zero	1
	.ascii	"DumpStamp"
	.zero	1
	.ascii	"CheckStamps"
	.zero	1
	.ascii	"CheckMain"
	.zero	1
	.ascii	"DumpClients"
	.zero	1
	.ascii	"DumpVSList"
	.zero	1
	.ascii	"DumpMissingUnit"
	.zero	1
	.ascii	"DumpImportErrorList"
	.zero	1
	.ascii	"DumpImportErrors"
	.zero	1
	.ascii	"CheckUnitList"
	.zero	1
	.ascii	"CheckUnitImports"
	.zero	1
	.ascii	"CheckVirtualUnit"
	.zero	1
	.ascii	"CheckUnits"
	.zero	1
	.ascii	"InitState"
	.zero	1
	.ascii	"IsLibrary"
	.zero	1
	.ascii	"IsProgram"
	.zero	2
	.long MxCheck__ErrNL
	.long MM_MxCheck+1220
	.zero	4
	.long MxCheck__Err
	.long MM_MxCheck+1226
	.zero	4
	.long MxCheck__TName
	.long MM_MxCheck+1230
	.zero	4
	.long MxCheck__ForEachUnit
	.long MM_MxCheck+1236
	.zero	4
	.long MxCheck__IdentifyOpaques
	.long MM_MxCheck+1248
	.zero	4
	.long MxCheck__NoteOpaques
	.long MM_MxCheck+1264
	.zero	4
	.long MxCheck__CheckOpaques
	.long MM_MxCheck+1276
	.zero	4
	.long MxCheck__DumpBadVStamps
	.long MM_MxCheck+1289
	.zero	4
	.long MxCheck__DumpBadVS
	.long MM_MxCheck+1304
	.zero	4
	.long MxCheck__DumpStamp
	.long MM_MxCheck+1314
	.zero	4
	.long MxCheck__CheckStamps
	.long MM_MxCheck+1324
	.zero	4
	.long MxCheck__CheckMain
	.long MM_MxCheck+1336
	.zero	4
	.long MxCheck__DumpClients
	.long MM_MxCheck+1346
	.zero	4
	.long MxCheck__DumpVSList
	.long MM_MxCheck+1358
	.zero	4
	.long MxCheck__DumpMissingUnit
	.long MM_MxCheck+1369
	.zero	4
	.long MxCheck__DumpImportErrorList
	.long MM_MxCheck+1385
	.zero	4
	.long MxCheck__DumpImportErrors
	.long MM_MxCheck+1405
	.zero	4
	.long MxCheck__CheckUnitList
	.long MM_MxCheck+1422
	.zero	4
	.long MxCheck__CheckUnitImports
	.long MM_MxCheck+1436
	.zero	4
	.long MxCheck__CheckVirtualUnit
	.long MM_MxCheck+1453
	.zero	4
	.long MxCheck__CheckUnits
	.long MM_MxCheck+1470
	.zero	4
	.long MxCheck__InitState
	.long MM_MxCheck+1481
	.zero	4
	.long MxCheck__IsLibrary
	.long MM_MxCheck+1491
	.long MI_MxCheck+48
	.long MxCheck__IsProgram
	.long MM_MxCheck+1501
	.long MI_MxCheck+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxCheck.m3"
	.zero	1
.byte 14
.byte 4
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 19
.byte 254
.byte 126
.byte 16
.byte 178
.byte 199
.byte 130
.byte 52
.byte 16
.byte 179
.byte 28
.byte 135
.byte 65
	.ascii	"MxCheck.ImportError"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 6
.byte 15
.byte 5
.byte 16
.byte 112
.byte 23
.byte 19
.byte 48
.byte 16
.byte 150
.byte 82
.byte 105
.byte 48
.byte 16
.byte 178
.byte 199
.byte 130
.byte 52
.byte 16
.byte 96
.byte 22
.byte 162
.byte 216
.byte 25
	.ascii	"MxCheck.OpaqueInfo"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
