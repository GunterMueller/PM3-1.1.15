	.file	"RdMove.mc"
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
	.type	 Rd__GetChar,@function
Rd__GetChar:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl %esi,-4(%ebp)
	pushl %esi
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L2:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %esi,%esi
	jne .L4
	pushl $532
	call _m3_fault
	.align 16
.L4:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%esi),%eax
	cmpl %eax,16(%edx,%esi)
	jne .L6
	pushl %esi
	call RdMove__DoSeek
	addl $4,%esp
.L6:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl (%edx,%esi),%ecx
	testl %ecx,%ecx
	jne .L7
	pushl $548
	call _m3_fault
	.align 16
.L7:
	movl 8(%edx,%esi),%eax
	movl 16(%edx,%esi),%edi
	subl %eax,%edi
	movl %edi,%eax
	movl 4(%edx,%esi),%ebx
	addl %eax,%ebx
	cmpl %ebx,4(%ecx)
	ja .L11
	pushl $546
	call _m3_fault
	.align 16
.L11:
	movl (%ecx),%eax
	movb (%ebx,%eax),%bl
	incl 16(%edx,%esi)
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	xorl %eax,%eax
	movb %bl,%al
.L13:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Rd__GetChar,.Lfe1-Rd__GetChar
	.align 16
	.type	 UnsafeRd__FastGetChar,@function
UnsafeRd__FastGetChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L16
	pushl $724
	call _m3_fault
	.align 16
.L16:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	jne .L18
	pushl %ebx
	call RdMove__DoSeek
	addl $4,%esp
.L18:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl (%edx,%ebx),%ecx
	testl %ecx,%ecx
	jne .L19
	pushl $740
	call _m3_fault
	.align 16
.L19:
	movl 8(%edx,%ebx),%eax
	movl 16(%edx,%ebx),%edi
	subl %eax,%edi
	movl %edi,%eax
	movl 4(%edx,%ebx),%esi
	addl %eax,%esi
	cmpl %esi,4(%ecx)
	ja .L23
	pushl $738
	call _m3_fault
	.align 16
.L23:
	movl (%ecx),%eax
	leal -12(%ebp),%esp
	movb (%esi,%eax),%al
	incl 16(%edx,%ebx)
	andl $255,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 UnsafeRd__FastGetChar,.Lfe2-UnsafeRd__FastGetChar
	.align 16
	.type	 RdMove__DoSeek,@function
RdMove__DoSeek:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L26
	pushl $868
	call _m3_fault
	.align 16
.L26:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L27
	call RdMove__Die
.L27:
	movl MM_RdMove+268,%ecx
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%edx
	pushl $0
	movl 24(%ecx),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	addl $12,%esp
	cmpl $2,%eax
	jne .L25
	pushl $0
	pushl $MI_Rd+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L25:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RdMove__DoSeek,.Lfe3-RdMove__DoSeek
	.align 16
	.type	 Rd__GetSub,@function
Rd__GetSub:
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
.L31:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L32
	pushl $1028
	call _m3_fault
	.align 16
.L32:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L33
	call RdMove__Die
.L33:
	movl MM_RdMove+268,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl %eax,%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L34:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Rd__GetSub,.Lfe4-Rd__GetSub
	.align 16
	.type	 UnsafeRd__FastGetSub,@function
UnsafeRd__FastGetSub:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L36
	pushl $1156
	call _m3_fault
	.align 16
.L36:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L37
	call RdMove__Die
.L37:
	movl MM_RdMove+268,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 UnsafeRd__FastGetSub,.Lfe5-UnsafeRd__FastGetSub
	.align 16
	.type	 RdClass__GetSubDefault,@function
RdClass__GetSubDefault:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-24(%ebp)
.L39:
	movl 12(%ebp),%eax
	movl -24(%ebp),%esi
	cmpl %esi,4(%eax)
	je .L41
	testl %edi,%edi
	jne .L43
	pushl $1316
	call _m3_fault
	.align 16
.L43:
	movl MM_RdMove+268,%ecx
	movl 24(%ecx),%eax
	movl 16(%eax,%edi),%ebx
	cmpl %ebx,12(%eax,%edi)
	jne .L48
	movl (%edi),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%ecx
	pushl $0
	pushl %ebx
	pushl %edi
	call *%ecx
	addl $12,%esp
	cmpl $2,%eax
	je .L41
.L48:
	movl 12(%ebp),%ecx
	movl MM_RdMove+268,%esi
	movl %esi,-20(%ebp)
	movl 24(%esi),%edx
	movl 4(%ecx),%ebx
	subl -24(%ebp),%ebx
	movl 16(%edx,%edi),%eax
	movl 12(%edx,%edi),%edx
	subl %eax,%edx
	movl %edx,%eax
	cmpl %eax,%ebx
	jle .L49
	movl %eax,%ebx
.L49:
	cmpl $0,-24(%ebp)
	jge .L50
	pushl $1393
	call _m3_fault
	.align 16
.L50:
	testl %ebx,%ebx
	jge .L51
	pushl $1393
	call _m3_fault
	.align 16
.L51:
	movl %ebx,-4(%ebp)
	movl -24(%ebp),%eax
	addl %ebx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L52
	pushl $1393
	call _m3_fault
	.align 16
.L52:
	movl -24(%ebp),%esi
	addl (%ecx),%esi
	movl %esi,-8(%ebp)
	movl -20(%ebp),%esi
	movl 24(%esi),%edx
	movl (%edx,%edi),%eax
	testl %eax,%eax
	jne .L54
	pushl $1396
	call _m3_fault
	.align 16
.L54:
	movl %eax,%ecx
	movl 8(%edx,%edi),%eax
	movl 16(%edx,%edi),%esi
	subl %eax,%esi
	movl %esi,%eax
	addl 4(%edx,%edi),%eax
	movl %eax,%edx
	testl %edx,%edx
	jge .L58
	pushl $1393
	call _m3_fault
	.align 16
.L58:
	testl %ebx,%ebx
	jge .L59
	pushl $1393
	call _m3_fault
	.align 16
.L59:
	movl %ebx,-12(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L60
	pushl $1393
	call _m3_fault
	.align 16
.L60:
	movl (%ecx),%eax
	addl %edx,%eax
	movl %eax,-16(%ebp)
	cmpl %ebx,-4(%ebp)
	je .L61
	pushl $1395
	call _m3_fault
	.align 16
.L61:
	pushl %ebx
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	call memmove
	addl %ebx,-24(%ebp)
	movl MM_RdMove+268,%eax
	movl %edi,%ecx
	addl 24(%eax),%ecx
	addl $12,%esp
	movl 16(%ecx),%eax
	addl %ebx,%eax
	jns .L63
	pushl $1441
	call _m3_fault
	.align 16
.L63:
	movl %eax,16(%ecx)
	jmp .L39
	.align 16
.L41:
	cmpl $0,-24(%ebp)
	jge .L64
	pushl $1489
	call _m3_fault
	.align 16
.L64:
	leal -36(%ebp),%esp
	movl -24(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RdClass__GetSubDefault,.Lfe6-RdClass__GetSubDefault
	.align 16
	.type	 Rd__EOF,@function
Rd__EOF:
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
.L66:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%ecx
	movl %ecx,-12(%ebp)
	leal -12(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L68
	pushl $1684
	call _m3_fault
	.align 16
.L68:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	je .L70
	movl %ecx,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	xorl %eax,%eax
	jmp .L65
	.align 16
.L70:
	cmpb $0,20(%edx,%ebx)
	je .L71
	call RdMove__Die
.L71:
	movl MM_RdMove+268,%ecx
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%edx
	pushl $0
	movl 24(%ecx),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	addl $12,%esp
	cmpl $2,%eax
	sete %bl
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	xorl %eax,%eax
	movb %bl,%al
.L73:
.L65:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Rd__EOF,.Lfe7-Rd__EOF
	.align 16
	.type	 UnsafeRd__FastEOF,@function
UnsafeRd__FastEOF:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L76
	pushl $1892
	call _m3_fault
	.align 16
.L76:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	je .L78
	xorl %eax,%eax
	jmp .L81
	.align 16
.L78:
	cmpb $0,20(%edx,%ebx)
	je .L79
	call RdMove__Die
.L79:
	movl MM_RdMove+268,%ecx
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%edx
	pushl $0
	movl 24(%ecx),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	cmpl $2,%eax
	sete %al
	andl $255,%eax
.L81:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 UnsafeRd__FastEOF,.Lfe8-UnsafeRd__FastEOF
	.align 16
	.type	 Rd__UnGetChar,@function
Rd__UnGetChar:
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
.L83:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %ebx
	call UnsafeRd__FastUnGetChar
	addl $4,%esp
.L84:
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
.Lfe9:
	.size	 Rd__UnGetChar,.Lfe9-Rd__UnGetChar
	.align 16
	.type	 UnsafeRd__FastUnGetChar,@function
UnsafeRd__FastUnGetChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L86
	pushl $2132
	call _m3_fault
	.align 16
.L86:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	cmpb $0,20(%edx,%ebx)
	jne .L87
	movl 8(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	jne .L90
.L87:
	call RdMove__Die
.L90:
	testl %ebx,%ebx
	jne .L91
	pushl $2148
	call _m3_fault
	.align 16
.L91:
	movl MM_RdMove+268,%eax
	movl %ebx,%edx
	addl 24(%eax),%edx
	movl 16(%edx),%eax
	decl %eax
	jns .L92
	pushl $2145
	call _m3_fault
	.align 16
.L92:
	movl %eax,16(%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 UnsafeRd__FastUnGetChar,.Lfe10-UnsafeRd__FastUnGetChar
	.align 16
	.type	 Rd__CharsReady,@function
Rd__CharsReady:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L94:
	movl $MM_RdMove+276,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl %ebx,-16(%ebp)
	pushl %ebx
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L95:
	movl $6,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L97
	pushl $2260
	call _m3_fault
	.align 16
.L97:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ebx),%eax
	cmpl %eax,16(%edx,%ebx)
	jne .L98
	cmpb $0,20(%edx,%ebx)
	je .L100
	call RdMove__Die
.L100:
	movl MM_RdMove+268,%ecx
	movl (%ebx),%edx
	movl 36(%ecx),%eax
	movl (%eax,%edx),%edx
	pushl $1
	movl 24(%ecx),%eax
	movl 16(%eax,%ebx),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	addl $12,%esp
	cmpl $2,%eax
	jne .L98
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	movl $1,%ebx
	jmp .L108
	.align 16
.L98:
	testl %ebx,%ebx
	jne .L104
	pushl $2324
	call _m3_fault
	.align 16
.L104:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%edx
	movl 16(%edx,%ebx),%eax
	movl 12(%edx,%ebx),%ebx
	subl %eax,%ebx
	movl %ebx,%eax
	testl %eax,%eax
	jge .L105
	pushl $2321
	call _m3_fault
	.align 16
.L105:
	movl %eax,%ebx
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
.L108:
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L106:
.L107:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Rd__CharsReady,.Lfe11-Rd__CharsReady
	.align 16
	.type	 Rd__Index,@function
Rd__Index:
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
.L110:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L111
	pushl $2436
	call _m3_fault
	.align 16
.L111:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L113
	call RdMove__Die
.L113:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	movl 16(%eax,%ebx),%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L114:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Rd__Index,.Lfe12-Rd__Index
	.align 16
	.type	 Rd__Length,@function
Rd__Length:
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
.L116:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L117
	pushl $2564
	call _m3_fault
	.align 16
.L117:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	je .L118
	call RdMove__Die
.L118:
	movl MM_RdMove+268,%eax
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
.L119:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Rd__Length,.Lfe13-Rd__Length
	.align 16
	.type	 Rd__Seek,@function
Rd__Seek:
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
.L121:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L122
	pushl $2692
	call _m3_fault
	.align 16
.L122:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%ebx)
	jne .L123
	cmpb $0,21(%eax,%ebx)
	jne .L125
.L123:
	call RdMove__Die
.L125:
	testl %ebx,%ebx
	jne .L126
	pushl $2708
	call _m3_fault
	.align 16
.L126:
	movl MM_RdMove+268,%edx
	movl 24(%edx),%eax
	cmpl %esi,8(%eax,%ebx)
	jg .L127
	cmpl %esi,12(%eax,%ebx)
	jge .L131
.L127:
	movl (%ebx),%eax
	movl 36(%edx),%edx
	movl (%edx,%eax),%eax
	pushl $0
	pushl %esi
	pushl %ebx
	call *%eax
	addl $12,%esp
	jmp .L132
	.align 16
.L131:
	movl %esi,16(%eax,%ebx)
.L132:
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
	.size	 Rd__Seek,.Lfe14-Rd__Seek
	.align 16
	.type	 Rd__Close,@function
Rd__Close:
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
.L134:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %ebx
	call UnsafeRd__FastClose
	addl $4,%esp
.L135:
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
	.size	 Rd__Close,.Lfe15-Rd__Close
	.align 16
	.type	 M_RdMove_LINE_188.0,@function
M_RdMove_LINE_188.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	movl -20(%esi),%eax
	movl (%eax),%edx
	testl %edx,%edx
	jne .L142
	pushl $3012
	call _m3_fault
	.align 16
.L142:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	movb $1,20(%eax,%edx)
	movl -20(%esi),%eax
	movl (%eax),%ecx
	testl %ecx,%ecx
	jne .L144
	pushl $3028
	call _m3_fault
	.align 16
.L144:
	movl MM_RdMove+268,%ebx
	movl 24(%ebx),%eax
	movl 12(%eax,%ecx),%edx
	movl %edx,16(%eax,%ecx)
	movl -20(%esi),%eax
	movl (%eax),%ecx
	testl %ecx,%ecx
	jne .L146
	pushl $3044
	call _m3_fault
	.align 16
.L146:
	movl 24(%ebx),%eax
	movl 12(%eax,%ecx),%edx
	movl %edx,8(%eax,%ecx)
	movl -20(%esi),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L147
	pushl $3060
	call _m3_fault
	.align 16
.L147:
	addl 24(%ebx),%eax
	movl %eax,-24(%esi)
	leal -12(%ebp),%esp
	movl $0,(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 M_RdMove_LINE_188.0,.Lfe16-M_RdMove_LINE_188.0
	.align 16
	.type	 UnsafeRd__FastClose,@function
UnsafeRd__FastClose:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	leal 8(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L137
	pushl $2948
	call _m3_fault
	.align 16
.L137:
	movl MM_RdMove+268,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%edx)
	jne .L136
	movl $M_RdMove_LINE_188.0,-8(%ebp)
	movl %ebp,-4(%ebp)
.L139:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%ecx
	movl MM_RdMove+268,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl 12(%eax,%edx),%eax
	movl %eax,-24(%ebp)
	pushl %ecx
	call *%eax
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_RdMove_LINE_188.0
.L140:
.L136:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 UnsafeRd__FastClose,.Lfe17-UnsafeRd__FastClose
	.align 16
	.type	 RdClass__Lock,@function
RdClass__Lock:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Thread+160,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 RdClass__Lock,.Lfe18-RdClass__Lock
	.align 16
	.type	 RdClass__Unlock,@function
RdClass__Unlock:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Thread+164,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 RdClass__Unlock,.Lfe19-RdClass__Unlock
	.align 16
	.type	 RdClass__LengthDefault,@function
RdClass__LengthDefault:
	pushl %ebp
	movl %esp,%ebp
	call RdMove__Die
	pushl $3350
	call _m3_fault
	.align 16
.Lfe20:
	.size	 RdClass__LengthDefault,.Lfe20-RdClass__LengthDefault
	.align 16
	.type	 RdClass__CloseDefault,@function
RdClass__CloseDefault:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 RdClass__CloseDefault,.Lfe21-RdClass__CloseDefault
	.align 16
	.type	 RdMove__Die,@function
RdMove__Die:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L153:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_RdMove+152
	movl MI_RTHooks+52,%eax
	call *%eax
.L154:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 RdMove__Die,.Lfe22-RdMove__Die
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RdMove
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe23:
	.size	 _m3_fault,.Lfe23-_m3_fault
.globl MM_RdMove
.data
	.align 4
	.type	 MM_RdMove,@object
	.size	 MM_RdMove,940
MM_RdMove:
	.long MM_RdMove+756
	.long MM_RdMove+44
	.long MM_RdMove+268
	.long MM_RdMove+256
	.zero	4
	.long MM_RdMove+488
	.zero	28
	.long 1073503508
.byte 47
.byte 75
.byte 217
.byte 32
.byte 59
.byte 22
.byte 37
.byte 31
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RdMove+901
	.zero	8
	.long 356643957
	.zero	12
	.long MM_RdMove+904
	.long MM_RdMove+924
	.zero	4
	.long RdMove__DoSeek
	.long MM_RdMove+156
	.ascii	"RdMove.FatalError"
	.zero	3
	.long RdMove__Die
	.long UnsafeRd__FastGetChar
	.long UnsafeRd__FastGetSub
	.long UnsafeRd__FastEOF
	.long UnsafeRd__FastUnGetChar
	.long UnsafeRd__FastClose
	.long RdClass__Lock
	.long RdClass__Unlock
	.long RdClass__GetSubDefault
	.long RdClass__LengthDefault
	.long RdClass__CloseDefault
	.long Rd__GetChar
	.long Rd__EOF
	.long Rd__UnGetChar
	.long Rd__CharsReady
	.long Rd__GetSub
	.long Rd__Seek
	.long Rd__Close
	.long Rd__Index
	.long Rd__Length
	.long 483796623
	.long 1073503508
	.zero	8
	.long -1638177541
	.long MI_Rd+64
	.zero	4
	.ascii	"Die"
	.zero	1
	.ascii	"CloseDefault"
	.zero	1
	.ascii	"LengthDefault"
	.zero	1
	.ascii	"Unlock"
	.zero	1
	.ascii	"Lock"
	.zero	1
	.ascii	"FastClose"
	.zero	1
	.ascii	"M_RdMove_LINE_188"
	.zero	1
	.ascii	"Close"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"Index"
	.zero	1
	.ascii	"CharsReady"
	.zero	1
	.ascii	"FastUnGetChar"
	.zero	1
	.ascii	"UnGetChar"
	.zero	1
	.ascii	"FastEOF"
	.zero	1
	.ascii	"EOF"
	.zero	1
	.ascii	"GetSubDefault"
	.zero	1
	.ascii	"FastGetSub"
	.zero	1
	.ascii	"GetSub"
	.zero	1
	.ascii	"DoSeek"
	.zero	1
	.ascii	"FastGetChar"
	.zero	1
	.ascii	"GetChar"
	.zero	4
	.long RdMove__Die
	.long MM_RdMove+284
	.zero	4
	.long RdClass__CloseDefault
	.long MM_RdMove+288
	.long MI_RdClass+164
	.long RdClass__LengthDefault
	.long MM_RdMove+301
	.long MI_RdClass+160
	.long RdClass__Unlock
	.long MM_RdMove+315
	.long MI_RdClass+152
	.long RdClass__Lock
	.long MM_RdMove+322
	.long MI_RdClass+148
	.long UnsafeRd__FastClose
	.long MM_RdMove+327
	.long MI_UnsafeRd+60
	.long M_RdMove_LINE_188.0
	.long MM_RdMove+337
	.zero	4
	.long Rd__Close
	.long MM_RdMove+355
	.long MI_Rd+116
	.long Rd__Seek
	.long MM_RdMove+361
	.long MI_Rd+112
	.long Rd__Length
	.long MM_RdMove+366
	.long MI_Rd+124
	.long Rd__Index
	.long MM_RdMove+373
	.long MI_Rd+120
	.long Rd__CharsReady
	.long MM_RdMove+379
	.long MI_Rd+92
	.long UnsafeRd__FastUnGetChar
	.long MM_RdMove+390
	.long MI_UnsafeRd+56
	.long Rd__UnGetChar
	.long MM_RdMove+404
	.long MI_Rd+88
	.long UnsafeRd__FastEOF
	.long MM_RdMove+414
	.long MI_UnsafeRd+52
	.long Rd__EOF
	.long MM_RdMove+422
	.long MI_Rd+84
	.long RdClass__GetSubDefault
	.long MM_RdMove+426
	.long MI_RdClass+156
	.long UnsafeRd__FastGetSub
	.long MM_RdMove+440
	.long MI_UnsafeRd+48
	.long Rd__GetSub
	.long MM_RdMove+451
	.long MI_Rd+96
	.long RdMove__DoSeek
	.long MM_RdMove+458
	.zero	4
	.long UnsafeRd__FastGetChar
	.long MM_RdMove+465
	.long MI_UnsafeRd+44
	.long Rd__GetChar
	.long MM_RdMove+477
	.long MI_Rd+80
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/RdMove.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"RdMove_^%#%^__0001M"
	.zero	1
	.ascii	"RdClass.Private"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
