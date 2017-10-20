	.file	"Formatter.mc"
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
	.type	 Formatter__New,@function
Formatter__New:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl MM_Formatter+1188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L2
	pushl $2708
	call _m3_fault
	.align 16
.L2:
	movl %esi,(%ebx)
	movl %edi,4(%ebx)
	movl $0,8(%ebx)
	movl $0,268(%ebx)
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $512,-4(%ebp)
	pushl %eax
	movl MM_Formatter+1196,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	movl %eax,284(%ebx)
	testl %eax,%eax
	jne .L9
	pushl $2852
	call _m3_fault
	.align 16
.L9:
	movl 4(%eax),%eax
	movl %eax,288(%ebx)
	movl $0,292(%ebx)
	movl 284(%ebx),%eax
	testl %eax,%eax
	jne .L13
	pushl $2900
	call _m3_fault
	.align 16
.L13:
	movl 4(%eax),%eax
	movl %eax,300(%ebx)
	movl $0,296(%ebx)
	movl $0,304(%ebx)
	movl $0,308(%ebx)
	movl $0,312(%ebx)
	movl $0,316(%ebx)
	movl MM_Formatter+1204,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	addl $4,%esp
	movl %eax,276(%ebx)
	movl MM_Formatter+1212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	addl $4,%esp
	movl %eax,280(%ebx)
	movb $0,324(%ebx)
	movl MM_Formatter+1220,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebx,8(%eax)
	movl $100000,4(%eax)
	pushl %eax
	movl MI_Thread+148,%eax
	call *%eax
	movl %eax,272(%ebx)
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Formatter__New,.Lfe1-Formatter__New
	.align 16
	.type	 Formatter__UnderlyingWr,@function
Formatter__UnderlyingWr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L24
	pushl $3380
	call _m3_fault
	.align 16
.L24:
	movl (%eax),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Formatter__UnderlyingWr,.Lfe2-Formatter__UnderlyingWr
	.align 16
	.type	 Formatter__Flush,@function
Formatter__Flush:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L26:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L27
	pushl $3476
	call _m3_fault
	.align 16
.L27:
	cmpl $0,268(%ebx)
	jle .L28
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L28:
	movl MM_Formatter+812,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	addl $8,%esp
	movl 308(%ebx),%eax
	pushl %eax
	pushl %ebx
	call Formatter__WaitUntilEmpty
	addl $8,%esp
	movl (%ebx),%eax
	pushl %eax
	movl MI_Wr+80,%eax
	call *%eax
.L31:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Formatter__Flush,.Lfe3-Formatter__Flush
	.align 16
	.type	 Formatter__Close,@function
Formatter__Close:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call Formatter__Flush
	addl $4,%esp
	testl %ebx,%ebx
	jne .L33
	pushl $3620
	call _m3_fault
	.align 16
.L33:
	movl 272(%ebx),%eax
	pushl %eax
	movl MI_Thread+204,%eax
	call *%eax
	addl $4,%esp
	movl 272(%ebx),%eax
	pushl %eax
	movl MI_Thread+152,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Formatter__Close,.Lfe4-Formatter__Close
	.align 16
	.type	 Formatter__Group,@function
Formatter__Group:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L37:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L38
	pushl $3716
	call _m3_fault
	.align 16
.L38:
	cmpl $0,268(%ebx)
	jle .L39
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L39:
	movl MM_Formatter+764,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L40:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Formatter__Group,.Lfe5-Formatter__Group
	.align 16
	.type	 Formatter__Begin,@function
Formatter__Begin:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
.L42:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L43
	pushl $3828
	call _m3_fault
	.align 16
.L43:
	cmpl $0,268(%ebx)
	jle .L44
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L44:
	movl MM_Formatter+768,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %edi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L45:
	movl -12(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Formatter__Begin,.Lfe6-Formatter__Begin
	.align 16
	.type	 Formatter__End,@function
Formatter__End:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L47:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L48
	pushl $3956
	call _m3_fault
	.align 16
.L48:
	cmpl $0,268(%ebx)
	jle .L49
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L49:
	movl MM_Formatter+808,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L50:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Formatter__End,.Lfe7-Formatter__End
	.align 16
	.type	 Formatter__PutChar,@function
Formatter__PutChar:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L52:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %eax,%eax
	movb 12(%ebp),%al
	cmpl $10,%eax
	jne .L53
	pushl $0
	pushl $-2147483648
	pushl %ebx
	call Formatter__NewLine
	jmp .L64
	.align 16
.L53:
	cmpl $32,%eax
	jne .L55
	testl %ebx,%ebx
	jne .L56
	pushl $4100
	call _m3_fault
	.align 16
.L56:
	cmpl $0,268(%ebx)
	jle .L57
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L57:
	movl L_2+128,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	jmp .L64
	.align 16
.L55:
	testl %ebx,%ebx
	jne .L58
	pushl $4148
	call _m3_fault
	.align 16
.L58:
	cmpl $255,268(%ebx)
	jle .L61
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L61:
	movl 268(%ebx),%eax
	cmpl $255,%eax
	jle .L62
	pushl $4161
	call _m3_fault
	.align 16
.L62:
	movb 12(%ebp),%dl
	movb %dl,12(%ebx,%eax)
	incl 268(%ebx)
.L64:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Formatter__PutChar,.Lfe8-Formatter__PutChar
	.align 16
	.type	 Formatter__PutText,@function
Formatter__PutText:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L66:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	cmpb $0,16(%ebp)
	je .L67
	testl %esi,%esi
	jne .L68
	pushl $4292
	call _m3_fault
	.align 16
.L68:
	cmpl $0,268(%esi)
	jle .L69
	pushl %esi
	call Formatter__AddChars
	addl $4,%esp
.L69:
	movl 12(%ebp),%edx
	pushl %edx
	pushl %esi
	call Formatter__AddRef
	jmp .L78
	.align 16
.L67:
	testl %esi,%esi
	jne .L71
	pushl $4340
	call _m3_fault
	.align 16
.L71:
	cmpl $0,268(%esi)
	jle .L72
	pushl %esi
	call Formatter__AddChars
	addl $4,%esp
.L72:
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	xorl %ebx,%ebx
	leal -1(%eax),%edi
	addl $4,%esp
	jmp .L73
	.align 16
.L74:
	pushl %ebx
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	pushl %eax
	pushl %esi
	call Formatter__PutChar
	incl %ebx
	addl $16,%esp
.L73:
	cmpl %edi,%ebx
	jle .L74
	testl %esi,%esi
	jne .L76
	pushl $4404
	call _m3_fault
	.align 16
.L76:
	cmpl $0,268(%esi)
	jle .L78
	pushl %esi
	call Formatter__AddChars
.L78:
	movl -12(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Formatter__PutText,.Lfe9-Formatter__PutText
	.align 16
	.type	 Formatter__Break,@function
Formatter__Break:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L80:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L81
	pushl $4516
	call _m3_fault
	.align 16
.L81:
	cmpl $0,268(%ebx)
	jle .L82
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L82:
	movl MM_Formatter+792,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl MM_Formatter+648(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 20(%ebp),%al
	movl MM_Formatter+536(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L83:
	movl -12(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Formatter__Break,.Lfe10-Formatter__Break
	.align 16
	.type	 Formatter__PartialBreak,@function
Formatter__PartialBreak:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L85:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L86
	pushl $4676
	call _m3_fault
	.align 16
.L86:
	cmpl $0,268(%ebx)
	jle .L87
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L87:
	movl MM_Formatter+796,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl MM_Formatter+536(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L88:
	movl -12(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Formatter__PartialBreak,.Lfe11-Formatter__PartialBreak
	.align 16
	.type	 Formatter__UnitedBreak,@function
Formatter__UnitedBreak:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L90:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L91
	pushl $4820
	call _m3_fault
	.align 16
.L91:
	cmpl $0,268(%ebx)
	jle .L92
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L92:
	movl MM_Formatter+804,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl MM_Formatter+536(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L93:
	movl -12(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Formatter__UnitedBreak,.Lfe12-Formatter__UnitedBreak
	.align 16
	.type	 Formatter__NewLine,@function
Formatter__NewLine:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L95:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L96
	pushl $4964
	call _m3_fault
	.align 16
.L96:
	cmpl $0,268(%ebx)
	jle .L97
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L97:
	movl MM_Formatter+800,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl MM_Formatter+536(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L98:
	movl -12(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Formatter__NewLine,.Lfe13-Formatter__NewLine
	.align 16
	.type	 Formatter__Align,@function
Formatter__Align:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 20(%ebp),%edi
.L100:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L101
	pushl $5188
	call _m3_fault
	.align 16
.L101:
	cmpl $0,268(%ebx)
	jle .L102
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L102:
	movl MM_Formatter+772,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl MM_Formatter+536(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %edi
	call Formatter__NewInt
	addl $32,%esp
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	movl 24(%ebp),%edx
	pushl %edx
	pushl %ebx
	call Formatter__AddRef
.L103:
	movl -12(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Formatter__Align,.Lfe14-Formatter__Align
	.align 16
	.type	 Formatter__NoAlign,@function
Formatter__NoAlign:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L105:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L106
	pushl $5348
	call _m3_fault
	.align 16
.L106:
	cmpl $0,268(%ebx)
	jle .L107
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L107:
	movl MM_Formatter+788,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L108:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Formatter__NoAlign,.Lfe15-Formatter__NoAlign
	.align 16
	.type	 Formatter__Col,@function
Formatter__Col:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 20(%ebp),%edi
.L110:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L111
	pushl $5460
	call _m3_fault
	.align 16
.L111:
	cmpl $0,268(%ebx)
	jle .L112
	pushl %ebx
	call Formatter__AddChars
	addl $4,%esp
.L112:
	movl MM_Formatter+776,%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %esi
	call Formatter__NewInt
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl MM_Formatter+536(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	pushl %edi
	call Formatter__NewInt
	addl $32,%esp
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
.L113:
	movl -12(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Formatter__Col,.Lfe16-Formatter__Col
	.align 16
	.type	 Formatter__AddRef,@function
Formatter__AddRef:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L115:
	movl $MM_Formatter+1236,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %edi,%edi
	testl %ebx,%ebx
	jne .L117
	pushl $5684
	call _m3_fault
	.align 16
.L117:
	movl 308(%ebx),%ecx
	cmpl %ecx,312(%ebx)
	jne .L118
	subl 292(%ebx),%ecx
	jns .L121
	pushl $5713
	call _m3_fault
	.align 16
.L121:
	pushl %ecx
	pushl %edi
	pushl %ebx
	call Formatter__Release
	movl %eax,%edi
	addl $12,%esp
	testl %edi,%edi
	jne .L124
	pushl $128
	pushl %edi
	pushl %ebx
	call Formatter__Allocate
	movl %eax,%edi
	addl $12,%esp
.L124:
	movl 292(%ebx),%ecx
	cmpl %ecx,308(%ebx)
	je .L125
	pushl $5776
	call _m3_fault
	.align 16
.L125:
	movl $128,%esi
	cmpl %edi,%esi
	jle .L128
	movl %edi,%esi
.L128:
	addl %esi,%ecx
	jns .L129
	pushl $5793
	call _m3_fault
	.align 16
.L129:
	movl %ecx,312(%ebx)
.L118:
	testl %ebx,%ebx
	jne .L130
	pushl $5876
	call _m3_fault
	.align 16
.L130:
	movl 284(%ebx),%ecx
	testl %ecx,%ecx
	jne .L131
	pushl $5876
	call _m3_fault
	.align 16
.L131:
	movl %ecx,-16(%ebp)
	movl %ebx,%esi
	movl %ebx,%edi
	movl 308(%ebx),%eax
	movl %eax,-24(%ebp)
	movl 288(%ebx),%edx
	movl %edx,-28(%ebp)
	movl -24(%ebp),%eax
	cltd
	idivl -28(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L135
	movl -24(%ebp),%eax
	xorl -28(%ebp),%eax
	jns .L135
	addl -28(%ebp),%ecx
.L135:
	movl -16(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L134
	pushl $5874
	call _m3_fault
	.align 16
.L134:
	movl 308(%esi),%esi
	movl %esi,-24(%ebp)
	movl 288(%edi),%edi
	movl %esi,%eax
	cltd
	idivl %edi
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L136
	movl %esi,%eax
	xorl %edi,%eax
	jns .L136
	addl %edi,%ecx
.L136:
	movl -16(%ebp),%eax
	movl (%eax),%eax
	movl 12(%ebp),%edx
	movl %edx,(%eax,%ecx,4)
	testl %ebx,%ebx
	jne .L138
	pushl $5892
	call _m3_fault
	.align 16
.L138:
	movl 308(%ebx),%ecx
	incl %ecx
	movl %ecx,308(%ebx)
	cmpl %ecx,312(%ebx)
	je .L144
	movl 12(%ebp),%eax
	cmpl %eax,MM_Formatter+812
	jne .L153
.L144:
	subl 292(%ebx),%ecx
	jns .L145
	pushl $5937
	call _m3_fault
	.align 16
.L145:
	pushl %ecx
	pushl $0
	pushl %ebx
	call Formatter__Release
	movl %eax,%edi
	addl $12,%esp
	movl 292(%ebx),%ecx
	cmpl %ecx,308(%ebx)
	je .L148
	pushl $5952
	call _m3_fault
	.align 16
.L148:
	movl $128,%esi
	cmpl %edi,%esi
	jle .L151
	movl %edi,%esi
.L151:
	addl %esi,%ecx
	jns .L152
	pushl $5969
	call _m3_fault
	.align 16
.L152:
	movl %ecx,312(%ebx)
.L153:
	movl -12(%ebp),%eax
	leal -40(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Formatter__AddRef,.Lfe17-Formatter__AddRef
	.align 16
	.type	 Formatter__AddChars,@function
Formatter__AddChars:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L155:
	movl $MM_Formatter+1228,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L156
	pushl $6068
	call _m3_fault
	.align 16
.L156:
	movl 268(%ebx),%eax
	cmpl $256,%eax
	jle .L157
	pushl $6065
	call _m3_fault
	.align 16
.L157:
	movl %eax,-16(%ebp)
	leal 12(%ebx),%edx
	movl %edx,-20(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	call Formatter__AddRef
	movl $0,268(%ebx)
.L160:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Formatter__AddChars,.Lfe18-Formatter__AddChars
	.align 16
	.type	 Formatter__Release,@function
Formatter__Release:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%esi
	cmpb $0,12(%ebp)
	sete %dl
	movb %dl,-16(%ebp)
	testl %ebx,%ebx
	jne .L164
	pushl $6548
	call _m3_fault
	.align 16
.L164:
	movl 276(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L165:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L167
	pushl $6564
	call _m3_fault
	.align 16
.L167:
	xorl %ecx,%ecx
	movb 12(%ebp),%cl
	leal 300(%ebx,%ecx,4),%eax
	addl %esi,292(%ebx,%ecx,4)
	movl (%eax),%edi
	subl %esi,%edi
	jns .L169
	pushl $6577
	call _m3_fault
	.align 16
.L169:
	movl %edi,(%eax)
	xorl %eax,%eax
	movb -16(%ebp),%al
	sall $2,%eax
	addl $300,%eax
	addl %esi,(%eax,%ebx)
	movl 300(%ebx,%ecx,4),%esi
	pushl %ecx
	pushl %ebx
	call Formatter__CheckForFailure
	addl $8,%esp
.L172:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	pushl %ebx
	call Formatter__Changed
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Formatter__Release,.Lfe19-Formatter__Release
	.align 16
	.type	 Formatter__Allocate,@function
Formatter__Allocate:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %ebx,%ebx
	jne .L174
	pushl $6932
	call _m3_fault
	.align 16
.L174:
	movl 276(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L175:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L176
	pushl $6948
	call _m3_fault
	.align 16
.L176:
	xorl %eax,%eax
	movb 12(%ebp),%al
	cmpl %esi,300(%ebx,%eax,4)
	jge .L177
	cmpb $0,324(%ebx)
	jne .L177
	incl 320(%ebx)
	jmp .L180
	.align 16
.L181:
	cmpl $2,320(%ebx)
	jne .L185
	pushl %ebx
	call Formatter__Expand
	addl $4,%esp
.L185:
	movl 280(%ebx),%eax
	pushl %eax
	movl 276(%ebx),%eax
	pushl %eax
	movl MI_Thread+212,%eax
	call *%eax
	addl $8,%esp
.L180:
	testl %ebx,%ebx
	jne .L186
	pushl $6980
	call _m3_fault
	.align 16
.L186:
	xorl %eax,%eax
	movb 12(%ebp),%al
	cmpl %esi,300(%ebx,%eax,4)
	jge .L190
	cmpb $0,324(%ebx)
	je .L181
.L190:
	movl 320(%ebx),%eax
	decl %eax
	jns .L191
	pushl $7041
	call _m3_fault
	.align 16
.L191:
	movl %eax,320(%ebx)
.L177:
	movzbl 12(%ebp),%esi
	pushl %esi
	pushl %ebx
	call Formatter__CheckForFailure
	addl $8,%esp
	testl %ebx,%ebx
	jne .L192
	pushl $7092
	call _m3_fault
	.align 16
.L192:
	movl 300(%ebx,%esi,4),%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L193:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Formatter__Allocate,.Lfe20-Formatter__Allocate
	.align 16
	.type	 Formatter__Expand,@function
Formatter__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L195:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %esi,%esi
	jne .L196
	pushl $7268
	call _m3_fault
	.align 16
.L196:
	cmpl $2,320(%esi)
	je .L198
	pushl $7264
	call _m3_fault
	.align 16
.L198:
	movl 288(%esi),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,%edi
	addl %ecx,%edi
	leal -20(%ebp),%eax
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl %edi,-12(%ebp)
	pushl %eax
	movl MM_Formatter+1196,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-28(%ebp)
	addl $8,%esp
	movl 296(%esi),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jge .L200
	pushl $7361
	call _m3_fault
	.align 16
.L200:
	movl %eax,%ebx
	movl 296(%esi),%eax
	pushl %eax
	pushl %edi
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jge .L202
	pushl $7377
	call _m3_fault
	.align 16
.L202:
	movl %eax,%edx
	movl $0,-40(%ebp)
	movl -24(%ebp),%ecx
	decl %ecx
	movl %ecx,-32(%ebp)
	jmp .L203
	.align 16
.L204:
	cmpl $0,-28(%ebp)
	jne .L205
	pushl $7412
	call _m3_fault
	.align 16
.L205:
	movl -28(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L206
	pushl $7410
	call _m3_fault
	.align 16
.L206:
	movl (%eax),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-36(%ebp)
	testl %esi,%esi
	jne .L207
	pushl $7412
	call _m3_fault
	.align 16
.L207:
	movl 284(%esi),%eax
	testl %eax,%eax
	jne .L208
	pushl $7412
	call _m3_fault
	.align 16
.L208:
	cmpl %ebx,4(%eax)
	ja .L209
	pushl $7410
	call _m3_fault
	.align 16
.L209:
	movl (%eax),%eax
	movl -36(%ebp),%ecx
	movl (%eax,%ebx,4),%eax
	movl %eax,(%ecx)
	incl %ebx
	cmpl %ebx,-24(%ebp)
	jne .L210
	xorl %ebx,%ebx
.L210:
	incl %edx
	cmpl %edi,%edx
	jne .L211
	xorl %edx,%edx
.L211:
	incl -40(%ebp)
.L203:
	movl -32(%ebp),%ecx
	cmpl %ecx,-40(%ebp)
	jle .L204
	testl %esi,%esi
	jne .L213
	pushl $7508
	call _m3_fault
	.align 16
.L213:
	movl -28(%ebp),%ecx
	movl %ecx,284(%esi)
	testl %edi,%edi
	jge .L215
	pushl $7521
	call _m3_fault
	.align 16
.L215:
	movl %edi,288(%esi)
	movl %edi,%eax
	subl -24(%ebp),%eax
	addl 300(%esi),%eax
	jns .L217
	pushl $7537
	call _m3_fault
	.align 16
.L217:
	movl %eax,300(%esi)
	pushl %esi
	call Formatter__Changed
.L218:
	movl -8(%ebp),%eax
	leal -52(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Formatter__Expand,.Lfe21-Formatter__Expand
	.align 16
	.type	 Formatter__Changed,@function
Formatter__Changed:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L220
	pushl $7652
	call _m3_fault
	.align 16
.L220:
	movl 280(%eax),%eax
	pushl %eax
	movl MI_Thread+168,%eax
	call *%eax
	movl MI_Scheduler+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Formatter__Changed,.Lfe22-Formatter__Changed
	.align 16
	.type	 Formatter__WaitUntilEmpty,@function
Formatter__WaitUntilEmpty:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	jne .L222
	pushl $7796
	call _m3_fault
	.align 16
.L222:
	movl 276(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L223:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	jmp .L224
	.align 16
.L225:
	movl 280(%ebx),%eax
	pushl %eax
	movl 276(%ebx),%eax
	pushl %eax
	movl MI_Thread+156,%eax
	call *%eax
	addl $8,%esp
.L224:
	testl %ebx,%ebx
	jne .L228
	pushl $7812
	call _m3_fault
	.align 16
.L228:
	cmpl %esi,296(%ebx)
	jge .L231
	cmpb $0,324(%ebx)
	je .L225
.L231:
	pushl $0
	pushl %ebx
	call Formatter__CheckForFailure
	addl $8,%esp
.L232:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Formatter__WaitUntilEmpty,.Lfe23-Formatter__WaitUntilEmpty
	.align 16
	.type	 Formatter__SetFailure,@function
Formatter__SetFailure:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	jne .L234
	pushl $8084
	call _m3_fault
	.align 16
.L234:
	movl 276(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L235:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L236
	pushl $8100
	call _m3_fault
	.align 16
.L236:
	movb $1,324(%ebx)
	movl %esi,328(%ebx)
.L238:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	pushl %ebx
	call Formatter__Changed
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Formatter__SetFailure,.Lfe24-Formatter__SetFailure
	.align 16
	.type	 Formatter__CheckForFailure,@function
Formatter__CheckForFailure:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,12(%ebp)
	jne .L239
	testl %eax,%eax
	jne .L241
	pushl $8228
	call _m3_fault
	.align 16
.L241:
	cmpb $0,324(%eax)
	je .L239
	movl 328(%eax),%edx
	testl %edx,%edx
	je .L243
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_Formatter+1252
	jg .L244
	movl MM_Formatter+1248,%eax
	cmpl %ecx,4(%eax)
	jge .L243
.L244:
	pushl $8245
	call _m3_fault
	.align 16
.L243:
	pushl %edx
	pushl $MI_Wr+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L239:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Formatter__CheckForFailure,.Lfe25-Formatter__CheckForFailure
	.align 16
	.type	 Formatter__Probe,@function
Formatter__Probe:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	jne .L246
	pushl $8612
	call _m3_fault
	.align 16
.L246:
	cmpl %esi,316(%ebx)
	jg .L245
	movl %esi,%eax
	subl 296(%ebx),%eax
	incl %eax
	jns .L249
	pushl $8641
	call _m3_fault
	.align 16
.L249:
	pushl %eax
	pushl $1
	pushl %ebx
	call Formatter__Allocate
	addl $12,%esp
	addl 296(%ebx),%eax
	movl %eax,316(%ebx)
	cmpl %esi,%eax
	jge .L245
	pushl $8688
	call _m3_fault
	.align 16
.L245:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Formatter__Probe,.Lfe26-Formatter__Probe
	.align 16
	.type	 Formatter__Get,@function
Formatter__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
.L255:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L256
	pushl $8820
	call _m3_fault
	.align 16
.L256:
	movl 284(%ecx),%eax
	testl %eax,%eax
	jne .L257
	pushl $8820
	call _m3_fault
	.align 16
.L257:
	movl %eax,%edi
	movl %ecx,%esi
	movl %ebx,%eax
	movl 288(%esi),%edx
	movl %edx,-12(%ebp)
	cltd
	idivl -12(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L260
	movl -12(%ebp),%eax
	xorl %ebx,%eax
	jns .L260
	addl -12(%ebp),%ecx
.L260:
	cmpl %ecx,4(%edi)
	ja .L259
	pushl $8818
	call _m3_fault
	.align 16
.L259:
	movl 288(%esi),%esi
	movl %ebx,%eax
	cltd
	idivl %esi
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L261
	movl %ebx,%eax
	xorl %esi,%eax
	jns .L261
	addl %esi,%ecx
.L261:
	movl (%edi),%eax
	movl (%eax,%ecx,4),%eax
.L262:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Formatter__Get,.Lfe27-Formatter__Get
	.align 16
	.type	 Formatter__GetB,@function
Formatter__GetB:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
.L264:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L265
	pushl $8916
	call _m3_fault
	.align 16
.L265:
	movl 284(%ecx),%eax
	testl %eax,%eax
	jne .L266
	pushl $8916
	call _m3_fault
	.align 16
.L266:
	movl %eax,%edi
	movl %ecx,%esi
	movl %ebx,%eax
	movl 288(%esi),%edx
	movl %edx,-12(%ebp)
	cltd
	idivl -12(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L269
	movl -12(%ebp),%eax
	xorl %ebx,%eax
	jns .L269
	addl -12(%ebp),%ecx
.L269:
	cmpl %ecx,4(%edi)
	ja .L268
	pushl $8914
	call _m3_fault
	.align 16
.L268:
	movl 288(%esi),%esi
	movl %ebx,%eax
	cltd
	idivl %esi
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L270
	movl %ebx,%eax
	xorl %esi,%eax
	jns .L270
	addl %esi,%ecx
.L270:
	movl (%edi),%eax
	movl (%eax,%ecx,4),%ecx
	testl %ecx,%ecx
	je .L271
	movl -4(%ecx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1260
	je .L271
	pushl $8917
	call _m3_fault
	.align 16
.L271:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L272
	pushl $8916
	call _m3_fault
	.align 16
.L272:
	xorl %eax,%eax
	movb (%ecx),%al
.L273:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Formatter__GetB,.Lfe28-Formatter__GetB
	.align 16
	.type	 Formatter__GetI,@function
Formatter__GetI:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
.L275:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L276
	pushl $9012
	call _m3_fault
	.align 16
.L276:
	movl 284(%ecx),%eax
	testl %eax,%eax
	jne .L277
	pushl $9012
	call _m3_fault
	.align 16
.L277:
	movl %eax,%edi
	movl %ecx,%esi
	movl %ebx,%eax
	movl 288(%esi),%edx
	movl %edx,-12(%ebp)
	cltd
	idivl -12(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L280
	movl -12(%ebp),%eax
	xorl %ebx,%eax
	jns .L280
	addl -12(%ebp),%ecx
.L280:
	cmpl %ecx,4(%edi)
	ja .L279
	pushl $9010
	call _m3_fault
	.align 16
.L279:
	movl 288(%esi),%esi
	movl %ebx,%eax
	cltd
	idivl %esi
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L281
	movl %ebx,%eax
	xorl %esi,%eax
	jns .L281
	addl %esi,%ecx
.L281:
	movl (%edi),%eax
	movl (%eax,%ecx,4),%ecx
	testl %ecx,%ecx
	je .L282
	movl -4(%ecx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1268
	je .L282
	pushl $9013
	call _m3_fault
	.align 16
.L282:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L283
	pushl $9012
	call _m3_fault
	.align 16
.L283:
	movl (%ecx),%eax
.L284:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Formatter__GetI,.Lfe29-Formatter__GetI
	.align 16
	.type	 Formatter__GetBreakType,@function
Formatter__GetBreakType:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
.L286:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L287
	pushl $9108
	call _m3_fault
	.align 16
.L287:
	movl 284(%ecx),%eax
	testl %eax,%eax
	jne .L288
	pushl $9108
	call _m3_fault
	.align 16
.L288:
	movl %eax,%edi
	movl %ecx,%esi
	movl %ebx,%eax
	movl 288(%esi),%edx
	movl %edx,-12(%ebp)
	cltd
	idivl -12(%ebp)
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L291
	movl -12(%ebp),%eax
	xorl %ebx,%eax
	jns .L291
	addl -12(%ebp),%ecx
.L291:
	cmpl %ecx,4(%edi)
	ja .L290
	pushl $9106
	call _m3_fault
	.align 16
.L290:
	movl 288(%esi),%esi
	movl %ebx,%eax
	cltd
	idivl %esi
	movl %edx,%ecx
	testl %ecx,%ecx
	je .L292
	movl %ebx,%eax
	xorl %esi,%eax
	jns .L292
	addl %esi,%ecx
.L292:
	movl (%edi),%eax
	movl (%eax,%ecx,4),%ecx
	testl %ecx,%ecx
	je .L293
	movl -4(%ecx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1276
	je .L293
	pushl $9109
	call _m3_fault
	.align 16
.L293:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	testl %ecx,%ecx
	jne .L294
	pushl $9108
	call _m3_fault
	.align 16
.L294:
	xorl %eax,%eax
	movb (%ecx),%al
.L295:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Formatter__GetBreakType,.Lfe30-Formatter__GetBreakType
	.align 16
	.type	 Formatter__PeekOp,@function
Formatter__PeekOp:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call Formatter__Peek
	movl %eax,%ecx
	addl $8,%esp
	testl %ecx,%ecx
	je .L303
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formatter+1284
	jg .L298
	movl MM_Formatter+1280,%eax
	cmpl %edx,4(%eax)
	jge .L299
.L298:
	cmpl %edx,MM_Formatter+1292
	je .L300
	cmpl %edx,MM_Formatter+1300
	je .L301
	jmp .L302
	.align 16
.L303:
.L299:
	movl MM_Formatter+784,%eax
	jmp .L305
	.align 16
.L300:
	movl %ecx,%eax
	jmp .L305
	.align 16
.L301:
	movl MM_Formatter+780,%eax
	jmp .L305
	.align 16
.L302:
	pushl $9312
	call _m3_fault
	.align 16
.L305:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 Formatter__PeekOp,.Lfe31-Formatter__PeekOp
	.align 16
	.type	 Formatter__Peek,@function
Formatter__Peek:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %ebx
	pushl %esi
	call Formatter__Probe
	pushl %ebx
	pushl %esi
	call Formatter__Get
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 Formatter__Peek,.Lfe32-Formatter__Peek
	.align 16
	.type	 Formatter__PrintTop,@function
Formatter__PrintTop:
	pushl %ebp
	movl %esp,%ebp
	subl $196,%esp
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
.L308:
	movl $MM_Formatter+1236,-188(%ebp)
	movl $0,-192(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-196(%ebp)
	leal -196(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -176(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L309
	movl %eax,-4(%ebp)
	movl %eax,-16(%ebp)
	movl %eax,-12(%ebp)
	movl %eax,-8(%ebp)
.L310:
	movl MM_Formatter+812,%eax
	pushl %eax
	pushl $2147483647
	leal -16(%ebp),%eax
	pushl %eax
	pushl $1
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	pushl %eax
	call Formatter__PrintUntil
	addl $20,%esp
	jmp .L310
	.align 16
.L309:
	cmpl $MI_Thread+184,-184(%ebp)
	je .L313
	movl -180(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	pushl %eax
	call Formatter__SetFailure
.L313:
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 Formatter__PrintTop,.Lfe33-Formatter__PrintTop
	.align 16
	.type	 Formatter__Print,@function
Formatter__Print:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movb $0,-4(%ebp)
	cmpb $0,12(%ebp)
	je .L316
	cmpl $2147483647,20(%ebp)
	je .L316
	pushl $10208
	call _m3_fault
	.align 16
.L316:
	movl 16(%ebp),%eax
	movl 12(%eax),%ebx
	pushl %ebx
	pushl %edi
	call Formatter__Probe
	pushl %ebx
	pushl %edi
	call Formatter__Get
	movl %eax,%esi
	addl $16,%esp
	testl %esi,%esi
	je .L319
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formatter+1284
	jg .L318
	movl MM_Formatter+1280,%eax
	cmpl %edx,4(%eax)
	jge .L319
.L318:
	cmpl %edx,MM_Formatter+1292
	je .L324
	cmpl %edx,MM_Formatter+1300
	je .L321
	jmp .L322
	.align 16
.L319:
	movl 16(%ebp),%eax
	incl %ebx
	movl %ebx,12(%eax)
	pushl %esi
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edi
	call Formatter__DoPrintText
	movb %al,%bl
	addl $16,%esp
	jmp .L323
	.align 16
.L324:
	movl 16(%ebp),%edx
	movl 4(%esi),%eax
	incl %eax
	addl %ebx,%eax
	movl %eax,12(%edx)
	movl 4(%esi),%eax
	testl %eax,%eax
	jle .L326
	addl %ebx,%eax
	pushl %eax
	pushl %edi
	call Formatter__Probe
	addl $8,%esp
.L326:
	movl (%esi),%edx
	leal 1(%ebx),%eax
	pushl %eax
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edi
	call *%edx
	movb %al,%bl
	addl $20,%esp
	cmpl %esi,MM_Formatter+812
	sete %cl
	movb %cl,-4(%ebp)
	jmp .L323
	.align 16
.L321:
	movl 16(%ebp),%eax
	incl %ebx
	movl %ebx,12(%eax)
	pushl %esi
	movl 20(%ebp),%ecx
	pushl %ecx
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edi
	call Formatter__DoPrintChar
	movb %al,%bl
	addl $20,%esp
	jmp .L323
	.align 16
.L322:
	pushl $10496
	call _m3_fault
	.align 16
.L323:
	cmpb $1,12(%ebp)
	jne .L327
	cmpb $0,-4(%ebp)
	jne .L328
	testl %edi,%edi
	jne .L329
	pushl $10532
	call _m3_fault
	.align 16
.L329:
	movl 16(%ebp),%edx
	movl 296(%edi),%eax
	addl $128,%eax
	cmpl %eax,12(%edx)
	jl .L327
.L328:
	testl %edi,%edi
	jne .L330
	pushl $10580
	call _m3_fault
	.align 16
.L330:
	movl 16(%ebp),%edx
	movl 296(%edi),%eax
	movl 12(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jge .L331
	pushl $10577
	call _m3_fault
	.align 16
.L331:
	pushl %eax
	pushl $1
	pushl %edi
	call Formatter__Release
	movl %eax,%esi
	addl $12,%esp
	movl 16(%ebp),%eax
	movl 296(%edi),%edx
	cmpl %edx,12(%eax)
	je .L335
	pushl $10608
	call _m3_fault
	.align 16
.L335:
	addl %esi,%edx
	movl %edx,316(%edi)
.L327:
	leal -16(%ebp),%esp
	xorl %eax,%eax
	movb %bl,%al
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 Formatter__Print,.Lfe34-Formatter__Print
	.align 16
	.type	 Formatter__PrintRest,@function
Formatter__PrintRest:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%ebp),%edi
	movl 24(%ebp),%ebx
.L337:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl %esi
	call Formatter__PeekOp
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L338
	pushl $10948
	call _m3_fault
	.align 16
.L338:
	testl %ebx,%ebx
	jne .L339
	pushl $10948
	call _m3_fault
	.align 16
.L339:
	movl 8(%ebx),%eax
	cmpl %eax,8(%edx)
	jg .L341
	xorl %eax,%eax
	jmp .L343
	.align 16
.L341:
	pushl %edi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__Print
	addl $16,%esp
	testl %eax,%eax
	je .L337
	movl $1,%eax
.L343:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 Formatter__PrintRest,.Lfe35-Formatter__PrintRest
	.align 16
	.type	 Formatter__PrintUntil,@function
Formatter__PrintUntil:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%ebp),%edi
	movl 24(%ebp),%ebx
.L345:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl %esi
	call Formatter__PeekOp
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L346
	pushl $11316
	call _m3_fault
	.align 16
.L346:
	testl %ebx,%ebx
	jne .L347
	pushl $11316
	call _m3_fault
	.align 16
.L347:
	movl 8(%ebx),%eax
	cmpl %eax,8(%edx)
	jle .L349
	pushl %edi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__Print
	addl $16,%esp
	testl %eax,%eax
	je .L345
	movl $1,%eax
	jmp .L355
	.align 16
.L349:
	cmpl %edx,MM_Formatter+812
	jne .L351
	cmpl %edx,%ebx
	jne .L353
	pushl %edi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__Print
	jmp .L353
	.align 16
.L351:
	cmpl %ebx,%edx
	je .L354
	pushl $11456
	call _m3_fault
	.align 16
.L354:
	movl 16(%ebp),%eax
	incl 12(%eax)
.L353:
	xorl %eax,%eax
.L355:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 Formatter__PrintUntil,.Lfe36-Formatter__PrintUntil
	.align 16
	.type	 Formatter__PrintGroup,@function
Formatter__PrintGroup:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Formatter+808,%eax
	movl 8(%ebp),%ecx
	movl 20(%ebp),%edx
	pushl %eax
	pushl %edx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call Formatter__PrintUntil
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 Formatter__PrintGroup,.Lfe37-Formatter__PrintGroup
	.align 16
	.type	 Formatter__PrintBegin,@function
Formatter__PrintBegin:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 24(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call Formatter__GetI
	movl %eax,%esi
	incl %ebx
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call Formatter__GetI
	addl $16,%esp
	testl %eax,%eax
	jge .L358
	pushl $12161
	call _m3_fault
	.align 16
.L358:
	leal -12(%ebp),%edi
	pushl %edi
	pushl %eax
	pushl %esi
	leal 20(%ebp),%esi
	pushl %esi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call Formatter__EnterBegin
	movl MM_Formatter+808,%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call Formatter__PrintUntil
	addl $48,%esp
	movb %al,-16(%ebp)
	pushl %edi
	pushl %esi
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call Formatter__ExitBegin
	leal -28(%ebp),%esp
	xorl %eax,%eax
	movb -16(%ebp),%al
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 Formatter__PrintBegin,.Lfe38-Formatter__PrintBegin
	.align 16
	.type	 Formatter__EnterBegin,@function
Formatter__EnterBegin:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 20(%ebp),%edi
	movl 24(%ebp),%esi
	movl 28(%ebp),%ebx
	testl %ecx,%ecx
	jne .L360
	pushl $12436
	call _m3_fault
	.align 16
.L360:
	movl 32(%ebp),%edx
	movl 8(%ecx),%eax
	movl %eax,(%edx)
	movl 32(%ebp),%edx
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 16(%ebp),%eax
	movl (%eax),%eax
	movl %eax,8(%edx)
	cmpl $2147483646,%ebx
	jg .L362
	movl %ebx,4(%ecx)
.L362:
	cmpl $2147483646,%esi
	jg .L364
	movl 16(%ebp),%edx
	movl 8(%edx),%eax
	addl 4(%edx),%eax
	addl %esi,%eax
	xorl %edx,%edx
	testl %eax,%eax
	jle .L366
	movl %eax,%edx
.L366:
	testl %edx,%edx
	jge .L368
	pushl $12513
	call _m3_fault
	.align 16
.L368:
	movl %edx,8(%ecx)
.L364:
	cmpb $0,12(%ebp)
	jne .L369
	movl 16(%ebp),%eax
	movl (%edi),%edx
	movl (%eax),%eax
	subl %eax,%edx
	xorl %eax,%eax
	testl %edx,%edx
	jle .L370
	movl %edx,%eax
.L370:
	testl %eax,%eax
	jge .L372
	pushl $12545
	call _m3_fault
	.align 16
.L372:
	movl %eax,(%edi)
.L369:
	movl 16(%ebp),%eax
	leal -12(%ebp),%esp
	movl $0,(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 Formatter__EnterBegin,.Lfe39-Formatter__EnterBegin
	.align 16
	.type	 Formatter__ExitBegin,@function
Formatter__ExitBegin:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 24(%ebp),%eax
	movl 16(%ebp),%edx
	movl 8(%eax),%eax
	addl (%edx),%eax
	jns .L374
	pushl $12737
	call _m3_fault
	.align 16
.L374:
	movl %eax,(%edx)
	testl %ecx,%ecx
	jne .L375
	pushl $12756
	call _m3_fault
	.align 16
.L375:
	movl 24(%ebp),%edx
	movl (%edx),%eax
	testl %eax,%eax
	jge .L376
	pushl $12753
	call _m3_fault
	.align 16
.L376:
	movl %eax,8(%ecx)
	movl 4(%edx),%eax
	testl %eax,%eax
	jge .L378
	pushl $12769
	call _m3_fault
	.align 16
.L378:
	movl %eax,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 Formatter__ExitBegin,.Lfe40-Formatter__ExitBegin
	.align 16
	.type	 Formatter__PrintEnd,@function
Formatter__PrintEnd:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L380:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_Formatter+356
	movl MI_RTHooks+52,%eax
	call *%eax
.L381:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 Formatter__PrintEnd,.Lfe41-Formatter__PrintEnd
	.align 16
	.type	 Formatter__PrintFlush,@function
Formatter__PrintFlush:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe42:
	.size	 Formatter__PrintFlush,.Lfe42-Formatter__PrintFlush
	.align 16
	.type	 Formatter__PrintText,@function
Formatter__PrintText:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Formatter__Get
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L384
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1284
	je .L384
	pushl $13477
	call _m3_fault
	.align 16
.L384:
	pushl %edx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ebx
	call Formatter__DoPrintText
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 Formatter__PrintText,.Lfe43-Formatter__PrintText
	.align 16
	.type	 Formatter__DoPrintText,@function
Formatter__DoPrintText:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%eax
	movl 20(%ebp),%esi
	cmpl $0,8(%eax)
	jle .L386
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ebx
	call Formatter__DoTrailingBlanks
	addl $12,%esp
.L386:
	cmpb $1,12(%ebp)
	jne .L387
	testl %ebx,%ebx
	jne .L388
	pushl $13652
	call _m3_fault
	.align 16
.L388:
	pushl %esi
	movl (%ebx),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L387:
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	addl $4,%esp
	addl 4(%eax),%edx
	movl %edx,4(%eax)
	xorl %eax,%eax
	cmpb $0,12(%ebp)
	jne .L389
	testl %ebx,%ebx
	jne .L390
	pushl $13684
	call _m3_fault
	.align 16
.L390:
	cmpl %edx,4(%ebx)
	jge .L389
	movl $1,%eax
.L389:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 Formatter__DoPrintText,.Lfe44-Formatter__DoPrintText
	.align 16
	.type	 Formatter__PrintChar,@function
Formatter__PrintChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebp),%esi
	movl 24(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Formatter__Get
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L392
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1300
	je .L392
	pushl $13861
	call _m3_fault
	.align 16
.L392:
	pushl %edx
	pushl %esi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ebx
	call Formatter__DoPrintChar
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe45:
	.size	 Formatter__PrintChar,.Lfe45-Formatter__PrintChar
	.align 16
	.type	 Formatter__DoPrintChar,@function
Formatter__DoPrintChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 24(%ebp),%ebx
	testl %ebx,%ebx
	jne .L394
	pushl $14036
	call _m3_fault
	.align 16
.L394:
	xorl %eax,%eax
	movb (%ebx),%al
	cmpl $10,%eax
	jne .L396
	pushl $14048
	call _m3_fault
	.align 16
.L396:
	cmpl $32,%eax
	jne .L397
	movl 16(%ebp),%eax
	incl 8(%eax)
	xorl %eax,%eax
	jmp .L404
	.align 16
.L397:
	movl 16(%ebp),%eax
	cmpl $0,8(%eax)
	jle .L398
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__DoTrailingBlanks
	addl $12,%esp
.L398:
	cmpb $1,12(%ebp)
	jne .L399
	testl %esi,%esi
	jne .L401
	pushl $14164
	call _m3_fault
	.align 16
.L401:
	xorl %eax,%eax
	movb (%ebx),%al
	pushl %eax
	movl (%esi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
.L399:
	movl 16(%ebp),%eax
	movl 4(%eax),%edx
	incl %edx
	movl %edx,4(%eax)
	xorl %eax,%eax
	cmpb $0,12(%ebp)
	jne .L402
	testl %esi,%esi
	jne .L403
	pushl $14196
	call _m3_fault
	.align 16
.L403:
	cmpl %edx,4(%esi)
	jge .L402
	movl $1,%eax
.L402:
.L404:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 Formatter__DoPrintChar,.Lfe46-Formatter__DoPrintChar
	.align 16
	.type	 Formatter__DoTrailingBlanks,@function
Formatter__DoTrailingBlanks:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %edx,%edx
	movb 12(%ebp),%dl
	cmpl $1,%edx
	jne .L406
	movl 16(%ebp),%eax
	movl %edx,%ebx
	movl 8(%eax),%esi
	jmp .L407
	.align 16
.L408:
	testl %edi,%edi
	jne .L409
	pushl $14372
	call _m3_fault
	.align 16
.L409:
	pushl $32
	movl (%edi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L407:
	cmpl %esi,%ebx
	jle .L408
.L406:
	movl 16(%ebp),%eax
	leal -12(%ebp),%esp
	movl 8(%eax),%edx
	addl %edx,4(%eax)
	movl $0,8(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 Formatter__DoTrailingBlanks,.Lfe47-Formatter__DoTrailingBlanks
	.align 16
	.type	 Formatter__PrintBreak,@function
Formatter__PrintBreak:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 24(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call Formatter__GetI
	movl %eax,%edi
	movl %edi,-4(%ebp)
	movl 24(%ebp),%eax
	incl %eax
	pushl %eax
	pushl %esi
	call Formatter__GetBreakType
	movl 24(%ebp),%ecx
	addl $2,%ecx
	pushl %ecx
	movb %al,%bl
	pushl %esi
	call Formatter__GetB
	movb %al,%dl
	addl $24,%esp
	testb %bl,%bl
	je .L412
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	xorl %eax,%eax
	movb %dl,%al
	pushl %eax
	pushl %edi
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__DoOptimalBreak
	jmp .L413
	.align 16
.L412:
	xorl %eax,%eax
	movb %dl,%al
	pushl %eax
	movl -4(%ebp),%ecx
	pushl %ecx
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__DoNonOptimalBreak
.L413:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe48:
	.size	 Formatter__PrintBreak,.Lfe48-Formatter__PrintBreak
	.align 16
	.type	 Formatter__DoNonOptimalBreak,@function
Formatter__DoNonOptimalBreak:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movb 12(%ebp),%bl
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 16(%ebp),%edx
	movl $0,-4(%ebp)
	movl (%edx),%ecx
	movl %ecx,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	movl MM_Formatter+792,%eax
	pushl %eax
	pushl %ecx
	leal -16(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %esi
	call Formatter__PrintRest
	addl $20,%esp
	testb %al,%al
	jne .L418
	testb %bl,%bl
	jne .L416
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	xorl %eax,%eax
	jmp .L417
	.align 16
.L418:
	xorl %eax,%eax
	movb 28(%ebp),%al
	pushl %eax
	movl 24(%ebp),%edi
	pushl %edi
	movl 20(%ebp),%edi
	pushl %edi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %esi
	call Formatter__DoLine
	addl $24,%esp
	testl %eax,%eax
	je .L416
	movl $1,%eax
	jmp .L417
	.align 16
.L416:
	movl MM_Formatter+792,%eax
	pushl %eax
	movl 20(%ebp),%edi
	pushl %edi
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %esi
	call Formatter__PrintRest
.L417:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe49:
	.size	 Formatter__DoNonOptimalBreak,.Lfe49-Formatter__DoNonOptimalBreak
	.align 16
	.type	 Formatter__DoOptimalBreak,@function
Formatter__DoOptimalBreak:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 16(%ebp),%edx
	movl $0,-4(%ebp)
	movl (%edx),%eax
	movl %eax,-32(%ebp)
	movl 4(%edx),%eax
	movl %eax,-28(%ebp)
	movl 8(%edx),%eax
	movl %eax,-24(%ebp)
	movl 12(%edx),%eax
	movl %eax,-20(%ebp)
	movl MM_Formatter+792,%eax
	pushl %eax
	movl 20(%ebp),%ebx
	pushl %ebx
	leal -32(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %edi
	call Formatter__PrintRest
	movl %eax,%edx
	movb %dl,-36(%ebp)
	addl $20,%esp
	testb %dl,%dl
	jne .L420
	movl 16(%ebp),%edx
	movl (%edx),%eax
	cmpl %eax,-32(%ebp)
	jne .L420
	xorl %ecx,%ecx
	movb 12(%ebp),%cl
	cmpl $1,%ecx
	jne .L421
	movl MM_Formatter+792,%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	pushl %ecx
	pushl %edi
	call Formatter__PrintRest
	movl %eax,%edx
	jmp .L431
	.align 16
.L421:
	movl %eax,(%edx)
	movl -28(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,8(%edx)
	movl -20(%ebp),%eax
	movl %eax,12(%edx)
	xorl %eax,%eax
	jmp .L431
	.align 16
.L420:
	movl 16(%ebp),%edx
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	movl $1,-40(%ebp)
	xorl %eax,%eax
	movb 28(%ebp),%al
	pushl %eax
	movl 24(%ebp),%ebx
	pushl %ebx
	movl 20(%ebp),%ebx
	pushl %ebx
	leal -16(%ebp),%esi
	pushl %esi
	pushl $0
	pushl %edi
	call Formatter__DoLine
	movl %eax,%edx
	addl $24,%esp
	testl %edx,%edx
	jne .L422
	movl MM_Formatter+792,%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	pushl %edx
	pushl %edi
	call Formatter__PrintRest
	addl $20,%esp
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
	movl %ebx,-40(%ebp)
.L422:
	movb -40(%ebp),%cl
	movl $1,-40(%ebp)
	cmpb $0,-36(%ebp)
	je .L423
	testb %cl,%cl
	jne .L424
.L423:
	testb %cl,%cl
	jne .L425
	cmpb $0,-36(%ebp)
	jne .L424
	movl -16(%ebp),%edx
	movl -32(%ebp),%eax
	cmpl %eax,%edx
	jl .L424
	jne .L425
	testl %edi,%edi
	jne .L427
	pushl $15732
	call _m3_fault
	.align 16
.L427:
	movl -12(%ebp),%eax
	cmpl %eax,4(%edi)
	jl .L425
	cmpb $1,32(%ebp)
	je .L424
.L425:
	movl $0,-40(%ebp)
.L424:
	movb -40(%ebp),%al
	xorl %edx,%edx
	movb 12(%ebp),%dl
	cmpl $1,%edx
	jne .L428
	testb %al,%al
	je .L429
	xorl %eax,%eax
	movb 28(%ebp),%al
	pushl %eax
	movl 24(%ebp),%ebx
	pushl %ebx
	movl 20(%ebp),%ebx
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %edi
	call Formatter__DoLine
	jmp .L431
	.align 16
.L429:
	movl MM_Formatter+792,%eax
	pushl %eax
	movl 20(%ebp),%ebx
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %edi
	call Formatter__PrintRest
	jmp .L431
	.align 16
.L428:
	testb %al,%al
	jne .L430
	movl 16(%ebp),%edx
	movl -32(%ebp),%eax
	movl %eax,(%edx)
	movl -28(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,8(%edx)
	movl -20(%ebp),%eax
	movl %eax,12(%edx)
	xorl %eax,%eax
	movb -36(%ebp),%al
	jmp .L431
	.align 16
.L430:
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	xorl %eax,%eax
	movb %cl,%al
.L431:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe50:
	.size	 Formatter__DoOptimalBreak,.Lfe50-Formatter__DoOptimalBreak
	.align 16
	.type	 Formatter__PrintPartialBreak,@function
Formatter__PrintPartialBreak:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 24(%ebp),%ebx
	pushl %ebx
	pushl %esi
	call Formatter__GetI
	incl %ebx
	pushl %ebx
	movl %eax,%edi
	pushl %esi
	call Formatter__GetB
	movb %al,%bl
	xorl %eax,%eax
	movl 16(%ebp),%edx
	addl $16,%esp
	cmpl $0,(%edx)
	jle .L433
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %edi
	movl 20(%ebp),%ecx
	pushl %ecx
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__DoLine
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L433:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe51:
	.size	 Formatter__PrintPartialBreak,.Lfe51-Formatter__PrintPartialBreak
	.align 16
	.type	 Formatter__PrintCol,@function
Formatter__PrintCol:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 24(%ebp),%ebx
	pushl %ebx
	pushl %edi
	call Formatter__GetI
	movl %eax,%esi
	leal 1(%ebx),%eax
	pushl %eax
	pushl %edi
	call Formatter__GetB
	movb %al,-4(%ebp)
	addl $2,%ebx
	pushl %ebx
	pushl %edi
	call Formatter__GetI
	movl %eax,-8(%ebp)
	addl $24,%esp
	cmpb $0,-4(%ebp)
	je .L435
	testl %edi,%edi
	jne .L436
	pushl $16660
	call _m3_fault
	.align 16
.L436:
	addl 8(%edi),%esi
.L435:
	movl 16(%ebp),%edx
	movl 4(%edx),%ebx
	movl 8(%edx),%edi
	leal (%edi,%ebx),%eax
	cmpl %esi,%eax
	jge .L437
	movl %esi,%eax
	subl %ebx,%eax
	jns .L440
	pushl $16689
	call _m3_fault
	.align 16
.L437:
	movl -8(%ebp),%ecx
	leal (%ecx,%edi),%eax
	testl %eax,%eax
	jge .L440
	pushl $16721
	call _m3_fault
	.align 16
.L440:
	movl %eax,8(%edx)
	leal -20(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe52:
	.size	 Formatter__PrintCol,.Lfe52-Formatter__PrintCol
	.align 16
	.type	 Formatter__PrintNewLine,@function
Formatter__PrintNewLine:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 24(%ebp),%ebx
	pushl %ebx
	pushl %esi
	call Formatter__GetI
	incl %ebx
	pushl %ebx
	movl %eax,%edi
	pushl %esi
	call Formatter__GetB
	andl $255,%eax
	pushl %eax
	pushl %edi
	movl 20(%ebp),%edx
	pushl %edx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__DoLine
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe53:
	.size	 Formatter__PrintNewLine,.Lfe53-Formatter__PrintNewLine
	.align 16
	.type	 Formatter__DoLine,@function
Formatter__DoLine:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movb 12(%ebp),%cl
	movl 20(%ebp),%edx
	movl 24(%ebp),%eax
	cmpb $0,28(%ebp)
	jne .L443
	pushl %eax
	pushl %edx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %cl,%al
	pushl %eax
	pushl %ebx
	call Formatter__DoNewLine
	jmp .L444
	.align 16
.L443:
	pushl %eax
	pushl %edx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %cl,%al
	pushl %eax
	pushl %ebx
	call Formatter__DoFreshLine
.L444:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe54:
	.size	 Formatter__DoLine,.Lfe54-Formatter__DoLine
	.align 16
	.type	 Formatter__DoNewLine,@function
Formatter__DoNewLine:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebp),%edi
	cmpb $1,12(%ebp)
	jne .L446
	testl %ebx,%ebx
	jne .L447
	pushl $17492
	call _m3_fault
	.align 16
.L447:
	pushl $10
	movl (%ebx),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
.L446:
	movl 16(%ebp),%ecx
	movl $0,4(%ecx)
	testl %ebx,%ebx
	jne .L448
	pushl $17524
	call _m3_fault
	.align 16
.L448:
	xorl %esi,%esi
	movl 8(%ebx),%eax
	addl %edi,%eax
	movl %esi,%ebx
	testl %eax,%eax
	jle .L449
	movl %eax,%ebx
.L449:
	testl %ebx,%ebx
	jge .L451
	pushl $17521
	call _m3_fault
	.align 16
.L451:
	movl %ebx,8(%ecx)
	incl (%ecx)
	movl %esi,%eax
	cmpb $0,12(%ebp)
	jne .L452
	movl 16(%ebp),%eax
	movl 20(%ebp),%edx
	cmpl %edx,(%eax)
	setg %al
	andl $255,%eax
.L452:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe55:
	.size	 Formatter__DoNewLine,.Lfe55-Formatter__DoNewLine
	.align 16
	.type	 Formatter__DoFreshLine,@function
Formatter__DoFreshLine:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%ebp),%edi
	movl 24(%ebp),%eax
	xorl %ebx,%ebx
	testl %esi,%esi
	jne .L454
	pushl $17748
	call _m3_fault
	.align 16
.L454:
	movl 8(%esi),%edx
	addl %eax,%edx
	movl %ebx,%eax
	testl %edx,%edx
	jle .L455
	movl %edx,%eax
.L455:
	testl %eax,%eax
	jge .L457
	pushl $17745
	call _m3_fault
	.align 16
.L457:
	movl 16(%ebp),%edx
	movl %eax,%ebx
	movl 8(%edx),%eax
	addl 4(%edx),%eax
	cmpl %ebx,%eax
	jle .L458
	cmpb $1,12(%ebp)
	jne .L459
	pushl $10
	movl (%esi),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
.L459:
	movl 16(%ebp),%eax
	movl $0,4(%eax)
	movl %ebx,8(%eax)
	incl (%eax)
.L458:
	xorl %ebx,%ebx
	cmpb $0,12(%ebp)
	jne .L461
	movl 16(%ebp),%edx
	cmpl %edi,(%edx)
	jg .L462
	testl %esi,%esi
	jne .L463
	pushl $17860
	call _m3_fault
	.align 16
.L463:
	movl 4(%esi),%eax
	cmpl %eax,4(%edx)
	jle .L461
.L462:
	movl $1,%ebx
.L461:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe56:
	.size	 Formatter__DoFreshLine,.Lfe56-Formatter__DoFreshLine
	.align 16
	.type	 Formatter__PrintUnitedBreak,@function
Formatter__PrintUnitedBreak:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 24(%ebp),%ebx
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movb $0,-24(%ebp)
	pushl %ebx
	pushl %esi
	call Formatter__GetI
	incl %ebx
	pushl %ebx
	movl %eax,%edi
	pushl %esi
	call Formatter__GetB
	movl %eax,%ebx
	movb %bl,-20(%ebp)
	movl 16(%ebp),%edx
	addl $16,%esp
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
.L465:
	cmpl $0,-16(%ebp)
	jg .L466
	movl MM_Formatter+804,%eax
	pushl %eax
	movl 16(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %esi
	call Formatter__PrintRest
	movl %eax,%ebx
	addl $20,%esp
	testl %ebx,%ebx
	je .L467
.L466:
	movb $1,-24(%ebp)
	jmp .L468
	.align 16
.L467:
	movl -4(%ebp),%eax
	pushl %eax
	pushl %esi
	call Formatter__Peek
	movl %eax,%edx
	addl $8,%esp
	cmpl %edx,MM_Formatter+804
	jne .L468
	addl $3,-4(%ebp)
	jmp .L465
	.align 16
.L468:
	cmpb $0,12(%ebp)
	jne .L471
	movl 16(%ebp),%edx
	movl 20(%ebp),%ecx
	cmpl %ecx,(%edx)
	jl .L471
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	xorl %eax,%eax
	movb -24(%ebp),%al
	jmp .L481
	.align 16
.L471:
	cmpb $0,-24(%ebp)
	je .L472
	xorl %eax,%eax
	movb -20(%ebp),%al
	pushl %eax
	pushl %edi
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__DoLine
	movl %eax,%ebx
	addl $24,%esp
	testl %ebx,%ebx
	jne .L483
.L472:
	movl MM_Formatter+804,%eax
	pushl %eax
	movl 20(%ebp),%ecx
	pushl %ecx
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %esi
	call Formatter__PrintRest
	movl %eax,%ebx
	addl $20,%esp
	testl %ebx,%ebx
	je .L474
.L483:
	movl $1,%eax
	jmp .L481
	.align 16
.L474:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl %esi
	call Formatter__Peek
	movl %eax,%edx
	addl $8,%esp
	cmpl %edx,MM_Formatter+804
	je .L475
	movl %ebx,%eax
	jmp .L481
	.align 16
.L475:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl %esi
	call Formatter__Peek
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	incl %eax
	pushl %eax
	pushl %esi
	call Formatter__Peek
	movl %eax,%edx
	addl $16,%esp
	testl %edx,%edx
	je .L482
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1268
	je .L476
	pushl $18581
	call _m3_fault
	.align 16
.L476:
	testl %edx,%edx
	jne .L477
.L482:
	pushl $18580
	call _m3_fault
	.align 16
.L477:
	movl 16(%ebp),%eax
	movl (%edx),%edi
	movl 12(%eax),%eax
	addl $2,%eax
	pushl %eax
	pushl %esi
	call Formatter__Peek
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L478
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Formatter+1260
	je .L478
	pushl $18597
	call _m3_fault
	.align 16
.L478:
	testl %edx,%edx
	jne .L479
	pushl $18596
	call _m3_fault
	.align 16
.L479:
	movb (%edx),%dl
	movl 16(%ebp),%eax
	movb %dl,-20(%ebp)
	addl $3,12(%eax)
	jmp .L471
	.align 16
.L481:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe57:
	.size	 Formatter__PrintUnitedBreak,.Lfe57-Formatter__PrintUnitedBreak
	.align 16
	.type	 M_Formatter_LINE_1255.0,@function
M_Formatter_LINE_1255.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%edx
	leal -28(%edx),%eax
	pushl %eax
	movl -60(%edx),%edx
	leal 12(%edx),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	xorl %eax,%eax
	movb 4(%edx),%al
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call Formatter__ExitBegin
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe58:
	.size	 M_Formatter_LINE_1255.0,.Lfe58-M_Formatter_LINE_1255.0
	.align 16
	.type	 Formatter__PrintAlign,@function
Formatter__PrintAlign:
	pushl %ebp
	movl %esp,%ebp
	subl $92,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	leal 8(%ebp),%ebx
	movl %ebx,-60(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 24(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__GetI
	movl %eax,-76(%ebp)
	movl 24(%ebp),%eax
	incl %eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__GetB
	movl %eax,%esi
	movl %esi,%ebx
	movb %bl,-72(%ebp)
	movl 24(%ebp),%eax
	addl $2,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__GetI
	movl %eax,-68(%ebp)
	movl 24(%ebp),%ebx
	addl $3,%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__Get
	movl %eax,%ecx
	addl $32,%esp
	testl %ecx,%ecx
	je .L485
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Formatter+1308
	jg .L486
	movl MM_Formatter+1304,%eax
	cmpl %edx,4(%eax)
	jge .L485
.L486:
	pushl $19093
	call _m3_fault
	.align 16
.L485:
	movl %ecx,-64(%ebp)
	movl $M_Formatter_LINE_1255.0,-36(%ebp)
	movl %ebp,-32(%ebp)
.L487:
	movl $3,-40(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-44(%ebp)
	leal -44(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	xorl %edx,%edx
	cmpb $0,-72(%ebp)
	je .L488
	movl 16(%ebp),%eax
	cmpl $0,(%eax)
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L488:
	movb %dl,-88(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L489
	pushl $19140
	call _m3_fault
	.align 16
.L489:
	leal -28(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	pushl $0
	leal 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call Formatter__EnterBegin
	leal -56(%ebp),%esi
	leal -48(%ebp),%ebx
	movl %ebx,-92(%ebp)
	movl %ebx,-56(%ebp)
	movl $1,-52(%ebp)
	movl -76(%ebp),%ebx
	movl %ebx,-48(%ebp)
	pushl %esi
	movl MM_Formatter+1312,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl -92(%ebp),%ebx
	movl %ebx,-56(%ebp)
	movl $1,-52(%ebp)
	movl -76(%ebp),%ebx
	addl $36,%esp
	movl %ebx,-48(%ebp)
	pushl %esi
	movl MM_Formatter+1312,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-80(%ebp)
	addl $8,%esp
	cmpb $0,-88(%ebp)
	je .L490
	movl 16(%ebp),%edx
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	movl MM_Formatter+808,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PrintUntil
	movl %eax,%esi
	addl $20,%esp
	testl %esi,%esi
	jne .L490
	xorl %edx,%edx
	movb 12(%ebp),%dl
	cmpl $1,%edx
	jne .L492
	movl MM_Formatter+808,%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PrintUntil
	movl %eax,%esi
	movl %esi,%ebx
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_Formatter_LINE_1255.0
	xorl %eax,%eax
	movb %bl,%al
	jmp .L484
	.align 16
.L492:
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %ebp,%ecx
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L518
	.align 16
.L490:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	movl %eax,-84(%ebp)
.L493:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PeekOp
	movl %eax,%ecx
	addl $8,%esp
	cmpl %ecx,MM_Formatter+808
	je .L496
	cmpl %ecx,MM_Formatter+812
	je .L496
	movl 16(%ebp),%edx
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
.L497:
	movl -4(%ebp),%ebx
	movl %ebx,-92(%ebp)
	cmpl %ecx,MM_Formatter+808
	je .L506
	cmpl %ecx,MM_Formatter+812
	je .L506
	cmpl %ecx,MM_Formatter+788
	jne .L501
	movl 16(%ebp),%eax
	cmpl %ebx,12(%eax)
	jne .L506
	incl %ebx
	jmp .L519
	.align 16
.L501:
	movl -84(%ebp),%ebx
	cmpl %ebx,-92(%ebp)
	jle .L503
	pushl $0
	movl 20(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__DoNewLine
	movl %eax,%esi
	addl $20,%esp
	testl %esi,%esi
	je .L503
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %ebp,%ecx
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L520
	.align 16
.L503:
	movl -64(%ebp),%ebx
	pushl %ebx
	movl -68(%ebp),%ebx
	pushl %ebx
	movl -80(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl -16(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PrintRow
	movl %eax,%esi
	addl $32,%esp
	testl %esi,%esi
	jne .L504
	movl -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PeekOp
	movl %eax,%ecx
	addl $8,%esp
	jmp .L497
	.align 16
.L504:
	movl 16(%ebp),%eax
	movl -92(%ebp),%ebx
	cmpl %ebx,12(%eax)
	jne .L506
	movl -4(%ebp),%ebx
.L519:
	movl %ebx,-92(%ebp)
.L506:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	cmpl %eax,-92(%ebp)
	jle .L508
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__Peek
	movl %eax,%ecx
	addl $8,%esp
	cmpl %ecx,MM_Formatter+788
	jne .L509
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__Print
	movl %eax,%esi
	addl $16,%esp
	testl %esi,%esi
	je .L506
	jmp .L513
	.align 16
.L509:
	movl 16(%ebp),%edx
	movl -84(%ebp),%ebx
	cmpl %ebx,12(%edx)
	jle .L512
	pushl $0
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__DoNewLine
	movl %eax,%esi
	addl $20,%esp
	testl %esi,%esi
	jne .L513
.L512:
	pushl $0
	movl -68(%ebp),%ebx
	pushl %ebx
	movl -80(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PrintRow
	addl $32,%esp
	testl %eax,%eax
	je .L506
.L513:
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
.L520:
	call M_Formatter_LINE_1255.0
	movl $1,%eax
	jmp .L484
	.align 16
.L508:
	pushl %edi
	call Formatter__ClearWidths
	addl $4,%esp
	jmp .L493
	.align 16
.L496:
	cmpl %ecx,MM_Formatter+808
	jne .L515
	movl 16(%ebp),%eax
	incl 12(%eax)
.L515:
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
.L518:
	call M_Formatter_LINE_1255.0
	xorl %eax,%eax
.L516:
.L484:
	leal -104(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe59:
	.size	 Formatter__PrintAlign,.Lfe59-Formatter__PrintAlign
	.align 16
	.type	 M_Formatter_LINE_1321.1,@function
M_Formatter_LINE_1321.1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%edx
	leal -12(%edx),%eax
	pushl %eax
	movl -44(%edx),%edx
	leal 12(%edx),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	xorl %eax,%eax
	movb 4(%edx),%al
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call Formatter__ExitBegin
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe60:
	.size	 M_Formatter_LINE_1321.1,.Lfe60-M_Formatter_LINE_1321.1
	.align 16
	.type	 Formatter__PrintRow,@function
Formatter__PrintRow:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl 28(%ebp),%edi
	movl 32(%ebp),%ecx
	movl %esi,-44(%ebp)
.L522:
	movl $MM_Formatter+1236,-16(%ebp)
	movl $4,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl $M_Formatter_LINE_1321.1,-32(%ebp)
	movl %ebp,-28(%ebp)
.L523:
	movl $3,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L524
	pushl $20452
	call _m3_fault
	.align 16
.L524:
	leal -12(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	pushl %ecx
	leal 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call Formatter__EnterBegin
	pushl %edi
	call Formatter__ClearWidths
	movl 16(%ebp),%eax
	addl $32,%esp
	movl 12(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PeekOp
	movl %eax,%ecx
	movl %ecx,-52(%ebp)
	addl $8,%esp
	cmpl %ecx,MM_Formatter+764
	je .L525
	pushl $0
	pushl $MM_Formatter+384
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L525:
	movl 16(%ebp),%eax
	xorl %ebx,%ebx
	incl 12(%eax)
.L526:
	movl 16(%ebp),%edx
	movl -52(%ebp),%esi
	movl 8(%edx),%eax
	addl 4(%edx),%eax
	movl %eax,-48(%ebp)
	cmpl %esi,MM_Formatter+808
	je .L568
	cmpl %esi,MM_Formatter+812
	je .L547
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__Print
	addl $16,%esp
	testl %eax,%eax
	jne .L569
	testl %edi,%edi
	jne .L531
	pushl $20676
	call _m3_fault
	.align 16
.L531:
	movl 4(%edi),%eax
	cmpl %ebx,%eax
	jle .L532
	movl %edi,%ecx
	cmpl %eax,%ebx
	jb .L534
	pushl $20690
	call _m3_fault
	.align 16
.L534:
	movl 16(%ebp),%edx
	movl (%ecx),%ecx
	movl 8(%edx),%eax
	addl 4(%edx),%eax
	subl -48(%ebp),%eax
	movl %eax,(%ecx,%ebx,4)
	cmpl $0,36(%ebp)
	je .L535
	movl 36(%ebp),%esi
	movl (%esi),%eax
	movl 4(%eax),%ecx
	cmpl $0,24(%ebp)
	jne .L536
	pushl $20708
	call _m3_fault
	.align 16
.L536:
	movl 24(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L537
	pushl $20706
	call _m3_fault
	.align 16
.L537:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%edx
	testl %edx,%edx
	jge .L538
	pushl $20705
	call _m3_fault
	.align 16
.L538:
	movl %edi,%eax
	cmpl %ebx,4(%eax)
	ja .L540
	pushl $20706
	call _m3_fault
	.align 16
.L540:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	testl %eax,%eax
	jge .L541
	pushl $20705
	call _m3_fault
	.align 16
.L541:
	pushl %eax
	pushl %edx
	pushl %ebx
	movl 36(%ebp),%esi
	pushl %esi
	call *%ecx
	addl $16,%esp
	testl %eax,%eax
	je .L569
.L535:
	cmpl $0,24(%ebp)
	jne .L542
	pushl $20772
	call _m3_fault
	.align 16
.L542:
	movl 24(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L543
	pushl $20770
	call _m3_fault
	.align 16
.L543:
	testl %edi,%edi
	jne .L544
	pushl $20772
	call _m3_fault
	.align 16
.L544:
	cmpl %ebx,4(%edi)
	ja .L545
	pushl $20770
	call _m3_fault
	.align 16
.L545:
	movl (%eax),%edx
	movl (%edi),%eax
	movl (%eax,%ebx,4),%eax
	movl (%edx,%ebx,4),%edx
	subl %eax,%edx
	movl %edx,%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__DoBlanks
	addl $20,%esp
	testl %eax,%eax
	jne .L569
	incl %ebx
.L532:
	movl 16(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__PeekOp
	movl %eax,-52(%ebp)
	addl $8,%esp
	jmp .L526
	.align 16
.L568:
	incl 12(%edx)
.L547:
	testl %edi,%edi
	jne .L548
	pushl $20932
	call _m3_fault
	.align 16
.L548:
	movl %ebx,%eax
	movl 4(%edi),%esi
	decl %esi
	movl %esi,-52(%ebp)
	jmp .L549
	.align 16
.L550:
	movl %eax,%ebx
	cmpl $0,24(%ebp)
	jne .L551
	pushl $20964
	call _m3_fault
	.align 16
.L551:
	movl 24(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L552
	pushl $20962
	call _m3_fault
	.align 16
.L552:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Formatter__DoBlanks
	addl $20,%esp
	testl %eax,%eax
	je .L553
.L569:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_Formatter_LINE_1321.1
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L521
	.align 16
.L553:
	leal 1(%ebx),%eax
.L549:
	cmpl %eax,-52(%ebp)
	jge .L550
	xorl %edx,%edx
	decl %ebx
	movl %ebx,-52(%ebp)
	jmp .L555
	.align 16
.L556:
	cmpl $0,24(%ebp)
	jne .L557
	pushl $21060
	call _m3_fault
	.align 16
.L557:
	movl 24(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L559
	pushl $21058
	call _m3_fault
	.align 16
.L559:
	testl %edi,%edi
	jne .L561
	pushl $21060
	call _m3_fault
	.align 16
.L561:
	movl %edi,%ecx
	cmpl %edx,4(%ecx)
	ja .L562
	pushl $21058
	call _m3_fault
	.align 16
.L562:
	movl (%eax),%ebx
	movl (%ecx),%eax
	movl (%eax,%edx,4),%ecx
	movl (%ebx,%edx,4),%eax
	cmpl %ecx,%eax
	jge .L563
	movl %ecx,%eax
.L563:
	movl %eax,(%ebx,%edx,4)
	incl %edx
.L555:
	cmpl %edx,-52(%ebp)
	jge .L556
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_Formatter_LINE_1321.1
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L565:
.L567:
.L521:
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe61:
	.size	 Formatter__PrintRow,.Lfe61-Formatter__PrintRow
	.align 16
	.type	 Formatter__DoBlanks,@function
Formatter__DoBlanks:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 24(%ebp),%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	movl 8(%ebp),%ebx
	movl 8(%eax),%eax
	testl %edx,%edx
	jl .L572
	addl %edx,%eax
.L572:
	testl %eax,%eax
	jge .L573
	pushl $21329
	call _m3_fault
	.align 16
.L573:
	movl 16(%ebp),%edx
	xorl %ecx,%ecx
	movl %eax,8(%edx)
	cmpb $0,12(%ebp)
	jne .L574
	testl %ebx,%ebx
	jne .L575
	pushl $21348
	call _m3_fault
	.align 16
.L575:
	addl 4(%edx),%eax
	cmpl %eax,4(%ebx)
	jge .L574
	movl $1,%ecx
.L574:
	movl %ecx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe62:
	.size	 Formatter__DoBlanks,.Lfe62-Formatter__DoBlanks
	.align 16
	.type	 Formatter__ClearWidths,@function
Formatter__ClearWidths:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L577
	pushl $21428
	call _m3_fault
	.align 16
.L577:
	xorl %edx,%edx
	movl 4(%ecx),%ebx
	decl %ebx
	jmp .L578
	.align 16
.L579:
	testl %ecx,%ecx
	jne .L580
	pushl $21428
	call _m3_fault
	.align 16
.L580:
	cmpl %edx,4(%ecx)
	ja .L581
	pushl $21426
	call _m3_fault
	.align 16
.L581:
	movl (%ecx),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L578:
	cmpl %ebx,%edx
	jle .L579
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe63:
	.size	 Formatter__ClearWidths,.Lfe63-Formatter__ClearWidths
	.align 16
	.type	 Formatter__PrintNoAlign,@function
Formatter__PrintNoAlign:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call Formatter__Print
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe64:
	.size	 Formatter__PrintNoAlign,.Lfe64-Formatter__PrintNoAlign
	.align 16
	.type	 Formatter__NewInt,@function
Formatter__NewInt:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $-256,%ebx
	jl .L585
	cmpl $256,%ebx
	jg .L585
	leal 256(%ebx),%edx
	cmpl $512,%edx
	jbe .L586
	pushl $21697
	call _m3_fault
	.align 16
.L586:
	movl $L_1,%eax
	movl (%eax,%edx,4),%eax
	jmp .L590
	.align 16
.L585:
	cmpl $-2147483648,%ebx
	jne .L587
	movl MM_Formatter+520,%eax
	jmp .L590
	.align 16
.L587:
	cmpl $2147483647,%ebx
	jne .L588
	movl MM_Formatter+524,%eax
	jmp .L590
	.align 16
.L588:
	movl MM_Formatter+1264,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L589
	pushl $21796
	call _m3_fault
	.align 16
.L589:
	movl %ebx,(%eax)
.L590:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe65:
	.size	 Formatter__NewInt,.Lfe65-Formatter__NewInt
	.align 16
	.type	 Formatter__DefineOp,@function
Formatter__DefineOp:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl MM_Formatter+1288,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %ebx,%ebx
	je .L592
	cmpl $-1,(%ebx)
	jne .L592
	pushl $21893
	call _m3_fault
	.align 16
.L592:
	movl %ebx,(%edx)
	movl %esi,4(%eax)
	leal -12(%ebp),%esp
	movl %edi,8(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe66:
	.size	 Formatter__DefineOp,.Lfe66-Formatter__DefineOp
	.align 16
	.type	 _INITM_Formatter,@function
_INITM_Formatter:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	pushl $13
	pushl $0
	movl MM_Formatter+896,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+764
	pushl $12
	pushl $2
	movl MM_Formatter+900,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+768
	pushl $11
	pushl $4
	movl MM_Formatter+980,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	addl $36,%esp
	movl %edx,MM_Formatter+772
	pushl $10
	pushl $3
	movl MM_Formatter+956,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+776
	pushl $9
	pushl $1
	movl MM_Formatter+920,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+784
	pushl $7
	pushl $1
	movl MM_Formatter+928,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	addl $36,%esp
	movl %edx,MM_Formatter+780
	pushl $6
	pushl $0
	movl MM_Formatter+996,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+788
	pushl $5
	pushl $3
	movl MM_Formatter+940,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+792
	pushl $4
	pushl $2
	movl MM_Formatter+952,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	addl $36,%esp
	movl %edx,MM_Formatter+796
	pushl $3
	pushl $2
	movl MM_Formatter+960,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+800
	pushl $2
	pushl $2
	movl MM_Formatter+976,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+804
	pushl $1
	pushl $0
	movl MM_Formatter+912,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	addl $36,%esp
	movl %edx,MM_Formatter+808
	pushl $-2147483648
	pushl $0
	movl MM_Formatter+916,%eax
	pushl %eax
	call Formatter__DefineOp
	movl %eax,%edx
	movl %edx,MM_Formatter+812
	movl $-256,%ebx
	addl $12,%esp
.L595:
	movl MM_Formatter+1264,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,L_1+1024(,%ebx,4)
	movl L_1+1024(,%ebx,4),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L596
	pushl $22212
	call _m3_fault
	.align 16
.L596:
	movl %ebx,(%eax)
	incl %ebx
	cmpl $256,%ebx
	jle .L595
	movl MM_Formatter+1264,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Formatter+520
	addl $4,%esp
	testl %edx,%edx
	jne .L599
	pushl $22244
	call _m3_fault
	.align 16
.L599:
	movl $-2147483648,(%edx)
	movl MM_Formatter+1264,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Formatter+524
	addl $4,%esp
	testl %edx,%edx
	jne .L600
	pushl $22260
	call _m3_fault
	.align 16
.L600:
	movl $2147483647,(%edx)
	xorl %ebx,%ebx
.L601:
	movb %bl,-4(%ebp)
	movl MM_Formatter+1296,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	xorl %eax,%eax
	movb -4(%ebp),%al
	addl $4,%esp
	movl %edx,L_2(,%eax,4)
	movl L_2(,%eax,4),%eax
	testl %eax,%eax
	jne .L602
	pushl $22308
	call _m3_fault
	.align 16
.L602:
	movb -4(%ebp),%cl
	movb %cl,(%eax)
	incl %ebx
	cmpl $255,%ebx
	jle .L601
	movl MM_Formatter+1256,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Formatter+540
	addl $4,%esp
	testl %edx,%edx
	jne .L605
	pushl $22340
	call _m3_fault
	.align 16
.L605:
	movb $1,(%edx)
	movl MM_Formatter+1256,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Formatter+536
	addl $4,%esp
	testl %edx,%edx
	jne .L606
	pushl $22356
	call _m3_fault
	.align 16
.L606:
	movb $0,(%edx)
	xorl %ebx,%ebx
.L607:
	movb %bl,-8(%ebp)
	movl MM_Formatter+1272,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	xorl %eax,%eax
	movb -8(%ebp),%al
	addl $4,%esp
	movl %edx,MM_Formatter+648(,%eax,4)
	movl MM_Formatter+648(,%eax,4),%eax
	testl %eax,%eax
	jne .L608
	pushl $22404
	call _m3_fault
	.align 16
.L608:
	movb -8(%ebp),%cl
	movb %cl,(%eax)
	incl %ebx
	cmpl $2,%ebx
	jle .L607
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe67:
	.size	 _INITM_Formatter,.Lfe67-_INITM_Formatter
	.align 16
	.type	 M_Formatter_t77961fea_LINK,@function
M_Formatter_t77961fea_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Formatter+1220,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Formatter+880,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe68:
	.size	 M_Formatter_t77961fea_LINK,.Lfe68-M_Formatter_t77961fea_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Formatter
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe69:
	.size	 _m3_fault,.Lfe69-_m3_fault
.globl MM_Formatter
.data
	.align 4
	.type	 MM_Formatter,@object
	.size	 MM_Formatter,3248
MM_Formatter:
	.long MM_Formatter+2849
	.long MM_Formatter+44
	.long MM_Formatter+1188
	.long MM_Formatter+1176
	.zero	4
	.long MM_Formatter+1996
	.zero	4
	.long MM_Formatter+2804
	.long MM_Formatter+2804
	.zero	4
	.long _INITM_Formatter
	.zero	8
	.long 276539390
.byte 4
.byte 116
.byte 100
.byte 10
.byte 250
.byte 211
.byte 31
.byte 26
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_Formatter+3215
	.long MM_Formatter+3220
	.long MM_Formatter+3225
	.zero	28
	.long MM_Formatter+3229
	.long MM_Formatter+148
	.zero	8
	.long 239484980
.byte 242
.byte 43
.byte 254
.byte 20
.byte 198
.byte 107
.byte 184
.byte 26
	.long 1
	.zero	4
	.long 332
	.long 4
	.zero	20
	.long MM_Formatter+3091
	.long MM_Formatter+3121
	.long MM_Formatter+3133
	.zero	24
	.long MM_Formatter+3180
	.long MM_Formatter+3203
	.long MM_Formatter+252
	.zero	8
	.long 1761611925
.byte 212
.byte 218
.byte 214
.byte 111
.byte 65
.byte 202
.byte 214
.byte 6
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Formatter+3047
	.long MM_Formatter+3049
	.long MM_Formatter+3051
	.zero	8
	.long -597219081
	.zero	16
	.long MM_Formatter+3059
	.long MM_Formatter+416
	.long MM_Formatter+360
	.ascii	"Formatter.UnmatchedEnd"
	.zero	2
	.long MM_Formatter+388
	.ascii	"Formatter.InvalidAlignRow"
	.zero	11
	.long -319446848
.byte 241
.byte 97
.byte 193
.byte 242
.byte 49
.byte 193
.byte 52
.byte 30
	.long 1
	.zero	4
	.long 1
	.long 1
	.zero	20
	.long MM_Formatter+3028
	.zero	4
	.long MM_Formatter+3030
	.zero	28
	.long MM_Formatter+3032
	.long MM_Formatter+544
	.zero	8
	.long L_1
	.long L_2
	.zero	16
	.long -1422576125
.byte 48
.byte 106
.byte 188
.byte 176
.byte 51
.byte 92
.byte 137
.byte 27
	.long 1
	.zero	4
	.long 1
	.long 1
	.zero	20
	.long MM_Formatter+3023
	.zero	4
	.long MM_Formatter+3025
	.zero	32
	.long MM_Formatter+660
	.zero	20
	.long 1872835457
.byte 243
.byte 169
.byte 202
.byte 123
.byte 114
.byte 154
.byte 107
.byte 20
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_Formatter+3000
	.zero	4
	.long MM_Formatter+3004
	.zero	28
	.long MM_Formatter+3010
	.long MM_Formatter+1008
	.zero	52
	.long Formatter__AddRef
	.long Formatter__AddChars
	.long Formatter__Release
	.long Formatter__Allocate
	.long Formatter__Expand
	.long Formatter__Changed
	.long Formatter__WaitUntilEmpty
	.long Formatter__SetFailure
	.long Formatter__CheckForFailure
	.long Formatter__Probe
	.long Formatter__Get
	.long Formatter__GetB
	.long Formatter__GetI
	.long Formatter__GetBreakType
	.long Formatter__PeekOp
	.long Formatter__Peek
	.long Formatter__PrintTop
	.long Formatter__Print
	.long Formatter__PrintRest
	.long Formatter__PrintUntil
	.long Formatter__PrintGroup
	.long Formatter__PrintBegin
	.long Formatter__EnterBegin
	.long Formatter__ExitBegin
	.long Formatter__PrintEnd
	.long Formatter__PrintFlush
	.long Formatter__PrintText
	.long Formatter__DoPrintText
	.long Formatter__PrintChar
	.long Formatter__DoPrintChar
	.long Formatter__DoTrailingBlanks
	.long Formatter__PrintBreak
	.long Formatter__DoNonOptimalBreak
	.long Formatter__DoOptimalBreak
	.long Formatter__PrintPartialBreak
	.long Formatter__PrintCol
	.long Formatter__PrintNewLine
	.long Formatter__DoLine
	.long Formatter__DoNewLine
	.long Formatter__DoFreshLine
	.long Formatter__PrintUnitedBreak
	.long Formatter__PrintAlign
	.long Formatter__PrintRow
	.long Formatter__DoBlanks
	.long Formatter__ClearWidths
	.long Formatter__PrintNoAlign
	.long Formatter__NewInt
	.long Formatter__DefineOp
	.zero	8
	.long 2006327274
.byte 95
.byte 60
.byte 103
.byte 111
.byte 181
.byte 35
.byte 241
.byte 24
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_Formatter+2997
	.zero	4
	.long M_Formatter_t77961fea_LINK
	.long 1761611925
	.zero	24
	.long Formatter__New
	.long Formatter__UnderlyingWr
	.long Formatter__Close
	.long Formatter__Flush
	.long Formatter__PutText
	.long Formatter__PutChar
	.long Formatter__Break
	.long Formatter__PartialBreak
	.long Formatter__NewLine
	.long Formatter__UnitedBreak
	.long Formatter__Group
	.long Formatter__Begin
	.long Formatter__Align
	.long Formatter__NoAlign
	.long Formatter__Col
	.long Formatter__End
	.long 39558987
	.long 239484980
	.zero	4
	.long MM_Formatter+1196
	.long 39558987
	.long MM_Formatter+1204
	.long 276539390
	.long MM_Formatter+1212
	.long 356643957
	.long MM_Formatter+1220
	.long 1475387830
	.long MM_Formatter+1248
	.long 2006327274
	.long MI_Wr+44
	.zero	4
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long MM_Formatter+1256
	.long -1388739978
	.long MM_Formatter+1264
	.long -319446848
	.long MM_Formatter+1272
	.long 1355119930
	.long MM_Formatter+1280
	.long -1422576125
	.long MM_Formatter+1288
	.long 1358456180
	.long MM_Formatter+1296
	.long 1872835457
	.long MM_Formatter+1304
	.long 755546716
	.long MM_Formatter+1312
	.long -1008035221
	.zero	4
	.long 562018850
	.ascii	"_INITM_Formatter"
	.zero	1
	.ascii	"DefineOp"
	.zero	1
	.ascii	"NewInt"
	.zero	1
	.ascii	"PrintNoAlign"
	.zero	1
	.ascii	"ClearWidths"
	.zero	1
	.ascii	"DoBlanks"
	.zero	1
	.ascii	"PrintRow"
	.zero	1
	.ascii	"M_Formatter_LINE_1321"
	.zero	1
	.ascii	"PrintAlign"
	.zero	1
	.ascii	"M_Formatter_LINE_1255"
	.zero	1
	.ascii	"PrintUnitedBreak"
	.zero	1
	.ascii	"DoFreshLine"
	.zero	1
	.ascii	"DoNewLine"
	.zero	1
	.ascii	"DoLine"
	.zero	1
	.ascii	"PrintNewLine"
	.zero	1
	.ascii	"PrintCol"
	.zero	1
	.ascii	"PrintPartialBreak"
	.zero	1
	.ascii	"DoOptimalBreak"
	.zero	1
	.ascii	"DoNonOptimalBreak"
	.zero	1
	.ascii	"PrintBreak"
	.zero	1
	.ascii	"DoTrailingBlanks"
	.zero	1
	.ascii	"DoPrintChar"
	.zero	1
	.ascii	"PrintChar"
	.zero	1
	.ascii	"DoPrintText"
	.zero	1
	.ascii	"PrintText"
	.zero	1
	.ascii	"PrintFlush"
	.zero	1
	.ascii	"PrintEnd"
	.zero	1
	.ascii	"ExitBegin"
	.zero	1
	.ascii	"EnterBegin"
	.zero	1
	.ascii	"PrintBegin"
	.zero	1
	.ascii	"PrintGroup"
	.zero	1
	.ascii	"PrintUntil"
	.zero	1
	.ascii	"PrintRest"
	.zero	1
	.ascii	"Print"
	.zero	1
	.ascii	"PrintTop"
	.zero	1
	.ascii	"Peek"
	.zero	1
	.ascii	"PeekOp"
	.zero	1
	.ascii	"GetBreakType"
	.zero	1
	.ascii	"GetI"
	.zero	1
	.ascii	"GetB"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Probe"
	.zero	1
	.ascii	"CheckForFailure"
	.zero	1
	.ascii	"SetFailure"
	.zero	1
	.ascii	"WaitUntilEmpty"
	.zero	1
	.ascii	"Changed"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"Allocate"
	.zero	1
	.ascii	"Release"
	.zero	1
	.ascii	"AddChars"
	.zero	1
	.ascii	"AddRef"
	.zero	1
	.ascii	"Col"
	.zero	1
	.ascii	"NoAlign"
	.zero	1
	.ascii	"Align"
	.zero	1
	.ascii	"NewLine"
	.zero	1
	.ascii	"UnitedBreak"
	.zero	1
	.ascii	"PartialBreak"
	.zero	1
	.ascii	"Break"
	.zero	1
	.ascii	"PutText"
	.zero	1
	.ascii	"PutChar"
	.zero	1
	.ascii	"End"
	.zero	1
	.ascii	"Begin"
	.zero	1
	.ascii	"Group"
	.zero	1
	.ascii	"Close"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"UnderlyingWr"
	.zero	1
	.ascii	"New"
	.zero	3
	.long _INITM_Formatter
	.long MM_Formatter+1320
	.zero	4
	.long Formatter__DefineOp
	.long MM_Formatter+1337
	.zero	4
	.long Formatter__NewInt
	.long MM_Formatter+1346
	.zero	4
	.long Formatter__PrintNoAlign
	.long MM_Formatter+1353
	.zero	4
	.long Formatter__ClearWidths
	.long MM_Formatter+1366
	.zero	4
	.long Formatter__DoBlanks
	.long MM_Formatter+1378
	.zero	4
	.long Formatter__PrintRow
	.long MM_Formatter+1387
	.zero	4
	.long M_Formatter_LINE_1321.1
	.long MM_Formatter+1396
	.zero	4
	.long Formatter__PrintAlign
	.long MM_Formatter+1418
	.zero	4
	.long M_Formatter_LINE_1255.0
	.long MM_Formatter+1429
	.zero	4
	.long Formatter__PrintUnitedBreak
	.long MM_Formatter+1451
	.zero	4
	.long Formatter__DoFreshLine
	.long MM_Formatter+1468
	.zero	4
	.long Formatter__DoNewLine
	.long MM_Formatter+1480
	.zero	4
	.long Formatter__DoLine
	.long MM_Formatter+1490
	.zero	4
	.long Formatter__PrintNewLine
	.long MM_Formatter+1497
	.zero	4
	.long Formatter__PrintCol
	.long MM_Formatter+1510
	.zero	4
	.long Formatter__PrintPartialBreak
	.long MM_Formatter+1519
	.zero	4
	.long Formatter__DoOptimalBreak
	.long MM_Formatter+1537
	.zero	4
	.long Formatter__DoNonOptimalBreak
	.long MM_Formatter+1552
	.zero	4
	.long Formatter__PrintBreak
	.long MM_Formatter+1570
	.zero	4
	.long Formatter__DoTrailingBlanks
	.long MM_Formatter+1581
	.zero	4
	.long Formatter__DoPrintChar
	.long MM_Formatter+1598
	.zero	4
	.long Formatter__PrintChar
	.long MM_Formatter+1610
	.zero	4
	.long Formatter__DoPrintText
	.long MM_Formatter+1620
	.zero	4
	.long Formatter__PrintText
	.long MM_Formatter+1632
	.zero	4
	.long Formatter__PrintFlush
	.long MM_Formatter+1642
	.zero	4
	.long Formatter__PrintEnd
	.long MM_Formatter+1653
	.zero	4
	.long Formatter__ExitBegin
	.long MM_Formatter+1662
	.zero	4
	.long Formatter__EnterBegin
	.long MM_Formatter+1672
	.zero	4
	.long Formatter__PrintBegin
	.long MM_Formatter+1683
	.zero	4
	.long Formatter__PrintGroup
	.long MM_Formatter+1694
	.zero	4
	.long Formatter__PrintUntil
	.long MM_Formatter+1705
	.zero	4
	.long Formatter__PrintRest
	.long MM_Formatter+1716
	.zero	4
	.long Formatter__Print
	.long MM_Formatter+1726
	.zero	4
	.long Formatter__PrintTop
	.long MM_Formatter+1732
	.zero	4
	.long Formatter__Peek
	.long MM_Formatter+1741
	.zero	4
	.long Formatter__PeekOp
	.long MM_Formatter+1746
	.zero	4
	.long Formatter__GetBreakType
	.long MM_Formatter+1753
	.zero	4
	.long Formatter__GetI
	.long MM_Formatter+1766
	.zero	4
	.long Formatter__GetB
	.long MM_Formatter+1771
	.zero	4
	.long Formatter__Get
	.long MM_Formatter+1776
	.zero	4
	.long Formatter__Probe
	.long MM_Formatter+1780
	.zero	4
	.long Formatter__CheckForFailure
	.long MM_Formatter+1786
	.zero	4
	.long Formatter__SetFailure
	.long MM_Formatter+1802
	.zero	4
	.long Formatter__WaitUntilEmpty
	.long MM_Formatter+1813
	.zero	4
	.long Formatter__Changed
	.long MM_Formatter+1828
	.zero	4
	.long Formatter__Expand
	.long MM_Formatter+1836
	.zero	4
	.long Formatter__Allocate
	.long MM_Formatter+1843
	.zero	4
	.long Formatter__Release
	.long MM_Formatter+1852
	.zero	4
	.long Formatter__AddChars
	.long MM_Formatter+1860
	.zero	4
	.long Formatter__AddRef
	.long MM_Formatter+1869
	.zero	4
	.long Formatter__Col
	.long MM_Formatter+1876
	.long MI_Formatter+204
	.long Formatter__NoAlign
	.long MM_Formatter+1880
	.long MI_Formatter+200
	.long Formatter__Align
	.long MM_Formatter+1888
	.long MI_Formatter+92
	.long Formatter__NewLine
	.long MM_Formatter+1894
	.long MI_Formatter+76
	.long Formatter__UnitedBreak
	.long MM_Formatter+1902
	.long MI_Formatter+80
	.long Formatter__PartialBreak
	.long MM_Formatter+1914
	.long MI_Formatter+72
	.long Formatter__Break
	.long MM_Formatter+1927
	.long MI_Formatter+68
	.long Formatter__PutText
	.long MM_Formatter+1933
	.long MI_Formatter+60
	.long Formatter__PutChar
	.long MM_Formatter+1941
	.long MI_Formatter+64
	.long Formatter__End
	.long MM_Formatter+1949
	.long MI_Formatter+208
	.long Formatter__Begin
	.long MM_Formatter+1953
	.long MI_Formatter+88
	.long Formatter__Group
	.long MM_Formatter+1959
	.long MI_Formatter+84
	.long Formatter__Close
	.long MM_Formatter+1965
	.long MI_Formatter+52
	.long Formatter__Flush
	.long MM_Formatter+1971
	.long MI_Formatter+56
	.long Formatter__UnderlyingWr
	.long MM_Formatter+1977
	.long MI_Formatter+48
	.long Formatter__New
	.long MM_Formatter+1990
	.long MI_Formatter+44
	.zero	4
.byte 43
.byte 8
.byte 2
.byte 4
.byte 4
.byte 2
.byte 1
.byte 4
.byte 27
.byte 1
.byte 2
.byte 3
.byte 2
.byte 1
.byte 4
.byte 27
.byte 0
.byte 1
.byte 3
.byte 1
.byte 4
.byte 26
.byte 2
.byte 42
.byte 104
.byte 1
.byte 4
.byte 26
.byte 3
.byte 42
.byte 104
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
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/formatter/Formatter.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
.byte 6
.byte 18
.byte 14
.byte 0
.byte 4
.byte 15
.byte 3
.byte 13
.byte 3
.byte 7
	.ascii	"Formatter.Op"
	.zero	1
.byte 16
.byte 0
.byte 1
.byte 5
.byte 3
.byte 16
.byte 0
.byte 1
.byte 2
	.ascii	"Formatter.Bool"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 75
.byte 159
.byte 91
.byte 2
	.ascii	"Formatter.ConsumerThreadClosure"
	.zero	1
.byte 4
.byte 18
.byte 18
.byte 1
.byte 16
.byte 27
.byte 0
.byte 1
.byte 18
.byte 4
.byte 4
.byte 4
.byte 4
.byte 18
.byte 1
.byte 18
.byte 26
.byte 2
.byte 1
.byte 18
.byte 26
.byte 2
.byte 18
.byte 18
.byte 18
.byte 18
.byte 16
.byte 36
.byte 4
.byte 0
.byte 4
.byte 43
.byte 12
.byte 1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 42
.byte 40
.byte 4
.byte 0
.byte 21
.byte 15
.byte 18
.byte 16
.byte 135
.byte 20
.byte 118
.byte 98
.byte 3
.byte 24
.byte 1
.byte 66
.byte 0
.byte 1
.byte 4
.byte 24
.byte 16
.byte 237
.byte 176
.byte 22
.byte 75
.byte 16
.byte 117
.byte 244
.byte 65
.byte 21
.byte 16
.byte 182
.byte 161
.byte 240
.byte 87
.byte 16
.byte 254
.byte 167
.byte 123
.byte 16
.byte 24
.byte 1
.byte 2
.byte 24
.byte 34
.byte 24
.byte 24
.byte 24
.byte 24
.byte 2
.byte 17
	.ascii	"Formatter_^%#%^__0001M"
	.zero	1
	.ascii	"Formatter.T"
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
.byte 17
	.ascii	"Formatter.ExprBuf"
	.zero	2
	.local	L_1
	.comm	L_1,2052,4
	.local	L_2
	.comm	L_2,1024,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
