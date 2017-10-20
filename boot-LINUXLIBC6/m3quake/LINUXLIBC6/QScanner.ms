	.file	"QScanner.mc"
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
	.type	 QScanner__Init,@function
QScanner__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $208,%esp
	pushl %ebx
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpb $0,MM_QScanner+148
	jne .L3
	call QScanner__InitTables
.L3:
	movl $MM_QScanner+492,-188(%ebp)
	movl $0,-192(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-196(%ebp)
	leal -196(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -176(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L16
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%eax),%edx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	leal -200(%ebp),%ecx
	movl %ecx,-208(%ebp)
	movl $1,-204(%ebp)
	movl -4(%ebp),%eax
	addl $8,%esp
	cmpl %eax,%ebx
	jle .L5
	movl $1,-200(%ebp)
	jmp .L6
	.align 16
.L5:
	incl %eax
	movl %eax,-200(%ebp)
.L6:
	leal -208(%ebp),%eax
	pushl %eax
	movl MM_QScanner+500,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl %edx,36(%ecx)
	testl %edx,%edx
	jne .L7
	pushl $772
	call _m3_fault
	.align 16
.L7:
	movl -4(%ebp),%eax
	cmpl $16777216,%eax
	jle .L8
	pushl $769
	call _m3_fault
	.align 16
.L8:
	pushl %eax
	pushl %edx
	movl 12(%ebp),%ecx
	pushl %ecx
	movl MI_M3File+44,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%ecx
	addl $12,%esp
	movl %edx,32(%ecx)
	cmpl %edx,-4(%ebp)
	je .L9
	movl -196(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L16:
	xorl %eax,%eax
	jmp .L15
	.align 16
.L9:
	movl 8(%ebp),%ecx
	movl 36(%ecx),%eax
	testl %eax,%eax
	jne .L10
	pushl $804
	call _m3_fault
	.align 16
.L10:
	cmpl %edx,4(%eax)
	ja .L11
	pushl $802
	call _m3_fault
	.align 16
.L11:
	movl (%eax),%eax
	movb $0,(%edx,%eax)
	movl -196(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L12
	.align 16
.L4:
	jmp .L16
	.align 16
.L12:
	movl 8(%ebp),%ecx
	movb $0,4(%ecx)
	movl $0,8(%ecx)
	movb $32,20(%ecx)
	movl $1,24(%ecx)
	movl $0,28(%ecx)
	movl 36(%ecx),%eax
	testl %eax,%eax
	jne .L14
	pushl $948
	call _m3_fault
	.align 16
.L14:
	movl 8(%ebp),%ecx
	movl 4(%eax),%eax
	movl %eax,32(%ecx)
	movl 8(%ebp),%eax
.L15:
	movl -212(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 QScanner__Init,.Lfe1-QScanner__Init
	.align 16
	.type	 QScanner__InitTables,@function
QScanner__InitTables:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	movl $97,%edx
	pushl %ebx
	movb $1,MI_QScanner+76
	movb $1,MI_QScanner+54
	movb $1,MI_QScanner+53
	movb $1,MI_QScanner+57
	movb $1,MI_QScanner+56
	movb $1,MM_QScanner+287
.L18:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_QScanner+192(%eax)
	cmpl $122,%edx
	jle .L18
	movl $65,%edx
.L21:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_QScanner+192(%eax)
	cmpl $90,%edx
	jle .L21
	movl $48,%edx
.L24:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $1,MM_QScanner+192(%eax)
	cmpl $57,%edx
	jle .L24
	movl $2147483647,MM_QScanner+152
	movl $-2147483648,MM_QScanner+156
	movl $2,%esi
.L27:
	movl %esi,%eax
	xorl %ebx,%ebx
	movb %al,%bl
	pushl $0
	movl MI_QToken+44(,%ebx,4),%eax
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-60(%ebp)
	movl %edx,-64(%ebp,%ebx,4)
	movl MM_QScanner+152,%ecx
	addl $8,%esp
	cmpl %ecx,%edx
	jle .L28
	movl %ecx,%eax
.L28:
	movl %eax,MM_QScanner+152
	cmpl %edx,%eax
	jle .L29
	movl %eax,MM_QScanner+156
	jmp .L30
	.align 16
.L29:
	movl -60(%ebp),%edi
	movl %edi,MM_QScanner+156
.L30:
	incl %esi
	cmpl $15,%esi
	jle .L27
	movl MM_QScanner+152,%eax
	movl MM_QScanner+156,%edi
	subl %eax,%edi
	movl %edi,%eax
	cmpl $31,%eax
	jle .L33
	pushl $1376
	call _m3_fault
	.align 16
.L33:
	xorl %eax,%eax
.L34:
	movb $32,MM_QScanner+160(%eax)
	incl %eax
	cmpl $31,%eax
	jle .L34
	movl $2,%ecx
.L37:
	movb %cl,%bl
	xorl %edx,%edx
	movb %bl,%dl
	movl MM_QScanner+152,%eax
	movl -64(%ebp,%edx,4),%edx
	subl %eax,%edx
	movl %edx,%eax
	cmpl $31,%eax
	jbe .L38
	pushl $1425
	call _m3_fault
	.align 16
.L38:
	movb %bl,MM_QScanner+160(%eax)
	incl %ecx
	cmpl $15,%ecx
	jle .L37
	leal -72(%ebp),%esp
	movb $1,MM_QScanner+148
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QScanner__InitTables,.Lfe2-QScanner__InitTables
.section	.rodata
	.align 4
	.type	 L_7.0,@object
	.size	 L_7.0,504
L_7.0:
	.long .L47
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L46
	.long .L48
	.long .L46
	.long .L49
	.long .L50
	.long .L51
	.long .L46
	.long .L52
	.long .L53
	.long .L46
	.long .L54
	.long .L55
	.long .L46
	.long .L46
	.long .L56
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L57
	.long .L58
	.long .L46
	.long .L59
	.long .L60
	.long .L61
	.long .L46
	.long .L62
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L64
	.long .L46
	.long .L65
	.long .L46
	.long .L63
	.long .L46
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L63
	.long .L66
	.long .L46
	.long .L67
.text
	.align 16
	.type	 QScanner__Next,@function
QScanner__Next:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L43
	.align 16
.L44:
	pushl %ebx
	call QScanner__NextChar
	addl $4,%esp
.L43:
	xorl %eax,%eax
	movb 20(%ebx),%al
	cmpb $0,MI_QScanner+44(%eax)
	jne .L44
	movl 24(%ebx),%eax
	movl %eax,8(%ebx)
	xorl %eax,%eax
	movb 20(%ebx),%al
	cmpl $125,%eax
	jg .L46
	jmp *L_7.0(,%eax,4)
	.align 16
.L50:
.L69:
	pushl %ebx
	call QScanner__NextChar
	addl $4,%esp
	movb 20(%ebx),%al
	cmpb $10,%al
	je .L43
	testb %al,%al
	jne .L69
	jmp .L43
	.align 16
.L56:
	pushl %ebx
	call QScanner__NextChar
	addl $4,%esp
	cmpb $42,20(%ebx)
	jne .L46
	pushl %ebx
	call QScanner__NextChar
	pushl %ebx
	call QScanner__SkipComment
	addl $8,%esp
	jmp .L43
	.align 16
.L48:
	pushl %ebx
	call QScanner__ReadString
	jmp .L41
	.align 16
.L57:
	pushl %ebx
	call QScanner__ReadCardinal
	jmp .L41
	.align 16
.L63:
	pushl %ebx
	call QScanner__ReadName
	jmp .L41
	.align 16
.L49:
	movb $16,4(%ebx)
	jmp .L75
	.align 16
.L51:
	movb $17,4(%ebx)
	jmp .L75
	.align 16
.L52:
	movb $18,4(%ebx)
	jmp .L75
	.align 16
.L53:
	movb $19,4(%ebx)
	jmp .L75
	.align 16
.L54:
	movb $20,4(%ebx)
	jmp .L75
	.align 16
.L55:
	movb $21,4(%ebx)
	jmp .L75
	.align 16
.L58:
	movb $22,4(%ebx)
	jmp .L75
	.align 16
.L59:
	movb $23,4(%ebx)
	jmp .L75
	.align 16
.L60:
	movb $24,4(%ebx)
	jmp .L75
	.align 16
.L61:
	movb $25,4(%ebx)
	jmp .L75
	.align 16
.L62:
	movb $26,4(%ebx)
	jmp .L75
	.align 16
.L64:
	movb $27,4(%ebx)
	jmp .L75
	.align 16
.L65:
	movb $28,4(%ebx)
	jmp .L75
	.align 16
.L66:
	movb $29,4(%ebx)
	jmp .L75
	.align 16
.L67:
	movb $30,4(%ebx)
.L75:
	pushl %ebx
	call QScanner__NextChar
	jmp .L41
	.align 16
.L47:
	movb $1,4(%ebx)
	jmp .L41
	.align 16
.L46:
	movb $0,4(%ebx)
.L41:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 QScanner__Next,.Lfe3-QScanner__Next
	.align 16
	.type	 QScanner__NextChar,@function
QScanner__NextChar:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 28(%edx),%ecx
	cmpl %ecx,32(%edx)
	jl .L77
	movl 36(%edx),%eax
	testl %eax,%eax
	jne .L78
	pushl $2532
	call _m3_fault
	.align 16
.L78:
	cmpl %ecx,4(%eax)
	ja .L79
	pushl $2530
	call _m3_fault
	.align 16
.L79:
	movl (%eax),%eax
	movb (%ecx,%eax),%al
	movb %al,20(%edx)
	incl 28(%edx)
	cmpb $10,20(%edx)
	jne .L76
	incl 24(%edx)
	jmp .L76
	.align 16
.L77:
	movb $0,20(%edx)
.L76:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 QScanner__NextChar,.Lfe4-QScanner__NextChar
	.align 16
	.type	 QScanner__SkipComment,@function
QScanner__SkipComment:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movb $32,-4(%ebp)
	movb 20(%ebx),%al
	jmp .L83
	.align 16
.L84:
	movb %al,-4(%ebp)
	pushl %ebx
	call QScanner__NextChar
	movb 20(%ebx),%al
	addl $4,%esp
.L83:
	testb %al,%al
	je .L86
	cmpb $47,%al
	jne .L84
	cmpb $42,-4(%ebp)
	jne .L84
.L86:
	pushl %ebx
	call QScanner__NextChar
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 QScanner__SkipComment,.Lfe5-QScanner__SkipComment
	.align 16
	.type	 QScanner__ReadCardinal,@function
QScanner__ReadCardinal:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	jmp .L88
	.align 16
.L89:
	leal (%ebx,%ebx,4),%eax
	leal -48(%edx,%eax,2),%eax
	testl %eax,%eax
	jge .L90
	pushl $2897
	call _m3_fault
	.align 16
.L90:
	movl %eax,%ebx
	pushl %esi
	call QScanner__NextChar
	addl $4,%esp
.L88:
	xorl %edx,%edx
	movb 20(%esi),%dl
	cmpl $47,%edx
	jle .L92
	cmpl $57,%edx
	jle .L89
.L92:
	movl %ebx,16(%esi)
	leal -8(%ebp),%esp
	movb $31,4(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 QScanner__ReadCardinal,.Lfe6-QScanner__ReadCardinal
.section	.rodata
	.align 4
	.type	 L_8.1,@object
	.size	 L_8.1,468
L_8.1:
	.long .L101
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L102
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L103
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L104
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L105
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L100
	.long .L106
	.long .L100
	.long .L100
	.long .L100
	.long .L107
	.long .L100
	.long .L108
.text
	.align 16
	.type	 QScanner__ReadString,@function
QScanner__ReadString:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 28(%esi),%edi
	movl %edi,%ebx
.L133:
	pushl %esi
	call QScanner__NextChar
	addl $4,%esp
	xorl %eax,%eax
	movb 20(%esi),%al
	testl %eax,%eax
	jle .L99
	cmpl $33,%eax
	jle .L96
	cmpl $34,%eax
	jle .L97
	cmpl $91,%eax
	jle .L96
	cmpl $92,%eax
	jle .L98
	jmp .L96
	.align 16
.L97:
	pushl %esi
	call QScanner__NextChar
	addl $4,%esp
	jmp .L99
	.align 16
.L98:
	pushl %esi
	call QScanner__NextChar
	xorl %eax,%eax
	movb 20(%esi),%al
	addl $4,%esp
	cmpl $116,%eax
	jg .L100
	jmp *L_8.1(,%eax,4)
	.align 16
.L102:
	jmp .L133
	.align 16
.L104:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L110
	pushl $3236
	call _m3_fault
	.align 16
.L110:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L111
	pushl $3234
	call _m3_fault
	.align 16
.L111:
	movl (%edx),%eax
	movb $92,(%ebx,%eax)
	jmp .L132
	.align 16
.L106:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L112
	pushl $3252
	call _m3_fault
	.align 16
.L112:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L113
	pushl $3250
	call _m3_fault
	.align 16
.L113:
	movl (%edx),%eax
	movb $10,(%ebx,%eax)
	jmp .L132
	.align 16
.L107:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L114
	pushl $3268
	call _m3_fault
	.align 16
.L114:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L115
	pushl $3266
	call _m3_fault
	.align 16
.L115:
	movl (%edx),%eax
	movb $13,(%ebx,%eax)
	jmp .L132
	.align 16
.L108:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L116
	pushl $3284
	call _m3_fault
	.align 16
.L116:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L117
	pushl $3282
	call _m3_fault
	.align 16
.L117:
	movl (%edx),%eax
	movb $9,(%ebx,%eax)
	jmp .L132
	.align 16
.L105:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L118
	pushl $3300
	call _m3_fault
	.align 16
.L118:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L119
	pushl $3298
	call _m3_fault
	.align 16
.L119:
	movl (%edx),%eax
	movb $12,(%ebx,%eax)
	jmp .L132
	.align 16
.L103:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L120
	pushl $3316
	call _m3_fault
	.align 16
.L120:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L121
	pushl $3314
	call _m3_fault
	.align 16
.L121:
	movl (%edx),%eax
	movb $34,(%ebx,%eax)
	jmp .L132
	.align 16
.L101:
	jmp .L99
	.align 16
.L100:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L122
	pushl $3348
	call _m3_fault
	.align 16
.L122:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L123
	pushl $3346
	call _m3_fault
	.align 16
.L123:
	movl (%edx),%edx
	movb 20(%esi),%al
	movb %al,(%ebx,%edx)
.L132:
	incl %ebx
	jmp .L133
	.align 16
.L96:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L125
	pushl $3412
	call _m3_fault
	.align 16
.L125:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L126
	pushl $3410
	call _m3_fault
	.align 16
.L126:
	movl (%edx),%edx
	movb 20(%esi),%al
	movb %al,(%ebx,%edx)
	incl %ebx
	jmp .L133
	.align 16
.L99:
	movl 36(%esi),%eax
	testl %eax,%eax
	jne .L127
	pushl $3492
	call _m3_fault
	.align 16
.L127:
	movl %eax,%edx
	testl %edi,%edi
	jge .L129
	pushl $3489
	call _m3_fault
	.align 16
.L129:
	movl 4(%edx),%eax
	subl %edi,%eax
	jns .L130
	pushl $3489
	call _m3_fault
	.align 16
.L130:
	movl %eax,-4(%ebp)
	addl %edi,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L131
	pushl $3489
	call _m3_fault
	.align 16
.L131:
	movl (%edx),%edx
	addl %edi,%edx
	movl %edx,-8(%ebp)
	movl %ebx,%eax
	subl %edi,%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_M3ID+48,%eax
	call *%eax
	movl %eax,12(%esi)
	leal -20(%ebp),%esp
	movb $33,4(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 QScanner__ReadString,.Lfe7-QScanner__ReadString
	.align 16
	.type	 QScanner__ReadName,@function
QScanner__ReadName:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 28(%ebx),%esi
	jmp .L135
	.align 16
.L136:
	pushl %ebx
	call QScanner__NextChar
	addl $4,%esp
.L135:
	xorl %eax,%eax
	movb 20(%ebx),%al
	cmpb $0,MM_QScanner+192(%eax)
	jne .L136
	movl 36(%ebx),%ecx
	testl %ecx,%ecx
	jne .L138
	pushl $3652
	call _m3_fault
	.align 16
.L138:
	leal -1(%esi),%edx
	testl %edx,%edx
	jge .L139
	pushl $3649
	call _m3_fault
	.align 16
.L139:
	movl 28(%ebx),%eax
	subl %esi,%eax
	jns .L140
	pushl $3649
	call _m3_fault
	.align 16
.L140:
	movl %eax,-4(%ebp)
	addl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L141
	pushl $3649
	call _m3_fault
	.align 16
.L141:
	addl (%ecx),%edx
	movl %edx,-8(%ebp)
	pushl $99999
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_M3ID+48,%eax
	call *%eax
	movl %eax,12(%ebx)
	movb $32,4(%ebx)
	movl MM_QScanner+152,%edx
	addl $8,%esp
	cmpl %eax,%edx
	jg .L134
	cmpl %eax,MM_QScanner+156
	jl .L134
	subl %edx,%eax
	cmpl $31,%eax
	jbe .L143
	pushl $3713
	call _m3_fault
	.align 16
.L143:
	movb MM_QScanner+160(%eax),%al
	movb %al,4(%ebx)
.L134:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 QScanner__ReadName,.Lfe8-QScanner__ReadName
	.align 16
	.type	 M_QScanner_t885c80c9_LINK,@function
M_QScanner_t885c80c9_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_QScanner+848,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_QScanner+448,%eax
	movl %eax,4(%edx)
	movl MM_QScanner+456,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe9:
	.size	 M_QScanner_t885c80c9_LINK,.Lfe9-M_QScanner_t885c80c9_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QScanner
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_QScanner
.data
	.align 4
	.type	 MM_QScanner,@object
	.size	 MM_QScanner,892
MM_QScanner:
	.long MM_QScanner+684
	.long MM_QScanner+44
	.long MM_QScanner+500
	.long MM_QScanner+480
	.zero	4
	.long MM_QScanner+584
	.zero	28
	.long -2007203639
.byte 179
.byte 206
.byte 229
.byte 133
.byte 122
.byte 78
.byte 185
.byte 13
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_QScanner+823
	.long MM_QScanner+830
	.long MM_QScanner+834
	.zero	4
	.long M_QScanner_t885c80c9_LINK
	.long -1601681160
	.zero	12
	.long MM_QScanner+856
	.long MM_QScanner+878
	.zero	304
	.long QScanner__Init
	.long QScanner__InitTables
	.long QScanner__Next
	.long QScanner__NextChar
	.long QScanner__SkipComment
	.long QScanner__ReadCardinal
	.long QScanner__ReadString
	.long QScanner__ReadName
	.long -1601681157
	.long -2007203639
	.zero	4
	.long MI_OSError+44
	.zero	4
	.long MM_QScanner+848
	.long -2020873848
	.ascii	"ReadName"
	.zero	1
	.ascii	"ReadString"
	.zero	1
	.ascii	"ReadCardinal"
	.zero	1
	.ascii	"SkipComment"
	.zero	1
	.ascii	"NextChar"
	.zero	1
	.ascii	"Next"
	.zero	1
	.ascii	"InitTables"
	.zero	1
	.ascii	"Init"
	.zero	2
	.long QScanner__ReadName
	.long MM_QScanner+508
	.zero	4
	.long QScanner__ReadString
	.long MM_QScanner+517
	.zero	4
	.long QScanner__ReadCardinal
	.long MM_QScanner+528
	.zero	4
	.long QScanner__SkipComment
	.long MM_QScanner+541
	.zero	4
	.long QScanner__NextChar
	.long MM_QScanner+553
	.zero	4
	.long QScanner__Next
	.long MM_QScanner+562
	.zero	4
	.long QScanner__InitTables
	.long MM_QScanner+567
	.zero	4
	.long QScanner__Init
	.long MM_QScanner+578
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3qua"
	.ascii	"ke/src/QScanner.m3"
	.zero	1
.byte 16
.byte 36
.byte 14
.byte 14
.byte 14
.byte 4
.byte 0
.byte 42
.byte 16
.byte 4
.byte 0
.byte 6
.byte 10
.byte 5
.byte 4
.byte 7
.byte 24
.byte 24
.byte 16
.byte 136
.byte 233
.byte 139
.byte 135
	.zero	6
	.long -2007203639
	.ascii	"QScanner_^%#%^__0001M"
	.zero	1
	.ascii	"QScanner.T"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
