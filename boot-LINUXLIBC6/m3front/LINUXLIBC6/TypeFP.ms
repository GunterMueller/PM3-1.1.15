	.file	"TypeFP.mc"
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
	.type	 TypeFP__Initialize,@function
TypeFP__Initialize:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	leal -12(%ebp),%esi
	pushl %ebx
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %esi
	movl MM_TypeFP+260,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_TypeFP+160
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,MM_TypeFP+176
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $256,-4(%ebp)
	pushl %esi
	movl MM_TypeFP+268,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_TypeFP+48
	call TypeFP__ExpandHash
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TypeFP__Initialize,.Lfe1-TypeFP__Initialize
	.align 16
	.type	 TypeFP__Reset,@function
TypeFP__Reset:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	pushl %ebx
	movl MM_TypeFP+44,%ebx
	decl %ebx
	jmp .L3
	.align 16
.L4:
	movl MM_TypeFP+48,%ecx
	testl %ecx,%ecx
	jne .L5
	pushl $1012
	call _m3_fault
	.align 16
.L5:
	cmpl %edx,4(%ecx)
	ja .L6
	pushl $1010
	call _m3_fault
	.align 16
.L6:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	movl $-1,44(%eax)
	movl $0,40(%eax)
	cmpl %edx,4(%ecx)
	ja .L8
	pushl $1058
	call _m3_fault
	.align 16
.L8:
	movl (%ecx),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L3:
	cmpl %ebx,%edx
	jle .L4
	movl MM_TypeFP+52,%eax
	testl %eax,%eax
	jne .L10
	pushl $1108
	call _m3_fault
	.align 16
.L10:
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L11
	.align 16
.L12:
	movl MM_TypeFP+52,%eax
	testl %eax,%eax
	jne .L13
	pushl $1124
	call _m3_fault
	.align 16
.L13:
	cmpl %edx,4(%eax)
	ja .L14
	pushl $1122
	call _m3_fault
	.align 16
.L14:
	movl (%eax),%eax
	movl $-1,(%eax,%edx,4)
	incl %edx
.L11:
	cmpl %ecx,%edx
	jle .L12
	movl $0,MM_TypeFP+44
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TypeFP__Reset,.Lfe2-TypeFP__Reset
	.align 16
	.type	 TypeFP__FromType,@function
TypeFP__FromType:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movb MM_TypeFP+180,%cl
	movb %cl,-12(%ebp)
	testb %cl,%cl
	je .L17
	pushl $1280
	call _m3_fault
	.align 16
.L17:
	movb $1,MM_TypeFP+180
	testl %esi,%esi
	jne .L18
	movl 12(%ebp),%eax
	movl MI_M3FP+44,%edx
	movl %edx,(%eax)
	movl MI_M3FP+48,%edx
	jmp .L21
	.align 16
.L18:
	pushl %esi
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	call TypeFP__GetRep
	movl %eax,%ebx
	addl $8,%esp
	cmpl $-1,36(%ebx)
	jne .L19
	movl $1,MM_TypeFP+168
	pushl %ebx
	call TypeFP__Visit_SCC
.L19:
	cmpl %esi,%ebx
	je .L20
	movl 8(%ebx),%eax
	movl %eax,8(%esi)
	movl 12(%ebx),%eax
	movl %eax,12(%esi)
	movl 36(%ebx),%eax
	movl %eax,36(%esi)
.L20:
	movb -12(%ebp),%cl
	movb %cl,MM_TypeFP+180
	movl 12(%ebp),%eax
	movl 8(%ebx),%edx
	movl %edx,(%eax)
	movl 12(%ebx),%edx
.L21:
	movl %edx,4(%eax)
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TypeFP__FromType,.Lfe3-TypeFP__FromType
	.align 16
	.type	 TypeFP__Visit_SCC,@function
TypeFP__Visit_SCC:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-16(%ebp)
	movl MM_TypeFP+164,%esi
	leal 1(%esi),%edx
	movl %edx,MM_TypeFP+164
	movl MM_TypeFP+160,%eax
	testl %eax,%eax
	jne .L23
	pushl $1652
	call _m3_fault
	.align 16
.L23:
	cmpl %edx,4(%eax)
	jge .L24
	call TypeFP__ExpandStack
.L24:
	movl MM_TypeFP+160,%eax
	testl %eax,%eax
	jne .L25
	pushl $1668
	call _m3_fault
	.align 16
.L25:
	movl %eax,%edx
	cmpl %esi,4(%edx)
	ja .L26
	pushl $1666
	call _m3_fault
	.align 16
.L26:
	leal (%esi,%esi,2),%eax
	sall $4,%eax
	movl (%edx),%ecx
	addl %eax,%ecx
	movl %ecx,-4(%ebp)
	movl %esi,%edi
	negl %edi
	movl %ebx,(%ecx)
	movl %edi,40(%ebx)
	movl MM_TypeFP+168,%eax
	incl %eax
	movl %eax,MM_TypeFP+168
	movl -4(%ebp),%edx
	movl %edx,%ecx
	movl %eax,44(%edx)
	movl MM_TypeFP+168,%edi
	movl %edi,-24(%ebp)
	movl -16(%ebp),%edi
	movl %edi,4(%ecx)
	movl MM_TypeFP+176,%eax
	movl %eax,8(%ecx)
	movl (%ebx),%eax
	movl 40(%eax),%ecx
	leal 4(%edx),%eax
	pushl %eax
	pushl %ebx
	call *%ecx
	movl -4(%ebp),%eax
	addl $8,%esp
	cmpl $0,4(%eax)
	jne .L27
	movl 8(%eax),%eax
	pushl %eax
	movl MI_M3Buf+72,%eax
	call *%eax
	movl %eax,%ecx
	movl -4(%ebp),%edx
	addl $4,%esp
	movl %ecx,4(%edx)
.L27:
	movl -4(%ebp),%edx
	movl -16(%ebp),%edi
	movl %edi,8(%edx)
	movl -16(%ebp),%ebx
	movl 12(%edx),%edx
	decl %edx
	movl %edx,-20(%ebp)
	jmp .L28
	.align 16
.L29:
	movl -4(%ebp),%eax
	cmpl $6,12(%eax)
	jg .L30
	cmpl $5,%ebx
	jle .L31
	pushl $1969
	call _m3_fault
	.align 16
.L31:
	movl 16(%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,-16(%ebp)
	jmp .L48
	.align 16
.L30:
	movl 40(%eax),%eax
	testl %eax,%eax
	jne .L33
	pushl $1988
	call _m3_fault
	.align 16
.L33:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L34
	pushl $1986
	call _m3_fault
	.align 16
.L34:
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,-16(%ebp)
.L48:
	addl $4,%esp
	movl -16(%ebp),%edi
	pushl %edi
	call TypeFP__GetRep
	movl %eax,%ecx
	addl $4,%esp
	movl 40(%ecx),%edx
	testl %edx,%edx
	jne .L35
	pushl %ecx
	call TypeFP__Visit_SCC
	movl -24(%ebp),%edx
	movl %eax,-24(%ebp)
	addl $4,%esp
	cmpl %edx,%eax
	jle .L37
	movl %edx,-24(%ebp)
	jmp .L37
	.align 16
.L35:
	testl %edx,%edx
	jge .L37
	movl MM_TypeFP+160,%eax
	testl %eax,%eax
	jne .L39
	pushl $2132
	call _m3_fault
	.align 16
.L39:
	movl %eax,%ecx
	movl %edx,%eax
	negl %eax
	cmpl %eax,4(%ecx)
	ja .L40
	pushl $2130
	call _m3_fault
	.align 16
.L40:
	leal (%eax,%eax,2),%eax
	sall $4,%eax
	addl (%ecx),%eax
	movl 44(%eax),%eax
	cmpl %eax,-24(%ebp)
	jle .L37
	movl %eax,-24(%ebp)
.L37:
	incl %ebx
.L28:
	cmpl %ebx,-20(%ebp)
	jge .L29
	movl -4(%ebp),%eax
	movl -24(%ebp),%edi
	cmpl %edi,44(%eax)
	jne .L43
	movl MM_TypeFP+160,%eax
	testl %eax,%eax
	jne .L44
	pushl $2308
	call _m3_fault
	.align 16
.L44:
	movl %eax,%ecx
	testl %esi,%esi
	jge .L45
	pushl $2305
	call _m3_fault
	.align 16
.L45:
	movl MM_TypeFP+164,%eax
	subl %esi,%eax
	jns .L46
	pushl $2305
	call _m3_fault
	.align 16
.L46:
	movl %eax,-8(%ebp)
	addl %esi,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L47
	pushl $2305
	call _m3_fault
	.align 16
.L47:
	leal (%esi,%esi,2),%eax
	sall $4,%eax
	addl (%ecx),%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	call TypeFP__Finish_SCC
	movl %esi,MM_TypeFP+164
.L43:
	leal -36(%ebp),%esp
	movl -24(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TypeFP__Visit_SCC,.Lfe4-TypeFP__Visit_SCC
	.align 16
	.type	 TypeFP__Finish_SCC,@function
TypeFP__Finish_SCC:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movl 8(%ebp),%eax
	movl %esi,%ebx
	movl 4(%eax),%eax
	testl %eax,%eax
	jle .L49
	movl %esi,%ecx
	leal -1(%eax),%esi
	jmp .L51
	.align 16
.L52:
	movl 8(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L53
	pushl $2738
	call _m3_fault
	.align 16
.L53:
	movl (%eax),%eax
	leal (%ecx,%ecx,2),%edx
	sall $4,%edx
	movl (%eax,%edx),%eax
	cmpl $-1,36(%eax)
	jne .L54
	incl %ebx
.L54:
	incl %ecx
.L51:
	cmpl %esi,%ecx
	jle .L52
	testl %ebx,%ebx
	jle .L56
	cmpb $0,MI_Host+72
	je .L57
	call TypeFP__DumpHeader
.L57:
	movl 8(%ebp),%eax
	cmpl $1,4(%eax)
	jne .L58
	movl (%eax),%eax
	cmpl $0,12(%eax)
	jne .L58
	movl (%eax),%esi
	leal 8(%esi),%ebx
	pushl %ebx
	movl 4(%eax),%eax
	pushl %eax
	call TypeFP__FromText
	pushl %ebx
	movl MI_M3FP+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,36(%esi)
	movl 8(%ebp),%eax
	addl $12,%esp
	cmpl $0,4(%eax)
	jne .L62
	pushl $2914
	call _m3_fault
	.align 16
.L62:
	movl (%eax),%eax
	movl $-1,44(%eax)
	jmp .L63
	.align 16
.L58:
	movl 8(%ebp),%eax
	xorl %ecx,%ecx
	movl 4(%eax),%ebx
	decl %ebx
	jmp .L64
	.align 16
.L65:
	movl 8(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L66
	pushl $2962
	call _m3_fault
	.align 16
.L66:
	movl (%eax),%eax
	leal (%ecx,%ecx,2),%edx
	sall $4,%edx
	movl %ecx,%edi
	incl %ecx
	movl (%eax,%edx),%eax
	negl %edi
	movl %edi,40(%eax)
.L64:
	cmpl %ebx,%ecx
	jle .L65
	xorl %esi,%esi
	movl 8(%ebp),%eax
	movl $1,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-36(%ebp)
	jmp .L68
	.align 16
.L69:
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call TypeFP__CompareInfo
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jge .L70
	movl %ebx,%esi
.L70:
	incl %ebx
.L68:
	cmpl %ebx,-36(%ebp)
	jge .L69
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movl 4(%eax),%ebx
	decl %ebx
	jmp .L72
	.align 16
.L73:
	movl 8(%ebp),%ecx
	cmpl %edx,4(%ecx)
	ja .L74
	pushl $3106
	call _m3_fault
	.align 16
.L74:
	leal (%edx,%edx,2),%eax
	sall $4,%eax
	addl (%ecx),%eax
	incl %edx
	movl $0,44(%eax)
.L72:
	cmpl %ebx,%edx
	jle .L73
	movl $1,-20(%ebp)
	movl MM_TypeFP+176,%eax
	movl %eax,-16(%ebp)
	movl MI_M3FP+44,%eax
	movl %eax,-12(%ebp)
	movl MI_M3FP+48,%eax
	movl %eax,-8(%ebp)
	movb $0,-4(%ebp)
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	call TypeFP__Visit
	addl $12,%esp
	cmpb $0,-4(%ebp)
	je .L76
	leal -28(%ebp),%ebx
	pushl %ebx
	movl -16(%ebp),%eax
	pushl %eax
	call TypeFP__FromBuf
	leal -12(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %ebx
	call TypeFP__FromPair
	addl $20,%esp
	jmp .L77
	.align 16
.L76:
	leal -12(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	pushl %eax
	call TypeFP__FromBuf
	addl $8,%esp
.L77:
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-36(%ebp)
	jmp .L78
	.align 16
.L79:
	movl 8(%ebp),%edx
	cmpl %ebx,4(%edx)
	ja .L80
	pushl $3346
	call _m3_fault
	.align 16
.L80:
	leal (%ebx,%ebx,2),%eax
	sall $4,%eax
	movl (%edx),%esi
	addl %eax,%esi
	movl %esi,%edx
	movl %esi,-32(%ebp)
	movl (%edx),%eax
	addl $8,%eax
	pushl %eax
	movl 44(%edx),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_M3FP+72,%eax
	call *%eax
	movl -32(%ebp),%eax
	movl (%eax),%eax
	addl $8,%eax
	pushl %eax
	movl MI_M3FP+80,%eax
	call *%eax
	movl %eax,%edx
	movl -32(%ebp),%eax
	incl %ebx
	movl (%eax),%eax
	addl $16,%esp
	movl %edx,36(%eax)
.L78:
	cmpl %ebx,-36(%ebp)
	jge .L79
.L63:
	cmpb $0,MI_Host+72
	je .L56
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L83
	.align 16
.L84:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L86
	pushl $3506
	call _m3_fault
	.align 16
.L86:
	movl (%eax),%ecx
	leal (%ebx,%ebx,2),%eax
	sall $4,%eax
	movl (%ecx,%eax),%edx
	addl $8,%edx
	pushl %edx
	pushl $0
	movl 44(%ecx,%eax),%eax
	pushl %eax
	call TypeFP__DumpFP
	incl %ebx
	addl $12,%esp
.L83:
	cmpl %esi,%ebx
	jle .L84
.L56:
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-36(%ebp)
	jmp .L88
	.align 16
.L89:
	movl 8(%ebp),%edx
	cmpl %ebx,4(%edx)
	ja .L90
	pushl $3634
	call _m3_fault
	.align 16
.L90:
	leal (%ebx,%ebx,2),%eax
	sall $4,%eax
	movl (%edx),%esi
	addl %eax,%esi
	movl %esi,-32(%ebp)
	movl $5,%edx
	movl 12(%esi),%eax
	cmpl %eax,%edx
	jle .L91
	movl %eax,%edx
.L91:
	xorl %ecx,%ecx
	jmp .L92
	.align 16
.L93:
	cmpl $5,%ecx
	jle .L94
	pushl $3665
	call _m3_fault
	.align 16
.L94:
	movl -32(%ebp),%eax
	movl $0,16(%eax,%ecx,4)
	incl %ecx
.L92:
	cmpl %edx,%ecx
	jle .L93
	movl -32(%ebp),%ecx
	movl (%ecx),%edx
	movl MM_TypeFP+172,%eax
	movl %eax,40(%edx)
	movl $0,(%ecx)
	movl -32(%ebp),%esi
	incl %ebx
	movl $0,4(%esi)
	movl $0,8(%esi)
	movl $0,40(%esi)
	movl $0,12(%esi)
	movl $0,44(%esi)
.L88:
	cmpl %ebx,-36(%ebp)
	jge .L89
	incl MM_TypeFP+172
.L49:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TypeFP__Finish_SCC,.Lfe5-TypeFP__Finish_SCC
	.align 16
	.type	 TypeFP__Visit,@function
TypeFP__Visit:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	xorl %ebx,%ebx
	cmpl %eax,4(%edx)
	ja .L98
	pushl $3938
	call _m3_fault
	.align 16
.L98:
	leal (%eax,%eax,2),%eax
	sall $4,%eax
	movl (%edx),%ecx
	addl %eax,%ecx
	movl %ecx,-4(%ebp)
	cmpl $0,44(%ecx)
	je .L99
	pushl $124
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl 44(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+56,%eax
	call *%eax
	jmp .L97
	.align 16
.L99:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl %eax,44(%ecx)
	incl (%edx)
	pushl $124
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl %ebx,%esi
	addl $16,%esp
	movl 12(%eax),%edi
	decl %edi
	jmp .L100
	.align 16
.L101:
	movl -4(%ebp),%eax
	cmpl $6,12(%eax)
	jg .L102
	cmpl $5,%esi
	jle .L103
	pushl $4193
	call _m3_fault
	.align 16
.L103:
	movl 16(%eax,%esi,4),%ebx
	jmp .L104
	.align 16
.L102:
	movl 40(%eax),%eax
	testl %eax,%eax
	jne .L105
	pushl $4212
	call _m3_fault
	.align 16
.L105:
	movl %eax,%ecx
	cmpl %esi,4(%ecx)
	ja .L106
	pushl $4210
	call _m3_fault
	.align 16
.L106:
	movl (%ecx),%eax
	movl (%eax,%esi,4),%ebx
.L104:
	pushl %ebx
	call TypeFP__GetRep
	movl %eax,%ebx
	addl $4,%esp
	movl 40(%ebx),%eax
	testl %eax,%eax
	jle .L107
	pushl $124
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl $42
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $8,%edx
	pushl %edx
	leal 8(%ebx),%eax
	pushl %eax
	pushl %edx
	call TypeFP__FromPair
	movl 8(%ebp),%eax
	addl $28,%esp
	movb $1,16(%eax)
	jmp .L108
	.align 16
.L107:
	negl %eax
	jns .L109
	pushl $4385
	call _m3_fault
	.align 16
.L109:
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TypeFP__Visit
	addl $12,%esp
.L108:
	incl %esi
.L100:
	cmpl %edi,%esi
	jle .L101
.L97:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TypeFP__Visit,.Lfe6-TypeFP__Visit
	.align 16
	.type	 TypeFP__CompareInfo,@function
TypeFP__CompareInfo:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	cmpl %eax,4(%edx)
	ja .L112
	pushl $4610
	call _m3_fault
	.align 16
.L112:
	leal (%eax,%eax,2),%eax
	movl %eax,%esi
	sall $4,%esi
	movl (%edx),%ebx
	leal (%esi,%ebx),%ecx
	movl %ecx,-4(%ebp)
	movl 16(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L113
	pushl $4610
	call _m3_fault
	.align 16
.L113:
	movl 16(%ebp),%ecx
	leal (%ecx,%ecx,2),%eax
	sall $4,%eax
	addl (%edx),%eax
	addl %esi,%ebx
	movl %eax,-8(%ebp)
	movl 12(%ebx),%esi
	movl 12(%eax),%edx
	cmpl %edx,%esi
	jl .L132
	jg .L133
	movl 4(%eax),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Text+84,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jge .L116
.L132:
	movl $-1,%eax
	jmp .L131
	.align 16
.L116:
	testl %edx,%edx
	jle .L117
.L133:
	movl $1,%eax
	jmp .L131
	.align 16
.L117:
	movl -4(%ebp),%eax
	movl %edi,%esi
	movl 12(%eax),%eax
	decl %eax
	movl %eax,-12(%ebp)
	jmp .L118
	.align 16
.L119:
	movl -4(%ebp),%eax
	cmpl $6,12(%eax)
	jg .L120
	cmpl $5,%esi
	jle .L121
	pushl $4817
	call _m3_fault
	.align 16
.L121:
	movl 16(%eax,%esi,4),%edi
	movl -8(%ebp),%eax
	movl 16(%eax,%esi,4),%ebx
	jmp .L123
	.align 16
.L120:
	movl 40(%eax),%eax
	testl %eax,%eax
	jne .L124
	pushl $4868
	call _m3_fault
	.align 16
.L124:
	cmpl %esi,4(%eax)
	ja .L125
	pushl $4866
	call _m3_fault
	.align 16
.L125:
	movl (%eax),%eax
	movl (%eax,%esi,4),%edi
	movl -8(%ebp),%eax
	movl 40(%eax),%eax
	testl %eax,%eax
	jne .L126
	pushl $4884
	call _m3_fault
	.align 16
.L126:
	cmpl %esi,4(%eax)
	ja .L127
	pushl $4882
	call _m3_fault
	.align 16
.L127:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
.L123:
	pushl %edi
	call TypeFP__GetRep
	movl %eax,%edi
	pushl %ebx
	call TypeFP__GetRep
	movl %eax,%ebx
	pushl %ebx
	pushl %edi
	movl 8(%ebp),%eax
	pushl %eax
	call TypeFP__CompareNode
	movl %eax,%edx
	addl $20,%esp
	testl %edx,%edx
	je .L128
	leal 1(%edx),%eax
	cmpl $2,%eax
	jbe .L129
	pushl $4961
	call _m3_fault
	.align 16
.L129:
	movl %edx,%eax
	jmp .L131
	.align 16
.L128:
	incl %esi
.L118:
	cmpl %esi,-12(%ebp)
	jge .L119
	xorl %eax,%eax
.L131:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TypeFP__CompareInfo,.Lfe7-TypeFP__CompareInfo
	.align 16
	.type	 TypeFP__CompareNode,@function
TypeFP__CompareNode:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%edx
	cmpl %edx,%eax
	je .L153
	testl %eax,%eax
	je .L151
	testl %edx,%edx
	je .L152
	movl 40(%eax),%ebx
	movl 40(%edx),%esi
	testl %ebx,%ebx
	jle .L138
	testl %esi,%esi
	jle .L138
	addl $8,%eax
	movl %eax,-4(%ebp)
	addl $8,%edx
	movl %edx,-8(%ebp)
	xorl %edx,%edx
.L139:
	movl -4(%ebp),%eax
	xorl %ecx,%ecx
	movb (%edx,%eax),%cl
	movl -8(%ebp),%eax
	movb (%edx,%eax),%al
	andl $255,%eax
	cmpl %eax,%ecx
	jl .L151
	jg .L152
	incl %edx
	cmpl $7,%edx
	jle .L139
.L153:
	xorl %eax,%eax
	jmp .L149
	.align 16
.L138:
	pushl $0
	pushl %edx
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L153
	testl %ebx,%ebx
	jle .L145
.L152:
	movl $1,%eax
	jmp .L149
	.align 16
.L145:
	testl %esi,%esi
	jle .L146
.L151:
	movl $-1,%eax
	jmp .L149
	.align 16
.L146:
	movl %ebx,%edx
	negl %edx
	jns .L147
	pushl $5457
	call _m3_fault
	.align 16
.L147:
	movl %esi,%eax
	negl %eax
	jns .L148
	pushl $5457
	call _m3_fault
	.align 16
.L148:
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call TypeFP__CompareInfo
.L149:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TypeFP__CompareNode,.Lfe8-TypeFP__CompareNode
	.align 16
	.type	 TypeFP__ExpandStack,@function
TypeFP__ExpandStack:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_TypeFP+160,%eax
	testl %eax,%eax
	jne .L155
	pushl $5524
	call _m3_fault
	.align 16
.L155:
	movl 4(%eax),%esi
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,%edi
	addl %esi,%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_TypeFP+260,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L156
	pushl $5572
	call _m3_fault
	.align 16
.L156:
	movl %esi,-16(%ebp)
	movl %esi,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L157
	pushl $5569
	call _m3_fault
	.align 16
.L157:
	movl (%ebx),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl MM_TypeFP+160,%edx
	testl %edx,%edx
	jne .L158
	pushl $5572
	call _m3_fault
	.align 16
.L158:
	cmpl %esi,4(%edx)
	je .L159
	pushl $5571
	call _m3_fault
	.align 16
.L159:
	leal (%esi,%edi),%eax
	sall $4,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	leal -36(%ebp),%esp
	movl %ebx,MM_TypeFP+160
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TypeFP__ExpandStack,.Lfe9-TypeFP__ExpandStack
	.align 16
	.type	 TypeFP__FromText,@function
TypeFP__FromText:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_M3FP+60,%eax
	call *%eax
	addl $8,%esp
	cmpb $0,MI_Host+72
	je .L161
	pushl %ebx
	pushl %esi
	pushl $-1
	call TypeFP__DumpFP
.L161:
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	leal -24(%ebp),%esp
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TypeFP__FromText,.Lfe10-TypeFP__FromText
	.align 16
	.type	 TypeFP__FromPair,@function
TypeFP__FromPair:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%edx
	movl (%eax),%ecx
	pushl %edx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%eax),%ecx
	pushl %edx
	pushl %ecx
	movl MI_M3FP+68,%eax
	call *%eax
	addl $20,%esp
	cmpb $0,MI_Host+72
	je .L163
	movl 12(%ebp),%eax
	pushl %eax
	call TypeFP__DumpOne
.L163:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TypeFP__FromPair,.Lfe11-TypeFP__FromPair
	.align 16
	.type	 TypeFP__FromBuf,@function
TypeFP__FromBuf:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
	cmpb $0,MI_Host+72
	je .L165
	pushl %edx
	movl MI_M3Buf+72,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call TypeFP__FromText
	jmp .L164
	.align 16
.L165:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_M3Buf+76,%eax
	call *%eax
.L164:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TypeFP__FromBuf,.Lfe12-TypeFP__FromBuf
	.align 16
	.type	 TypeFP__GetRep,@function
TypeFP__GetRep:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L167:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,8(%ebp)
	jne .L168
	movl MI_ErrType+44,%ecx
	movl %ecx,8(%ebp)
.L168:
	movl 8(%ebp),%ecx
	movl 44(%ecx),%edx
	cmpl $-1,%edx
	je .L169
	cmpl %edx,MM_TypeFP+44
	jle .L170
	movl MM_TypeFP+48,%eax
	testl %eax,%eax
	jne .L171
	pushl $6180
	call _m3_fault
	.align 16
.L171:
	cmpl %edx,4(%eax)
	ja .L172
	pushl $6178
	call _m3_fault
	.align 16
.L172:
	movl (%eax),%eax
	movl (%eax,%edx,4),%ebx
	cmpl %ebx,8(%ebp)
	je .L195
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L195
.L170:
	movl 8(%ebp),%ecx
	movl $-1,44(%ecx)
.L169:
	movl MM_TypeFP+52,%edx
	testl %edx,%edx
	jne .L175
	pushl $6292
	call _m3_fault
	.align 16
.L175:
	movl 8(%ebp),%ecx
	movl 28(%ecx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call m3_mod
	movl %eax,%edi
	addl $8,%esp
.L176:
	movl MM_TypeFP+52,%eax
	testl %eax,%eax
	jne .L177
	pushl $6324
	call _m3_fault
	.align 16
.L177:
	cmpl %edi,4(%eax)
	ja .L178
	pushl $6322
	call _m3_fault
	.align 16
.L178:
	movl (%eax),%eax
	movl (%eax,%edi,4),%esi
	cmpl $-1,%esi
	je .L180
	movl MM_TypeFP+48,%eax
	testl %eax,%eax
	jne .L181
	pushl $6356
	call _m3_fault
	.align 16
.L181:
	cmpl %esi,4(%eax)
	ja .L182
	pushl $6354
	call _m3_fault
	.align 16
.L182:
	movl (%eax),%eax
	movl 8(%ebp),%ecx
	movl (%eax,%esi,4),%ebx
	movl 28(%ecx),%eax
	cmpl %eax,28(%ebx)
	jne .L183
	pushl $0
	pushl %ecx
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L183
	movl 8(%ebp),%ecx
	movl %esi,44(%ecx)
.L195:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
	jmp .L166
	.align 16
.L183:
	incl %edi
	movl MM_TypeFP+52,%eax
	testl %eax,%eax
	jne .L184
	pushl $6452
	call _m3_fault
	.align 16
.L184:
	movl 4(%eax),%eax
	decl %eax
	cmpl %edi,%eax
	jge .L176
	xorl %edi,%edi
	jmp .L176
	.align 16
.L180:
	movl 8(%ebp),%ecx
	movl MM_TypeFP+44,%esi
	movl %esi,44(%ecx)
	movl MM_TypeFP+48,%eax
	testl %eax,%eax
	jne .L186
	pushl $6580
	call _m3_fault
	.align 16
.L186:
	movl 4(%eax),%eax
	decl %eax
	cmpl %esi,%eax
	jge .L187
	call TypeFP__ExpandReps
.L187:
	movl MM_TypeFP+48,%eax
	testl %eax,%eax
	jne .L188
	pushl $6596
	call _m3_fault
	.align 16
.L188:
	cmpl %esi,4(%eax)
	ja .L189
	pushl $6594
	call _m3_fault
	.align 16
.L189:
	movl (%eax),%eax
	movl 8(%ebp),%ecx
	movl %ecx,(%eax,%esi,4)
	incl MM_TypeFP+44
	movl MM_TypeFP+52,%edx
	testl %edx,%edx
	jne .L190
	pushl $6660
	call _m3_fault
	.align 16
.L190:
	cmpl %edi,4(%edx)
	ja .L191
	pushl $6658
	call _m3_fault
	.align 16
.L191:
	movl (%edx),%eax
	movl %esi,(%eax,%edi,4)
	movl MM_TypeFP+44,%ecx
	movl %ecx,%eax
	addl %ecx,%eax
	cmpl %eax,4(%edx)
	jge .L193
	call TypeFP__ExpandHash
.L193:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
.L194:
.L166:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 TypeFP__GetRep,.Lfe13-TypeFP__GetRep
	.align 16
	.type	 TypeFP__ExpandReps,@function
TypeFP__ExpandReps:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_TypeFP+48,%eax
	testl %eax,%eax
	jne .L197
	pushl $6756
	call _m3_fault
	.align 16
.L197:
	movl 4(%eax),%eax
	leal -12(%ebp),%edx
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_TypeFP+268,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L198
	pushl $6804
	call _m3_fault
	.align 16
.L198:
	movl MM_TypeFP+44,%ecx
	testl %ecx,%ecx
	jge .L199
	pushl $6801
	call _m3_fault
	.align 16
.L199:
	movl %ecx,-16(%ebp)
	movl %ecx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L200
	pushl $6801
	call _m3_fault
	.align 16
.L200:
	movl (%ebx),%esi
	movl %esi,-20(%ebp)
	movl MM_TypeFP+48,%edx
	testl %edx,%edx
	jne .L201
	pushl $6804
	call _m3_fault
	.align 16
.L201:
	cmpl %ecx,4(%edx)
	je .L202
	pushl $6803
	call _m3_fault
	.align 16
.L202:
	leal 0(,%ecx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl %esi
	call memmove
	leal -32(%ebp),%esp
	movl %ebx,MM_TypeFP+48
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 TypeFP__ExpandReps,.Lfe14-TypeFP__ExpandReps
	.align 16
	.type	 TypeFP__ExpandHash,@function
TypeFP__ExpandHash:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L204:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MM_TypeFP+52,%eax
	testl %eax,%eax
	jne .L207
	movl $512,%edi
	jmp .L206
	.align 16
.L207:
	movl 4(%eax),%eax
	movl %eax,%edi
	addl %eax,%edi
.L206:
	leal -20(%ebp),%eax
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl %edi,-12(%ebp)
	pushl %eax
	movl MM_TypeFP+276,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L208
	pushl $7028
	call _m3_fault
	.align 16
.L208:
	xorl %edx,%edx
	movl 4(%ebx),%esi
	decl %esi
	jmp .L209
	.align 16
.L210:
	testl %ebx,%ebx
	jne .L211
	pushl $7028
	call _m3_fault
	.align 16
.L211:
	cmpl %edx,4(%ebx)
	ja .L212
	pushl $7026
	call _m3_fault
	.align 16
.L212:
	movl (%ebx),%eax
	movl $-1,(%eax,%edx,4)
	incl %edx
.L209:
	cmpl %esi,%edx
	jle .L210
	xorl %esi,%esi
	movl MM_TypeFP+44,%ecx
	decl %ecx
	movl %ecx,-24(%ebp)
	jmp .L214
	.align 16
.L215:
	movl MM_TypeFP+48,%eax
	testl %eax,%eax
	jne .L216
	pushl $7092
	call _m3_fault
	.align 16
.L216:
	cmpl %esi,4(%eax)
	ja .L217
	pushl $7090
	call _m3_fault
	.align 16
.L217:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	movl 28(%eax),%eax
	pushl %eax
	pushl %edi
	call m3_mod
	addl $8,%esp
	jmp .L218
	.align 16
.L219:
	incl %eax
	cmpl %edi,%eax
	jl .L218
	xorl %eax,%eax
.L218:
	testl %ebx,%ebx
	jne .L221
	pushl $7108
	call _m3_fault
	.align 16
.L221:
	cmpl %eax,4(%ebx)
	ja .L222
	pushl $7106
	call _m3_fault
	.align 16
.L222:
	movl (%ebx),%edx
	cmpl $-1,(%edx,%eax,4)
	jne .L219
	movl %esi,(%edx,%eax,4)
	incl %esi
.L214:
	cmpl %esi,-24(%ebp)
	jge .L215
	movl %ebx,MM_TypeFP+52
.L227:
	movl -8(%ebp),%eax
	leal -36(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 TypeFP__ExpandHash,.Lfe15-TypeFP__ExpandHash
	.align 16
	.type	 TypeFP__DumpHeader,@function
TypeFP__DumpHeader:
	pushl %ebp
	movl MI_Host+52,%eax
	movl (%eax),%edx
	movl %esp,%ebp
	movl 16(%edx),%edx
	pushl $MM_TypeFP+288
	pushl %eax
	call *%edx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 TypeFP__DumpHeader,.Lfe16-TypeFP__DumpHeader
	.align 16
	.type	 TypeFP__DumpFP,@function
TypeFP__DumpFP:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
.L230:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_M3FP+80,%eax
	call *%eax
	movl %eax,-36(%ebp)
	addl $4,%esp
	cmpl $0,MM_TypeFP+220
	jne .L231
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,MM_TypeFP+220
.L231:
	testl %ebx,%ebx
	je .L232
	movl MI_Host+52,%edx
	movl (%edx),%eax
	movl 16(%eax),%ecx
	pushl %ebx
	pushl %edx
	call *%ecx
	addl $8,%esp
.L232:
	cmpl $0,8(%ebp)
	jl .L233
	leal -16(%ebp),%esi
	movl %esi,-32(%ebp)
	movl $16,-28(%ebp)
	pushl $0
	pushl $10
	movl 8(%ebp),%edi
	pushl %edi
	leal -32(%ebp),%ebx
	pushl %ebx
	movl MI_Convert+64,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L234
	pushl $7585
	call _m3_fault
	.align 16
.L234:
	cmpl $16,%eax
	jle .L235
	pushl $7585
	call _m3_fault
	.align 16
.L235:
	movl %eax,-28(%ebp)
	movl %esi,-32(%ebp)
	pushl %ebx
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
	pushl $MM_TypeFP+340
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $16,%esp
.L233:
	pushl $MM_TypeFP+356
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	leal -16(%ebp),%ebx
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_M3FP+84,%eax
	call *%eax
	movl %ebx,-32(%ebp)
	movl $16,-28(%ebp)
	leal -32(%ebp),%esi
	pushl %esi
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
	pushl $MM_TypeFP+384
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl %ebx,-32(%ebp)
	addl $32,%esp
	movl $16,-28(%ebp)
	pushl $0
	pushl $16
	movl -36(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_Convert+68,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L236
	pushl $7745
	call _m3_fault
	.align 16
.L236:
	cmpl $16,%eax
	jle .L237
	pushl $7745
	call _m3_fault
	.align 16
.L237:
	movl %eax,-28(%ebp)
	movl %ebx,-32(%ebp)
	pushl %esi
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
	pushl $MM_TypeFP+404
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl %ebx,-32(%ebp)
	movl $16,-28(%ebp)
	pushl $0
	pushl $10
	movl -36(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_Convert+64,%eax
	call *%eax
	addl $32,%esp
	testl %eax,%eax
	jge .L238
	pushl $7809
	call _m3_fault
	.align 16
.L238:
	cmpl $16,%eax
	jle .L239
	pushl $7809
	call _m3_fault
	.align 16
.L239:
	movl %eax,-28(%ebp)
	movl %ebx,-32(%ebp)
	pushl %esi
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+72,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl %eax,%ecx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
.L240:
	movl -24(%ebp),%eax
	leal -48(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 TypeFP__DumpFP,.Lfe17-TypeFP__DumpFP
	.align 16
	.type	 TypeFP__DumpOne,@function
TypeFP__DumpOne:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	cmpl $0,MM_TypeFP+220
	jne .L242
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,MM_TypeFP+220
.L242:
	pushl $MM_TypeFP+420
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	leal -16(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3FP+84,%eax
	call *%eax
	movl %ebx,-24(%ebp)
	movl $16,-20(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
	movl MM_TypeFP+220,%eax
	pushl %eax
	movl MI_M3Buf+72,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl %eax,%ecx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 TypeFP__DumpOne,.Lfe18-TypeFP__DumpOne
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TypeFP
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe19:
	.size	 _m3_fault,.Lfe19-_m3_fault
.globl MM_TypeFP
.data
	.align 4
	.type	 MM_TypeFP,@object
	.size	 MM_TypeFP,1060
MM_TypeFP:
	.long MM_TypeFP+854
	.long MM_TypeFP+56
	.long MM_TypeFP+260
	.zero	8
	.long MM_TypeFP+620
	.zero	4
	.long MM_TypeFP+840
	.long MM_TypeFP+840
	.zero	28
	.long 1602539811
.byte 87
.byte 110
.byte 105
.byte 67
.byte 116
.byte 191
.byte 237
.byte 28
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 48
	.zero	4
	.long MM_TypeFP+997
	.long MM_TypeFP+1011
	.long MM_TypeFP+1025
	.zero	40
	.long 1
	.long 1
	.long 1
	.zero	8
	.long TypeFP__Visit_SCC
	.long TypeFP__Finish_SCC
	.long TypeFP__Visit
	.long TypeFP__CompareInfo
	.long TypeFP__CompareNode
	.long TypeFP__ExpandStack
	.long TypeFP__GetRep
	.long TypeFP__ExpandReps
	.long TypeFP__ExpandHash
	.zero	4
	.long TypeFP__DumpHeader
	.long TypeFP__DumpFP
	.long TypeFP__DumpOne
	.long TypeFP__FromType
	.long TypeFP__FromText
	.long TypeFP__FromPair
	.long TypeFP__FromBuf
	.long TypeFP__Initialize
	.long TypeFP__Reset
	.long MM_TypeFP+268
	.long 1602539811
	.long MM_TypeFP+276
	.long 1942183804
	.zero	4
	.long 562018850
	.long 2
	.long MM_TypeFP+296
	.long 40
	.ascii	"---------------------------------------"
	.zero	1
	.long 2
	.long MM_TypeFP+348
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_TypeFP+364
	.long 13
	.ascii	"  FP ==> 16_"
	.zero	4
	.long 2
	.long MM_TypeFP+392
	.long 8
	.ascii	" => 16_"
	.zero	1
	.long 2
	.long MM_TypeFP+412
	.long 4
	.ascii	" = "
	.zero	1
	.long 2
	.long MM_TypeFP+428
	.long 18
	.ascii	"  Combine ==> 16_"
	.zero	3
	.ascii	"DumpOne"
	.zero	1
	.ascii	"DumpFP"
	.zero	1
	.ascii	"DumpHeader"
	.zero	1
	.ascii	"ExpandHash"
	.zero	1
	.ascii	"ExpandReps"
	.zero	1
	.ascii	"GetRep"
	.zero	1
	.ascii	"FromBuf"
	.zero	1
	.ascii	"FromPair"
	.zero	1
	.ascii	"FromText"
	.zero	1
	.ascii	"ExpandStack"
	.zero	1
	.ascii	"CompareNode"
	.zero	1
	.ascii	"CompareInfo"
	.zero	1
	.ascii	"Visit"
	.zero	1
	.ascii	"Finish_SCC"
	.zero	1
	.ascii	"Visit_SCC"
	.zero	1
	.ascii	"FromType"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Initialize"
	.zero	3
	.long TypeFP__DumpOne
	.long MM_TypeFP+448
	.zero	4
	.long TypeFP__DumpFP
	.long MM_TypeFP+456
	.zero	4
	.long TypeFP__DumpHeader
	.long MM_TypeFP+463
	.zero	4
	.long TypeFP__ExpandHash
	.long MM_TypeFP+474
	.zero	4
	.long TypeFP__ExpandReps
	.long MM_TypeFP+485
	.zero	4
	.long TypeFP__GetRep
	.long MM_TypeFP+496
	.zero	4
	.long TypeFP__FromBuf
	.long MM_TypeFP+503
	.long MI_TypeFP+56
	.long TypeFP__FromPair
	.long MM_TypeFP+511
	.long MI_TypeFP+52
	.long TypeFP__FromText
	.long MM_TypeFP+520
	.long MI_TypeFP+48
	.long TypeFP__ExpandStack
	.long MM_TypeFP+529
	.zero	4
	.long TypeFP__CompareNode
	.long MM_TypeFP+541
	.zero	4
	.long TypeFP__CompareInfo
	.long MM_TypeFP+553
	.zero	4
	.long TypeFP__Visit
	.long MM_TypeFP+565
	.zero	4
	.long TypeFP__Finish_SCC
	.long MM_TypeFP+571
	.zero	4
	.long TypeFP__Visit_SCC
	.long MM_TypeFP+582
	.zero	4
	.long TypeFP__FromType
	.long MM_TypeFP+592
	.long MI_TypeFP+44
	.long TypeFP__Reset
	.long MM_TypeFP+601
	.long MI_TypeFP+64
	.long TypeFP__Initialize
	.long MM_TypeFP+607
	.long MI_TypeFP+60
	.zero	4
.byte 42
.byte 48
.byte 4
.byte 4
.byte 42
.byte 104
.byte 4
.byte 42
.byte 12
.byte 4
.byte 42
.byte 40
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/TypeFP.m3"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 4
.byte 4
.byte 14
.byte 1
.byte 4
.byte 26
.byte 6
.byte 4
.byte 14
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
.byte 4
.byte 4
.byte 37
.byte 1
.byte 4
.byte 26
.byte 6
.byte 4
.byte 37
.byte 0
.byte 0
.byte 11
.byte 11
.byte 1
.byte 15
.byte 3
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 15
.byte 5
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 16
.byte 152
.byte 97
.byte 192
.byte 197
.byte 7
.byte 1
.byte 6
.byte 24
.byte 16
.byte 124
.byte 95
.byte 195
.byte 115
.byte 28
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
