	.file	"M3Path.mc"
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
	.type	 M3Path__SetOS,@function
M3Path__SetOS:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %eax,%eax
	movb 12(%ebp),%al
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	leal MM_M3Path+44(,%eax,4),%edi
	movl 8(%ebp),%esi
	leal -8(%ebp),%esp
	cld
	movl $25,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3Path__SetOS,.Lfe1-M3Path__SetOS
	.align 16
	.type	 M3Path__Join,@function
M3Path__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %eax,%eax
	movb 20(%ebp),%al
	xorl %edx,%edx
	movb 16(%ebp),%dl
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	sall $2,%eax
	xorl %ebx,%ebx
	movl MM_M3Path+44(%eax,%edx,4),%edx
	movl %edx,-16(%ebp)
	movb MM_M3Path+140(%eax),%cl
	movb %cl,-12(%ebp)
	movb MM_M3Path+141(%eax),%cl
	movb %cl,-8(%ebp)
	movl MM_M3Path+132(%eax),%eax
	movl %eax,-4(%ebp)
	testl %edi,%edi
	je .L3
	movl 4(%edi),%edx
	leal -1(%edx),%ebx
	movl %edi,%esi
	leal -2(%edx),%eax
	cmpl %edx,%eax
	jb .L6
	pushl $610
	call _m3_fault
	.align 16
.L6:
	movl (%esi),%eax
	movb -12(%ebp),%cl
	movzbl -1(%ebx,%eax),%esi
	cmpb %cl,-1(%ebx,%eax)
	je .L3
	xorl %eax,%eax
	movb -8(%ebp),%al
	cmpl %eax,%esi
	je .L3
	movl %edx,%ebx
.L3:
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl $14,%eax
	je .L10
	cmpl $15,%eax
	je .L10
	cmpl $21,%eax
	jne .L11
.L10:
	movl -4(%ebp),%ecx
	pushl %ecx
	movl MI_Text+56,%eax
	call *%eax
	addl %eax,%ebx
	addl $4,%esp
.L11:
	cmpl $0,12(%ebp)
	jne .L12
	pushl $692
	call _m3_fault
	.align 16
.L12:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%eax
	leal -1(%eax,%ebx),%ebx
	cmpl $0,-16(%ebp)
	jne .L13
	pushl $708
	call _m3_fault
	.align 16
.L13:
	movl -16(%ebp),%ecx
	movl 4(%ecx),%eax
	leal -1(%eax,%ebx),%ebx
	testl %ebx,%ebx
	jge .L14
	pushl $753
	call _m3_fault
	.align 16
.L14:
	pushl %ebx
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $4,%esp
	testl %edi,%edi
	je .L15
	pushl %ebx
	pushl %edi
	pushl %esi
	call M3Path__Append
	movl %eax,%edx
	movl %edx,%ebx
	addl $12,%esp
	leal -1(%edx),%eax
	cmpl %eax,4(%edi)
	ja .L17
	pushl $818
	call _m3_fault
	.align 16
.L17:
	movl (%edi),%eax
	movb -12(%ebp),%cl
	movzbl -1(%edx,%eax),%edi
	cmpb %cl,-1(%edx,%eax)
	je .L15
	xorl %eax,%eax
	movb -8(%ebp),%al
	cmpl %eax,%edi
	je .L15
	testl %esi,%esi
	jne .L21
	pushl $836
	call _m3_fault
	.align 16
.L21:
	cmpl %edx,4(%esi)
	ja .L22
	pushl $834
	call _m3_fault
	.align 16
.L22:
	movl (%esi),%eax
	movb -12(%ebp),%cl
	leal 1(%edx),%ebx
	movb %cl,(%edx,%eax)
.L15:
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl $14,%eax
	je .L23
	cmpl $15,%eax
	je .L23
	cmpl $21,%eax
	jne .L24
.L23:
	pushl %ebx
	movl -4(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call M3Path__Append
	movl %eax,%edx
	movl %edx,%ebx
	addl $12,%esp
.L24:
	pushl %ebx
	movl 12(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call M3Path__Append
	movl %eax,%edx
	pushl %edx
	movl -16(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call M3Path__Append
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3Path__Join,.Lfe2-M3Path__Join
	.align 16
	.type	 M3Path__Append,@function
M3Path__Append:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %ecx,%ecx
	jne .L26
	pushl $1044
	call _m3_fault
	.align 16
.L26:
	testl %esi,%esi
	jge .L27
	pushl $1041
	call _m3_fault
	.align 16
.L27:
	testl %ebx,%ebx
	jne .L28
	pushl $1044
	call _m3_fault
	.align 16
.L28:
	movl 4(%ebx),%edx
	movl %edx,-4(%ebp)
	leal (%edx,%esi),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L29
	pushl $1041
	call _m3_fault
	.align 16
.L29:
	movl (%ecx),%ecx
	addl %esi,%ecx
	movl %ecx,-8(%ebp)
	cmpl %edx,4(%ebx)
	je .L31
	pushl $1043
	call _m3_fault
	.align 16
.L31:
	pushl %edx
	movl (%ebx),%eax
	pushl %eax
	pushl %ecx
	call memmove
	movl 4(%ebx),%eax
	leal -16(%ebp),%esp
	leal -1(%eax,%esi),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3Path__Append,.Lfe3-M3Path__Append
	.align 16
	.type	 M3Path__Parse,@function
M3Path__Parse:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpl $0,8(%ebp)
	jne .L34
	pushl $1156
	call _m3_fault
	.align 16
.L34:
	movl 8(%ebp),%ecx
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	leal (%ebx,%ebx,4),%ebx
	leal (%ebx,%ebx,4),%ebx
	sall $2,%ebx
	movl 4(%ecx),%ecx
	movl %ecx,-80(%ebp)
	decl %ecx
	movl %ecx,-68(%ebp)
	movl %edi,-64(%ebp)
	movl $-1,%edi
	movl %edi,-60(%ebp)
	movb MM_M3Path+140(%ebx),%cl
	movb %cl,-52(%ebp)
	xorl %eax,%eax
	movb %cl,%al
	pushl %eax
	movl MI_Text+72,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-48(%ebp)
	movb MM_M3Path+141(%ebx),%cl
	movb %cl,-44(%ebp)
	movl MM_M3Path+132(%ebx),%ebx
	movl %ebx,-40(%ebp)
	movl -64(%ebp),%esi
	movl %esi,-76(%ebp)
	movl -80(%ebp),%ebx
	addl $-2,%ebx
	addl $4,%esp
	jmp .L35
	.align 16
.L36:
	cmpl $0,8(%ebp)
	jne .L37
	pushl $1364
	call _m3_fault
	.align 16
.L37:
	movl 8(%ebp),%edx
	movl -76(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L38
	pushl $1362
	call _m3_fault
	.align 16
.L38:
	movl (%edx),%eax
	movl -76(%ebp),%esi
	movb -44(%ebp),%cl
	cmpb %cl,(%esi,%eax)
	jne .L39
	movl %esi,-60(%ebp)
.L39:
	incl -76(%ebp)
.L35:
	cmpl %ebx,-76(%ebp)
	jle .L36
	movl $0,-80(%ebp)
	movl -68(%ebp),%ebx
	decl %ebx
	jmp .L41
	.align 16
.L42:
	cmpl $0,8(%ebp)
	jne .L43
	pushl $1380
	call _m3_fault
	.align 16
.L43:
	movl 8(%ebp),%edx
	movl -80(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L44
	pushl $1378
	call _m3_fault
	.align 16
.L44:
	movl (%edx),%eax
	movl -80(%ebp),%esi
	movb -52(%ebp),%cl
	cmpb %cl,(%esi,%eax)
	jne .L45
	movl -80(%ebp),%edi
.L45:
	incl -80(%ebp)
.L41:
	cmpl %ebx,-80(%ebp)
	jle .L42
	cmpl $-1,-60(%ebp)
	jne .L47
	cmpl $-1,%edi
	jne .L49
	movl $0,-12(%ebp)
	movl $0,-56(%ebp)
	jmp .L48
	.align 16
.L47:
	cmpl $-1,%edi
	jne .L49
	cmpl $0,8(%ebp)
	jne .L50
	pushl $1524
	call _m3_fault
	.align 16
.L50:
	movl 8(%ebp),%edx
	movl -60(%ebp),%ebx
	incl %ebx
	jns .L51
	pushl $1521
	call _m3_fault
	.align 16
.L51:
	movl %ebx,-28(%ebp)
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L52
	pushl $1521
	call _m3_fault
	.align 16
.L52:
	movl (%edx),%eax
	movl %eax,-32(%ebp)
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
	movl %ebx,-56(%ebp)
	jmp .L68
	.align 16
.L49:
	testl %edi,%edi
	jne .L53
	movl -48(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-56(%ebp)
	jmp .L48
	.align 16
.L53:
	cmpl $0,8(%ebp)
	jne .L54
	pushl $1620
	call _m3_fault
	.align 16
.L54:
	movl 8(%ebp),%edx
	testl %edi,%edi
	jge .L55
	pushl $1617
	call _m3_fault
	.align 16
.L55:
	movl %edi,-28(%ebp)
	movl %edi,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L56
	pushl $1617
	call _m3_fault
	.align 16
.L56:
	movl (%edx),%eax
	movl %eax,-32(%ebp)
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
	incl %edi
	movl %edi,-56(%ebp)
.L68:
	addl $4,%esp
.L48:
	movl -68(%ebp),%esi
	subl -56(%ebp),%esi
	movl %esi,-64(%ebp)
	movb $17,-4(%ebp)
	movl $0,-80(%ebp)
.L57:
	movb -80(%ebp),%cl
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	xorl %edx,%edx
	movb %cl,%dl
	leal (%ebx,%ebx,4),%eax
	leal (%eax,%eax,4),%eax
	sall $2,%eax
	movb %cl,-72(%ebp)
	movl MM_M3Path+44(%eax,%edx,4),%edi
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-36(%ebp)
	pushl %ebx
	pushl %edi
	movl 8(%ebp),%esi
	pushl %esi
	call M3Path__ExtMatch
	addl $16,%esp
	testl %eax,%eax
	je .L58
	movb -72(%ebp),%cl
	movb %cl,-4(%ebp)
	jmp .L59
	.align 16
.L58:
	incl -80(%ebp)
	cmpl $21,-80(%ebp)
	jle .L57
.L59:
	cmpl $0,8(%ebp)
	jne .L61
	pushl $1892
	call _m3_fault
	.align 16
.L61:
	movl 8(%ebp),%edx
	cmpl $0,-56(%ebp)
	jge .L62
	pushl $1889
	call _m3_fault
	.align 16
.L62:
	movl -56(%ebp),%ebx
	movl -64(%ebp),%eax
	subl -36(%ebp),%eax
	jns .L63
	pushl $1889
	call _m3_fault
	.align 16
.L63:
	movl %eax,-28(%ebp)
	addl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L64
	pushl $1889
	call _m3_fault
	.align 16
.L64:
	addl (%edx),%ebx
	movl %ebx,-32(%ebp)
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-8(%ebp)
	xorl %eax,%eax
	movb -4(%ebp),%al
	addl $4,%esp
	cmpl $14,%eax
	je .L65
	cmpl $15,%eax
	jne .L66
.L65:
	movl -40(%ebp),%esi
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	pushl %eax
	pushl $0
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_Text+48,%eax
	call *%eax
	addl $24,%esp
	testl %eax,%eax
	je .L66
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	pushl $2147483647
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-8(%ebp)
.L66:
	movl 16(%ebp),%edx
	movl -12(%ebp),%eax
	leal -92(%ebp),%esp
	movl %eax,(%edx)
	movl -8(%ebp),%eax
	movl %eax,4(%edx)
	movl -4(%ebp),%eax
	movl %eax,8(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3Path__Parse,.Lfe4-M3Path__Parse
	.align 16
	.type	 M3Path__ExtMatch,@function
M3Path__ExtMatch:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	cmpl $0,8(%ebp)
	jne .L70
	pushl $2116
	call _m3_fault
	.align 16
.L70:
	movl 8(%ebp),%esi
	movl 4(%esi),%esi
	movl %esi,-4(%ebp)
	movl %esi,%ecx
	decl %ecx
	testl %edi,%edi
	jne .L71
	pushl $2132
	call _m3_fault
	.align 16
.L71:
	movl 4(%edi),%edx
	decl %edx
	xorl %ebx,%ebx
	cmpl %edx,%ecx
	jl .L92
	xorl %eax,%eax
	movb 16(%ebp),%al
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	cmpb $0,MM_M3Path+142(,%eax,4)
	je .L73
	subl %edx,%ecx
	movl -4(%ebp),%esi
	addl $-2,%esi
	movl %esi,-4(%ebp)
	jmp .L74
	.align 16
.L75:
	cmpl $0,8(%ebp)
	jne .L76
	pushl $2244
	call _m3_fault
	.align 16
.L76:
	movl 8(%ebp),%esi
	cmpl %ecx,4(%esi)
	ja .L77
	pushl $2242
	call _m3_fault
	.align 16
.L77:
	testl %edi,%edi
	jne .L78
	pushl $2244
	call _m3_fault
	.align 16
.L78:
	cmpl %ebx,4(%edi)
	ja .L79
	pushl $2242
	call _m3_fault
	.align 16
.L79:
	movl 8(%ebp),%esi
	movl (%esi),%eax
	movb (%ecx,%eax),%al
	andl $255,%eax
	movl (%edi),%edx
	movb MM_M3Path+244(%eax),%al
	cmpb %al,(%ebx,%edx)
	jne .L92
	incl %ebx
	incl %ecx
.L74:
	cmpl %ecx,-4(%ebp)
	jge .L75
	jmp .L82
	.align 16
.L73:
	subl %edx,%ecx
	movl -4(%ebp),%esi
	addl $-2,%esi
	movl %esi,-4(%ebp)
	jmp .L83
	.align 16
.L84:
	cmpl $0,8(%ebp)
	jne .L85
	pushl $2324
	call _m3_fault
	.align 16
.L85:
	movl 8(%ebp),%esi
	cmpl %ecx,4(%esi)
	ja .L86
	pushl $2322
	call _m3_fault
	.align 16
.L86:
	testl %edi,%edi
	jne .L87
	pushl $2324
	call _m3_fault
	.align 16
.L87:
	cmpl %ebx,4(%edi)
	ja .L88
	pushl $2322
	call _m3_fault
	.align 16
.L88:
	movl 8(%ebp),%esi
	movl (%esi),%eax
	movl (%edi),%edx
	movb (%ecx,%eax),%al
	cmpb %al,(%ebx,%edx)
	je .L89
.L92:
	xorl %eax,%eax
	jmp .L91
	.align 16
.L89:
	incl %ebx
	incl %ecx
.L83:
	cmpl %ecx,-4(%ebp)
	jge .L84
.L82:
	movl $1,%eax
.L91:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3Path__ExtMatch,.Lfe5-M3Path__ExtMatch
	.align 16
	.type	 M3Path__DefaultProgram,@function
M3Path__DefaultProgram:
	pushl %ebp
	movl %esp,%ebp
	movl $MM_M3Path+136,%edx
	xorl %eax,%eax
	movb 8(%ebp),%al
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	sall $2,%eax
	movl %ebp,%esp
	popl %ebp
	movl (%edx,%eax),%eax
	ret
.Lfe6:
	.size	 M3Path__DefaultProgram,.Lfe6-M3Path__DefaultProgram
	.align 16
	.type	 M3Path__Convert,@function
M3Path__Convert:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L95
	pushl $2548
	call _m3_fault
	.align 16
.L95:
	movl 4(%edi),%esi
	decl %esi
	jns .L96
	pushl $2561
	call _m3_fault
	.align 16
.L96:
	pushl %esi
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	movl $MM_M3Path+140,%edx
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	addl $4,%esp
	movb (%edx,%eax,4),%al
	movb %al,-8(%ebp)
	cmpb $0,12(%ebp)
	jne .L97
	movl $MM_M3Path+240,%eax
	jmp .L98
	.align 16
.L97:
	movl %edx,%eax
.L98:
	movb (%eax),%al
	movb %al,-4(%ebp)
	xorl %edx,%edx
	decl %esi
	movl %esi,-12(%ebp)
	jmp .L99
	.align 16
.L100:
	testl %edi,%edi
	jne .L101
	pushl $2644
	call _m3_fault
	.align 16
.L101:
	movl 4(%edi),%esi
	cmpl %esi,%edx
	jb .L102
	pushl $2642
	call _m3_fault
	.align 16
.L102:
	movl (%edi),%eax
	movb (%edx,%eax),%al
	movb %al,-16(%ebp)
	cmpb %al,-4(%ebp)
	jne .L103
	testl %ecx,%ecx
	jne .L104
	pushl $2660
	call _m3_fault
	.align 16
.L104:
	cmpl %edx,4(%ecx)
	ja .L105
	pushl $2658
	call _m3_fault
	.align 16
.L105:
	movl (%ecx),%eax
	movb -8(%ebp),%bl
	jmp .L112
	.align 16
.L103:
	testl %ecx,%ecx
	jne .L107
	pushl $2676
	call _m3_fault
	.align 16
.L107:
	cmpl %edx,4(%ecx)
	ja .L109
	pushl $2674
	call _m3_fault
	.align 16
.L109:
	cmpl %esi,%edx
	jb .L110
	pushl $2674
	call _m3_fault
	.align 16
.L110:
	movl (%ecx),%eax
	movb -16(%ebp),%bl
.L112:
	movb %bl,(%edx,%eax)
	incl %edx
.L99:
	cmpl %edx,-12(%ebp)
	jge .L100
	leal -28(%ebp),%esp
	movl %ecx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3Path__Convert,.Lfe7-M3Path__Convert
	.align 16
	.type	 M3Path__Escape,@function
M3Path__Escape:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	xorl %ecx,%ecx
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L114
	pushl $2788
	call _m3_fault
	.align 16
.L114:
	movl 4(%esi),%eax
	leal -1(%eax),%edi
	movl %edi,-4(%ebp)
	movl %ecx,%edx
	leal -2(%eax),%ebx
	jmp .L115
	.align 16
.L116:
	testl %esi,%esi
	jne .L117
	pushl $2836
	call _m3_fault
	.align 16
.L117:
	cmpl %edx,4(%esi)
	ja .L118
	pushl $2834
	call _m3_fault
	.align 16
.L118:
	movl (%esi),%eax
	cmpb $92,(%edx,%eax)
	jne .L119
	incl %ecx
.L119:
	incl %edx
.L115:
	cmpl %ebx,%edx
	jle .L116
	testl %ecx,%ecx
	jne .L121
	movl %esi,%eax
	jmp .L135
	.align 16
.L121:
	movl -4(%ebp),%eax
	addl %ecx,%eax
	jns .L122
	pushl $2881
	call _m3_fault
	.align 16
.L122:
	pushl %eax
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,-12(%ebp)
	xorl %ecx,%ecx
	movl %ecx,%ebx
	movl -4(%ebp),%edi
	decl %edi
	movl %edi,-8(%ebp)
	addl $4,%esp
	jmp .L123
	.align 16
.L124:
	cmpl $0,-12(%ebp)
	jne .L125
	pushl $2916
	call _m3_fault
	.align 16
.L125:
	movl -12(%ebp),%edi
	cmpl %ecx,4(%edi)
	ja .L126
	pushl $2914
	call _m3_fault
	.align 16
.L126:
	testl %esi,%esi
	jne .L127
	pushl $2916
	call _m3_fault
	.align 16
.L127:
	cmpl %ebx,4(%esi)
	ja .L128
	pushl $2914
	call _m3_fault
	.align 16
.L128:
	movl -12(%ebp),%edi
	movl (%esi),%edx
	movl (%edi),%eax
	movb (%ebx,%edx),%dl
	movb %dl,(%ecx,%eax)
	incl %ecx
	cmpl %ebx,4(%esi)
	ja .L130
	pushl $2930
	call _m3_fault
	.align 16
.L130:
	movl (%esi),%eax
	cmpb $92,(%ebx,%eax)
	jne .L131
	movl -12(%ebp),%edi
	cmpl %ecx,4(%edi)
	ja .L133
	pushl $2930
	call _m3_fault
	.align 16
.L133:
	movl -12(%ebp),%edi
	movl (%edi),%eax
	movb $92,(%ecx,%eax)
	incl %ecx
.L131:
	incl %ebx
.L123:
	cmpl %ebx,-8(%ebp)
	jge .L124
	movl -12(%ebp),%eax
.L135:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3Path__Escape,.Lfe8-M3Path__Escape
	.align 16
	.type	 _INITM_M3Path,@function
_INITM_M3Path:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
.L137:
	movb %cl,%dl
	xorl %eax,%eax
	movb %dl,%al
	incl %ecx
	movb %dl,MM_M3Path+244(%eax)
	cmpl $255,%ecx
	jle .L137
	movl $65,%edx
.L140:
	movb %dl,%al
	andl $255,%eax
	leal 32(%eax),%ecx
	cmpl $255,%ecx
	jbe .L141
	pushl $3073
	call _m3_fault
	.align 16
.L141:
	movb %cl,MM_M3Path+244(%eax)
	incl %edx
	cmpl $90,%edx
	jle .L140
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 _INITM_M3Path,.Lfe9-_INITM_M3Path
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3Path
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_M3Path
.data
	.align 4
	.type	 MM_M3Path,@object
	.size	 MM_M3Path,876
MM_M3Path:
	.long MM_M3Path+737
	.zero	16
	.long MM_M3Path+612
	.zero	4
	.long MM_M3Path+724
	.long MM_M3Path+724
	.zero	4
	.long _INITM_M3Path
	.zero	456
	.long M3Path__Append
	.long M3Path__ExtMatch
	.long M3Path__SetOS
	.long M3Path__Join
	.long M3Path__Parse
	.long M3Path__DefaultProgram
	.long M3Path__Convert
	.long M3Path__Escape
	.ascii	"_INITM_M3Path"
	.zero	1
	.ascii	"Escape"
	.zero	1
	.ascii	"Convert"
	.zero	1
	.ascii	"DefaultProgram"
	.zero	1
	.ascii	"ExtMatch"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.ascii	"Append"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"SetOS"
	.zero	4
	.long _INITM_M3Path
	.long MM_M3Path+532
	.zero	4
	.long M3Path__Escape
	.long MM_M3Path+546
	.long MI_M3Path+64
	.long M3Path__Convert
	.long MM_M3Path+553
	.long MI_M3Path+60
	.long M3Path__DefaultProgram
	.long MM_M3Path+561
	.long MI_M3Path+56
	.long M3Path__ExtMatch
	.long MM_M3Path+576
	.zero	4
	.long M3Path__Parse
	.long MM_M3Path+585
	.long MI_M3Path+52
	.long M3Path__Append
	.long MM_M3Path+591
	.zero	4
	.long M3Path__Join
	.long MM_M3Path+598
	.long MI_M3Path+48
	.long M3Path__SetOS
	.long MM_M3Path+603
	.long MI_M3Path+44
	.zero	4
.byte 42
.byte 44
.byte 1
.byte 1
.byte 4
.byte 26
.byte 22
.byte 4
.byte 4
.byte 37
.byte 26
.byte 2
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3dri"
	.ascii	"ver/src/M3Path.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
