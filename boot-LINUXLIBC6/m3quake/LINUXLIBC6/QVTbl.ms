	.file	"QVTbl.mc"
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
	.type	 QVTbl__Init,@function
QVTbl__Init:
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
	call QVTbl__Log_2
	movl %eax,4(%ebx)
	pushl %eax
	pushl %ebx
	call QVTbl__NewBuckets
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
	.size	 QVTbl__Init,.Lfe1-QVTbl__Init
	.align 16
	.type	 QVTbl__Get,@function
QVTbl__Get:
	pushl %ebp
	movl %esp,%ebp
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
	movl %eax,%edi
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
	movl %edi,%eax
	imull MM_QVTbl+356,%eax
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
	movl %edi,%eax
	imull MM_QVTbl+356,%eax
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
	movl 16(%ebx),%ebx
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
	movl 16(%ebp),%edx
	movl 4(%ebx),%eax
	movl %eax,(%edx)
	movl 8(%ebx),%eax
	movl %eax,4(%edx)
	movl 12(%ebx),%eax
	movl %eax,8(%edx)
	movl $1,%eax
	jmp .L30
	.align 16
.L28:
	movl %ebx,%eax
.L30:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QVTbl__Get,.Lfe2-QVTbl__Get
	.align 16
	.type	 QVTbl__Put,@function
QVTbl__Put:
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
	movl %eax,-4(%ebp)
	movl $32,%eax
	movl %eax,%edx
	subl 12(%edi),%edx
	cmpl $31,%edx
	jbe .L33
	pushl $1809
	call _m3_fault
	.align 16
.L33:
	movl -4(%ebp),%ecx
	movl 4(%ecx),%ebx
	cmpl $31,%edx
	jg .L35
	movl %esi,%eax
	imull MM_QVTbl+356,%eax
	movl %edx,%ecx
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
	movl -4(%ebp),%ecx
	movl (%ecx),%ecx
	movl %ecx,-4(%ebp)
	cmpl $31,%edx
	jg .L37
	movl %esi,%eax
	imull MM_QVTbl+356,%eax
	movl %edx,%ecx
	shrl %cl,%eax
	movl -4(%ebp),%ecx
	leal (%ecx,%eax,4),%ecx
	movl %ecx,-4(%ebp)
.L37:
	movl -4(%ebp),%esi
	movl (%esi),%ebx
	jmp .L38
	.align 16
.L39:
	movl 16(%ebx),%ebx
.L38:
	testl %ebx,%ebx
	je .L44
	movl (%edi),%eax
	movl 28(%eax),%eax
	movl %eax,-4(%ebp)
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	movl -4(%ebp),%ecx
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	je .L39
	movl 16(%ebp),%edx
	movl (%edx),%eax
	movl %eax,4(%ebx)
	movl 4(%edx),%eax
	movl %eax,8(%ebx)
	movl 8(%edx),%eax
	movl %eax,12(%ebx)
	movl $1,%eax
	jmp .L47
	.align 16
.L44:
	movl MM_QVTbl+524,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl 12(%ebp),%eax
	movl -4(%ebp),%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl 16(%ebp),%edx
	addl $4,%esp
	movl (%edx),%eax
	movl %eax,4(%ecx)
	movl 4(%edx),%eax
	movl %eax,8(%ecx)
	movl 8(%edx),%eax
	movl %eax,12(%ecx)
	movl %ecx,-4(%ebp)
	movl (%esi),%eax
	movl %eax,16(%ecx)
	movl -4(%ebp),%ecx
	movl %ecx,(%esi)
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
	call QVTbl__Rehash
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
	.size	 QVTbl__Put,.Lfe3-QVTbl__Put
	.align 16
	.type	 QVTbl__Delete,@function
QVTbl__Delete:
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
	imull MM_QVTbl+356,%eax
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
	imull MM_QVTbl+356,%eax
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
	movl 16(%ebx),%ebx
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
	movl 16(%ebp),%edx
	movl 4(%ebx),%eax
	movl %eax,(%edx)
	movl 8(%ebx),%eax
	movl %eax,4(%edx)
	movl 12(%ebx),%eax
	movl %eax,8(%edx)
	testl %esi,%esi
	jne .L66
	movl -4(%ebp),%ecx
	movl 16(%ebx),%eax
	movl %eax,(%ecx)
	jmp .L65
	.align 16
.L66:
	movl 16(%ebx),%eax
	movl %eax,16(%esi)
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
	call QVTbl__Rehash
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
	.size	 QVTbl__Delete,.Lfe4-QVTbl__Delete
	.align 16
	.type	 QVTbl__Size,@function
QVTbl__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 24(%eax),%eax
	ret
.Lfe5:
	.size	 QVTbl__Size,.Lfe5-QVTbl__Size
	.align 16
	.type	 QVTbl__Iterate,@function
QVTbl__Iterate:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_QVTbl+532,%eax
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
	.size	 QVTbl__Iterate,.Lfe6-QVTbl__Iterate
	.align 16
	.type	 QVTbl__KeyHash,@function
QVTbl__KeyHash:
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
	.size	 QVTbl__KeyHash,.Lfe7-QVTbl__KeyHash
	.align 16
	.type	 QVTbl__KeyEqual,@function
QVTbl__KeyEqual:
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
	.size	 QVTbl__KeyEqual,.Lfe8-QVTbl__KeyEqual
	.align 16
	.type	 QVTbl__Log_2,@function
QVTbl__Log_2:
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
	.size	 QVTbl__Log_2,.Lfe9-QVTbl__Log_2
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
	.type	 QVTbl__NewBuckets,@function
QVTbl__NewBuckets:
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
	movl MM_QVTbl+540,%eax
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
	.size	 QVTbl__NewBuckets,.Lfe10-QVTbl__NewBuckets
	.align 16
	.type	 QVTbl__Rehash,@function
QVTbl__Rehash:
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
	call QVTbl__NewBuckets
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
	imull MM_QVTbl+356,%eax
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
	imull MM_QVTbl+356,%eax
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
	movl 16(%ebx),%edx
	movl (%ecx),%eax
	movl %eax,16(%ebx)
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
	.size	 QVTbl__Rehash,.Lfe11-QVTbl__Rehash
	.align 16
	.type	 QVTbl__Next,@function
QVTbl__Next:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
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
	movl (%ebx),%eax
	movl %eax,(%edi)
	movl 8(%esi),%ecx
	testl %ecx,%ecx
	jne .L132
	pushl $4276
	call _m3_fault
	.align 16
.L132:
	movl 16(%ebp),%edx
	movl 4(%ecx),%eax
	movl %eax,(%edx)
	movl 8(%ecx),%eax
	movl %eax,4(%edx)
	movl 12(%ecx),%eax
	movl %eax,8(%edx)
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L133
	pushl $4292
	call _m3_fault
	.align 16
.L133:
	movl 16(%eax),%eax
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
	.size	 QVTbl__Next,.Lfe12-QVTbl__Next
	.align 16
	.type	 _INITM_QVTbl,@function
_INITM_QVTbl:
	pushl %ebp
	movl %esp,%ebp
	movl $-1640531527,MM_QVTbl+356
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 _INITM_QVTbl,.Lfe13-_INITM_QVTbl
	.align 16
	.type	 M_QVTbl_t29baea25_LINK,@function
M_QVTbl_t29baea25_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_QVTbl+532,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_QVTbl+508,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe14:
	.size	 M_QVTbl_t29baea25_LINK,.Lfe14-M_QVTbl_t29baea25_LINK
	.align 16
	.type	 M_QVTbl_t70d60356_LINK,@function
M_QVTbl_t70d60356_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_QVTbl+992,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_QVTbl+468,%eax
	movl %eax,4(%edx)
	movl MM_QVTbl+472,%eax
	movl %eax,8(%edx)
	movl MM_QVTbl+476,%eax
	movl %eax,12(%edx)
	movl MM_QVTbl+480,%eax
	movl %eax,16(%edx)
	movl MM_QVTbl+484,%eax
	movl %eax,20(%edx)
	movl MM_QVTbl+464,%eax
	movl %eax,24(%edx)
	movl MM_QVTbl+492,%eax
	movl %eax,28(%edx)
	movl MM_QVTbl+488,%eax
	movl %eax,32(%edx)
	popl %ebp
	ret
.Lfe15:
	.size	 M_QVTbl_t70d60356_LINK,.Lfe15-M_QVTbl_t70d60356_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QVTbl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_QVTbl
.data
	.align 4
	.type	 MM_QVTbl,@object
	.size	 MM_QVTbl,1052
MM_QVTbl:
	.long MM_QVTbl+800
	.long MM_QVTbl+44
	.long MM_QVTbl+524
	.long MM_QVTbl+512
	.zero	4
	.long MM_QVTbl+640
	.zero	16
	.long _INITM_QVTbl
	.zero	8
	.long 1893073750
.byte 99
.byte 162
.byte 70
.byte 122
.byte 53
.byte 161
.byte 144
.byte 10
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_QVTbl+968
	.long MM_QVTbl+975
	.long MM_QVTbl+978
	.zero	4
	.long M_QVTbl_t70d60356_LINK
	.long 1486429961
	.zero	12
	.long MM_QVTbl+1000
	.long MM_QVTbl+1035
	.long MM_QVTbl+148
	.zero	8
	.long 1119454613
.byte 193
.byte 99
.byte 231
.byte 74
.byte 84
.byte 230
.byte 94
.byte 8
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_QVTbl+925
	.long MM_QVTbl+932
	.long MM_QVTbl+937
	.zero	28
	.long MM_QVTbl+952
	.long MM_QVTbl+252
	.zero	8
	.long -1646314877
.byte 105
.byte 217
.byte 131
.byte 156
.byte 234
.byte 227
.byte 92
.byte 1
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_QVTbl+907
	.long MM_QVTbl+912
	.long MM_QVTbl+917
	.zero	32
	.long MM_QVTbl+360
	.zero	12
	.long 700115493
.byte 89
.byte 137
.byte 202
.byte 39
.byte 124
.byte 99
.byte 112
.byte 14
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_QVTbl+843
	.long MM_QVTbl+848
	.long MM_QVTbl+851
	.zero	4
	.long M_QVTbl_t29baea25_LINK
	.long -1802554677
	.zero	12
	.long MM_QVTbl+866
	.long MM_QVTbl+885
	.zero	4
	.long QVTbl__Init
	.long QVTbl__Get
	.long QVTbl__Put
	.long QVTbl__Delete
	.long QVTbl__Size
	.long QVTbl__Iterate
	.long QVTbl__KeyHash
	.long QVTbl__KeyEqual
	.long QVTbl__Log_2
	.long QVTbl__NewBuckets
	.long QVTbl__Rehash
	.long QVTbl__Next
	.long 1486429962
	.long 1893073750
	.zero	4
	.long MM_QVTbl+532
	.long 1119454613
	.long MM_QVTbl+540
	.long 700115493
	.long MM_QVTbl+992
	.long -1646314877
	.ascii	"_INITM_QVTbl"
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
	.long _INITM_QVTbl
	.long MM_QVTbl+548
	.zero	4
	.long QVTbl__Next
	.long MM_QVTbl+561
	.zero	4
	.long QVTbl__Rehash
	.long MM_QVTbl+566
	.zero	4
	.long QVTbl__NewBuckets
	.long MM_QVTbl+573
	.zero	4
	.long QVTbl__Log_2
	.long MM_QVTbl+584
	.zero	4
	.long QVTbl__KeyEqual
	.long MM_QVTbl+590
	.zero	4
	.long QVTbl__KeyHash
	.long MM_QVTbl+599
	.zero	4
	.long QVTbl__Iterate
	.long MM_QVTbl+607
	.zero	4
	.long QVTbl__Size
	.long MM_QVTbl+615
	.zero	4
	.long QVTbl__Delete
	.long MM_QVTbl+620
	.zero	4
	.long QVTbl__Put
	.long MM_QVTbl+627
	.zero	4
	.long QVTbl__Get
	.long MM_QVTbl+631
	.zero	4
	.long QVTbl__Init
	.long MM_QVTbl+635
	.zero	8
	.ascii	"QVTbl.m3 => ../../libm3/src/table/Table.mg"
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
.byte 10
.byte 31
.byte 153
.byte 88
.byte 16
.byte 149
.byte 133
.byte 185
.byte 66
.byte 3
.byte 2
	.ascii	"QVTbl_^%#%^__0001M"
	.zero	1
	.ascii	"QVTbl.DefaultIterator"
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
.byte 149
.byte 133
.byte 185
.byte 66
.byte 14
.byte 16
.byte 36
.byte 14
.byte 4
.byte 4
.byte 0
.byte 42
.byte 12
.byte 4
.byte 4
.byte 0
.byte 7
.byte 15
.byte 3
.byte 7
.byte 15
.byte 3
.byte 5
.byte 6
.byte 23
.byte 17
.byte 16
.byte 149
.byte 133
.byte 185
.byte 66
	.ascii	"QVTbl.EntryList"
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
.byte 131
.byte 58
.byte 223
.byte 157
.byte 23
.byte 23
.byte 23
.byte 23
	.zero	5
	.long 1893073750
	.ascii	"(Default (Table Integer QValue.T))"
	.zero	1
	.ascii	"QVTbl.Default"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
