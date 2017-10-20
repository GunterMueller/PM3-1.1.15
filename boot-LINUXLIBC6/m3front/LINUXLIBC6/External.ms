	.file	"External.mc"
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
	.type	 External__NewSet,@function
External__NewSet:
	pushl %ebp
	movl %esp,%ebp
	movl MM_External+500,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L2
	pushl $948
	call _m3_fault
	.align 16
.L2:
	movl $0,(%eax)
	movl $0,4(%eax)
	movl $0,8(%eax)
	movl $0,12(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 External__NewSet,.Lfe1-External__NewSet
	.align 16
	.type	 External__NoteExport,@function
External__NoteExport:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl $0
	pushl %ebx
	movl MI_Module+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L6
	testl %esi,%esi
	jne .L8
	pushl $1140
	call _m3_fault
	.align 16
.L8:
	pushl %ebx
	pushl %eax
	pushl %esi
	call External__Push
	addl $12,%esp
	testl %eax,%eax
	jne .L9
	pushl $1156
	call _m3_fault
	.align 16
.L9:
	movb $1,20(%eax)
	movb $1,21(%eax)
.L6:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 External__NoteExport,.Lfe2-External__NoteExport
	.align 16
	.type	 External__NoteImport,@function
External__NoteImport:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	testl %esi,%esi
	je .L11
	testl %edi,%edi
	jne .L13
	pushl $1284
	call _m3_fault
	.align 16
.L13:
	movl 16(%ebp),%edx
	pushl %edx
	pushl %esi
	leal 4(%edi),%eax
	pushl %eax
	call External__Push
	movl %eax,%ebx
	pushl %ebx
	movl MI_Scanner+80,%eax
	pushl %eax
	movl 16(%ebp),%edx
	pushl %edx
	pushl %esi
	pushl %edi
	call External__ImportObj
	addl $32,%esp
	testl %ebx,%ebx
	jne .L14
	pushl $1300
	call _m3_fault
	.align 16
.L14:
	movl %eax,12(%ebx)
	movb $1,20(%ebx)
.L11:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 External__NoteImport,.Lfe3-External__NoteImport
	.align 16
	.type	 External__ParseImports,@function
External__ParseImports:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MI_Runtime+44,%eax
	movl $0,-8(%ebp)
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_Runtime+48,%eax
	call *%eax
	addl $12,%esp
	movl -8(%ebp),%edx
	testl %edx,%edx
	je .L19
	movl -4(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	call External__NoteImport
	addl $12,%esp
	testl %ebx,%ebx
	jne .L18
	pushl $1492
	call _m3_fault
	.align 16
.L18:
	movl 12(%ebx),%eax
	orb $128,30(%eax)
.L19:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $69,%eax
	jne .L20
	pushl %ebx
	call External__ParseImport
	addl $4,%esp
	jmp .L19
	.align 16
.L20:
	cmpl $66,%eax
	jne .L23
	pushl %ebx
	call External__ParseFromImport
	addl $4,%esp
	jmp .L19
	.align 16
.L23:
	pushl %esi
	pushl %ebx
	call External__ResolveImports
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 External__ParseImports,.Lfe4-External__ParseImports
	.align 16
	.type	 External__ParseImport,@function
External__ParseImport:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl $69
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
.L25:
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	cmpb $47,MI_Scanner+44
	jne .L26
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,%ebx
.L26:
	pushl $0
	pushl %esi
	movl MI_Module+52,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	pushl %edi
	call External__NoteImport
	addl $20,%esp
	cmpb $15,MI_Scanner+44
	jne .L28
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L25
	.align 16
.L28:
	pushl $16
	movl MI_Scanner+108,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 External__ParseImport,.Lfe5-External__ParseImport
	.align 16
	.type	 External__ParseFromImport,@function
External__ParseFromImport:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $66
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,%ebx
	pushl $69
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Ident+160,%eax
	call *%eax
	movl %eax,-12(%ebp)
	pushl $16
	movl MI_Scanner+108,%eax
	xorl %edi,%edi
	call *%eax
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L30
	pushl $2212
	call _m3_fault
	.align 16
.L30:
	pushl %ebx
	pushl %edi
	movl 8(%ebp),%eax
	addl $4,%eax
	pushl %eax
	call External__Push
	movl %eax,%ecx
	movl %ecx,%edi
	movl MI_Ident+156,%esi
	subl -12(%ebp),%esi
	movl %esi,-4(%ebp)
	xorl %ebx,%ebx
	movl -12(%ebp),%esi
	decl %esi
	movl %esi,-8(%ebp)
	addl $12,%esp
	jmp .L31
	.align 16
.L32:
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L33
	pushl $2276
	call _m3_fault
	.align 16
.L33:
	movl %eax,%ecx
	movl -4(%ebp),%edx
	addl %ebx,%edx
	cmpl %edx,4(%ecx)
	ja .L34
	pushl $2274
	call _m3_fault
	.align 16
.L34:
	movl MI_Ident+152,%eax
	testl %eax,%eax
	jne .L35
	pushl $2276
	call _m3_fault
	.align 16
.L35:
	cmpl %edx,4(%eax)
	ja .L36
	pushl $2274
	call _m3_fault
	.align 16
.L36:
	pushl %edi
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	pushl %eax
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	pushl %eax
	pushl $0
	movl 8(%ebp),%esi
	pushl %esi
	call External__ImportObj
	incl %ebx
	addl $20,%esp
.L31:
	cmpl %ebx,-8(%ebp)
	jge .L32
	movl -12(%ebp),%esi
	leal -24(%ebp),%esp
	subl %esi,MI_Ident+156
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 External__ParseFromImport,.Lfe6-External__ParseFromImport
	.align 16
	.type	 External__Push,@function
External__Push:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl (%esi),%ebx
	jmp .L39
	.align 16
.L40:
	movl 16(%ebp),%edx
	cmpl %edx,16(%ebx)
	jne .L50
	testl %edi,%edi
	je .L60
	movl 4(%ebx),%eax
	cmpl %edi,%eax
	je .L60
	testl %eax,%eax
	jne .L48
	movl %edi,4(%ebx)
	jmp .L60
	.align 16
.L48:
	pushl $MM_External+512
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_Error+52,%eax
	call *%eax
	jmp .L60
	.align 16
.L50:
	movl (%ebx),%ebx
.L39:
	testl %ebx,%ebx
	jne .L40
	movl MM_External+544,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L52
	pushl $2644
	call _m3_fault
	.align 16
.L52:
	movl (%esi),%eax
	movl %eax,(%ebx)
	movl %ebx,(%esi)
	movl %edi,4(%ebx)
	movl 16(%ebp),%edx
	movl %edx,16(%ebx)
	movl MI_Scanner+88,%eax
	movl %eax,8(%ebx)
	movl $0,12(%ebx)
	movb $0,20(%ebx)
	movb $0,21(%ebx)
.L60:
	movl %ebx,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 External__Push,.Lfe7-External__Push
	.align 16
	.type	 External__ImportObj,@function
External__ImportObj:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl MM_External+552,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movb $9,%al
	addl $4,%esp
	testl %esi,%esi
	jne .L62
	movl %esi,%eax
	jmp .L72
	.align 16
.L62:
	testl %edi,%edi
	je .L63
	xorl %eax,%eax
	movb 29(%edi),%al
	shrl $4,%eax
.L63:
	andl $255,%eax
	pushl %eax
	movl 16(%ebp),%edx
	pushl %edx
	pushl %ebx
	movl MI_ValueRep+148,%eax
	call *%eax
	movl 20(%ebp),%edx
	movl %edx,4(%ebx)
	movl $0,36(%ebx)
	movl %edi,40(%ebx)
	movl 24(%ebp),%edx
	movl %edx,44(%ebx)
	movb 31(%ebx),%al
	orb $8,%al
	andl $239,%eax
	movb %al,31(%ebx)
	addl $12,%esp
	testl %edx,%edx
	jne .L64
	pushl $3012
	call _m3_fault
	.align 16
.L64:
	movl 24(%ebp),%edx
	cmpb $0,21(%edx)
	je .L66
	andl $255,%eax
	orb $32,%al
	movb %al,31(%ebx)
.L66:
	cmpl $0,8(%esi)
	jne .L70
	movl %ebx,8(%esi)
	jmp .L69
	.align 16
.L70:
	movl 12(%esi),%eax
	movl %ebx,36(%eax)
.L69:
	testl %esi,%esi
	jne .L71
	pushl $3092
	call _m3_fault
	.align 16
.L71:
	movl %ebx,12(%esi)
	movl %ebx,%eax
.L72:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 External__ImportObj,.Lfe8-External__ImportObj
	.align 16
	.type	 External__ResolveImports,@function
External__ResolveImports:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MI_Scanner+88,%ecx
	movl %ecx,-12(%ebp)
	testl %edi,%edi
	jne .L74
	pushl $3348
	call _m3_fault
	.align 16
.L74:
	movl (%edi),%esi
	jmp .L75
	.align 16
.L76:
	movl 4(%esi),%eax
	testl %eax,%eax
	je .L78
	cmpl %eax,12(%ebp)
	je .L78
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L79
	.align 16
.L80:
	testl %esi,%esi
	jne .L81
	pushl $3444
	call _m3_fault
	.align 16
.L81:
	pushl %esi
	movl 8(%esi),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	pushl %ebx
	pushl %edi
	call External__ImportObj
	movl 8(%ebx),%ebx
	addl $20,%esp
.L79:
	testl %ebx,%ebx
	jne .L80
.L78:
	testl %esi,%esi
	jne .L83
	pushl $3508
	call _m3_fault
	.align 16
.L83:
	movl (%esi),%esi
.L75:
	testl %esi,%esi
	jne .L76
	testl %edi,%edi
	jne .L85
	pushl $3572
	call _m3_fault
	.align 16
.L85:
	movl 4(%edi),%esi
	jmp .L86
	.align 16
.L87:
	cmpl $0,4(%esi)
	jne .L89
	movl 8(%esi),%eax
	movl %eax,MI_Scanner+88
	testl %edi,%edi
	jne .L92
	pushl $3636
	call _m3_fault
	.align 16
.L92:
	movl 4(%edi),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	call External__LookUpInList
	addl $8,%esp
	movl %eax,4(%esi)
.L89:
	testl %esi,%esi
	jne .L94
	pushl $3668
	call _m3_fault
	.align 16
.L94:
	movl (%esi),%esi
.L86:
	testl %esi,%esi
	jne .L87
	testl %edi,%edi
	jne .L96
	pushl $3732
	call _m3_fault
	.align 16
.L96:
	movl 8(%edi),%edi
	jmp .L97
	.align 16
.L98:
	cmpl $0,40(%edi)
	jne .L99
	movl 4(%edi),%eax
	movl %eax,MI_Scanner+88
	movl 44(%edi),%esi
	testl %esi,%esi
	jne .L100
	pushl $3828
	call _m3_fault
	.align 16
.L100:
	movl 12(%esi),%eax
	testl %eax,%eax
	je .L103
	orb $128,30(%eax)
.L103:
	movl 4(%esi),%eax
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L104
	pushl $1
	movl 12(%edi),%eax
	pushl %eax
	pushl %edx
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	jmp .L105
	.align 16
.L104:
	movl %edx,%ebx
.L105:
	testl %ebx,%ebx
	je .L106
	movl %ebx,40(%edi)
	xorl %eax,%eax
	movb 29(%edi),%al
	andb $15,%al
	movb 29(%ebx),%dl
	andb $240,%dl
	orb %al,%dl
	movb %dl,29(%edi)
	jmp .L99
	.align 16
.L106:
	testl %esi,%esi
	jne .L108
	pushl $3988
	call _m3_fault
	.align 16
.L108:
	movl 16(%esi),%eax
	movl %eax,-8(%ebp)
	movl 12(%edi),%eax
	movl %eax,-4(%ebp)
	pushl $MM_External+564
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
.L99:
	movl 36(%edi),%edi
.L97:
	testl %edi,%edi
	jne .L98
	movl -12(%ebp),%ecx
	leal -24(%ebp),%esp
	movl %ecx,MI_Scanner+88
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 External__ResolveImports,.Lfe9-External__ResolveImports
	.align 16
	.type	 External__LookUpInList,@function
External__LookUpInList:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	jmp .L111
	.align 16
.L112:
	cmpl %ecx,16(%eax)
	jne .L114
	movl 4(%eax),%edx
	testl %edx,%edx
	je .L114
	movl %edx,%eax
	jmp .L119
	.align 16
.L114:
	testl %eax,%eax
	jne .L117
	pushl $4244
	call _m3_fault
	.align 16
.L117:
	movl (%eax),%eax
.L111:
	testl %eax,%eax
	jne .L112
	pushl %eax
	pushl %ecx
	movl MI_Module+52,%eax
	call *%eax
.L119:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 External__LookUpInList,.Lfe10-External__LookUpInList
	.align 16
	.type	 External__LoadImports,@function
External__LoadImports:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MI_Scanner+88,%edi
	testl %esi,%esi
	jne .L121
	pushl $4420
	call _m3_fault
	.align 16
.L121:
	movl 8(%esi),%ebx
	jmp .L122
	.align 16
.L123:
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	cmpl $0,40(%ebx)
	je .L124
	pushl %ebx
	movl MI_Scope+72,%eax
	call *%eax
	addl $4,%esp
.L124:
	movl 36(%ebx),%ebx
.L122:
	testl %ebx,%ebx
	jne .L123
	testl %esi,%esi
	jne .L126
	pushl $4548
	call _m3_fault
	.align 16
.L126:
	movl 4(%esi),%ebx
	jmp .L127
	.align 16
.L128:
	cmpb $0,20(%ebx)
	je .L130
	movl 4(%ebx),%edx
	movl 8(%ebx),%eax
	movl %eax,MI_Scanner+88
	testl %edx,%edx
	je .L130
	cmpl %edx,12(%ebp)
	je .L130
	movl 12(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_Module+56,%eax
	call *%eax
	addl $8,%esp
.L130:
	testl %ebx,%ebx
	jne .L135
	pushl $4692
	call _m3_fault
	.align 16
.L135:
	movl (%ebx),%ebx
.L127:
	testl %ebx,%ebx
	jne .L128
	testl %esi,%esi
	jne .L137
	pushl $4756
	call _m3_fault
	.align 16
.L137:
	movl (%esi),%ebx
	jmp .L138
	.align 16
.L139:
	cmpb $0,20(%ebx)
	je .L141
	movl 4(%ebx),%edx
	movl 8(%ebx),%eax
	movl %eax,MI_Scanner+88
	testl %edx,%edx
	je .L141
	cmpl %edx,12(%ebp)
	je .L141
	movl 12(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_Module+56,%eax
	call *%eax
	addl $8,%esp
.L141:
	testl %ebx,%ebx
	jne .L146
	pushl $4900
	call _m3_fault
	.align 16
.L146:
	movl (%ebx),%ebx
.L138:
	testl %ebx,%ebx
	jne .L139
	leal -12(%ebp),%esp
	movl %edi,MI_Scanner+88
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 External__LoadImports,.Lfe11-External__LoadImports
	.align 16
	.type	 External__IsExportable,@function
External__IsExportable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L152
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_External+556
	jg .L152
	movl MM_External+552,%eax
	cmpl %ecx,4(%eax)
	jl .L152
	movl 44(%edx),%eax
	testl %eax,%eax
	jne .L154
	pushl $5060
	call _m3_fault
	.align 16
.L154:
	movb 21(%eax),%al
	andl $255,%eax
	jmp .L156
	.align 16
.L152:
	xorl %eax,%eax
.L156:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 External__IsExportable,.Lfe12-External__IsExportable
	.align 16
	.type	 External__Redirect,@function
External__Redirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L158
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_External+556
	jg .L159
	movl MM_External+552,%eax
	cmpl %edx,4(%eax)
	jge .L158
.L159:
	pushl $5157
	call _m3_fault
	.align 16
.L158:
	movl %ebx,40(%ecx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 External__Redirect,.Lfe13-External__Redirect
	.align 16
	.type	 External__GenLinkInfo,@function
External__GenLinkInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L161
	pushl $5268
	call _m3_fault
	.align 16
.L161:
	movl MI_CG+68,%eax
	pushl %eax
	pushl $0
	movl (%ebx),%eax
	pushl %eax
	call External__GenInitLinks
	addl $12,%esp
	movl MI_CG+64,%eax
	pushl %eax
	pushl $1
	movl 4(%ebx),%eax
	pushl %eax
	call External__GenInitLinks
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 External__GenLinkInfo,.Lfe14-External__GenLinkInfo
	.align 16
	.type	 External__GenInitLinks,@function
External__GenInitLinks:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	jmp .L164
	.align 16
.L165:
	movl 8(%ebp),%edx
.L166:
	cmpl %edx,%esi
	jne .L167
	testl %esi,%esi
	jne .L168
	pushl $5476
	call _m3_fault
	.align 16
.L168:
	movl 4(%esi),%eax
	pushl %eax
	movl MI_Module+112,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl (%edx),%eax
	addl $4,%esp
	movl 20(%eax),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 4(%esi),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl %edx
	movl -4(%ebp),%ebx
	call *%ebx
	movl 16(%ebp),%ebx
	movl %ebx,-4(%ebp)
	movl %esi,%eax
	addl $12,%esp
	testl %ebx,%ebx
	je .L171
	cmpl $-1,(%ebx)
	jne .L171
	movl 8(%ebx),%edi
	movl 4(%ebx),%ebx
	movl %ebx,-4(%ebp)
.L171:
	movl 4(%eax),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl -4(%ebp),%ebx
	movl %edi,%ecx
	call *%ebx
	addl $4,%esp
	jmp .L173
	.align 16
.L167:
	testl %esi,%esi
	jne .L174
	pushl $5556
	call _m3_fault
	.align 16
.L174:
	testl %edx,%edx
	jne .L175
	pushl $5556
	call _m3_fault
	.align 16
.L175:
	movl 4(%edx),%eax
	cmpl %eax,4(%esi)
	je .L173
	movl (%edx),%edx
	jmp .L166
	.align 16
.L173:
	testl %esi,%esi
	jne .L178
	pushl $5604
	call _m3_fault
	.align 16
.L178:
	movl (%esi),%esi
.L164:
	testl %esi,%esi
	jne .L165
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 External__GenInitLinks,.Lfe15-External__GenInitLinks
	.align 16
	.type	 External__GenImports,@function
External__GenImports:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L181
	pushl $5716
	call _m3_fault
	.align 16
.L181:
	movl 4(%eax),%ebx
	jmp .L182
	.align 16
.L183:
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+100,%eax
	call *%eax
	addl $8,%esp
	movl (%ebx),%ebx
.L182:
	testl %ebx,%ebx
	jne .L183
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 External__GenImports,.Lfe16-External__GenImports
	.align 16
	.type	 External__GetImports,@function
External__GetImports:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L188
	pushl $5892
	call _m3_fault
	.align 16
.L188:
	movl 4(%eax),%ebx
	jmp .L189
	.align 16
.L190:
	movl MM_External+592,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	addl $4,%esp
	movl 12(%eax),%eax
	movl %eax,(%edx)
	movl %esi,4(%edx)
	movl %edx,%esi
	movl (%ebx),%ebx
.L189:
	testl %ebx,%ebx
	jne .L190
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 External__GetImports,.Lfe17-External__GetImports
	.align 16
	.type	 External__NeedGlobalInit,@function
External__NeedGlobalInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L195
	pushl $6084
	call _m3_fault
	.align 16
.L195:
	movl (%eax),%ebx
	jmp .L196
	.align 16
.L197:
	movl 4(%ebx),%eax
	pushl %eax
	call External__NeedExportInit
	addl $4,%esp
	testl %eax,%eax
	je .L200
	movl $1,%eax
	jmp .L202
	.align 16
.L200:
	movl (%ebx),%ebx
.L196:
	testl %ebx,%ebx
	jne .L197
	movl %ebx,%eax
.L202:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 External__NeedGlobalInit,.Lfe18-External__NeedGlobalInit
	.align 16
	.type	 External__NeedExportInit,@function
External__NeedExportInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L204
	.align 16
.L205:
	testb $16,31(%ebx)
	je .L206
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,%eax
	jne .L206
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_External+604
	jg .L208
	movl MM_External+600,%eax
	cmpl %edx,4(%eax)
	jge .L207
.L208:
	pushl $6325
	call _m3_fault
	.align 16
.L207:
	pushl %ebx
	movl MI_Variable+100,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L206
	movl $1,%eax
	jmp .L211
	.align 16
.L206:
	movl 8(%ebx),%ebx
.L204:
	testl %ebx,%ebx
	jne .L205
	movl %ebx,%eax
.L211:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 External__NeedExportInit,.Lfe19-External__NeedExportInit
	.align 16
	.type	 External__InitGlobals,@function
External__InitGlobals:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L213
	pushl $6452
	call _m3_fault
	.align 16
.L213:
	movl (%eax),%ebx
	jmp .L214
	.align 16
.L215:
	movl 4(%ebx),%eax
	pushl %eax
	call External__InitExports
	addl $4,%esp
	movl (%ebx),%ebx
.L214:
	testl %ebx,%ebx
	jne .L215
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 External__InitGlobals,.Lfe20-External__InitGlobals
	.align 16
	.type	 External__InitExports,@function
External__InitExports:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L220
	.align 16
.L221:
	testb $16,31(%ebx)
	je .L222
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,%eax
	jne .L222
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_External+604
	jg .L224
	movl MM_External+600,%eax
	cmpl %edx,4(%eax)
	jge .L223
.L224:
	pushl $6629
	call _m3_fault
	.align 16
.L223:
	pushl %ebx
	movl MI_Variable+104,%eax
	call *%eax
	addl $4,%esp
.L222:
	movl 8(%ebx),%ebx
.L220:
	testl %ebx,%ebx
	jne .L221
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 External__InitExports,.Lfe21-External__InitExports
	.align 16
	.type	 External__Visit,@function
External__Visit:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L227
	pushl $6740
	call _m3_fault
	.align 16
.L227:
	movl (%esi),%ebx
	jmp .L228
	.align 16
.L229:
	movl 12(%ebp),%edx
	movl %ebx,%eax
	testl %edx,%edx
	je .L231
	cmpl $-1,(%edx)
	jne .L231
	movl 8(%edx),%edi
	movl %edi,-8(%ebp)
	movl 4(%edx),%edx
.L231:
	movl 4(%eax),%eax
	pushl %eax
	movl -8(%ebp),%ecx
	call *%edx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L233
	pushl $6804
	call _m3_fault
	.align 16
.L233:
	movl (%ebx),%ebx
.L228:
	testl %ebx,%ebx
	jne .L229
	testl %esi,%esi
	jne .L235
	pushl $6836
	call _m3_fault
	.align 16
.L235:
	movl 4(%esi),%ebx
	jmp .L236
	.align 16
.L237:
	movl 12(%ebp),%edx
	movl %ebx,%eax
	testl %edx,%edx
	je .L239
	cmpl $-1,(%edx)
	jne .L239
	movl 8(%edx),%edi
	movl %edi,-4(%ebp)
	movl 4(%edx),%edx
.L239:
	movl 4(%eax),%eax
	pushl %eax
	movl -4(%ebp),%ecx
	call *%edx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L241
	pushl $6884
	call _m3_fault
	.align 16
.L241:
	movl (%ebx),%ebx
.L236:
	testl %ebx,%ebx
	jne .L237
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 External__Visit,.Lfe22-External__Visit
	.align 16
	.type	 External__Check,@function
External__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	movl 40(%edx),%eax
	pushl %eax
	movl MI_Value+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 External__Check,.Lfe23-External__Check
	.align 16
	.type	 External__Load,@function
External__Load:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 External__Load,.Lfe24-External__Load
	.align 16
	.type	 External__Declare,@function
External__Declare:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 40(%ecx),%esi
	testl %esi,%esi
	je .L246
	xorl %edx,%edx
	movb 31(%esi),%dl
	movl %edx,%eax
	sall $28,%eax
	movl %eax,%ebx
	shrl $31,%ebx
	movl %edx,%eax
	sall $27,%eax
	shrl $31,%eax
	movb %al,-8(%ebp)
	xorl %eax,%eax
	movb 30(%esi),%al
	shrl $7,%eax
	movb %al,-4(%ebp)
	andb $247,%dl
	xorl %eax,%eax
	movb 31(%ecx),%al
	andl $8,%eax
	orl %eax,%edx
	movb %dl,31(%esi)
	andl $239,%edx
	movb 31(%ecx),%al
	andb $16,%al
	orb %dl,%al
	movb %al,31(%esi)
	xorl %edx,%edx
	movb 30(%esi),%dl
	andb $127,%dl
	xorl %eax,%eax
	movb 30(%ecx),%al
	andl $128,%eax
	orb %dl,%al
	movb %al,30(%esi)
	movl 40(%ecx),%eax
	pushl %eax
	movl MI_Value+60,%eax
	call *%eax
	xorl %eax,%eax
	movb 31(%esi),%al
	andb $247,%al
	salb $3,%bl
	orb %al,%bl
	movl %ebx,%eax
	andl $239,%eax
	movb -8(%ebp),%dl
	salb $4,%dl
	orb %al,%dl
	movb %dl,31(%esi)
	xorl %edx,%edx
	movb 30(%esi),%dl
	andb $127,%dl
	movb -4(%ebp),%al
	andl $1,%eax
	sall $7,%eax
	orb %dl,%al
	movb %al,30(%esi)
.L246:
	leal -16(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 External__Declare,.Lfe25-External__Declare
	.align 16
	.type	 External__ConstInit,@function
External__ConstInit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 External__ConstInit,.Lfe26-External__ConstInit
	.align 16
	.type	 External__NeedInit,@function
External__NeedInit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+68,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 External__NeedInit,.Lfe27-External__NeedInit
	.align 16
	.type	 External__LangInit,@function
External__LangInit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 External__LangInit,.Lfe28-External__LangInit
	.align 16
	.type	 External__UserInit,@function
External__UserInit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+76,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 External__UserInit,.Lfe29-External__UserInit
	.align 16
	.type	 External__ToExpr,@function
External__ToExpr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+96,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 External__ToExpr,.Lfe30-External__ToExpr
	.align 16
	.type	 External__ToType,@function
External__ToType:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+100,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 External__ToType,.Lfe31-External__ToType
	.align 16
	.type	 External__TypeOf,@function
External__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 External__TypeOf,.Lfe32-External__TypeOf
	.align 16
	.type	 External__Base,@function
External__Base:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 40(%eax),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 External__Base,.Lfe33-External__Base
	.align 16
	.type	 M_External_t31c3b916_LINK,@function
M_External_t31c3b916_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_External+552,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_External+392,%eax
	movl %eax,4(%edx)
	movl MI_ValueRep+172,%eax
	movl %eax,8(%edx)
	movl MM_External+396,%eax
	movl %eax,12(%edx)
	movl MM_External+400,%eax
	movl %eax,16(%edx)
	movl MM_External+404,%eax
	movl %eax,20(%edx)
	movl MM_External+408,%eax
	movl %eax,24(%edx)
	movl MM_External+412,%eax
	movl %eax,28(%edx)
	movl MM_External+416,%eax
	movl %eax,32(%edx)
	movl MM_External+420,%eax
	movl %eax,36(%edx)
	movl MM_External+424,%eax
	movl %eax,40(%edx)
	movl MM_External+428,%eax
	movl %eax,44(%edx)
	movl MM_External+432,%eax
	movl %eax,48(%edx)
	popl %ebp
	ret
.Lfe34:
	.size	 M_External_t31c3b916_LINK,.Lfe34-M_External_t31c3b916_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_External
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe35:
	.size	 _m3_fault,.Lfe35-_m3_fault
.globl MM_External
.data
	.align 4
	.type	 MM_External,@object
	.size	 MM_External,1632
MM_External:
	.long MM_External+1344
	.long MM_External+44
	.long MM_External+500
	.long MM_External+488
	.zero	4
	.long MM_External+944
	.zero	28
	.long 834910484
.byte 208
.byte 125
.byte 170
.byte 60
.byte 196
.byte 196
.byte 105
.byte 13
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	20
	.long MM_External+1581
	.long MM_External+1589
	.long MM_External+1594
	.zero	28
	.long MM_External+1618
	.long MM_External+148
	.zero	8
	.long 834910486
.byte 208
.byte 125
.byte 170
.byte 60
.byte 198
.byte 196
.byte 105
.byte 13
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_External+1539
	.long MM_External+1543
	.long MM_External+1547
	.zero	4
	.long M_External_t31c3b916_LINK
	.long -105857942
	.zero	12
	.long MM_External+1561
	.long MM_External+1570
	.long MM_External+252
	.zero	8
	.long 1191028636
.byte 207
.byte 5
.byte 231
.byte 87
.byte 83
.byte 162
.byte 26
.byte 17
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_External+1490
	.long MM_External+1495
	.long MM_External+1500
	.zero	24
	.long MM_External+1515
	.long MM_External+1526
	.zero	4
	.long External__ParseImport
	.long External__ParseFromImport
	.long External__Push
	.long External__ImportObj
	.long External__ResolveImports
	.long External__LookUpInList
	.long External__GenInitLinks
	.long External__NeedExportInit
	.long External__InitExports
	.long External__Check
	.long External__Load
	.long External__Declare
	.long External__ConstInit
	.long External__NeedInit
	.long External__LangInit
	.long External__UserInit
	.long External__ToExpr
	.long External__ToType
	.long External__TypeOf
	.long External__Base
	.long External__NewSet
	.long External__NoteExport
	.long External__NoteImport
	.long External__ParseImports
	.long External__LoadImports
	.long External__GenLinkInfo
	.long External__GenImports
	.long External__GetImports
	.long External__NeedGlobalInit
	.long External__InitGlobals
	.long External__IsExportable
	.long External__Redirect
	.long External__Visit
	.long 112524164
	.long 1191028636
	.zero	4
	.long MM_External+544
	.long 112524164
	.long 2
	.long MM_External+520
	.long 21
	.ascii	"inconsistent imports"
	.zero	4
	.long MM_External+552
	.long 834910484
	.long MM_External+592
	.long 834910486
	.long 2
	.long MM_External+572
	.long 20
	.ascii	"symbol not exported"
	.zero	1
	.long MM_External+600
	.long -1927706832
	.zero	4
	.long 149856025
	.ascii	"Base"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"ToType"
	.zero	1
	.ascii	"ToExpr"
	.zero	1
	.ascii	"UserInit"
	.zero	1
	.ascii	"LangInit"
	.zero	1
	.ascii	"NeedInit"
	.zero	1
	.ascii	"ConstInit"
	.zero	1
	.ascii	"Declare"
	.zero	1
	.ascii	"Load"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Visit"
	.zero	1
	.ascii	"InitExports"
	.zero	1
	.ascii	"InitGlobals"
	.zero	1
	.ascii	"NeedExportInit"
	.zero	1
	.ascii	"NeedGlobalInit"
	.zero	1
	.ascii	"GetImports"
	.zero	1
	.ascii	"GenImports"
	.zero	1
	.ascii	"GenInitLinks"
	.zero	1
	.ascii	"GenLinkInfo"
	.zero	1
	.ascii	"Redirect"
	.zero	1
	.ascii	"IsExportable"
	.zero	1
	.ascii	"LoadImports"
	.zero	1
	.ascii	"LookUpInList"
	.zero	1
	.ascii	"ResolveImports"
	.zero	1
	.ascii	"ImportObj"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"ParseFromImport"
	.zero	1
	.ascii	"ParseImport"
	.zero	1
	.ascii	"ParseImports"
	.zero	1
	.ascii	"NoteImport"
	.zero	1
	.ascii	"NoteExport"
	.zero	1
	.ascii	"NewSet"
	.zero	1
	.long External__Base
	.long MM_External+608
	.zero	4
	.long External__TypeOf
	.long MM_External+613
	.zero	4
	.long External__ToType
	.long MM_External+620
	.zero	4
	.long External__ToExpr
	.long MM_External+627
	.zero	4
	.long External__UserInit
	.long MM_External+634
	.zero	4
	.long External__LangInit
	.long MM_External+643
	.zero	4
	.long External__NeedInit
	.long MM_External+652
	.zero	4
	.long External__ConstInit
	.long MM_External+661
	.zero	4
	.long External__Declare
	.long MM_External+671
	.zero	4
	.long External__Load
	.long MM_External+679
	.zero	4
	.long External__Check
	.long MM_External+684
	.zero	4
	.long External__Visit
	.long MM_External+690
	.long MI_External+92
	.long External__InitExports
	.long MM_External+696
	.zero	4
	.long External__InitGlobals
	.long MM_External+708
	.long MI_External+80
	.long External__NeedExportInit
	.long MM_External+720
	.zero	4
	.long External__NeedGlobalInit
	.long MM_External+735
	.long MI_External+76
	.long External__GetImports
	.long MM_External+750
	.long MI_External+72
	.long External__GenImports
	.long MM_External+761
	.long MI_External+68
	.long External__GenInitLinks
	.long MM_External+772
	.zero	4
	.long External__GenLinkInfo
	.long MM_External+785
	.long MI_External+64
	.long External__Redirect
	.long MM_External+797
	.long MI_External+88
	.long External__IsExportable
	.long MM_External+806
	.long MI_External+84
	.long External__LoadImports
	.long MM_External+819
	.long MI_External+60
	.long External__LookUpInList
	.long MM_External+831
	.zero	4
	.long External__ResolveImports
	.long MM_External+844
	.zero	4
	.long External__ImportObj
	.long MM_External+859
	.zero	4
	.long External__Push
	.long MM_External+869
	.zero	4
	.long External__ParseFromImport
	.long MM_External+874
	.zero	4
	.long External__ParseImport
	.long MM_External+890
	.zero	4
	.long External__ParseImports
	.long MM_External+902
	.long MI_External+56
	.long External__NoteImport
	.long MM_External+915
	.long MI_External+52
	.long External__NoteExport
	.long MM_External+926
	.long MI_External+48
	.long External__NewSet
	.long MM_External+937
	.long MI_External+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/External.m3"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 16
.byte 20
.byte 185
.byte 195
.byte 49
.byte 23
.byte 16
.byte 22
.byte 185
.byte 195
.byte 49
.byte 25
	.ascii	"Import.Set"
	.zero	1
	.ascii	"External.Set"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 22
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 20
.byte 185
.byte 195
.byte 49
	.ascii	"Import.T"
	.zero	1
	.ascii	"External.T"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 4
.byte 14
.byte 16
.byte 16
.byte 0
.byte 4
.byte 4
.byte 37
.byte 4
.byte 0
.byte 8
.byte 15
.byte 7
.byte 16
.byte 20
.byte 185
.byte 195
.byte 49
.byte 16
.byte 218
.byte 241
.byte 152
.byte 186
.byte 7
.byte 16
.byte 22
.byte 185
.byte 195
.byte 49
.byte 19
.byte 254
.byte 126
.byte 2
.byte 28
	.ascii	"External.Port"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
