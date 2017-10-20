	.file	"Main.mc"
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
	.type	 Main__Out,@function
Main__Out:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MI_Stdio+48,%ebx
	testl %edx,%edx
	je .L3
	pushl %edx
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L3:
	testl %esi,%esi
	je .L4
	pushl %esi
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L4:
	testl %edi,%edi
	je .L5
	pushl %edi
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L5:
	cmpl $0,20(%ebp)
	je .L7
	movl 20(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
.L7:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Main__Out,.Lfe1-Main__Out
	.align 16
	.type	 Main__Err,@function
Main__Err:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl $MM_Main+388
	pushl %eax
	pushl %edx
	pushl $MM_Main+364
	call Main__Out
	pushl $1
	movl MI_Process+156,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Main__Err,.Lfe2-Main__Err
	.align 16
	.type	 Main__PrintUsage,@function
Main__PrintUsage:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+404
	call Main__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+452
	call Main__Out
	addl $32,%esp
	pushl $0
	movl $MM_Main+564,%ebx
	pushl %ebx
	movl MM_Main+160,%eax
	pushl %eax
	movl $MM_Main+524,%esi
	pushl %esi
	call Main__Out
	pushl $0
	pushl %ebx
	movl MM_Main+164,%eax
	pushl %eax
	pushl $MM_Main+580
	call Main__Out
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+644
	call Main__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+704
	call Main__Out
	addl $32,%esp
	pushl $0
	pushl %ebx
	movl MM_Main+148,%eax
	pushl %eax
	pushl %esi
	call Main__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+764
	call Main__Out
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+816
	call Main__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+848
	call Main__Out
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+884
	call Main__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+932
	call Main__Out
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+972
	call Main__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+1020
	call Main__Out
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Main+388
	call Main__Out
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Main__PrintUsage,.Lfe3-Main__PrintUsage
	.align 16
	.type	 Main__ParseCommandLine,@function
Main__ParseCommandLine:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl $0,-4(%ebp)
	movl $1,%ebx
	movl MI_Params+44,%esi
	jmp .L11
	.align 16
.L12:
	testl %ebx,%ebx
	jge .L13
	pushl $1441
	call _m3_fault
	.align 16
.L13:
	pushl %ebx
	movl MI_Params+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	pushl $MM_Main+1076
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L14
	incl %ebx
	cmpl %esi,%ebx
	jge .L16
	testl %ebx,%ebx
	jge .L17
	pushl $1473
	call _m3_fault
	.align 16
.L17:
	pushl %ebx
	movl MI_Params+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl %eax,MM_Main+160
	movl %eax,MM_Main+156
	addl $4,%esp
	jmp .L18
	.align 16
.L14:
	pushl $MM_Main+1092
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L19
	incl %ebx
	cmpl %esi,%ebx
	jge .L16
	testl %ebx,%ebx
	jge .L21
	pushl $1537
	call _m3_fault
	.align 16
.L21:
	pushl %ebx
	movl MI_Params+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl %eax,MM_Main+152
	addl $4,%esp
	jmp .L18
	.align 16
.L19:
	pushl $MM_Main+1108
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L22
	incl %ebx
	cmpl %esi,%ebx
	jge .L16
	testl %ebx,%ebx
	jge .L24
	pushl $1585
	call _m3_fault
	.align 16
.L24:
	pushl %ebx
	movl MI_Params+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl MM_Main+200,%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_TextList+148,%eax
	call *%eax
	movl %eax,MM_Main+200
	addl $12,%esp
	jmp .L18
	.align 16
.L22:
	pushl $MM_Main+1124
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L25
	movb $1,MM_Main+208
	jmp .L18
	.align 16
.L25:
	pushl $MM_Main+1140
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L26
	movb $1,MM_Main+209
	jmp .L18
	.align 16
.L26:
	pushl $MM_Main+1156
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L27
	incl %ebx
	cmpl %esi,%ebx
	jge .L16
	testl %ebx,%ebx
	jge .L29
	pushl $1697
	call _m3_fault
	.align 16
.L29:
	pushl %ebx
	movl MI_Params+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl %eax,MM_Main+164
	addl $4,%esp
	jmp .L18
	.align 16
.L27:
	pushl $MM_Main+1172
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L30
	movb $1,MM_Main+211
	movb $0,MM_Main+210
	jmp .L18
	.align 16
.L30:
	pushl $MM_Main+1188
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L31
	movb $0,MM_Main+211
	movb $1,MM_Main+210
	jmp .L18
	.align 16
.L31:
	pushl $MM_Main+1204
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L32
	pushl $0
	pushl $MM_Main+388
	pushl $MM_Main+1252
	pushl $MM_Main+1228
	call Main__Out
	pushl $0
	movl MI_Process+156,%eax
	call *%eax
	addl $20,%esp
	jmp .L18
	.align 16
.L32:
	pushl $MM_Main+1316
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L38
	pushl $MM_Main+1332
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L38
	pushl $MM_Main+1352
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L35
.L38:
	call Main__PrintUsage
	pushl $0
	movl MI_Process+156,%eax
	call *%eax
	addl $4,%esp
	jmp .L18
	.align 16
.L35:
	pushl $2
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+64,%eax
	call *%eax
	pushl $MM_Main+1368
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L36
	pushl $2147483647
	pushl $2
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+64,%eax
	call *%eax
	pushl %eax
	call Main__AddDefine
	addl $16,%esp
	jmp .L18
	.align 16
.L36:
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+52,%eax
	call *%eax
	addl $8,%esp
	cmpl $45,%eax
	jne .L37
	call Main__PrintUsage
	movl -4(%ebp),%eax
	pushl %eax
	pushl $MM_Main+1384
	call Main__Err
	jmp .L39
	.align 16
.L37:
	movl MM_Main+196,%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_TextList+148,%eax
	call *%eax
	movl %eax,MM_Main+196
.L39:
	addl $8,%esp
.L18:
	incl %ebx
.L11:
	cmpl %esi,%ebx
	jl .L12
.L16:
	movl MM_Main+200,%eax
	pushl %eax
	movl MI_TextList+192,%eax
	call *%eax
	movl %eax,MM_Main+200
	movl MM_Main+196,%eax
	pushl %eax
	movl MI_TextList+192,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl %eax,MM_Main+196
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Main__ParseCommandLine,.Lfe4-Main__ParseCommandLine
	.align 16
	.type	 Main__AddDefine,@function
Main__AddDefine:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	pushl %ebx
	pushl $61
	pushl %edi
	movl MI_Text+88,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	testl %eax,%eax
	jge .L41
	movl %edi,%ebx
	movl %ebx,-4(%ebp)
	jmp .L42
	.align 16
.L41:
	testl %eax,%eax
	je .L40
	jge .L44
	pushl $2369
	call _m3_fault
	.align 16
.L44:
	pushl %esi
	pushl %ebx
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	leal 1(%esi),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L45
	pushl $2385
	call _m3_fault
	.align 16
.L45:
	pushl $2147483647
	pushl %eax
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $12,%esp
.L42:
	movl MM_Main+1416,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+204,%eax
	movl %eax,(%edx)
	movl -4(%ebp),%ecx
	movl %ecx,4(%edx)
	movl %ebx,8(%edx)
	movl %edx,MM_Main+204
.L40:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Main__AddDefine,.Lfe5-Main__AddDefine
	.align 16
	.type	 Main__ChDir,@function
Main__ChDir:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L47:
	movl $MM_Main+1424,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L48
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Process+184,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L46
	.align 16
.L48:
	movl 8(%ebp),%edx
	pushl %edx
	pushl $MM_Main+1436
	call Main__Err
.L46:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Main__ChDir,.Lfe6-Main__ChDir
	.align 16
	.type	 Main__MkDir,@function
Main__MkDir:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L52:
	movl $MM_Main+1424,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L53
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_FS+56,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L51
	.align 16
.L53:
	movl 8(%ebp),%edx
	pushl %edx
	pushl $MM_Main+1480
	call Main__Err
.L51:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Main__MkDir,.Lfe7-Main__MkDir
	.align 16
	.type	 Main__GotoInitialDirectory,@function
Main__GotoInitialDirectory:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	movl MM_Main+164,%eax
	pushl %eax
	call Main__ChDir
	addl $4,%esp
.L57:
	movl $MM_Main+1424,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L58
	movl MI_Process+180,%eax
	call *%eax
	movl %eax,MM_Main+164
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L59
	.align 16
.L58:
	movl MM_Main+164,%eax
	pushl %eax
	pushl $MM_Main+1524
	call Main__Err
	addl $8,%esp
.L59:
	movl MM_Main+164,%eax
	pushl %eax
	movl MI_Pathname+88,%eax
	call *%eax
	movl %eax,MM_Main+168
	movl MM_Main+164,%eax
	pushl %eax
	movl MI_Pathname+84,%eax
	call *%eax
	movl %eax,MM_Main+172
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Main__GotoInitialDirectory,.Lfe8-Main__GotoInitialDirectory
	.align 16
	.type	 Main__GotoBuildDir,@function
Main__GotoBuildDir:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_M3File+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L62
	cmpb $0,MM_Main+211
	jne .L66
	pushl $0
	jmp .L67
	.align 16
.L62:
	cmpb $0,MM_Main+211
	jne .L65
	pushl %ebx
	pushl $MM_Main+388
	pushl %esi
	pushl $MM_Main+1624
	call Main__Out
	addl $16,%esp
.L65:
	pushl %esi
	call Main__MkDir
	addl $4,%esp
	cmpb $0,MM_Main+211
	jne .L66
	pushl %ebx
.L67:
	pushl $MM_Main+1604
	pushl %esi
	pushl $MM_Main+1572
	call Main__Out
	addl $16,%esp
.L66:
	pushl %esi
	call Main__ChDir
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Main__GotoBuildDir,.Lfe9-Main__GotoBuildDir
	.align 16
	.type	 Main__PathEQ,@function
Main__PathEQ:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,%ebx
	jne .L75
	xorl %esi,%esi
	leal -1(%eax),%edi
	jmp .L70
	.align 16
.L71:
	pushl %esi
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	movl $MI_ASCII+396,%ebx
	movb (%ebx,%eax),%al
	movb %al,-4(%ebp)
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	addl $16,%esp
	movb -4(%ebp),%dl
	cmpb %dl,(%ebx,%eax)
	je .L72
.L75:
	xorl %eax,%eax
	jmp .L74
	.align 16
.L72:
	incl %esi
.L70:
	cmpl %edi,%esi
	jle .L71
	movl $1,%eax
.L74:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Main__PathEQ,.Lfe10-Main__PathEQ
	.align 16
	.type	 Main__GotoDerivedDirectory,@function
Main__GotoDerivedDirectory:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,MM_Main+208
	je .L77
	movl MM_Main+172,%eax
	movl %eax,MM_Main+176
	movl MM_Main+168,%eax
	movl %eax,MM_Main+160
	jmp .L78
	.align 16
.L77:
	pushl $MM_Main+1644
	movl MM_Main+168,%eax
	pushl %eax
	call Main__PathEQ
	addl $8,%esp
	testl %eax,%eax
	je .L79
	movl MM_Main+172,%eax
	movl %eax,MM_Main+176
	movl MM_Main+160,%eax
	pushl %eax
	pushl $MM_Main+1660
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	call Main__GotoBuildDir
	addl $12,%esp
	jmp .L78
	.align 16
.L79:
	movl MM_Main+160,%eax
	pushl %eax
	movl MM_Main+168,%eax
	pushl %eax
	call Main__PathEQ
	addl $8,%esp
	testl %eax,%eax
	je .L80
	movl MM_Main+172,%eax
	movl %eax,MM_Main+176
	jmp .L78
	.align 16
.L80:
	movl MM_Main+164,%eax
	movl %eax,MM_Main+176
	movl MM_Main+160,%eax
	pushl %eax
	call Main__GotoBuildDir
	addl $4,%esp
.L78:
	movl MM_Main+176,%eax
	pushl %eax
	movl MI_Pathname+88,%eax
	call *%eax
	movl %eax,MM_Main+192
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Main__GotoDerivedDirectory,.Lfe11-Main__GotoDerivedDirectory
	.align 16
	.type	 Main__CheckForMakefile,@function
Main__CheckForMakefile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $MM_Main+1676,%edi
	pushl %edi
	movl MI_M3File+64,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L82
	movl $MM_Main+1700,%ebx
	pushl %ebx
	movl MM_Main+176,%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+160,%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %edi
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	addl $32,%esp
	movl %edx,MM_Main+180
	pushl %ebx
	movl MM_Main+176,%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+160,%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Main+1716
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Main+184
	movl $MM_Main+1740,MM_Main+188
	jmp .L81
	.align 16
.L82:
	pushl $MM_Main+1768
	movl MI_M3File+64,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L84
	movl $MM_Main+1700,%ebx
	pushl %ebx
	movl MM_Main+176,%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl $MM_Main+1644,%esi
	pushl %esi
	movl %eax,%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %edi
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	addl $32,%esp
	movl %edx,MM_Main+180
	pushl %ebx
	movl MM_Main+176,%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %esi
	movl %eax,%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Main+1716
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Main+184
	movl $MM_Main+1800,MM_Main+188
	jmp .L81
	.align 16
.L84:
	pushl %eax
	pushl $MM_Main+1832
	call Main__Err
.L81:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Main__CheckForMakefile,.Lfe12-Main__CheckForMakefile
	.align 16
	.type	 Main__CheckForOverridesFile,@function
Main__CheckForOverridesFile:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Main+184,%eax
	pushl %eax
	movl MI_M3File+64,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L86
	cmpb $0,MM_Main+209
	je .L87
	pushl $MM_Main+184
	movl MI_TextList+152,%eax
	call *%eax
	pushl %eax
	movl MM_Main+200,%eax
	pushl %eax
	movl MI_TextList+184,%eax
	call *%eax
	movl %eax,MM_Main+200
	jmp .L85
	.align 16
.L87:
	cmpb $0,MM_Main+211
	jne .L85
	pushl $0
	pushl $MM_Main+388
	movl MM_Main+188,%eax
	pushl %eax
	pushl $MM_Main+1872
	jmp .L93
	.align 16
.L86:
	cmpb $0,MM_Main+209
	je .L85
	cmpb $0,MM_Main+211
	jne .L85
	pushl %eax
	pushl $MM_Main+388
	movl MM_Main+188,%eax
	pushl %eax
	pushl $MM_Main+1904
.L93:
	call Main__Out
.L85:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Main__CheckForOverridesFile,.Lfe13-Main__CheckForOverridesFile
	.align 16
	.type	 Main__CheckTarget,@function
Main__CheckTarget:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	cmpl $0,MM_Main+196
	jne .L94
	movl $MM_Main+1936,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_TextList+152,%eax
	call *%eax
	movl %eax,MM_Main+196
.L94:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Main__CheckTarget,.Lfe14-Main__CheckTarget
	.align 16
	.type	 Main__QDefine,@function
Main__QDefine:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	cmpb $0,MM_Main+210
	je .L97
	pushl $MM_Main+388
	pushl %ebx
	pushl $MM_Main+1952
	pushl %esi
	call Main__Out
	addl $16,%esp
.L97:
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_Quake+76,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Main__QDefine,.Lfe15-Main__QDefine
	.align 16
	.type	 Main__QRun,@function
Main__QRun:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	cmpb $0,MM_Main+210
	je .L99
	pushl $0
	pushl $MM_Main+1988
	pushl %ebx
	pushl $MM_Main+1968
	call Main__Out
	addl $16,%esp
.L99:
	pushl %ebx
	pushl %esi
	movl MI_Quake+64,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Main__QRun,.Lfe16-Main__QRun
	.align 16
	.type	 M_Main_LINE_318.0,@function
M_Main_LINE_318.0:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	subl $4,%esp
	movl -208(%eax),%eax
	pushl %eax
	movl MI_Quake+80,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 M_Main_LINE_318.0,.Lfe17-M_Main_LINE_318.0
	.align 16
	.type	 Main__RunQuake,@function
Main__RunQuake:
	pushl %ebp
	movl %esp,%ebp
	subl $208,%esp
	pushl %esi
	pushl %ebx
.L101:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl $0,-208(%ebp)
	movl MM_Main+2000,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 48(%eax),%ecx
	movl MM_Main+160,%eax
	pushl %eax
	movl MM_Main+176,%eax
	pushl %eax
	movl MM_Main+192,%eax
	pushl %eax
	movl MI_Stdio+48,%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %eax,%edx
	movl %edx,-208(%ebp)
	addl $24,%esp
.L102:
	movl $MM_Main+2008,-180(%ebp)
	movl $0,-184(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-188(%ebp)
	leal -188(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -168(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L103
	movl $M_Main_LINE_318.0,-196(%ebp)
	movl %ebp,-192(%ebp)
.L104:
	movl $3,-200(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-204(%ebp)
	leal -204(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%esi
	pushl %esi
	pushl $MM_Main+2020
	movl MI_RTHooks+76,%eax
	call *%eax
	movl $MM_Main+2036,%ebx
	pushl %ebx
	movl %eax,%edx
	pushl %edx
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QDefine
	addl $20,%esp
	cmpb $0,MM_Main+211
	je .L105
	pushl %ebx
	pushl $MM_Main+2056
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QDefine
	addl $12,%esp
.L105:
	movl MM_Main+176,%eax
	pushl %eax
	pushl $MM_Main+2076
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QDefine
	movl MM_Main+192,%eax
	pushl %eax
	pushl $MM_Main+2100
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QDefine
	movl MM_Main+160,%eax
	pushl %eax
	pushl $MM_Main+2120
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QDefine
	addl $36,%esp
	pushl $MM_Main+1700
	movl MM_Main+152,%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+156,%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ecx
	pushl %ecx
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QRun
	movl MM_Main+204,%ebx
	addl $24,%esp
	jmp .L106
	.align 16
.L107:
	movl 8(%ebx),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QDefine
	addl $12,%esp
	movl (%ebx),%ebx
.L106:
	testl %ebx,%ebx
	jne .L107
	movl MM_Main+200,%ebx
	jmp .L112
	.align 16
.L113:
	movl 4(%ebx),%eax
	pushl %eax
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QRun
	movl 8(%ebx),%ebx
	addl $8,%esp
.L112:
	testl %ebx,%ebx
	jne .L113
	movl -208(%ebp),%edx
	movl (%edx),%eax
	movl 52(%eax),%ecx
	pushl %edx
	call *%ecx
	movl MM_Main+180,%eax
	pushl %eax
	movl -208(%ebp),%eax
	pushl %eax
	call Main__QRun
	movl -204(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_Main_LINE_318.0
.L115:
	movl -188(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L119
	.align 16
.L103:
	movl -172(%ebp),%eax
	pushl %eax
	pushl $MM_Main+2144
	call Main__Err
.L119:
	movl -8(%ebp),%eax
	leal -216(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Main__RunQuake,.Lfe18-Main__RunQuake
	.align 16
	.type	 Main__EvaluateMakefile,@function
Main__EvaluateMakefile:
	pushl %ebp
	movl %esp,%ebp
	jmp .L121
	.align 16
.L122:
	movl 4(%eax),%eax
	pushl %eax
	call Main__RunQuake
	movl MM_Main+196,%eax
	addl $4,%esp
	movl 8(%eax),%eax
	movl %eax,MM_Main+196
.L121:
	movl MM_Main+196,%eax
	testl %eax,%eax
	jne .L122
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Main__EvaluateMakefile,.Lfe19-Main__EvaluateMakefile
	.align 16
	.type	 Main__FindTemplateDir,@function
Main__FindTemplateDir:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $MM_Main+2172
	movl MI_Env+44,%eax
	call *%eax
	movl %eax,%edx
	movl $-1,%esi
	addl $4,%esp
	testl %edx,%edx
	je .L125
	movl %edx,MM_Main+152
	jmp .L124
	.align 16
.L125:
	pushl $MM_Main+2200
	movl MI_Env+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-8(%ebp)
	movl $MM_Main+2220,%ebx
	pushl %ebx
	pushl %ebx
	movl MI_Text+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L127
	movb $58,-4(%ebp)
	jmp .L130
	.align 16
.L127:
	pushl $MM_Main+2240
	pushl %ebx
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L129
	movb $59,-4(%ebp)
	jmp .L130
	.align 16
.L129:
	pushl %ebx
	pushl $MM_Main+2260
	call Main__Err
	addl $8,%esp
.L130:
	leal 1(%esi),%ebx
	pushl %ebx
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	movl -8(%ebp),%ecx
	pushl %ecx
	movl MI_Text+88,%eax
	call *%eax
	movl %eax,%edi
	addl $12,%esp
	cmpl $-1,%edi
	je .L131
	testl %ebx,%ebx
	jge .L132
	pushl $5745
	call _m3_fault
	.align 16
.L132:
	movl %edi,%eax
	subl %esi,%eax
	decl %eax
	jns .L133
	pushl $5745
	call _m3_fault
	.align 16
.L133:
	pushl %eax
	jmp .L140
	.align 16
.L131:
	testl %ebx,%ebx
	jge .L135
	pushl $5777
	call _m3_fault
	.align 16
.L135:
	pushl $2147483647
.L140:
	pushl %ebx
	movl -8(%ebp),%ecx
	pushl %ecx
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L136
	pushl $MM_Main+1700
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+156,%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_M3File+64,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L136
	pushl %ebx
	movl MI_M3File+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L136
	movl %esi,MM_Main+152
	jmp .L124
	.align 16
.L136:
	movl %edi,%esi
	cmpl $-1,%esi
	jne .L130
	cmpl $0,MM_Main+152
	jne .L124
	movl MM_Main+148,%eax
	movl %eax,MM_Main+152
.L124:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Main__FindTemplateDir,.Lfe20-Main__FindTemplateDir
	.align 16
	.type	 Main__FindTemplate,@function
Main__FindTemplate:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Main+2324
	movl MI_Env+44,%eax
	call *%eax
	testl %eax,%eax
	je .L142
	movl %eax,MM_Main+156
	jmp .L143
	.align 16
.L142:
	movl $MM_Main+2348,MM_Main+156
.L143:
	movl MM_Main+156,%eax
	movl %eax,MM_Main+160
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Main__FindTemplate,.Lfe21-Main__FindTemplate
	.align 16
	.type	 _INITM_Main,@function
_INITM_Main:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	call Main__ParseCommandLine
	cmpl $0,MM_Main+156
	jne .L145
	call Main__FindTemplate
.L145:
	cmpl $0,MM_Main+152
	jne .L146
	call Main__FindTemplateDir
.L146:
	call Main__GotoInitialDirectory
	call Main__GotoDerivedDirectory
	movl MM_Main+152,%eax
	pushl %eax
	movl MI_Pathname+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L147
	movl $MM_Main+1700,%ebx
	pushl %ebx
	movl MM_Main+176,%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+160,%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Main+152,%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,MM_Main+152
	addl $32,%esp
.L147:
	call Main__CheckForMakefile
	call Main__CheckForOverridesFile
	call Main__CheckTarget
	call Main__EvaluateMakefile
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 _INITM_Main,.Lfe22-_INITM_Main
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Main
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe23:
	.size	 _m3_fault,.Lfe23-_m3_fault
.globl MM_Main
.data
	.align 4
	.type	 MM_Main,@object
	.size	 MM_Main,3096
MM_Main:
	.long MM_Main+2922
	.long MM_Main+44
	.long MM_Main+1416
	.zero	8
	.long MM_Main+2636
	.zero	4
	.long MM_Main+2904
	.long MM_Main+2904
	.zero	4
	.long _INITM_Main
	.zero	8
	.long 423322038
.byte 24
.byte 35
.byte 243
.byte 31
.byte 174
.byte 66
.byte 200
.byte 6
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_Main+3057
	.long MM_Main+3061
	.long MM_Main+3065
	.zero	28
	.long MM_Main+3079
	.zero	4
	.long MM_Main+296
	.zero	12
	.long MM_Main+348
	.zero	44
	.long Main__Out
	.long Main__Err
	.long Main__PrintUsage
	.long Main__ParseCommandLine
	.long Main__AddDefine
	.long Main__ChDir
	.long Main__MkDir
	.long Main__GotoInitialDirectory
	.long Main__GotoBuildDir
	.long Main__PathEQ
	.long Main__GotoDerivedDirectory
	.long Main__CheckForMakefile
	.long Main__CheckForOverridesFile
	.long Main__CheckTarget
	.long Main__QDefine
	.long Main__QRun
	.long Main__RunQuake
	.long Main__EvaluateMakefile
	.long Main__FindTemplateDir
	.long Main__FindTemplate
	.long 2
	.long MM_Main+304
	.long 39
	.ascii	"/usr/local/pm3/lib/m3/pkg"
	.ascii	"/"
	.ascii	"m3config"
	.ascii	"/"
	.ascii	"src"
	.zero	2
	.long 2
	.long MM_Main+356
	.long 2
	.ascii	"."
	.zero	3
	.long 2
	.long MM_Main+372
	.long 11
	.ascii	"\nm3build: "
	.zero	2
	.long 2
	.long MM_Main+396
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_Main+412
	.long 36
	.ascii	"usage: m3build [options] [targets]\n"
	.zero	1
	.long 2
	.long MM_Main+460
	.long 59
	.ascii	"  -b <dir>   build with template <dir> in directory <dir>\n"
	.zero	2
	.long 2
	.long MM_Main+532
	.long 26
	.ascii	"               (default='"
	.zero	3
	.long 2
	.long MM_Main+572
	.long 4
	.ascii	"')\n"
	.zero	1
	.long 2
	.long MM_Main+588
	.long 49
	.ascii	"  -d <dir>   start in directory <dir> (default='"
	.zero	4
	.long 2
	.long MM_Main+652
	.long 47
	.ascii	"  -F <file>  prepend the quake code in <file>\n"
	.zero	2
	.long 2
	.long MM_Main+712
	.long 47
	.ascii	"  -T <dir>   use templates in directory <dir>\n"
	.zero	2
	.long 2
	.long MM_Main+772
	.long 39
	.ascii	"  -S         build in 'src' directory\n"
	.zero	2
	.long 2
	.long MM_Main+824
	.long 20
	.ascii	"  -q         quiet\n"
	.zero	1
	.long 2
	.long MM_Main+856
	.long 22
	.ascii	"  -v         verbose\n"
	.zero	3
	.long 2
	.long MM_Main+892
	.long 34
	.ascii	"  -help      print this messsage\n"
	.zero	3
	.long 2
	.long MM_Main+940
	.long 28
	.ascii	"  -version   print version\n"
	.zero	1
	.long 2
	.long MM_Main+980
	.long 35
	.ascii	"  -<arg>     pass -<arg> to quake\n"
	.zero	2
	.long 2
	.long MM_Main+1028
	.long 44
	.ascii	"  <target>   call quake with each <target>\n"
	.zero	1
	.long 2
	.long MM_Main+1084
	.long 3
	.ascii	"-b"
	.zero	2
	.long 2
	.long MM_Main+1100
	.long 3
	.ascii	"-T"
	.zero	2
	.long 2
	.long MM_Main+1116
	.long 3
	.ascii	"-F"
	.zero	2
	.long 2
	.long MM_Main+1132
	.long 3
	.ascii	"-S"
	.zero	2
	.long 2
	.long MM_Main+1148
	.long 3
	.ascii	"-O"
	.zero	2
	.long 2
	.long MM_Main+1164
	.long 3
	.ascii	"-d"
	.zero	2
	.long 2
	.long MM_Main+1180
	.long 3
	.ascii	"-q"
	.zero	2
	.long 2
	.long MM_Main+1196
	.long 3
	.ascii	"-v"
	.zero	2
	.long 2
	.long MM_Main+1212
	.long 9
	.ascii	"-version"
	.zero	4
	.long 2
	.long MM_Main+1236
	.long 10
	.ascii	"m3build: "
	.zero	3
	.long 2
	.long MM_Main+1260
	.long 50
	.ascii	"PM3 Version "
	.ascii	"1.1.15"
	.ascii	" ("
	.ascii	"Tue Sep  5 17:16:07 EDT 2000"
	.ascii	")"
	.zero	3
	.long 2
	.long MM_Main+1324
	.long 3
	.ascii	"-h"
	.zero	2
	.long 2
	.long MM_Main+1340
	.long 6
	.ascii	"-help"
	.zero	3
	.long 2
	.long MM_Main+1360
	.long 3
	.ascii	"-?"
	.zero	2
	.long 2
	.long MM_Main+1376
	.long 3
	.ascii	"-D"
	.zero	2
	.long 2
	.long MM_Main+1392
	.long 22
	.ascii	"unrecognized option: "
	.zero	3
	.long MM_Main+2000
	.long 423322038
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_Main+1444
	.long 30
	.ascii	"unable to move to directory: "
	.zero	3
	.long 2
	.long MM_Main+1488
	.long 29
	.ascii	"unable to create directory: "
	.zero	4
	.long 2
	.long MM_Main+1532
	.long 36
	.ascii	"unable to get full directory path: "
	.zero	1
	.long 2
	.long MM_Main+1580
	.long 17
	.ascii	"--- building in "
	.zero	4
	.long 2
	.long MM_Main+1612
	.long 6
	.ascii	" ---\n"
	.zero	3
	.long 2
	.long MM_Main+1632
	.long 7
	.ascii	"mkdir "
	.zero	2
	.long 2
	.long MM_Main+1652
	.long 4
	.ascii	"src"
	.zero	1
	.long 2
	.long MM_Main+1668
	.long 4
	.ascii	".."
	.ascii	"/"
	.zero	1
	.long 2
	.long MM_Main+1684
	.long 11
	.ascii	"m3makefile"
	.zero	2
	.long 2
	.long MM_Main+1708
	.long 2
	.ascii	"/"
	.zero	3
	.long 2
	.long MM_Main+1724
	.long 12
	.ascii	"m3overrides"
	.zero	1
	.long 2
	.long MM_Main+1748
	.long 14
	.ascii	"."
	.ascii	"/"
	.ascii	"m3overrides"
	.zero	3
	.long 2
	.long MM_Main+1776
	.long 18
	.ascii	".."
	.ascii	"/"
	.ascii	"src"
	.ascii	"/"
	.ascii	"m3makefile"
	.zero	3
	.long 2
	.long MM_Main+1808
	.long 19
	.ascii	".."
	.ascii	"/"
	.ascii	"src"
	.ascii	"/"
	.ascii	"m3overrides"
	.zero	2
	.long 2
	.long MM_Main+1840
	.long 28
	.ascii	"cannot locate an m3makefile"
	.zero	1
	.long 2
	.long MM_Main+1880
	.long 19
	.ascii	"m3build: ignoring "
	.zero	2
	.long 2
	.long MM_Main+1912
	.long 18
	.ascii	"m3build: missing "
	.zero	3
	.long 2
	.long MM_Main+1944
	.long 4
	.ascii	"all"
	.zero	1
	.long 2
	.long MM_Main+1960
	.long 4
	.ascii	" = "
	.zero	1
	.long 2
	.long MM_Main+1976
	.long 7
	.ascii	"EVAL ("
	.zero	2
	.long 2
	.long MM_Main+1996
	.long 3
	.ascii	")\n"
	.zero	6
	.long -482055239
	.long MI_Quake+44
	.zero	4
	.long 2
	.long MM_Main+2028
	.long 2
	.ascii	"_"
	.zero	3
	.long 2
	.long MM_Main+2044
	.long 5
	.ascii	"TRUE"
	.zero	4
	.long 2
	.long MM_Main+2064
	.long 7
	.ascii	"_quiet"
	.zero	2
	.long 2
	.long MM_Main+2084
	.long 12
	.ascii	"PACKAGE_DIR"
	.zero	1
	.long 2
	.long MM_Main+2108
	.long 8
	.ascii	"PACKAGE"
	.zero	1
	.long 2
	.long MM_Main+2128
	.long 10
	.ascii	"BUILD_DIR"
	.zero	3
	.long 2
	.long MM_Main+2152
	.long 14
	.ascii	"quake error: "
	.zero	3
	.long 2
	.long MM_Main+2180
	.long 16
	.ascii	"M3_TEMPLATE_DIR"
	.zero	1
	.long 2
	.long MM_Main+2208
	.long 5
	.ascii	"PATH"
	.zero	4
	.long 2
	.long MM_Main+2228
	.long 6
	.ascii	"POSIX"
	.zero	3
	.long 2
	.long MM_Main+2248
	.long 6
	.ascii	"WIN32"
	.zero	3
	.long 2
	.long MM_Main+2268
	.long 51
	.ascii	"FindTemplate does not know how to handle OS_TYPE: "
	.zero	2
	.long 2
	.long MM_Main+2332
	.long 12
	.ascii	"M3_TEMPLATE"
	.zero	1
	.long 2
	.long MM_Main+2356
	.long 11
	.ascii	"LINUXLIBC6"
	.zero	2
	.ascii	"_INITM_Main"
	.zero	1
	.ascii	"FindTemplate"
	.zero	1
	.ascii	"FindTemplateDir"
	.zero	1
	.ascii	"EvaluateMakefile"
	.zero	1
	.ascii	"RunQuake"
	.zero	1
	.ascii	"M_Main_LINE_318"
	.zero	1
	.ascii	"QRun"
	.zero	1
	.ascii	"QDefine"
	.zero	1
	.ascii	"CheckTarget"
	.zero	1
	.ascii	"CheckForOverridesFile"
	.zero	1
	.ascii	"CheckForMakefile"
	.zero	1
	.ascii	"GotoDerivedDirectory"
	.zero	1
	.ascii	"PathEQ"
	.zero	1
	.ascii	"GotoBuildDir"
	.zero	1
	.ascii	"GotoInitialDirectory"
	.zero	1
	.ascii	"MkDir"
	.zero	1
	.ascii	"ChDir"
	.zero	1
	.ascii	"AddDefine"
	.zero	1
	.ascii	"ParseCommandLine"
	.zero	1
	.ascii	"PrintUsage"
	.zero	1
	.ascii	"Err"
	.zero	1
	.ascii	"Out"
	.zero	2
	.long _INITM_Main
	.long MM_Main+2368
	.zero	4
	.long Main__FindTemplate
	.long MM_Main+2380
	.zero	4
	.long Main__FindTemplateDir
	.long MM_Main+2393
	.zero	4
	.long Main__EvaluateMakefile
	.long MM_Main+2409
	.zero	4
	.long Main__RunQuake
	.long MM_Main+2426
	.zero	4
	.long M_Main_LINE_318.0
	.long MM_Main+2435
	.zero	4
	.long Main__QRun
	.long MM_Main+2451
	.zero	4
	.long Main__QDefine
	.long MM_Main+2456
	.zero	4
	.long Main__CheckTarget
	.long MM_Main+2464
	.zero	4
	.long Main__CheckForOverridesFile
	.long MM_Main+2476
	.zero	4
	.long Main__CheckForMakefile
	.long MM_Main+2498
	.zero	4
	.long Main__GotoDerivedDirectory
	.long MM_Main+2515
	.zero	4
	.long Main__PathEQ
	.long MM_Main+2536
	.zero	4
	.long Main__GotoBuildDir
	.long MM_Main+2543
	.zero	4
	.long Main__GotoInitialDirectory
	.long MM_Main+2556
	.zero	4
	.long Main__MkDir
	.long MM_Main+2577
	.zero	4
	.long Main__ChDir
	.long MM_Main+2583
	.zero	4
	.long Main__AddDefine
	.long MM_Main+2589
	.zero	4
	.long Main__ParseCommandLine
	.long MM_Main+2599
	.zero	4
	.long Main__PrintUsage
	.long MM_Main+2616
	.zero	4
	.long Main__Err
	.long MM_Main+2627
	.zero	4
	.long Main__Out
	.long MM_Main+2631
	.zero	8
.byte 42
.byte 148
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3bui"
	.ascii	"ld/src/Main.m3"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 16
.byte 182
.byte 97
.byte 59
.byte 25
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 24
	.ascii	"Main.DefineList"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"