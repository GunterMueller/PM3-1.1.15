	.file	"Revelation.mc"
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
	.type	 Revelation__NewSet,@function
Revelation__NewSet:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Revelation+696,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebx,(%eax)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Revelation__NewSet,.Lfe1-Revelation__NewSet
	.align 16
	.type	 Revelation__Push,@function
Revelation__Push:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Revelation+564,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L3
	pushl $1264
	call _m3_fault
	.align 16
.L3:
	movl %edx,MM_Revelation+564
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Revelation__Push,.Lfe2-Revelation__Push
	.align 16
	.type	 Revelation__Pop,@function
Revelation__Pop:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,MM_Revelation+564
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Revelation__Pop,.Lfe3-Revelation__Pop
	.align 16
	.type	 Revelation__Parse,@function
Revelation__Parse:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $0,5(%eax)
	je .L6
	pushl $MM_Revelation+708
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L6:
	movl 8(%ebp),%eax
	cmpb $0,7(%eax)
	je .L7
	pushl $MM_Revelation+752
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L7:
	movl 8(%ebp),%eax
	cmpb $0,6(%eax)
	je .L8
	pushl $MM_Revelation+796
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L8:
	movl 8(%ebp),%eax
	cmpb $0,4(%eax)
	je .L9
	pushl $MM_Revelation+840
	jmp .L20
	.align 16
.L9:
	cmpl $0,8(%eax)
	je .L10
	pushl $MM_Revelation+884
.L20:
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L10:
	pushl $90
	jmp .L21
	.align 16
.L13:
	movl MI_Scanner+112,%eax
	xorl %esi,%esi
	call *%eax
	movl %eax,%ebx
	cmpb $14,MI_Scanner+44
	jne .L14
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Scanner+112,%eax
	movl %ebx,%esi
	call *%eax
	movl %eax,%ebx
.L14:
	movl MI_Scanner+88,%edi
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $20,%eax
	jle .L15
	cmpl $21,%eax
	jle .L16
	cmpl $32,%eax
	jle .L15
	cmpl $33,%eax
	jle .L17
	jmp .L15
	.align 16
.L16:
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	pushl %edi
	movl -4(%ebp),%edx
	pushl %edx
	jmp .L22
	.align 16
.L17:
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	pushl %edi
	pushl $0
.L22:
	pushl %eax
	pushl %ebx
	pushl %esi
	call Revelation__New
	addl $20,%esp
	jmp .L18
	.align 16
.L15:
	pushl $MM_Revelation+944
	movl MI_Scanner+116,%eax
	call *%eax
	addl $4,%esp
.L18:
	pushl $16
.L21:
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	xorl %edx,%edx
	movb MI_Scanner+44,%dl
	movl %edx,-4(%ebp)
	cmpl $1,%edx
	je .L13
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Revelation__Parse,.Lfe4-Revelation__Parse
	.align 16
	.type	 Revelation__New,@function
Revelation__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl MM_Revelation+564,%eax
	testl %eax,%eax
	jne .L24
	pushl $2052
	call _m3_fault
	.align 16
.L24:
	cmpl $0,(%eax)
	jne .L25
	pushl $2048
	call _m3_fault
	.align 16
.L25:
	movl MM_Revelation+972,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L26
	pushl $2084
	call _m3_fault
	.align 16
.L26:
	movl MM_Revelation+564,%eax
	testl %eax,%eax
	jne .L27
	pushl $2084
	call _m3_fault
	.align 16
.L27:
	movl (%eax),%eax
	movl %eax,(%ebx)
	movl %esi,8(%ebx)
	movl %edi,12(%ebx)
	movl $0,16(%ebx)
	movl 16(%ebp),%edx
	movl %edx,20(%ebx)
	movl $0,24(%ebx)
	movb 20(%ebp),%dl
	movb %dl,28(%ebx)
	movb $0,29(%ebx)
	movl 24(%ebp),%edx
	movl %edx,32(%ebx)
	movl MI_Scope+68,%eax
	call *%eax
	movl %eax,4(%ebx)
	pushl $0
	pushl $1
	pushl %ebx
	call Revelation__AddOne
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Revelation__New,.Lfe5-Revelation__New
	.align 16
	.type	 Revelation__Inherit,@function
Revelation__Inherit:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	leal -24(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	pushl %edx
	call Revelation__InitIterator
	addl $8,%esp
	jmp .L38
	.align 16
.L39:
	movl -24(%ebp),%eax
	testl %eax,%eax
	jne .L40
	pushl $2372
	call _m3_fault
	.align 16
.L40:
	cmpb $0,8(%eax)
	je .L38
	pushl %ebx
	pushl $0
	movl 4(%eax),%eax
	pushl %eax
	call Revelation__AddOne
	addl $12,%esp
.L38:
	leal -24(%ebp),%eax
	pushl %eax
	call Revelation__Iterate
	addl $4,%esp
	testl %eax,%eax
	jne .L39
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Revelation__Inherit,.Lfe6-Revelation__Inherit
	.align 16
	.type	 Revelation__AddOne,@function
Revelation__AddOne:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%esi
	movl MM_Revelation+980,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%ebx
	movl %ecx,%edx
	addl $4,%esp
	movl %ebx,4(%ecx)
	movb 12(%ebp),%bl
	movb %bl,8(%ecx)
	movb $0,9(%ecx)
	movl %esi,12(%edx)
	testl %edx,%edx
	jne .L45
	pushl $2500
	call _m3_fault
	.align 16
.L45:
	movl MM_Revelation+564,%eax
	testl %eax,%eax
	jne .L46
	pushl $2500
	call _m3_fault
	.align 16
.L46:
	movl 8(%eax),%eax
	movl %eax,(%edx)
	movl MM_Revelation+564,%eax
	testl %eax,%eax
	jne .L47
	pushl $2516
	call _m3_fault
	.align 16
.L47:
	movl %eax,%edx
	leal -8(%ebp),%esp
	movl %ecx,8(%edx)
	incl 4(%edx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Revelation__AddOne,.Lfe7-Revelation__AddOne
	.align 16
	.type	 Revelation__TypeCheck,@function
Revelation__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L50
	pushl $2628
	call _m3_fault
	.align 16
.L50:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jle .L49
	movl MI_Scanner+88,%ecx
	movl %ecx,-20(%ebp)
	movl 8(%ebp),%ecx
	cmpl $0,12(%ecx)
	je .L54
	pushl $2704
	call _m3_fault
	.align 16
.L54:
	addl %eax,%eax
	movl %eax,-16(%ebp)
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_Revelation+988,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	movl 8(%ebp),%ecx
	movl %esi,%edx
	movl %eax,12(%ecx)
	movl -16(%ebp),%ebx
	decl %ebx
	jmp .L56
	.align 16
.L57:
	cmpl $0,8(%ebp)
	jne .L58
	pushl $2756
	call _m3_fault
	.align 16
.L58:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L59
	pushl $2756
	call _m3_fault
	.align 16
.L59:
	cmpl %edx,4(%eax)
	ja .L60
	pushl $2754
	call _m3_fault
	.align 16
.L60:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L56:
	cmpl %ebx,%edx
	jle .L57
	jmp .L62
	.align 16
.L63:
	movl %eax,%ebx
	movl 4(%ebx),%eax
	pushl %eax
	call Revelation__DoBind
	addl $4,%esp
	movl 8(%ebp),%ecx
	movl (%ebx),%eax
	movl %eax,8(%ecx)
	pushl %ebx
	pushl %ecx
	call Revelation__HashInsert
	addl $8,%esp
.L62:
	cmpl $0,8(%ebp)
	jne .L68
	pushl $2804
	call _m3_fault
	.align 16
.L68:
	movl 8(%ebp),%ecx
	movl 8(%ecx),%eax
	testl %eax,%eax
	jne .L63
	movl %eax,%edi
	movl -16(%ebp),%ecx
	decl %ecx
	movl %ecx,-24(%ebp)
	jmp .L70
	.align 16
.L71:
	cmpl $0,8(%ebp)
	jne .L72
	pushl $2948
	call _m3_fault
	.align 16
.L72:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L73
	pushl $2948
	call _m3_fault
	.align 16
.L73:
	cmpl %edi,4(%eax)
	ja .L74
	pushl $2946
	call _m3_fault
	.align 16
.L74:
	movl (%eax),%eax
	movl (%eax,%edi,4),%esi
	jmp .L75
	.align 16
.L76:
	movl 12(%esi),%ebx
	jmp .L78
	.align 16
.L79:
	movl 4(%ebx),%eax
	pushl %eax
	call Revelation__DoCheck0
	addl $4,%esp
	movl (%ebx),%ebx
.L78:
	testl %ebx,%ebx
	jne .L79
	testl %esi,%esi
	jne .L83
	pushl $3012
	call _m3_fault
	.align 16
.L83:
	movl (%esi),%esi
.L75:
	testl %esi,%esi
	jne .L76
	incl %edi
.L70:
	cmpl %edi,-24(%ebp)
	jge .L71
	xorl %edi,%edi
	movl -16(%ebp),%ecx
	decl %ecx
	movl %ecx,-28(%ebp)
	jmp .L86
	.align 16
.L87:
	cmpl $0,8(%ebp)
	jne .L88
	pushl $3108
	call _m3_fault
	.align 16
.L88:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L89
	pushl $3108
	call _m3_fault
	.align 16
.L89:
	cmpl %edi,4(%eax)
	ja .L90
	pushl $3106
	call _m3_fault
	.align 16
.L90:
	movl (%eax),%eax
	movl (%eax,%edi,4),%esi
	jmp .L91
	.align 16
.L92:
	movl 12(%esi),%ebx
	jmp .L94
	.align 16
.L95:
	movl 4(%ebx),%eax
	pushl %eax
	call Revelation__DoCheck
	addl $4,%esp
	movl (%ebx),%ebx
.L94:
	testl %ebx,%ebx
	jne .L95
	testl %esi,%esi
	jne .L99
	pushl $3172
	call _m3_fault
	.align 16
.L99:
	movl (%esi),%esi
.L91:
	testl %esi,%esi
	jne .L92
	incl %edi
.L86:
	cmpl %edi,-28(%ebp)
	jge .L87
	xorl %ebx,%ebx
	movl -16(%ebp),%edi
	decl %edi
	jmp .L102
	.align 16
.L103:
	cmpl $0,8(%ebp)
	jne .L104
	pushl $3268
	call _m3_fault
	.align 16
.L104:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L105
	pushl $3268
	call _m3_fault
	.align 16
.L105:
	cmpl %ebx,4(%eax)
	ja .L106
	pushl $3266
	call _m3_fault
	.align 16
.L106:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	jmp .L107
	.align 16
.L108:
	movl 4(%esi),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call Revelation__Reduce
	addl $8,%esp
	movl (%esi),%esi
.L107:
	testl %esi,%esi
	jne .L108
	incl %ebx
.L102:
	cmpl %edi,%ebx
	jle .L103
	movl -20(%ebp),%ecx
	movl %ecx,MI_Scanner+88
.L49:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Revelation__TypeCheck,.Lfe8-Revelation__TypeCheck
	.align 16
	.type	 Revelation__DoBind,@function
Revelation__DoBind:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L114
	pushl $3476
	call _m3_fault
	.align 16
.L114:
	cmpb $0,29(%edi)
	jne .L113
	movl 32(%edi),%eax
	movl %eax,MI_Scanner+88
	leal 8(%edi),%edx
	movl %edx,-4(%ebp)
	pushl %edx
	movl 4(%edi),%eax
	pushl %eax
	movl MI_Scope+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movl %edi,%ebx
	addl $8,%esp
	movl %esi,16(%ebx)
	testl %esi,%esi
	jne .L120
	pushl $MM_Revelation+1000
	jmp .L132
	.align 16
.L120:
	pushl %esi
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $2,%eax
	je .L125
	pushl $MM_Revelation+1024
.L132:
	movl -4(%ebp),%edx
	pushl %edx
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
	movl 20(%ebx),%eax
	movl %eax,24(%ebx)
	jmp .L124
	.align 16
.L125:
	pushl %esi
	movl MI_Value+100,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	movl %ebx,24(%edi)
.L124:
	testl %edi,%edi
	jne .L130
	pushl $3684
	call _m3_fault
	.align 16
.L130:
	movl 24(%edi),%eax
	pushl %eax
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,24(%edi)
.L113:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Revelation__DoBind,.Lfe9-Revelation__DoBind
	.align 16
	.type	 Revelation__HashInsert,@function
Revelation__HashInsert:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L134:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,12(%ebp)
	jne .L135
	pushl $3748
	call _m3_fault
	.align 16
.L135:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L136
	pushl $3748
	call _m3_fault
	.align 16
.L136:
	movl 24(%eax),%edi
	pushl %edi
	movl MI_OpaqueType+60,%eax
	call *%eax
	addl $4,%esp
	cmpl $0,8(%ebp)
	jne .L137
	pushl $3764
	call _m3_fault
	.align 16
.L137:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%edx
	testl %edx,%edx
	jne .L138
	pushl $3764
	call _m3_fault
	.align 16
.L138:
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call m3_mod
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L140
	pushl $3780
	call _m3_fault
	.align 16
.L140:
	movl %eax,%edx
	cmpl %esi,4(%edx)
	ja .L141
	pushl $3778
	call _m3_fault
	.align 16
.L141:
	movl (%edx),%eax
	movl (%eax,%esi,4),%ebx
.L142:
	testl %ebx,%ebx
	jne .L151
	movl MM_Revelation+1048,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	cmpl $0,8(%ebp)
	jne .L144
	pushl $3892
	call _m3_fault
	.align 16
.L144:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L145
	pushl $3892
	call _m3_fault
	.align 16
.L145:
	cmpl %esi,4(%eax)
	ja .L146
	pushl $3890
	call _m3_fault
	.align 16
.L146:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	movl %eax,(%edx)
	movl %edx,%eax
	movl %edi,4(%eax)
	movl 8(%ebp),%ecx
	movl %eax,%ebx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L148
	pushl $3908
	call _m3_fault
	.align 16
.L148:
	cmpl %esi,4(%eax)
	ja .L149
	pushl $3906
	call _m3_fault
	.align 16
.L149:
	movl (%eax),%eax
	movl %ebx,(%eax,%esi,4)
	jmp .L150
	.align 16
.L151:
	pushl $0
	pushl %edi
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L150
	movl (%ebx),%ebx
	jmp .L142
	.align 16
.L150:
	testl %ebx,%ebx
	jne .L154
	pushl $4068
	call _m3_fault
	.align 16
.L154:
	movl 12(%ebx),%edx
	jmp .L155
	.align 16
.L156:
	cmpl $0,12(%ebp)
	jne .L158
	pushl $4100
	call _m3_fault
	.align 16
.L158:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx)
	je .L165
	movl (%edx),%edx
.L155:
	testl %edx,%edx
	jne .L156
	cmpl $0,12(%ebp)
	jne .L162
	pushl $4180
	call _m3_fault
	.align 16
.L162:
	testl %ebx,%ebx
	jne .L163
	pushl $4180
	call _m3_fault
	.align 16
.L163:
	movl 12(%ebp),%ecx
	movl 12(%ebx),%eax
	movl %eax,(%ecx)
	movl %ecx,12(%ebx)
.L165:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Revelation__HashInsert,.Lfe10-Revelation__HashInsert
	.align 16
	.type	 Revelation__DoCheck0,@function
Revelation__DoCheck0:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L167
	pushl $4276
	call _m3_fault
	.align 16
.L167:
	movl 32(%ebx),%eax
	movl %eax,MI_Scanner+88
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	addl $4,%esp
	movl %eax,20(%ebx)
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,24(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Revelation__DoCheck0,.Lfe11-Revelation__DoCheck0
	.align 16
	.type	 Revelation__DoCheck,@function
Revelation__DoCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L173
	pushl $4404
	call _m3_fault
	.align 16
.L173:
	cmpb $0,29(%esi)
	jne .L172
	movl 32(%esi),%eax
	movl %eax,MI_Scanner+88
	movl 24(%esi),%eax
	pushl %eax
	movl MI_OpaqueType+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L180
	pushl $MM_Revelation+1060
	jmp .L199
	.align 16
.L180:
	movl 24(%esi),%eax
	pushl %eax
	movl MI_OpaqueType+52,%eax
	call *%eax
	addl $4,%esp
	movl %eax,%ebx
	pushl %ebx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L179
	pushl $MM_Revelation+1096
.L199:
	leal 8(%esi),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
.L179:
	testl %esi,%esi
	jne .L184
	pushl $4548
	call _m3_fault
	.align 16
.L184:
	cmpb $0,28(%esi)
	je .L185
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%edi
	addl $4,%esp
	cmpl %ebx,20(%esi)
	jne .L190
	pushl %ebx
	movl MI_RefType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L189
	pushl %ebx
	movl MI_ObjectType+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L189
.L190:
	pushl $MM_Revelation+1152
	leal 8(%esi),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
	movl %edi,20(%esi)
.L189:
	testl %esi,%esi
	jne .L192
	pushl $4676
	call _m3_fault
	.align 16
.L192:
	pushl $1
	pushl $1
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Value+112,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	movl 20(%esi),%eax
	pushl %eax
	movl MI_RefType+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L197
	pushl %ebx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_RefType+72,%eax
	jmp .L200
	.align 16
.L197:
	pushl %ebx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_ObjectType+84,%eax
.L200:
	call *%eax
	addl $8,%esp
.L185:
	testl %esi,%esi
	jne .L198
	pushl $4788
	call _m3_fault
	.align 16
.L198:
	movb $1,29(%esi)
.L172:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Revelation__DoCheck,.Lfe12-Revelation__DoCheck
	.align 16
	.type	 Revelation__Reduce,@function
Revelation__Reduce:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L202:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %edi,%edi
	je .L269
	pushl %edi
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_OpaqueType+60,%eax
	movl %ebx,%edi
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L204
	pushl %ebx
	movl MI_ObjectType+76,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl 8(%ebp),%ecx
	pushl %ecx
	call Revelation__Reduce
	jmp .L268
	.align 16
.L204:
	pushl %ebx
	movl MI_OpaqueType+52,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl 8(%ebp),%ecx
	pushl %ecx
	call Revelation__Reduce
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L205
	pushl $5076
	call _m3_fault
	.align 16
.L205:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L206
	pushl $5076
	call _m3_fault
	.align 16
.L206:
	pushl %esi
	movl 4(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L208
	pushl $5092
	call _m3_fault
	.align 16
.L208:
	movl %eax,%ebx
	cmpl %esi,4(%ebx)
	ja .L209
	pushl $5090
	call _m3_fault
	.align 16
.L209:
	movl (%ebx),%eax
	movl (%eax,%esi,4),%esi
	movl %esi,-12(%ebp)
.L210:
	cmpl $0,-12(%ebp)
	je .L268
	pushl $0
	pushl %edi
	movl -12(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L216
	movl -12(%ebp),%ecx
	movl (%ecx),%ecx
	movl %ecx,-12(%ebp)
	jmp .L210
	.align 16
.L216:
	movl -12(%ebp),%ecx
	cmpb $0,16(%ecx)
	jne .L268
	movl -12(%ebp),%ecx
	cmpl $0,8(%ecx)
	jne .L268
	movl -12(%ebp),%ecx
	movb $1,16(%ecx)
	movl 12(%ecx),%esi
	jmp .L222
	.align 16
.L223:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L225
	pushl $5316
	call _m3_fault
	.align 16
.L225:
	movl 20(%eax),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call Revelation__Reduce
	addl $8,%esp
	movl (%esi),%esi
.L222:
	testl %esi,%esi
	jne .L223
	cmpl $0,-12(%ebp)
	jne .L228
	pushl $5396
	call _m3_fault
	.align 16
.L228:
	movl -12(%ebp),%ecx
	movl 12(%ecx),%edi
	testl %edi,%edi
	jne .L229
	pushl $5412
	call _m3_fault
	.align 16
.L229:
	movl (%edi),%esi
	jmp .L230
	.align 16
.L231:
	testl %edi,%edi
	jne .L232
	pushl $5460
	call _m3_fault
	.align 16
.L232:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L233
	pushl $5460
	call _m3_fault
	.align 16
.L233:
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L235
	pushl $5460
	call _m3_fault
	.align 16
.L235:
	movl %ebx,20(%eax)
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L237
	pushl $5476
	call _m3_fault
	.align 16
.L237:
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	addl $4,%esp
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L239
	pushl $5476
	call _m3_fault
	.align 16
.L239:
	movl %eax,20(%edx)
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L242
	pushl $5540
	call _m3_fault
	.align 16
.L242:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L243
	pushl $5540
	call _m3_fault
	.align 16
.L243:
	movl 20(%eax),%eax
	pushl %eax
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L249
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L246
	pushl $5572
	call _m3_fault
	.align 16
.L246:
	cmpb $0,28(%eax)
	je .L248
	pushl %edi
	pushl %esi
	call Revelation__TooStrong
	jmp .L270
	.align 16
.L249:
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L250
	pushl $5588
	call _m3_fault
	.align 16
.L250:
	testl %edi,%edi
	jne .L251
	pushl $5588
	call _m3_fault
	.align 16
.L251:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L252
	pushl $5588
	call _m3_fault
	.align 16
.L252:
	movl 20(%eax),%eax
	pushl %eax
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L253
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L255
	pushl $5620
	call _m3_fault
	.align 16
.L255:
	cmpb $0,28(%eax)
	je .L256
	pushl %esi
	pushl %edi
	call Revelation__TooStrong
	addl $8,%esp
.L256:
	movl %esi,%edi
	jmp .L248
	.align 16
.L253:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L258
	pushl $5668
	call _m3_fault
	.align 16
.L258:
	movl 32(%eax),%eax
	movl %eax,MI_Scanner+88
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L260
	pushl $5684
	call _m3_fault
	.align 16
.L260:
	movl $MM_Revelation+1216,%ebx
	pushl %ebx
	addl $8,%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
	testl %esi,%esi
	jne .L261
	pushl $5700
	call _m3_fault
	.align 16
.L261:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L262
	pushl $5700
	call _m3_fault
	.align 16
.L262:
	movl 32(%eax),%eax
	movl %eax,MI_Scanner+88
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L264
	pushl $5716
	call _m3_fault
	.align 16
.L264:
	pushl %ebx
	addl $8,%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
.L270:
	addl $8,%esp
.L248:
	testl %esi,%esi
	jne .L265
	pushl $5748
	call _m3_fault
	.align 16
.L265:
	movl (%esi),%esi
.L230:
	testl %esi,%esi
	jne .L231
	cmpl $0,-12(%ebp)
	jne .L267
	pushl $5796
	call _m3_fault
	.align 16
.L267:
	movl -12(%ebp),%ecx
	movl %edi,8(%ecx)
.L268:
	movl -8(%ebp),%eax
.L269:
	movl %eax,RTThread__handlerStack
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Revelation__Reduce,.Lfe13-Revelation__Reduce
	.align 16
	.type	 Revelation__TooStrong,@function
Revelation__TooStrong:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ecx
	testl %eax,%eax
	jne .L272
	pushl $5876
	call _m3_fault
	.align 16
.L272:
	movl 4(%eax),%edx
	testl %ecx,%ecx
	jne .L273
	pushl $5876
	call _m3_fault
	.align 16
.L273:
	movl 4(%ecx),%esi
	testl %edx,%edx
	jne .L274
	pushl $5908
	call _m3_fault
	.align 16
.L274:
	cmpb $0,28(%edx)
	jne .L275
	pushl $5904
	call _m3_fault
	.align 16
.L275:
	testl %esi,%esi
	jne .L276
	pushl $5924
	call _m3_fault
	.align 16
.L276:
	cmpb $0,28(%esi)
	je .L283
	movl 32(%edx),%eax
	movl %eax,MI_Scanner+88
	movl $MM_Revelation+1256,%ebx
	pushl %ebx
	leal 8(%edx),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
	movl 32(%esi),%eax
	movl %eax,MI_Scanner+88
	pushl %ebx
	jmp .L285
	.align 16
.L283:
	movl 32(%esi),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_Revelation+1296
.L285:
	leal 8(%esi),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Revelation__TooStrong,.Lfe14-Revelation__TooStrong
	.align 16
	.type	 Revelation__LookUp,@function
Revelation__LookUp:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L287:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %ebx
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%ebx
	movl MM_Revelation+564,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L288
	pushl $6164
	call _m3_fault
	.align 16
.L288:
	cmpl $0,12(%eax)
	je .L289
	pushl %ebx
	movl MI_OpaqueType+60,%eax
	call *%eax
	movl MM_Revelation+564,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L290
	pushl $6180
	call _m3_fault
	.align 16
.L290:
	movl 12(%edx),%edx
	testl %edx,%edx
	jne .L291
	pushl $6180
	call _m3_fault
	.align 16
.L291:
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call m3_mod
	movl %eax,%edx
	movl MM_Revelation+564,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L292
	pushl $6196
	call _m3_fault
	.align 16
.L292:
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L293
	pushl $6196
	call _m3_fault
	.align 16
.L293:
	cmpl %edx,4(%eax)
	ja .L294
	pushl $6194
	call _m3_fault
	.align 16
.L294:
	pushl %ebx
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	pushl %eax
	call Revelation__SearchEQ
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L298
.L289:
	movl MM_Revelation+564,%eax
	testl %eax,%eax
	jne .L296
	pushl $6244
	call _m3_fault
	.align 16
.L296:
	pushl %ebx
	movl 8(%eax),%eax
	pushl %eax
	call Revelation__SearchListEQ
	movl %eax,%edx
.L298:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L297:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Revelation__LookUp,.Lfe15-Revelation__LookUp
	.align 16
	.type	 Revelation__SearchEQ,@function
Revelation__SearchEQ:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
.L300:
	testl %ebx,%ebx
	je .L316
	pushl $0
	pushl %edi
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L306
	movl (%ebx),%ebx
	jmp .L300
	.align 16
.L306:
	movl 8(%ebx),%esi
	testl %esi,%esi
	je .L314
	movl 4(%esi),%ebx
	testl %ebx,%ebx
	jne .L309
	pushl $6516
	call _m3_fault
	.align 16
.L309:
	cmpb $0,28(%ebx)
	jne .L311
.L316:
	xorl %eax,%eax
	jmp .L315
	.align 16
.L311:
	cmpb $0,29(%ebx)
	jne .L312
	pushl %ebx
	call Revelation__CheckRHS
	addl $4,%esp
.L312:
	pushl %esi
	call Revelation__NoteUse
	movl 20(%ebx),%eax
	jmp .L315
	.align 16
.L314:
	pushl %edi
	movl 12(%ebx),%eax
	pushl %eax
	call Revelation__SearchListEQ
.L315:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Revelation__SearchEQ,.Lfe16-Revelation__SearchEQ
	.align 16
	.type	 Revelation__SearchListEQ,@function
Revelation__SearchListEQ:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	jmp .L318
	.align 16
.L319:
	movl 4(%esi),%ebx
	testl %ebx,%ebx
	jne .L321
	pushl $6756
	call _m3_fault
	.align 16
.L321:
	cmpl $0,24(%ebx)
	jne .L322
	cmpl $0,20(%ebx)
	je .L322
	pushl $6752
	call _m3_fault
	.align 16
.L322:
	testl %ebx,%ebx
	jne .L324
	pushl $6772
	call _m3_fault
	.align 16
.L324:
	cmpb $0,28(%ebx)
	je .L325
	pushl $0
	pushl %edi
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L325
	cmpb $0,29(%ebx)
	jne .L328
	pushl %ebx
	call Revelation__CheckRHS
	addl $4,%esp
.L328:
	pushl %esi
	call Revelation__NoteUse
	movl 20(%ebx),%eax
	jmp .L332
	.align 16
.L325:
	testl %esi,%esi
	jne .L330
	pushl $6852
	call _m3_fault
	.align 16
.L330:
	movl (%esi),%esi
.L318:
	testl %esi,%esi
	jne .L319
	movl %esi,%eax
.L332:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Revelation__SearchListEQ,.Lfe17-Revelation__SearchListEQ
	.align 16
	.type	 Revelation__LookUpAll,@function
Revelation__LookUpAll:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L334:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 12(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movl $0,(%eax)
	movl 12(%ebp),%ebx
	movl $0,44(%ebx)
	pushl %esi
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movl MM_Revelation+564,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L335
	pushl $7028
	call _m3_fault
	.align 16
.L335:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L336
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call Revelation__SearchListAll
	addl $12,%esp
.L336:
	movl MM_Revelation+564,%eax
	testl %eax,%eax
	jne .L338
	pushl $7076
	call _m3_fault
	.align 16
.L338:
	cmpl $0,12(%eax)
	je .L345
	pushl %ebx
	pushl %eax
	call Revelation__Reduce
	pushl %ebx
	movl MI_OpaqueType+60,%eax
	call *%eax
	movl MM_Revelation+564,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L340
	pushl $7108
	call _m3_fault
	.align 16
.L340:
	movl 12(%edx),%edx
	testl %edx,%edx
	jne .L341
	pushl $7108
	call _m3_fault
	.align 16
.L341:
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call m3_mod
	movl %eax,%edx
	movl MM_Revelation+564,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L342
	pushl $7124
	call _m3_fault
	.align 16
.L342:
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L343
	pushl $7124
	call _m3_fault
	.align 16
.L343:
	movl %eax,%ebx
	cmpl %edx,4(%ebx)
	ja .L344
	pushl $7122
	call _m3_fault
	.align 16
.L344:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl (%ebx),%eax
	movl (%eax,%edx,4),%eax
	pushl %eax
	call Revelation__SearchAll
.L345:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Revelation__LookUpAll,.Lfe18-Revelation__LookUpAll
	.align 16
	.type	 Revelation__SearchAll,@function
Revelation__SearchAll:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L347:
	testl %ebx,%ebx
	je .L346
	pushl $0
	pushl %esi
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L353
	movl (%ebx),%ebx
	jmp .L347
	.align 16
.L353:
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L364
	pushl %eax
	call Revelation__NoteUse
	addl $4,%esp
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L357
	pushl $7380
	call _m3_fault
	.align 16
.L357:
	movl 4(%eax),%ebx
	testl %ebx,%ebx
	jne .L358
	pushl $7396
	call _m3_fault
	.align 16
.L358:
	pushl $0
	pushl %esi
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L359
	pushl $7392
	call _m3_fault
	.align 16
.L359:
	cmpb $0,29(%ebx)
	jne .L361
	pushl %ebx
	call Revelation__CheckRHS
	addl $4,%esp
.L361:
	movl 20(%ebx),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	call Revelation__AddType
	jmp .L346
	.align 16
.L364:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl 12(%ebx),%eax
	pushl %eax
	call Revelation__SearchListAll
.L346:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Revelation__SearchAll,.Lfe19-Revelation__SearchAll
	.align 16
	.type	 Revelation__SearchListAll,@function
Revelation__SearchListAll:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	jmp .L366
	.align 16
.L367:
	movl 4(%esi),%ebx
	testl %ebx,%ebx
	jne .L369
	pushl $7620
	call _m3_fault
	.align 16
.L369:
	cmpl $0,24(%ebx)
	jne .L370
	cmpl $0,20(%ebx)
	je .L370
	pushl $7616
	call _m3_fault
	.align 16
.L370:
	testl %ebx,%ebx
	jne .L372
	pushl $7636
	call _m3_fault
	.align 16
.L372:
	pushl $0
	pushl %edi
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L373
	pushl %esi
	call Revelation__NoteUse
	addl $4,%esp
	cmpb $0,29(%ebx)
	jne .L376
	pushl %ebx
	call Revelation__CheckRHS
	addl $4,%esp
.L376:
	movl 20(%ebx),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	call Revelation__AddType
	addl $8,%esp
.L373:
	testl %esi,%esi
	jne .L377
	pushl $7716
	call _m3_fault
	.align 16
.L377:
	movl (%esi),%esi
.L366:
	testl %esi,%esi
	jne .L367
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Revelation__SearchListAll,.Lfe20-Revelation__SearchListAll
	.align 16
	.type	 Revelation__AddType,@function
Revelation__AddType:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	cmpl $9,%eax
	jg .L380
	movl %ebx,4(%edx,%eax,4)
	movl 8(%ebp),%edx
	incl (%edx)
	jmp .L379
	.align 16
.L380:
	movl MM_Revelation+1356,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movl 44(%eax),%eax
	movl %eax,(%edx)
	movl %ebx,4(%edx)
	movl 8(%ebp),%eax
	movl %edx,44(%eax)
.L379:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Revelation__AddType,.Lfe21-Revelation__AddType
	.align 16
	.type	 Revelation__NoteUse,@function
Revelation__NoteUse:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,MI_Scanner+100
	je .L383
	testl %eax,%eax
	jne .L385
	pushl $7988
	call _m3_fault
	.align 16
.L385:
	movb $1,9(%eax)
	movl 12(%eax),%eax
	testl %eax,%eax
	je .L383
	orb $128,30(%eax)
.L383:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Revelation__NoteUse,.Lfe22-Revelation__NoteUse
	.align 16
	.type	 Revelation__CheckRHS,@function
Revelation__CheckRHS:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MI_Scanner+88,%esi
	testl %ebx,%ebx
	jne .L390
	pushl $8132
	call _m3_fault
	.align 16
.L390:
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,20(%ebx)
	leal -8(%ebp),%esp
	movl %esi,MI_Scanner+88
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Revelation__CheckRHS,.Lfe23-Revelation__CheckRHS
	.align 16
	.type	 Revelation__Reuse,@function
Revelation__Reuse:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	leal -24(%ebp),%eax
	movl 8(%ebp),%edx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	pushl %edx
	call Revelation__InitIterator
	addl $8,%esp
	jmp .L393
	.align 16
.L394:
	movl -24(%ebp),%eax
	testl %eax,%eax
	jne .L395
	pushl $8276
	call _m3_fault
	.align 16
.L395:
	movb $0,9(%eax)
.L393:
	leal -24(%ebp),%eax
	pushl %eax
	call Revelation__Iterate
	addl $4,%esp
	testl %eax,%eax
	jne .L394
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Revelation__Reuse,.Lfe24-Revelation__Reuse
	.align 16
	.type	 Revelation__Declare,@function
Revelation__Declare:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	xorl %edx,%edx
	pushl %esi
	leal -24(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl %edx,-24(%ebp)
	movl %edx,-20(%ebp)
	movl %edx,-16(%ebp)
	movl %edx,-12(%ebp)
	movl %edx,-8(%ebp)
	movl %edx,-4(%ebp)
	movl %edx,-32(%ebp)
	movl %edx,-28(%ebp)
	pushl %eax
	pushl %esi
	call Revelation__InitIterator
	addl $8,%esp
	jmp .L398
	.align 16
.L399:
	movl -24(%ebp),%edx
	testl %edx,%edx
	jne .L400
	pushl $8468
	call _m3_fault
	.align 16
.L400:
	cmpb $0,9(%edx)
	jne .L401
	cmpb $0,8(%edx)
	je .L398
.L401:
	leal -28(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 8(%edx),%al
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call Revelation__DeclareRevelation
	addl $16,%esp
.L398:
	leal -24(%ebp),%eax
	pushl %eax
	call Revelation__Iterate
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L399
	movl %ebx,(%edi)
	movl 16(%ebp),%ecx
	movl %ebx,(%ecx)
	movl -32(%ebp),%eax
	testl %eax,%eax
	jle .L407
	pushl $1
	pushl %eax
	pushl %esi
	call Revelation__GenList
	movl %eax,(%edi)
	addl $12,%esp
.L407:
	movl -28(%ebp),%eax
	testl %eax,%eax
	jle .L397
	pushl %ebx
	pushl %eax
	pushl %esi
	call Revelation__GenList
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
.L397:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Revelation__Declare,.Lfe25-Revelation__Declare
	.align 16
	.type	 Revelation__GenList,@function
Revelation__GenList:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl $0
	pushl $MM_Revelation+1368
	movl MI_Target+100,%eax
	pushl %eax
	movl 12(%ebp),%eax
	imull MI_M3RT+288,%eax
	addl MI_Target+96,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,%edi
	leal -24(%ebp),%eax
	pushl %eax
	movl %edi,%esi
	pushl %ebx
	call Revelation__InitIterator
	addl $24,%esp
	jmp .L410
	.align 16
.L411:
	movl -24(%ebp),%ebx
	testl %ebx,%ebx
	jne .L412
	pushl $8884
	call _m3_fault
	.align 16
.L412:
	cmpb $0,8(%ebx)
	je .L410
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L415
	pushl $8884
	call _m3_fault
	.align 16
.L415:
	movb 16(%ebp),%dl
	cmpb %dl,28(%eax)
	jne .L410
	movl 24(%eax),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+280,%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl $16,%esp
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L419
	pushl $8932
	call _m3_fault
	.align 16
.L419:
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+284,%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl MI_M3RT+288,%esi
	addl $16,%esp
.L410:
	leal -24(%ebp),%eax
	pushl %eax
	call Revelation__Iterate
	addl $4,%esp
	testl %eax,%eax
	jne .L411
	leal -36(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Revelation__GenList,.Lfe26-Revelation__GenList
	.align 16
	.type	 Revelation__DeclareRevelation,@function
Revelation__DeclareRevelation:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $1,%ebx
	cmpb $0,12(%ebp)
	je .L422
	movl MI_Module+72,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L422:
	movb %bl,-4(%ebp)
	testl %esi,%esi
	jne .L423
	pushl $9124
	call _m3_fault
	.align 16
.L423:
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Value+60,%eax
	call *%eax
	addl $4,%esp
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	addl $4,%esp
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl (%edx),%eax
	addl $4,%esp
	movl 36(%eax),%ecx
	cmpb $0,12(%ebp)
	sete %al
	andl $255,%eax
	pushl %eax
	xorl %eax,%eax
	movb 28(%esi),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	movl (%esi),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	addl $28,%esp
	cmpb $0,12(%ebp)
	je .L421
	cmpb $0,28(%esi)
	je .L432
	pushl %ebx
	pushl %edi
	movl MI_CG+160,%eax
	call *%eax
	addl $8,%esp
	movl 20(%esi),%eax
	pushl %eax
	movl 24(%esi),%eax
	pushl %eax
	movl MI_ObjectType+80,%eax
	call *%eax
	movl 16(%ebp),%ecx
	jmp .L436
	.align 16
.L432:
	movl 20(%ebp),%ecx
.L436:
	incl (%ecx)
.L421:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Revelation__DeclareRevelation,.Lfe27-Revelation__DeclareRevelation
	.align 16
	.type	 Revelation__InitIterator,@function
Revelation__InitIterator:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl $0,(%edx)
	movl 12(%ebp),%edx
	movl %ecx,4(%edx)
	testl %ecx,%ecx
	jne .L438
	pushl $9492
	call _m3_fault
	.align 16
.L438:
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl $0,12(%edx)
	movl $0,16(%edx)
	movl $0,20(%edx)
	movl 12(%ecx),%eax
	testl %eax,%eax
	je .L437
	movl 4(%eax),%eax
	movl %eax,20(%edx)
.L437:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Revelation__InitIterator,.Lfe28-Revelation__InitIterator
	.align 16
	.type	 Revelation__Iterate,@function
Revelation__Iterate:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L444
	movl %edx,(%eax)
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	testl %eax,%eax
	jne .L445
	pushl $9668
	call _m3_fault
	.align 16
.L445:
	movl (%eax),%eax
	movl %eax,8(%edx)
	movl $1,%eax
	jmp .L457
	.align 16
.L444:
	movl 12(%eax),%ecx
	testl %ecx,%ecx
	je .L449
	movl %eax,%edx
	movl 12(%ecx),%eax
	movl %eax,8(%edx)
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L448
	pushl $9748
	call _m3_fault
	.align 16
.L448:
	movl (%eax),%eax
	movl %eax,12(%edx)
	jmp .L456
	.align 16
.L450:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L451
	pushl $9812
	call _m3_fault
	.align 16
.L451:
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L452
	pushl $9812
	call _m3_fault
	.align 16
.L452:
	cmpl %ecx,4(%eax)
	ja .L453
	pushl $9810
	call _m3_fault
	.align 16
.L453:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%eax
	movl %eax,12(%edx)
	incl 16(%edx)
.L449:
	movl 8(%ebp),%edx
	movl 16(%edx),%ecx
	cmpl %ecx,20(%edx)
	jle .L455
	cmpl $0,12(%edx)
	je .L450
.L455:
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L456
	movl %eax,(%edx)
	jmp .L457
	.align 16
.L456:
	pushl %edx
	call Revelation__Iterate
.L457:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Revelation__Iterate,.Lfe29-Revelation__Iterate
	.align 16
	.type	 _INITM_Revelation,@function
_INITM_Revelation:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Revelation+564
	pushl $0
	call Revelation__NewSet
	movl %eax,MM_Revelation+564
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 _INITM_Revelation,.Lfe30-_INITM_Revelation
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Revelation
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe31:
	.size	 _m3_fault,.Lfe31-_m3_fault
.globl MM_Revelation
.data
	.align 4
	.type	 MM_Revelation,@object
	.size	 MM_Revelation,2476
MM_Revelation:
	.long MM_Revelation+2029
	.long MM_Revelation+44
	.long MM_Revelation+696
	.long MM_Revelation+684
	.zero	4
	.long MM_Revelation+1660
	.zero	4
	.long MM_Revelation+2024
	.long MM_Revelation+2024
	.zero	4
	.long _INITM_Revelation
	.zero	8
	.long -880706287
.byte 149
.byte 4
.byte 228
.byte 198
.byte 132
.byte 121
.byte 101
.byte 13
	.long 1
	.zero	4
	.long 36
	.long 4
	.zero	20
	.long MM_Revelation+2402
	.long MM_Revelation+2414
	.long MM_Revelation+2421
	.zero	24
	.long MM_Revelation+2450
	.long MM_Revelation+2463
	.long MM_Revelation+148
	.zero	8
	.long -546689485
.byte 183
.byte 109
.byte 56
.byte 203
.byte 132
.byte 67
.byte 82
.byte 20
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_Revelation+2338
	.long MM_Revelation+2345
	.long MM_Revelation+2350
	.zero	24
	.long MM_Revelation+2370
	.long MM_Revelation+2386
	.long MM_Revelation+252
	.zero	8
	.long 621924923
.byte 85
.byte 196
.byte 71
.byte 59
.byte 110
.byte 22
.byte 86
.byte 30
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_Revelation+2275
	.long MM_Revelation+2281
	.long MM_Revelation+2286
	.zero	24
	.long MM_Revelation+2306
	.long MM_Revelation+2322
	.long MM_Revelation+356
	.zero	8
	.long -1053941286
.byte 55
.byte 233
.byte 133
.byte 209
.byte 237
.byte 200
.byte 171
.byte 16
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_Revelation+2236
	.long MM_Revelation+2241
	.long MM_Revelation+2246
	.zero	28
	.long MM_Revelation+2254
	.long MM_Revelation+460
	.zero	8
	.long -511832119
.byte 125
.byte 52
.byte 142
.byte 238
.byte 180
.byte 59
.byte 240
.byte 15
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_Revelation+2177
	.long MM_Revelation+2182
	.long MM_Revelation+2187
	.zero	24
	.long MM_Revelation+2206
	.long MM_Revelation+2221
	.zero	8
	.long Revelation__New
	.long Revelation__AddOne
	.long Revelation__DoBind
	.long Revelation__HashInsert
	.long Revelation__DoCheck0
	.long Revelation__DoCheck
	.long Revelation__Reduce
	.long Revelation__TooStrong
	.long Revelation__SearchEQ
	.long Revelation__SearchListEQ
	.long Revelation__SearchAll
	.long Revelation__SearchListAll
	.long Revelation__AddType
	.long Revelation__NoteUse
	.long Revelation__CheckRHS
	.long Revelation__GenList
	.long Revelation__DeclareRevelation
	.long Revelation__InitIterator
	.long Revelation__Iterate
	.long Revelation__NewSet
	.long Revelation__Push
	.long Revelation__Pop
	.long Revelation__Parse
	.long Revelation__Inherit
	.long Revelation__TypeCheck
	.long Revelation__Declare
	.long Revelation__LookUp
	.long Revelation__LookUpAll
	.long Revelation__Reuse
	.long -1349160656
	.long -511832119
	.zero	4
	.long MM_Revelation+972
	.long -1349160656
	.long 2
	.long MM_Revelation+716
	.long 30
	.ascii	"a revelation cannot be inline"
	.zero	3
	.long 2
	.long MM_Revelation+760
	.long 32
	.ascii	"a revelation cannot be obsolete"
	.zero	1
	.long 2
	.long MM_Revelation+804
	.long 30
	.ascii	"a revelation cannot be unused"
	.zero	3
	.long 2
	.long MM_Revelation+848
	.long 32
	.ascii	"a revelation cannot be external"
	.zero	1
	.long 2
	.long MM_Revelation+892
	.long 48
	.ascii	"a revelation does not have a calling convention"
	.zero	1
	.long 2
	.long MM_Revelation+952
	.long 20
	.ascii	"missing '=' or '<:'"
	.zero	1
	.long MM_Revelation+980
	.long -880706287
	.long MM_Revelation+988
	.long -546689485
	.long MM_Revelation+1048
	.long -1053941286
	.long 2
	.long MM_Revelation+1008
	.long 10
	.ascii	"undefined"
	.zero	3
	.long 2
	.long MM_Revelation+1032
	.long 14
	.ascii	"is not a type"
	.zero	3
	.long MM_Revelation+1356
	.long 621924923
	.long 2
	.long MM_Revelation+1068
	.long 22
	.ascii	"is not an opaque type"
	.zero	3
	.long 2
	.long MM_Revelation+1104
	.long 41
	.ascii	"identification is not to a legal subtype"
	.zero	4
	.long 2
	.long MM_Revelation+1160
	.long 50
	.ascii	"right-hand side must be a branded type expression"
	.zero	3
	.long 2
	.long MM_Revelation+1224
	.long 26
	.ascii	"non-comparable revelation"
	.zero	3
	.long 2
	.long MM_Revelation+1264
	.long 26
	.ascii	"multiple full revelations"
	.zero	3
	.long 2
	.long MM_Revelation+1304
	.long 52
	.ascii	"partial revelation is stronger than full revelation"
	.zero	5
	.long -1051002792
	.long 2
	.long MM_Revelation+1376
	.long 12
	.ascii	"revelations"
	.zero	1
	.ascii	"_INITM_Revelation"
	.zero	1
	.ascii	"Iterate"
	.zero	1
	.ascii	"InitIterator"
	.zero	1
	.ascii	"DeclareRevelation"
	.zero	1
	.ascii	"GenList"
	.zero	1
	.ascii	"Declare"
	.zero	1
	.ascii	"Reuse"
	.zero	1
	.ascii	"CheckRHS"
	.zero	1
	.ascii	"NoteUse"
	.zero	1
	.ascii	"AddType"
	.zero	1
	.ascii	"SearchListAll"
	.zero	1
	.ascii	"SearchAll"
	.zero	1
	.ascii	"LookUpAll"
	.zero	1
	.ascii	"SearchListEQ"
	.zero	1
	.ascii	"SearchEQ"
	.zero	1
	.ascii	"LookUp"
	.zero	1
	.ascii	"TooStrong"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"DoCheck"
	.zero	1
	.ascii	"DoCheck0"
	.zero	1
	.ascii	"HashInsert"
	.zero	1
	.ascii	"DoBind"
	.zero	1
	.ascii	"TypeCheck"
	.zero	1
	.ascii	"AddOne"
	.zero	1
	.ascii	"Inherit"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"NewSet"
	.zero	3
	.long _INITM_Revelation
	.long MM_Revelation+1388
	.zero	4
	.long Revelation__Iterate
	.long MM_Revelation+1406
	.zero	4
	.long Revelation__InitIterator
	.long MM_Revelation+1414
	.zero	4
	.long Revelation__DeclareRevelation
	.long MM_Revelation+1427
	.zero	4
	.long Revelation__GenList
	.long MM_Revelation+1445
	.zero	4
	.long Revelation__Declare
	.long MM_Revelation+1453
	.long MI_Revelation+172
	.long Revelation__Reuse
	.long MM_Revelation+1461
	.long MI_Revelation+184
	.long Revelation__CheckRHS
	.long MM_Revelation+1467
	.zero	4
	.long Revelation__NoteUse
	.long MM_Revelation+1476
	.zero	4
	.long Revelation__AddType
	.long MM_Revelation+1484
	.zero	4
	.long Revelation__SearchListAll
	.long MM_Revelation+1492
	.zero	4
	.long Revelation__SearchAll
	.long MM_Revelation+1506
	.zero	4
	.long Revelation__LookUpAll
	.long MM_Revelation+1516
	.long MI_Revelation+180
	.long Revelation__SearchListEQ
	.long MM_Revelation+1526
	.zero	4
	.long Revelation__SearchEQ
	.long MM_Revelation+1539
	.zero	4
	.long Revelation__LookUp
	.long MM_Revelation+1548
	.long MI_Revelation+176
	.long Revelation__TooStrong
	.long MM_Revelation+1555
	.zero	4
	.long Revelation__Reduce
	.long MM_Revelation+1565
	.zero	4
	.long Revelation__DoCheck
	.long MM_Revelation+1572
	.zero	4
	.long Revelation__DoCheck0
	.long MM_Revelation+1580
	.zero	4
	.long Revelation__HashInsert
	.long MM_Revelation+1589
	.zero	4
	.long Revelation__DoBind
	.long MM_Revelation+1600
	.zero	4
	.long Revelation__TypeCheck
	.long MM_Revelation+1607
	.long MI_Revelation+168
	.long Revelation__AddOne
	.long MM_Revelation+1617
	.zero	4
	.long Revelation__Inherit
	.long MM_Revelation+1624
	.long MI_Revelation+164
	.long Revelation__New
	.long MM_Revelation+1632
	.zero	4
	.long Revelation__Parse
	.long MM_Revelation+1636
	.long MI_Revelation+160
	.long Revelation__Pop
	.long MM_Revelation+1642
	.long MI_Revelation+156
	.long Revelation__Push
	.long MM_Revelation+1646
	.long MI_Revelation+152
	.long Revelation__NewSet
	.long MM_Revelation+1651
	.long MI_Revelation+148
	.zero	4
.byte 43
.byte 52
.byte 2
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Revelation.m3"
	.zero	1
.byte 4
.byte 14
.byte 4
.byte 4
.byte 0
.byte 4
.byte 37
.byte 4
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 7
.byte 16
.byte 51
.byte 46
.byte 106
.byte 223
.byte 16
.byte 218
.byte 33
.byte 46
.byte 193
	.ascii	"Revelation.Set"
	.zero	1
	.ascii	"Revelation.Set"
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
.byte 59
.byte 210
.byte 17
.byte 37
	.ascii	"Revelation.HashTable"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 16
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 6
.byte 15
.byte 5
.byte 16
.byte 59
.byte 210
.byte 17
.byte 37
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 51
.byte 46
.byte 106
.byte 223
.byte 25
.byte 2
	.ascii	"Revelation.Node"
	.zero	1
	.ascii	"Revelation.Node"
	.zero	1
.byte 4
.byte 4
.byte 16
.byte 16
.byte 35
.byte 4
.byte 0
.byte 4
.byte 4
.byte 37
.byte 4
.byte 0
.byte 6
.byte 15
.byte 5
.byte 16
.byte 51
.byte 46
.byte 106
.byte 223
.byte 16
.byte 17
.byte 125
.byte 129
.byte 203
.byte 2
.byte 25
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
	.ascii	"Revelation.List"
	.zero	1
	.ascii	"Revelation.List"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 14
.byte 4
.byte 4
.byte 4
.byte 16
.byte 16
.byte 35
.byte 14
.byte 0
.byte 4
.byte 4
.byte 41
.byte 4
.byte 4
.byte 4
.byte 0
.byte 12
.byte 15
.byte 9
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 15
.byte 2
.byte 19
.byte 254
.byte 126
.byte 26
.byte 23
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 29
.byte 2
.byte 31
.byte 7
	.ascii	"Revelation.T"
	.zero	1
	.ascii	"Revelation.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
