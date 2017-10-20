	.file	"IntIntTbl.mc"
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
.section	.rodata
	.align 4
.LC0:
	.long 0x4e800000
	.align 4
.LC1:
	.long 0x3f000000
.text
	.align 16
	.type	 IntIntTbl__Init,@function
IntIntTbl__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
.L2:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %edx,%eax
	xorl %edx,%edx
	pushl %edx
	pushl %eax
	fildll (%esp)
	addl $8,%esp
	flds .LC1
	fdivrp %st,%st(1)
	movl $5,-4(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	flds .LC0
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L12
	fstp %st(1)
	jmp .L3
	.align 16
.L12:
	fstp %st(0)
.L3:
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L13
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L6
	incl %edx
	jmp .L6
	.align 16
.L13:
	fstp %st(0)
.L6:
	movl $16,%eax
	cmpl %edx,%eax
	jle .L8
	movl %eax,%edx
.L8:
	testl %edx,%edx
	jge .L10
	pushl $1441
	call _m3_fault
	.align 16
.L10:
	pushl %edx
	call IntIntTbl__Log_2
	movl %eax,4(%ebx)
	pushl %eax
	pushl %ebx
	call IntIntTbl__NewBuckets
	movl $0,24(%ebx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L11:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IntIntTbl__Init,.Lfe1-IntIntTbl__Init
	.align 16
	.type	 IntIntTbl__Get,@function
IntIntTbl__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl (%esi),%eax
	movl 32(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
	movl %eax,-4(%ebp)
	movl 8(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L15
	pushl $1604
	call _m3_fault
	.align 16
.L15:
	movl %eax,%edx
	movl $32,%eax
	movl %eax,%ecx
	subl 12(%esi),%ecx
	cmpl $31,%ecx
	jbe .L16
	pushl $1601
	call _m3_fault
	.align 16
.L16:
	movl 4(%edx),%ebx
	cmpl $31,%ecx
	jg .L18
	movl -4(%ebp),%eax
	imull MM_IntIntTbl+356,%eax
	shrl %cl,%eax
	cmpl %ebx,%eax
	jae .L19
	jmp .L17
	.align 16
.L18:
	testl %ebx,%ebx
	jne .L17
.L19:
	pushl $1602
	call _m3_fault
	.align 16
.L17:
	movl (%edx),%edx
	cmpl $31,%ecx
	jg .L20
	movl -4(%ebp),%eax
	imull MM_IntIntTbl+356,%eax
	shrl %cl,%eax
	leal (%edx,%eax,4),%eax
	jmp .L21
	.align 16
.L20:
	movl %edx,%eax
.L21:
	movl (%eax),%ebx
	jmp .L22
	.align 16
.L23:
	movl 8(%ebx),%ebx
.L22:
	testl %ebx,%ebx
	je .L28
	movl (%esi),%eax
	movl 28(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	je .L23
	movl 16(%ebp),%edi
	movl 4(%ebx),%eax
	movl %eax,(%edi)
	movl $1,%eax
	jmp .L30
	.align 16
.L28:
	movl %ebx,%eax
.L30:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 IntIntTbl__Get,.Lfe2-IntIntTbl__Get
	.align 16
	.type	 IntIntTbl__Put,@function
IntIntTbl__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl (%edi),%eax
	movl 32(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%edx
	movl %eax,%esi
	movl 8(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L32
	pushl $1812
	call _m3_fault
	.align 16
.L32:
	movl %eax,%edx
	movl $32,%eax
	subl 12(%edi),%eax
	movl %eax,-4(%ebp)
	cmpl $31,%eax
	jbe .L33
	pushl $1809
	call _m3_fault
	.align 16
.L33:
	movl 4(%edx),%ebx
	cmpl $31,-4(%ebp)
	jg .L35
	movl %esi,%eax
	imull MM_IntIntTbl+356,%eax
	movl -4(%ebp),%ecx
	shrl %cl,%eax
	cmpl %ebx,%eax
	jae .L36
	jmp .L34
	.align 16
.L35:
	testl %ebx,%ebx
	jne .L34
.L36:
	pushl $1810
	call _m3_fault
	.align 16
.L34:
	movl (%edx),%edx
	cmpl $31,-4(%ebp)
	jg .L37
	movl %esi,%eax
	imull MM_IntIntTbl+356,%eax
	movl -4(%ebp),%ecx
	shrl %cl,%eax
	leal (%edx,%eax,4),%edx
.L37:
	movl %edx,%esi
	movl (%esi),%ebx
	jmp .L38
	.align 16
.L39:
	movl 8(%ebx),%ebx
.L38:
	testl %ebx,%ebx
	je .L44
	movl (%edi),%eax
	movl 28(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	je .L39
	movl 16(%ebp),%ecx
	movl (%ecx),%eax
	movl %eax,4(%ebx)
	movl $1,%eax
	jmp .L47
	.align 16
.L44:
	movl MM_IntIntTbl+524,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl 16(%ebp),%ecx
	addl $4,%esp
	movl (%ecx),%eax
	movl %eax,4(%edx)
	movl (%esi),%eax
	movl %eax,8(%edx)
	movl %edx,(%esi)
	movl 24(%edi),%edx
	incl %edx
	movl %edx,24(%edi)
	movl 12(%edi),%eax
	cmpl $29,%eax
	jg .L46
	cmpl %edx,16(%edi)
	jge .L46
	incl %eax
	pushl %eax
	pushl %edi
	call IntIntTbl__Rehash
.L46:
	xorl %eax,%eax
.L47:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 IntIntTbl__Put,.Lfe3-IntIntTbl__Put
	.align 16
	.type	 IntIntTbl__Delete,@function
IntIntTbl__Delete:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl (%edi),%eax
	movl 32(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%edx
	movl %eax,%esi
	movl 8(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L49
	pushl $2244
	call _m3_fault
	.align 16
.L49:
	movl %eax,%ebx
	movl $32,%eax
	subl 12(%edi),%eax
	movl %eax,-8(%ebp)
	cmpl $31,%eax
	jbe .L50
	pushl $2241
	call _m3_fault
	.align 16
.L50:
	movl 4(%ebx),%edx
	cmpl $31,-8(%ebp)
	jg .L52
	movl %esi,%eax
	imull MM_IntIntTbl+356,%eax
	movl -8(%ebp),%ecx
	shrl %cl,%eax
	cmpl %edx,%eax
	jae .L53
	jmp .L51
	.align 16
.L52:
	testl %edx,%edx
	jne .L51
.L53:
	pushl $2242
	call _m3_fault
	.align 16
.L51:
	movl (%ebx),%edx
	cmpl $31,-8(%ebp)
	jg .L54
	movl %esi,%eax
	imull MM_IntIntTbl+356,%eax
	movl -8(%ebp),%ecx
	shrl %cl,%eax
	leal (%edx,%eax,4),%edx
.L54:
	movl %edx,-4(%ebp)
	movl (%edx),%ebx
	xorl %esi,%esi
	jmp .L55
	.align 16
.L56:
	movl %ebx,%esi
	movl 8(%ebx),%ebx
.L55:
	testl %ebx,%ebx
	je .L61
	movl (%edi),%eax
	movl 28(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	je .L56
	movl 16(%ebp),%ecx
	movl 4(%ebx),%eax
	movl %eax,(%ecx)
	testl %esi,%esi
	jne .L66
	movl -4(%ebp),%ecx
	movl 8(%ebx),%eax
	movl %eax,(%ecx)
	jmp .L65
	.align 16
.L66:
	movl 8(%ebx),%eax
	movl %eax,8(%esi)
.L65:
	movl 24(%edi),%eax
	decl %eax
	jns .L68
	pushl $2497
	call _m3_fault
	.align 16
.L68:
	movl %eax,24(%edi)
	movl 12(%edi),%edx
	cmpl %edx,4(%edi)
	jge .L69
	cmpl %eax,20(%edi)
	jle .L69
	leal -1(%edx),%eax
	testl %eax,%eax
	jge .L70
	pushl $2545
	call _m3_fault
	.align 16
.L70:
	pushl %eax
	pushl %edi
	call IntIntTbl__Rehash
.L69:
	movl $1,%eax
	jmp .L71
	.align 16
.L61:
	movl %ebx,%eax
.L71:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 IntIntTbl__Delete,.Lfe4-IntIntTbl__Delete
	.align 16
	.type	 IntIntTbl__Size,@function
IntIntTbl__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 24(%eax),%eax
	ret
.Lfe5:
	.size	 IntIntTbl__Size,.Lfe5-IntIntTbl__Size
	.align 16
	.type	 IntIntTbl__Iterate,@function
IntIntTbl__Iterate:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_IntIntTbl+532,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebx,4(%eax)
	movl $0,8(%eax)
	movl $0,12(%eax)
	movb $0,16(%eax)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 IntIntTbl__Iterate,.Lfe6-IntIntTbl__Iterate
	.align 16
	.type	 IntIntTbl__KeyHash,@function
IntIntTbl__KeyHash:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Integer+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 IntIntTbl__KeyHash,.Lfe7-IntIntTbl__KeyHash
	.align 16
	.type	 IntIntTbl__KeyEqual,@function
IntIntTbl__KeyEqual:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_Integer+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 IntIntTbl__KeyEqual,.Lfe8-IntIntTbl__KeyEqual
	.align 16
	.type	 IntIntTbl__Log_2,@function
IntIntTbl__Log_2:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl $1,%edx
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L78
	pushl $3200
	call _m3_fault
	.align 16
.L79:
	incl %eax
	addl %edx,%edx
.L78:
	cmpl $29,%eax
	jg .L81
	cmpl %edx,%ecx
	jg .L79
.L81:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 IntIntTbl__Log_2,.Lfe9-IntIntTbl__Log_2
.section	.rodata
	.align 4
.LC2:
	.long 0x3f400000
	.align 4
.LC3:
	.long 0x0,0x3fe00000
	.align 4
.LC4:
	.long 0x3e4ccccd
.text
	.align 16
	.type	 IntIntTbl__NewBuckets,@function
IntIntTbl__NewBuckets:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ebx
.L83:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $31,%ebx
	jle .L99
	pushl $3329
	call _m3_fault
	.align 16
.L99:
	movl $1,%eax
	movl %eax,%esi
	movl %ebx,%ecx
	sall %cl,%esi
	leal -20(%ebp),%edx
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl %eax,-16(%ebp)
	movl %esi,-12(%ebp)
	pushl %edx
	movl MM_IntIntTbl+540,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,8(%edi)
	addl $8,%esp
	testl %eax,%eax
	jne .L87
	pushl $3364
	call _m3_fault
	.align 16
.L87:
	movl %eax,%edx
	movl (%edx),%eax
	movl %eax,-28(%ebp)
	movl 4(%edx),%eax
	movl %eax,-24(%ebp)
	xorl %edx,%edx
	decl %eax
	movl %eax,-40(%ebp)
	jmp .L88
	.align 16
.L89:
	cmpl %edx,-24(%ebp)
	ja .L90
	pushl $3378
	call _m3_fault
	.align 16
.L90:
	movl -28(%ebp),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L88:
	cmpl %edx,-40(%ebp)
	jge .L89
	flds .LC2
	pushl %esi
	fimull (%esp)
	addl $4,%esp
	movl %ebx,12(%edi)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L92
	fldl .LC3
	faddp %st,%st(1)
	jmp .L100
	.align 16
.L92:
	fldl .LC3
	fsubrp %st,%st(1)
.L100:
	fnstcw -32(%ebp)
	movl -32(%ebp),%eax
	movb $12,%ah
	movl %eax,-36(%ebp)
	fldcw -36(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -32(%ebp)
	testl %edx,%edx
	jge .L94
	pushl $3425
	call _m3_fault
	.align 16
.L94:
	flds .LC4
	pushl %esi
	fimull (%esp)
	addl $4,%esp
	movl %edx,16(%edi)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L95
	fldl .LC3
	faddp %st,%st(1)
	jmp .L101
	.align 16
.L95:
	fldl .LC3
	fsubrp %st,%st(1)
.L101:
	fnstcw -32(%ebp)
	movl -32(%ebp),%eax
	movb $12,%ah
	movl %eax,-36(%ebp)
	fldcw -36(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -32(%ebp)
	testl %edx,%edx
	jge .L97
	pushl $3441
	call _m3_fault
	.align 16
.L97:
	movl %edx,20(%edi)
.L98:
	movl -8(%ebp),%eax
	leal -52(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 IntIntTbl__NewBuckets,.Lfe10-IntIntTbl__NewBuckets
	.align 16
	.type	 IntIntTbl__Rehash,@function
IntIntTbl__Rehash:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $30,12(%ebp)
	jle .L103
	pushl $3568
	call _m3_fault
	.align 16
.L103:
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	cmpl %edi,4(%esi)
	jle .L104
	pushl $3584
	call _m3_fault
	.align 16
.L104:
	movl 8(%ebp),%esi
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L105
	pushl $3604
	call _m3_fault
	.align 16
.L105:
	movl %eax,%edx
	movl 12(%ebp),%edi
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	pushl %edi
	movl 8(%ebp),%esi
	pushl %esi
	call IntIntTbl__NewBuckets
	movl 8(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L106
	pushl $3636
	call _m3_fault
	.align 16
.L106:
	movl %eax,%edx
	movl -4(%ebp),%edi
	decl %edi
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl $0,-28(%ebp)
	movl %edi,-20(%ebp)
	jmp .L107
	.align 16
.L108:
	movl -28(%ebp),%esi
	cmpl %esi,-4(%ebp)
	ja .L109
	pushl $3666
	call _m3_fault
	.align 16
.L109:
	movl -8(%ebp),%eax
	movl -28(%ebp),%edi
	leal (%eax,%edi,4),%edx
	movl (%edx),%ebx
	movl $0,(%edx)
	jmp .L110
	.align 16
.L111:
	movl 8(%ebp),%esi
	movl (%esi),%eax
	movl 32(%eax),%edx
	pushl %ebx
	pushl %esi
	call *%edx
	movl %eax,-24(%ebp)
	movl $32,%eax
	movl %eax,%ecx
	subl 12(%ebp),%ecx
	addl $8,%esp
	cmpl $31,%ecx
	jbe .L113
	pushl $3777
	call _m3_fault
	.align 16
.L113:
	movl -12(%ebp),%edx
	cmpl $31,%ecx
	jg .L115
	movl -24(%ebp),%eax
	imull MM_IntIntTbl+356,%eax
	shrl %cl,%eax
	cmpl %edx,%eax
	jae .L116
	jmp .L114
	.align 16
.L115:
	testl %edx,%edx
	jne .L114
.L116:
	pushl $3778
	call _m3_fault
	.align 16
.L114:
	movl -16(%ebp),%edx
	cmpl $31,%ecx
	jg .L117
	movl -24(%ebp),%eax
	imull MM_IntIntTbl+356,%eax
	shrl %cl,%eax
	leal (%edx,%eax,4),%edx
.L117:
	movl %edx,%ecx
	testl %ebx,%ebx
	jne .L118
	pushl $3844
	call _m3_fault
	.align 16
.L118:
	movl 8(%ebx),%edx
	movl (%ecx),%eax
	movl %eax,8(%ebx)
	movl %ebx,(%ecx)
	movl %edx,%ebx
.L110:
	testl %ebx,%ebx
	jne .L111
	incl -28(%ebp)
.L107:
	movl -20(%ebp),%edi
	cmpl %edi,-28(%ebp)
	jle .L108
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 IntIntTbl__Rehash,.Lfe11-IntIntTbl__Rehash
	.align 16
	.type	 IntIntTbl__Next,@function
IntIntTbl__Next:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	jmp .L123
	.align 16
.L124:
	cmpl %ecx,%edx
	jb .L126
	pushl $4194
	call _m3_fault
	.align 16
.L126:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,8(%esi)
	incl 12(%esi)
.L123:
	movl 8(%esi),%ebx
	testl %ebx,%ebx
	jne .L131
	movl 4(%esi),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L128
	pushl $4180
	call _m3_fault
	.align 16
.L128:
	movl 12(%esi),%edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jl .L124
	jmp .L130
	.align 16
.L131:
	movl 12(%ebp),%edi
	movl (%ebx),%eax
	movl %eax,(%edi)
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L132
	pushl $4276
	call _m3_fault
	.align 16
.L132:
	movl 16(%ebp),%edi
	movl 4(%eax),%eax
	movl %eax,(%edi)
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L133
	pushl $4292
	call _m3_fault
	.align 16
.L133:
	movl 8(%eax),%eax
	movl %eax,8(%esi)
	movl $1,%eax
	jmp .L135
	.align 16
.L130:
	cmpb $0,16(%esi)
	je .L134
	pushl $4336
	call _m3_fault
	.align 16
.L134:
	movb $1,16(%esi)
	movl %ebx,%eax
.L135:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 IntIntTbl__Next,.Lfe12-IntIntTbl__Next
	.align 16
	.type	 _INITM_IntIntTbl,@function
_INITM_IntIntTbl:
	pushl %ebp
	movl %esp,%ebp
	movl $-1640531527,MM_IntIntTbl+356
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 _INITM_IntIntTbl,.Lfe13-_INITM_IntIntTbl
	.align 16
	.type	 M_IntIntTbl_tf6610024_LINK,@function
M_IntIntTbl_tf6610024_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_IntIntTbl+532,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_IntIntTbl+508,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe14:
	.size	 M_IntIntTbl_tf6610024_LINK,.Lfe14-M_IntIntTbl_tf6610024_LINK
	.align 16
	.type	 M_IntIntTbl_t9f6a7ddf_LINK,@function
M_IntIntTbl_t9f6a7ddf_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_IntIntTbl+1112,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_IntIntTbl+468,%eax
	movl %eax,4(%edx)
	movl MM_IntIntTbl+472,%eax
	movl %eax,8(%edx)
	movl MM_IntIntTbl+476,%eax
	movl %eax,12(%edx)
	movl MM_IntIntTbl+480,%eax
	movl %eax,16(%edx)
	movl MM_IntIntTbl+484,%eax
	movl %eax,20(%edx)
	movl MM_IntIntTbl+464,%eax
	movl %eax,24(%edx)
	movl MM_IntIntTbl+492,%eax
	movl %eax,28(%edx)
	movl MM_IntIntTbl+488,%eax
	movl %eax,32(%edx)
	popl %ebp
	ret
.Lfe15:
	.size	 M_IntIntTbl_t9f6a7ddf_LINK,.Lfe15-M_IntIntTbl_t9f6a7ddf_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_IntIntTbl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_IntIntTbl
.data
	.align 4
	.type	 MM_IntIntTbl,@object
	.size	 MM_IntIntTbl,1172
MM_IntIntTbl:
	.long MM_IntIntTbl+804
	.long MM_IntIntTbl+44
	.long MM_IntIntTbl+524
	.long MM_IntIntTbl+512
	.zero	4
	.long MM_IntIntTbl+644
	.zero	16
	.long _INITM_IntIntTbl
	.zero	8
	.long -1620410913
.byte 160
.byte 124
.byte 144
.byte 147
.byte 127
.byte 1
.byte 250
.byte 12
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_IntIntTbl+1087
	.long MM_IntIntTbl+1094
	.long MM_IntIntTbl+1097
	.zero	4
	.long M_IntIntTbl_t9f6a7ddf_LINK
	.long 951908834
	.zero	12
	.long MM_IntIntTbl+1120
	.long MM_IntIntTbl+1154
	.long MM_IntIntTbl+148
	.zero	8
	.long -779214290
.byte 174
.byte 8
.byte 104
.byte 200
.byte 128
.byte 42
.byte 230
.byte 25
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_IntIntTbl+1050
	.long MM_IntIntTbl+1054
	.long MM_IntIntTbl+1057
	.zero	28
	.long MM_IntIntTbl+1067
	.long MM_IntIntTbl+252
	.zero	8
	.long 834299083
.byte 196
.byte 19
.byte 137
.byte 32
.byte 15
.byte 119
.byte 51
.byte 17
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_IntIntTbl+1032
	.long MM_IntIntTbl+1037
	.long MM_IntIntTbl+1042
	.zero	32
	.long MM_IntIntTbl+360
	.zero	12
	.long -161415132
.byte 139
.byte 18
.byte 194
.byte 236
.byte 175
.byte 18
.byte 163
.byte 26
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_IntIntTbl+960
	.long MM_IntIntTbl+965
	.long MM_IntIntTbl+968
	.zero	4
	.long M_IntIntTbl_tf6610024_LINK
	.long -725165231
	.zero	12
	.long MM_IntIntTbl+983
	.long MM_IntIntTbl+1006
	.zero	4
	.long IntIntTbl__Init
	.long IntIntTbl__Get
	.long IntIntTbl__Put
	.long IntIntTbl__Delete
	.long IntIntTbl__Size
	.long IntIntTbl__Iterate
	.long IntIntTbl__KeyHash
	.long IntIntTbl__KeyEqual
	.long IntIntTbl__Log_2
	.long IntIntTbl__NewBuckets
	.long IntIntTbl__Rehash
	.long IntIntTbl__Next
	.long 951908833
	.long -1620410913
	.zero	4
	.long MM_IntIntTbl+532
	.long -779214290
	.long MM_IntIntTbl+540
	.long -161415132
	.long MM_IntIntTbl+1112
	.long 834299083
	.ascii	"_INITM_IntIntTbl"
	.zero	1
	.ascii	"Next"
	.zero	1
	.ascii	"Rehash"
	.zero	1
	.ascii	"NewBuckets"
	.zero	1
	.ascii	"Log_2"
	.zero	1
	.ascii	"KeyEqual"
	.zero	1
	.ascii	"KeyHash"
	.zero	1
	.ascii	"Iterate"
	.zero	1
	.ascii	"Size"
	.zero	1
	.ascii	"Delete"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Init"
	.zero	1
	.long _INITM_IntIntTbl
	.long MM_IntIntTbl+548
	.zero	4
	.long IntIntTbl__Next
	.long MM_IntIntTbl+565
	.zero	4
	.long IntIntTbl__Rehash
	.long MM_IntIntTbl+570
	.zero	4
	.long IntIntTbl__NewBuckets
	.long MM_IntIntTbl+577
	.zero	4
	.long IntIntTbl__Log_2
	.long MM_IntIntTbl+588
	.zero	4
	.long IntIntTbl__KeyEqual
	.long MM_IntIntTbl+594
	.zero	4
	.long IntIntTbl__KeyHash
	.long MM_IntIntTbl+603
	.zero	4
	.long IntIntTbl__Iterate
	.long MM_IntIntTbl+611
	.zero	4
	.long IntIntTbl__Size
	.long MM_IntIntTbl+619
	.zero	4
	.long IntIntTbl__Delete
	.long MM_IntIntTbl+624
	.zero	4
	.long IntIntTbl__Put
	.long MM_IntIntTbl+631
	.zero	4
	.long IntIntTbl__Get
	.long MM_IntIntTbl+635
	.zero	4
	.long IntIntTbl__Init
	.long MM_IntIntTbl+639
	.zero	8
	.ascii	"IntIntTbl.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/mo"
	.ascii	"dula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-"
	.ascii	"LINUXLIBC6/libm3/src/table/Table.mg"
	.zero	1
.byte 4
.byte 4
.byte 18
.byte 16
.byte 0
.byte 4
.byte 4
.byte 0
.byte 5
.byte 10
.byte 4
.byte 16
.byte 225
.byte 249
.byte 188
.byte 56
.byte 16
.byte 46
.byte 34
.byte 142
.byte 209
.byte 3
.byte 2
	.ascii	"IntIntTbl_^%#%^__0001M"
	.zero	1
	.ascii	"IntIntTbl.DefaultIterator"
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
.byte 46
.byte 34
.byte 142
.byte 209
.byte 14
.byte 14
.byte 4
.byte 0
.byte 41
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 7
.byte 23
.byte 16
.byte 46
.byte 34
.byte 142
.byte 209
	.ascii	"IntIntTbl.EntryList"
	.zero	1
.byte 18
.byte 4
.byte 18
.byte 18
.byte 18
.byte 18
.byte 0
.byte 37
.byte 4
.byte 0
.byte 7
.byte 10
.byte 6
.byte 3
.byte 16
.byte 203
.byte 100
.byte 186
.byte 49
.byte 23
.byte 23
.byte 23
.byte 23
	.zero	6
	.long -1620410913
	.ascii	"(Default (Table Integer Integer))"
	.zero	1
	.ascii	"IntIntTbl.Default"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
