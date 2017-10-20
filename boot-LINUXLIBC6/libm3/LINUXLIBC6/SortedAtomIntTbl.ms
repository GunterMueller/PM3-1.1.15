	.file	"SortedAtomIntTbl.mc"
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
	.type	 SortedAtomIntTbl__KeyCompare,@function
SortedAtomIntTbl__KeyCompare:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_Atom+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 SortedAtomIntTbl__KeyCompare,.Lfe1-SortedAtomIntTbl__KeyCompare
	.align 16
	.type	 SortedAtomIntTbl__Init,@function
SortedAtomIntTbl__Init:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_SortedAtomIntTbl+424,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%eax
	pushl $0
	pushl %edx
	call *%eax
	movl %eax,8(%ebx)
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,16(%ebx)
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,20(%ebx)
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,24(%ebx)
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl $2147483647,16(%eax)
	movl %eax,4(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 SortedAtomIntTbl__Init,.Lfe2-SortedAtomIntTbl__Init
	.align 16
	.type	 SortedAtomIntTbl__Get,@function
SortedAtomIntTbl__Get:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%ebp),%edi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L4
	pushl $2196
	call _m3_fault
	.align 16
.L4:
	movl 12(%eax),%ebx
	jmp .L5
	.align 16
.L6:
	movl (%esi),%eax
	movl 32(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
	addl $12,%esp
	testb %al,%al
	jne .L10
	movl 4(%ebx),%eax
	movl %eax,(%edi)
	movl $1,%eax
	jmp .L12
	.align 16
.L10:
	movsbl %al,%eax
	movb MM_SortedAtomIntTbl+45(%eax),%al
	andl $255,%eax
	movl 8(%ebx,%eax,4),%ebx
.L5:
	testl %ebx,%ebx
	jne .L6
	movl %ebx,%eax
.L12:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 SortedAtomIntTbl__Get,.Lfe3-SortedAtomIntTbl__Get
	.align 16
	.type	 SortedAtomIntTbl__SplitNode,@function
SortedAtomIntTbl__SplitNode:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl 8(%ebp),%ecx
	movb $0,-4(%ebp)
	movl 16(%ecx),%edi
	movl 20(%ecx),%esi
	jmp .L14
	.align 16
.L15:
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 32(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %ecx
	call *%edx
	addl $12,%esp
	cmpl $-1,%eax
	jle .L17
	testl %eax,%eax
	jle .L18
	cmpl $1,%eax
	jle .L19
.L17:
	testl %edi,%edi
	jne .L20
	pushl $2724
	call _m3_fault
	.align 16
.L20:
	movl %ebx,12(%edi)
	movl %ebx,%edi
	movl 12(%ebx),%ebx
	jmp .L14
	.align 16
.L18:
	movb $1,-4(%ebp)
	testl %esi,%esi
	jne .L23
	pushl $2772
	call _m3_fault
	.align 16
.L23:
	movl 12(%ebx),%eax
	movl %eax,8(%esi)
	jmp .L34
	.align 16
.L19:
	testl %esi,%esi
	jne .L26
	pushl $2804
	call _m3_fault
	.align 16
.L26:
	movl %ebx,8(%esi)
.L34:
	movl %ebx,%esi
	movl 8(%ebx),%ebx
.L14:
	testl %ebx,%ebx
	jne .L15
	testl %edi,%edi
	jne .L30
	pushl $2868
	call _m3_fault
	.align 16
.L30:
	movl %ebx,12(%edi)
	testl %esi,%esi
	jne .L31
	pushl $2884
	call _m3_fault
	.align 16
.L31:
	movl %ebx,8(%esi)
	movl 8(%ebp),%ecx
	movl 16(%ecx),%eax
	testl %eax,%eax
	jne .L32
	pushl $2900
	call _m3_fault
	.align 16
.L32:
	movl 20(%ebp),%ecx
	movl 12(%eax),%eax
	movl %eax,(%ecx)
	movl 8(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L33
	pushl $2916
	call _m3_fault
	.align 16
.L33:
	movl 8(%eax),%eax
	movl 24(%ebp),%ecx
	leal -16(%ebp),%esp
	movl %eax,(%ecx)
	xorl %eax,%eax
	movb -4(%ebp),%al
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 SortedAtomIntTbl__SplitNode,.Lfe4-SortedAtomIntTbl__SplitNode
	.align 16
	.type	 SortedAtomIntTbl__Put,@function
SortedAtomIntTbl__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movb $1,-8(%ebp)
	movl 4(%ecx),%edi
	testl %edi,%edi
	jne .L36
	pushl $3044
	call _m3_fault
	.align 16
.L36:
	movl 8(%ebp),%ecx
	movl 8(%ecx),%edx
	movl (%edx),%eax
	movl 12(%edi),%esi
	movl 4(%eax),%ebx
	pushl $2147483647
	pushl $0
	pushl %edx
	call *%ebx
	movl %eax,%ebx
	movl %ebx,-4(%ebp)
	addl $12,%esp
	jmp .L37
	.align 16
.L38:
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 32(%eax),%ebx
	pushl %esi
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl %eax,%ebx
	movb %bl,-8(%ebp)
	addl $12,%esp
	testb %bl,%bl
	jne .L40
	movl 16(%ebp),%ecx
	movl (%ecx),%eax
	movl %eax,4(%esi)
	movl $1,%eax
	jmp .L51
	.align 16
.L40:
	movsbl -8(%ebp),%eax
	movl %esi,%edi
	movb MM_SortedAtomIntTbl+45(%eax),%al
	andl $255,%eax
	movl 8(%edi,%eax,4),%esi
.L37:
	testl %esi,%esi
	je .L45
	movl -4(%ebp),%ecx
	cmpl %ecx,16(%esi)
	jg .L38
.L45:
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	xorl %ebx,%ebx
	movl (%eax),%eax
	movl %eax,(%edx)
	movl 16(%ebp),%ecx
	addl $4,%esp
	movl (%ecx),%eax
	movl %eax,4(%edx)
	movl -4(%ebp),%ecx
	movl %ecx,16(%edx)
	movl %edx,-12(%ebp)
	testl %esi,%esi
	je .L46
	testl %edx,%edx
	jne .L48
	pushl $3252
	call _m3_fault
	.align 16
.L48:
	leal 12(%edx),%eax
	pushl %eax
	leal 8(%edx),%eax
	pushl %eax
	pushl %esi
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call SortedAtomIntTbl__SplitNode
	addl $20,%esp
	testl %eax,%eax
	je .L46
	movl $1,%ebx
.L46:
	movb %bl,%dl
	testb %dl,%dl
	jne .L49
	movl 8(%ebp),%ecx
	incl 12(%ecx)
.L49:
	testl %edi,%edi
	jne .L50
	pushl $3300
	call _m3_fault
	.align 16
.L50:
	movsbl -8(%ebp),%eax
	movb MM_SortedAtomIntTbl+45(%eax),%al
	andl $255,%eax
	movl -12(%ebp),%ecx
	movl %ecx,8(%edi,%eax,4)
	xorl %eax,%eax
	movb %dl,%al
.L51:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 SortedAtomIntTbl__Put,.Lfe5-SortedAtomIntTbl__Put
	.align 16
	.type	 SortedAtomIntTbl__Concat,@function
SortedAtomIntTbl__Concat:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%edx
	movl 24(%ebx),%edi
	movb $1,-4(%ebp)
	testl %ecx,%ecx
	jne .L53
	movl %edx,%eax
	jmp .L70
	.align 16
.L53:
	testl %edx,%edx
	jne .L55
	movl %ecx,%eax
	jmp .L70
	.align 16
.L56:
	testl %ecx,%ecx
	jne .L57
	movl %edx,%esi
	testl %edx,%edx
	jne .L71
	pushl $3652
	call _m3_fault
	.align 16
.L57:
	testl %edx,%edx
	je .L60
	movl 16(%edx),%eax
	cmpl %eax,16(%ecx)
	jle .L63
.L60:
	movl %ecx,%esi
	movl 12(%ecx),%ecx
	movb $1,-8(%ebp)
	jmp .L59
	.align 16
.L63:
	movl %edx,%esi
.L71:
	movl 8(%edx),%edx
	movb $0,-8(%ebp)
.L59:
	testl %edi,%edi
	jne .L66
	pushl $3828
	call _m3_fault
	.align 16
.L66:
	xorl %eax,%eax
	movb -4(%ebp),%al
	movl %esi,8(%edi,%eax,4)
	movl %esi,%edi
	movb -8(%ebp),%bl
	movb %bl,-4(%ebp)
.L55:
	cmpl %edx,%ecx
	jne .L56
	testl %edi,%edi
	jne .L68
	pushl $3892
	call _m3_fault
	.align 16
.L68:
	xorl %eax,%eax
	movb -4(%ebp),%al
	movl $0,8(%edi,%eax,4)
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
	testl %eax,%eax
	jne .L69
	pushl $3908
	call _m3_fault
	.align 16
.L69:
	movl 12(%eax),%eax
.L70:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 SortedAtomIntTbl__Concat,.Lfe6-SortedAtomIntTbl__Concat
	.align 16
	.type	 SortedAtomIntTbl__Delete,@function
SortedAtomIntTbl__Delete:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 4(%edi),%esi
	testl %esi,%esi
	jne .L73
	pushl $4036
	call _m3_fault
	.align 16
.L73:
	movl 12(%esi),%ebx
	movb $1,-4(%ebp)
	jmp .L74
	.align 16
.L75:
	movl (%edi),%eax
	movl 32(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%edx
	addl $12,%esp
	testb %al,%al
	jne .L77
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	pushl %edi
	call SortedAtomIntTbl__Concat
	movl %eax,%edx
	addl $12,%esp
	testl %esi,%esi
	jne .L80
	pushl $4148
	call _m3_fault
	.align 16
.L80:
	xorl %eax,%eax
	movb -4(%ebp),%al
	movl %edx,8(%esi,%eax,4)
	movl 16(%ebp),%ecx
	movl 4(%ebx),%eax
	movl %eax,(%ecx)
	movl 12(%edi),%eax
	decl %eax
	jns .L82
	pushl $4177
	call _m3_fault
	.align 16
.L82:
	movl %eax,12(%edi)
	movl $1,%eax
	jmp .L85
	.align 16
.L77:
	movsbl %al,%eax
	movb MM_SortedAtomIntTbl+45(%eax),%al
	movb %al,-4(%ebp)
	xorl %eax,%eax
	movb -4(%ebp),%al
	movl %ebx,%esi
	movl 8(%ebx,%eax,4),%ebx
.L74:
	testl %ebx,%ebx
	jne .L75
	movl %ebx,%eax
.L85:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 SortedAtomIntTbl__Delete,.Lfe7-SortedAtomIntTbl__Delete
	.align 16
	.type	 SortedAtomIntTbl__Size,@function
SortedAtomIntTbl__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 12(%eax),%eax
	ret
.Lfe8:
	.size	 SortedAtomIntTbl__Size,.Lfe8-SortedAtomIntTbl__Size
	.align 16
	.type	 SortedAtomIntTbl__IterateOrdered,@function
SortedAtomIntTbl__IterateOrdered:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movb 12(%ebp),%bl
	movl MM_SortedAtomIntTbl+440,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%esi
	addl $4,%esp
	movl %edi,4(%edx)
	movb %bl,9(%edx)
	testb %bl,%bl
	je .L88
	movl 12(%esi),%edx
	cmpl $50,%edx
	jle .L89
	pushl $4817
	call _m3_fault
	.align 16
.L89:
	movl 4(%edi),%eax
	movl %eax,16(%esi,%edx,4)
	jmp .L90
	.align 16
.L88:
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ecx
	addl $4,%esp
	testl %edx,%edx
	jne .L91
	pushl $4868
	call _m3_fault
	.align 16
.L91:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L92
	pushl $4868
	call _m3_fault
	.align 16
.L92:
	movl 12(%eax),%eax
	movl %eax,8(%edx)
	movl 12(%esi),%eax
	cmpl $50,%eax
	jle .L93
	pushl $4881
	call _m3_fault
	.align 16
.L93:
	movl %ecx,16(%esi,%eax,4)
.L90:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 SortedAtomIntTbl__IterateOrdered,.Lfe9-SortedAtomIntTbl__IterateOrdered
	.align 16
	.type	 SortedAtomIntTbl__Iterate,@function
SortedAtomIntTbl__Iterate:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl 24(%edx),%edx
	pushl $1
	pushl %eax
	call *%edx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 SortedAtomIntTbl__Iterate,.Lfe10-SortedAtomIntTbl__Iterate
	.align 16
	.type	 SortedAtomIntTbl__Next,@function
SortedAtomIntTbl__Next:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%esi),%ebx
	cmpl $50,%ebx
	jle .L96
	pushl $5185
	call _m3_fault
	.align 16
.L96:
	movl 16(%esi,%ebx,4),%ecx
	xorl %eax,%eax
	movb 9(%esi),%al
	cmpl $1,%eax
	jbe .L97
	pushl $5201
	call _m3_fault
	.align 16
.L97:
	movb %al,%dl
	testl %eax,%eax
	sete %al
	andl $255,%eax
	cmpl $1,%eax
	jbe .L98
	pushl $5217
	call _m3_fault
	.align 16
.L98:
	movb %al,-4(%ebp)
	cmpb $0,8(%esi)
	je .L99
	pushl $5248
	call _m3_fault
	.align 16
.L99:
	testl %ecx,%ecx
	jne .L100
	pushl $5284
	call _m3_fault
	.align 16
.L100:
	xorl %eax,%eax
	movb %dl,%al
	movl 8(%ecx,%eax,4),%eax
	testl %eax,%eax
	jne .L107
	testl %ebx,%ebx
	jne .L102
	movb $1,8(%esi)
	movl %ebx,%eax
	jmp .L117
	.align 16
.L102:
	movl %esi,%edx
	leal -1(%ebx),%eax
	testl %eax,%eax
	jge .L103
	pushl $5313
	call _m3_fault
	.align 16
.L103:
	movl %eax,12(%edx)
	cmpl $50,%eax
	jle .L104
	pushl $5329
	call _m3_fault
	.align 16
.L104:
	movl 16(%edx,%eax,4),%ecx
	testl %ecx,%ecx
	jne .L118
	pushl $5348
	call _m3_fault
	.align 16
.L107:
	movl %eax,%ecx
	movl %ecx,16(%esi,%ebx,4)
	jmp .L109
	.align 16
.L110:
	movl %esi,%edx
	movl %eax,%ecx
	movl 12(%edx),%eax
	incl %eax
	movl %eax,12(%edx)
	cmpl $50,%eax
	jle .L112
	pushl $5537
	call _m3_fault
	.align 16
.L112:
	movl %ecx,16(%edx,%eax,4)
.L109:
	testl %ecx,%ecx
	jne .L113
	pushl $5492
	call _m3_fault
	.align 16
.L113:
	xorl %eax,%eax
	movb -4(%ebp),%al
	movl 8(%ecx,%eax,4),%eax
	testl %eax,%eax
	jne .L110
.L118:
	movl 12(%ebp),%edi
	movl (%ecx),%eax
	movl %eax,(%edi)
	movl 16(%ebp),%edi
	movl 4(%ecx),%eax
	movl %eax,(%edi)
	movl $1,%eax
.L117:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 SortedAtomIntTbl__Next,.Lfe11-SortedAtomIntTbl__Next
	.align 16
	.type	 SortedAtomIntTbl__Seek,@function
SortedAtomIntTbl__Seek:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-4(%ebp)
	movl 4(%esi),%ecx
	movl %ecx,-12(%ebp)
	xorl %eax,%eax
	movb 9(%esi),%al
	movb MM_SortedAtomIntTbl+408(%eax),%al
	movb %al,-8(%ebp)
	cmpb $0,8(%esi)
	je .L120
	pushl $5952
	call _m3_fault
	.align 16
.L120:
	movl 12(%esi),%eax
	cmpl $50,%eax
	jle .L121
	pushl $6033
	call _m3_fault
	.align 16
.L121:
	movl -12(%ebp),%ecx
	movl 16(%esi,%eax,4),%ebx
	movl 4(%ecx),%eax
	cmpl %ebx,%eax
	je .L130
	testl %ebx,%ebx
	jne .L123
	pushl $6052
	call _m3_fault
	.align 16
.L123:
	testl %eax,%eax
	jne .L124
	pushl $6052
	call _m3_fault
	.align 16
.L124:
	movl 12(%eax),%eax
	cmpl %eax,8(%ebx)
	je .L130
	movl -12(%ebp),%ecx
	movl (%ecx),%eax
	movl 32(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl %eax,%edx
	movsbl -8(%ebp),%eax
	addl $12,%esp
	cmpl %eax,%edx
	je .L130
	movl -4(%ebp),%ecx
	movl %ecx,12(%esi)
	cmpb $0,9(%esi)
	je .L126
	movl -12(%ebp),%ecx
	movl 4(%ecx),%ebx
	jmp .L127
	.align 16
.L126:
	movl MM_SortedAtomIntTbl+432,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $4,%esp
	testl %edx,%edx
	jne .L128
	pushl $6132
	call _m3_fault
	.align 16
.L128:
	movl -12(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L129
	pushl $6132
	call _m3_fault
	.align 16
.L129:
	movl 12(%eax),%eax
	movl %eax,8(%edx)
.L127:
	movl %ebx,16(%esi)
	jmp .L130
	.align 16
.L131:
	movl %esi,%edx
	movl 12(%edx),%eax
	decl %eax
	jns .L132
	pushl $6273
	call _m3_fault
	.align 16
.L132:
	movl %eax,12(%edx)
.L130:
	movl 12(%esi),%ebx
	testl %ebx,%ebx
	je .L136
	movl -12(%ebp),%ecx
	movl (%ecx),%eax
	movl 32(%eax),%edx
	leal -1(%ebx),%eax
	cmpl $50,%eax
	jbe .L134
	pushl $6241
	call _m3_fault
	.align 16
.L134:
	movl 16(%esi,%eax,4),%eax
	testl %eax,%eax
	jne .L135
	pushl $6244
	call _m3_fault
	.align 16
.L135:
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%ecx
	pushl %ecx
	call *%edx
	movl %eax,%edx
	movsbl -8(%ebp),%eax
	addl $12,%esp
	cmpl %eax,%edx
	je .L131
.L136:
	movb -8(%ebp),%al
	movl 12(%esi),%edi
	cmpl $50,%edi
	jle .L137
	pushl $6609
	call _m3_fault
	.align 16
.L137:
	movl 16(%esi,%edi,4),%ecx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
.L138:
	testl %ebx,%ebx
	jne .L139
	pushl $6660
	call _m3_fault
	.align 16
.L139:
	movsbl %al,%eax
	movb MM_SortedAtomIntTbl+45(%eax),%al
	andl $255,%eax
	movl 8(%ebx,%eax,4),%ebx
	testl %ebx,%ebx
	je .L141
	movl -12(%ebp),%ecx
	movl (%ecx),%eax
	movl 32(%eax),%edx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl %eax,%edx
	movb %dl,%al
	addl $12,%esp
	testb %al,%al
	jne .L143
	movsbl -8(%ebp),%eax
	movl %eax,%edx
	negl %edx
	leal 1(%edx),%eax
	cmpl $2,%eax
	jbe .L144
	pushl $6705
	call _m3_fault
	.align 16
.L144:
	movb %dl,%al
.L143:
	cmpb %al,-8(%ebp)
	jne .L145
	movl %ebx,-4(%ebp)
	movl 12(%esi),%edi
	jmp .L138
	.align 16
.L145:
	movl 12(%esi),%edx
	cmpl $50,%edx
	jle .L147
	pushl $6785
	call _m3_fault
	.align 16
.L147:
	movl %ebx,16(%esi,%edx,4)
	incl 12(%esi)
	jmp .L138
	.align 16
.L141:
	movl %edi,12(%esi)
	cmpl $50,%edi
	jle .L148
	pushl $6865
	call _m3_fault
	.align 16
.L148:
	movl -4(%ebp),%ecx
	leal -24(%ebp),%esp
	movl %ecx,16(%esi,%edi,4)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 SortedAtomIntTbl__Seek,.Lfe12-SortedAtomIntTbl__Seek
	.align 16
	.type	 M_SortedAtomIntTbl_t860b2e2a_LINK,@function
M_SortedAtomIntTbl_t860b2e2a_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_SortedAtomIntTbl+440,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_SortedAtomIntTbl+400,%eax
	movl %eax,4(%edx)
	movl MM_SortedAtomIntTbl+404,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe13:
	.size	 M_SortedAtomIntTbl_t860b2e2a_LINK,.Lfe13-M_SortedAtomIntTbl_t860b2e2a_LINK
	.align 16
	.type	 M_SortedAtomIntTbl_t879172cf_LINK,@function
M_SortedAtomIntTbl_t879172cf_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_SortedAtomIntTbl+1044,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_SortedAtomIntTbl+264,%eax
	movl %eax,4(%edx)
	movl MM_SortedAtomIntTbl+272,%eax
	movl %eax,8(%edx)
	movl MM_SortedAtomIntTbl+280,%eax
	movl %eax,12(%edx)
	movl MM_SortedAtomIntTbl+284,%eax
	movl %eax,16(%edx)
	movl MM_SortedAtomIntTbl+396,%eax
	movl %eax,20(%edx)
	movl MM_SortedAtomIntTbl+392,%eax
	movl %eax,24(%edx)
	movl MM_SortedAtomIntTbl+260,%eax
	movl %eax,28(%edx)
	movl MM_SortedAtomIntTbl+256,%eax
	movl %eax,32(%edx)
	popl %ebp
	ret
.Lfe14:
	.size	 M_SortedAtomIntTbl_t879172cf_LINK,.Lfe14-M_SortedAtomIntTbl_t879172cf_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_SortedAtomIntTbl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_SortedAtomIntTbl
.data
	.align 4
	.type	 MM_SortedAtomIntTbl,@object
	.size	 MM_SortedAtomIntTbl,1124
MM_SortedAtomIntTbl:
	.long MM_SortedAtomIntTbl+684
	.long MM_SortedAtomIntTbl+48
	.long MM_SortedAtomIntTbl+424
	.long MM_SortedAtomIntTbl+412
	.zero	4
	.long MM_SortedAtomIntTbl+536
	.zero	20
.byte 0
.byte 1
.byte 1
	.zero	9
	.long -2020511025
.byte 86
.byte 22
.byte 209
.byte 150
.byte 153
.byte 100
.byte 64
.byte 17
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_SortedAtomIntTbl+1011
	.long MM_SortedAtomIntTbl+1018
	.long MM_SortedAtomIntTbl+1025
	.zero	4
	.long M_SortedAtomIntTbl_t879172cf_LINK
	.long 1788612014
	.zero	12
	.long MM_SortedAtomIntTbl+1052
	.long MM_SortedAtomIntTbl+1096
	.long MM_SortedAtomIntTbl+152
	.zero	8
	.long 1901328036
.byte 197
.byte 8
.byte 0
.byte 124
.byte 97
.byte 254
.byte 83
.byte 13
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_SortedAtomIntTbl+957
	.long MM_SortedAtomIntTbl+965
	.long MM_SortedAtomIntTbl+972
	.zero	28
	.long MM_SortedAtomIntTbl+989
	.long MM_SortedAtomIntTbl+288
	.long SortedAtomIntTbl__KeyCompare
	.long SortedAtomIntTbl__Init
	.long SortedAtomIntTbl__Get
	.long SortedAtomIntTbl__SplitNode
	.long SortedAtomIntTbl__Put
	.long SortedAtomIntTbl__Concat
	.long SortedAtomIntTbl__Delete
	.long SortedAtomIntTbl__Size
	.zero	8
	.long -2046087638
.byte 119
.byte 153
.byte 49
.byte 142
.byte 93
.byte 183
.byte 58
.byte 8
	.long 1
	.zero	4
	.long 216
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_SortedAtomIntTbl+859
	.long MM_SortedAtomIntTbl+869
	.long MM_SortedAtomIntTbl+876
	.zero	4
	.long M_SortedAtomIntTbl_t860b2e2a_LINK
	.long 2143184792
	.zero	12
	.long MM_SortedAtomIntTbl+894
	.long MM_SortedAtomIntTbl+924
	.zero	4
	.long SortedAtomIntTbl__IterateOrdered
	.long SortedAtomIntTbl__Iterate
	.long SortedAtomIntTbl__Next
	.long SortedAtomIntTbl__Seek
.byte -1
.byte 1
	.zero	2
	.long 1788612013
	.long -2020511025
	.zero	4
	.long MM_SortedAtomIntTbl+432
	.long 1893541911
	.long MM_SortedAtomIntTbl+440
	.long 1901328036
	.long MM_SortedAtomIntTbl+1044
	.long -2046087638
	.ascii	"Seek"
	.zero	1
	.ascii	"Next"
	.zero	1
	.ascii	"Iterate"
	.zero	1
	.ascii	"IterateOrdered"
	.zero	1
	.ascii	"Size"
	.zero	1
	.ascii	"Delete"
	.zero	1
	.ascii	"Concat"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"SplitNode"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"KeyCompare"
	.zero	3
	.long SortedAtomIntTbl__Seek
	.long MM_SortedAtomIntTbl+448
	.zero	4
	.long SortedAtomIntTbl__Next
	.long MM_SortedAtomIntTbl+453
	.zero	4
	.long SortedAtomIntTbl__Iterate
	.long MM_SortedAtomIntTbl+458
	.zero	4
	.long SortedAtomIntTbl__IterateOrdered
	.long MM_SortedAtomIntTbl+466
	.zero	4
	.long SortedAtomIntTbl__Size
	.long MM_SortedAtomIntTbl+481
	.zero	4
	.long SortedAtomIntTbl__Delete
	.long MM_SortedAtomIntTbl+486
	.zero	4
	.long SortedAtomIntTbl__Concat
	.long MM_SortedAtomIntTbl+493
	.zero	4
	.long SortedAtomIntTbl__Put
	.long MM_SortedAtomIntTbl+500
	.zero	4
	.long SortedAtomIntTbl__SplitNode
	.long MM_SortedAtomIntTbl+504
	.zero	4
	.long SortedAtomIntTbl__Get
	.long MM_SortedAtomIntTbl+514
	.zero	4
	.long SortedAtomIntTbl__Init
	.long MM_SortedAtomIntTbl+518
	.zero	4
	.long SortedAtomIntTbl__KeyCompare
	.long MM_SortedAtomIntTbl+523
	.zero	8
	.ascii	"SortedAtomIntTbl.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/lang"
	.ascii	"uage/modula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC"
	.ascii	"6/boot-LINUXLIBC6/libm3/src/sortedtable/SortedTable.mg"
	.zero	1
.byte 4
.byte 16
.byte 16
.byte 35
.byte 18
.byte 1
.byte 4
.byte 26
.byte 51
.byte 0
.byte 4
.byte 41
.byte 1
.byte 4
.byte 26
.byte 51
.byte 0
.byte 7
.byte 10
.byte 5
.byte 16
.byte 173
.byte 13
.byte 156
.byte 106
.byte 2
.byte 24
.byte 3
.byte 1
.byte 51
.byte 16
.byte 164
.byte 246
.byte 83
.byte 113
	.ascii	"SortedAtomIntTbl_^%#%^__0001M"
	.zero	1
	.ascii	"SortedAtomIntTbl.DefaultIterator"
	.zero	1
.byte 4
.byte 14
.byte 1
.byte 4
.byte 26
.byte 2
.byte 14
.byte 0
.byte 4
.byte 37
.byte 1
.byte 4
.byte 26
.byte 2
.byte 0
.byte 6
.byte 15
.byte 4
.byte 16
.byte 14
.byte 221
.byte 217
.byte 209
.byte 7
.byte 1
.byte 2
.byte 16
.byte 164
.byte 246
.byte 83
.byte 113
.byte 24
	.ascii	"SortedAtomIntTbl.Node"
	.zero	1
.byte 4
.byte 4
.byte 18
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 37
.byte 4
.byte 4
.byte 4
.byte 0
.byte 7
.byte 10
.byte 6
.byte 16
.byte 164
.byte 246
.byte 83
.byte 113
.byte 16
.byte 243
.byte 147
.byte 65
.byte 72
.byte 3
.byte 23
.byte 23
.byte 23
	.zero	6
	.long -2020511025
	.ascii	"(Default (Sorted (Table Atom-1.0 Integer)))"
	.zero	1
	.ascii	"SortedAtomIntTbl.Default"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
