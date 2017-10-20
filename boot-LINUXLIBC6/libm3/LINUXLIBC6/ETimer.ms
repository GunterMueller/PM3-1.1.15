	.file	"ETimer.mc"
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
	.type	 ETimer__New,@function
ETimer__New:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ETimer+348,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebx,(%eax)
	movl %eax,%ebx
	movl MM_ETimer+148,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $8,%esp
.L2:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L3
	pushl $772
	call _m3_fault
	.align 16
.L3:
	movl MM_ETimer+156,%eax
	movl %eax,16(%ebx)
	movl %ebx,MM_ETimer+156
.L4:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ETimer__New,.Lfe1-ETimer__New
	.align 16
	.type	 ETimer__Relabel,@function
ETimer__Relabel:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %eax,%eax
	jne .L6
	pushl $900
	call _m3_fault
	.align 16
.L6:
	movl %edx,(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ETimer__Relabel,.Lfe2-ETimer__Relabel
	.align 16
	.type	 ETimer__Push,@function
ETimer__Push:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L8:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	cmpb $0,MM_ETimer+152
	je .L18
	movl MM_ETimer+148,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L10:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%esi
	movl MI_Time+44,%eax
	movl %esi,RTThread__handlerStack
	call *%eax
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	testl %eax,%eax
	jle .L11
	decl %eax
	jns .L12
	fstp %st(0)
	pushl $1089
	call _m3_fault
	.align 16
.L12:
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-24(%ebp)
	movl %edx,%ecx
	movl L_1(%eax),%eax
	testl %eax,%eax
	jne .L13
	fstp %st(0)
	pushl $1092
	call _m3_fault
	.align 16
.L13:
	fld %st(0)
	fsubl 4(%ecx)
	movl %eax,%edx
	faddl 8(%edx)
	fstpl 8(%edx)
.L11:
	xorl %ecx,%ecx
	movb MM_ETimer+168,%cl
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-24(%ebp)
	fstpl 4(%edx)
	movl %ebx,L_1(%eax)
	testl %ebx,%ebx
	jne .L14
	pushl $1252
	call _m3_fault
	.align 16
.L14:
	incl 4(%ebx)
	leal 1(%ecx),%eax
	cmpl $99,%eax
	jle .L15
	pushl $1281
	call _m3_fault
	.align 16
.L15:
	movb %al,MM_ETimer+168
.L16:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
.L17:
	movl -8(%ebp),%eax
.L18:
	movl %eax,RTThread__handlerStack
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ETimer__Push,.Lfe3-ETimer__Push
	.align 16
	.type	 ETimer__Pop,@function
ETimer__Pop:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
.L20:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	cmpb $0,MM_ETimer+152
	je .L29
	movl MM_ETimer+148,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L22:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%ebx
	movl MI_Time+44,%eax
	movl %ebx,RTThread__handlerStack
	call *%eax
	fld %st(0)
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	decl %eax
	jns .L23
	fstp %st(0)
	fstp %st(0)
	pushl $1441
	call _m3_fault
	.align 16
.L23:
	movb %al,MM_ETimer+168
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-24(%ebp)
	movl %edx,%ecx
	movl L_1(%eax),%eax
	testl %eax,%eax
	jne .L24
	fstp %st(0)
	fstp %st(0)
	pushl $1492
	call _m3_fault
	.align 16
.L24:
	fxch %st(1)
	fsubl 4(%ecx)
	movl %eax,%edx
	faddl 8(%edx)
	fstpl 8(%edx)
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	testl %eax,%eax
	jle .L30
	decl %eax
	jns .L26
	fstp %st(0)
	pushl $1585
	call _m3_fault
	.align 16
.L26:
	leal (%eax,%eax,2),%eax
	fstpl L_1+4(,%eax,4)
	jmp .L27
	.align 16
.L30:
	fstp %st(0)
.L27:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
.L28:
	movl -8(%ebp),%eax
.L29:
	movl %eax,RTThread__handlerStack
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ETimer__Pop,.Lfe4-ETimer__Pop
.section	.rodata
	.align 4
.LC0:
	.long 0x47ae147b,0x3f747ae1
.text
	.align 16
	.type	 ETimer__Dump,@function
ETimer__Dump:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L32:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl MM_ETimer+148,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L33:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%edi
	movl %edi,RTThread__handlerStack
	cmpb $0,MM_ETimer+168
	je .L34
	movl MI_Time+44,%eax
	call *%eax
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	decl %eax
	jns .L35
	fstp %st(0)
	pushl $1809
	call _m3_fault
	.align 16
.L35:
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-24(%ebp)
	movl %edx,%ecx
	movl L_1(%eax),%eax
	testl %eax,%eax
	jne .L36
	fstp %st(0)
	pushl $1812
	call _m3_fault
	.align 16
.L36:
	fld %st(0)
	fsubl 4(%ecx)
	movl %eax,%edx
	faddl 8(%edx)
	fstpl 8(%edx)
	fstpl 4(%ecx)
.L34:
	movl MM_ETimer+156,%ebx
.L37:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	pushl $MM_ETimer+360
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $12,%esp
	jmp .L38
	.align 16
.L39:
	cmpl $0,4(%ebx)
	jle .L41
	fldl 8(%ebx)
	fldl .LC0
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	je .L54
	subl $8,%esp
	fstpl (%esp)
	call ETimer__FmtTime
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $16,%esp
	cmpl %ebx,MM_ETimer+160
	je .L44
	testl %ebx,%ebx
	jne .L45
	pushl $2132
	call _m3_fault
	.align 16
.L45:
	pushl $10
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $1
	pushl $32
	pushl $8
	movl %eax,%edx
	pushl %edx
	movl MI_Fmt+72,%eax
	call *%eax
	pushl %eax
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $32,%esp
	jmp .L46
	.align 16
.L44:
	pushl $MM_ETimer+404
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L46:
	pushl $MM_ETimer+428
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L47
	pushl $2196
	call _m3_fault
	.align 16
.L47:
	movl (%ebx),%eax
	testl %eax,%eax
	je .L48
	pushl %eax
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L48:
	pushl $MM_ETimer+444
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
	jmp .L41
	.align 16
.L54:
	fstp %st(0)
.L41:
	testl %ebx,%ebx
	jne .L50
	pushl $2244
	call _m3_fault
	.align 16
.L50:
	fldl -32(%ebp)
	faddl 8(%ebx)
	fstpl -32(%ebp)
	movl 16(%ebx),%ebx
.L38:
	testl %ebx,%ebx
	jne .L39
	pushl $MM_ETimer+460
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	pushl -28(%ebp)
	pushl -32(%ebp)
	call ETimer__FmtTime
	pushl %eax
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	pushl $MM_ETimer+528
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
.L53:
	movl -8(%ebp),%eax
	leal -44(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ETimer__Dump,.Lfe5-ETimer__Dump
	.align 16
	.type	 ETimer__FmtTime,@function
ETimer__FmtTime:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L56:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $0
	pushl $2
	pushl $1
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_Fmt+64,%eax
	call *%eax
	pushl $1
	pushl $32
	pushl $8
	pushl %eax
	movl MI_Fmt+72,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L57:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ETimer__FmtTime,.Lfe6-ETimer__FmtTime
	.align 16
	.type	 ETimer__Elapsed,@function
ETimer__Elapsed:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L59:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MM_ETimer+148,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L60:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	testl %eax,%eax
	jle .L61
	decl %eax
	jns .L62
	pushl $2545
	call _m3_fault
	.align 16
.L62:
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-24(%ebp)
	movl L_1(%eax),%eax
	testl %eax,%eax
	jne .L63
	pushl $2548
	call _m3_fault
	.align 16
.L63:
	cmpl %ebx,%eax
	jne .L61
	movl MI_Time+44,%eax
	call *%eax
	movl -24(%ebp),%eax
	fld %st(0)
	fsubl 4(%eax)
	faddl 8(%ebx)
	fstpl 8(%ebx)
	fstpl 4(%eax)
.L61:
	testl %ebx,%ebx
	jne .L65
	pushl $2708
	call _m3_fault
	.align 16
.L65:
	movl -20(%ebp),%eax
	fldl 8(%ebx)
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	fstpl -32(%ebp)
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -32(%ebp)
.L66:
.L67:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ETimer__Elapsed,.Lfe7-ETimer__Elapsed
	.align 16
	.type	 ETimer__TotalElapsed,@function
ETimer__TotalElapsed:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
.L69:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl MM_ETimer+148,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L70:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MM_ETimer+156,%eax
	jmp .L71
	.align 16
.L72:
	fldl -28(%ebp)
	faddl 8(%eax)
	fstpl -28(%ebp)
	movl 16(%eax),%eax
.L71:
	testl %eax,%eax
	jne .L72
.L76:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -28(%ebp)
.L77:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ETimer__TotalElapsed,.Lfe8-ETimer__TotalElapsed
	.align 16
	.type	 ETimer__Next,@function
ETimer__Next:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ETimer+148,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L79:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L81
	movl MM_ETimer+156,%ebx
	jmp .L83
	.align 16
.L81:
	movl 16(%ebx),%ebx
.L83:
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L82:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ETimer__Next,.Lfe9-ETimer__Next
	.align 16
	.type	 ETimer__StartGC,@function
ETimer__StartGC:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ETimer+164,%eax
	pushl %eax
	call ETimer__Push
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 ETimer__StartGC,.Lfe10-ETimer__StartGC
	.align 16
	.type	 ETimer__StopGC,@function
ETimer__StopGC:
	pushl %ebp
	movl %esp,%ebp
	call ETimer__Pop
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 ETimer__StopGC,.Lfe11-ETimer__StopGC
	.align 16
	.type	 ETimer__Enable,@function
ETimer__Enable:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	cmpb $0,MM_ETimer+152
	jne .L86
	movl MM_ETimer+148,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L88:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movb $1,MM_ETimer+152
.L90:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
.L86:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 ETimer__Enable,.Lfe12-ETimer__Enable
	.align 16
	.type	 ETimer__Reset,@function
ETimer__Reset:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ETimer+148,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L92:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L93
	pushl $3668
	call _m3_fault
	.align 16
.L93:
	movl $0,4(%ebx)
	movl $0,8(%ebx)
	movl $0,12(%ebx)
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	testl %eax,%eax
	jle .L98
	decl %eax
	jns .L96
	pushl $3697
	call _m3_fault
	.align 16
.L96:
	leal (%eax,%eax,2),%eax
	cmpl %ebx,L_1(,%eax,4)
	jne .L98
	movl MI_Time+44,%eax
	call *%eax
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	decl %eax
	jns .L97
	fstp %st(0)
	pushl $3729
	call _m3_fault
	.align 16
.L97:
	leal (%eax,%eax,2),%eax
	fstpl L_1+4(,%eax,4)
.L98:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 ETimer__Reset,.Lfe13-ETimer__Reset
	.align 16
	.type	 ETimer__ResetAll,@function
ETimer__ResetAll:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl MM_ETimer+148,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L100:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MM_ETimer+156,%eax
	jmp .L101
	.align 16
.L102:
	movl $0,4(%eax)
	movl $0,8(%eax)
	movl $0,12(%eax)
	movl 16(%eax),%eax
.L101:
	testl %eax,%eax
	jne .L102
	cmpb $0,MM_ETimer+168
	je .L109
	movl MI_Time+44,%eax
	call *%eax
	xorl %eax,%eax
	movb MM_ETimer+168,%al
	decl %eax
	jns .L108
	fstp %st(0)
	pushl $4001
	call _m3_fault
	.align 16
.L108:
	leal (%eax,%eax,2),%eax
	fstpl L_1+4(,%eax,4)
.L109:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 ETimer__ResetAll,.Lfe14-ETimer__ResetAll
	.align 16
	.type	 _INITM_ETimer,@function
_INITM_ETimer:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_ETimer+148
	movl MM_ETimer+564,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_ETimer+148
	pushl $MM_ETimer+576
	call ETimer__New
	movl %eax,MM_ETimer+160
	pushl $MM_ETimer+596
	call ETimer__New
	movl %eax,MM_ETimer+164
	movl MM_ETimer+160,%eax
	pushl %eax
	call ETimer__Push
	movb $0,MM_ETimer+152
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 _INITM_ETimer,.Lfe15-_INITM_ETimer
	.align 16
	.type	 M_ETimer_tbb9bacd8_LINK,@function
M_ETimer_tbb9bacd8_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ETimer+556,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ETimer+284,%eax
	movl %eax,4(%edx)
	movl MM_ETimer+288,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe16:
	.size	 M_ETimer_tbb9bacd8_LINK,.Lfe16-M_ETimer_tbb9bacd8_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ETimer
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe17:
	.size	 _m3_fault,.Lfe17-_m3_fault
.globl MM_ETimer
.data
	.align 4
	.type	 MM_ETimer,@object
	.size	 MM_ETimer,1144
MM_ETimer:
	.long MM_ETimer+936
	.long MM_ETimer+44
	.long MM_ETimer+348
	.long MM_ETimer+336
	.zero	4
	.long MM_ETimer+736
	.zero	4
	.long MM_ETimer+920
	.long MM_ETimer+920
	.zero	4
	.long _INITM_ETimer
	.zero	8
	.long -574056471
.byte 69
.byte 37
.byte 176
.byte 212
.byte 172
.byte 178
.byte 120
.byte 9
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_ETimer+1098
	.long MM_ETimer+1103
	.long MM_ETimer+1108
	.zero	24
	.long MM_ETimer+1123
	.long MM_ETimer+1132
	.long MM_ETimer+180
	.zero	4
.byte 1
	.zero	19
	.long L_1
	.long ETimer__FmtTime
	.zero	8
	.long -1147425576
.byte 91
.byte 178
.byte 138
.byte 183
.byte 131
.byte 30
.byte 17
.byte 12
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_ETimer+1078
	.zero	4
	.long M_ETimer_tbb9bacd8_LINK
	.long 41259960
	.zero	16
	.long MM_ETimer+1081
	.zero	4
	.long ETimer__StartGC
	.long ETimer__StopGC
	.long ETimer__New
	.long ETimer__Relabel
	.long ETimer__Push
	.long ETimer__Pop
	.long ETimer__Dump
	.long ETimer__Elapsed
	.long ETimer__TotalElapsed
	.long ETimer__Next
	.long ETimer__Enable
	.long ETimer__Reset
	.long ETimer__ResetAll
	.long -1701907231
	.long -574056471
	.zero	4
	.long MM_ETimer+556
	.long -1701907231
	.long 2
	.long MM_ETimer+368
	.long 30
	.ascii	"\n seconds  #times  operation\n"
	.zero	3
	.long 2
	.long MM_ETimer+412
	.long 9
	.ascii	"        "
	.zero	4
	.long 2
	.long MM_ETimer+436
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_ETimer+452
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_ETimer+468
	.long 53
	.ascii	"---------------------------------------------------\n"
	.zero	4
	.long 2
	.long MM_ETimer+536
	.long 18
	.ascii	"          TOTAL\n\n"
	.zero	3
	.long MM_ETimer+564
	.long -1147425576
	.zero	4
	.long 356643957
	.long 2
	.long MM_ETimer+584
	.long 6
	.ascii	"other"
	.zero	3
	.long 2
	.long MM_ETimer+604
	.long 19
	.ascii	"garbage collection"
	.zero	2
	.ascii	"_INITM_ETimer"
	.zero	1
	.ascii	"ResetAll"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Enable"
	.zero	1
	.ascii	"StopGC"
	.zero	1
	.ascii	"StartGC"
	.zero	1
	.ascii	"Next"
	.zero	1
	.ascii	"TotalElapsed"
	.zero	1
	.ascii	"Elapsed"
	.zero	1
	.ascii	"FmtTime"
	.zero	1
	.ascii	"Dump"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"Relabel"
	.zero	1
	.ascii	"New"
	.zero	2
	.long _INITM_ETimer
	.long MM_ETimer+624
	.zero	4
	.long ETimer__ResetAll
	.long MM_ETimer+638
	.long MI_ETimer+84
	.long ETimer__Reset
	.long MM_ETimer+647
	.long MI_ETimer+80
	.long ETimer__Enable
	.long MM_ETimer+653
	.long MI_ETimer+76
	.long ETimer__StopGC
	.long MM_ETimer+660
	.zero	4
	.long ETimer__StartGC
	.long MM_ETimer+667
	.zero	4
	.long ETimer__Next
	.long MM_ETimer+675
	.long MI_ETimer+72
	.long ETimer__TotalElapsed
	.long MM_ETimer+680
	.long MI_ETimer+68
	.long ETimer__Elapsed
	.long MM_ETimer+693
	.long MI_ETimer+64
	.long ETimer__FmtTime
	.long MM_ETimer+701
	.zero	4
	.long ETimer__Dump
	.long MM_ETimer+709
	.long MI_ETimer+60
	.long ETimer__Pop
	.long MM_ETimer+714
	.long MI_ETimer+56
	.long ETimer__Push
	.long MM_ETimer+718
	.long MI_ETimer+52
	.long ETimer__Relabel
	.long MM_ETimer+723
	.long MI_ETimer+48
	.long ETimer__New
	.long MM_ETimer+731
	.long MI_ETimer+44
	.zero	4
.byte 42
.byte 148
.byte 4
.byte 37
.byte 4
.byte 4
.byte 4
.byte 37
.byte 2
.byte 1
.byte 4
.byte 41
.byte 26
.byte 100
.byte 3
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/etimer/ETimer.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"ETimer.GCClosure"
	.zero	1
.byte 4
.byte 14
.byte 8
.byte 4
.byte 0
.byte 4
.byte 42
.byte 12
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 7
.byte 8
.byte 16
.byte 225
.byte 244
.byte 142
.byte 154
	.ascii	"ETimer.T"
	.zero	1
	.ascii	"ETimer.T"
	.zero	4
	.local	L_1
	.comm	L_1,1200,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
