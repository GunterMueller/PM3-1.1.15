	.file	"Scope.mc"
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
	.type	 Scope__PopNew,@function
Scope__PopNew:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Scope+252,%eax
	movl %ebp,%esp
	movl 12(%eax),%eax
	movl %eax,MM_Scope+252
	popl %ebp
	ret
.Lfe1:
	.size	 Scope__PopNew,.Lfe1-Scope__PopNew
	.align 16
	.type	 Scope__PushNew,@function
Scope__PushNew:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb 8(%ebp),%bl
	movl 12(%ebp),%esi
	movl MM_Scope+468,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	movl MI_Scanner+88,%eax
	addl $4,%esp
	movl %eax,4(%edi)
	movl MM_Scope+256,%eax
	movl %eax,8(%edi)
	movl %edi,MM_Scope+256
	movl MM_Scope+252,%eax
	movl %eax,12(%edi)
	movl %esi,16(%edi)
	movb %bl,32(%edi)
	movb 16(%ebp),%dl
	movb %dl,33(%edi)
	movb 20(%ebp),%dl
	movb %dl,34(%edi)
	xorl %eax,%eax
	testb %bl,%bl
	je .L3
	cmpb $0,16(%ebp)
	jne .L3
	testb %dl,%dl
	sete %al
	andl $255,%eax
.L3:
	movb %al,35(%edi)
	movl MI_Module+88,%eax
	call *%eax
	movl %eax,36(%edi)
	movl %edi,MM_Scope+252
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Scope__PushNew,.Lfe2-Scope__PushNew
	.align 16
	.type	 Scope__New1,@function
Scope__New1:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $1
	pushl $0
	pushl $0
	pushl $1
	call Scope__PushNew
	movl %eax,%esi
	pushl %ebx
	call Scope__Insert
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Scope__New1,.Lfe3-Scope__New1
	.align 16
	.type	 Scope__Push,@function
Scope__Push:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Scope+252,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L6
	pushl $1280
	call _m3_fault
	.align 16
.L6:
	movl %edx,MM_Scope+252
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Scope__Push,.Lfe4-Scope__Push
	.align 16
	.type	 Scope__Pop,@function
Scope__Pop:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L8
	pushl $1392
	call _m3_fault
	.align 16
.L8:
	movl %eax,MM_Scope+252
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Scope__Pop,.Lfe5-Scope__Pop
	.align 16
	.type	 Scope__Top,@function
Scope__Top:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Scope+252,%eax
	jmp .L10
	.align 16
.L11:
	movl 12(%eax),%eax
.L10:
	testl %eax,%eax
	je .L13
	cmpb $0,32(%eax)
	je .L11
.L13:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Scope__Top,.Lfe6-Scope__Top
	.align 16
	.type	 Scope__OuterMost,@function
Scope__OuterMost:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L15
	cmpb $0,33(%edx)
	setne %al
	andl $255,%eax
.L15:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Scope__OuterMost,.Lfe7-Scope__OuterMost
	.align 16
	.type	 Scope__LookUpQID,@function
Scope__LookUpQID:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	testl %eax,%eax
	jne .L17
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	pushl %ecx
	call Scope__LookUp
	jmp .L24
	.align 16
.L17:
	pushl $0
	pushl %eax
	pushl %ecx
	call Scope__LookUp
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edx
	addl $16,%esp
	testl %edx,%edx
	je .L21
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_Scope+480
	jg .L21
	movl MM_Scope+476,%eax
	cmpl %ecx,4(%eax)
	jl .L21
	pushl %edx
	movl MI_Module+84,%eax
	call *%eax
	movl %eax,%edx
	pushl $1
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %edx
	call Scope__LookUp
	jmp .L24
	.align 16
.L21:
	xorl %eax,%eax
.L24:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Scope__LookUpQID,.Lfe8-Scope__LookUpQID
	.align 16
	.type	 Scope__LookUp,@function
Scope__LookUp:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L26:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movb $0,-12(%ebp)
.L27:
	testl %esi,%esi
	je .L47
	movl 40(%esi),%eax
	cmpl $29,%eax
	jg .L29
	movl 24(%esi),%ebx
	jmp .L30
	.align 16
.L31:
	movl 8(%ebx),%ebx
.L30:
	testl %ebx,%ebx
	je .L56
	movl 12(%ebp),%ecx
	cmpl %ecx,12(%ebx)
	jne .L31
	jmp .L34
	.align 16
.L29:
	cmpl %eax,44(%esi)
	je .L35
	pushl %esi
	call Scope__Rehash
	addl $4,%esp
.L35:
	movl 48(%esi),%eax
	testl %eax,%eax
	jne .L36
	pushl $2052
	call _m3_fault
	.align 16
.L36:
	movl 4(%eax),%edi
	movl 12(%ebp),%ecx
	pushl %ecx
	movl MI_M3ID+60,%eax
	call *%eax
	pushl %eax
	pushl %edi
	call m3_mod
	addl $12,%esp
	testl %eax,%eax
	jge .L37
	pushl $2065
	call _m3_fault
	.align 16
.L37:
	movl %eax,%edx
.L38:
	movl 48(%esi),%eax
	testl %eax,%eax
	jne .L39
	pushl $2100
	call _m3_fault
	.align 16
.L39:
	cmpl %edx,4(%eax)
	ja .L40
	pushl $2098
	call _m3_fault
	.align 16
.L40:
	movl (%eax),%eax
	movl (%eax,%edx,4),%ebx
	testl %ebx,%ebx
	je .L56
	movl 12(%ebp),%ecx
	cmpl %ecx,12(%ebx)
	je .L34
	incl %edx
	cmpl %edi,%edx
	jl .L38
	xorl %edx,%edx
	jmp .L38
	.align 16
.L34:
	testl %ebx,%ebx
	jne .L46
.L56:
	cmpb $0,16(%ebp)
	jne .L47
	cmpb $0,32(%esi)
	jne .L48
.L47:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L25
	.align 16
.L48:
	movl $1,%eax
	cmpb $0,-12(%ebp)
	jne .L49
	cmpb $0,35(%esi)
	setne %al
	andl $255,%eax
.L49:
	movb %al,-12(%ebp)
	movl 12(%esi),%esi
	jmp .L27
	.align 16
.L46:
	movl $1,%eax
	xorl %edx,%edx
	movb 30(%ebx),%dl
	testb $32,%dl
	jne .L50
	cmpb $0,-12(%ebp)
	setne %al
	andl $255,%eax
.L50:
	andb $223,%dl
	andl $1,%eax
	sall $5,%eax
	orl %edx,%eax
	movb %al,30(%ebx)
	cmpb $0,MI_Scanner+100
	je .L51
	andl $255,%eax
	orb $128,%al
	movb %al,30(%ebx)
	andl $255,%eax
	testb $16,%al
	je .L52
	pushl $MM_Scope+488
	jmp .L57
	.align 16
.L52:
	testb $8,%al
	je .L51
	pushl $MM_Scope+528
.L57:
	movl 12(%ebp),%ecx
	pushl %ecx
	pushl $2
	movl MI_Error+68,%eax
	call *%eax
.L51:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L55:
.L25:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Scope__LookUp,.Lfe9-Scope__LookUp
	.align 16
	.type	 Scope__Rehash,@function
Scope__Rehash:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L59:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 8(%ebp),%ecx
	leal -20(%ebp),%eax
	leal -12(%ebp),%edx
	movl 40(%ecx),%ecx
	movl %ecx,%edi
	addl %ecx,%edi
	movl %edx,-20(%ebp)
	movl $1,-16(%ebp)
	movl %edi,-12(%ebp)
	pushl %eax
	movl MM_Scope+560,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%ebx
	jmp .L60
	.align 16
.L61:
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_M3ID+60,%eax
	call *%eax
	pushl %eax
	pushl %edi
	call m3_mod
	addl $12,%esp
	jmp .L62
	.align 16
.L63:
	incl %eax
	cmpl %edi,%eax
	jl .L62
	xorl %eax,%eax
.L62:
	testl %esi,%esi
	jne .L65
	pushl $2644
	call _m3_fault
	.align 16
.L65:
	cmpl %eax,4(%esi)
	ja .L66
	pushl $2642
	call _m3_fault
	.align 16
.L66:
	movl (%esi),%edx
	movl %edx,-24(%ebp)
	cmpl $0,(%edx,%eax,4)
	jne .L63
	movl %ebx,(%edx,%eax,4)
	movl 8(%ebx),%ebx
.L60:
	testl %ebx,%ebx
	jne .L61
	movl 8(%ebp),%ecx
	movl 40(%ecx),%eax
	movl %eax,44(%ecx)
	movl %esi,48(%ecx)
.L71:
	movl -8(%ebp),%eax
	leal -36(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Scope__Rehash,.Lfe10-Scope__Rehash
	.align 16
	.type	 Scope__Insert,@function
Scope__Insert:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Scope+252,%esi
	movl MI_Scope+44,%edx
	cmpl %edx,%esi
	je .L73
	pushl $1
	movl 12(%ebx),%eax
	pushl %eax
	pushl %edx
	call Scope__LookUp
	addl $12,%esp
	testl %eax,%eax
	je .L73
	pushl $MM_Scope+572
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L73:
	cmpl $0,8(%ebx)
	je .L74
	pushl $MM_Scope+616
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	pushl $2976
	call _m3_fault
	.align 16
.L74:
	cmpl $0,20(%ebx)
	jne .L75
	movl %esi,20(%ebx)
.L75:
	movl 28(%esi),%eax
	testl %eax,%eax
	je .L76
	movl %ebx,8(%eax)
	jmp .L77
	.align 16
.L76:
	movl %ebx,24(%esi)
.L77:
	movl %esi,%eax
	leal -8(%ebp),%esp
	movl %ebx,28(%eax)
	incl 40(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Scope__Insert,.Lfe11-Scope__Insert
	.align 16
	.type	 Scope__ToList,@function
Scope__ToList:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L79
	movl 24(%eax),%eax
.L79:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Scope__ToList,.Lfe12-Scope__ToList
	.align 16
	.type	 Scope__TypeCheck,@function
Scope__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	je .L81
	pushl %esi
	call Scope__CheckDuplicates
	movl 24(%esi),%ebx
	addl $4,%esp
	jmp .L83
	.align 16
.L84:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Value+44,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $8,%esp
.L83:
	testl %ebx,%ebx
	jne .L84
	movl 24(%esi),%ebx
	jmp .L86
	.align 16
.L87:
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L93
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_Scope+672
	jg .L93
	movl MM_Scope+668,%eax
	cmpl %ecx,4(%eax)
	jl .L93
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Procedure+68,%eax
	call *%eax
	addl $8,%esp
.L93:
	movl 8(%ebx),%ebx
.L86:
	testl %ebx,%ebx
	jne .L87
.L81:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Scope__TypeCheck,.Lfe13-Scope__TypeCheck
	.align 16
	.type	 Scope__Enter,@function
Scope__Enter:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	je .L95
	cmpb $0,34(%esi)
	je .L97
	movl MI_CG+304,%eax
	call *%eax
.L97:
	movl 24(%esi),%ebx
	jmp .L98
	.align 16
.L99:
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpb $4,%al
	je .L100
	pushl %ebx
	movl MI_Value+60,%eax
	call *%eax
	addl $4,%esp
.L100:
	movl 8(%ebx),%ebx
.L98:
	testl %ebx,%ebx
	jne .L99
	movl 24(%esi),%ebx
	jmp .L102
	.align 16
.L103:
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpb $4,%al
	jne .L104
	pushl %ebx
	movl MI_Value+60,%eax
	call *%eax
	addl $4,%esp
.L104:
	movl 8(%ebx),%ebx
.L102:
	testl %ebx,%ebx
	jne .L103
	movl 24(%esi),%ebx
	jmp .L106
	.align 16
.L107:
	pushl %ebx
	movl MI_Value+64,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $4,%esp
.L106:
	testl %ebx,%ebx
	jne .L107
.L95:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Scope__Enter,.Lfe14-Scope__Enter
	.align 16
	.type	 Scope__InitValues,@function
Scope__InitValues:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	je .L109
	movl 24(%esi),%ebx
	jmp .L111
	.align 16
.L112:
	pushl %ebx
	movl MI_Value+72,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $4,%esp
.L111:
	testl %ebx,%ebx
	jne .L112
	movl MI_Tracer+160,%eax
	call *%eax
	movl 24(%esi),%ebx
	jmp .L114
	.align 16
.L115:
	pushl %ebx
	movl MI_Value+76,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $4,%esp
.L114:
	testl %ebx,%ebx
	jne .L115
	movl MI_Tracer+160,%eax
	call *%eax
.L109:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Scope__InitValues,.Lfe15-Scope__InitValues
	.align 16
	.type	 Scope__Exit,@function
Scope__Exit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,34(%eax)
	je .L117
	movl MI_CG+308,%eax
	call *%eax
.L117:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Scope__Exit,.Lfe16-Scope__Exit
	.align 16
	.type	 Scope__WarnUnused,@function
Scope__WarnUnused:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L119
	movl MI_Scanner+88,%edi
	movl 24(%eax),%ebx
	jmp .L121
	.align 16
.L122:
	xorl %eax,%eax
	movb 30(%ebx),%al
	testb $128,30(%ebx)
	jne .L123
	testb $32,31(%ebx)
	jne .L123
	testb $8,%al
	jne .L123
	testb $16,%al
	jne .L123
	pushl %ebx
	movl MI_Value+80,%eax
	movl $2,%esi
	call *%eax
	andl $255,%eax
	addl $4,%esp
	cmpl $8,%eax
	je .L125
	cmpl $1,%eax
	jne .L126
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L127
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_Scope+680
	jg .L128
	movl MM_Scope+676,%eax
	cmpl %ecx,4(%eax)
	jge .L127
.L128:
	pushl $4469
	call _m3_fault
	.align 16
.L127:
	pushl %edx
	movl MI_Variable+64,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L126
.L125:
	movl $1,%esi
.L126:
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_Scope+688
	movl 12(%ebx),%eax
	pushl %eax
	pushl %esi
	movl MI_Error+68,%eax
	call *%eax
	addl $12,%esp
.L123:
	movl 8(%ebx),%ebx
.L121:
	testl %ebx,%ebx
	jne .L122
	movl %edi,MI_Scanner+88
.L119:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Scope__WarnUnused,.Lfe17-Scope__WarnUnused
	.align 16
	.type	 Scope__CheckDuplicates,@function
Scope__CheckDuplicates:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MI_M3ID+68,%eax
	movl 8(%ebp),%esi
	call *%eax
	movl 24(%esi),%ebx
	jmp .L131
	.align 16
.L132:
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_M3ID+72,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L133
	pushl %ebx
	pushl %esi
	call Scope__ReportDuplicate
	addl $8,%esp
.L133:
	movl 8(%ebx),%ebx
.L131:
	testl %ebx,%ebx
	jne .L132
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Scope__CheckDuplicates,.Lfe18-Scope__CheckDuplicates
	.align 16
	.type	 Scope__ReportDuplicate,@function
Scope__ReportDuplicate:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl MI_Scanner+88,%edx
	movl %edx,-4(%ebp)
	movl 24(%eax),%ebx
	jmp .L136
	.align 16
.L137:
	movl 8(%ebx),%ebx
.L136:
	testl %ebx,%ebx
	je .L135
	movl 12(%edi),%eax
	cmpl %eax,12(%ebx)
	jne .L137
	cmpl %edi,%ebx
	je .L137
	testl %ebx,%ebx
	je .L135
	movl 4(%edi),%eax
	movl %eax,MI_Scanner+88
	pushl %edi
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,%esi
	jne .L141
	pushl $MM_Scope+712
	jmp .L143
	.align 16
.L141:
	pushl $MM_Scope+744
.L143:
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	movl -4(%ebp),%edx
	movl %edx,MI_Scanner+88
.L135:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Scope__ReportDuplicate,.Lfe19-Scope__ReportDuplicate
	.align 16
	.type	 Scope__ModuleName,@function
Scope__ModuleName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl 20(%eax),%eax
	pushl %eax
	call Scope__ScopeName
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Scope__ModuleName,.Lfe20-Scope__ModuleName
	.align 16
	.type	 Scope__PutStack,@function
Scope__PutStack:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%eax
	xorl %ebx,%ebx
	movl (%eax),%esi
	decl %esi
	jmp .L146
	.align 16
.L147:
	cmpl $99,%ebx
	jle .L148
	pushl $5345
	call _m3_fault
	.align 16
.L148:
	movl 12(%ebp),%eax
	movl 4(%eax,%ebx,4),%eax
	pushl %eax
	pushl %edi
	movl MI_M3ID+64,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L146:
	cmpl %esi,%ebx
	jle .L147
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Scope__PutStack,.Lfe21-Scope__PutStack
	.align 16
	.type	 Scope__StackToText,@function
Scope__StackToText:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	cmpl $0,MM_Scope+272
	jne .L151
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,MM_Scope+272
.L151:
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl (%eax),%esi
	decl %esi
	jmp .L152
	.align 16
.L153:
	cmpl $99,%ebx
	jle .L154
	pushl $5441
	call _m3_fault
	.align 16
.L154:
	movl 8(%ebp),%eax
	movl 4(%eax,%ebx,4),%eax
	pushl %eax
	movl MM_Scope+272,%eax
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L152:
	cmpl %esi,%ebx
	jle .L153
	movl MM_Scope+272,%eax
	pushl %eax
	movl MI_M3Buf+72,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Scope__StackToText,.Lfe22-Scope__StackToText
	.align 16
	.type	 Scope__NameToPrefix,@function
Scope__NameToPrefix:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movb 20(%ebp),%bl
	pushl %edi
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testb %bl,%bl
	je .L157
	movl MM_Scope+264,%ecx
	jmp .L194
	.align 16
.L157:
	movl MM_Scope+268,%ecx
.L194:
	movl %ecx,-8(%ebp)
	cmpb $0,16(%ebp)
	je .L159
	testb $4,30(%edi)
	je .L159
	movl 12(%ebp),%edx
	movl (%edx),%ebx
	cmpl $99,%ebx
	jbe .L160
	pushl $5745
	call _m3_fault
	.align 16
.L160:
	movl 16(%edi),%eax
	jmp .L195
	.align 16
.L159:
	xorl %eax,%eax
	movb 31(%edi),%al
	testb $16,%al
	jne .L162
	testb $8,%al
	jne .L162
	movl 20(%edi),%eax
	cmpb $0,33(%eax)
	je .L163
.L162:
	movl 20(%edi),%eax
	pushl %eax
	call Scope__ScopeName
	addl $4,%esp
	cmpl %eax,MM_Scope+260
	je .L164
	cmpb $0,24(%ebp)
	jne .L165
.L164:
	movl 12(%ebp),%edx
	movl (%edx),%ebx
	cmpl $99,%ebx
	jbe .L193
	pushl $5857
	call _m3_fault
	.align 16
.L165:
	movl 12(%ebp),%edx
	movl (%edx),%ebx
	cmpl $99,%ebx
	jbe .L168
	pushl $5905
	call _m3_fault
	.align 16
.L168:
	movl %eax,4(%edx,%ebx,4)
	movl (%edx),%eax
	incl %eax
	cmpl $99,%eax
	jbe .L169
	pushl $5921
	call _m3_fault
	.align 16
.L169:
	movl -8(%ebp),%ecx
	movl %ecx,4(%edx,%eax,4)
	movl (%edx),%ebx
	addl $2,%ebx
	cmpl $99,%ebx
	jbe .L170
	pushl $5937
	call _m3_fault
	.align 16
.L170:
	movl 12(%edi),%eax
	movl %eax,4(%edx,%ebx,4)
	addl $3,(%edx)
	jmp .L156
	.align 16
.L163:
	cmpb $0,24(%ebp)
	jne .L171
	pushl %edi
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $4,%eax
	je .L171
	pushl %edi
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L172
.L171:
	movl 12(%ebp),%eax
	movl (%eax),%eax
	movl %eax,-4(%ebp)
	movl -4(%ebp),%ebx
	movl 20(%edi),%esi
.L173:
	testl %esi,%esi
	je .L175
	cmpb $0,24(%ebp)
	jne .L176
	cmpb $0,33(%esi)
	jne .L177
.L176:
	movl 20(%edi),%eax
	pushl %eax
	call Scope__ScopeName
	addl $4,%esp
	cmpl %eax,MM_Scope+260
	je .L177
	addl $2,%ebx
.L177:
	cmpb $0,32(%esi)
	je .L175
	cmpb $0,33(%esi)
	jne .L175
	movl 12(%esi),%esi
	jmp .L173
	.align 16
.L175:
	movl 12(%ebp),%eax
	incl %ebx
	movl %ebx,(%eax)
	decl %ebx
	cmpl $99,%ebx
	jbe .L181
	pushl $6369
	call _m3_fault
	.align 16
.L181:
	movl 12(%ebp),%edx
	movl 12(%edi),%eax
	movl %eax,4(%edx,%ebx,4)
	movl 20(%edi),%esi
.L182:
	testl %esi,%esi
	je .L184
	cmpb $0,24(%ebp)
	jne .L185
	cmpb $0,33(%esi)
	jne .L186
.L185:
	pushl %esi
	call Scope__ScopeName
	addl $4,%esp
	cmpl %eax,MM_Scope+260
	je .L186
	addl $-2,%ebx
	leal 1(%ebx),%edx
	cmpl $99,%edx
	jbe .L188
	pushl $6497
	call _m3_fault
	.align 16
.L188:
	movl 12(%ebp),%edi
	movl -8(%ebp),%ecx
	movl %ecx,4(%edi,%edx,4)
	cmpl $99,%ebx
	jbe .L189
	pushl $6513
	call _m3_fault
	.align 16
.L189:
	movl %eax,4(%edi,%ebx,4)
.L186:
	cmpb $0,32(%esi)
	je .L184
	cmpb $0,33(%esi)
	jne .L184
	movl 12(%esi),%esi
	jmp .L182
	.align 16
.L184:
	cmpl %ebx,-4(%ebp)
	je .L156
	pushl $6624
	call _m3_fault
	.align 16
.L172:
	movl 12(%ebp),%edx
	movl (%edx),%ebx
	cmpl $99,%ebx
	jbe .L193
	pushl $6689
	call _m3_fault
	.align 16
.L193:
	movl 12(%edi),%eax
.L195:
	movl %eax,4(%edx,%ebx,4)
	incl (%edx)
.L156:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Scope__NameToPrefix,.Lfe23-Scope__NameToPrefix
	.align 16
	.type	 Scope__ScopeName,@function
Scope__ScopeName:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,16(%ebx)
	jne .L197
	movl 12(%ebx),%eax
	testl %eax,%eax
	jne .L198
	movl MM_Scope+260,%eax
	jmp .L200
	.align 16
.L198:
	incl 20(%eax)
	movl 12(%ebx),%eax
	movl 20(%eax),%eax
	pushl %eax
	call Scope__InternalName
.L200:
	movl %eax,16(%ebx)
.L197:
	movl 16(%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Scope__ScopeName,.Lfe24-Scope__ScopeName
	.align 16
	.type	 Scope__InternalName,@function
Scope__InternalName:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jl .L202
	cmpl $15,%ebx
	jle .L203
.L202:
	pushl %ebx
	call Scope__NewInt
	jmp .L208
	.align 16
.L203:
	cmpl $15,%ebx
	jbe .L204
	pushl $7025
	call _m3_fault
	.align 16
.L204:
	movl $MM_Scope+276,%esi
	cmpl $0,(%esi,%ebx,4)
	jne .L205
	pushl %ebx
	call Scope__NewInt
	movl %eax,(%esi,%ebx,4)
.L205:
	movl (%esi,%ebx,4),%eax
.L208:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Scope__InternalName,.Lfe25-Scope__InternalName
	.align 16
	.type	 Scope__NewInt,@function
Scope__NewInt:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L210:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -32(%ebp),%esi
	movl %esi,-48(%ebp)
	movl $32,-44(%ebp)
	pushl $0
	pushl $10
	pushl %edx
	leal -48(%ebp),%ebx
	pushl %ebx
	movl MI_Convert+64,%eax
	call *%eax
	movl %eax,%edx
	movl %esi,-48(%ebp)
	movl $32,-44(%ebp)
	pushl %edx
	pushl %ebx
	movl MI_M3ID+48,%eax
	call *%eax
	movl %eax,%edx
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L211:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Scope__NewInt,.Lfe26-Scope__NewInt
	.align 16
	.type	 Scope__ToUnit,@function
Scope__ToUnit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	movl 20(%edx),%ecx
	movl %ecx,%eax
	jmp .L213
	.align 16
.L214:
	movl 12(%ecx),%ecx
.L213:
	testl %ecx,%ecx
	je .L222
	cmpl $0,36(%ecx)
	je .L214
	jmp .L218
	.align 16
.L222:
	movl %ecx,%eax
	jmp .L221
	.align 16
.L219:
	movl %eax,%edx
	movl 36(%ecx),%eax
	movl %eax,36(%edx)
	movl 12(%edx),%eax
.L218:
	cmpl %ecx,%eax
	jne .L219
	movl 36(%ecx),%eax
	pushl %eax
	movl MI_Module+112,%eax
	call *%eax
	movl %eax,%edx
.L221:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Scope__ToUnit,.Lfe27-Scope__ToUnit
	.align 16
	.type	 Scope__Initialize,@function
Scope__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_Scope+776
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scope+260
	pushl $0
	pushl $MM_Scope+792
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scope+264
	pushl $0
	pushl $MM_Scope+808
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Scope+268
	pushl $0
	pushl $MM_Scope+824
	movl MI_M3ID+44,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl $0
	pushl %eax
	pushl $0
	call Scope__PushNew
	movl %eax,MI_Scope+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Scope__Initialize,.Lfe28-Scope__Initialize
	.align 16
	.type	 Scope__Reset,@function
Scope__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Scope+256
	movl MI_Scope+44,%eax
	movl %eax,MM_Scope+252
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Scope__Reset,.Lfe29-Scope__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Scope
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe30:
	.size	 _m3_fault,.Lfe30-_m3_fault
.globl MM_Scope
.data
	.align 4
	.type	 MM_Scope,@object
	.size	 MM_Scope,1696
MM_Scope:
	.long MM_Scope+1460
	.long MM_Scope+44
	.long MM_Scope+468
	.long MM_Scope+456
	.zero	4
	.long MM_Scope+1100
	.zero	4
	.long MM_Scope+1452
	.long MM_Scope+1452
	.zero	16
	.long -1528665960
.byte 155
.byte 233
.byte 46
.byte 171
.byte 3
.byte 129
.byte 204
.byte 15
	.long 1
	.zero	4
	.long 44
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Scope+1619
	.long MM_Scope+1634
	.long MM_Scope+1644
	.zero	8
	.long -2143734992
	.zero	12
	.long MM_Scope+1679
	.long MM_Scope+1687
	.long MM_Scope+148
	.zero	8
	.long 331599212
.byte 195
.byte 31
.byte 26
.byte 10
.byte 175
.byte 210
.byte 217
.byte 25
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_Scope+1601
	.long MM_Scope+1606
	.long MM_Scope+1611
	.zero	124
	.long Scope__Rehash
	.long Scope__CheckDuplicates
	.long Scope__ReportDuplicate
	.long Scope__ScopeName
	.long Scope__InternalName
	.long Scope__NewInt
	.long Scope__PopNew
	.long Scope__PushNew
	.long Scope__New1
	.long Scope__Push
	.long Scope__Pop
	.long Scope__Top
	.long Scope__Insert
	.long Scope__LookUp
	.long Scope__LookUpQID
	.long Scope__ToList
	.long Scope__OuterMost
	.long Scope__TypeCheck
	.long Scope__WarnUnused
	.long Scope__Enter
	.long Scope__InitValues
	.long Scope__Exit
	.long Scope__ModuleName
	.long Scope__ToUnit
	.long Scope__NameToPrefix
	.long Scope__PutStack
	.long Scope__StackToText
	.long Scope__Initialize
	.long Scope__Reset
	.long -856609055
	.long -1528665960
	.zero	4
	.long MM_Scope+476
	.long -856609055
	.long MM_Scope+560
	.long -1164381734
	.long 2
	.long MM_Scope+496
	.long 25
	.ascii	"<*OBSOLETE*> symbol used"
	.zero	4
	.long 2
	.long MM_Scope+536
	.long 23
	.ascii	"<*UNUSED*> symbol used"
	.zero	2
	.long MM_Scope+668
	.long 331599212
	.long 2
	.long MM_Scope+580
	.long 30
	.ascii	"Reserved identifier redefined"
	.zero	3
	.long 2
	.long MM_Scope+624
	.long 42
	.ascii	"INTERNAL ERROR: value reinserted in scope"
	.zero	3
	.long MM_Scope+676
	.long -712670126
	.zero	4
	.long 149856025
	.long 2
	.long MM_Scope+696
	.long 9
	.ascii	"not used"
	.zero	4
	.long 2
	.long MM_Scope+720
	.long 17
	.ascii	"duplicate import"
	.zero	4
	.long 2
	.long MM_Scope+752
	.long 17
	.ascii	"symbol redefined"
	.zero	4
	.long 2
	.long MM_Scope+784
	.long 1
	.zero	4
	.long 2
	.long MM_Scope+800
	.long 2
	.ascii	"."
	.zero	3
	.long 2
	.long MM_Scope+816
	.long 3
	.ascii	"__"
	.zero	2
	.long 2
	.long MM_Scope+832
	.long 11
	.ascii	"M3_BUILTIN"
	.zero	2
	.ascii	"Reset"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"ToUnit"
	.zero	1
	.ascii	"NewInt"
	.zero	1
	.ascii	"InternalName"
	.zero	1
	.ascii	"ScopeName"
	.zero	1
	.ascii	"NameToPrefix"
	.zero	1
	.ascii	"StackToText"
	.zero	1
	.ascii	"PutStack"
	.zero	1
	.ascii	"ModuleName"
	.zero	1
	.ascii	"ReportDuplicate"
	.zero	1
	.ascii	"CheckDuplicates"
	.zero	1
	.ascii	"WarnUnused"
	.zero	1
	.ascii	"Exit"
	.zero	1
	.ascii	"InitValues"
	.zero	1
	.ascii	"Enter"
	.zero	1
	.ascii	"TypeCheck"
	.zero	1
	.ascii	"ToList"
	.zero	1
	.ascii	"Insert"
	.zero	1
	.ascii	"Rehash"
	.zero	1
	.ascii	"LookUp"
	.zero	1
	.ascii	"LookUpQID"
	.zero	1
	.ascii	"OuterMost"
	.zero	1
	.ascii	"Top"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"New1"
	.zero	1
	.ascii	"PushNew"
	.zero	1
	.ascii	"PopNew"
	.zero	2
	.long Scope__Reset
	.long MM_Scope+844
	.long MI_Scope+136
	.long Scope__Initialize
	.long MM_Scope+850
	.long MI_Scope+132
	.long Scope__ToUnit
	.long MM_Scope+861
	.long MI_Scope+116
	.long Scope__NewInt
	.long MM_Scope+868
	.zero	4
	.long Scope__InternalName
	.long MM_Scope+875
	.zero	4
	.long Scope__ScopeName
	.long MM_Scope+888
	.zero	4
	.long Scope__NameToPrefix
	.long MM_Scope+898
	.long MI_Scope+120
	.long Scope__StackToText
	.long MM_Scope+911
	.long MI_Scope+128
	.long Scope__PutStack
	.long MM_Scope+923
	.long MI_Scope+124
	.long Scope__ModuleName
	.long MM_Scope+932
	.long MI_Scope+112
	.long Scope__ReportDuplicate
	.long MM_Scope+943
	.zero	4
	.long Scope__CheckDuplicates
	.long MM_Scope+959
	.zero	4
	.long Scope__WarnUnused
	.long MM_Scope+975
	.long MI_Scope+96
	.long Scope__Exit
	.long MM_Scope+986
	.long MI_Scope+108
	.long Scope__InitValues
	.long MM_Scope+991
	.long MI_Scope+104
	.long Scope__Enter
	.long MM_Scope+1002
	.long MI_Scope+100
	.long Scope__TypeCheck
	.long MM_Scope+1008
	.long MI_Scope+92
	.long Scope__ToList
	.long MM_Scope+1018
	.long MI_Scope+84
	.long Scope__Insert
	.long MM_Scope+1025
	.long MI_Scope+72
	.long Scope__Rehash
	.long MM_Scope+1032
	.zero	4
	.long Scope__LookUp
	.long MM_Scope+1039
	.long MI_Scope+76
	.long Scope__LookUpQID
	.long MM_Scope+1046
	.long MI_Scope+80
	.long Scope__OuterMost
	.long MM_Scope+1056
	.long MI_Scope+88
	.long Scope__Top
	.long MM_Scope+1066
	.long MI_Scope+68
	.long Scope__Pop
	.long MM_Scope+1070
	.long MI_Scope+64
	.long Scope__Push
	.long MM_Scope+1074
	.long MI_Scope+60
	.long Scope__New1
	.long MM_Scope+1079
	.long MI_Scope+56
	.long Scope__PushNew
	.long MM_Scope+1084
	.long MI_Scope+52
	.long Scope__PopNew
	.long MM_Scope+1092
	.long MI_Scope+48
	.zero	4
.byte 42
.byte 252
.byte 4
.byte 4
.byte 42
.byte 12
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Scope.m3"
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
.byte 106
.byte 188
.byte 176
.byte 249
.byte 4
.byte 4
.byte 14
.byte 14
.byte 4
.byte 4
.byte 16
.byte 16
.byte 16
.byte 16
.byte 4
.byte 14
.byte 14
.byte 4
.byte 0
.byte 4
.byte 4
.byte 41
.byte 4
.byte 4
.byte 37
.byte 4
.byte 41
.byte 4
.byte 0
.byte 15
.byte 10
.byte 14
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 23
.byte 19
.byte 254
.byte 126
.byte 7
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 27
.byte 2
.byte 29
.byte 29
.byte 29
.byte 16
.byte 218
.byte 241
.byte 152
.byte 186
.byte 26
.byte 26
.byte 16
.byte 108
.byte 205
.byte 195
.byte 19
	.ascii	"Scope.T"
	.zero	1
	.ascii	"M3.Scope"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
