	.file	"WrMove.mc"
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
	.type	 WrClass__Lock,@function
WrClass__Lock:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Thread+160,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WrClass__Lock,.Lfe1-WrClass__Lock
	.align 16
	.type	 WrClass__Unlock,@function
WrClass__Unlock:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Thread+164,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WrClass__Unlock,.Lfe2-WrClass__Unlock
	.align 16
	.type	 Wr__PutChar,@function
Wr__PutChar:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L4:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L6
	pushl $628
	call _m3_fault
	.align 16
.L6:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	jne .L8
	pushl %ebx
	call WrMove__DoSeek
	addl $4,%esp
.L8:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%esi
	movl (%esi,%ebx),%eax
	testl %eax,%eax
	jne .L9
	pushl $644
	call _m3_fault
	.align 16
.L9:
	movl %eax,%edx
	movl 16(%esi,%ebx),%eax
	addl 4(%esi,%ebx),%eax
	subl 8(%esi,%ebx),%eax
	movl %eax,%esi
	cmpl %esi,4(%edx)
	ja .L13
	pushl $642
	call _m3_fault
	.align 16
.L13:
	movl (%edx),%eax
	movb 12(%ebp),%cl
	movb %cl,(%esi,%eax)
	movl MM_WrMove+288,%esi
	movl %ebx,%edx
	addl 24(%esi),%edx
	incl 16(%edx)
	movl 24(%esi),%eax
	cmpb $0,22(%eax,%ebx)
	jne .L17
	movl (%ebx),%edx
	movl 36(%esi),%eax
	movl 12(%eax,%edx),%edx
	pushl %ebx
	call *%edx
	addl $4,%esp
.L17:
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
.Lfe3:
	.size	 Wr__PutChar,.Lfe3-Wr__PutChar
	.align 16
	.type	 UnsafeWr__FastPutChar,@function
UnsafeWr__FastPutChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L20
	pushl $788
	call _m3_fault
	.align 16
.L20:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	jne .L22
	pushl %ebx
	call WrMove__DoSeek
	addl $4,%esp
.L22:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%esi
	movl (%esi,%ebx),%eax
	testl %eax,%eax
	jne .L23
	pushl $804
	call _m3_fault
	.align 16
.L23:
	movl %eax,%edx
	movl 16(%esi,%ebx),%eax
	addl 4(%esi,%ebx),%eax
	subl 8(%esi,%ebx),%eax
	movl %eax,%esi
	cmpl %esi,4(%edx)
	ja .L27
	pushl $802
	call _m3_fault
	.align 16
.L27:
	movl (%edx),%eax
	movb 12(%ebp),%cl
	movb %cl,(%esi,%eax)
	movl MM_WrMove+288,%esi
	movl %ebx,%edx
	addl 24(%esi),%edx
	incl 16(%edx)
	movl 24(%esi),%eax
	cmpb $0,22(%eax,%ebx)
	jne .L18
	movl (%ebx),%edx
	movl 36(%esi),%eax
	movl 12(%eax,%edx),%edx
	pushl %ebx
	call *%edx
.L18:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 UnsafeWr__FastPutChar,.Lfe4-UnsafeWr__FastPutChar
	.align 16
	.type	 WrMove__DoSeek,@function
WrMove__DoSeek:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L32
	pushl $932
	call _m3_fault
	.align 16
.L32:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L33
	call WrMove__Die
.L33:
	movl MM_WrMove+288,%ecx
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%edx
	movl 24(%ecx),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 WrMove__DoSeek,.Lfe5-WrMove__DoSeek
	.align 16
	.type	 Wr__PutText,@function
Wr__PutText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jne .L36
	pushl $1028
	call _m3_fault
	.align 16
.L36:
	movl %eax,-4(%ebp)
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L37
	pushl $1025
	call _m3_fault
	.align 16
.L37:
	movl (%ebx),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	call Wr__PutString
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Wr__PutText,.Lfe6-Wr__PutText
	.align 16
	.type	 UnsafeWr__FastPutText,@function
UnsafeWr__FastPutText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jne .L39
	pushl $1108
	call _m3_fault
	.align 16
.L39:
	movl %eax,-4(%ebp)
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L40
	pushl $1105
	call _m3_fault
	.align 16
.L40:
	movl (%ebx),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	call UnsafeWr__FastPutString
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 UnsafeWr__FastPutText,.Lfe7-UnsafeWr__FastPutText
	.align 16
	.type	 Wr__PutString,@function
Wr__PutString:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L42:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L43
	pushl $1284
	call _m3_fault
	.align 16
.L43:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L44
	call WrMove__Die
.L44:
	movl MM_WrMove+288,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl MM_WrMove+288,%ecx
	movl 24(%ecx),%eax
	addl $8,%esp
	cmpb $0,22(%eax,%ebx)
	jne .L47
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl 12(%eax,%edx),%edx
	pushl %ebx
	call *%edx
	addl $4,%esp
.L47:
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
.Lfe8:
	.size	 Wr__PutString,.Lfe8-Wr__PutString
	.align 16
	.type	 UnsafeWr__FastPutString,@function
UnsafeWr__FastPutString:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L49
	pushl $1444
	call _m3_fault
	.align 16
.L49:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L50
	call WrMove__Die
.L50:
	movl MM_WrMove+288,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl MM_WrMove+288,%ecx
	movl 24(%ecx),%eax
	addl $8,%esp
	cmpb $0,22(%eax,%ebx)
	jne .L48
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl 12(%eax,%edx),%edx
	pushl %ebx
	call *%edx
.L48:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 UnsafeWr__FastPutString,.Lfe9-UnsafeWr__FastPutString
	.align 16
	.type	 WrClass__PutStringDefault,@function
WrClass__PutStringDefault:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%eax
	movl $0,-24(%ebp)
	movl 4(%eax),%eax
	movl %eax,-20(%ebp)
	jmp .L54
	.align 16
.L55:
	testl %edi,%edi
	jne .L57
	pushl $1636
	call _m3_fault
	.align 16
.L57:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%edx
	movl -20(%ebp),%ebx
	movl 16(%edx,%edi),%esi
	movl 12(%edx,%edi),%eax
	subl %esi,%eax
	cmpl %eax,%ebx
	jle .L58
	movl %eax,%ebx
.L58:
	testl %ebx,%ebx
	jle .L59
	movl (%edx,%edi),%ecx
	testl %ecx,%ecx
	jne .L61
	pushl $1684
	call _m3_fault
	.align 16
.L61:
	movl 4(%edx,%edi),%eax
	addl %esi,%eax
	subl 8(%edx,%edi),%eax
	movl %eax,%edx
	testl %edx,%edx
	jge .L65
	pushl $1681
	call _m3_fault
	.align 16
.L65:
	movl %ebx,-4(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L67
	pushl $1681
	call _m3_fault
	.align 16
.L67:
	movl (%ecx),%ecx
	addl %edx,%ecx
	movl %ecx,-8(%ebp)
	movl %ebx,-12(%ebp)
	movl -24(%ebp),%esi
	addl %ebx,%esi
	movl 12(%ebp),%edx
	movl %esi,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L69
	pushl $1681
	call _m3_fault
	.align 16
.L69:
	movl -24(%ebp),%eax
	addl (%edx),%eax
	movl %eax,-16(%ebp)
	pushl %ebx
	pushl %eax
	pushl %ecx
	call memmove
	addl $12,%esp
	testl %esi,%esi
	jge .L71
	pushl $1713
	call _m3_fault
	.align 16
.L71:
	movl %esi,-24(%ebp)
	movl -20(%ebp),%eax
	subl %ebx,%eax
	jns .L72
	pushl $1729
	call _m3_fault
	.align 16
.L72:
	movl %eax,-20(%ebp)
	testl %edi,%edi
	jne .L73
	pushl $1748
	call _m3_fault
	.align 16
.L73:
	movl MM_WrMove+288,%eax
	movl %edi,%edx
	addl 24(%eax),%edx
	movl 16(%edx),%eax
	addl %ebx,%eax
	jns .L74
	pushl $1745
	call _m3_fault
	.align 16
.L74:
	movl %eax,16(%edx)
.L59:
	cmpl $0,-20(%ebp)
	jle .L78
	movl MM_WrMove+288,%ecx
	movl (%edi),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%edx
	testl %edi,%edi
	jne .L76
	pushl $1796
	call _m3_fault
	.align 16
.L76:
	movl 24(%ecx),%eax
	movl 16(%eax,%edi),%eax
	pushl %eax
	pushl %edi
	call *%edx
	addl $8,%esp
.L54:
	cmpl $0,-20(%ebp)
	jg .L55
.L78:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 WrClass__PutStringDefault,.Lfe10-WrClass__PutStringDefault
	.align 16
	.type	 UnsafeWr__FastPutInt,@function
UnsafeWr__FastPutInt:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%edx
.L80:
	movl $MM_WrMove+296,-40(%ebp)
	movl $4,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -36(%ebp),%esi
	movl %esi,-56(%ebp)
	movl $36,-52(%ebp)
	pushl $0
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %edx
	leal -56(%ebp),%ebx
	pushl %ebx
	movl MI_Convert+64,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L81
	pushl $2001
	call _m3_fault
	.align 16
.L81:
	cmpl $36,%eax
	jle .L82
	pushl $2001
	call _m3_fault
	.align 16
.L82:
	movl %eax,-52(%ebp)
	movl %esi,-56(%ebp)
	pushl %ebx
	pushl %edi
	call UnsafeWr__FastPutString
.L83:
	movl -48(%ebp),%eax
	leal -68(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 UnsafeWr__FastPutInt,.Lfe11-UnsafeWr__FastPutInt
	.align 16
	.type	 UnsafeWr__FastPutReal,@function
UnsafeWr__FastPutReal:
	pushl %ebp
	movl %esp,%ebp
	subl $124,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 16(%ebp),%edx
.L85:
	movl $MM_WrMove+296,-108(%ebp)
	movl $4,-112(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-116(%ebp)
	leal -116(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -104(%ebp),%esi
	movl %esi,-124(%ebp)
	movl $101,-120(%ebp)
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edx
	leal -124(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Convert+72,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L86
	pushl $2193
	call _m3_fault
	.align 16
.L86:
	cmpl $101,%eax
	jle .L87
	pushl $2193
	call _m3_fault
	.align 16
.L87:
	movl %eax,-120(%ebp)
	movl %esi,-124(%ebp)
	pushl %ebx
	pushl %edi
	call UnsafeWr__FastPutString
.L88:
	movl -116(%ebp),%eax
	leal -136(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 UnsafeWr__FastPutReal,.Lfe12-UnsafeWr__FastPutReal
	.align 16
	.type	 UnsafeWr__FastPutLongReal,@function
UnsafeWr__FastPutLongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $124,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 20(%ebp),%edx
.L90:
	movl $MM_WrMove+296,-108(%ebp)
	movl $4,-112(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-116(%ebp)
	leal -116(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -104(%ebp),%esi
	movl %esi,-124(%ebp)
	movl $101,-120(%ebp)
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %edx
	leal -124(%ebp),%ebx
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_Convert+76,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jge .L91
	pushl $2385
	call _m3_fault
	.align 16
.L91:
	cmpl $101,%eax
	jle .L92
	pushl $2385
	call _m3_fault
	.align 16
.L92:
	movl %eax,-120(%ebp)
	movl %esi,-124(%ebp)
	pushl %ebx
	pushl %edi
	call UnsafeWr__FastPutString
.L93:
	movl -116(%ebp),%eax
	leal -136(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 UnsafeWr__FastPutLongReal,.Lfe13-UnsafeWr__FastPutLongReal
	.align 16
	.type	 Wr__Seek,@function
Wr__Seek:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L95:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L96
	pushl $2500
	call _m3_fault
	.align 16
.L96:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	jne .L97
	cmpb $0,21(%eax,%ebx)
	jne .L99
.L97:
	call WrMove__Die
.L99:
	movl MM_WrMove+288,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %esi
	pushl %ebx
	call *%eax
	addl $8,%esp
.L100:
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
.Lfe14:
	.size	 Wr__Seek,.Lfe14-Wr__Seek
	.align 16
	.type	 Wr__Flush,@function
Wr__Flush:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L102:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L103
	pushl $2628
	call _m3_fault
	.align 16
.L103:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L104
	call WrMove__Die
.L104:
	movl MM_WrMove+288,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 12(%eax,%edx),%eax
	pushl %ebx
	call *%eax
	addl $4,%esp
.L105:
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
.Lfe15:
	.size	 Wr__Flush,.Lfe15-Wr__Flush
	.align 16
	.type	 Wr__Index,@function
Wr__Index:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L107:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L108
	pushl $2756
	call _m3_fault
	.align 16
.L108:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L110
	call WrMove__Die
.L110:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	movl 16(%eax,%ebx),%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L111:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Wr__Index,.Lfe16-Wr__Index
	.align 16
	.type	 Wr__Length,@function
Wr__Length:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L113:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L114
	pushl $2884
	call _m3_fault
	.align 16
.L114:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L115
	call WrMove__Die
.L115:
	movl MM_WrMove+288,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 8(%eax,%edx),%eax
	pushl %ebx
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L116:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Wr__Length,.Lfe17-Wr__Length
	.align 16
	.type	 Wr__Close,@function
Wr__Close:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L118:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %ebx
	call UnsafeWr__FastClose
	addl $4,%esp
.L119:
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
.Lfe18:
	.size	 Wr__Close,.Lfe18-Wr__Close
	.align 16
	.type	 M_WrMove_LINE_194.0,@function
M_WrMove_LINE_194.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%edx
	movl -40(%edx),%eax
	movl (%eax),%eax
	movl MM_WrMove+288,%ecx
	movl (%eax),%ebx
	movl 36(%ecx),%eax
	movl 16(%eax,%ebx),%ecx
	movl -40(%edx),%eax
	movl %ecx,-36(%edx)
	movl (%eax),%eax
	pushl %eax
	call *%ecx
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 M_WrMove_LINE_194.0,.Lfe19-M_WrMove_LINE_194.0
	.align 16
	.type	 M_WrMove_LINE_196.1,@function
M_WrMove_LINE_196.1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	movl -40(%esi),%eax
	movl (%eax),%edx
	testl %edx,%edx
	jne .L129
	pushl $3140
	call _m3_fault
	.align 16
.L129:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	movb $1,20(%eax,%edx)
	movl -40(%esi),%eax
	movl (%eax),%ecx
	testl %ecx,%ecx
	jne .L131
	pushl $3156
	call _m3_fault
	.align 16
.L131:
	movl MM_WrMove+288,%ebx
	movl 24(%ebx),%eax
	movl 12(%eax,%ecx),%edx
	movl %edx,16(%eax,%ecx)
	movl -40(%esi),%eax
	movl (%eax),%ecx
	testl %ecx,%ecx
	jne .L133
	pushl $3172
	call _m3_fault
	.align 16
.L133:
	movl 24(%ebx),%eax
	movl 12(%eax,%ecx),%edx
	movl %edx,8(%eax,%ecx)
	movl -40(%esi),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L134
	pushl $3188
	call _m3_fault
	.align 16
.L134:
	addl 24(%ebx),%eax
	leal -12(%ebp),%esp
	movl $0,(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 M_WrMove_LINE_196.1,.Lfe20-M_WrMove_LINE_196.1
	.align 16
	.type	 UnsafeWr__FastClose,@function
UnsafeWr__FastClose:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %ebx
	leal 8(%ebp),%ebx
	movl %ebx,-40(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L121
	pushl $3076
	call _m3_fault
	.align 16
.L121:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%edx)
	jne .L120
	movl $M_WrMove_LINE_196.1,-8(%ebp)
	movl %ebp,-4(%ebp)
.L123:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl $M_WrMove_LINE_194.0,-24(%ebp)
	movl %ebp,-20(%ebp)
.L124:
	movl $3,-28(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-32(%ebp)
	leal -32(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%ecx
	movl MM_WrMove+288,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl 12(%eax,%edx),%eax
	movl %eax,-36(%ebp)
	pushl %ecx
	call *%eax
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_WrMove_LINE_194.0
	addl $4,%esp
.L125:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_WrMove_LINE_196.1
.L127:
.L120:
	movl -44(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 UnsafeWr__FastClose,.Lfe21-UnsafeWr__FastClose
	.align 16
	.type	 Wr__Seekable,@function
Wr__Seekable:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L136:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L137
	pushl $3316
	call _m3_fault
	.align 16
.L137:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	movb 21(%eax,%ebx),%bl
	movl %edx,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	xorl %eax,%eax
	movb %bl,%al
.L138:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Wr__Seekable,.Lfe22-Wr__Seekable
	.align 16
	.type	 Wr__Closed,@function
Wr__Closed:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L140:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L141
	pushl $3428
	call _m3_fault
	.align 16
.L141:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	movb 20(%eax,%ebx),%bl
	movl %edx,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	xorl %eax,%eax
	movb %bl,%al
.L142:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Wr__Closed,.Lfe23-Wr__Closed
	.align 16
	.type	 Wr__Buffered,@function
Wr__Buffered:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L144:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L145
	pushl $3540
	call _m3_fault
	.align 16
.L145:
	movl MM_WrMove+288,%eax
	movl 24(%eax),%eax
	movb 22(%eax,%ebx),%bl
	movl %edx,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	xorl %eax,%eax
	movb %bl,%al
.L146:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Wr__Buffered,.Lfe24-Wr__Buffered
	.align 16
	.type	 WrClass__CloseDefault,@function
WrClass__CloseDefault:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 WrClass__CloseDefault,.Lfe25-WrClass__CloseDefault
	.align 16
	.type	 WrClass__FlushDefault,@function
WrClass__FlushDefault:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 WrClass__FlushDefault,.Lfe26-WrClass__FlushDefault
	.align 16
	.type	 WrClass__LengthDefault,@function
WrClass__LengthDefault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L150
	pushl $3764
	call _m3_fault
	.align 16
.L150:
	movl MM_WrMove+288,%eax
	movl %ebp,%esp
	movl 24(%eax),%eax
	popl %ebp
	movl 16(%eax,%edx),%eax
	ret
.Lfe27:
	.size	 WrClass__LengthDefault,.Lfe27-WrClass__LengthDefault
	.align 16
	.type	 WrMove__Die,@function
WrMove__Die:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L152:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_WrMove+152
	movl MI_RTHooks+52,%eax
	call *%eax
.L153:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 WrMove__Die,.Lfe28-WrMove__Die
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WrMove
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe29:
	.size	 _m3_fault,.Lfe29-_m3_fault
.globl MM_WrMove
.data
	.align 4
	.type	 MM_WrMove,@object
	.size	 MM_WrMove,1116
MM_WrMove:
	.long MM_WrMove+932
	.long MM_WrMove+44
	.long MM_WrMove+288
	.long MM_WrMove+276
	.zero	4
	.long MM_WrMove+592
	.zero	28
	.long -566012788
.byte 217
.byte 59
.byte 37
.byte 223
.byte 85
.byte 111
.byte 102
.byte 1
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_WrMove+1077
	.zero	8
	.long 356643957
	.zero	12
	.long MM_WrMove+1080
	.long MM_WrMove+1100
	.zero	4
	.long WrMove__DoSeek
	.long MM_WrMove+156
	.ascii	"WrMove.FatalError"
	.zero	3
	.long WrMove__Die
	.long UnsafeWr__FastPutChar
	.long UnsafeWr__FastPutText
	.long UnsafeWr__FastPutString
	.long UnsafeWr__FastPutInt
	.long UnsafeWr__FastPutReal
	.long UnsafeWr__FastPutLongReal
	.long UnsafeWr__FastClose
	.long WrClass__Lock
	.long WrClass__Unlock
	.long WrClass__PutStringDefault
	.long WrClass__LengthDefault
	.long WrClass__CloseDefault
	.long WrClass__FlushDefault
	.long Wr__PutChar
	.long Wr__PutText
	.long Wr__PutString
	.long Wr__Seek
	.long Wr__Flush
	.long Wr__Close
	.long Wr__Length
	.long Wr__Index
	.long Wr__Seekable
	.long Wr__Closed
	.long Wr__Buffered
	.long 800110099
	.long -566012788
	.zero	8
	.long -1861675307
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.ascii	"Die"
	.zero	1
	.ascii	"LengthDefault"
	.zero	1
	.ascii	"FlushDefault"
	.zero	1
	.ascii	"CloseDefault"
	.zero	1
	.ascii	"Buffered"
	.zero	1
	.ascii	"Closed"
	.zero	1
	.ascii	"Seekable"
	.zero	1
	.ascii	"FastClose"
	.zero	1
	.ascii	"M_WrMove_LINE_196"
	.zero	1
	.ascii	"M_WrMove_LINE_194"
	.zero	1
	.ascii	"Close"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"Index"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"FastPutLongReal"
	.zero	1
	.ascii	"FastPutReal"
	.zero	1
	.ascii	"FastPutInt"
	.zero	1
	.ascii	"PutStringDefault"
	.zero	1
	.ascii	"FastPutString"
	.zero	1
	.ascii	"PutString"
	.zero	1
	.ascii	"FastPutText"
	.zero	1
	.ascii	"PutText"
	.zero	1
	.ascii	"DoSeek"
	.zero	1
	.ascii	"FastPutChar"
	.zero	1
	.ascii	"PutChar"
	.zero	1
	.ascii	"Unlock"
	.zero	1
	.ascii	"Lock"
	.zero	1
	.long WrMove__Die
	.long MM_WrMove+308
	.zero	4
	.long WrClass__LengthDefault
	.long MM_WrMove+312
	.long MI_WrClass+160
	.long WrClass__FlushDefault
	.long MM_WrMove+326
	.long MI_WrClass+168
	.long WrClass__CloseDefault
	.long MM_WrMove+339
	.long MI_WrClass+164
	.long Wr__Buffered
	.long MM_WrMove+352
	.long MI_Wr+104
	.long Wr__Closed
	.long MM_WrMove+361
	.long MI_Wr+100
	.long Wr__Seekable
	.long MM_WrMove+368
	.long MI_Wr+96
	.long UnsafeWr__FastClose
	.long MM_WrMove+377
	.long MI_UnsafeWr+68
	.long M_WrMove_LINE_196.1
	.long MM_WrMove+387
	.zero	4
	.long M_WrMove_LINE_194.0
	.long MM_WrMove+405
	.zero	4
	.long Wr__Close
	.long MM_WrMove+423
	.long MI_Wr+84
	.long Wr__Length
	.long MM_WrMove+429
	.long MI_Wr+88
	.long Wr__Index
	.long MM_WrMove+436
	.long MI_Wr+92
	.long Wr__Flush
	.long MM_WrMove+442
	.long MI_Wr+80
	.long Wr__Seek
	.long MM_WrMove+448
	.long MI_Wr+76
	.long UnsafeWr__FastPutLongReal
	.long MM_WrMove+453
	.long MI_UnsafeWr+64
	.long UnsafeWr__FastPutReal
	.long MM_WrMove+469
	.long MI_UnsafeWr+60
	.long UnsafeWr__FastPutInt
	.long MM_WrMove+481
	.long MI_UnsafeWr+56
	.long WrClass__PutStringDefault
	.long MM_WrMove+492
	.long MI_WrClass+156
	.long UnsafeWr__FastPutString
	.long MM_WrMove+509
	.long MI_UnsafeWr+52
	.long Wr__PutString
	.long MM_WrMove+523
	.long MI_Wr+72
	.long UnsafeWr__FastPutText
	.long MM_WrMove+533
	.long MI_UnsafeWr+48
	.long Wr__PutText
	.long MM_WrMove+545
	.long MI_Wr+68
	.long WrMove__DoSeek
	.long MM_WrMove+553
	.zero	4
	.long UnsafeWr__FastPutChar
	.long MM_WrMove+560
	.long MI_UnsafeWr+44
	.long Wr__PutChar
	.long MM_WrMove+572
	.long MI_Wr+64
	.long WrClass__Unlock
	.long MM_WrMove+580
	.long MI_WrClass+152
	.long WrClass__Lock
	.long MM_WrMove+587
	.long MI_WrClass+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/WrMove.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"WrMove_^%#%^__0001M"
	.zero	1
	.ascii	"WrClass.Private"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
