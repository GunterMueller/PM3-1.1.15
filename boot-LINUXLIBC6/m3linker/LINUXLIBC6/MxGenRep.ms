	.file	"MxGenRep.mc"
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
	.type	 MxGenRep__CheckOpaques,@function
MxGenRep__CheckOpaques:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MM_MxGenRep+200,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%eax
	pushl $0
	pushl %edx
	call *%eax
	movl %eax,36(%edi)
	movl MM_MxGenRep+148,%eax
	pushl %eax
	pushl %edi
	call MxGenRep__ForEachUnit
	movl MM_MxGenRep+152,%eax
	pushl %eax
	pushl %edi
	call MxGenRep__ForEachUnit
	movl 40(%edi),%ebx
	addl $28,%esp
	jmp .L2
	.align 16
.L3:
	movl 12(%ebx),%esi
	testl %esi,%esi
	jne .L5
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L7
	pushl $548
	call _m3_fault
	.align 16
.L7:
	movl 4(%eax),%eax
	pushl %eax
	call MxGenRep__TName
	movl %eax,%edx
	pushl %esi
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl $MM_MxGenRep+212
	pushl %edi
	call MxGenRep__Err
	addl $24,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl %esi
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl $MM_MxGenRep+256
	pushl %edi
	call MxGenRep__Err
	addl $24,%esp
.L5:
	testl %ebx,%ebx
	jne .L9
	pushl $596
	call _m3_fault
	.align 16
.L9:
	movl (%ebx),%ebx
.L2:
	testl %ebx,%ebx
	jne .L3
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxGenRep__CheckOpaques,.Lfe1-MxGenRep__CheckOpaques
	.align 16
	.type	 MxGenRep__NoteOpaques,@function
MxGenRep__NoteOpaques:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	cmpl $0,12(%ebp)
	jne .L12
	pushl $708
	call _m3_fault
	.align 16
.L12:
	movl 12(%ebp),%ebx
	movl 108(%ebx),%esi
	jmp .L13
	.align 16
.L14:
	movl 36(%edi),%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	movl 4(%esi),%eax
	movl %eax,-8(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	je .L16
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L17
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxGenRep+284
	je .L17
	pushl $757
	call _m3_fault
	.align 16
.L17:
	movl -4(%ebp),%ebx
	movl %ebx,-20(%ebp)
	testl %ebx,%ebx
	jne .L18
	pushl $772
	call _m3_fault
	.align 16
.L18:
	movl -20(%ebp),%ebx
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L19
	pushl $772
	call _m3_fault
	.align 16
.L19:
	movl 4(%eax),%eax
	pushl %eax
	call MxGenRep__TName
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+292
	pushl %edi
	call MxGenRep__Err
	movl -20(%ebp),%ebx
	addl $24,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+332
	pushl %edi
	call MxGenRep__Err
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+360
	pushl %edi
	call MxGenRep__Err
	addl $48,%esp
	jmp .L21
	.align 16
.L16:
	movl MM_MxGenRep+280,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%esp
	movl %esi,4(%ecx)
	movl 12(%ebp),%ebx
	movl %ebx,8(%ecx)
	movl 40(%edi),%eax
	movl %eax,(%ecx)
	movl %ecx,-20(%ebp)
	movl 36(%edi),%edx
	movl %ecx,40(%edi)
	movl (%edx),%eax
	movl -20(%ebp),%ebx
	movl 8(%eax),%ecx
	movl 4(%esi),%eax
	movl %eax,-12(%ebp)
	movl %ebx,-16(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	incl 32(%edi)
	addl $12,%esp
.L21:
	testl %esi,%esi
	jne .L23
	pushl $916
	call _m3_fault
	.align 16
.L23:
	movl (%esi),%esi
.L13:
	testl %esi,%esi
	jne .L14
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxGenRep__NoteOpaques,.Lfe2-MxGenRep__NoteOpaques
	.align 16
	.type	 MxGenRep__IdentifyOpaques,@function
MxGenRep__IdentifyOpaques:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	cmpl $0,12(%ebp)
	jne .L26
	pushl $996
	call _m3_fault
	.align 16
.L26:
	movl 12(%ebp),%edx
	movl 120(%edx),%esi
	jmp .L27
	.align 16
.L28:
	cmpb $0,16(%esi)
	jne .L33
	cmpb $0,17(%esi)
	je .L33
	movl 36(%edi),%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	movl 4(%esi),%eax
	movl %eax,-8(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L46
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L36
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxGenRep+284
	je .L36
	pushl $1093
	call _m3_fault
	.align 16
.L36:
	movl -4(%ebp),%ebx
	testl %ebx,%ebx
	jne .L37
	pushl $1108
	call _m3_fault
	.align 16
.L37:
	cmpl $0,12(%ebx)
	je .L44
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L40
	pushl $1124
	call _m3_fault
	.align 16
.L40:
	movl 4(%eax),%eax
	pushl %eax
	call MxGenRep__TName
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+388
	pushl %edi
	call MxGenRep__Err
	addl $24,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+332
	pushl %edi
	call MxGenRep__Err
	addl $24,%esp
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+440
	pushl %edi
	call MxGenRep__Err
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%ecx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+468
	jmp .L49
	.align 16
.L44:
	movl %ebx,%ecx
	movl %esi,12(%ecx)
	movl 12(%ebp),%edx
	movl %edx,16(%ecx)
	jmp .L33
	.align 16
.L46:
	movl 4(%esi),%eax
	pushl %eax
	call MxGenRep__TName
	movl %eax,%ecx
	pushl %ebx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+496
	pushl %edi
	call MxGenRep__Err
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%ecx
	pushl %ebx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ecx
	pushl $MM_MxGenRep+440
.L49:
	pushl %edi
	call MxGenRep__Err
	addl $48,%esp
.L33:
	testl %esi,%esi
	jne .L47
	pushl $1348
	call _m3_fault
	.align 16
.L47:
	movl 12(%esi),%esi
.L27:
	testl %esi,%esi
	jne .L28
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxGenRep__IdentifyOpaques,.Lfe3-MxGenRep__IdentifyOpaques
	.align 16
	.type	 MxGenRep__FindBuiltins,@function
MxGenRep__FindBuiltins:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %edi,%ebx
	xorl %esi,%esi
	movl %esi,48(%ebx)
	pushl %esi
	pushl $MM_MxGenRep+564
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,44(%ebx)
	movl 4(%ebx),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L51
	pushl $1524
	call _m3_fault
	.align 16
.L51:
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L52
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxGenRep+588
	je .L52
	pushl $1525
	call _m3_fault
	.align 16
.L52:
	movl %ebx,%esi
	testl %ebx,%ebx
	jne .L53
	pushl %ebx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxGenRep+564
	pushl $MM_MxGenRep+596
	pushl %edi
	call MxGenRep__Err
.L53:
	leal -12(%ebp),%esp
	movl %esi,48(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxGenRep__FindBuiltins,.Lfe4-MxGenRep__FindBuiltins
	.align 16
	.type	 MxGenRep__SortUnits__CmpUnit.0,@function
MxGenRep__SortUnits__CmpUnit.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%ebx
	movl -4(%ebp),%eax
	movl 12(%ebp),%esi
	movl -4(%eax),%eax
	testl %eax,%eax
	jne .L56
	pushl $1812
	call _m3_fault
	.align 16
.L56:
	movl 4(%eax),%ecx
	cmpl %ecx,%ebx
	jb .L57
	pushl $1810
	call _m3_fault
	.align 16
.L57:
	movl (%eax),%edx
	movl (%edx,%ebx,4),%eax
	testl %eax,%eax
	jne .L58
	pushl $1812
	call _m3_fault
	.align 16
.L58:
	movl (%eax),%eax
	testl %eax,%eax
	jne .L59
	pushl $1812
	call _m3_fault
	.align 16
.L59:
	movl (%eax),%ebx
	cmpl %ecx,%esi
	jb .L61
	pushl $1810
	call _m3_fault
	.align 16
.L61:
	movl (%edx,%esi,4),%eax
	testl %eax,%eax
	jne .L62
	pushl $1812
	call _m3_fault
	.align 16
.L62:
	movl (%eax),%eax
	testl %eax,%eax
	jne .L63
	pushl $1812
	call _m3_fault
	.align 16
.L63:
	movl (%eax),%eax
	cmpl %eax,%ebx
	jne .L64
	xorl %eax,%eax
	jmp .L66
	.align 16
.L64:
	pushl %eax
	pushl %ebx
	movl MI_M3ID+76,%eax
	call *%eax
	testl %eax,%eax
	jne .L65
	movl $1,%eax
	jmp .L66
	.align 16
.L65:
	movl $-1,%eax
.L66:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxGenRep__SortUnits__CmpUnit.0,.Lfe5-MxGenRep__SortUnits__CmpUnit.0
	.align 16
	.type	 MxGenRep__SortUnits,@function
MxGenRep__SortUnits:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	leal -8(%ebp),%ecx
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-4(%ebp)
	movl %ebx,%esi
	leal -16(%ebp),%ebx
	movl %ecx,-16(%ebp)
	movl $1,-12(%ebp)
	movl 12(%ebp),%ecx
	movl %ecx,-8(%ebp)
	pushl %ebx
	movl MM_MxGenRep+628,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-4(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl $1,-12(%ebp)
	movl 12(%ebp),%ecx
	movl %ecx,-8(%ebp)
	pushl %ebx
	movl MM_MxGenRep+636,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl 8(%ebp),%ebx
	addl $16,%esp
	jmp .L67
	.align 16
.L68:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L69
	pushl $1988
	call _m3_fault
	.align 16
.L69:
	cmpl %esi,4(%eax)
	ja .L70
	pushl $1986
	call _m3_fault
	.align 16
.L70:
	leal 0(,%esi,4),%ecx
	movl %ecx,-20(%ebp)
	movl %ecx,%edx
	addl (%eax),%edx
	movl %ebx,(%edx)
	testl %edi,%edi
	jne .L71
	pushl $2004
	call _m3_fault
	.align 16
.L71:
	movl %edi,%edx
	cmpl %esi,4(%edx)
	ja .L72
	pushl $2002
	call _m3_fault
	.align 16
.L72:
	movl (%edx),%eax
	movl -20(%ebp),%ecx
	movl %esi,(%eax,%ecx)
	incl %esi
	movl 4(%ebx),%ebx
.L67:
	testl %ebx,%ebx
	jne .L68
	cmpl %esi,12(%ebp)
	je .L75
	pushl $2064
	call _m3_fault
	.align 16
.L75:
	testl %edi,%edi
	jne .L76
	pushl $2100
	call _m3_fault
	.align 16
.L76:
	movl $MxGenRep__SortUnits__CmpUnit.0,-12(%ebp)
	movl $-1,-16(%ebp)
	movl %ebp,-8(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_IntArraySort+44,%eax
	call *%eax
	movl 12(%ebp),%esi
	decl %esi
	addl $8,%esp
	jmp .L77
	.align 16
.L78:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L79
	pushl $2180
	call _m3_fault
	.align 16
.L79:
	movl %eax,%edx
	testl %edi,%edi
	jne .L80
	pushl $2180
	call _m3_fault
	.align 16
.L80:
	movl %edi,%eax
	cmpl %esi,4(%eax)
	ja .L81
	pushl $2178
	call _m3_fault
	.align 16
.L81:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	movl %eax,-20(%ebp)
	cmpl %eax,4(%edx)
	ja .L82
	pushl $2178
	call _m3_fault
	.align 16
.L82:
	movl (%edx),%eax
	movl -20(%ebp),%ecx
	movl (%eax,%ecx,4),%eax
	testl %eax,%eax
	jne .L83
	pushl $2196
	call _m3_fault
	.align 16
.L83:
	movl %ebx,4(%eax)
	movl %eax,%ebx
	decl %esi
.L77:
	testl %esi,%esi
	jge .L78
	leal -32(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxGenRep__SortUnits,.Lfe6-MxGenRep__SortUnits
	.align 16
	.type	 MxGenRep__FindUnit,@function
MxGenRep__FindUnit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%ecx
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L86
	pushl $2372
	call _m3_fault
	.align 16
.L86:
	movl (%ecx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_MxMap+156,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jl .L87
	testl %ebx,%ebx
	jne .L88
	pushl $2388
	call _m3_fault
	.align 16
.L88:
	movl 4(%ebx),%ecx
	leal -1(%ecx),%eax
	cmpl %edx,%eax
	jl .L87
	cmpl %ecx,%edx
	jb .L90
	pushl $2402
	call _m3_fault
	.align 16
.L90:
	movl (%ebx),%eax
	movl (%eax,%edx,4),%eax
	jmp .L91
	.align 16
.L87:
	xorl %eax,%eax
.L91:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 MxGenRep__FindUnit,.Lfe7-MxGenRep__FindUnit
	.align 16
	.type	 MxGenRep__ForEachUnit,@function
MxGenRep__ForEachUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L93
	pushl $2564
	call _m3_fault
	.align 16
.L93:
	movl (%eax),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,-20(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L94
	pushl $2580
	call _m3_fault
	.align 16
.L94:
	movl %ebx,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L95
	.align 16
.L96:
	cmpl $0,-20(%ebp)
	jne .L97
	pushl $2596
	call _m3_fault
	.align 16
.L97:
	movl -20(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L98
	pushl $2594
	call _m3_fault
	.align 16
.L98:
	movl (%eax),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L99
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxGenRep+588
	je .L99
	pushl $2597
	call _m3_fault
	.align 16
.L99:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L100
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L101
	cmpl $-1,(%edx)
	jne .L101
	movl 8(%edx),%edi
	movl %edi,-8(%ebp)
	movl 4(%edx),%edx
.L101:
	pushl %ebx
	movl 8(%ebp),%edi
	pushl %edi
	movl -8(%ebp),%ecx
	call *%edx
	addl $8,%esp
.L100:
	incl %esi
.L95:
	cmpl %esi,-4(%ebp)
	jge .L96
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L104
	pushl $2644
	call _m3_fault
	.align 16
.L104:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,-20(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L105
	pushl $2660
	call _m3_fault
	.align 16
.L105:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-12(%ebp)
	jmp .L106
	.align 16
.L107:
	cmpl $0,-20(%ebp)
	jne .L108
	pushl $2676
	call _m3_fault
	.align 16
.L108:
	movl -20(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L109
	pushl $2674
	call _m3_fault
	.align 16
.L109:
	movl (%eax),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L110
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxGenRep+588
	je .L110
	pushl $2677
	call _m3_fault
	.align 16
.L110:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L111
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L112
	cmpl $-1,(%edx)
	jne .L112
	movl 8(%edx),%edi
	movl %edi,-16(%ebp)
	movl 4(%edx),%edx
.L112:
	pushl %ebx
	movl 8(%ebp),%edi
	pushl %edi
	movl -16(%ebp),%ecx
	call *%edx
	addl $8,%esp
.L111:
	incl %esi
.L106:
	cmpl %esi,-12(%ebp)
	jge .L107
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 MxGenRep__ForEachUnit,.Lfe8-MxGenRep__ForEachUnit
	.align 16
	.type	 MxGenRep__TName,@function
MxGenRep__TName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $16
	pushl %eax
	movl MI_Fmt+56,%eax
	call *%eax
	pushl %eax
	pushl $MM_MxGenRep+648
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 MxGenRep__TName,.Lfe9-MxGenRep__TName
	.align 16
	.type	 MxGenRep__Err,@function
MxGenRep__Err:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
.L117:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movb $1,16(%ebx)
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L123
	testl %edx,%edx
	je .L119
	pushl %edx
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L119:
	testl %esi,%esi
	je .L120
	pushl %esi
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L120:
	testl %edi,%edi
	je .L121
	pushl %edi
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L121:
	cmpl $0,24(%ebp)
	je .L123
	movl 24(%ebp),%ecx
	pushl %ecx
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
.L123:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 MxGenRep__Err,.Lfe10-MxGenRep__Err
	.align 16
	.type	 MxGenRep__Out,@function
MxGenRep__Out:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
.L125:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %edx,%edx
	je .L126
	pushl %edx
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L126:
	testl %esi,%esi
	je .L127
	pushl %esi
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L127:
	testl %edi,%edi
	je .L128
	pushl %edi
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L128:
	cmpl $0,24(%ebp)
	je .L130
	movl 24(%ebp),%ecx
	pushl %ecx
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
.L130:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 MxGenRep__Out,.Lfe11-MxGenRep__Out
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxGenRep
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_MxGenRep
.data
	.align 4
	.type	 MM_MxGenRep,@object
	.size	 MM_MxGenRep,1092
MM_MxGenRep:
	.long MM_MxGenRep+916
	.long MM_MxGenRep+44
	.long MM_MxGenRep+200
	.long MM_MxGenRep+188
	.zero	4
	.long MM_MxGenRep+780
	.zero	28
	.long 1028143003
.byte 69
.byte 228
.byte 9
.byte 42
.byte 222
.byte 211
.byte 65
.byte 23
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_MxGenRep+1056
	.zero	8
	.long -1712608335
	.zero	12
	.long MM_MxGenRep+1059
	.long MM_MxGenRep+1075
	.zero	4
	.long MxGenRep__NoteOpaques
	.long MxGenRep__IdentifyOpaques
	.long MxGenRep__TName
	.long MxGenRep__CheckOpaques
	.long MxGenRep__FindBuiltins
	.long MxGenRep__FindUnit
	.long MxGenRep__ForEachUnit
	.long MxGenRep__Err
	.long MxGenRep__Out
	.long MxGenRep__SortUnits
	.long -312833500
	.long 1028143003
	.zero	4
	.long MM_MxGenRep+280
	.long 1969248738
	.long 2
	.long MM_MxGenRep+220
	.long 29
	.ascii	"opaque type never revealed: "
	.zero	4
	.long 2
	.long MM_MxGenRep+264
	.long 14
	.ascii	"  defined in "
	.zero	3
	.long MM_MxGenRep+584
	.long 806557552
	.long 2
	.long MM_MxGenRep+300
	.long 28
	.ascii	"opaque type defined twice: "
	.zero	1
	.long 2
	.long MM_MxGenRep+340
	.long 15
	.ascii	"  defined in  "
	.zero	2
	.long 2
	.long MM_MxGenRep+368
	.long 15
	.ascii	"  and also    "
	.zero	2
	.long 2
	.long MM_MxGenRep+396
	.long 40
	.ascii	"multiple revelations for opaque type:  "
	.zero	1
	.long 2
	.long MM_MxGenRep+448
	.long 15
	.ascii	"  revealed in "
	.zero	2
	.long 2
	.long MM_MxGenRep+476
	.long 15
	.ascii	"  and also in "
	.zero	2
	.long 2
	.long MM_MxGenRep+504
	.long 55
	.ascii	"revelation without matching opaque type declaration:  "
	.zero	2
	.long 2
	.long MM_MxGenRep+572
	.long 11
	.ascii	"M3_BUILTIN"
	.zero	2
	.long MM_MxGenRep+628
	.long 880986034
	.long 2
	.long MM_MxGenRep+604
	.long 23
	.ascii	"builtins are missing: "
	.zero	2
	.long MM_MxGenRep+636
	.long -1078442736
	.zero	4
	.long 562018850
	.long 2
	.long MM_MxGenRep+656
	.long 3
	.ascii	"_t"
	.zero	2
	.ascii	"Out"
	.zero	1
	.ascii	"Err"
	.zero	1
	.ascii	"TName"
	.zero	1
	.ascii	"ForEachUnit"
	.zero	1
	.ascii	"FindUnit"
	.zero	1
	.ascii	"SortUnits"
	.zero	1
	.ascii	"SortUnits.CmpUnit"
	.zero	1
	.ascii	"FindBuiltins"
	.zero	1
	.ascii	"IdentifyOpaques"
	.zero	1
	.ascii	"NoteOpaques"
	.zero	1
	.ascii	"CheckOpaques"
	.zero	4
	.long MxGenRep__Out
	.long MM_MxGenRep+660
	.long MI_MxGenRep+592
	.long MxGenRep__Err
	.long MM_MxGenRep+664
	.long MI_MxGenRep+588
	.long MxGenRep__TName
	.long MM_MxGenRep+668
	.zero	4
	.long MxGenRep__ForEachUnit
	.long MM_MxGenRep+674
	.long MI_MxGenRep+584
	.long MxGenRep__FindUnit
	.long MM_MxGenRep+686
	.long MI_MxGenRep+580
	.long MxGenRep__SortUnits
	.long MM_MxGenRep+695
	.long MI_MxGenRep+596
	.long MxGenRep__SortUnits__CmpUnit.0
	.long MM_MxGenRep+705
	.zero	4
	.long MxGenRep__FindBuiltins
	.long MM_MxGenRep+723
	.long MI_MxGenRep+472
	.long MxGenRep__IdentifyOpaques
	.long MM_MxGenRep+736
	.zero	4
	.long MxGenRep__NoteOpaques
	.long MM_MxGenRep+752
	.zero	4
	.long MxGenRep__CheckOpaques
	.long MM_MxGenRep+764
	.long MI_MxGenRep+468
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxGenRep.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"MxGenRep.Common"
	.zero	1
	.ascii	"MxGenRep.Common"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
