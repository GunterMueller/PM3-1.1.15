	.file	"AtomRefTbl.mc"
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
	.type	 AtomRefTbl__Init,@function
AtomRefTbl__Init:
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
	call AtomRefTbl__Log_2
	movl %eax,4(%ebx)
	pushl %eax
	pushl %ebx
	call AtomRefTbl__NewBuckets
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
	.size	 AtomRefTbl__Init,.Lfe1-AtomRefTbl__Init
	.align 16
	.type	 AtomRefTbl__Get,@function
AtomRefTbl__Get:
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
	imull MM_AtomRefTbl+356,%eax
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
	imull MM_AtomRefTbl+356,%eax
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
	.size	 AtomRefTbl__Get,.Lfe2-AtomRefTbl__Get
	.align 16
	.type	 AtomRefTbl__Put,@function
AtomRefTbl__Put:
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
	movl %eax,%ebx
	movl $32,%eax
	subl 12(%edi),%eax
	movl %eax,-4(%ebp)
	cmpl $31,%eax
	jbe .L33
	pushl $1809
	call _m3_fault
	.align 16
.L33:
	movl 4(%ebx),%edx
	cmpl $31,-4(%ebp)
	jg .L35
	movl %esi,%eax
	imull MM_AtomRefTbl+356,%eax
	movl -4(%ebp),%ecx
	shrl %cl,%eax
	cmpl %edx,%eax
	jae .L36
	jmp .L34
	.align 16
.L35:
	testl %edx,%edx
	jne .L34
.L36:
	pushl $1810
	call _m3_fault
	.align 16
.L34:
	movl (%ebx),%edx
	cmpl $31,-4(%ebp)
	jg .L37
	movl %esi,%eax
	imull MM_AtomRefTbl+356,%eax
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
	movl MM_AtomRefTbl+524,%eax
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
	call AtomRefTbl__Rehash
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
	.size	 AtomRefTbl__Put,.Lfe3-AtomRefTbl__Put
	.align 16
	.type	 AtomRefTbl__Delete,@function
AtomRefTbl__Delete:
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
	imull MM_AtomRefTbl+356,%eax
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
	imull MM_AtomRefTbl+356,%eax
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
	call AtomRefTbl__Rehash
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
	.size	 AtomRefTbl__Delete,.Lfe4-AtomRefTbl__Delete
	.align 16
	.type	 AtomRefTbl__Size,@function
AtomRefTbl__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 24(%eax),%eax
	ret
.Lfe5:
	.size	 AtomRefTbl__Size,.Lfe5-AtomRefTbl__Size
	.align 16
	.type	 AtomRefTbl__Iterate,@function
AtomRefTbl__Iterate:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_AtomRefTbl+532,%eax
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
	.size	 AtomRefTbl__Iterate,.Lfe6-AtomRefTbl__Iterate
	.align 16
	.type	 AtomRefTbl__KeyHash,@function
AtomRefTbl__KeyHash:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Atom+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 AtomRefTbl__KeyHash,.Lfe7-AtomRefTbl__KeyHash
	.align 16
	.type	 AtomRefTbl__KeyEqual,@function
AtomRefTbl__KeyEqual:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_Atom+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 AtomRefTbl__KeyEqual,.Lfe8-AtomRefTbl__KeyEqual
	.align 16
	.type	 AtomRefTbl__Log_2,@function
AtomRefTbl__Log_2:
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
	.size	 AtomRefTbl__Log_2,.Lfe9-AtomRefTbl__Log_2
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
	.type	 AtomRefTbl__NewBuckets,@function
AtomRefTbl__NewBuckets:
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
	movl MM_AtomRefTbl+540,%eax
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
	.size	 AtomRefTbl__NewBuckets,.Lfe10-AtomRefTbl__NewBuckets
	.align 16
	.type	 AtomRefTbl__Rehash,@function
AtomRefTbl__Rehash:
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
	call AtomRefTbl__NewBuckets
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
	imull MM_AtomRefTbl+356,%eax
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
	imull MM_AtomRefTbl+356,%eax
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
	.size	 AtomRefTbl__Rehash,.Lfe11-AtomRefTbl__Rehash
	.align 16
	.type	 AtomRefTbl__Next,@function
AtomRefTbl__Next:
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
	.size	 AtomRefTbl__Next,.Lfe12-AtomRefTbl__Next
	.align 16
	.type	 _INITM_AtomRefTbl,@function
_INITM_AtomRefTbl:
	pushl %ebp
	movl %esp,%ebp
	movl $-1640531527,MM_AtomRefTbl+356
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 _INITM_AtomRefTbl,.Lfe13-_INITM_AtomRefTbl
	.align 16
	.type	 M_AtomRefTbl_ta9c228a8_LINK,@function
M_AtomRefTbl_ta9c228a8_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AtomRefTbl+532,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_AtomRefTbl+508,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe14:
	.size	 M_AtomRefTbl_ta9c228a8_LINK,.Lfe14-M_AtomRefTbl_ta9c228a8_LINK
	.align 16
	.type	 M_AtomRefTbl_t389a14b0_LINK,@function
M_AtomRefTbl_t389a14b0_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AtomRefTbl+1124,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_AtomRefTbl+468,%eax
	movl %eax,4(%edx)
	movl MM_AtomRefTbl+472,%eax
	movl %eax,8(%edx)
	movl MM_AtomRefTbl+476,%eax
	movl %eax,12(%edx)
	movl MM_AtomRefTbl+480,%eax
	movl %eax,16(%edx)
	movl MM_AtomRefTbl+484,%eax
	movl %eax,20(%edx)
	movl MM_AtomRefTbl+464,%eax
	movl %eax,24(%edx)
	movl MM_AtomRefTbl+492,%eax
	movl %eax,28(%edx)
	movl MM_AtomRefTbl+488,%eax
	movl %eax,32(%edx)
	popl %ebp
	ret
.Lfe15:
	.size	 M_AtomRefTbl_t389a14b0_LINK,.Lfe15-M_AtomRefTbl_t389a14b0_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AtomRefTbl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_AtomRefTbl
.data
	.align 4
	.type	 MM_AtomRefTbl,@object
	.size	 MM_AtomRefTbl,1188
MM_AtomRefTbl:
	.long MM_AtomRefTbl+808
	.long MM_AtomRefTbl+44
	.long MM_AtomRefTbl+524
	.long MM_AtomRefTbl+512
	.zero	4
	.long MM_AtomRefTbl+648
	.zero	16
	.long _INITM_AtomRefTbl
	.zero	8
	.long 949621936
.byte 37
.byte 118
.byte 29
.byte 33
.byte 149
.byte 98
.byte 135
.byte 25
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AtomRefTbl+1100
	.long MM_AtomRefTbl+1107
	.long MM_AtomRefTbl+1110
	.zero	4
	.long M_AtomRefTbl_t389a14b0_LINK
	.long 1877364042
	.zero	12
	.long MM_AtomRefTbl+1132
	.long MM_AtomRefTbl+1166
	.long MM_AtomRefTbl+148
	.zero	8
	.long 1547975013
.byte 148
.byte 37
.byte 200
.byte 66
.byte 241
.byte 28
.byte 140
.byte 30
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_AtomRefTbl+1057
	.long MM_AtomRefTbl+1061
	.long MM_AtomRefTbl+1065
	.zero	28
	.long MM_AtomRefTbl+1079
	.long MM_AtomRefTbl+252
	.zero	8
	.long 689939720
.byte 131
.byte 77
.byte 159
.byte 63
.byte 139
.byte 232
.byte 128
.byte 22
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_AtomRefTbl+1039
	.long MM_AtomRefTbl+1044
	.long MM_AtomRefTbl+1049
	.zero	32
	.long MM_AtomRefTbl+360
	.zero	12
	.long -1446893400
.byte 71
.byte 108
.byte 7
.byte 166
.byte 239
.byte 68
.byte 197
.byte 15
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AtomRefTbl+965
	.long MM_AtomRefTbl+970
	.long MM_AtomRefTbl+973
	.zero	4
	.long M_AtomRefTbl_ta9c228a8_LINK
	.long -886137333
	.zero	12
	.long MM_AtomRefTbl+988
	.long MM_AtomRefTbl+1012
	.zero	4
	.long AtomRefTbl__Init
	.long AtomRefTbl__Get
	.long AtomRefTbl__Put
	.long AtomRefTbl__Delete
	.long AtomRefTbl__Size
	.long AtomRefTbl__Iterate
	.long AtomRefTbl__KeyHash
	.long AtomRefTbl__KeyEqual
	.long AtomRefTbl__Log_2
	.long AtomRefTbl__NewBuckets
	.long AtomRefTbl__Rehash
	.long AtomRefTbl__Next
	.long 1877364041
	.long 949621936
	.zero	4
	.long MM_AtomRefTbl+532
	.long 1547975013
	.long MM_AtomRefTbl+540
	.long -1446893400
	.long MM_AtomRefTbl+1124
	.long 689939720
	.ascii	"_INITM_AtomRefTbl"
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
	.zero	4
	.long _INITM_AtomRefTbl
	.long MM_AtomRefTbl+548
	.zero	4
	.long AtomRefTbl__Next
	.long MM_AtomRefTbl+566
	.zero	4
	.long AtomRefTbl__Rehash
	.long MM_AtomRefTbl+571
	.zero	4
	.long AtomRefTbl__NewBuckets
	.long MM_AtomRefTbl+578
	.zero	4
	.long AtomRefTbl__Log_2
	.long MM_AtomRefTbl+589
	.zero	4
	.long AtomRefTbl__KeyEqual
	.long MM_AtomRefTbl+595
	.zero	4
	.long AtomRefTbl__KeyHash
	.long MM_AtomRefTbl+604
	.zero	4
	.long AtomRefTbl__Iterate
	.long MM_AtomRefTbl+612
	.zero	4
	.long AtomRefTbl__Size
	.long MM_AtomRefTbl+620
	.zero	4
	.long AtomRefTbl__Delete
	.long MM_AtomRefTbl+625
	.zero	4
	.long AtomRefTbl__Put
	.long MM_AtomRefTbl+632
	.zero	4
	.long AtomRefTbl__Get
	.long MM_AtomRefTbl+636
	.zero	4
	.long AtomRefTbl__Init
	.long MM_AtomRefTbl+640
	.zero	8
	.ascii	"AtomRefTbl.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/m"
	.ascii	"odula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot"
	.ascii	"-LINUXLIBC6/libm3/src/table/Table.mg"
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
.byte 73
.byte 77
.byte 230
.byte 111
.byte 16
.byte 101
.byte 57
.byte 68
.byte 92
.byte 3
.byte 2
	.ascii	"AtomRefTbl_^%#%^__0001M"
	.zero	1
	.ascii	"AtomRefTbl.DefaultIterator"
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
.byte 101
.byte 57
.byte 68
.byte 92
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 16
.byte 14
.byte 221
.byte 217
.byte 209
.byte 17
.byte 16
.byte 101
.byte 57
.byte 68
.byte 92
	.ascii	"AtomRefTbl.EntryList"
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
.byte 8
.byte 165
.byte 31
.byte 41
.byte 23
.byte 23
.byte 23
.byte 23
	.zero	5
	.long 949621936
	.ascii	"(Default (Table Atom-1.0 Refany))"
	.zero	1
	.ascii	"AtomRefTbl.Default"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
