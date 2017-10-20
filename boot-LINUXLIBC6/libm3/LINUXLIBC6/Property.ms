	.file	"Property.mc"
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
	.type	 Property__New,@function
Property__New:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Property+320,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Property__New,.Lfe1-Property__New
	.align 16
	.type	 PropertyF__Put,@function
PropertyF__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
.L3:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	testl %esi,%esi
	jne .L4
	pushl %esi
	pushl $MM_Property+252
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L4:
	cmpl $0,4(%edi)
	jne .L5
	leal -20(%ebp),%eax
	leal -12(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl $1,-16(%ebp)
	movl $4,-12(%ebp)
	pushl %eax
	movl MM_Property+328,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%edi)
	addl $8,%esp
	testl %eax,%eax
	jne .L6
	pushl $612
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $610
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl %esi,(%eax)
	jmp .L48
	.align 16
.L5:
	movl %esi,%eax
	testl %esi,%esi
	je .L8
	movl -4(%esi),%eax
	sall $11,%eax
	shrl $12,%eax
.L8:
	movl %eax,-28(%ebp)
	xorl %edx,%edx
.L9:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L10
	pushl $692
	call _m3_fault
	.align 16
.L10:
	cmpl %edx,4(%eax)
	ja .L11
	pushl $690
	call _m3_fault
	.align 16
.L11:
	movl (%eax),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,%ecx
	movl (%ecx),%eax
	testl %eax,%eax
	je .L12
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,-28(%ebp)
	jne .L14
.L12:
	movl %esi,(%ecx)
	jmp .L48
	.align 16
.L14:
	incl %edx
	cmpl $3,%edx
	jle .L9
	pushl $0
	movl -28(%ebp),%ebx
	pushl %ebx
	pushl %edi
	call Property__MoveToFront
	addl $12,%esp
	testl %eax,%eax
	je .L17
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L18
	pushl $836
	call _m3_fault
	.align 16
.L18:
	cmpl $0,4(%eax)
	jne .L7
	pushl $834
	call _m3_fault
	.align 16
.L17:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L20
	pushl $916
	call _m3_fault
	.align 16
.L20:
	movl 4(%eax),%edx
	jmp .L21
	.align 16
.L22:
	testl %ecx,%ecx
	jge .L23
	pushl $945
	call _m3_fault
	.align 16
.L23:
	movl %ecx,%edx
.L21:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L24
	pushl $948
	call _m3_fault
	.align 16
.L24:
	leal -1(%edx),%ecx
	movl 4(%eax),%ebx
	movl %ebx,-28(%ebp)
	cmpl %ebx,%ecx
	jb .L25
	pushl $946
	call _m3_fault
	.align 16
.L25:
	movl (%eax),%eax
	cmpl $0,-4(%eax,%edx,4)
	je .L22
	cmpl %edx,-28(%ebp)
	jne .L28
	leal -20(%ebp),%edx
	leal -12(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl $1,-16(%ebp)
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L29
	pushl $980
	call _m3_fault
	.align 16
.L29:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-12(%ebp)
	pushl %edx
	movl MM_Property+328,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl 4(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L30
	pushl $996
	call _m3_fault
	.align 16
.L30:
	xorl %edx,%edx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-24(%ebp)
	jmp .L31
	.align 16
.L32:
	testl %ecx,%ecx
	jne .L33
	pushl $996
	call _m3_fault
	.align 16
.L33:
	movl %ecx,%eax
	cmpl %edx,4(%eax)
	ja .L34
	pushl $994
	call _m3_fault
	.align 16
.L34:
	movl (%eax),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-28(%ebp)
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L35
	pushl $996
	call _m3_fault
	.align 16
.L35:
	cmpl %edx,4(%eax)
	ja .L36
	pushl $994
	call _m3_fault
	.align 16
.L36:
	movl (%eax),%eax
	movl -28(%ebp),%ebx
	movl (%eax,%edx,4),%eax
	movl %eax,(%ebx)
	incl %edx
.L31:
	cmpl %edx,-24(%ebp)
	jge .L32
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L38
	pushl $1012
	call _m3_fault
	.align 16
.L38:
	movl 4(%eax),%eax
	testl %ecx,%ecx
	jne .L39
	pushl $1012
	call _m3_fault
	.align 16
.L39:
	movl %eax,%edx
	movl 4(%ecx),%ebx
	decl %ebx
	movl %ebx,-28(%ebp)
	jmp .L40
	.align 16
.L41:
	testl %ecx,%ecx
	jne .L42
	pushl $1012
	call _m3_fault
	.align 16
.L42:
	movl %ecx,%eax
	cmpl %edx,4(%eax)
	ja .L43
	pushl $1010
	call _m3_fault
	.align 16
.L43:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L40:
	cmpl %edx,-28(%ebp)
	jge .L41
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L45
	pushl $1028
	call _m3_fault
	.align 16
.L45:
	movl 4(%eax),%edx
	movl %ecx,4(%edi)
.L28:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L46
	pushl $1076
	call _m3_fault
	.align 16
.L46:
	cmpl %edx,4(%eax)
	ja .L47
	pushl $1074
	call _m3_fault
	.align 16
.L47:
	movl (%eax),%eax
	movl %esi,(%eax,%edx,4)
.L48:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PropertyF__Put,.Lfe2-PropertyF__Put
	.align 16
	.type	 PropertyF__Remove,@function
PropertyF__Remove:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl $0
	pushl %eax
	pushl %edx
	call Property__RemoveP
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PropertyF__Remove,.Lfe3-PropertyF__Remove
	.align 16
	.type	 PropertyF__RemoveSub,@function
PropertyF__RemoveSub:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl $1
	pushl %eax
	pushl %edx
	call Property__RemoveP
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PropertyF__RemoveSub,.Lfe4-PropertyF__RemoveSub
	.align 16
	.type	 Property__RemoveP,@function
Property__RemoveP:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
.L52:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 4(%esi),%eax
	testl %eax,%eax
	je .L78
	cmpl $0,4(%eax)
	jne .L55
	pushl $1282
	call _m3_fault
	.align 16
.L55:
	movl (%eax),%eax
	movl (%eax),%eax
	testl %eax,%eax
	je .L56
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
.L56:
	cmpl $1048575,%eax
	jle .L57
	pushl $1281
	call _m3_fault
	.align 16
.L57:
	cmpl $1048575,%ebx
	jle .L58
	pushl $1281
	call _m3_fault
	.align 16
.L58:
	pushl %ebx
	pushl %eax
	movl MI_RTType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L59
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %esi
	call Property__MoveToFront
	addl $12,%esp
	testl %eax,%eax
	je .L78
.L59:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L60
	pushl $1332
	call _m3_fault
	.align 16
.L60:
	movl 4(%eax),%ecx
.L62:
	decl %ecx
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L63
	pushl $1348
	call _m3_fault
	.align 16
.L63:
	movl 4(%eax),%ebx
	cmpl %ebx,%ecx
	jb .L64
	pushl $1346
	call _m3_fault
	.align 16
.L64:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%edx
	testl %edx,%edx
	je .L62
	testl %ecx,%ecx
	jne .L67
	movl %ecx,4(%esi)
	jmp .L78
	.align 16
.L67:
	cmpl %ebx,%ecx
	jb .L68
	pushl $1378
	call _m3_fault
	.align 16
.L68:
	movl %edx,%ebx
	movl $0,(%eax,%ecx,4)
	jmp .L71
	.align 16
.L72:
	leal -1(%ecx),%eax
	movl %eax,%ecx
	sarl $1,%ecx
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L73
	pushl $1444
	call _m3_fault
	.align 16
.L73:
	cmpl %ecx,4(%eax)
	ja .L74
	pushl $1442
	call _m3_fault
	.align 16
.L74:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%edx
	movl %ebx,(%eax,%ecx,4)
	movl %edx,%ebx
.L71:
	testl %ecx,%ecx
	jne .L72
.L78:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Property__RemoveP,.Lfe5-Property__RemoveP
	.align 16
	.type	 PropertyF__Get,@function
PropertyF__Get:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 4(%ebx),%eax
	testl %eax,%eax
	je .L92
	xorl %ecx,%ecx
.L81:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L82
	pushl $1620
	call _m3_fault
	.align 16
.L82:
	cmpl %ecx,4(%eax)
	ja .L83
	pushl $1618
	call _m3_fault
	.align 16
.L83:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%edx
	testl %edx,%edx
	je .L84
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %esi,%eax
	jne .L86
.L84:
	movl %edx,%eax
	jmp .L92
	.align 16
.L86:
	incl %ecx
	cmpl $3,%ecx
	jle .L81
	pushl $0
	pushl %esi
	pushl %ebx
	call Property__MoveToFront
	addl $12,%esp
	testl %eax,%eax
	je .L89
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L90
	pushl $1700
	call _m3_fault
	.align 16
.L90:
	cmpl $0,4(%eax)
	jne .L91
	pushl $1698
	call _m3_fault
	.align 16
.L91:
	movl (%eax),%eax
	movl (%eax),%eax
.L89:
.L92:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 PropertyF__Get,.Lfe6-PropertyF__Get
	.align 16
	.type	 PropertyF__GetSub,@function
PropertyF__GetSub:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	testl %eax,%eax
	je .L108
	xorl %ebx,%ebx
.L95:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L96
	pushl $1860
	call _m3_fault
	.align 16
.L96:
	cmpl %ebx,4(%eax)
	ja .L97
	pushl $1858
	call _m3_fault
	.align 16
.L97:
	movl (%eax),%eax
	leal (%eax,%ebx,4),%esi
	movl (%esi),%eax
	testl %eax,%eax
	je .L98
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl $1048575,%eax
	jle .L100
	pushl $1873
	call _m3_fault
	.align 16
.L100:
	cmpl $1048575,12(%ebp)
	jle .L101
	pushl $1873
	call _m3_fault
	.align 16
.L101:
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_RTType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L102
.L98:
	movl (%esi),%eax
	jmp .L108
	.align 16
.L102:
	incl %ebx
	cmpl $3,%ebx
	jle .L95
	pushl $1
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	call Property__MoveToFront
	addl $12,%esp
	testl %eax,%eax
	je .L105
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L106
	pushl $1972
	call _m3_fault
	.align 16
.L106:
	cmpl $0,4(%eax)
	jne .L107
	pushl $1970
	call _m3_fault
	.align 16
.L107:
	movl (%eax),%eax
	movl (%eax),%eax
.L105:
.L108:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 PropertyF__GetSub,.Lfe7-PropertyF__GetSub
	.align 16
	.type	 Property__MoveToFront,@function
Property__MoveToFront:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L110:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%ecx
	xorl %esi,%esi
	cmpl $0,4(%ecx)
	je .L137
	movl %esi,%ebx
.L112:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L113
	pushl $2196
	call _m3_fault
	.align 16
.L113:
	movl 4(%eax),%edx
	cmpl %ebx,%edx
	je .L138
	cmpl %edx,%ebx
	jb .L116
	pushl $2210
	call _m3_fault
	.align 16
.L116:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	testl %esi,%esi
	jne .L117
.L138:
	movl -8(%ebp),%eax
.L137:
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L109
	.align 16
.L117:
	cmpb $0,16(%ebp)
	je .L118
	movl -4(%esi),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl $1048575,%eax
	jle .L120
	pushl $2257
	call _m3_fault
	.align 16
.L120:
	cmpl $1048575,%edi
	jle .L121
	pushl $2257
	call _m3_fault
	.align 16
.L121:
	pushl %edi
	pushl %eax
	movl MI_RTType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L127
	jmp .L124
	.align 16
.L118:
	movl -4(%esi),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %edi,%eax
	je .L127
.L124:
	incl %ebx
	jmp .L112
	.align 16
.L128:
	leal -1(%ebx),%eax
	sarl $1,%eax
	movl 8(%ebp),%ecx
	movl %eax,-12(%ebp)
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L129
	pushl $2372
	call _m3_fault
	.align 16
.L129:
	movl 4(%eax),%edi
	cmpl %edi,%ebx
	jb .L130
	pushl $2370
	call _m3_fault
	.align 16
.L130:
	movl (%eax),%eax
	leal (%eax,%ebx,4),%edx
	cmpl %edi,-12(%ebp)
	jb .L132
	pushl $2370
	call _m3_fault
	.align 16
.L132:
	movl -12(%ebp),%ecx
	movl (%eax,%ecx,4),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%ebx
.L127:
	testl %ebx,%ebx
	jne .L128
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L134
	pushl $2388
	call _m3_fault
	.align 16
.L134:
	cmpl $0,4(%eax)
	jne .L135
	pushl $2386
	call _m3_fault
	.align 16
.L135:
	movl (%eax),%edx
	movl %esi,(%edx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L136:
.L109:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Property__MoveToFront,.Lfe8-Property__MoveToFront
	.align 16
	.type	 M_Property_te814ecb5_LINK,@function
M_Property_te814ecb5_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Property+652,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MI_PropertyF+44,%eax
	movl %eax,4(%edx)
	movl MI_PropertyF+52,%eax
	movl %eax,8(%edx)
	movl MI_PropertyF+48,%eax
	movl %eax,16(%edx)
	movl MI_PropertyF+60,%eax
	movl %eax,12(%edx)
	movl MI_PropertyF+56,%eax
	movl %eax,20(%edx)
	popl %ebp
	ret
.Lfe9:
	.size	 M_Property_te814ecb5_LINK,.Lfe9-M_Property_te814ecb5_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Property
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_Property
.data
	.align 4
	.type	 MM_Property,@object
	.size	 MM_Property,732
MM_Property:
	.long MM_Property+492
	.long MM_Property+44
	.long MM_Property+320
	.long MM_Property+308
	.zero	4
	.long MM_Property+392
	.zero	28
	.long 276539390
.byte 4
.byte 116
.byte 100
.byte 10
.byte 250
.byte 211
.byte 31
.byte 26
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_Property+695
	.long MM_Property+700
	.long MM_Property+705
	.zero	28
	.long MM_Property+709
	.long MM_Property+148
	.zero	8
	.long -401281867
.byte 230
.byte 170
.byte 180
.byte 230
.byte 83
.byte 70
.byte 160
.byte 14
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Property+638
	.long MM_Property+640
	.long MM_Property+642
	.zero	4
	.long M_Property_te814ecb5_LINK
	.long -642427489
	.zero	12
	.long MM_Property+660
	.long MM_Property+682
	.zero	4
	.long MM_Property+256
	.ascii	"Property.FatalError"
	.zero	1
	.long Property__RemoveP
	.long Property__MoveToFront
	.long PropertyF__Put
	.long PropertyF__Remove
	.long PropertyF__Get
	.long PropertyF__RemoveSub
	.long PropertyF__GetSub
	.long Property__New
	.long -1941146044
	.long -401281867
	.zero	4
	.long MM_Property+328
	.long -1941146044
	.long MM_Property+652
	.long 276539390
	.ascii	"MoveToFront"
	.zero	1
	.ascii	"GetSub"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"RemoveP"
	.zero	1
	.ascii	"RemoveSub"
	.zero	1
	.ascii	"Remove"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"New"
	.zero	1
	.long Property__MoveToFront
	.long MM_Property+336
	.zero	4
	.long PropertyF__GetSub
	.long MM_Property+348
	.long MI_PropertyF+60
	.long PropertyF__Get
	.long MM_Property+355
	.long MI_PropertyF+52
	.long Property__RemoveP
	.long MM_Property+359
	.zero	4
	.long PropertyF__RemoveSub
	.long MM_Property+367
	.long MI_PropertyF+56
	.long PropertyF__Remove
	.long MM_Property+377
	.long MI_PropertyF+48
	.long PropertyF__Put
	.long MM_Property+384
	.long MI_PropertyF+44
	.long Property__New
	.long MM_Property+388
	.long MI_Property+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/property/Property.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 254
.byte 167
.byte 123
.byte 16
	.zero	6
	.long -401281867
	.ascii	"Property_^%#%^__0001M"
	.zero	1
	.ascii	"Property.Set"
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
.byte 17
	.ascii	"Property.SetElements"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
