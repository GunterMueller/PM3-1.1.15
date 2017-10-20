	.file	"Lex.mc"
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
	.type	 Lex__Scan,@function
Lex__Scan:
	pushl %ebp
	movl %esp,%ebp
	subl $452,%esp
	pushl %ebx
	movl $MM_Lex+256,-452(%ebp)
	movl $0,-448(%ebp)
.L2:
	movl $MM_Lex+268,-428(%ebp)
	movl $0,-432(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-436(%ebp)
	leal -436(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -416(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L9
.L4:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,%bl
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	jne .L5
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
	jmp .L6
	.align 16
.L5:
	cmpl $256,-448(%ebp)
	jne .L7
	leal -256(%ebp),%edx
	movl %edx,-444(%ebp)
	movl -448(%ebp),%edx
	movl %edx,-440(%ebp)
	leal -444(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	movl -452(%ebp),%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,-452(%ebp)
	movl $0,-448(%ebp)
	addl $12,%esp
.L7:
	cmpl $255,-448(%ebp)
	jbe .L8
	pushl $481
	call _m3_fault
	.align 16
.L8:
	movl -448(%ebp),%edx
	movb %bl,-256(%edx,%ebp)
	incl %edx
	movl %edx,-448(%ebp)
	jmp .L4
	.align 16
.L6:
	movl -436(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L3:
.L9:
	cmpl $0,-448(%ebp)
	jge .L11
	pushl $577
	call _m3_fault
	.align 16
.L11:
	cmpl $256,-448(%ebp)
	jle .L12
	pushl $577
	call _m3_fault
	.align 16
.L12:
	movl -448(%ebp),%edx
	movl %edx,-440(%ebp)
	leal -256(%ebp),%edx
	movl %edx,-444(%ebp)
	leal -444(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	movl -452(%ebp),%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl -456(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Lex__Scan,.Lfe1-Lex__Scan
	.align 16
	.type	 Lex__Skip,@function
Lex__Skip:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L14:
	movl $MM_Lex+268,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L13
.L16:
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call set_member
	addl $12,%esp
	testl %eax,%eax
	jne .L16
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Rd+88,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L15:
.L13:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Lex__Skip,.Lfe2-Lex__Skip
	.align 16
	.type	 Lex__Match,@function
Lex__Match:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L22:
	movl $MM_Lex+268,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L23
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ebx
	leal -1(%ebx),%edi
	addl $4,%esp
	jmp .L24
	.align 16
.L25:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	addl $12,%esp
	cmpl %eax,%ebx
	je .L26
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+88,%eax
	call *%eax
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L26:
	incl %esi
.L24:
	cmpl %edi,%esi
	jle .L25
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L21
	.align 16
.L23:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L21:
	leal -192(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Lex__Match,.Lfe3-Lex__Match
	.align 16
	.type	 Lex__Bool__M.0,@function
Lex__Bool__M.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	movl -4(%esi),%eax
	movb 8(%ebp),%bl
	movl (%eax),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	andl $255,%eax
	xorl %edx,%edx
	movb %bl,%dl
	addl $4,%esp
	cmpl %edx,%eax
	je .L31
	addl $32,%edx
	cmpl $255,%edx
	jbe .L33
	pushl $1153
	call _m3_fault
	.align 16
.L33:
	cmpl %eax,%edx
	je .L31
	movl -4(%esi),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Rd+88,%eax
	call *%eax
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L31:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Lex__Bool__M.0,.Lfe4-Lex__Bool__M.0
.section	.rodata
	.align 4
	.type	 L_6.6,@object
	.size	 L_6.6,188
L_6.6:
	.long .L37
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L38
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L37
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L36
	.long .L38
.text
	.align 16
	.type	 Lex__Bool,@function
Lex__Bool:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	leal 8(%ebp),%edx
	movl %edx,-4(%ebp)
	pushl $MI_Lex+60
	movl 8(%ebp),%eax
	pushl %eax
	call Lex__Skip
	addl $8,%esp
.L34:
	movl $MM_Lex+268,-176(%ebp)
	movl $0,-180(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-184(%ebp)
	leal -184(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -164(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L35
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	addl $-70,%eax
	addl $4,%esp
	testl %eax,%eax
	jl .L36
	cmpl $46,%eax
	jg .L36
	jmp *L_6.6(,%eax,4)
	.align 16
.L37:
	pushl $65
	movl %ebp,%ecx
	call Lex__Bool__M.0
	pushl $76
	movl %ebp,%ecx
	call Lex__Bool__M.0
	pushl $83
	movl %ebp,%ecx
	call Lex__Bool__M.0
	pushl $69
	movl %ebp,%ecx
	call Lex__Bool__M.0
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L30
	.align 16
.L38:
	pushl $82
	movl %ebp,%ecx
	call Lex__Bool__M.0
	pushl $85
	movl %ebp,%ecx
	call Lex__Bool__M.0
	pushl $69
	movl %ebp,%ecx
	call Lex__Bool__M.0
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L30
	.align 16
.L36:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+88,%eax
	call *%eax
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L35:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L30:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Lex__Bool,.Lfe5-Lex__Bool
	.align 16
	.type	 Lex__ReadSign,@function
Lex__ReadSign:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb (%ebx),%al
	cmpl $42,%eax
	jle .L43
	cmpl $43,%eax
	jle .L44
	cmpl $44,%eax
	jle .L43
	cmpl $45,%eax
	jle .L45
	jmp .L43
	.align 16
.L44:
	pushl %edx
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,(%ebx)
	jmp .L43
	.align 16
.L45:
	pushl %edx
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,(%ebx)
	movl $1,%eax
	jmp .L47
	.align 16
.L43:
	xorl %eax,%eax
.L47:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Lex__ReadSign,.Lfe6-Lex__ReadSign
.section	.rodata
	.align 4
	.type	 L_7.7,@object
	.size	 L_7.7,220
L_7.7:
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L52
	.long .L52
	.long .L52
	.long .L52
	.long .L52
	.long .L52
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L50
	.long .L53
	.long .L50
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L54
.text
	.align 16
	.type	 Lex__ReadUnsigned,@function
Lex__ReadUnsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $220,%esp
	movb 12(%ebp),%cl
	movb $0,-216(%ebp)
	movl $0,-212(%ebp)
	movl -212(%ebp),%eax
	movl %eax,-208(%ebp)
	movb 20(%ebp),%al
	movb %al,-204(%ebp)
	movb -216(%ebp),%al
	movb %al,-196(%ebp)
	movb %al,-200(%ebp)
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl %eax,-220(%ebp)
	movl %eax,%edx
	negl %edx
	movl %edx,%eax
	xorl %edx,%edx
	divl -220(%ebp)
	movl %eax,-192(%ebp)
	movl $-1,%edx
	movl %edx,%eax
	xorl %edx,%edx
	divl -220(%ebp)
	movl %eax,-188(%ebp)
	movl -212(%ebp),%eax
	movl %eax,-184(%ebp)
.L49:
	xorl %eax,%eax
	movb %cl,%al
	leal -48(%eax),%edx
	testl %edx,%edx
	jl .L50
	cmpl $54,%edx
	jg .L50
	jmp *L_7.7(,%edx,4)
	.align 16
.L51:
	xorl %eax,%eax
	movb %cl,%al
	leal -48(%eax),%edx
	cmpl $15,%edx
	jbe .L55
	pushl $2481
	call _m3_fault
	.align 16
.L55:
	movb %dl,-216(%ebp)
	cmpl $1,-212(%ebp)
	jg .L58
	movl -208(%ebp),%eax
	leal (%eax,%eax,4),%edx
	xorl %eax,%eax
	movb -216(%ebp),%al
	leal (%eax,%edx,2),%edx
	testl %edx,%edx
	jge .L57
	pushl $2497
	call _m3_fault
	.align 16
.L57:
	movl %edx,-208(%ebp)
	jmp .L58
	.align 16
.L54:
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl $10,%eax
	jle .L50
	xorl %eax,%eax
	movb %cl,%al
	leal -87(%eax),%edx
	cmpl $15,%edx
	jbe .L63
	pushl $2545
	call _m3_fault
	.align 16
.L52:
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl $10,%eax
	jle .L50
	xorl %eax,%eax
	movb %cl,%al
	leal -55(%eax),%edx
	cmpl $15,%edx
	jbe .L63
	pushl $2593
	call _m3_fault
	.align 16
.L63:
	movb %dl,-216(%ebp)
	jmp .L58
	.align 16
.L53:
	cmpb $0,-204(%ebp)
	jne .L50
	cmpl $2,-212(%ebp)
	jg .L50
	cmpl $1,-208(%ebp)
	jle .L50
	cmpl $16,-208(%ebp)
	jg .L50
	cmpl $1,-212(%ebp)
	jle .L65
	cmpl $9,-208(%ebp)
	jle .L50
.L65:
	movb $1,-204(%ebp)
	movl -208(%ebp),%eax
	addl $-2,%eax
	cmpl $14,%eax
	jbe .L66
	pushl $2753
	call _m3_fault
	.align 16
.L66:
	movb -208(%ebp),%al
	movb %al,16(%ebp)
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl %eax,-220(%ebp)
	movl %eax,%edx
	negl %edx
	movl %edx,%eax
	xorl %edx,%edx
	divl -220(%ebp)
	movl %eax,-192(%ebp)
	movl $-1,%edx
	movl %edx,%eax
	xorl %edx,%edx
	divl -220(%ebp)
	movl %eax,-188(%ebp)
	movl $0,-212(%ebp)
	movb $0,-196(%ebp)
	movb -196(%ebp),%al
	movb %al,-200(%ebp)
	movl -212(%ebp),%eax
	movl %eax,-184(%ebp)
	jmp .L58
	.align 16
.L50:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
	jmp .L60
	.align 16
.L58:
	cmpb $95,%cl
	je .L74
	incl -212(%ebp)
	xorl %edx,%edx
	movb -216(%ebp),%dl
	xorl %ecx,%ecx
	movb 16(%ebp),%cl
	cmpl %ecx,%edx
	jl .L68
	movb $1,-200(%ebp)
	jmp .L74
	.align 16
.L68:
	movl -192(%ebp),%eax
	cmpl %eax,-184(%ebp)
	ja .L70
	movl -184(%ebp),%eax
	imull %ecx,%eax
	addl %edx,%eax
	movl %eax,-184(%ebp)
	jmp .L74
	.align 16
.L70:
	movl -188(%ebp),%eax
	cmpl %eax,-184(%ebp)
	ja .L71
	imull -184(%ebp),%ecx
	movl %ecx,-184(%ebp)
	movl %ecx,%eax
	notl %eax
	cmpl %edx,%eax
	jl .L72
	addl %edx,-184(%ebp)
	jmp .L74
	.align 16
.L72:
.L71:
	movb $1,-196(%ebp)
.L74:
	movl $MM_Lex+268,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L60
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%edx
	movb %dl,%cl
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $4,%esp
	jmp .L49
	.align 16
.L75:
.L60:
	cmpl $0,-212(%ebp)
	je .L78
	cmpb $0,-200(%ebp)
	je .L79
.L78:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L79:
	cmpb $0,-196(%ebp)
	je .L80
	pushl $5
	pushl $MI_FloatMode+88
	movl MI_RTHooks+52,%eax
	call *%eax
.L80:
	movl -184(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Lex__ReadUnsigned,.Lfe7-Lex__ReadUnsigned
	.align 16
	.type	 Lex__ReadNumber,@function
Lex__ReadNumber:
	pushl %ebp
	movl %esp,%ebp
	subl $188,%esp
	pushl %ebx
	movb $0,-188(%ebp)
	pushl $MI_Lex+60
	movl 8(%ebp),%edx
	pushl %edx
	call Lex__Skip
	addl $8,%esp
.L82:
	movl $MM_Lex+268,-176(%ebp)
	movl $0,-180(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-184(%ebp)
	leal -184(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -164(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L83
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-1(%ebp)
	addl $4,%esp
	cmpb $0,16(%ebp)
	je .L84
	leal -1(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call Lex__ReadSign
	movb %al,-188(%ebp)
	addl $8,%esp
	jmp .L85
	.align 16
.L84:
	movb 16(%ebp),%dl
	movb %dl,-188(%ebp)
.L85:
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L86
	.align 16
.L83:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L86:
	pushl $0
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb -1(%ebp),%al
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call Lex__ReadUnsigned
	movl %eax,%ebx
	addl $16,%esp
	cmpb $0,16(%ebp)
	je .L88
	cmpb $0,-188(%ebp)
	jne .L89
	cmpl $2147483647,%ebx
	ja .L90
.L89:
	cmpb $1,-188(%ebp)
	jne .L91
	cmpl $-2147483648,%ebx
	jbe .L88
.L90:
	pushl $5
	pushl $MI_FloatMode+88
	movl MI_RTHooks+52,%eax
	call *%eax
.L88:
	cmpb $1,-188(%ebp)
	jne .L91
	negl %ebx
.L91:
	movl %ebx,%eax
	movl -192(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Lex__ReadNumber,.Lfe8-Lex__ReadNumber
	.align 16
	.type	 Lex__Int,@function
Lex__Int:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	pushl $1
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call Lex__ReadNumber
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Lex__Int,.Lfe9-Lex__Int
	.align 16
	.type	 Lex__Unsigned,@function
Lex__Unsigned:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	pushl $0
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call Lex__ReadNumber
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Lex__Unsigned,.Lfe10-Lex__Unsigned
	.align 16
	.type	 Lex__ReadFloVal__SkipZeros.1,@function
Lex__ReadFloVal__SkipZeros.1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
.L96:
	movl -4(%ebx),%eax
	movl 4(%eax),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $45,%eax
	jle .L95
	cmpl $46,%eax
	jle .L98
	cmpl $47,%eax
	jle .L95
	cmpl $48,%eax
	jg .L95
	movb $1,-5(%ebx)
	cmpb $0,-6(%ebx)
	je .L101
	movl -4(%ebx),%eax
	movl 20(%eax),%eax
	decl (%eax)
	jmp .L101
	.align 16
.L98:
	cmpb $0,-6(%ebx)
	jne .L95
	movb $1,-6(%ebx)
.L101:
	movl -4(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%edx
	movl -4(%ebx),%eax
	movl 4(%eax),%eax
	addl $4,%esp
	movb %dl,(%eax)
	jmp .L96
	.align 16
.L95:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Lex__ReadFloVal__SkipZeros.1,.Lfe11-Lex__ReadFloVal__SkipZeros.1
	.align 16
	.type	 Lex__ReadFloVal__AppendToPrefix.2,@function
Lex__ReadFloVal__AppendToPrefix.2:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	movl -4(%esi),%eax
	movl 8(%eax),%eax
	cmpl $0,(%eax)
	jne .L105
	leal -8(%ebp),%edi
	movl %edi,-16(%ebp)
	movl $1,-12(%ebp)
	movl -4(%esi),%eax
	movl 16(%eax),%eax
	leal -16(%ebp),%edx
	movl (%eax),%eax
	movl %eax,-8(%ebp)
	pushl %edx
	movl MM_Lex+276,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L106
	.align 16
.L105:
	leal -8(%ebp),%edi
	movl %edi,-16(%ebp)
	movl $1,-12(%ebp)
	movl -4(%esi),%ecx
	movl 8(%ecx),%eax
	leal -16(%ebp),%ebx
	movl (%eax),%edx
	testl %edx,%edx
	jne .L107
	pushl $5108
	call _m3_fault
	.align 16
.L107:
	movl 16(%ecx),%eax
	movl (%eax),%eax
	addl 4(%edx),%eax
	movl %eax,-8(%ebp)
	pushl %ebx
	movl MM_Lex+276,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L108
	pushl $5124
	call _m3_fault
	.align 16
.L108:
	movl -4(%esi),%eax
	movl 8(%eax),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L109
	pushl $5124
	call _m3_fault
	.align 16
.L109:
	movl 4(%eax),%edx
	movl %edx,-20(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L110
	pushl $5121
	call _m3_fault
	.align 16
.L110:
	movl (%ebx),%edi
	movl %edi,-36(%ebp)
	movl %edi,-24(%ebp)
	movl -4(%esi),%eax
	movl 8(%eax),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L111
	pushl $5124
	call _m3_fault
	.align 16
.L111:
	movl %eax,%ecx
	cmpl %edx,4(%ecx)
	je .L112
	pushl $5123
	call _m3_fault
	.align 16
.L112:
	pushl %edx
	movl (%ecx),%eax
	pushl %eax
	movl -36(%ebp),%edi
	pushl %edi
	call memmove
	addl $12,%esp
.L106:
	movl -4(%esi),%eax
	movl 8(%eax),%eax
	movl %ebx,(%eax)
	movl -4(%esi),%edx
	movl 8(%edx),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L113
	pushl $5172
	call _m3_fault
	.align 16
.L113:
	movl %eax,%ecx
	movl 16(%edx),%eax
	movl (%eax),%ebx
	movl 4(%ecx),%edx
	subl %ebx,%edx
	jns .L115
	pushl $5169
	call _m3_fault
	.align 16
.L115:
	movl %ebx,-20(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L116
	pushl $5169
	call _m3_fault
	.align 16
.L116:
	movl (%ecx),%ecx
	addl %edx,%ecx
	movl %ecx,-24(%ebp)
	movl -4(%esi),%eax
	movl 16(%eax),%eax
	movl (%eax),%edx
	cmpl $40,%edx
	jle .L117
	pushl $5169
	call _m3_fault
	.align 16
.L117:
	movl %edx,-28(%ebp)
	movl -4(%esi),%eax
	movl 12(%eax),%eax
	movl %eax,-32(%ebp)
	cmpl %ebx,%edx
	je .L118
	pushl $5171
	call _m3_fault
	.align 16
.L118:
	pushl %edx
	pushl %eax
	pushl %ecx
	call memmove
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Lex__ReadFloVal__AppendToPrefix.2,.Lfe12-Lex__ReadFloVal__AppendToPrefix.2
	.align 16
	.type	 Lex__ReadFloVal__ReadDigits.3,@function
Lex__ReadFloVal__ReadDigits.3:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -4(%ebx),%eax
	movl 4(%eax),%eax
	cmpb $48,(%eax)
	jne .L121
	pushl $5360
	call _m3_fault
	.align 16
.L121:
	movl -4(%ebx),%edx
	movl 4(%edx),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $45,%eax
	jle .L119
	cmpl $46,%eax
	jle .L123
	cmpl $47,%eax
	jle .L119
	cmpl $57,%eax
	jg .L119
	cmpb $0,-6(%ebx)
	jne .L125
	movl 20(%edx),%eax
	incl (%eax)
.L125:
	movl -4(%ebx),%eax
	movl 16(%eax),%eax
	cmpl $40,(%eax)
	jne .L126
	movl %ebx,%ecx
	call Lex__ReadFloVal__AppendToPrefix.2
	movl -4(%ebx),%eax
	movl 16(%eax),%eax
	movl $0,(%eax)
.L126:
	movl -4(%ebx),%edx
	movl 16(%edx),%eax
	movl (%eax),%esi
	cmpl $39,%esi
	jle .L127
	pushl $5505
	call _m3_fault
	.align 16
.L127:
	movl 4(%edx),%eax
	movb (%eax),%al
	andl $255,%eax
	leal -48(%eax),%ecx
	cmpl $9,%ecx
	jbe .L128
	pushl $5505
	call _m3_fault
	.align 16
.L128:
	movl 12(%edx),%eax
	movb %cl,(%esi,%eax)
	movl -4(%ebx),%eax
	movl 16(%eax),%eax
	incl (%eax)
	jmp .L129
	.align 16
.L123:
	cmpb $0,-6(%ebx)
	jne .L119
	movb $1,-6(%ebx)
.L129:
	movl -4(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%edx
	movl -4(%ebx),%eax
	movl 4(%eax),%eax
	addl $4,%esp
	movb %dl,(%eax)
	jmp .L121
	.align 16
.L119:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Lex__ReadFloVal__ReadDigits.3,.Lfe13-Lex__ReadFloVal__ReadDigits.3
	.align 16
	.type	 Lex__ReadFloVal,@function
Lex__ReadFloVal:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
	leal 8(%ebp),%edx
	xorb %al,%al
	pushl %ebx
	movl %edx,-4(%ebp)
	movb %al,-5(%ebp)
	movb %al,-6(%ebp)
	movb %al,-5(%ebp)
	movb %al,-6(%ebp)
	movb %al,-192(%ebp)
.L132:
	movl $MM_Lex+268,-180(%ebp)
	movl $0,-184(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-188(%ebp)
	leal -188(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -168(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L133
	movl 28(%ebp),%eax
	movl %ebp,%ecx
	movl $-1,(%eax)
	call Lex__ReadFloVal__SkipZeros.1
	movl 16(%ebp),%eax
	movl %ebx,(%eax)
	movl 24(%ebp),%eax
	movl %ebp,%ecx
	movl %ebx,(%eax)
	call Lex__ReadFloVal__ReadDigits.3
	movl -188(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L134
	.align 16
.L133:
	movl 24(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L135
	cmpb $0,-5(%ebp)
	jne .L135
	pushl %eax
	pushl $MI_Rd+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L135:
	movb $1,-192(%ebp)
.L134:
	movl 24(%ebp),%eax
	cmpl $0,(%eax)
	jne .L137
	cmpb $0,-5(%ebp)
	je .L137
	movl 20(%ebp),%eax
	movb $0,(%eax)
	movl 24(%ebp),%eax
	incl (%eax)
	movl 28(%ebp),%eax
	incl (%eax)
.L137:
	xorl %eax,%eax
	movb -192(%ebp),%al
	movl -196(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Lex__ReadFloVal,.Lfe14-Lex__ReadFloVal
.section	.rodata
	.align 4
	.type	 L_12.8,@object
	.size	 L_12.8,212
L_12.8:
	.long .L142
	.long .L142
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L142
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L142
	.long .L142
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L141
	.long .L142
.text
	.align 16
	.type	 Lex__ReadExponent,@function
Lex__ReadExponent:
	pushl %ebp
	movl %esp,%ebp
	subl $368,%esp
	movb $0,-368(%ebp)
.L139:
	movl $MM_Lex+268,-172(%ebp)
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
	jne .L140
	xorl %eax,%eax
	movb 12(%ebp),%al
	addl $-68,%eax
	js .L141
	cmpl $52,%eax
	jg .L141
	jmp *L_12.8(,%eax,4)
	.align 16
.L142:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,12(%ebp)
	addl $4,%esp
	jmp .L143
	.align 16
.L141:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Rd+88,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L153
	.align 16
.L143:
	leal 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call Lex__ReadSign
	movb %al,-368(%ebp)
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L154
	.align 16
.L140:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L154:
	addl $8,%esp
.L146:
	movl $MM_Lex+284,-352(%ebp)
	movl $0,-356(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-360(%ebp)
	leal -360(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -340(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L147
	pushl $1
	pushl $10
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call Lex__ReadUnsigned
	movl %eax,-364(%ebp)
	addl $16,%esp
	cmpl $2147483647,%eax
	jbe .L148
	pushl $5
	pushl $MI_FloatMode+88
	movl MI_RTHooks+52,%eax
	call *%eax
.L148:
	movl -360(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L149
	.align 16
.L147:
	cmpb $5,-344(%ebp)
	je .L150
	pushl $6480
	call _m3_fault
	.align 16
.L150:
	cmpb $1,-368(%ebp)
	sete %al
	andl $255,%eax
	pushl %eax
	pushl $MM_Lex+164
	movl MI_RTHooks+52,%eax
	call *%eax
.L149:
	cmpb $1,-368(%ebp)
	jne .L152
	negl -364(%ebp)
.L152:
	movl -364(%ebp),%eax
.L153:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Lex__ReadExponent,.Lfe15-Lex__ReadExponent
	.align 16
	.type	 Lex__ReadReal__M.4,@function
Lex__ReadReal__M.4:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl %ebx,-188(%ebp)
.L157:
	movl $MM_Lex+268,-176(%ebp)
	movl $0,-180(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-184(%ebp)
	leal -184(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -164(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L158
	movl -188(%ebp),%ebx
	movl -12(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-192(%ebp)
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $4,%esp
	jmp .L159
	.align 16
.L158:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L159:
	xorl %edx,%edx
	movb -192(%ebp),%dl
	xorl %eax,%eax
	movb 8(%ebp),%al
	cmpl %eax,%edx
	je .L156
	addl $32,%eax
	cmpl $255,%eax
	jbe .L162
	pushl $6945
	call _m3_fault
	.align 16
.L162:
	cmpl %edx,%eax
	je .L156
	movl -188(%ebp),%ebx
	movl -12(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Rd+88,%eax
	call *%eax
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L156:
	movl -196(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Lex__ReadReal__M.4,.Lfe16-Lex__ReadReal__M.4
	.align 16
	.type	 Lex__ReadReal__Inf.5,@function
Lex__ReadReal__Inf.5:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl %ecx,-4(%ebp)
	xorl %eax,%eax
	movb 8(%ebp),%al
	testl %eax,%eax
	jle .L164
	cmpl $1,%eax
	jle .L165
.L164:
	movl $1,%eax
	jmp .L168
	.align 16
.L165:
	movl $2,%eax
.L168:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Lex__ReadReal__Inf.5,.Lfe17-Lex__ReadReal__Inf.5
.section	.rodata
	.align 4
	.type	 L_16.9,@object
	.size	 L_16.9,152
L_16.9:
	.long .L179
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L180
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L179
	.long .L178
	.long .L178
	.long .L178
	.long .L178
	.long .L180
.text
	.align 16
	.type	 Lex__ReadReal,@function
Lex__ReadReal:
	pushl %ebp
	movl %esp,%ebp
	subl $552,%esp
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl %esi,-12(%ebp)
	movl 24(%ebp),%eax
	movl $0,-4(%ebp)
	movl $0,(%eax)
	pushl $MI_Lex+60
	movl 8(%ebp),%eax
	pushl %eax
	call Lex__Skip
	addl $8,%esp
.L169:
	movl $MM_Lex+268,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L170
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-5(%ebp)
	leal -5(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Lex__ReadSign
	movl 12(%ebp),%esi
	movb %al,(%esi)
	movl 16(%ebp),%edx
	addl $12,%esp
	cmpl $40,4(%edx)
	je .L171
	pushl $7267
	call _m3_fault
	.align 16
.L171:
	movl 24(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Lex__ReadFloVal
	addl $24,%esp
	testl %eax,%eax
	je .L172
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L191
	.align 16
.L172:
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L173
	.align 16
.L170:
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L173:
	movl 20(%ebp),%eax
	cmpl $0,(%eax)
	jne .L189
	cmpl $0,-4(%ebp)
	je .L177
	pushl $7376
	call _m3_fault
	.align 16
.L177:
	xorl %eax,%eax
	movb -5(%ebp),%al
	leal -73(%eax),%edx
	testl %edx,%edx
	jl .L178
	cmpl $37,%edx
	jg .L178
	jmp *L_16.9(,%edx,4)
	.align 16
.L179:
	pushl $78
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	pushl $70
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	addl $8,%esp
.L181:
	movl $MM_Lex+268,-364(%ebp)
	movl $0,-368(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-372(%ebp)
	leal -372(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -352(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L186
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-5(%ebp)
	xorl %eax,%eax
	movb -5(%ebp),%al
	addl $4,%esp
	cmpl $72,%eax
	jle .L183
	cmpl $73,%eax
	jle .L184
	cmpl $104,%eax
	jle .L183
	cmpl $105,%eax
	jg .L183
.L184:
	pushl $78
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	pushl $73
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	pushl $84
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	pushl $89
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	addl $16,%esp
	jmp .L185
	.align 16
.L183:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L185:
	movl -372(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L182:
.L186:
	movl 12(%ebp),%esi
	movl %ebp,%ecx
	xorl %eax,%eax
	movb (%esi),%al
	pushl %eax
	call Lex__ReadReal__Inf.5
	pushl %eax
	pushl $MM_Lex+188
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L180:
	pushl $65
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	pushl $78
	movl %ebp,%ecx
	call Lex__ReadReal__M.4
	pushl $0
	pushl $MM_Lex+188
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $16,%esp
.L178:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rd+88,%eax
	call *%eax
	pushl $0
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L189:
	movl $MM_Lex+292,-544(%ebp)
	movl $0,-548(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-552(%ebp)
	leal -552(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -532(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L190
	xorl %eax,%eax
	movb -5(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Lex__ReadExponent
	movl %eax,%edx
	movl 24(%ebp),%eax
	addl %edx,(%eax)
	movl -552(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L191
	.align 16
.L190:
	cmpb $0,-536(%ebp)
	je .L192
	pushl $3
	pushl $MI_FloatMode+88
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L192:
	pushl $2
	pushl $MI_FloatMode+88
	movl MI_RTHooks+52,%eax
	call *%eax
.L191:
	movl -4(%ebp),%eax
	leal -560(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Lex__ReadReal,.Lfe18-Lex__ReadReal
	.align 16
	.type	 Lex__ConcatDigits,@function
Lex__ConcatDigits:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl 12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl 4(%eax),%edi
	leal -12(%ebp),%eax
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	leal (%edi,%esi),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_Lex+276,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L196
	pushl $8020
	call _m3_fault
	.align 16
.L196:
	movl %esi,-16(%ebp)
	movl %esi,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L197
	pushl $8017
	call _m3_fault
	.align 16
.L197:
	movl (%ebx),%edx
	movl 8(%ebp),%eax
	movl %edx,-20(%ebp)
	cmpl %esi,4(%eax)
	je .L198
	pushl $8019
	call _m3_fault
	.align 16
.L198:
	pushl %esi
	movl (%eax),%eax
	pushl %eax
	pushl %edx
	call memmove
	addl $12,%esp
	movl %edi,-16(%ebp)
	movl -24(%ebp),%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L200
	pushl $8033
	call _m3_fault
	.align 16
.L200:
	movl (%ebx),%edx
	addl %esi,%edx
	movl 12(%ebp),%eax
	movl %edx,-20(%ebp)
	cmpl %edi,4(%eax)
	je .L201
	pushl $8035
	call _m3_fault
	.align 16
.L201:
	pushl %edi
	movl (%eax),%eax
	pushl %eax
	pushl %edx
	call memmove
	leal -36(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Lex__ConcatDigits,.Lfe19-Lex__ConcatDigits
	.align 16
	.type	 Lex__Real,@function
Lex__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $240,%esp
	pushl %esi
	pushl %ebx
	movb $0,-49(%ebp)
	pushl $40
	xorl %ebx,%ebx
	pushl %ebx
	leal -48(%ebp),%eax
	pushl %eax
	call memset
	movl %ebx,-8(%ebp)
	addl $12,%esp
.L203:
	movl $MM_Lex+300,-224(%ebp)
	movl $0,-228(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-232(%ebp)
	leal -232(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -212(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L204
	leal -48(%ebp),%esi
	movl %esi,-240(%ebp)
	movl $40,-236(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -240(%ebp),%ebx
	pushl %ebx
	leal -49(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call Lex__ReadReal
	movl %eax,%edx
	addl $20,%esp
	testl %edx,%edx
	jne .L205
	movl -8(%ebp),%eax
	cmpl $40,%eax
	jle .L206
	pushl $8289
	call _m3_fault
	.align 16
.L206:
	movl %eax,-236(%ebp)
	movl %esi,-240(%ebp)
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L218
	.align 16
.L205:
	movl -8(%ebp),%eax
	cmpl $40,%eax
	jle .L207
	pushl $8321
	call _m3_fault
	.align 16
.L207:
	movl %eax,-236(%ebp)
	movl %esi,-240(%ebp)
	pushl %ebx
	pushl %edx
	call Lex__ConcatDigits
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L209
	pushl $8340
	call _m3_fault
	.align 16
.L209:
	movl -4(%ebp),%eax
	pushl %eax
	pushl %edx
.L218:
	xorl %eax,%eax
	movb -49(%ebp),%al
	pushl %eax
	movl MI_RealFloat+92,%eax
	call *%eax
	movl -232(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L217
	.align 16
.L204:
	xorl %eax,%eax
	movb -216(%ebp),%al
	testl %eax,%eax
	jle .L210
	cmpl $1,%eax
	jle .L211
	flds MI_IEEESpecial+44
	jmp .L217
	.align 16
.L211:
	flds MI_IEEESpecial+48
	jmp .L217
	.align 16
.L210:
	flds MI_IEEESpecial+52
.L217:
	leal -248(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Lex__Real,.Lfe20-Lex__Real
	.align 16
	.type	 Lex__LongReal,@function
Lex__LongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $240,%esp
	pushl %esi
	pushl %ebx
	movb $0,-49(%ebp)
	pushl $40
	xorl %ebx,%ebx
	pushl %ebx
	leal -48(%ebp),%eax
	pushl %eax
	call memset
	movl %ebx,-8(%ebp)
	addl $12,%esp
.L220:
	movl $MM_Lex+300,-224(%ebp)
	movl $0,-228(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-232(%ebp)
	leal -232(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -212(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L221
	leal -48(%ebp),%esi
	movl %esi,-240(%ebp)
	movl $40,-236(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -240(%ebp),%ebx
	pushl %ebx
	leal -49(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call Lex__ReadReal
	movl %eax,%edx
	addl $20,%esp
	testl %edx,%edx
	jne .L222
	movl -8(%ebp),%eax
	cmpl $40,%eax
	jle .L223
	pushl $8721
	call _m3_fault
	.align 16
.L223:
	movl %eax,-236(%ebp)
	movl %esi,-240(%ebp)
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L235
	.align 16
.L222:
	movl -8(%ebp),%eax
	cmpl $40,%eax
	jle .L224
	pushl $8753
	call _m3_fault
	.align 16
.L224:
	movl %eax,-236(%ebp)
	movl %esi,-240(%ebp)
	pushl %ebx
	pushl %edx
	call Lex__ConcatDigits
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L226
	pushl $8772
	call _m3_fault
	.align 16
.L226:
	movl -4(%ebp),%eax
	pushl %eax
	pushl %edx
.L235:
	xorl %eax,%eax
	movb -49(%ebp),%al
	pushl %eax
	movl MI_LongFloat+92,%eax
	call *%eax
	movl -232(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L234
	.align 16
.L221:
	xorl %eax,%eax
	movb -216(%ebp),%al
	testl %eax,%eax
	jle .L227
	cmpl $1,%eax
	jle .L228
	fldl MI_IEEESpecial+56
	jmp .L234
	.align 16
.L228:
	fldl MI_IEEESpecial+64
	jmp .L234
	.align 16
.L227:
	fldl MI_IEEESpecial+72
.L234:
	leal -248(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Lex__LongReal,.Lfe21-Lex__LongReal
	.align 16
	.type	 Lex__Extended,@function
Lex__Extended:
	pushl %ebp
	movl %esp,%ebp
	subl $240,%esp
	pushl %esi
	pushl %ebx
	movb $0,-49(%ebp)
	pushl $40
	xorl %ebx,%ebx
	pushl %ebx
	leal -48(%ebp),%eax
	pushl %eax
	call memset
	movl %ebx,-8(%ebp)
	addl $12,%esp
.L237:
	movl $MM_Lex+300,-224(%ebp)
	movl $0,-228(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-232(%ebp)
	leal -232(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -212(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L238
	leal -48(%ebp),%esi
	movl %esi,-240(%ebp)
	movl $40,-236(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -240(%ebp),%ebx
	pushl %ebx
	leal -49(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call Lex__ReadReal
	movl %eax,%edx
	addl $20,%esp
	testl %edx,%edx
	jne .L239
	movl -8(%ebp),%eax
	cmpl $40,%eax
	jle .L240
	pushl $9153
	call _m3_fault
	.align 16
.L240:
	movl %eax,-236(%ebp)
	movl %esi,-240(%ebp)
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L252
	.align 16
.L239:
	movl -8(%ebp),%eax
	cmpl $40,%eax
	jle .L241
	pushl $9185
	call _m3_fault
	.align 16
.L241:
	movl %eax,-236(%ebp)
	movl %esi,-240(%ebp)
	pushl %ebx
	pushl %edx
	call Lex__ConcatDigits
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L243
	pushl $9204
	call _m3_fault
	.align 16
.L243:
	movl -4(%ebp),%eax
	pushl %eax
	pushl %edx
.L252:
	xorl %eax,%eax
	movb -49(%ebp),%al
	pushl %eax
	movl MI_ExtendedFloat+92,%eax
	call *%eax
	movl -232(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L251
	.align 16
.L238:
	xorl %eax,%eax
	movb -216(%ebp),%al
	testl %eax,%eax
	jle .L244
	cmpl $1,%eax
	jle .L245
	fldl MI_IEEESpecial+80
	jmp .L251
	.align 16
.L245:
	fldl MI_IEEESpecial+88
	jmp .L251
	.align 16
.L244:
	fldl MI_IEEESpecial+96
.L251:
	leal -248(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Lex__Extended,.Lfe22-Lex__Extended
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Lex
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe23:
	.size	 _m3_fault,.Lfe23-_m3_fault
.globl MM_Lex
.data
	.align 4
	.type	 MM_Lex,@object
	.size	 MM_Lex,964
MM_Lex:
	.long MM_Lex+812
	.long MM_Lex+60
	.long MM_Lex+276
	.zero	8
	.long MM_Lex+544
	.zero	20
	.long Lex__ReadSign
	.long Lex__ReadUnsigned
	.long Lex__ReadNumber
	.long Lex__ReadFloVal
	.zero	8
	.long 1756416233
.byte 23
.byte 188
.byte 194
.byte 114
.byte 254
.byte 116
.byte 114
.byte 26
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_Lex+951
	.zero	4
	.long MM_Lex+956
	.zero	36
	.long MM_Lex+168
	.ascii	"Lex.IntOverflow"
	.zero	1
	.long Lex__ReadExponent
	.long MM_Lex+192
	.ascii	"Lex.SpecialReal"
	.zero	1
	.long Lex__ReadReal
	.long Lex__ConcatDigits
	.long Lex__Scan
	.long Lex__Skip
	.long Lex__Match
	.long Lex__Bool
	.long Lex__Int
	.long Lex__Unsigned
	.long Lex__Real
	.long Lex__LongReal
	.long Lex__Extended
	.long 2
	.long MM_Lex+264
	.long 1
	.zero	4
	.long MI_Rd+44
	.zero	8
	.long 1756416233
	.long MI_FloatMode+88
	.zero	4
	.long MM_Lex+164
	.zero	4
	.long MM_Lex+188
	.zero	4
	.ascii	"Extended"
	.zero	1
	.ascii	"LongReal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"ConcatDigits"
	.zero	1
	.ascii	"ReadReal"
	.zero	1
	.ascii	"ReadReal.Inf"
	.zero	1
	.ascii	"ReadReal.M"
	.zero	1
	.ascii	"ReadExponent"
	.zero	1
	.ascii	"ReadFloVal"
	.zero	1
	.ascii	"ReadFloVal.ReadDigits"
	.zero	1
	.ascii	"ReadFloVal.AppendToPrefix"
	.zero	1
	.ascii	"ReadFloVal.SkipZeros"
	.zero	1
	.ascii	"Unsigned"
	.zero	1
	.ascii	"Int"
	.zero	1
	.ascii	"ReadNumber"
	.zero	1
	.ascii	"ReadUnsigned"
	.zero	1
	.ascii	"ReadSign"
	.zero	1
	.ascii	"Bool"
	.zero	1
	.ascii	"Bool.M"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"Skip"
	.zero	1
	.ascii	"Scan"
	.zero	1
	.long Lex__Extended
	.long MM_Lex+308
	.long MI_Lex+156
	.long Lex__LongReal
	.long MM_Lex+317
	.long MI_Lex+152
	.long Lex__Real
	.long MM_Lex+326
	.long MI_Lex+148
	.long Lex__ConcatDigits
	.long MM_Lex+331
	.zero	4
	.long Lex__ReadReal
	.long MM_Lex+344
	.zero	4
	.long Lex__ReadReal__Inf.5
	.long MM_Lex+353
	.zero	4
	.long Lex__ReadReal__M.4
	.long MM_Lex+366
	.zero	4
	.long Lex__ReadExponent
	.long MM_Lex+377
	.zero	4
	.long Lex__ReadFloVal
	.long MM_Lex+390
	.zero	4
	.long Lex__ReadFloVal__ReadDigits.3
	.long MM_Lex+401
	.zero	4
	.long Lex__ReadFloVal__AppendToPrefix.2
	.long MM_Lex+423
	.zero	4
	.long Lex__ReadFloVal__SkipZeros.1
	.long MM_Lex+449
	.zero	4
	.long Lex__Unsigned
	.long MM_Lex+470
	.long MI_Lex+144
	.long Lex__Int
	.long MM_Lex+479
	.long MI_Lex+140
	.long Lex__ReadNumber
	.long MM_Lex+483
	.zero	4
	.long Lex__ReadUnsigned
	.long MM_Lex+494
	.zero	4
	.long Lex__ReadSign
	.long MM_Lex+507
	.zero	4
	.long Lex__Bool
	.long MM_Lex+516
	.long MI_Lex+136
	.long Lex__Bool__M.0
	.long MM_Lex+521
	.zero	4
	.long Lex__Match
	.long MM_Lex+528
	.long MI_Lex+132
	.long Lex__Skip
	.long MM_Lex+534
	.long MI_Lex+128
	.long Lex__Scan
	.long MM_Lex+539
	.long MI_Lex+124
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/fmtlex/Lex.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 0
.byte 9
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
