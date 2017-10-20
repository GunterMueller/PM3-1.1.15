	.file	"M3Buf.mc"
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
	.type	 M3Buf__New,@function
M3Buf__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_M3Buf+528,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L2
	pushl $564
	call _m3_fault
	.align 16
.L2:
	movl $0,(%ebx)
	movl $0,4(%ebx)
	movl MM_M3Buf+536,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl %eax,12(%ebx)
	movl $0,16(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3Buf__New,.Lfe1-M3Buf__New
	.align 16
	.type	 M3Buf__PutChar,@function
M3Buf__PutChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L9
	pushl $724
	call _m3_fault
	.align 16
.L9:
	cmpl $2035,4(%ebx)
	jle .L11
	pushl %ebx
	call M3Buf__Expand
	addl $4,%esp
.L11:
	movl 12(%ebx),%edx
	testl %edx,%edx
	jne .L13
	pushl $740
	call _m3_fault
	.align 16
.L13:
	movl 4(%ebx),%eax
	cmpl $2035,%eax
	jbe .L14
	pushl $737
	call _m3_fault
	.align 16
.L14:
	movb 12(%ebp),%cl
	movb %cl,4(%edx,%eax)
	incl 4(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3Buf__PutChar,.Lfe2-M3Buf__PutChar
	.align 16
	.type	 M3Buf__PutSub,@function
M3Buf__PutSub:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ecx
	movl $0,-20(%ebp)
	movl 4(%ecx),%esi
	testl %edi,%edi
	jne .L17
	pushl $900
	call _m3_fault
	.align 16
.L17:
	movl $2036,%eax
	subl 4(%edi),%eax
	cmpl %esi,%eax
	jle .L27
	movl %esi,-4(%ebp)
	movl 4(%edi),%eax
	testl %eax,%eax
	jge .L20
	pushl $913
	call _m3_fault
	.align 16
.L20:
	movl %eax,%edx
	leal (%esi,%edx),%eax
	cmpl $2036,%eax
	jle .L22
	pushl $913
	call _m3_fault
	.align 16
.L22:
	movl 12(%edi),%eax
	testl %eax,%eax
	jne .L23
	pushl $916
	call _m3_fault
	.align 16
.L23:
	leal 4(%eax,%edx),%edx
	movl %edx,-8(%ebp)
	cmpl %esi,4(%ecx)
	je .L24
	pushl $915
	call _m3_fault
	.align 16
.L24:
	pushl %esi
	movl (%ecx),%eax
	pushl %eax
	pushl %edx
	call memmove
	addl %esi,4(%edi)
	jmp .L16
	.align 16
.L28:
	testl %edi,%edi
	jne .L29
	pushl $980
	call _m3_fault
	.align 16
.L29:
	movl $2036,%eax
	subl 4(%edi),%eax
	movl %esi,%ebx
	cmpl %eax,%esi
	jle .L30
	movl %eax,%ebx
.L30:
	testl %ebx,%ebx
	jge .L31
	pushl $993
	call _m3_fault
	.align 16
.L31:
	movl %ebx,-4(%ebp)
	movl 4(%edi),%eax
	testl %eax,%eax
	jge .L33
	pushl $993
	call _m3_fault
	.align 16
.L33:
	movl %eax,%edx
	leal (%ebx,%edx),%eax
	cmpl $2036,%eax
	jle .L35
	pushl $993
	call _m3_fault
	.align 16
.L35:
	movl 12(%edi),%eax
	testl %eax,%eax
	jne .L36
	pushl $996
	call _m3_fault
	.align 16
.L36:
	leal 4(%eax,%edx),%ecx
	movl %ecx,-8(%ebp)
	cmpl $0,-20(%ebp)
	jge .L37
	pushl $993
	call _m3_fault
	.align 16
.L37:
	movl %ebx,-12(%ebp)
	movl -20(%ebp),%eax
	movl 12(%ebp),%edx
	addl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L39
	pushl $993
	call _m3_fault
	.align 16
.L39:
	movl -20(%ebp),%eax
	addl (%edx),%eax
	movl %eax,-16(%ebp)
	pushl %ebx
	pushl %eax
	pushl %ecx
	call memmove
	movl %esi,%eax
	subl %ebx,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L41
	pushl $1009
	call _m3_fault
	.align 16
.L41:
	movl %eax,%esi
	addl %ebx,-20(%ebp)
	testl %edi,%edi
	jne .L42
	pushl $1044
	call _m3_fault
	.align 16
.L42:
	addl %ebx,4(%edi)
	testl %esi,%esi
	jle .L16
	pushl %edi
	call M3Buf__Expand
	addl $4,%esp
.L27:
	testl %esi,%esi
	jg .L28
.L16:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3Buf__PutSub,.Lfe3-M3Buf__PutSub
	.align 16
	.type	 M3Buf__PutText,@function
M3Buf__PutText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L46
	pushl $1172
	call _m3_fault
	.align 16
.L46:
	movl 4(%edx),%eax
	decl %eax
	jns .L48
	pushl $1169
	call _m3_fault
	.align 16
.L48:
	movl %eax,-4(%ebp)
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L49
	pushl $1169
	call _m3_fault
	.align 16
.L49:
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call M3Buf__PutSub
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3Buf__PutText,.Lfe4-M3Buf__PutText
	.align 16
	.type	 M3Buf__PutInt,@function
M3Buf__PutInt:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
.L51:
	movl $5,-40(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-44(%ebp)
	leal -44(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jl .L52
	cmpl $9,%ebx
	jg .L53
	jbe .L54
	pushl $1761
	call _m3_fault
	.align 16
.L54:
	xorl %eax,%eax
	movb MM_M3Buf+252(%ebx),%al
.L65:
	pushl %eax
	pushl %edi
	call M3Buf__PutChar
	jmp .L64
	.align 16
.L53:
	cmpl $99,%ebx
	jg .L55
	jbe .L56
	pushl $1809
	call _m3_fault
	.align 16
.L56:
	xorl %eax,%eax
	movb MM_M3Buf+362(%ebx),%al
	pushl %eax
	pushl %edi
	call M3Buf__PutChar
	addl $8,%esp
	xorl %eax,%eax
	movb MM_M3Buf+262(%ebx),%al
	jmp .L65
	.align 16
.L55:
	cmpl $999,%ebx
	jg .L52
	pushl %ebx
	pushl $100
	call m3_div
	addl $8,%esp
	cmpl $9,%eax
	jbe .L59
	pushl $1873
	call _m3_fault
	.align 16
.L59:
	movl $MM_M3Buf+252,%esi
	movb (%esi,%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %edi
	call M3Buf__PutChar
	pushl %ebx
	pushl $10
	call m3_div
	pushl %eax
	pushl $10
	call m3_mod
	addl $24,%esp
	cmpl $9,%eax
	jbe .L60
	pushl $1889
	call _m3_fault
	.align 16
.L60:
	movb (%esi,%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %edi
	call M3Buf__PutChar
	pushl %ebx
	pushl $10
	call m3_mod
	addl $16,%esp
	cmpl $9,%eax
	jbe .L61
	pushl $1905
	call _m3_fault
	.align 16
.L61:
	movb (%esi,%eax),%al
	andl $255,%eax
	jmp .L65
	.align 16
.L52:
	leal -36(%ebp),%esi
	movl %esi,-52(%ebp)
	movl $36,-48(%ebp)
	pushl $0
	pushl $10
	pushl %ebx
	leal -52(%ebp),%ebx
	pushl %ebx
	movl MI_Convert+64,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L62
	pushl $1985
	call _m3_fault
	.align 16
.L62:
	cmpl $36,%eax
	jle .L63
	pushl $1985
	call _m3_fault
	.align 16
.L63:
	movl %eax,-48(%ebp)
	movl %esi,-52(%ebp)
	pushl %ebx
	pushl %edi
	call M3Buf__PutSub
.L64:
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3Buf__PutInt,.Lfe5-M3Buf__PutInt
	.align 16
	.type	 M3Buf__PutIntt,@function
M3Buf__PutIntt:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %edi
	pushl %esi
	leal -72(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%edi
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L67
	movl -72(%ebp),%eax
	pushl %eax
	pushl %edi
	call M3Buf__PutInt
	jmp .L66
	.align 16
.L67:
	leal -68(%ebp),%esi
	movl %esi,-80(%ebp)
	movl $65,-76(%ebp)
	leal -80(%ebp),%ebx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+112,%eax
	call *%eax
	movl %eax,-72(%ebp)
	addl $8,%esp
	testl %eax,%eax
	jge .L69
	pushl $2145
	call _m3_fault
	.align 16
.L69:
	cmpl $65,%eax
	jle .L70
	pushl $2145
	call _m3_fault
	.align 16
.L70:
	movl %eax,-76(%ebp)
	movl %esi,-80(%ebp)
	pushl %ebx
	pushl %edi
	call M3Buf__PutSub
.L66:
	leal -92(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 M3Buf__PutIntt,.Lfe6-M3Buf__PutIntt
	.align 16
	.type	 M3Buf__PutFloat,@function
M3Buf__PutFloat:
	pushl %ebp
	movl %esp,%ebp
	subl $84,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L72:
	movl $5,-72(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-76(%ebp)
	leal -76(%ebp),%edx
	movl 12(%ebp),%ecx
	movl %edx,RTThread__handlerStack
	cmpl $0,4(%ecx)
	je .L73
	pushl $2272
	call _m3_fault
	.align 16
.L73:
	leal -68(%ebp),%esi
	movl %esi,-84(%ebp)
	movl $68,-80(%ebp)
	pushl $2
	pushl $13
	leal -84(%ebp),%ebx
	movl 12(%ecx),%eax
	movl 8(%ecx),%edx
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_Convert+80,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jge .L74
	pushl $2305
	call _m3_fault
	.align 16
.L74:
	cmpl $68,%eax
	jle .L75
	pushl $2305
	call _m3_fault
	.align 16
.L75:
	movl %eax,-80(%ebp)
	movl %esi,-84(%ebp)
	pushl %ebx
	pushl %edi
	call M3Buf__PutSub
.L76:
	movl -76(%ebp),%eax
	leal -96(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3Buf__PutFloat,.Lfe7-M3Buf__PutFloat
	.align 16
	.type	 M3Buf__ToText,@function
M3Buf__ToText:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	leal -4(%ebp),%ecx
	pushl %ebx
	leal -12(%ebp),%ebx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	cmpl $0,8(%ebp)
	jne .L79
	pushl $2372
	call _m3_fault
	.align 16
.L79:
	movl 8(%ebp),%ecx
	movl (%ecx),%edx
	movl %edx,%eax
	sall $7,%eax
	subl %edx,%eax
	leal (%edx,%eax,4),%eax
	movl 4(%ecx),%edx
	leal 1(%edx,%eax,4),%eax
	movl %eax,-4(%ebp)
	pushl %ebx
	movl MM_M3Buf+544,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	movl 8(%ebp),%ecx
	xorl %edx,%edx
	movl 8(%ecx),%ecx
	movl %ecx,-40(%ebp)
	movl 8(%ebp),%ecx
	movl $1,-44(%ebp)
	movl (%ecx),%ecx
	movl %ecx,-48(%ebp)
	jmp .L82
	.align 16
.L83:
	testl %ebx,%ebx
	jne .L84
	pushl $2436
	call _m3_fault
	.align 16
.L84:
	testl %edx,%edx
	jge .L85
	pushl $2433
	call _m3_fault
	.align 16
.L85:
	movl $2036,-16(%ebp)
	movl 4(%ebx),%eax
	addl $-2036,%eax
	movl %edx,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	testl %eax,%eax
	jle .L86
	pushl $2433
	call _m3_fault
	.align 16
.L86:
	movl (%ebx),%edi
	addl %edx,%edi
	movl %edi,-20(%ebp)
	cmpl $0,-40(%ebp)
	jne .L88
	pushl $2436
	call _m3_fault
	.align 16
.L88:
	movl -40(%ebp),%esi
	addl $4,%esi
	cld
	movl $509,%ecx
	rep
	movsl
	movl -40(%ebp),%ecx
	addl $2036,%edx
	movl (%ecx),%ecx
	movl %ecx,-40(%ebp)
	incl -44(%ebp)
.L82:
	movl -48(%ebp),%ecx
	cmpl %ecx,-44(%ebp)
	jle .L83
	cmpl $0,8(%ebp)
	jne .L91
	pushl $2500
	call _m3_fault
	.align 16
.L91:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%esi
	testl %esi,%esi
	je .L92
	testl %ebx,%ebx
	jne .L93
	pushl $2516
	call _m3_fault
	.align 16
.L93:
	testl %edx,%edx
	jge .L94
	pushl $2513
	call _m3_fault
	.align 16
.L94:
	testl %esi,%esi
	jge .L96
	pushl $2513
	call _m3_fault
	.align 16
.L96:
	movl %esi,-24(%ebp)
	leal (%esi,%edx),%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L97
	pushl $2513
	call _m3_fault
	.align 16
.L97:
	movl (%ebx),%eax
	addl %edx,%eax
	movl 8(%ebp),%ecx
	movl %eax,-28(%ebp)
	movl 4(%ecx),%edx
	testl %edx,%edx
	jge .L99
	pushl $2513
	call _m3_fault
	.align 16
.L99:
	cmpl $2036,%edx
	jle .L100
	pushl $2513
	call _m3_fault
	.align 16
.L100:
	movl %edx,-32(%ebp)
	cmpl $0,-40(%ebp)
	jne .L101
	pushl $2516
	call _m3_fault
	.align 16
.L101:
	movl -40(%ebp),%edi
	addl $4,%edi
	movl %edi,-36(%ebp)
	cmpl %esi,%edx
	je .L102
	pushl $2515
	call _m3_fault
	.align 16
.L102:
	pushl %edx
	pushl %edi
	pushl %eax
	call memmove
	addl $12,%esp
.L92:
	testl %ebx,%ebx
	jne .L104
	pushl $2548
	call _m3_fault
	.align 16
.L104:
	movl 4(%ebx),%edx
	leal -1(%edx),%eax
	cmpl %edx,%eax
	jb .L105
	pushl $2546
	call _m3_fault
	.align 16
.L105:
	movl (%ebx),%eax
	movb $0,-1(%edx,%eax)
	movl 8(%ebp),%ecx
	pushl %ecx
	call M3Buf__Reset
	leal -60(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3Buf__ToText,.Lfe8-M3Buf__ToText
	.align 16
	.type	 M3Buf__ToFP,@function
M3Buf__ToFP:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MI_M3FP+52,%eax
	movl %eax,-8(%ebp)
	movl MI_M3FP+56,%eax
	movl %eax,-4(%ebp)
	testl %edi,%edi
	jne .L107
	pushl $2660
	call _m3_fault
	.align 16
.L107:
	movl 8(%edi),%ebx
	movl $1,%esi
	movl (%edi),%ecx
	movl %ecx,-36(%ebp)
	jmp .L109
	.align 16
.L110:
	testl %ebx,%ebx
	jne .L111
	pushl $2708
	call _m3_fault
	.align 16
.L111:
	leal 4(%ebx),%ecx
	movl %ecx,-24(%ebp)
	movl $2036,-20(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_M3FP+64,%eax
	call *%eax
	addl $12,%esp
	movl (%ebx),%ebx
	incl %esi
.L109:
	cmpl %esi,-36(%ebp)
	jge .L110
	testl %edi,%edi
	jne .L114
	pushl $2756
	call _m3_fault
	.align 16
.L114:
	movl 4(%edi),%eax
	testl %eax,%eax
	je .L115
	jge .L117
	pushl $2769
	call _m3_fault
	.align 16
.L117:
	cmpl $2036,%eax
	jle .L118
	pushl $2769
	call _m3_fault
	.align 16
.L118:
	movl %eax,-28(%ebp)
	testl %ebx,%ebx
	jne .L119
	pushl $2772
	call _m3_fault
	.align 16
.L119:
	addl $4,%ebx
	movl %ebx,-32(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_M3FP+64,%eax
	call *%eax
	addl $12,%esp
.L115:
	pushl %edi
	call M3Buf__Reset
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	leal -48(%ebp),%esp
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M3Buf__ToFP,.Lfe9-M3Buf__ToFP
	.align 16
	.type	 M3Buf__Flush,@function
M3Buf__Flush:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L121:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %edi,%edi
	jne .L122
	pushl $2900
	call _m3_fault
	.align 16
.L122:
	movl 8(%edi),%esi
	movl $1,%ebx
	movl (%edi),%edx
	movl %edx,-28(%ebp)
	jmp .L124
	.align 16
.L125:
	testl %esi,%esi
	jne .L126
	pushl $2932
	call _m3_fault
	.align 16
.L126:
	leal 4(%esi),%edx
	movl %edx,-16(%ebp)
	movl $2036,-12(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Wr+72,%eax
	call *%eax
	addl $8,%esp
	movl (%esi),%esi
	incl %ebx
.L124:
	cmpl %ebx,-28(%ebp)
	jge .L125
	testl %edi,%edi
	jne .L129
	pushl $2948
	call _m3_fault
	.align 16
.L129:
	movl 4(%edi),%eax
	testl %eax,%eax
	je .L130
	jge .L132
	pushl $2945
	call _m3_fault
	.align 16
.L132:
	cmpl $2036,%eax
	jle .L133
	pushl $2945
	call _m3_fault
	.align 16
.L133:
	movl %eax,-20(%ebp)
	testl %esi,%esi
	jne .L134
	pushl $2948
	call _m3_fault
	.align 16
.L134:
	addl $4,%esi
	movl %esi,-24(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Wr+72,%eax
	call *%eax
	addl $8,%esp
.L130:
	pushl %edi
	call M3Buf__Reset
.L135:
	movl -8(%ebp),%eax
	leal -40(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 M3Buf__Flush,.Lfe10-M3Buf__Flush
	.align 16
	.type	 M3Buf__AttachDrain,@function
M3Buf__AttachDrain:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %eax,%eax
	jne .L137
	pushl $3204
	call _m3_fault
	.align 16
.L137:
	movl %edx,16(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M3Buf__AttachDrain,.Lfe11-M3Buf__AttachDrain
	.align 16
	.type	 M3Buf__Expand,@function
M3Buf__Expand:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L139
	pushl $3316
	call _m3_fault
	.align 16
.L139:
	cmpl $2036,4(%ebx)
	je .L141
	pushl $3312
	call _m3_fault
	.align 16
.L141:
	cmpl $0,16(%ebx)
	je .L147
	movl $0,4(%ebx)
	incl (%ebx)
	movl 16(%ebx),%eax
	pushl %eax
	pushl %ebx
	call M3Buf__Flush
	jmp .L138
	.align 16
.L147:
	movl 12(%ebx),%eax
	testl %eax,%eax
	jne .L148
	pushl $3412
	call _m3_fault
	.align 16
.L148:
	cmpl $0,(%eax)
	jne .L149
	movl MM_M3Buf+536,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	addl $4,%esp
	movl 12(%ebx),%edx
	testl %edx,%edx
	jne .L151
	pushl $3412
	call _m3_fault
	.align 16
.L151:
	movl %eax,(%edx)
.L149:
	testl %ebx,%ebx
	jne .L152
	pushl $3428
	call _m3_fault
	.align 16
.L152:
	movl %ebx,%edx
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L154
	pushl $3428
	call _m3_fault
	.align 16
.L154:
	movl (%eax),%eax
	movl %eax,12(%edx)
	movl $0,4(%edx)
	incl (%edx)
.L138:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 M3Buf__Expand,.Lfe12-M3Buf__Expand
	.align 16
	.type	 M3Buf__Reset,@function
M3Buf__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L159
	pushl $3572
	call _m3_fault
	.align 16
.L159:
	movl 8(%edx),%eax
	movl %eax,12(%edx)
	movl $0,(%edx)
	movl $0,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 M3Buf__Reset,.Lfe13-M3Buf__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3Buf
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_M3Buf
.data
	.align 4
	.type	 MM_M3Buf,@object
	.size	 MM_M3Buf,1024
MM_M3Buf:
	.long MM_M3Buf+808
	.long MM_M3Buf+44
	.long MM_M3Buf+528
	.long MM_M3Buf+516
	.zero	4
	.long MM_M3Buf+648
	.zero	28
	.long -2134045525
.byte 233
.byte 166
.byte 7
.byte 157
.byte 66
.byte 170
.byte 202
.byte 29
	.long 1
	.zero	4
	.long 2040
	.long 4
	.zero	20
	.long MM_M3Buf+987
	.long MM_M3Buf+994
	.long MM_M3Buf+996
	.zero	28
	.long MM_M3Buf+1009
	.long MM_M3Buf+148
	.zero	8
	.long -1490955643
.byte 240
.byte 183
.byte 113
.byte 181
.byte 117
.byte 101
.byte 80
.byte 18
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_M3Buf+945
	.long MM_M3Buf+951
	.long MM_M3Buf+956
	.zero	24
	.long MM_M3Buf+972
	.long MM_M3Buf+979
	.zero	4
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
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 49
.byte 49
.byte 49
.byte 49
.byte 49
.byte 49
.byte 49
.byte 49
.byte 49
.byte 49
.byte 50
.byte 50
.byte 50
.byte 50
.byte 50
.byte 50
.byte 50
.byte 50
.byte 50
.byte 50
.byte 51
.byte 51
.byte 51
.byte 51
.byte 51
.byte 51
.byte 51
.byte 51
.byte 51
.byte 51
.byte 52
.byte 52
.byte 52
.byte 52
.byte 52
.byte 52
.byte 52
.byte 52
.byte 52
.byte 52
.byte 53
.byte 53
.byte 53
.byte 53
.byte 53
.byte 53
.byte 53
.byte 53
.byte 53
.byte 53
.byte 54
.byte 54
.byte 54
.byte 54
.byte 54
.byte 54
.byte 54
.byte 54
.byte 54
.byte 54
.byte 55
.byte 55
.byte 55
.byte 55
.byte 55
.byte 55
.byte 55
.byte 55
.byte 55
.byte 55
.byte 56
.byte 56
.byte 56
.byte 56
.byte 56
.byte 56
.byte 56
.byte 56
.byte 56
.byte 56
.byte 57
.byte 57
.byte 57
.byte 57
.byte 57
.byte 57
.byte 57
.byte 57
.byte 57
.byte 57
	.zero	2
	.long M3Buf__Expand
	.long M3Buf__Reset
	.long M3Buf__New
	.long M3Buf__PutChar
	.long M3Buf__PutText
	.long M3Buf__PutInt
	.long M3Buf__PutIntt
	.long M3Buf__PutFloat
	.long M3Buf__PutSub
	.long M3Buf__ToText
	.long M3Buf__ToFP
	.long M3Buf__Flush
	.long M3Buf__AttachDrain
	.long -977247848
	.long -1490955643
	.zero	4
	.long MM_M3Buf+536
	.long -977247848
	.long MM_M3Buf+544
	.long -2134045525
	.zero	4
	.long 1358456180
	.ascii	"Reset"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"AttachDrain"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"ToFP"
	.zero	1
	.ascii	"ToText"
	.zero	1
	.ascii	"PutFloat"
	.zero	1
	.ascii	"PutIntt"
	.zero	1
	.ascii	"PutInt"
	.zero	1
	.ascii	"PutText"
	.zero	1
	.ascii	"PutSub"
	.zero	1
	.ascii	"PutChar"
	.zero	1
	.ascii	"New"
	.zero	3
	.long M3Buf__Reset
	.long MM_M3Buf+552
	.zero	4
	.long M3Buf__Expand
	.long MM_M3Buf+558
	.zero	4
	.long M3Buf__AttachDrain
	.long MM_M3Buf+565
	.long MI_M3Buf+84
	.long M3Buf__Flush
	.long MM_M3Buf+577
	.long MI_M3Buf+80
	.long M3Buf__ToFP
	.long MM_M3Buf+583
	.long MI_M3Buf+76
	.long M3Buf__ToText
	.long MM_M3Buf+588
	.long MI_M3Buf+72
	.long M3Buf__PutFloat
	.long MM_M3Buf+595
	.long MI_M3Buf+64
	.long M3Buf__PutIntt
	.long MM_M3Buf+604
	.long MI_M3Buf+60
	.long M3Buf__PutInt
	.long MM_M3Buf+612
	.long MI_M3Buf+56
	.long M3Buf__PutText
	.long MM_M3Buf+619
	.long MI_M3Buf+52
	.long M3Buf__PutSub
	.long MM_M3Buf+627
	.long MI_M3Buf+68
	.long M3Buf__PutChar
	.long MM_M3Buf+634
	.long MI_M3Buf+48
	.long M3Buf__New
	.long MM_M3Buf+642
	.long MI_M3Buf+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3Buf.m3"
	.zero	1
.byte 14
.byte 14
.byte 4
.byte 4
.byte 4
.byte 0
.byte 41
.byte 4
.byte 4
.byte 4
.byte 0
.byte 6
.byte 15
.byte 5
.byte 7
.byte 23
.byte 16
.byte 171
.byte 12
.byte 205
.byte 128
.byte 25
.byte 16
.byte 135
.byte 20
.byte 118
.byte 98
	.ascii	"MBuf.T"
	.zero	1
	.ascii	"M3Buf.T"
	.zero	1
.byte 4
.byte 1
.byte 16
.byte 27
.byte 244
.byte 7
.byte 0
.byte 4
.byte 0
.byte 4
.byte 15
.byte 2
.byte 16
.byte 171
.byte 12
.byte 205
.byte 128
.byte 1
.byte 66
.byte 244
.byte 7
.byte 4
	.ascii	"M3Buf.Chunk"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
