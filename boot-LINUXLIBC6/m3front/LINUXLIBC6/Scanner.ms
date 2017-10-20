	.file	"Scanner.mc"
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
	.type	 Scanner__Initialize,@function
Scanner__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_Scanner+2080
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scanner+1684
	pushl $0
	pushl $MM_Scanner+2108
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scanner+1688
	pushl $0
	pushl $MM_Scanner+2128
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scanner+1692
	pushl $0
	pushl $MM_Scanner+2148
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scanner+1696
	movl $0,MM_Scanner+1908
	movl $0,MM_Scanner+1956
	movb $1,MM_Scanner+180
	movb $1,MM_Scanner+158
	movb $1,MM_Scanner+157
	movb $1,MM_Scanner+161
	movb $1,MM_Scanner+160
	movb $1,MM_Scanner+499
	movl $97,%edx
.L2:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+404(%eax)
	cmpl $122,%edx
	jle .L2
	movl $65,%edx
.L5:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+404(%eax)
	cmpl $90,%edx
	jle .L5
	movl $48,%edx
.L8:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+404(%eax)
	cmpl $57,%edx
	jle .L8
	movl $48,%edx
.L11:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+660(%eax)
	cmpl $57,%edx
	jle .L11
	movl $48,%edx
.L14:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+916(%eax)
	cmpl $55,%edx
	jle .L14
	movl $48,%edx
.L17:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+1172(%eax)
	cmpl $57,%edx
	jle .L17
	movl $97,%edx
.L20:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+1172(%eax)
	cmpl $102,%edx
	jle .L20
	movl $65,%edx
.L23:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_Scanner+1172(%eax)
	cmpl $70,%edx
	jle .L23
	movb $1,MM_Scanner+1470
	movb $1,MM_Scanner+1468
	movb $1,MM_Scanner+1428
	movb $1,MM_Scanner+1438
	movb $1,MM_Scanner+1492
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Scanner__Initialize,.Lfe1-Scanner__Initialize
	.align 16
	.type	 Scanner__Reset,@function
Scanner__Reset:
	pushl %ebp
	movl %esp,%ebp
	jmp .L27
	.align 16
.L28:
	call Scanner__Pop
	movl MM_Scanner+1928,%eax
	pushl %eax
	movl MI_Host+104,%eax
	call *%eax
	addl $4,%esp
.L27:
	cmpl $0,MM_Scanner+1956
	jg .L28
	movl $0,MM_Scanner+1932
	movl $-1,MM_Scanner+1940
	movw $0,MM_Scanner+1936
	movb $32,MM_Scanner+1944
	movl $0,MM_Scanner+1948
	movl $2,MM_Scanner+1952
	movl $0,MI_Scanner+88
	movl $0,MI_Scanner+92
	movl $0,MI_Scanner+96
	movb $0,MI_Scanner+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Scanner__Reset,.Lfe2-Scanner__Reset
	.align 16
	.type	 Scanner__Push,@function
Scanner__Push:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb 16(%ebp),%bl
	incl MI_Scanner+96
	movl MM_Scanner+1956,%eax
	cmpl $40,%eax
	jbe .L31
	pushl $2385
	call _m3_fault
	.align 16
.L31:
	leal (%eax,%eax,4),%eax
	sall $4,%eax
	movl %eax,%ecx
	addl $L_2,%ecx
	movl %ecx,-4(%ebp)
	movb MM_Scanner+1944,%dl
	movl $MI_Scanner+44,%esi
	movb %dl,L_2(%eax)
	movl -4(%ebp),%edx
	movl MI_Scanner+88,%eax
	leal 24(%edx),%edi
	movl %eax,4(%edx)
	cld
	movl $11,%ecx
	rep
	movsl
	movl -4(%ebp),%edx
	movl MM_Scanner+1928,%eax
	movl %eax,8(%edx)
	movl MM_Scanner+1932,%eax
	movl %eax,12(%edx)
	movl MM_Scanner+1940,%eax
	movl %eax,20(%edx)
	movw MM_Scanner+1936,%ax
	movw %ax,16(%edx)
	movl MM_Scanner+1948,%eax
	movl %eax,68(%edx)
	movl MM_Scanner+1952,%eax
	movl %eax,72(%edx)
	movb MI_Scanner+100,%al
	movb %al,76(%edx)
	incl MM_Scanner+1956
	movb %bl,MI_Scanner+100
	movl 8(%ebp),%ecx
	pushl %ecx
	call Scanner__FileNumber
	movl %eax,%edx
	sall $5,%eax
	subl %edx,%eax
	leal (%edx,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	sall $5,%eax
	orb $1,%al
	movl %eax,MI_Scanner+88
	movb $32,MM_Scanner+1944
	movl $0,MM_Scanner+1948
	movl $2,MM_Scanner+1952
	movl 12(%ebp),%ecx
	movl %ecx,MM_Scanner+1928
	movw $0,MM_Scanner+1936
	movl $-1,MM_Scanner+1940
	movl MM_Scanner+1956,%eax
	addl $4,%esp
	cmpl $40,%eax
	jbe .L32
	pushl $2721
	call _m3_fault
	.align 16
.L32:
	leal (%eax,%eax,4),%eax
	sall $4,%eax
	movl L_2+12(%eax),%eax
	movl %eax,MM_Scanner+1932
	testl %eax,%eax
	jne .L33
	movl MM_Scanner+2164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Scanner+1932
	movl MM_Scanner+1956,%eax
	addl $4,%esp
	cmpl $40,%eax
	jbe .L34
	pushl $2769
	call _m3_fault
	.align 16
.L34:
	leal (%eax,%eax,4),%eax
	sall $4,%eax
	movl MM_Scanner+1932,%edx
	movl %edx,L_2+12(%eax)
.L33:
	cmpl $0,12(%ebp)
	je .L30
	call Scanner__GetToken
.L30:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Scanner__Push,.Lfe3-Scanner__Push
	.align 16
	.type	 Scanner__Pop,@function
Scanner__Pop:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	movl MM_Scanner+1956,%eax
	decl %eax
	movl %eax,MM_Scanner+1956
	cmpl $40,%eax
	jbe .L37
	pushl $2897
	call _m3_fault
	.align 16
.L37:
	leal (%eax,%eax,4),%eax
	sall $4,%eax
	movl %eax,%edx
	addl $L_2,%edx
	movl %edx,-4(%ebp)
	movl $MI_Scanner+44,%edi
	leal 24(%edx),%esi
	leal -12(%ebp),%esp
	movb L_2(%eax),%al
	movb %al,MM_Scanner+1944
	movl 4(%edx),%eax
	movl %eax,MI_Scanner+88
	cld
	movl $11,%ecx
	rep
	movsl
	movl -4(%ebp),%edx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	movl 8(%edx),%eax
	movl %eax,MM_Scanner+1928
	movl 12(%edx),%eax
	movl %eax,MM_Scanner+1932
	movw 16(%edx),%ax
	movw %ax,MM_Scanner+1936
	movl 20(%edx),%eax
	movl %eax,MM_Scanner+1940
	movl 68(%edx),%eax
	movl %eax,MM_Scanner+1948
	movl 72(%edx),%eax
	movl %eax,MM_Scanner+1952
	movb 76(%edx),%al
	movb %al,MI_Scanner+100
	ret
.Lfe4:
	.size	 Scanner__Pop,.Lfe4-Scanner__Pop
	.align 16
	.type	 Scanner__FileNumber,@function
Scanner__FileNumber:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
.L39:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_div
	movl %eax,%edx
	movl %edx,-4(%ebp)
	movl MM_Scanner+1916,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L40
	pushl $3204
	call _m3_fault
	.align 16
.L40:
	movl 4(%eax),%ecx
	cmpl %edx,%ecx
	jle .L41
	cmpl %ecx,%edx
	jb .L43
	pushl $3202
	call _m3_fault
	.align 16
.L43:
	movl (%eax),%eax
	movl (%eax,%edx,4),%edx
	testl %edx,%edx
	je .L41
	movl 8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L54
.L41:
	movl MM_Scanner+1912,%eax
	movl (%eax),%edx
	movl 4(%edx),%ecx
	leal -4(%ebp),%edx
	pushl %edx
	leal 8(%ebp),%esi
	pushl %esi
	pushl %eax
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	je .L46
.L54:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	jmp .L38
	.align 16
.L46:
	movl MM_Scanner+1916,%edx
	testl %edx,%edx
	jne .L47
	pushl $3348
	call _m3_fault
	.align 16
.L47:
	movl MM_Scanner+1908,%eax
	cmpl %eax,4(%edx)
	jg .L48
	call Scanner__ExpandFiles
.L48:
	movl MM_Scanner+1912,%edx
	movl (%edx),%eax
	movl 8(%eax),%ecx
	pushl $MM_Scanner+1908
	leal 8(%ebp),%esi
	pushl %esi
	pushl %edx
	call *%ecx
	movl MM_Scanner+1916,%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L49
	pushl $3380
	call _m3_fault
	.align 16
.L49:
	movl %eax,%ecx
	movl MM_Scanner+1908,%ebx
	cmpl %ebx,4(%ecx)
	ja .L50
	pushl $3378
	call _m3_fault
	.align 16
.L50:
	movl (%ecx),%edx
	movl 8(%ebp),%eax
	movl %eax,(%edx,%ebx,4)
	movl MM_Scanner+1920,%eax
	testl %eax,%eax
	jne .L51
	pushl $3396
	call _m3_fault
	.align 16
.L51:
	movl MM_Scanner+1908,%edx
	cmpl %edx,4(%eax)
	ja .L52
	pushl $3394
	call _m3_fault
	.align 16
.L52:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	movl MM_Scanner+1908,%edx
	leal 1(%edx),%esi
	movl %esi,MM_Scanner+1908
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L53:
.L38:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Scanner__FileNumber,.Lfe5-Scanner__FileNumber
	.align 16
	.type	 Scanner__ExpandFiles,@function
Scanner__ExpandFiles:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_Scanner+1916,%eax
	testl %eax,%eax
	jne .L56
	pushl $3508
	call _m3_fault
	.align 16
.L56:
	movl 4(%eax),%eax
	movl %eax,-28(%ebp)
	leal -12(%ebp),%edi
	leal -4(%ebp),%esi
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,%ebx
	addl %ecx,%ebx
	movl %ebx,-4(%ebp)
	pushl %edi
	movl MM_Scanner+2172,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-24(%ebp)
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %edi
	movl MM_Scanner+2172,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $16,%esp
	cmpl $0,-24(%ebp)
	jne .L57
	pushl $3572
	call _m3_fault
	.align 16
.L57:
	movl -28(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -24(%ebp),%ecx
	movl -28(%ebp),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L58
	pushl $3569
	call _m3_fault
	.align 16
.L58:
	movl -24(%ebp),%ecx
	movl MM_Scanner+1916,%eax
	movl (%ecx),%edx
	movl %edx,-20(%ebp)
	testl %eax,%eax
	jne .L59
	pushl $3572
	call _m3_fault
	.align 16
.L59:
	movl -28(%ebp),%ecx
	cmpl %ecx,4(%eax)
	je .L60
	pushl $3571
	call _m3_fault
	.align 16
.L60:
	movl -28(%ebp),%ecx
	leal 0(,%ecx,4),%esi
	pushl %esi
	movl (%eax),%eax
	pushl %eax
	pushl %edx
	call memmove
	addl $12,%esp
	testl %ebx,%ebx
	jne .L61
	pushl $3588
	call _m3_fault
	.align 16
.L61:
	movl -28(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -28(%ebp),%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L62
	pushl $3585
	call _m3_fault
	.align 16
.L62:
	movl (%ebx),%edx
	movl %edx,-20(%ebp)
	movl MM_Scanner+1920,%eax
	testl %eax,%eax
	jne .L63
	pushl $3588
	call _m3_fault
	.align 16
.L63:
	movl -28(%ebp),%ecx
	cmpl %ecx,4(%eax)
	je .L64
	pushl $3587
	call _m3_fault
	.align 16
.L64:
	pushl %esi
	movl (%eax),%eax
	pushl %eax
	pushl %edx
	call memmove
	movl -24(%ebp),%ecx
	movl %ecx,MM_Scanner+1916
	leal -40(%ebp),%esp
	movl %ebx,MM_Scanner+1920
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Scanner__ExpandFiles,.Lfe6-Scanner__ExpandFiles
	.align 16
	.type	 Scanner__Here,@function
Scanner__Here:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
.L66:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MM_Scanner+1916,%ebx
	testl %ebx,%ebx
	jne .L67
	pushl $3700
	call _m3_fault
	.align 16
.L67:
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_div
	addl $8,%esp
	cmpl %eax,4(%ebx)
	ja .L68
	pushl $3698
	call _m3_fault
	.align 16
.L68:
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_div
	movl %eax,%edx
	movl (%ebx),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,(%esi)
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_mod
	movl %eax,(%edi)
.L69:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Scanner__Here,.Lfe7-Scanner__Here
	.align 16
	.type	 Scanner__LocalHere,@function
Scanner__LocalHere:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
.L71:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_div
	movl %eax,%ebx
	movl MM_Scanner+1920,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L72
	pushl $3812
	call _m3_fault
	.align 16
.L72:
	cmpl %ebx,4(%eax)
	ja .L73
	pushl $3810
	call _m3_fault
	.align 16
.L73:
	movl (%eax),%eax
	cmpl $0,(%eax,%ebx,4)
	jne .L74
	movl MM_Scanner+1916,%eax
	testl %eax,%eax
	jne .L75
	pushl $3828
	call _m3_fault
	.align 16
.L75:
	cmpl %ebx,4(%eax)
	ja .L76
	pushl $3826
	call _m3_fault
	.align 16
.L76:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Host+108,%eax
	call *%eax
	movl %eax,%edx
	movl MM_Scanner+1920,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L77
	pushl $3828
	call _m3_fault
	.align 16
.L77:
	cmpl %ebx,4(%eax)
	ja .L78
	pushl $3826
	call _m3_fault
	.align 16
.L78:
	movl (%eax),%eax
	movl %edx,(%eax,%ebx,4)
.L74:
	movl MM_Scanner+1920,%eax
	testl %eax,%eax
	jne .L79
	pushl $3860
	call _m3_fault
	.align 16
.L79:
	cmpl %ebx,4(%eax)
	ja .L80
	pushl $3858
	call _m3_fault
	.align 16
.L80:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	movl %eax,(%esi)
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_mod
	movl %eax,(%edi)
.L81:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Scanner__LocalHere,.Lfe8-Scanner__LocalHere
	.align 16
	.type	 Scanner__SameFile,@function
Scanner__SameFile:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%esi
.L83:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	pushl %edx
	pushl $100000
	call m3_div
	pushl %esi
	movl %eax,%ebx
	pushl $100000
	call m3_div
	cmpl %eax,%ebx
	sete %al
	andl $255,%eax
.L84:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Scanner__SameFile,.Lfe9-Scanner__SameFile
	.align 16
	.type	 Scanner__Match,@function
Scanner__Match:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	xorl %ebx,%ebx
	movb 8(%ebp),%bl
	cmpl %ebx,%eax
	je .L89
	movl MI_Token+124,%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_Scanner+2184
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Scanner+2208
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	call Scanner__DoFail
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $28,%esp
	cmpl %ebx,%eax
	jne .L85
.L89:
	call Scanner__GetToken
.L85:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Scanner__Match,.Lfe10-Scanner__Match
	.align 16
	.type	 Scanner__MatchID,@function
Scanner__MatchID:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	cmpb $1,MI_Scanner+44
	je .L95
	pushl $1
	pushl $MM_Scanner+2224
	call Scanner__DoFail
	addl $8,%esp
	cmpb $1,MI_Scanner+44
	jne .L93
.L95:
	movl MI_Scanner+48,%ebx
	call Scanner__GetToken
	jmp .L92
	.align 16
.L93:
	movl MM_Scanner+1684,%ebx
.L92:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Scanner__MatchID,.Lfe11-Scanner__MatchID
	.align 16
	.type	 Scanner__Fail,@function
Scanner__Fail:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $0
	pushl %eax
	call Scanner__DoFail
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Scanner__Fail,.Lfe12-Scanner__Fail
.section	.rodata
	.align 4
	.type	 L_16.1,@object
	.size	 L_16.1,28
L_16.1:
	.long .L100
	.long .L101
	.long .L102
	.long .L102
	.long .L102
	.long .L101
	.long .L103
.text
	.align 16
	.type	 Scanner__DoFail,@function
Scanner__DoFail:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	cmpl $1,MM_Scanner+1952
	jle .L107
	pushl %eax
	pushl $MM_Scanner+2256
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	decl %eax
	addl $8,%esp
	testl %eax,%eax
	jl .L99
	cmpl $6,%eax
	jg .L99
	jmp *L_16.1(,%eax,4)
	.align 16
.L100:
	pushl %ebx
	movl MI_Scanner+48,%eax
	pushl %eax
	movl MI_Error+52,%eax
	jmp .L112
	.align 16
.L103:
	movl MI_Scanner+52,%eax
	pushl %eax
	movl MI_M3String+56,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_Error+60,%eax
	call *%eax
	addl $12,%esp
	jmp .L107
	.align 16
.L102:
	pushl %ebx
	pushl $MM_Scanner+2284
	jmp .L113
	.align 16
.L101:
	leal -4(%ebp),%eax
	pushl %eax
	pushl $MI_Scanner+56
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L105
	pushl %ebx
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Error+48,%eax
	jmp .L112
	.align 16
.L105:
	pushl %ebx
	pushl $MM_Scanner+2304
.L113:
	movl MI_Error+60,%eax
.L112:
	call *%eax
	addl $8,%esp
	jmp .L107
	.align 16
.L99:
	pushl %ebx
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L107
	.align 16
.L108:
	call Scanner__GetToken
.L107:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	cmpl %ebx,%eax
	je .L110
	pushl $MM_Scanner+1980
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L108
.L110:
	movl $0,MM_Scanner+1952
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl %ebx,%eax
	jne .L97
	movl $1,MM_Scanner+1952
.L97:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Scanner__DoFail,.Lfe13-Scanner__DoFail
	.align 16
	.type	 Scanner__NoteReserved,@function
Scanner__NoteReserved:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl %ebx
	movl MI_M3ID+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L115
	pushl $5200
	call _m3_fault
	.align 16
.L115:
	cmpl $250,%ebx
	jbe .L116
	pushl $5217
	call _m3_fault
	.align 16
.L116:
	cmpl $0,L_1(,%ebx,4)
	je .L118
	pushl $5216
	call _m3_fault
	.align 16
.L118:
	leal -8(%ebp),%esp
	movl %esi,L_1(,%ebx,4)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Scanner__NoteReserved,.Lfe14-Scanner__NoteReserved
	.align 16
	.type	 Scanner__GetCh,@function
Scanner__GetCh:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
.L120:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
.L121:
	movswl MM_Scanner+1936,%edx
	movl MM_Scanner+1940,%eax
	cmpl %eax,%edx
	jge .L122
	movl MM_Scanner+1932,%eax
	testl %eax,%eax
	jne .L123
	pushl $5364
	call _m3_fault
	.align 16
.L123:
	movb 4(%edx,%eax),%al
	movb %al,MM_Scanner+1944
	leal 1(%edx),%eax
	cmpl $4097,%eax
	jle .L124
	pushl $5377
	call _m3_fault
	.align 16
.L124:
	movw %ax,MM_Scanner+1936
	jmp .L131
	.align 16
.L122:
	testl %eax,%eax
	jne .L125
	movb $0,MM_Scanner+1944
.L131:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L119
	.align 16
.L125:
	movl $4096,-12(%ebp)
	movl MM_Scanner+1932,%eax
	testl %eax,%eax
	jne .L126
	pushl $5476
	call _m3_fault
	.align 16
.L126:
	addl $4,%eax
	movl MM_Scanner+1928,%edx
	movl %eax,-16(%ebp)
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl $1
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %eax,MM_Scanner+1940
	movw $0,MM_Scanner+1936
	movl MM_Scanner+1932,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L127
	pushl $5508
	call _m3_fault
	.align 16
.L127:
	addl $4,%eax
	cmpl $4101,%eax
	jbe .L128
	pushl $5505
	call _m3_fault
	.align 16
.L128:
	movb $64,(%eax,%edx)
	jmp .L121
	.align 16
.L130:
.L119:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Scanner__GetCh,.Lfe15-Scanner__GetCh
.section	.rodata
	.align 4
	.type	 L_18.2,@object
	.size	 L_18.2,504
L_18.2:
	.long .L139
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L138
	.long .L140
	.long .L141
	.long .L138
	.long .L138
	.long .L142
	.long .L143
	.long .L144
	.long .L145
	.long .L146
	.long .L147
	.long .L148
	.long .L149
	.long .L150
	.long .L151
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L152
	.long .L153
	.long .L154
	.long .L155
	.long .L156
	.long .L157
	.long .L138
	.long .L138
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L159
	.long .L138
	.long .L160
	.long .L161
	.long .L138
	.long .L138
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L158
	.long .L162
	.long .L163
	.long .L164
.text
	.align 16
	.type	 Scanner__GetToken,@function
Scanner__GetToken:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	incl MM_Scanner+1952
	jmp .L134
	.align 16
.L135:
	cmpl $10,%edx
	jne .L136
	incl MI_Scanner+88
	incl MI_Scanner+92
.L136:
	call Scanner__GetCh
.L134:
	xorl %edx,%edx
	movb MM_Scanner+1944,%dl
	cmpb $0,MM_Scanner+148(%edx)
	jne .L135
	movl MI_Scanner+88,%eax
	movl %eax,MI_Scanner+80
	cmpl $125,%edx
	jg .L138
	jmp *L_18.2(,%edx,4)
	.align 16
.L158:
	xorl %ebx,%ebx
	jmp .L165
	.align 16
.L166:
	xorl %eax,%eax
	movw %bx,%ax
	movb %dl,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L167
	pushl $5905
	call _m3_fault
	.align 16
.L167:
	movl %eax,%ebx
	call Scanner__GetCh
.L165:
	movb MM_Scanner+1944,%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpb $0,MM_Scanner+404(%eax)
	jne .L166
	movl $L_3,-8(%ebp)
	movl $4096,-4(%ebp)
	xorl %eax,%eax
	movw %bx,%ax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_M3ID+48,%eax
	call *%eax
	movl %eax,MI_Scanner+48
	movb $1,MI_Scanner+44
	movl $0,MI_Scanner+84
	pushl %eax
	movl MI_M3ID+56,%eax
	call *%eax
	addl $12,%esp
	cmpl $43,%eax
	jle .L169
	cmpl $103,%eax
	jg .L169
	jbe .L170
	pushl $6049
	call _m3_fault
	.align 16
.L170:
	movb %al,MI_Scanner+44
.L169:
	movl MI_Scanner+48,%eax
	cmpl $250,%eax
	jg .L132
	jbe .L172
	pushl $6113
	call _m3_fault
	.align 16
.L172:
	movl L_1(,%eax,4),%eax
	movl %eax,MI_Scanner+84
	jmp .L132
	.align 16
.L152:
	call Scanner__ScanNumber
	jmp .L132
	.align 16
.L143:
	call Scanner__ScanChar
	jmp .L132
	.align 16
.L140:
	call Scanner__ScanText
	jmp .L132
	.align 16
.L147:
	movb $8,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L149:
	movb $9,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L151:
	movb $11,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L142:
	movb $13,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L148:
	movb $15,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L154:
	movb $16,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L159:
	movb $18,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L162:
	movb $19,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L161:
	movb $20,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L141:
	movb $22,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L145:
	movb $29,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L160:
	movb $30,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L164:
	movb $31,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L163:
	movb $32,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L139:
	movb $0,MI_Scanner+44
	jmp .L132
	.align 16
.L146:
	call Scanner__GetCh
	cmpb $62,MM_Scanner+1944
	jne .L173
	movb $35,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L173:
	movb $10,MI_Scanner+44
	jmp .L132
	.align 16
.L156:
	call Scanner__GetCh
	cmpb $62,MM_Scanner+1944
	jne .L175
	movb $34,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L175:
	movb $21,MI_Scanner+44
	jmp .L132
	.align 16
.L153:
	call Scanner__GetCh
	cmpb $61,MM_Scanner+1944
	jne .L177
	movb $12,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L177:
	movb $28,MI_Scanner+44
	jmp .L132
	.align 16
.L150:
	call Scanner__GetCh
	cmpb $46,MM_Scanner+1944
	jne .L179
	movb $27,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L179:
	movb $14,MI_Scanner+44
	jmp .L132
	.align 16
.L144:
	call Scanner__GetCh
	cmpb $42,MM_Scanner+1944
	jne .L181
	call Scanner__ScanComment
	jmp .L134
	.align 16
.L181:
	movb $17,MI_Scanner+44
	jmp .L132
	.align 16
.L157:
	call Scanner__GetCh
	cmpb $61,MM_Scanner+1944
	jne .L184
	movb $26,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L184:
	movb $24,MI_Scanner+44
	jmp .L132
	.align 16
.L155:
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpl $61,%eax
	jne .L186
	movb $25,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L186:
	cmpl $58,%eax
	jne .L188
	movb $33,MI_Scanner+44
	call Scanner__GetCh
	jmp .L132
	.align 16
.L188:
	cmpl $42,%eax
	jne .L189
	call Scanner__ScanPragma
	jmp .L132
	.align 16
.L189:
	movb $23,MI_Scanner+44
	jmp .L132
	.align 16
.L138:
	pushl $MM_Scanner+2328
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	pushl %eax
	movl MI_Error+48,%eax
	call *%eax
	call Scanner__GetCh
	addl $8,%esp
	jmp .L134
	.align 16
.L132:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Scanner__GetToken,.Lfe16-Scanner__GetToken
	.align 16
	.type	 Scanner__ScanNumber,@function
Scanner__ScanNumber:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	jmp .L192
	.align 16
.L193:
	xorl %eax,%eax
	movw %bx,%ax
	movb %dl,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L194
	pushl $7569
	call _m3_fault
	.align 16
.L194:
	movl %eax,%ebx
	call Scanner__GetCh
.L192:
	movb MM_Scanner+1944,%dl
	xorl %eax,%eax
	movb %dl,%al
	movl $MM_Scanner+660,%edi
	cmpb $0,(%edi,%eax)
	jne .L193
	cmpl $95,%eax
	jne .L196
	xorl %eax,%eax
	movw %bx,%ax
	cmpl $4096,%eax
	jle .L197
	pushl $7665
	call _m3_fault
	.align 16
.L197:
	movl %eax,-16(%ebp)
	movl $L_3,-20(%ebp)
	leal -8(%ebp),%ebx
	pushl %ebx
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_TInt+76,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L198
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L198
	movl -12(%ebp),%eax
	cmpl $1,%eax
	jle .L198
	cmpl $16,%eax
	jle .L199
.L198:
	pushl $MM_Scanner+2360
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Error+48,%eax
	call *%eax
	movl $10,-12(%ebp)
	addl $8,%esp
.L199:
	xorl %ebx,%ebx
.L200:
	call Scanner__GetCh
	movb MM_Scanner+1944,%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpb $0,MM_Scanner+1172(%eax)
	je .L202
	xorl %eax,%eax
	movw %bx,%ax
	movb %dl,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L203
	pushl $7841
	call _m3_fault
	.align 16
.L203:
	movl %eax,%ebx
	jmp .L200
	.align 16
.L202:
	testw %bx,%bx
	je .L204
	xorl %eax,%eax
	movw %bx,%ax
	cmpl $4096,%eax
	jle .L205
	pushl $7873
	call _m3_fault
	.align 16
.L205:
	movl %eax,-16(%ebp)
	movl $L_3,-20(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_TWord+44,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L248
.L204:
	pushl $MM_Scanner+2412
	jmp .L249
	.align 16
.L196:
	cmpl $46,%eax
	jne .L208
	xorl %eax,%eax
	movw %bx,%ax
	movl $L_3,%esi
	movb $46,(%esi,%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L209
	pushl $8017
	call _m3_fault
	.align 16
.L209:
	movl %eax,%ebx
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpl $46,%eax
	jne .L210
	movswl MM_Scanner+1936,%eax
	decl %eax
	cmpl $-4,%eax
	jge .L211
	pushl $8113
	call _m3_fault
	.align 16
.L211:
	movw %ax,MM_Scanner+1936
	movl MM_Scanner+1932,%edx
	testl %edx,%edx
	jne .L212
	pushl $8116
	call _m3_fault
	.align 16
.L212:
	movswl MM_Scanner+1936,%eax
	movb $46,4(%eax,%edx)
	xorl %eax,%eax
	movw %bx,%ax
	decl %eax
	jns .L213
	pushl $8145
	call _m3_fault
	.align 16
.L213:
	cmpl $4096,%eax
	jle .L214
	pushl $8145
	call _m3_fault
	.align 16
.L214:
	movl %eax,-16(%ebp)
	movl %esi,-20(%ebp)
	jmp .L250
	.align 16
.L210:
	cmpb $0,(%edi,%eax)
	jne .L219
	pushl $MM_Scanner+2516
	movl MI_Error+44,%eax
	call *%eax
	xorl %eax,%eax
	movw %bx,%ax
	addl $4,%esp
	movb $48,(%esi,%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L217
	pushl $8337
	call _m3_fault
	.align 16
.L217:
	movl %eax,%ebx
	jmp .L218
	.align 16
.L219:
	xorl %edx,%edx
	movw %bx,%dx
	movb MM_Scanner+1944,%al
	movb %al,L_3(%edx)
	leal 1(%edx),%eax
	cmpl $4095,%eax
	jle .L220
	pushl $8369
	call _m3_fault
	.align 16
.L220:
	movl %eax,%ebx
	call Scanner__GetCh
.L218:
	xorl %edx,%edx
	movb MM_Scanner+1944,%dl
	movb MM_Scanner+660(%edx),%al
	testb %al,%al
	jne .L219
	movb %al,-24(%ebp)
	cmpl $101,%edx
	je .L222
	cmpl $69,%edx
	jne .L223
.L222:
	xorl %eax,%eax
	movw %bx,%ax
	movb $101,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L224
	pushl $8449
	call _m3_fault
	.align 16
.L224:
	movl %eax,%ebx
	movb $3,MI_Scanner+44
	jmp .L225
	.align 16
.L223:
	cmpl $100,%edx
	je .L226
	cmpl $68,%edx
	jne .L227
.L226:
	xorl %eax,%eax
	movw %bx,%ax
	movb $101,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L228
	pushl $8513
	call _m3_fault
	.align 16
.L228:
	movl %eax,%ebx
	movb $4,MI_Scanner+44
	movb $1,-24(%ebp)
	jmp .L225
	.align 16
.L227:
	cmpl $120,%edx
	je .L229
	cmpl $88,%edx
	jne .L230
.L229:
	xorl %eax,%eax
	movw %bx,%ax
	movb $101,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L231
	pushl $8577
	call _m3_fault
	.align 16
.L231:
	movl %eax,%ebx
	movb $5,MI_Scanner+44
	movb $2,-24(%ebp)
	jmp .L225
	.align 16
.L230:
	xorl %eax,%eax
	movw %bx,%ax
	cmpl $4096,%eax
	jle .L232
	pushl $8641
	call _m3_fault
	.align 16
.L232:
	movl %eax,-16(%ebp)
	movl $L_3,-20(%ebp)
	pushl $MI_Scanner+64
	pushl $0
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_TFloat+92,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L233
	pushl $MM_Scanner+2560
	movl MI_Error+44,%eax
	call *%eax
.L233:
	movb $3,MI_Scanner+44
	jmp .L191
	.align 16
.L225:
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpl $43,%eax
	jne .L234
	xorl %eax,%eax
	movw %bx,%ax
	movb $43,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L238
	pushl $8801
	call _m3_fault
	.align 16
.L234:
	cmpl $45,%eax
	jne .L237
	xorl %eax,%eax
	movw %bx,%ax
	movb $45,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L238
	pushl $8849
	call _m3_fault
	.align 16
.L238:
	movl %eax,%ebx
	call Scanner__GetCh
	jmp .L236
	.align 16
.L237:
	xorl %eax,%eax
	movw %bx,%ax
	movb $43,L_3(%eax)
.L236:
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpb $0,MM_Scanner+660(%eax)
	jne .L242
	pushl $MM_Scanner+2604
	movl MI_Error+44,%eax
	call *%eax
	xorl %eax,%eax
	movw %bx,%ax
	addl $4,%esp
	movb $48,L_3(%eax)
	incl %eax
	cmpl $4095,%eax
	jle .L240
	pushl $8993
	call _m3_fault
	.align 16
.L240:
	movl %eax,%ebx
	jmp .L241
	.align 16
.L242:
	xorl %edx,%edx
	movw %bx,%dx
	movb MM_Scanner+1944,%al
	movb %al,L_3(%edx)
	leal 1(%edx),%eax
	cmpl $4095,%eax
	jle .L243
	pushl $9025
	call _m3_fault
	.align 16
.L243:
	movl %eax,%ebx
	call Scanner__GetCh
.L241:
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpb $0,MM_Scanner+660(%eax)
	jne .L242
	xorl %eax,%eax
	movw %bx,%ax
	cmpl $4096,%eax
	jle .L245
	pushl $9057
	call _m3_fault
	.align 16
.L245:
	movl %eax,-16(%ebp)
	movl $L_3,-20(%ebp)
	pushl $MI_Scanner+64
	xorl %eax,%eax
	movb -24(%ebp),%al
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_TFloat+92,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L191
	pushl $MM_Scanner+2560
	movl MI_Error+44,%eax
	call *%eax
	jmp .L191
	.align 16
.L208:
	xorl %eax,%eax
	movw %bx,%ax
	cmpl $4096,%eax
	jle .L247
	pushl $9153
	call _m3_fault
	.align 16
.L247:
	movl %eax,-16(%ebp)
	movl $L_3,-20(%ebp)
.L250:
	leal -8(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_TInt+76,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L248
	pushl $MM_Scanner+2468
.L249:
	movl MI_Error+44,%eax
	call *%eax
	movl MI_TInt+44,%eax
	movl %eax,-8(%ebp)
	movl MI_TInt+48,%eax
	movl %eax,-4(%ebp)
.L248:
	movb $2,MI_Scanner+44
	movl -8(%ebp),%eax
	movl %eax,MI_Scanner+56
	movl -4(%ebp),%eax
	movl %eax,MI_Scanner+60
.L191:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Scanner__ScanNumber,.Lfe17-Scanner__ScanNumber
	.align 16
	.type	 Scanner__ScanChar,@function
Scanner__ScanChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movb $6,MI_Scanner+44
	movl MI_TInt+44,%eax
	movl %eax,MI_Scanner+56
	movl MI_TInt+48,%eax
	movl %eax,MI_Scanner+60
	call Scanner__GetCh
	movb MM_Scanner+1944,%al
	xorl %ebx,%ebx
	movb %al,%bl
	cmpl $39,%ebx
	jne .L252
	pushl $MM_Scanner+2648
	movl MI_Error+44,%eax
	call *%eax
	call Scanner__GetCh
	jmp .L251
	.align 16
.L252:
	cmpl $10,%ebx
	je .L253
	cmpl $13,%ebx
	je .L253
	cmpl $12,%ebx
	jne .L254
.L253:
	pushl $MM_Scanner+2700
	jmp .L270
	.align 16
.L254:
	cmpl $92,%ebx
	jne .L255
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpl $110,%eax
	jne .L256
	movl $10,%esi
	jmp .L271
	.align 16
.L256:
	cmpl $116,%eax
	jne .L258
	movl $9,%esi
	jmp .L271
	.align 16
.L258:
	cmpl $114,%eax
	jne .L259
	movl $13,%esi
	jmp .L271
	.align 16
.L259:
	cmpl $102,%eax
	jne .L260
	movl $12,%esi
	jmp .L271
	.align 16
.L260:
	cmpl $92,%eax
	je .L266
	cmpl $39,%eax
	jne .L262
	movl %eax,%esi
	jmp .L271
	.align 16
.L262:
	cmpl $34,%eax
	jne .L263
	movl %eax,%esi
	jmp .L271
	.align 16
.L263:
	cmpb $0,MM_Scanner+916(%eax)
	je .L264
	call Scanner__GetOctalChar
	movl %eax,%esi
	jmp .L265
	.align 16
.L264:
	pushl $MM_Scanner+2760
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L265
	.align 16
.L255:
	testb %al,%al
	jne .L266
	pushl $MM_Scanner+2820
	jmp .L270
	.align 16
.L266:
	movl %ebx,%esi
.L271:
	call Scanner__GetCh
.L265:
	cmpb $39,MM_Scanner+1944
	je .L267
	pushl $MM_Scanner+2872
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L268
	.align 16
.L267:
	call Scanner__GetCh
.L268:
	pushl $MI_Scanner+56
	pushl %esi
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L251
	pushl $MM_Scanner+2928
.L270:
	movl MI_Error+44,%eax
	call *%eax
.L251:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Scanner__ScanChar,.Lfe18-Scanner__ScanChar
	.align 16
	.type	 Scanner__ScanText__Stuff.0,@function
Scanner__ScanText__Stuff.0:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -4(%ebx),%esi
	cmpl $4095,%esi
	jg .L274
	jbe .L275
	pushl $10049
	call _m3_fault
	.align 16
.L275:
	movb 8(%ebp),%dl
	movb %dl,L_3(%esi)
	jmp .L278
	.align 16
.L274:
	cmpl $4096,%esi
	jne .L277
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,-8(%ebx)
	movl $L_3,-12(%ebp)
	movl %esi,-8(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	movl -8(%ebx),%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
.L277:
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	movl -8(%ebx),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
.L278:
	incl -4(%ebx)
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Scanner__ScanText__Stuff.0,.Lfe19-Scanner__ScanText__Stuff.0
	.align 16
	.type	 Scanner__ScanText,@function
Scanner__ScanText:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	xorl %eax,%eax
	pushl %ebx
	movl %eax,-8(%ebp)
	movl %eax,-4(%ebp)
	movb $7,MI_Scanner+44
	call Scanner__GetCh
.L279:
	movb MM_Scanner+1944,%al
	xorl %ebx,%ebx
	movb %al,%bl
	cmpl $34,%ebx
	jne .L280
	call Scanner__GetCh
	jmp .L281
	.align 16
.L280:
	cmpl $10,%ebx
	je .L282
	cmpl $13,%ebx
	je .L282
	cmpl $12,%ebx
	jne .L283
.L282:
	pushl $MM_Scanner+2968
	jmp .L299
	.align 16
.L283:
	cmpl $92,%ebx
	jne .L284
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpl $110,%eax
	jne .L285
	pushl $10
	jmp .L300
	.align 16
.L285:
	cmpl $116,%eax
	jne .L287
	pushl $9
	jmp .L300
	.align 16
.L287:
	cmpl $114,%eax
	jne .L288
	pushl $13
	jmp .L300
	.align 16
.L288:
	cmpl $102,%eax
	jne .L289
	pushl $12
	jmp .L300
	.align 16
.L289:
	cmpl $92,%eax
	je .L301
	cmpl $39,%eax
	jne .L291
	pushl %eax
	jmp .L300
	.align 16
.L291:
	cmpl $34,%eax
	jne .L292
	pushl %eax
	jmp .L300
	.align 16
.L292:
	cmpb $0,MM_Scanner+916(%eax)
	je .L293
	call Scanner__GetOctalChar
	cmpl $255,%eax
	jbe .L294
	pushl $10545
	call _m3_fault
	.align 16
.L294:
	pushl %eax
	movl %ebp,%ecx
	call Scanner__ScanText__Stuff.0
	addl $4,%esp
	jmp .L279
	.align 16
.L293:
	pushl $MM_Scanner+3020
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L279
	.align 16
.L284:
	testb %al,%al
	je .L296
.L301:
	pushl %ebx
.L300:
	movl %ebp,%ecx
	call Scanner__ScanText__Stuff.0
	call Scanner__GetCh
	addl $4,%esp
	jmp .L279
	.align 16
.L296:
	pushl $MM_Scanner+3072
.L299:
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L281:
	movl -8(%ebp),%eax
	testl %eax,%eax
	jne .L297
	movl $L_3,-16(%ebp)
	movl $4096,-12(%ebp)
	movl -4(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_M3String+48,%eax
	call *%eax
	jmp .L302
	.align 16
.L297:
	pushl %eax
	movl MI_M3Buf+72,%eax
	call *%eax
	pushl %eax
	movl MI_M3String+44,%eax
	call *%eax
.L302:
	movl %eax,MI_Scanner+52
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Scanner__ScanText,.Lfe20-Scanner__ScanText
	.align 16
	.type	 Scanner__GetOctalChar,@function
Scanner__GetOctalChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	movl $MM_Scanner+916,%esi
	pushl %ebx
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpb $0,(%esi,%eax)
	jne .L304
	pushl $10880
	call _m3_fault
	.align 16
.L304:
	leal -48(%eax),%ebx
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpb $0,(%esi,%eax)
	je .L306
	leal -48(%eax,%ebx,8),%ebx
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpb $0,(%esi,%eax)
	je .L306
	leal -48(%eax,%ebx,8),%ebx
	call Scanner__GetCh
	jmp .L308
	.align 16
.L306:
	call Scanner__BadOctal
.L308:
	movl %ebx,%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Scanner__GetOctalChar,.Lfe21-Scanner__GetOctalChar
	.align 16
	.type	 Scanner__BadOctal,@function
Scanner__BadOctal:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_Scanner+3116
	movl MI_Error+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Scanner__BadOctal,.Lfe22-Scanner__BadOctal
	.align 16
	.type	 Scanner__ScanComment,@function
Scanner__ScanComment:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_Scanner+80,%esi
	call Scanner__GetCh
	movl $1,%ebx
	jmp .L313
	.align 16
.L314:
	movl MM_Scanner+1932,%eax
	testl %eax,%eax
	jne .L315
	pushl $11300
	call _m3_fault
	.align 16
.L315:
	movswl MM_Scanner+1936,%edx
	movb 4(%edx,%eax),%al
	movb %al,MM_Scanner+1944
	leal 1(%edx),%eax
	cmpl $4097,%eax
	jle .L316
	pushl $11313
	call _m3_fault
	.align 16
.L316:
	movw %ax,MM_Scanner+1936
.L313:
	movb MM_Scanner+1944,%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpb $0,MM_Scanner+1428(%eax)
	je .L314
	cmpl $42,%eax
	jne .L318
	call Scanner__GetCh
	cmpb $41,MM_Scanner+1944
	jne .L311
	decl %ebx
	jmp .L324
	.align 16
.L318:
	cmpl $40,%eax
	jne .L321
	call Scanner__GetCh
	cmpb $42,MM_Scanner+1944
	jne .L311
	incl %ebx
	jmp .L324
	.align 16
.L321:
	testb %dl,%dl
	jne .L323
	movl MI_Scanner+88,%ebx
	movl %esi,MI_Scanner+88
	pushl $MM_Scanner+3172
	movl MI_Error+44,%eax
	call *%eax
	movl %ebx,MI_Scanner+88
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L311
	.align 16
.L323:
	cmpl $10,%eax
	jne .L324
	incl MI_Scanner+88
	incl MI_Scanner+92
.L324:
	call Scanner__GetCh
.L311:
	testl %ebx,%ebx
	jg .L313
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Scanner__ScanComment,.Lfe23-Scanner__ScanComment
	.align 16
	.type	 Scanner__ScanPragma,@function
Scanner__ScanPragma:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
.L327:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MI_Scanner+80,%esi
	jmp .L330
	.align 16
.L329:
	cmpl $10,%eax
	jne .L330
	incl MI_Scanner+88
	incl MI_Scanner+92
.L330:
	call Scanner__GetCh
	xorl %eax,%eax
	movb MM_Scanner+1944,%al
	cmpb $0,MM_Scanner+148(%eax)
	jne .L329
	xorl %ebx,%ebx
	jmp .L332
	.align 16
.L333:
	cmpl $4095,%ebx
	jbe .L334
	pushl $11889
	call _m3_fault
	.align 16
.L334:
	movb %dl,L_3(%ebx)
	incl %ebx
	call Scanner__GetCh
.L332:
	movb MM_Scanner+1944,%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpb $0,MM_Scanner+404(%eax)
	jne .L333
	movl $L_3,-20(%ebp)
	movl $4096,-16(%ebp)
	pushl %ebx
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_M3ID+48,%eax
	call *%eax
	movl %eax,MI_Scanner+48
	pushl %eax
	movl MI_M3ID+56,%eax
	call *%eax
	addl $12,%esp
	cmpl $103,%eax
	jbe .L336
	pushl $11953
	call _m3_fault
	.align 16
.L336:
	movb %al,MI_Scanner+44
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $35,%eax
	jle .L337
	cmpl $43,%eax
	jle .L379
.L337:
	movl MI_Scanner+48,%eax
	cmpl %eax,MM_Scanner+1688
	jne .L338
	call Scanner__GetToken
	cmpb $2,MI_Scanner+44
	je .L339
	pushl $MM_Scanner+3212
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L340
	.align 16
.L341:
	call Scanner__GetToken
.L340:
	movb MI_Scanner+44,%al
	cmpb $35,%al
	je .L383
	testb %al,%al
	jne .L341
	jmp .L379
	.align 16
.L339:
	leal -4(%ebp),%eax
	pushl %eax
	pushl $MI_Scanner+56
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L345
	pushl $MM_Scanner+3280
	movl MI_Error+44,%eax
	call *%eax
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_mod
	movl %eax,-4(%ebp)
	addl $12,%esp
.L345:
	movl MI_Scanner+88,%eax
	pushl %eax
	pushl $100000
	call m3_div
	movl %eax,%ebx
	call Scanner__GetToken
	addl $8,%esp
	cmpb $7,MI_Scanner+44
	jne .L346
	movl MI_Scanner+52,%eax
	pushl %eax
	movl MI_M3String+56,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	call Scanner__FileNumber
	movl %eax,%ebx
	call Scanner__GetToken
	addl $8,%esp
.L346:
	movl %ebx,%eax
	sall $5,%eax
	subl %ebx,%eax
	leal (%ebx,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	leal (%eax,%eax,4),%eax
	sall $5,%eax
	addl -4(%ebp),%eax
	decl %eax
	movl %eax,MI_Scanner+88
	cmpb $35,MI_Scanner+44
	je .L383
	pushl $MM_Scanner+3324
.L384:
	movl MI_Error+44,%eax
	call *%eax
	jmp .L379
	.align 16
.L338:
	cmpl %eax,MM_Scanner+1692
	jne .L349
	movl MI_Scanner+80,%eax
	pushl %eax
	movl MI_Error+72,%eax
	call *%eax
	call Scanner__GetToken
	addl $4,%esp
	cmpb $35,MI_Scanner+44
	je .L383
	pushl $MM_Scanner+3364
	jmp .L384
	.align 16
.L349:
	cmpl %eax,MM_Scanner+1696
	jne .L352
	jmp .L382
	.align 16
.L354:
	movl MM_Scanner+3404,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Scanner+48,%eax
	movl %eax,(%edx)
	movl MM_Scanner+1948,%eax
	movl %eax,4(%edx)
	movl %edx,MM_Scanner+1948
	call Scanner__GetToken
	addl $4,%esp
	cmpb $15,MI_Scanner+44
	jne .L356
.L382:
	call Scanner__GetToken
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $1,%eax
	je .L354
	cmpl $35,%eax
	jle .L357
	cmpl $43,%eax
	jle .L354
.L357:
	cmpl $43,%eax
	jle .L356
	cmpl $103,%eax
	jle .L354
.L356:
	cmpb $35,MI_Scanner+44
	je .L383
	pushl $MM_Scanner+3416
	jmp .L384
	.align 16
.L352:
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	movl MI_Target+756,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L361
	movb $42,MI_Scanner+44
	jmp .L379
	.align 16
.L361:
	movl MM_Scanner+1948,%edx
	jmp .L362
	.align 16
.L363:
	movl 4(%edx),%edx
.L362:
	testl %edx,%edx
	je .L381
	movl MI_Scanner+48,%eax
	cmpl %eax,(%edx)
	jne .L363
	jmp .L368
	.align 16
.L381:
	pushl $MM_Scanner+3460
	movl MI_Scanner+48,%eax
	pushl %eax
	pushl $2
	movl MI_Error+68,%eax
	call *%eax
	addl $12,%esp
.L368:
	movl $1,%ebx
.L370:
	movb MM_Scanner+1944,%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpl $42,%eax
	jne .L371
	call Scanner__GetCh
	cmpb $62,MM_Scanner+1944
	jne .L369
	decl %ebx
	jmp .L377
	.align 16
.L371:
	cmpl $60,%eax
	jne .L374
	call Scanner__GetCh
	cmpb $42,MM_Scanner+1944
	jne .L369
	incl %ebx
	jmp .L377
	.align 16
.L374:
	testb %dl,%dl
	jne .L376
	movl MI_Scanner+88,%ebx
	movl %esi,MI_Scanner+88
	pushl $MM_Scanner+3504
	movl MI_Error+44,%eax
	call *%eax
	movl %ebx,MI_Scanner+88
	xorl %ebx,%ebx
	addl $4,%esp
	jmp .L369
	.align 16
.L376:
	cmpl $10,%eax
	jne .L377
	incl MI_Scanner+88
	incl MI_Scanner+92
.L377:
	call Scanner__GetCh
.L369:
	testl %ebx,%ebx
	jg .L370
.L383:
	call Scanner__GetToken
.L379:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Scanner__ScanPragma,.Lfe24-Scanner__ScanPragma
	.align 16
	.type	 _INITM_Scanner,@function
_INITM_Scanner:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl $0,MM_Scanner+1912
	movl $0,MM_Scanner+1916
	movl $0,MM_Scanner+1920
	movl MM_Scanner+3540,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%eax
	pushl $0
	pushl %edx
	call *%eax
	movl %eax,MM_Scanner+1912
	leal -12(%ebp),%esi
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $200,-4(%ebp)
	pushl %esi
	movl MM_Scanner+2172,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_Scanner+1916
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $200,-4(%ebp)
	pushl %esi
	movl MM_Scanner+2172,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	leal -20(%ebp),%esp
	movl %eax,MM_Scanner+1920
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 _INITM_Scanner,.Lfe25-_INITM_Scanner
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Scanner
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe26:
	.size	 _m3_fault,.Lfe26-_m3_fault
.globl MM_Scanner
.data
	.align 4
	.type	 MM_Scanner,@object
	.size	 MM_Scanner,4352
MM_Scanner:
	.long MM_Scanner+4117
	.long MM_Scanner+44
	.long MM_Scanner+2164
	.zero	8
	.long MM_Scanner+3780
	.zero	4
	.long MM_Scanner+4084
	.long MM_Scanner+4084
	.zero	4
	.long _INITM_Scanner
	.zero	8
	.long -492019366
.byte 206
.byte 155
.byte 154
.byte 250
.byte 148
.byte 250
.byte 54
.byte 24
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_Scanner+4333
	.zero	36
	.long MM_Scanner+4336
	.long MM_Scanner+1700
	.zero	1560
	.long -1750598695
.byte 174
.byte 121
.byte 88
.byte 140
.byte 119
.byte 130
.byte 255
.byte 27
	.long 1
	.zero	4
	.long 4102
	.long 1
	.zero	20
	.long MM_Scanner+4296
	.zero	4
	.long MM_Scanner+4302
	.zero	28
	.long MM_Scanner+4313
	.long MM_Scanner+1804
	.zero	8
	.long -244065135
.byte 124
.byte 141
.byte 14
.byte 238
.byte 237
.byte 81
.byte 125
.byte 31
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_Scanner+4260
	.long MM_Scanner+4265
	.long MM_Scanner+4270
	.zero	28
	.long MM_Scanner+4278
	.zero	20
	.long L_1
	.zero	24
	.long 2
	.zero	4
	.long L_2
	.long L_3
	.long Scanner__FileNumber
	.long Scanner__ExpandFiles
	.long Scanner__DoFail
	.long 65537
	.long -80670736
	.long -684977217
	.long 247
	.long Scanner__GetCh
	.long Scanner__ScanNumber
	.long Scanner__ScanChar
	.long Scanner__ScanText
	.long Scanner__GetOctalChar
	.long Scanner__BadOctal
	.long Scanner__ScanComment
	.long Scanner__ScanPragma
	.long Scanner__GetToken
	.long Scanner__Match
	.long Scanner__MatchID
	.long Scanner__Fail
	.long Scanner__NoteReserved
	.long Scanner__Here
	.long Scanner__LocalHere
	.long Scanner__SameFile
	.long Scanner__Push
	.long Scanner__Pop
	.long Scanner__Initialize
	.long Scanner__Reset
	.long 2
	.long MM_Scanner+2088
	.long 13
	.ascii	"<missing id>"
	.zero	4
	.long 2
	.long MM_Scanner+2116
	.long 5
	.ascii	"LINE"
	.zero	4
	.long 2
	.long MM_Scanner+2136
	.long 7
	.ascii	"NOWARN"
	.zero	2
	.long 2
	.long MM_Scanner+2156
	.long 7
	.ascii	"PRAGMA"
	.zero	2
	.long MM_Scanner+2172
	.long -1750598695
	.long MM_Scanner+3404
	.long -244065135
	.long 2
	.long MM_Scanner+2192
	.long 10
	.ascii	"missing '"
	.zero	3
	.long 2
	.long MM_Scanner+2216
	.long 2
	.ascii	"'"
	.zero	3
	.long 2
	.long MM_Scanner+2232
	.long 19
	.ascii	"missing identifier"
	.zero	2
	.long 2
	.long MM_Scanner+2264
	.long 15
	.ascii	"syntax error: "
	.zero	2
	.long 2
	.long MM_Scanner+2292
	.long 8
	.ascii	"<float>"
	.zero	1
	.long 2
	.long MM_Scanner+2312
	.long 10
	.ascii	"<integer>"
	.zero	3
	.long 2
	.long MM_Scanner+2336
	.long 18
	.ascii	"Illegal character"
	.zero	3
	.long 2
	.long MM_Scanner+2368
	.long 40
	.ascii	"illegal base for based literal, 10 used"
	.zero	1
	.long 2
	.long MM_Scanner+2420
	.long 41
	.ascii	"illegal based integer literal, zero used"
	.zero	4
	.long 2
	.long MM_Scanner+2476
	.long 35
	.ascii	"illegal integer literal, zero used"
	.zero	2
	.long 2
	.long MM_Scanner+2524
	.long 32
	.ascii	"missing digits in real fraction"
	.zero	1
	.long 2
	.long MM_Scanner+2568
	.long 31
	.ascii	"illegal floating-point literal"
	.zero	2
	.long 2
	.long MM_Scanner+2612
	.long 32
	.ascii	"missing digits in real exponent"
	.zero	1
	.long 2
	.long MM_Scanner+2656
	.long 39
	.ascii	"missing character in character literal"
	.zero	2
	.long 2
	.long MM_Scanner+2708
	.long 45
	.ascii	"end-of-line encountered in character literal"
	.zero	4
	.long 2
	.long MM_Scanner+2768
	.long 45
	.ascii	"unknown escape sequence in character literal"
	.zero	4
	.long 2
	.long MM_Scanner+2828
	.long 37
	.ascii	"EOF encountered in character literal"
	.zero	4
	.long 2
	.long MM_Scanner+2880
	.long 43
	.ascii	"missing closing quote on character literal"
	.zero	2
	.long 2
	.long MM_Scanner+2936
	.long 26
	.ascii	"illegal character literal"
	.zero	3
	.long 2
	.long MM_Scanner+2976
	.long 40
	.ascii	"end-of-line encountered in text literal"
	.zero	1
	.long 2
	.long MM_Scanner+3028
	.long 40
	.ascii	"unknown escape sequence in text literal"
	.zero	1
	.long 2
	.long MM_Scanner+3080
	.long 32
	.ascii	"EOF encountered in text literal"
	.zero	1
	.long 2
	.long MM_Scanner+3124
	.long 44
	.ascii	"octal character constant must have 3 digits"
	.zero	1
	.long 2
	.long MM_Scanner+3180
	.long 27
	.ascii	"EOF encountered in comment"
	.zero	2
	.long 2
	.long MM_Scanner+3220
	.long 53
	.ascii	"missing line number on LINE pragma; skipping to '*>'"
	.zero	4
	.long 2
	.long MM_Scanner+3288
	.long 29
	.ascii	"illegal line number, ignored"
	.zero	4
	.long 2
	.long MM_Scanner+3332
	.long 28
	.ascii	"missing '*>' on LINE pragma"
	.zero	1
	.long 2
	.long MM_Scanner+3372
	.long 30
	.ascii	"missing '*>' on NOWARN pragma"
	.zero	3
	.long MM_Scanner+3540
	.long -492019366
	.long 2
	.long MM_Scanner+3424
	.long 30
	.ascii	"missing '*>' on PRAGMA pragma"
	.zero	3
	.long 2
	.long MM_Scanner+3468
	.long 30
	.ascii	"unrecognized pragma (ignored)"
	.zero	3
	.long 2
	.long MM_Scanner+3512
	.long 26
	.ascii	"EOF encountered in pragma"
	.zero	7
	.long -1836174216
	.ascii	"_INITM_Scanner"
	.zero	1
	.ascii	"ScanPragma"
	.zero	1
	.ascii	"ScanComment"
	.zero	1
	.ascii	"BadOctal"
	.zero	1
	.ascii	"GetOctalChar"
	.zero	1
	.ascii	"ScanText"
	.zero	1
	.ascii	"ScanText.Stuff"
	.zero	1
	.ascii	"ScanChar"
	.zero	1
	.ascii	"ScanNumber"
	.zero	1
	.ascii	"GetToken"
	.zero	1
	.ascii	"GetCh"
	.zero	1
	.ascii	"NoteReserved"
	.zero	1
	.ascii	"DoFail"
	.zero	1
	.ascii	"Fail"
	.zero	1
	.ascii	"MatchID"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"SameFile"
	.zero	1
	.ascii	"LocalHere"
	.zero	1
	.ascii	"Here"
	.zero	1
	.ascii	"ExpandFiles"
	.zero	1
	.ascii	"FileNumber"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Initialize"
	.zero	2
	.long _INITM_Scanner
	.long MM_Scanner+3548
	.zero	4
	.long Scanner__ScanPragma
	.long MM_Scanner+3563
	.zero	4
	.long Scanner__ScanComment
	.long MM_Scanner+3574
	.zero	4
	.long Scanner__BadOctal
	.long MM_Scanner+3586
	.zero	4
	.long Scanner__GetOctalChar
	.long MM_Scanner+3595
	.zero	4
	.long Scanner__ScanText
	.long MM_Scanner+3608
	.zero	4
	.long Scanner__ScanText__Stuff.0
	.long MM_Scanner+3617
	.zero	4
	.long Scanner__ScanChar
	.long MM_Scanner+3632
	.zero	4
	.long Scanner__ScanNumber
	.long MM_Scanner+3641
	.zero	4
	.long Scanner__GetToken
	.long MM_Scanner+3652
	.long MI_Scanner+104
	.long Scanner__GetCh
	.long MM_Scanner+3661
	.zero	4
	.long Scanner__NoteReserved
	.long MM_Scanner+3667
	.long MI_Scanner+120
	.long Scanner__DoFail
	.long MM_Scanner+3680
	.zero	4
	.long Scanner__Fail
	.long MM_Scanner+3687
	.long MI_Scanner+116
	.long Scanner__MatchID
	.long MM_Scanner+3692
	.long MI_Scanner+112
	.long Scanner__Match
	.long MM_Scanner+3700
	.long MI_Scanner+108
	.long Scanner__SameFile
	.long MM_Scanner+3706
	.long MI_Scanner+132
	.long Scanner__LocalHere
	.long MM_Scanner+3715
	.long MI_Scanner+128
	.long Scanner__Here
	.long MM_Scanner+3725
	.long MI_Scanner+124
	.long Scanner__ExpandFiles
	.long MM_Scanner+3730
	.zero	4
	.long Scanner__FileNumber
	.long MM_Scanner+3742
	.zero	4
	.long Scanner__Pop
	.long MM_Scanner+3753
	.long MI_Scanner+140
	.long Scanner__Push
	.long MM_Scanner+3757
	.long MI_Scanner+136
	.long Scanner__Reset
	.long MM_Scanner+3762
	.long MI_Scanner+148
	.long Scanner__Initialize
	.long MM_Scanner+3768
	.long MI_Scanner+144
	.zero	4
.byte 43
.byte 120
.byte 7
.byte 4
.byte 4
.byte 4
.byte 2
.byte 1
.byte 4
.byte 26
.byte 251
.byte 3
.byte 4
.byte 4
.byte 42
.byte 24
.byte 2
.byte 1
.byte 41
.byte 4
.byte 4
.byte 42
.byte 16
.byte 4
.byte 42
.byte 28
.byte 4
.byte 42
.byte 12
.byte 26
.byte 41
.byte 3
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Scanner.m3"
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
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
	.ascii	"Scanner.FileNames"
	.zero	1
.byte 1
.byte 16
.byte 27
.byte 6
.byte 16
.byte 0
.byte 3
.byte 1
.byte 66
.byte 6
.byte 16
.byte 12
.byte 8
.byte 19
.byte 0
.byte 65
.byte 255
	.ascii	"Scanner.InputBuffer"
	.zero	1
.byte 14
.byte 5
.byte 0
	.ascii	"Scanner.IDList"
	.zero	2
	.local	L_1
	.comm	L_1,1004,4
	.local	L_2
	.comm	L_2,3280,4
	.local	L_3
	.comm	L_3,4096,1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
