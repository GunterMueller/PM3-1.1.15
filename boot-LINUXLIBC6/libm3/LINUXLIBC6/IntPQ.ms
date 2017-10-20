	.file	"IntPQ.mc"
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
	.type	 IntPQ__UpHeap,@function
IntPQ__UpHeap:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 12(%ebp),%esi
	movl %eax,-8(%ebp)
	movl 8(%esi),%ebx
	jmp .L3
	.align 16
.L4:
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L5
	pushl $628
	call _m3_fault
	.align 16
.L5:
	movl 4(%eax),%ecx
	cmpl %ecx,%ebx
	jb .L6
	pushl $626
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%eax
	leal (%eax,%ebx,4),%edx
	cmpl %ecx,-12(%ebp)
	jb .L8
	pushl $626
	call _m3_fault
	.align 16
.L8:
	movl -12(%ebp),%esi
	movl (%eax,%esi,4),%eax
	movl %eax,(%edx)
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L9
	pushl $644
	call _m3_fault
	.align 16
.L9:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L10
	pushl $642
	call _m3_fault
	.align 16
.L10:
	movl (%ecx),%eax
	movl (%eax,%ebx,4),%eax
	movl %ebx,8(%eax)
	movl -12(%ebp),%ebx
.L3:
	cmpl $1,%ebx
	jle .L14
	movl (%edi),%eax
	movl 36(%eax),%ecx
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L12
	pushl $564
	call _m3_fault
	.align 16
.L12:
	movl %eax,%edx
	movl %ebx,%esi
	sarl $1,%esi
	movl %esi,-12(%ebp)
	cmpl %esi,4(%edx)
	ja .L13
	pushl $562
	call _m3_fault
	.align 16
.L13:
	movl (%edx),%eax
	movl -12(%ebp),%esi
	movl (%eax,%esi,4),%eax
	addl $4,%eax
	pushl %eax
	movl 12(%ebp),%eax
	addl $4,%eax
	pushl %eax
	pushl %edi
	call *%ecx
	addl $12,%esp
	cmpl $-1,%eax
	je .L4
.L14:
	movl 12(%ebp),%esi
	cmpl %ebx,8(%esi)
	je .L18
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L16
	pushl $708
	call _m3_fault
	.align 16
.L16:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L17
	pushl $706
	call _m3_fault
	.align 16
.L17:
	movl (%edx),%eax
	movl 12(%ebp),%esi
	movl %esi,(%eax,%ebx,4)
	movl %ebx,8(%esi)
.L18:
	movl -8(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IntPQ__UpHeap,.Lfe1-IntPQ__UpHeap
	.align 16
	.type	 IntPQ__DownHeap,@function
IntPQ__DownHeap:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L20:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 8(%ecx),%edi
	movl 4(%ecx),%eax
	movl %eax,-4(%ebp)
	movl 4(%edx),%edx
	sarl $1,%edx
	movl 8(%ebp),%ecx
	movl %edx,-16(%ebp)
	movl 8(%ecx),%esi
	jmp .L21
	.align 16
.L22:
	movl %edi,%eax
	addl %edi,%eax
	jns .L23
	pushl $945
	call _m3_fault
	.align 16
.L23:
	movl 8(%ebp),%edx
	movl %eax,%ebx
	cmpl %ebx,4(%edx)
	jle .L24
	movl (%edx),%eax
	movl 36(%eax),%eax
	movl %eax,-28(%ebp)
	testl %esi,%esi
	jne .L25
	pushl $964
	call _m3_fault
	.align 16
.L25:
	leal 1(%ebx),%ecx
	movl %ecx,-20(%ebp)
	movl 4(%esi),%eax
	cmpl %eax,%ecx
	jb .L27
	pushl $962
	call _m3_fault
	.align 16
.L27:
	movl %esi,-32(%ebp)
	cmpl %eax,%ebx
	jb .L28
	pushl $962
	call _m3_fault
	.align 16
.L28:
	movl -32(%ebp),%edx
	movl (%edx),%eax
	movl (%eax,%ebx,4),%ecx
	addl $4,%ecx
	pushl %ecx
	movl 4(%eax,%ebx,4),%eax
	addl $4,%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl -28(%ebp),%ecx
	call *%ecx
	addl $12,%esp
	cmpl $-1,%eax
	jne .L24
	movl -20(%ebp),%ebx
.L24:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 36(%eax),%eax
	movl %eax,-32(%ebp)
	testl %esi,%esi
	jne .L29
	pushl $1060
	call _m3_fault
	.align 16
.L29:
	cmpl %ebx,4(%esi)
	ja .L30
	pushl $1058
	call _m3_fault
	.align 16
.L30:
	movl (%esi),%eax
	movl (%eax,%ebx,4),%eax
	addl $4,%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl -32(%ebp),%edx
	call *%edx
	addl $12,%esp
	cmpl $-1,%eax
	je .L32
	movl 4(%esi),%ecx
	movl %ecx,-24(%ebp)
	cmpl %ecx,%edi
	jb .L34
	pushl $1090
	call _m3_fault
	.align 16
.L34:
	movl (%esi),%eax
	leal (%eax,%edi,4),%edx
	movl %edx,-32(%ebp)
	movl %esi,-28(%ebp)
	cmpl %ebx,-24(%ebp)
	ja .L36
	pushl $1090
	call _m3_fault
	.align 16
.L36:
	movl -32(%ebp),%ecx
	movl (%eax,%ebx,4),%eax
	movl %eax,(%ecx)
	movl -28(%ebp),%edx
	cmpl %edi,4(%edx)
	ja .L38
	pushl $1106
	call _m3_fault
	.align 16
.L38:
	movl -28(%ebp),%ecx
	movl (%ecx),%eax
	movl (%eax,%edi,4),%eax
	movl %edi,8(%eax)
	movl %ebx,%edi
.L21:
	cmpl %edi,-16(%ebp)
	jge .L22
.L32:
	testl %esi,%esi
	jne .L39
	pushl $1156
	call _m3_fault
	.align 16
.L39:
	movl %esi,-28(%ebp)
	cmpl %edi,4(%esi)
	ja .L40
	pushl $1154
	call _m3_fault
	.align 16
.L40:
	movl -28(%ebp),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl %ecx,(%eax,%edi,4)
	movl %edi,8(%ecx)
.L41:
	movl -12(%ebp),%eax
	leal -44(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 IntPQ__DownHeap,.Lfe2-IntPQ__DownHeap
	.align 16
	.type	 IntPQ__Init,@function
IntPQ__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L43
	movl 4(%eax),%eax
	decl %eax
	cmpl %edx,%eax
	jge .L45
.L43:
	leal -12(%ebp),%eax
	leal -4(%ebp),%esi
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	incl %edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_IntPQ+316,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,8(%ebx)
	jmp .L46
	.align 16
.L45:
	movl $1,%edx
	movl 4(%ebx),%ecx
	jmp .L47
	.align 16
.L48:
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L49
	pushl $1284
	call _m3_fault
	.align 16
.L49:
	cmpl %edx,4(%eax)
	ja .L50
	pushl $1282
	call _m3_fault
	.align 16
.L50:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L47:
	cmpl %ecx,%edx
	jle .L48
.L46:
	movl $0,4(%ebx)
	leal -20(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 IntPQ__Init,.Lfe3-IntPQ__Init
	.align 16
	.type	 IntPQ__FromArray,@function
IntPQ__FromArray:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L53:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl 12(%ebp),%eax
	movl %edi,RTThread__handlerStack
	movl 4(%eax),%ebx
	movl 8(%esi),%eax
	testl %eax,%eax
	je .L54
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jge .L56
.L54:
	leal -20(%ebp),%eax
	leal -12(%ebp),%edi
	movl %edi,-20(%ebp)
	movl $1,-16(%ebp)
	leal 1(%ebx),%edi
	movl %edi,-12(%ebp)
	pushl %eax
	movl MM_IntPQ+316,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,8(%esi)
	addl $8,%esp
	jmp .L57
	.align 16
.L56:
	leal 1(%ebx),%edx
	movl 4(%esi),%ecx
	jmp .L58
	.align 16
.L59:
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L60
	pushl $1460
	call _m3_fault
	.align 16
.L60:
	cmpl %edx,4(%eax)
	ja .L61
	pushl $1458
	call _m3_fault
	.align 16
.L61:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L58:
	cmpl %ecx,%edx
	jle .L59
.L57:
	movl %ebx,4(%esi)
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L63
	pushl $1508
	call _m3_fault
	.align 16
.L63:
	movl %eax,%edx
	movl %ebx,-24(%ebp)
	movl %ebx,%edi
	movl 4(%edx),%eax
	decl %eax
	subl %eax,%edi
	movl %edi,%eax
	testl %eax,%eax
	jle .L64
	pushl $1505
	call _m3_fault
	.align 16
.L64:
	movl (%edx),%ecx
	addl $4,%ecx
	movl 12(%ebp),%edx
	movl %ecx,-28(%ebp)
	cmpl %ebx,4(%edx)
	je .L65
	pushl $1507
	call _m3_fault
	.align 16
.L65:
	leal 0(,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl %ecx
	call memmove
	leal 8(%esi),%edi
	movl %edi,-32(%ebp)
	movl $1,%ecx
	movl %ebx,-36(%ebp)
	addl $12,%esp
	jmp .L66
	.align 16
.L67:
	movl -32(%ebp),%edi
	movl (%edi),%eax
	testl %eax,%eax
	jne .L68
	pushl $1540
	call _m3_fault
	.align 16
.L68:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L69
	pushl $1538
	call _m3_fault
	.align 16
.L69:
	movl (%edx),%eax
	movl (%eax,%ecx,4),%eax
	movl %ecx,8(%eax)
	incl %ecx
.L66:
	cmpl %ecx,-36(%ebp)
	jge .L67
	sarl $1,%ebx
	jmp .L71
	.align 16
.L72:
	movl -32(%ebp),%edi
	movl (%edi),%eax
	testl %eax,%eax
	jne .L73
	pushl $1556
	call _m3_fault
	.align 16
.L73:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L74
	pushl $1554
	call _m3_fault
	.align 16
.L74:
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	pushl %esi
	call IntPQ__DownHeap
	decl %ebx
	addl $8,%esp
.L71:
	testl %ebx,%ebx
	jg .L72
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L76:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 IntPQ__FromArray,.Lfe4-IntPQ__FromArray
	.align 16
	.type	 IntPQ__Insert,@function
IntPQ__Insert:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 4(%esi),%edx
	incl %edx
	movl %edx,4(%esi)
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L78
	pushl $1684
	call _m3_fault
	.align 16
.L78:
	movl 4(%eax),%eax
	decl %eax
	cmpl %eax,%edx
	jle .L79
	leal -12(%ebp),%edx
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L80
	pushl $1700
	call _m3_fault
	.align 16
.L80:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_IntPQ+316,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L81
	pushl $1716
	call _m3_fault
	.align 16
.L81:
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L82
	pushl $1716
	call _m3_fault
	.align 16
.L82:
	movl 4(%eax),%ecx
	movl %ecx,-16(%ebp)
	movl %ecx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L83
	pushl $1713
	call _m3_fault
	.align 16
.L83:
	movl (%ebx),%edi
	movl %edi,-24(%ebp)
	movl %edi,-20(%ebp)
	movl 8(%esi),%edx
	testl %edx,%edx
	jne .L84
	pushl $1716
	call _m3_fault
	.align 16
.L84:
	cmpl %ecx,4(%edx)
	je .L85
	pushl $1715
	call _m3_fault
	.align 16
.L85:
	leal 0(,%ecx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%edi
	pushl %edi
	call memmove
	movl %ebx,8(%esi)
	addl $12,%esp
.L79:
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L86
	pushl $1780
	call _m3_fault
	.align 16
.L86:
	movl 4(%esi),%ecx
	cmpl %ecx,4(%eax)
	ja .L87
	pushl $1778
	call _m3_fault
	.align 16
.L87:
	movl 12(%ebp),%edi
	movl (%eax),%edx
	movl (%edi),%eax
	movl %eax,(%edx,%ecx,4)
	movl (%edi),%edx
	movl 4(%esi),%eax
	movl %eax,8(%edx)
	movl (%edi),%eax
	pushl %eax
	pushl %esi
	call IntPQ__UpHeap
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 IntPQ__Insert,.Lfe5-IntPQ__Insert
	.align 16
	.type	 IntPQ__Delete,@function
IntPQ__Delete:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 8(%ebp),%esi
	cmpl $-1,8(%edi)
	jne .L89
	pushl $0
	pushl $MI_IntPQ+164
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L89:
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L90
	pushl $1908
	call _m3_fault
	.align 16
.L90:
	movl %eax,%ecx
	movl 4(%esi),%edx
	cmpl %edx,4(%ecx)
	ja .L91
	pushl $1906
	call _m3_fault
	.align 16
.L91:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%ebx
	movl $0,(%eax,%edx,4)
	movl 4(%esi),%eax
	decl %eax
	jns .L94
	pushl $1937
	call _m3_fault
	.align 16
.L94:
	movl %eax,4(%esi)
	cmpl %edi,%ebx
	je .L95
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L96
	pushl $1972
	call _m3_fault
	.align 16
.L96:
	movl 8(%edi),%edx
	cmpl %edx,4(%eax)
	ja .L97
	pushl $1970
	call _m3_fault
	.align 16
.L97:
	movl (%eax),%eax
	movl %ebx,(%eax,%edx,4)
	movl 8(%edi),%eax
	movl %eax,8(%ebx)
	movl (%esi),%eax
	movl 36(%eax),%ecx
	leal 4(%ebx),%eax
	pushl %eax
	leal 4(%edi),%eax
	pushl %eax
	pushl %esi
	call *%ecx
	addl $12,%esp
	cmpl $-1,%eax
	jle .L98
	testl %eax,%eax
	jle .L95
	cmpl $1,%eax
	jle .L100
.L98:
	pushl %ebx
	pushl %esi
	call IntPQ__DownHeap
	jmp .L95
	.align 16
.L100:
	pushl %ebx
	pushl %esi
	call IntPQ__UpHeap
.L95:
	leal -12(%ebp),%esp
	movl $-1,8(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 IntPQ__Delete,.Lfe6-IntPQ__Delete
	.align 16
	.type	 IntPQ__Size,@function
IntPQ__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 4(%eax),%eax
	ret
.Lfe7:
	.size	 IntPQ__Size,.Lfe7-IntPQ__Size
	.align 16
	.type	 IntPQ__Min,@function
IntPQ__Min:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L105
	pushl %eax
	pushl $MI_IntPQ+148
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L105:
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L106
	pushl $2260
	call _m3_fault
	.align 16
.L106:
	cmpl $1,4(%eax)
	ja .L107
	pushl $2258
	call _m3_fault
	.align 16
.L107:
	movl (%eax),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	movl 4(%eax),%eax
	ret
.Lfe8:
	.size	 IntPQ__Min,.Lfe8-IntPQ__Min
	.align 16
	.type	 IntPQ__DeleteMin,@function
IntPQ__DeleteMin:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %esi,%esi
	cmpl $0,4(%ebx)
	jne .L109
	pushl %esi
	pushl $MI_IntPQ+148
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L109:
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L110
	pushl $2356
	call _m3_fault
	.align 16
.L110:
	cmpl $1,4(%eax)
	ja .L111
	pushl $2354
	call _m3_fault
	.align 16
.L111:
	movl (%eax),%eax
	movl 4(%eax),%esi
	movl $-1,8(%esi)
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L112
	pushl $2388
	call _m3_fault
	.align 16
.L112:
	movl 4(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L113
	pushl $2386
	call _m3_fault
	.align 16
.L113:
	movl (%eax),%eax
	movl (%eax,%edx,4),%ecx
	movl $0,(%eax,%edx,4)
	movl 4(%ebx),%eax
	decl %eax
	jns .L116
	pushl $2417
	call _m3_fault
	.align 16
.L116:
	movl %eax,4(%ebx)
	testl %eax,%eax
	jle .L117
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L118
	pushl $2452
	call _m3_fault
	.align 16
.L118:
	cmpl $1,4(%eax)
	ja .L119
	pushl $2450
	call _m3_fault
	.align 16
.L119:
	movl (%eax),%eax
	movl %ecx,4(%eax)
	movl $1,8(%ecx)
	pushl %ecx
	pushl %ebx
	call IntPQ__DownHeap
.L117:
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 IntPQ__DeleteMin,.Lfe9-IntPQ__DeleteMin
	.align 16
	.type	 IntPQ__Change,@function
IntPQ__Change:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 8(%ebp),%esi
	cmpl $-1,8(%ebx)
	jne .L121
	pushl $0
	pushl $MI_IntPQ+164
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L121:
	movl 4(%ebx),%eax
	movl %eax,-4(%ebp)
	movl 16(%ebp),%eax
	movl %eax,4(%ebx)
	movl (%esi),%eax
	movl 36(%eax),%edx
	leal 16(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
	addl $12,%esp
	cmpl $-1,%eax
	jle .L122
	testl %eax,%eax
	jle .L120
	cmpl $1,%eax
	jle .L124
.L122:
	pushl %ebx
	pushl %esi
	call IntPQ__DownHeap
	jmp .L120
	.align 16
.L124:
	pushl %ebx
	pushl %esi
	call IntPQ__UpHeap
.L120:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 IntPQ__Change,.Lfe10-IntPQ__Change
	.align 16
	.type	 IntPQ__PCompare,@function
IntPQ__PCompare:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_Integer+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 IntPQ__PCompare,.Lfe11-IntPQ__PCompare
	.align 16
	.type	 M_IntPQ_t6bf86863_LINK,@function
M_IntPQ_t6bf86863_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_IntPQ+700,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_IntPQ+260,%eax
	movl %eax,28(%edx)
	movl MM_IntPQ+264,%eax
	movl %eax,32(%edx)
	movl MM_IntPQ+268,%eax
	movl %eax,4(%edx)
	movl MM_IntPQ+272,%eax
	movl %eax,8(%edx)
	movl MM_IntPQ+276,%eax
	movl %eax,12(%edx)
	movl MM_IntPQ+280,%eax
	movl %eax,16(%edx)
	movl MM_IntPQ+284,%eax
	movl %eax,20(%edx)
	movl MM_IntPQ+288,%eax
	movl %eax,24(%edx)
	movl MM_IntPQ+292,%eax
	movl %eax,36(%edx)
	popl %ebp
	ret
.Lfe12:
	.size	 M_IntPQ_t6bf86863_LINK,.Lfe12-M_IntPQ_t6bf86863_LINK
	.align 16
	.type	 M_IntPQ_tbaaf17a5_INIT,@function
M_IntPQ_tbaaf17a5_INIT:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl $-1,8(%eax)
	popl %ebp
	ret
.Lfe13:
	.size	 M_IntPQ_tbaaf17a5_INIT,.Lfe13-M_IntPQ_tbaaf17a5_INIT
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_IntPQ
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_IntPQ
.data
	.align 4
	.type	 MM_IntPQ,@object
	.size	 MM_IntPQ,788
MM_IntPQ:
	.long MM_IntPQ+540
	.long MM_IntPQ+44
	.long MM_IntPQ+316
	.long MM_IntPQ+296
	.zero	4
	.long MM_IntPQ+404
	.zero	28
	.long -1162930267
.byte 56
.byte 92
.byte 34
.byte 173
.byte 157
.byte 75
.byte 141
.byte 23
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_IntPQ+749
	.zero	4
	.long MM_IntPQ+751
	.long M_IntPQ_tbaaf17a5_INIT
	.zero	4
	.long 1362909919
	.zero	12
	.long MM_IntPQ+755
	.long MM_IntPQ+775
	.long MM_IntPQ+148
	.zero	8
	.long 1811441763
.byte 162
.byte 72
.byte 184
.byte 112
.byte 193
.byte 32
.byte 64
.byte 27
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_IntPQ+694
	.zero	4
	.long M_IntPQ_t6bf86863_LINK
	.long 1810040447
	.zero	12
	.long MM_IntPQ+708
	.long MM_IntPQ+735
	.zero	4
	.long IntPQ__UpHeap
	.long IntPQ__DownHeap
	.long IntPQ__Init
	.long IntPQ__FromArray
	.long IntPQ__Insert
	.long IntPQ__Delete
	.long IntPQ__Size
	.long IntPQ__Min
	.long IntPQ__DeleteMin
	.long IntPQ__Change
	.long IntPQ__PCompare
	.long 1506470542
	.long -1162930267
	.long 435832866
	.long 1811441763
	.zero	4
	.long MM_IntPQ+700
	.long -806755757
	.ascii	"PCompare"
	.zero	1
	.ascii	"Change"
	.zero	1
	.ascii	"DeleteMin"
	.zero	1
	.ascii	"Min"
	.zero	1
	.ascii	"Size"
	.zero	1
	.ascii	"Delete"
	.zero	1
	.ascii	"Insert"
	.zero	1
	.ascii	"FromArray"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"DownHeap"
	.zero	1
	.ascii	"UpHeap"
	.zero	1
	.long IntPQ__PCompare
	.long MM_IntPQ+324
	.zero	4
	.long IntPQ__Change
	.long MM_IntPQ+333
	.zero	4
	.long IntPQ__DeleteMin
	.long MM_IntPQ+340
	.zero	4
	.long IntPQ__Min
	.long MM_IntPQ+350
	.zero	4
	.long IntPQ__Size
	.long MM_IntPQ+354
	.zero	4
	.long IntPQ__Delete
	.long MM_IntPQ+359
	.zero	4
	.long IntPQ__Insert
	.long MM_IntPQ+366
	.zero	4
	.long IntPQ__FromArray
	.long MM_IntPQ+373
	.zero	4
	.long IntPQ__Init
	.long MM_IntPQ+383
	.zero	4
	.long IntPQ__DownHeap
	.long MM_IntPQ+388
	.zero	4
	.long IntPQ__UpHeap
	.long MM_IntPQ+397
	.zero	8
	.ascii	"IntPQ.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula"
	.ascii	"3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINU"
	.ascii	"XLIBC6/libm3/src/pqueue/PQueue.mg"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	7
	.long 1811441763
	.ascii	"(Default (PQueue Integer))"
	.zero	1
	.ascii	"IntPQ.Default"
	.zero	1
.byte 14
.byte 0
.byte 2
.byte 10
.byte 1
.byte 7
	.ascii	"(PQueueElt Integer)"
	.zero	1
	.ascii	"IntPQ.Elt"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
