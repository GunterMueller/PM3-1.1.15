	.file	"ESet.mc"
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
	.type	 ESet__Reset,@function
ESet__Reset:
	pushl %ebp
	movl %esp,%ebp
	incl MM_ESet+472
	movl $0,MM_ESet+476
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ESet__Reset,.Lfe1-ESet__Reset
	.align 16
	.type	 ESet__ParseRaises,@function
ESet__ParseRaises:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_Scanner+88,%edi
	pushl $84
	movl MI_Scanner+108,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $4,%esp
	cmpb $45,MI_Scanner+44
	jne .L3
	movl MI_Scanner+104,%eax
	call *%eax
	movl MM_ESet+356,%ebx
	jmp .L4
	.align 16
.L3:
	pushl $19
	movl MI_Scanner+108,%eax
	movl %ebx,%esi
	call *%eax
	addl $4,%esp
	jmp .L5
	.align 16
.L6:
	movl MM_ESet+748,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	movl %esi,16(%ebx)
	movl %ebx,%esi
	testl %ebx,%ebx
	jne .L7
	pushl $1140
	call _m3_fault
	.align 16
.L7:
	movl MI_Scanner+88,%eax
	movl %eax,(%ebx)
	movl $0,4(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl $0,12(%ebx)
	cmpb $14,MI_Scanner+44
	jne .L11
	movl MI_Scanner+104,%eax
	call *%eax
	movl 8(%ebx),%eax
	movl %eax,4(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,8(%ebx)
.L11:
	cmpb $15,MI_Scanner+44
	jne .L16
	movl MI_Scanner+104,%eax
	call *%eax
.L5:
	cmpb $1,MI_Scanner+44
	je .L6
.L16:
	pushl $31
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L17
	movl MM_ESet+360,%ebx
	jmp .L4
	.align 16
.L17:
	movl MM_ESet+756,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %edi,4(%ebx)
	movl MI_Scope+68,%eax
	call *%eax
	movl %eax,12(%ebx)
	movl %esi,8(%ebx)
.L4:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ESet__ParseRaises,.Lfe2-ESet__ParseRaises
	.align 16
	.type	 ESet__ParseFails,@function
ESet__ParseFails:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L20
	movl MM_ESet+756,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl MI_Scanner+88,%eax
	addl $4,%esp
	movl %eax,4(%esi)
.L20:
	pushl $43
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
.L21:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $45,%eax
	jne .L22
	movl MI_Scanner+104,%eax
	call *%eax
	movb $1,16(%esi)
	jmp .L23
	.align 16
.L22:
	cmpl $1,%eax
	jne .L34
	cmpl $0,12(%esi)
	jne .L25
	movl MI_Scope+68,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,12(%esi)
.L25:
	movl MM_ESet+748,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%esi),%eax
	movl %edx,%ebx
	addl $4,%esp
	movl %eax,16(%edx)
	movl %ebx,8(%esi)
	testl %ebx,%ebx
	jne .L26
	pushl $1684
	call _m3_fault
	.align 16
.L26:
	movl MI_Scanner+88,%eax
	movl %eax,(%ebx)
	movl $0,4(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl $0,12(%ebx)
	cmpb $14,MI_Scanner+44
	jne .L23
	movl MI_Scanner+104,%eax
	call *%eax
	movl 8(%ebx),%eax
	movl %eax,4(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,8(%ebx)
.L23:
	cmpb $15,MI_Scanner+44
	jne .L34
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L21
	.align 16
.L34:
	pushl $35
	movl MI_Scanner+108,%eax
	call *%eax
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ESet__ParseFails,.Lfe3-ESet__ParseFails
	.align 16
	.type	 ESet__Hash,@function
ESet__Hash:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $691,%ebx
	testl %edi,%edi
	je .L37
	cmpl $0,20(%edi)
	jne .L38
	cmpb $0,17(%edi)
	jne .L39
	pushl $2064
	call _m3_fault
	.align 16
.L39:
	movl 8(%edi),%esi
	jmp .L40
	.align 16
.L41:
	movl 12(%esi),%eax
	testl %eax,%eax
	je .L44
	pushl %eax
	movl MI_Value+108,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_M3ID+60,%eax
	call *%eax
	movl %eax,%edx
	leal (%ebx,%ebx,4),%eax
	leal (%ebx,%eax,2),%eax
	leal (%ebx,%eax,8),%eax
	leal (%edx,%eax),%ebx
	addl $8,%esp
.L44:
	movl 16(%esi),%esi
.L40:
	testl %esi,%esi
	jne .L41
	movl %ebx,20(%edi)
.L38:
	movl 20(%edi),%ebx
.L37:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ESet__Hash,.Lfe4-ESet__Hash
	.align 16
	.type	 ESet__LookUp,@function
ESet__LookUp:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L47:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edi
	call ESet__Hash
	movl %eax,%ebx
	addl $4,%esp
	cmpb $0,17(%edi)
	jne .L48
	pushl $2384
	call _m3_fault
	.align 16
.L48:
	cmpl $0,MM_ESet+476
	jne .L49
	leal -20(%ebp),%eax
	leal -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	movl $100,-12(%ebp)
	pushl %eax
	movl MM_ESet+764,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_ESet+476
	addl $8,%esp
.L49:
	movl MM_ESet+476,%eax
	testl %eax,%eax
	jne .L50
	pushl $2420
	call _m3_fault
	.align 16
.L50:
	pushl %ebx
	movl 4(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%ebx
	addl $8,%esp
.L51:
	movl MM_ESet+476,%eax
	testl %eax,%eax
	jne .L52
	pushl $2452
	call _m3_fault
	.align 16
.L52:
	cmpl %ebx,4(%eax)
	ja .L53
	pushl $2450
	call _m3_fault
	.align 16
.L53:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	testl %esi,%esi
	jne .L54
	movl %edi,(%eax,%ebx,4)
	movl MM_ESet+480,%eax
	incl %eax
	movl %eax,MM_ESet+480
	movl MM_ESet+476,%edx
	testl %edx,%edx
	jne .L57
	pushl $2516
	call _m3_fault
	.align 16
.L57:
	addl %eax,%eax
	cmpl %eax,4(%edx)
	jge .L58
	call ESet__ExpandHashTable
.L58:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edi,%eax
	jmp .L46
	.align 16
.L54:
	cmpl %edi,%esi
	je .L59
	pushl %edi
	pushl %esi
	call ESet__IsEqual
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L60
.L59:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
	jmp .L46
	.align 16
.L60:
	incl %ebx
	movl MM_ESet+476,%eax
	testl %eax,%eax
	jne .L61
	pushl $2596
	call _m3_fault
	.align 16
.L61:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jge .L51
	movl %edx,%ebx
	jmp .L51
	.align 16
.L64:
.L46:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ESet__LookUp,.Lfe5-ESet__LookUp
	.align 16
	.type	 ESet__ExpandHashTable,@function
ESet__ExpandHashTable:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	leal -12(%ebp),%eax
	pushl %edi
	leal -4(%ebp),%edx
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MM_ESet+476,%edi
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	testl %edi,%edi
	jne .L66
	pushl $2708
	call _m3_fault
	.align 16
.L66:
	movl 4(%edi),%edx
	addl %edx,%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_ESet+764,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_ESet+476
	movl %esi,MM_ESet+480
	addl $8,%esp
	movl %esi,%ebx
	movl 4(%edi),%edx
	decl %edx
	movl %edx,-16(%ebp)
	jmp .L68
	.align 16
.L69:
	testl %edi,%edi
	jne .L70
	pushl $2756
	call _m3_fault
	.align 16
.L70:
	movl %edi,%eax
	cmpl %ebx,4(%eax)
	ja .L71
	pushl $2754
	call _m3_fault
	.align 16
.L71:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	testl %esi,%esi
	je .L72
	pushl %esi
	call ESet__LookUp
	addl $4,%esp
.L72:
	incl %ebx
.L68:
	cmpl %ebx,-16(%ebp)
	jge .L69
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ESet__ExpandHashTable,.Lfe6-ESet__ExpandHashTable
	.align 16
	.type	 ESet__Declare,@function
ESet__Declare:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	je .L74
	cmpb $0,16(%edi)
	jne .L74
	cmpl $0,8(%edi)
	je .L74
	pushl %edi
	call ESet__LookUp
	movl %eax,%edi
	movl MM_ESet+472,%eax
	addl $4,%esp
	cmpl %eax,24(%edi)
	jge .L74
	movl 8(%edi),%ebx
	movl $1,%esi
	jmp .L78
	.align 16
.L79:
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L83
	pushl %eax
	movl MI_Value+60,%eax
	call *%eax
	incl %esi
	addl $4,%esp
.L83:
	movl 16(%ebx),%ebx
.L78:
	testl %ebx,%ebx
	jne .L79
	pushl %ebx
	pushl $MM_ESet+776
	movl MI_Target+64,%eax
	pushl %eax
	movl %esi,%eax
	imull MI_Target+68,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,28(%edi)
	movl 8(%edi),%ebx
	movl %eax,%esi
	addl $16,%esp
	jmp .L85
	.align 16
.L86:
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L91
	pushl %eax
	movl MI_Scope+116,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Exceptionz+60,%eax
	call *%eax
	pushl %eax
	movl -4(%ebp),%edx
	pushl %edx
	pushl %esi
	movl MI_CG+268,%eax
	call *%eax
	addl MI_Target+68,%esi
	addl $16,%esp
.L91:
	movl 16(%ebx),%ebx
.L85:
	testl %ebx,%ebx
	jne .L86
	movl MM_ESet+472,%eax
	movl %eax,24(%edi)
.L74:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ESet__Declare,.Lfe7-ESet__Declare
	.align 16
	.type	 ESet__GetAddress,@function
ESet__GetAddress:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	testl %ebx,%ebx
	jne .L94
	movl %ebx,(%esi)
	movl %ebx,(%edi)
	jmp .L93
	.align 16
.L94:
	cmpb $0,16(%ebx)
	je .L96
	pushl $MM_ESet+808
	movl MI_Error+44,%eax
	call *%eax
	movl $0,(%esi)
	movl $0,(%edi)
	jmp .L93
	.align 16
.L96:
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L97
	movl %eax,(%esi)
	jmp .L98
	.align 16
.L97:
	pushl %ebx
	call ESet__LookUp
	movl %eax,%ebx
	pushl %ebx
	call ESet__Declare
	pushl $0
	movl MI_Module+112,%eax
	call *%eax
	movl %eax,(%esi)
	movl 28(%ebx),%eax
.L98:
	movl %eax,(%edi)
.L93:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ESet__GetAddress,.Lfe8-ESet__GetAddress
	.align 16
	.type	 ESet__RaisesAny,@function
ESet__RaisesAny:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L100
	cmpb $0,16(%edx)
	setne %al
	andl $255,%eax
.L100:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ESet__RaisesAny,.Lfe9-ESet__RaisesAny
	.align 16
	.type	 ESet__RaisesNone,@function
ESet__RaisesNone:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L102
	cmpb $0,16(%edx)
	jne .L103
	cmpl $0,8(%edx)
	je .L102
.L103:
	xorl %eax,%eax
.L102:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 ESet__RaisesNone,.Lfe10-ESet__RaisesNone
	.align 16
	.type	 ESet__NewAny,@function
ESet__NewAny:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ESet+756,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %ebp,%esp
	movb $1,16(%edx)
	movl MI_Scanner+88,%eax
	movl %eax,4(%edx)
	movl %edx,%eax
	popl %ebp
	ret
.Lfe11:
	.size	 ESet__NewAny,.Lfe11-ESet__NewAny
	.align 16
	.type	 ESet__NewEmpty,@function
ESet__NewEmpty:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ESet+756,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %ebx,12(%edx)
	movl MI_Scanner+88,%eax
	movl %eax,4(%edx)
	movl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 ESet__NewEmpty,.Lfe12-ESet__NewEmpty
	.align 16
	.type	 ESet__Add,@function
ESet__Add:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%ebp),%ebx
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,%ebx
	movl 8(%esi),%eax
	addl $4,%esp
	jmp .L107
	.align 16
.L108:
	cmpl %ebx,12(%eax)
	jne .L110
	testl %ebx,%ebx
	je .L110
	pushl $MM_ESet+868
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	jmp .L106
	.align 16
.L110:
	testl %eax,%eax
	jne .L111
	pushl $4292
	call _m3_fault
	.align 16
.L111:
	movl 16(%eax),%eax
.L107:
	testl %eax,%eax
	jne .L108
	movl MM_ESet+748,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MI_Scanner+88,%eax
	movl %eax,(%ecx)
	movl 8(%esi),%eax
	movl %eax,16(%ecx)
	movl 12(%ebp),%edx
	movl (%edx),%eax
	movl %eax,4(%ecx)
	movl 4(%edx),%eax
	movl %eax,8(%ecx)
	movl %ebx,12(%ecx)
	movl %ecx,8(%esi)
.L106:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 ESet__Add,.Lfe13-ESet__Add
	.align 16
	.type	 ESet__IsEqual,@function
ESet__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	jne .L114
	movl MM_ESet+364,%ebx
.L114:
	testl %esi,%esi
	jne .L115
	movl MM_ESet+364,%esi
.L115:
	movb 16(%ebx),%al
	cmpb %al,16(%esi)
	je .L116
	xorl %eax,%eax
	jmp .L118
	.align 16
.L116:
	pushl %ebx
	call ESet__Resolve
	pushl %esi
	call ESet__Resolve
	xorl %edi,%edi
	movl 8(%esi),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	call ESet__EltSubset
	addl $16,%esp
	testl %eax,%eax
	je .L117
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	call ESet__EltSubset
	testl %eax,%eax
	setne %al
	movl %eax,%edi
	andl $255,%edi
.L117:
	movl %edi,%eax
.L118:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 ESet__IsEqual,.Lfe14-ESet__IsEqual
	.align 16
	.type	 ESet__IsSubset,@function
ESet__IsSubset:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	testl %esi,%esi
	jne .L120
	movl MM_ESet+364,%esi
.L120:
	testl %ebx,%ebx
	jne .L121
	movl MM_ESet+364,%ebx
.L121:
	cmpb $0,16(%ebx)
	je .L122
	movl $1,%eax
	jmp .L124
	.align 16
.L122:
	cmpb $0,16(%esi)
	jne .L123
	pushl %esi
	call ESet__Resolve
	pushl %ebx
	call ESet__Resolve
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	call ESet__EltSubset
	jmp .L124
	.align 16
.L123:
	xorl %eax,%eax
.L124:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 ESet__IsSubset,.Lfe15-ESet__IsSubset
	.align 16
	.type	 ESet__TypeCheck,@function
ESet__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L125
	pushl %eax
	call ESet__Resolve
.L125:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 ESet__TypeCheck,.Lfe16-ESet__TypeCheck
	.align 16
	.type	 ESet__Push,@function
ESet__Push:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	cmpb $0,20(%ebp)
	je .L128
	movl MM_ESet+912,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl $0,(%eax)
	movl %eax,%ebx
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 4(%edx),%eax
	movl %eax,4(%ebx)
	movl %ebx,4(%edx)
.L128:
	testl %esi,%esi
	je .L129
	pushl %esi
	call ESet__ResetUsed
	movl MM_ESet+912,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	addl $8,%esp
	movl %esi,(%ecx)
	testl %ecx,%ecx
	jne .L130
	pushl $5028
	call _m3_fault
	.align 16
.L130:
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl %ecx,4(%edx)
.L129:
	testl %edi,%edi
	je .L127
	pushl %edi
	call ESet__ResetUsed
	movl MM_ESet+912,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,%ebx
	addl $8,%esp
	movl %edi,(%ecx)
	testl %ecx,%ecx
	jne .L132
	pushl $5124
	call _m3_fault
	.align 16
.L132:
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	movl %eax,4(%ecx)
	movl %ebx,8(%edx)
.L127:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 ESet__Push,.Lfe17-ESet__Push
	.align 16
	.type	 ESet__ResetUsed,@function
ESet__ResetUsed:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 8(%eax),%edx
	movb $0,18(%eax)
	jmp .L134
	.align 16
.L135:
	movb $0,20(%edx)
	movl 16(%edx),%edx
.L134:
	testl %edx,%edx
	jne .L135
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 ESet__ResetUsed,.Lfe18-ESet__ResetUsed
	.align 16
	.type	 ESet__Pop,@function
ESet__Pop:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	testl %edx,%edx
	je .L140
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L141
	pushl $5396
	call _m3_fault
	.align 16
.L141:
	cmpl %edx,(%eax)
	je .L142
	pushl $5392
	call _m3_fault
	.align 16
.L142:
	pushl %edx
	call ESet__CheckUnused
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L143
	pushl $5428
	call _m3_fault
	.align 16
.L143:
	movl 4(%eax),%eax
	movl %eax,4(%edx)
.L140:
	testl %ebx,%ebx
	je .L144
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L145
	pushl $5476
	call _m3_fault
	.align 16
.L145:
	cmpl %ebx,(%eax)
	je .L146
	pushl $5472
	call _m3_fault
	.align 16
.L146:
	pushl %ebx
	call ESet__CheckUnused
	movl 8(%ebp),%edx
	addl $4,%esp
	movl 8(%edx),%eax
	testl %eax,%eax
	jne .L147
	pushl $5508
	call _m3_fault
	.align 16
.L147:
	movl 4(%eax),%eax
	movl %eax,8(%edx)
.L144:
	cmpb $0,20(%ebp)
	je .L139
	movl 8(%ebp),%eax
	movl %eax,%edx
	movl 4(%eax),%ecx
	testl %ecx,%ecx
	jne .L149
	pushl $5572
	call _m3_fault
	.align 16
.L149:
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	cmpl $0,(%ecx)
	je .L139
	pushl $5584
	call _m3_fault
	.align 16
.L139:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 ESet__Pop,.Lfe19-ESet__Pop
	.align 16
	.type	 ESet__CheckUnused,@function
ESet__CheckUnused:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MI_Scanner+88,%edi
	movl 8(%esi),%ebx
	jmp .L153
	.align 16
.L154:
	cmpl $0,12(%ebx)
	je .L156
	cmpb $0,20(%ebx)
	jne .L156
	movl (%ebx),%eax
	movl %eax,MI_Scanner+88
	pushl $1
	pushl $1
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Value+112,%eax
	call *%eax
	pushl %eax
	pushl $MM_ESet+924
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
	addl $28,%esp
.L156:
	testl %ebx,%ebx
	jne .L160
	pushl $5796
	call _m3_fault
	.align 16
.L160:
	movl 16(%ebx),%ebx
.L153:
	testl %ebx,%ebx
	jne .L154
	cmpb $0,16(%esi)
	je .L162
	cmpb $0,18(%esi)
	jne .L162
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L163
	movl %edi,MI_Scanner+88
	jmp .L164
	.align 16
.L163:
	movl %eax,MI_Scanner+88
.L164:
	pushl $MM_ESet+964
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
.L162:
	leal -12(%ebp),%esp
	movl %edi,MI_Scanner+88
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 ESet__CheckUnused,.Lfe20-ESet__CheckUnused
	.align 16
	.type	 ESet__MarkEverythingUsed,@function
ESet__MarkEverythingUsed:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movb 12(%ebp),%cl
	jmp .L166
	.align 16
.L167:
	movl (%edx),%eax
	testl %eax,%eax
	je .L165
	cmpb $0,16(%eax)
	je .L171
	movb $1,18(%eax)
	testb %cl,%cl
	jne .L165
.L171:
	movl 8(%eax),%eax
	jmp .L173
	.align 16
.L174:
	movb $1,20(%eax)
	movl 16(%eax),%eax
.L173:
	testl %eax,%eax
	jne .L174
	testl %edx,%edx
	jne .L178
	pushl $6228
	call _m3_fault
	.align 16
.L178:
	movl 4(%edx),%edx
.L166:
	testl %edx,%edx
	jne .L167
.L165:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 ESet__MarkEverythingUsed,.Lfe21-ESet__MarkEverythingUsed
	.align 16
	.type	 ESet__NoteExceptions,@function
ESet__NoteExceptions:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 12(%ebp),%eax
	testl %eax,%eax
	je .L179
	cmpb $0,16(%eax)
	je .L181
	pushl $1
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	call ESet__MarkEverythingUsed
	pushl %esi
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call ESet__MarkEverythingUsed
	movl 8(%ebp),%eax
	addl $16,%esp
	jmp .L187
	.align 16
.L183:
	cmpb $0,16(%edx)
	jne .L209
.L187:
	movl 4(%eax),%eax
	testl %eax,%eax
	je .L190
	movl (%eax),%edx
	testl %edx,%edx
	jne .L183
.L190:
	movl 8(%ebp),%eax
	movb $1,(%eax)
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	jmp .L191
	.align 16
.L192:
	movl (%eax),%edx
	cmpb $0,16(%edx)
	je .L196
.L209:
	movb $1,18(%edx)
	jmp .L179
	.align 16
.L196:
	movl 4(%eax),%eax
.L191:
	testl %eax,%eax
	jne .L192
	pushl $MM_ESet+1012
	jmp .L210
	.align 16
.L181:
	movl 8(%eax),%ebx
	movl %esi,%edi
	jmp .L198
	.align 16
.L199:
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call ESet__CheckRaise
	movl %eax,-4(%ebp)
	addl $8,%esp
	testl %eax,%eax
	je .L201
	testl %edi,%edi
	jne .L202
	movl %eax,%esi
	jmp .L203
	.align 16
.L202:
	pushl $MM_ESet+1064
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl -4(%ebp),%ecx
	pushl %ecx
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	addl $16,%esp
.L203:
	incl %edi
.L201:
	testl %ebx,%ebx
	jne .L204
	pushl $6820
	call _m3_fault
	.align 16
.L204:
	movl 16(%ebx),%ebx
.L198:
	testl %ebx,%ebx
	jne .L199
	testl %edi,%edi
	jle .L179
	cmpl $1,%edi
	jne .L207
	pushl %esi
	pushl $MM_ESet+1080
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	pushl %edi
	jmp .L211
	.align 16
.L207:
	pushl %esi
	pushl $MM_ESet+1128
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
.L210:
	pushl $1
.L211:
	movl MI_Error+64,%eax
	call *%eax
.L179:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 ESet__NoteExceptions,.Lfe22-ESet__NoteExceptions
	.align 16
	.type	 ESet__NoteException,@function
ESet__NoteException:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call ESet__CheckRaise
	addl $8,%esp
	testl %eax,%eax
	je .L212
	pushl %eax
	pushl $MM_ESet+1080
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
.L212:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 ESet__NoteException,.Lfe23-ESet__NoteException
	.align 16
	.type	 ESet__CheckRaise,@function
ESet__CheckRaise:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%eax
	testl %eax,%eax
	je .L218
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	call ESet__CheckTList
	addl $12,%esp
	testl %eax,%eax
	jne .L217
	movl 8(%ebp),%eax
	movb $1,(%eax)
	pushl %ebx
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call ESet__CheckTList
	addl $8,%esp
	testl %eax,%eax
	jne .L217
	pushl $1
	pushl $1
	pushl %ebx
	movl MI_Value+112,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L218
	.align 16
.L217:
	xorl %eax,%eax
.L218:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 ESet__CheckRaise,.Lfe24-ESet__CheckRaise
	.align 16
	.type	 ESet__CheckTList,@function
ESet__CheckTList:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	jmp .L220
	.align 16
.L221:
	movl %eax,%esi
	movl 8(%esi),%ebx
	jmp .L223
	.align 16
.L224:
	movl 12(%ebp),%edx
	pushl %edx
	movl 12(%ebx),%eax
	pushl %eax
	call ESet__ExceptionEQ
	addl $8,%esp
	testl %eax,%eax
	je .L228
	movb $1,20(%ebx)
	movl $1,%eax
	jmp .L235
	.align 16
.L228:
	movl 16(%ebx),%ebx
.L223:
	testl %ebx,%ebx
	jne .L224
	cmpb $0,16(%esi)
	je .L230
	movb $1,18(%esi)
	movl $1,%eax
	jmp .L235
	.align 16
.L230:
	testl %edi,%edi
	jne .L231
	pushl $7524
	call _m3_fault
	.align 16
.L231:
	movl 4(%edi),%edi
.L220:
	testl %edi,%edi
	je .L234
	movl (%edi),%eax
	testl %eax,%eax
	jne .L221
.L234:
	xorl %eax,%eax
.L235:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 ESet__CheckTList,.Lfe25-ESet__CheckTList
	.align 16
	.type	 ESet__EmitTypes,@function
ESet__EmitTypes:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	testl %eax,%eax
	jne .L237
	movl %ebx,%eax
	jmp .L246
	.align 16
.L237:
	pushl %eax
	call ESet__LookUp
	addl $4,%esp
	cmpb $0,16(%eax)
	je .L238
	movl $-1,%eax
	jmp .L246
	.align 16
.L238:
	movl 8(%eax),%ebx
	xorl %esi,%esi
	jmp .L239
	.align 16
.L240:
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L244
	pushl %eax
	movl MI_Value+60,%eax
	call *%eax
	incl %esi
	addl $4,%esp
.L244:
	movl 16(%ebx),%ebx
.L239:
	testl %ebx,%ebx
	jne .L240
	movl %esi,%eax
.L246:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 ESet__EmitTypes,.Lfe26-ESet__EmitTypes
	.align 16
	.type	 ESet__EmitNames,@function
ESet__EmitNames:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L247
	pushl %eax
	call ESet__LookUp
	addl $4,%esp
	cmpb $0,16(%eax)
	jne .L247
	movl 8(%eax),%ebx
	jmp .L250
	.align 16
.L251:
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L255
	pushl $1
	pushl $1
	pushl %eax
	movl MI_Value+112,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	movl MI_CG+140,%eax
	call *%eax
	addl $24,%esp
.L255:
	movl 16(%ebx),%ebx
.L250:
	testl %ebx,%ebx
	jne .L251
.L247:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 ESet__EmitNames,.Lfe27-ESet__EmitNames
	.align 16
	.type	 ESet__AddFPTag,@function
ESet__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L270
	pushl %ebx
	call ESet__LookUp
	movl %eax,%ebx
	addl $4,%esp
	cmpb $0,16(%ebx)
	je .L259
	pushl $MM_ESet+1176
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
.L270:
	movl %esi,%eax
	jmp .L268
	.align 16
.L259:
	cmpl $0,8(%ebx)
	je .L270
	cmpb $0,17(%ebx)
	jne .L261
	pushl $8400
	call _m3_fault
	.align 16
.L261:
	pushl $MM_ESet+1200
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 8(%ebx),%esi
	xorl %ebx,%ebx
	addl $8,%esp
	jmp .L262
	.align 16
.L263:
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Exceptionz+64,%eax
	call *%eax
	addl %eax,%ebx
	addl $8,%esp
	movl 16(%esi),%esi
.L262:
	testl %esi,%esi
	jne .L263
	pushl $125
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jge .L267
	pushl $8529
	call _m3_fault
	.align 16
.L267:
	movl %ebx,%eax
.L268:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 ESet__AddFPTag,.Lfe28-ESet__AddFPTag
	.align 16
	.type	 ESet__AddFPEdges,@function
ESet__AddFPEdges:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%esi
	testl %eax,%eax
	jne .L272
	movl MM_ESet+364,%eax
.L272:
	pushl %eax
	call ESet__LookUp
	addl $4,%esp
	cmpb $0,16(%eax)
	jne .L273
	movl 8(%eax),%ebx
	jmp .L274
	.align 16
.L275:
	pushl %esi
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Value+124,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	movl 16(%ebx),%ebx
.L274:
	testl %ebx,%ebx
	jne .L275
.L273:
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 ESet__AddFPEdges,.Lfe29-ESet__AddFPEdges
	.align 16
	.type	 ESet__Resolve,@function
ESet__Resolve:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	cmpb $0,17(%edi)
	jne .L279
	movl MI_Scanner+88,%edx
	movl %edx,-4(%ebp)
	movl 4(%edi),%eax
	movl %eax,MI_Scanner+88
	movl 8(%edi),%esi
	jmp .L281
	.align 16
.L282:
	movl 12(%esi),%eax
	testl %eax,%eax
	jne .L287
	leal 4(%esi),%eax
	pushl %eax
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Scope+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	jmp .L286
	.align 16
.L287:
	movl %eax,%ebx
.L286:
	testl %ebx,%ebx
	jne .L288
	testl %esi,%esi
	jne .L289
	pushl $9092
	call _m3_fault
	.align 16
.L289:
	pushl $MM_ESet+1220
	jmp .L296
	.align 16
.L288:
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $3,%eax
	je .L291
	testl %esi,%esi
	jne .L292
	pushl $9124
	call _m3_fault
	.align 16
.L292:
	pushl $MM_ESet+1244
.L296:
	leal 4(%esi),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
	jmp .L290
	.align 16
.L291:
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	addl $4,%esp
	testl %esi,%esi
	jne .L293
	pushl $9156
	call _m3_fault
	.align 16
.L293:
	movl %eax,12(%esi)
.L290:
	testl %esi,%esi
	jne .L294
	pushl $9188
	call _m3_fault
	.align 16
.L294:
	movl 16(%esi),%esi
.L281:
	testl %esi,%esi
	jne .L282
	movl -4(%ebp),%edx
	movl %edx,MI_Scanner+88
	movl 8(%edi),%eax
	pushl %eax
	call ESet__SortElts
	movl %eax,8(%edi)
	movb $1,17(%edi)
.L279:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 ESet__Resolve,.Lfe30-ESet__Resolve
	.align 16
	.type	 ESet__EltSubset,@function
ESet__EltSubset:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	jmp .L298
	.align 16
.L300:
	testl %esi,%esi
	jne .L302
	movl %esi,%eax
	jmp .L309
	.align 16
.L302:
	testl %ebx,%ebx
	jne .L303
	pushl $9396
	call _m3_fault
	.align 16
.L303:
	movl 12(%ebx),%eax
	pushl %eax
	movl 12(%esi),%eax
	pushl %eax
	call ESet__ExceptionEQ
	addl $8,%esp
	testl %eax,%eax
	jne .L307
	movl 16(%esi),%esi
	jmp .L300
	.align 16
.L307:
	movl 16(%ebx),%ebx
.L298:
	testl %ebx,%ebx
	jne .L300
	movl $1,%eax
.L309:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 ESet__EltSubset,.Lfe31-ESet__EltSubset
	.align 16
	.type	 ESet__SortElts,@function
ESet__SortElts:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $40
	xorl %ebx,%ebx
	pushl %ebx
	leal -40(%ebp),%eax
	pushl %eax
	call memset
	addl $12,%esp
	testl %esi,%esi
	jne .L312
	movl %ebx,%eax
	jmp .L328
	.align 16
.L312:
	cmpl $0,16(%esi)
	jne .L313
	movl %esi,%eax
	jmp .L328
	.align 16
.L313:
	movl %ebx,%edx
	movl %esi,%ebx
	jmp .L314
	.align 16
.L315:
	cmpl $9,%edx
	jg .L316
	jbe .L317
	pushl $9985
	call _m3_fault
	.align 16
.L317:
	movl %ebx,-40(%ebp,%edx,4)
.L316:
	testl %ebx,%ebx
	jne .L318
	pushl $10004
	call _m3_fault
	.align 16
.L318:
	movl 16(%ebx),%ebx
	incl %edx
.L314:
	testl %ebx,%ebx
	jne .L315
	cmpl $10,%edx
	jg .L320
	leal -40(%ebp),%edi
	movl %edi,-48(%ebp)
	movl $10,-44(%ebp)
	pushl %edx
	leal -48(%ebp),%eax
	pushl %eax
	jmp .L329
	.align 16
.L320:
	leal -60(%ebp),%eax
	leal -52(%ebp),%edi
	movl %edi,-60(%ebp)
	movl $1,-56(%ebp)
	movl %edx,-52(%ebp)
	pushl %eax
	movl MM_ESet+1272,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl %ebx,%edx
	movl %esi,%ebx
	addl $8,%esp
	jmp .L321
	.align 16
.L322:
	testl %ecx,%ecx
	jne .L323
	pushl $10148
	call _m3_fault
	.align 16
.L323:
	cmpl %edx,4(%ecx)
	ja .L324
	pushl $10146
	call _m3_fault
	.align 16
.L324:
	movl (%ecx),%eax
	movl %ebx,(%eax,%edx,4)
	movl 16(%ebx),%ebx
	incl %edx
.L321:
	testl %ebx,%ebx
	jne .L322
	testl %ecx,%ecx
	jne .L327
	pushl $10164
	call _m3_fault
	.align 16
.L327:
	pushl %edx
	pushl %ecx
.L329:
	call ESet__DoSort
.L328:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 ESet__SortElts,.Lfe32-ESet__SortElts
	.align 16
	.type	 ESet__DoSort,@function
ESet__DoSort:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	movl $1,%esi
	pushl %ebx
	movl 12(%ebp),%edi
	decl %edi
	movl %edi,-4(%ebp)
	jmp .L331
	.align 16
.L332:
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L333
	pushl $10322
	call _m3_fault
	.align 16
.L333:
	movl (%eax),%eax
	leal -1(%esi),%ebx
	movl (%eax,%esi,4),%eax
	movl %eax,-8(%ebp)
	jmp .L334
	.align 16
.L335:
	movl 8(%ebp),%eax
	leal 1(%ebx),%edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L336
	pushl $10354
	call _m3_fault
	.align 16
.L336:
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	cmpl %ecx,%ebx
	jb .L337
	pushl $10354
	call _m3_fault
	.align 16
.L337:
	movl (%eax,%ebx,4),%eax
	movl %eax,(%edx)
	decl %ebx
.L334:
	testl %ebx,%ebx
	jl .L340
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L339
	pushl $10354
	call _m3_fault
	.align 16
.L339:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl -8(%ebp),%edi
	pushl %edi
	call ESet__EltLT
	addl $8,%esp
	testl %eax,%eax
	jne .L335
.L340:
	movl 8(%ebp),%eax
	leal 1(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L341
	pushl $10370
	call _m3_fault
	.align 16
.L341:
	movl (%eax),%eax
	movl -8(%ebp),%edi
	incl %esi
	movl %edi,(%eax,%edx,4)
.L331:
	cmpl %esi,-4(%ebp)
	jge .L332
	xorl %eax,%eax
	movl 12(%ebp),%edi
	addl $-2,%edi
	movl %edi,-8(%ebp)
	jmp .L343
	.align 16
.L344:
	movl 8(%ebp),%edx
	movl 4(%edx),%esi
	cmpl %esi,%eax
	jb .L345
	pushl $10434
	call _m3_fault
	.align 16
.L345:
	movl (%edx),%ebx
	movl (%ebx,%eax,4),%ecx
	testl %ecx,%ecx
	jne .L346
	pushl $10436
	call _m3_fault
	.align 16
.L346:
	leal 1(%eax),%edx
	cmpl %esi,%edx
	jb .L347
	pushl $10434
	call _m3_fault
	.align 16
.L347:
	movl 4(%ebx,%eax,4),%eax
	movl %eax,16(%ecx)
	movl %edx,%eax
.L343:
	cmpl %eax,-8(%ebp)
	jge .L344
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	decl %eax
	cmpl %eax,4(%edx)
	ja .L349
	pushl $10450
	call _m3_fault
	.align 16
.L349:
	movl (%edx),%eax
	movl 12(%ebp),%edi
	movl -4(%eax,%edi,4),%eax
	testl %eax,%eax
	jne .L350
	pushl $10452
	call _m3_fault
	.align 16
.L350:
	movl $0,16(%eax)
	cmpl $0,4(%edx)
	jne .L351
	pushl $10482
	call _m3_fault
	.align 16
.L351:
	movl (%edx),%eax
	leal -20(%ebp),%esp
	movl (%eax),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 ESet__DoSort,.Lfe33-ESet__DoSort
	.align 16
	.type	 ESet__EltLT,@function
ESet__EltLT:
	pushl %ebp
	movl %esp,%ebp
	subl $808,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	cmpl %ebx,%ecx
	je .L373
	testl %ecx,%ecx
	je .L374
	testl %ebx,%ebx
	je .L373
	movl 12(%ecx),%edx
	movl 12(%ebx),%eax
	cmpl %eax,%edx
	jne .L359
.L373:
	xorl %eax,%eax
	jmp .L372
	.align 16
.L359:
	testl %edx,%edx
	jne .L361
.L374:
	movl $1,%eax
	jmp .L372
	.align 16
.L361:
	testl %eax,%eax
	je .L372
	movl $0,-808(%ebp)
	movl $0,-404(%ebp)
	pushl $1
	pushl $0
	pushl $1
	leal -808(%ebp),%eax
	pushl %eax
	movl 12(%ecx),%eax
	pushl %eax
	movl MI_Scope+120,%eax
	call *%eax
	addl $20,%esp
	pushl $1
	pushl $0
	pushl $1
	leal -404(%ebp),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Scope+120,%eax
	call *%eax
	movl -808(%ebp),%edx
	movl -404(%ebp),%eax
	addl $20,%esp
	cmpl %edx,%eax
	jle .L365
	movl %edx,%eax
.L365:
	xorl %edx,%edx
	leal -1(%eax),%ebx
	jmp .L366
	.align 16
.L367:
	cmpl $99,%edx
	jle .L368
	pushl $10737
	call _m3_fault
	.align 16
.L368:
	leal 4(,%edx,4),%eax
	movl -808(%eax,%ebp),%ecx
	movl -404(%eax,%ebp),%eax
	cmpl %eax,%ecx
	je .L370
	pushl %eax
	pushl %ecx
	movl MI_M3ID+76,%eax
	call *%eax
	jmp .L372
	.align 16
.L370:
	incl %edx
.L366:
	cmpl %ebx,%edx
	jle .L367
	movl -404(%ebp),%eax
	cmpl %eax,-808(%ebp)
	setl %al
	andl $255,%eax
.L372:
	movl -812(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 ESet__EltLT,.Lfe34-ESet__EltLT
	.align 16
	.type	 ESet__ExceptionEQ,@function
ESet__ExceptionEQ:
	pushl %ebp
	movl %esp,%ebp
	subl $808,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	cmpl %ebx,%edx
	je .L387
	testl %edx,%edx
	je .L388
	testl %ebx,%ebx
	je .L388
	movl $0,-808(%ebp)
	movl $0,-404(%ebp)
	pushl $1
	pushl $0
	pushl $1
	leal -808(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Scope+120,%eax
	call *%eax
	pushl $1
	pushl $0
	pushl $1
	leal -404(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Scope+120,%eax
	call *%eax
	movl -808(%ebp),%eax
	addl $40,%esp
	cmpl %eax,-404(%ebp)
	jne .L388
	xorl %edx,%edx
	leal -1(%eax),%ecx
	jmp .L380
	.align 16
.L381:
	cmpl $99,%edx
	jle .L383
	pushl $11025
	call _m3_fault
	.align 16
.L383:
	movl -804(%ebp,%edx,4),%eax
	cmpl %eax,-400(%ebp,%edx,4)
	je .L384
.L388:
	xorl %eax,%eax
	jmp .L386
	.align 16
.L384:
	incl %edx
.L380:
	cmpl %ecx,%edx
	jle .L381
.L387:
	movl $1,%eax
.L386:
	movl -812(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 ESet__ExceptionEQ,.Lfe35-ESet__ExceptionEQ
	.align 16
	.type	 _INITM_ESet,@function
_INITM_ESet:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_ESet+356
	movl $0,MM_ESet+360
	movl $0,MM_ESet+364
	movl MM_ESet+756,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movb $1,16(%eax)
	movb $1,17(%eax)
	movl %eax,MM_ESet+356
	movl MM_ESet+756,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movb $0,16(%eax)
	movb $1,17(%eax)
	movl %eax,MM_ESet+360
	movl %eax,MM_ESet+364
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 _INITM_ESet,.Lfe36-_INITM_ESet
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ESet
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe37:
	.size	 _m3_fault,.Lfe37-_m3_fault
.globl MM_ESet
.data
	.align 4
	.type	 MM_ESet,@object
	.size	 MM_ESet,2412
MM_ESet:
	.long MM_ESet+2078
	.long MM_ESet+44
	.long MM_ESet+748
	.long MM_ESet+728
	.zero	4
	.long MM_ESet+1632
	.zero	4
	.long MM_ESet+2068
	.long MM_ESet+2068
	.zero	4
	.long _INITM_ESet
	.zero	8
	.long 1717470205
.byte 112
.byte 37
.byte 190
.byte 125
.byte 141
.byte 166
.byte 224
.byte 27
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_ESet+2368
	.long MM_ESet+2371
	.long MM_ESet+2374
	.zero	24
	.long MM_ESet+2387
	.long MM_ESet+2397
	.long MM_ESet+148
	.zero	8
	.long 805504231
.byte 199
.byte 255
.byte 100
.byte 63
.byte 32
.byte 251
.byte 103
.byte 15
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ESet+2320
	.long MM_ESet+2330
	.long MM_ESet+2333
	.zero	8
	.long -2143734992
	.zero	12
	.long MM_ESet+2352
	.long MM_ESet+2359
	.long MM_ESet+252
	.zero	8
	.long -435836943
.byte 175
.byte 205
.byte 69
.byte 248
.byte 94
.byte 106
.byte 64
.byte 30
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	20
	.long MM_ESet+2269
	.long MM_ESet+2276
	.long MM_ESet+2281
	.zero	24
	.long MM_ESet+2302
	.long MM_ESet+2311
	.long MM_ESet+368
	.zero	20
	.long 543874572
.byte 19
.byte 60
.byte 2
.byte 61
.byte 31
.byte 226
.byte 104
.byte 29
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_ESet+2236
	.long MM_ESet+2241
	.long MM_ESet+2246
	.zero	28
	.long MM_ESet+2254
	.long MM_ESet+524
	.long 1
	.zero	8
	.long ESet__LookUp
	.long ESet__ExpandHashTable
	.long ESet__ResetUsed
	.long ESet__CheckUnused
	.long ESet__MarkEverythingUsed
	.long ESet__CheckRaise
	.long ESet__CheckTList
	.long ESet__Resolve
	.long ESet__EltSubset
	.long ESet__SortElts
	.zero	8
	.long -1846434170
.byte 84
.byte 113
.byte 180
.byte 134
.byte 210
.byte 215
.byte 69
.byte 23
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_ESet+2218
	.long MM_ESet+2223
	.long MM_ESet+2228
	.zero	36
	.long ESet__DoSort
	.long ESet__EltLT
	.long ESet__ExceptionEQ
	.long ESet__ParseRaises
	.long ESet__ParseFails
	.long ESet__Hash
	.long ESet__Declare
	.long ESet__GetAddress
	.long ESet__RaisesAny
	.long ESet__RaisesNone
	.long ESet__NewAny
	.long ESet__NewEmpty
	.long ESet__Add
	.long ESet__IsEqual
	.long ESet__IsSubset
	.long ESet__TypeCheck
	.long ESet__Push
	.long ESet__Pop
	.long ESet__NoteExceptions
	.long ESet__NoteException
	.long ESet__EmitTypes
	.long ESet__EmitNames
	.long ESet__AddFPTag
	.long ESet__AddFPEdges
	.long ESet__Reset
	.long -1651826469
	.long 1717470205
	.long 200524844
	.long 805504231
	.zero	4
	.long MM_ESet+756
	.long -435836943
	.long MM_ESet+764
	.long 200524844
	.long MM_ESet+912
	.long 543874572
	.long 2
	.long MM_ESet+784
	.long 17
	.ascii	"*exception list*"
	.zero	4
	.long 2
	.long MM_ESet+816
	.long 48
	.ascii	"INTERNAL ERROR: need address of RAISES ANY list"
	.zero	1
	.long 2
	.long MM_ESet+876
	.long 35
	.ascii	"repeated exception in handler list"
	.zero	2
	.long MM_ESet+1272
	.long -1651826469
	.long 2
	.long MM_ESet+932
	.long 28
	.ascii	"exception is never raised: "
	.zero	1
	.long 2
	.long MM_ESet+972
	.long 33
	.ascii	"exception is never raised: <ANY>"
	.zero	4
	.long 2
	.long MM_ESet+1020
	.long 39
	.ascii	"potentially unhandled exception: <ANY>"
	.zero	2
	.long 2
	.long MM_ESet+1072
	.long 3
	.ascii	", "
	.zero	2
	.long 2
	.long MM_ESet+1088
	.long 34
	.ascii	"potentially unhandled exception: "
	.zero	3
	.long 2
	.long MM_ESet+1136
	.long 35
	.ascii	"potentially unhandled exceptions: "
	.zero	2
	.long 2
	.long MM_ESet+1184
	.long 11
	.ascii	"RAISES-ANY"
	.zero	2
	.long 2
	.long MM_ESet+1208
	.long 8
	.ascii	"RAISES{"
	.zero	1
	.long 2
	.long MM_ESet+1228
	.long 10
	.ascii	"undefined"
	.zero	3
	.long 2
	.long MM_ESet+1252
	.long 17
	.ascii	"not an exception"
	.zero	8
	.long -1846434170
	.ascii	"_INITM_ESet"
	.zero	1
	.ascii	"ExceptionEQ"
	.zero	1
	.ascii	"EltLT"
	.zero	1
	.ascii	"DoSort"
	.zero	1
	.ascii	"SortElts"
	.zero	1
	.ascii	"EltSubset"
	.zero	1
	.ascii	"Resolve"
	.zero	1
	.ascii	"AddFPEdges"
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"EmitNames"
	.zero	1
	.ascii	"EmitTypes"
	.zero	1
	.ascii	"CheckTList"
	.zero	1
	.ascii	"CheckRaise"
	.zero	1
	.ascii	"NoteException"
	.zero	1
	.ascii	"NoteExceptions"
	.zero	1
	.ascii	"MarkEverythingUsed"
	.zero	1
	.ascii	"CheckUnused"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"ResetUsed"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"TypeCheck"
	.zero	1
	.ascii	"IsSubset"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"NewEmpty"
	.zero	1
	.ascii	"NewAny"
	.zero	1
	.ascii	"RaisesNone"
	.zero	1
	.ascii	"RaisesAny"
	.zero	1
	.ascii	"GetAddress"
	.zero	1
	.ascii	"Declare"
	.zero	1
	.ascii	"ExpandHashTable"
	.zero	1
	.ascii	"LookUp"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"ParseFails"
	.zero	1
	.ascii	"ParseRaises"
	.zero	1
	.ascii	"Reset"
	.zero	4
	.long _INITM_ESet
	.long MM_ESet+1280
	.zero	4
	.long ESet__ExceptionEQ
	.long MM_ESet+1292
	.zero	4
	.long ESet__EltLT
	.long MM_ESet+1304
	.zero	4
	.long ESet__DoSort
	.long MM_ESet+1310
	.zero	4
	.long ESet__SortElts
	.long MM_ESet+1317
	.zero	4
	.long ESet__EltSubset
	.long MM_ESet+1326
	.zero	4
	.long ESet__Resolve
	.long MM_ESet+1336
	.zero	4
	.long ESet__AddFPEdges
	.long MM_ESet+1344
	.long MI_ESet+124
	.long ESet__AddFPTag
	.long MM_ESet+1355
	.long MI_ESet+120
	.long ESet__EmitNames
	.long MM_ESet+1364
	.long MI_ESet+116
	.long ESet__EmitTypes
	.long MM_ESet+1374
	.long MI_ESet+112
	.long ESet__CheckTList
	.long MM_ESet+1384
	.zero	4
	.long ESet__CheckRaise
	.long MM_ESet+1395
	.zero	4
	.long ESet__NoteException
	.long MM_ESet+1406
	.long MI_ESet+108
	.long ESet__NoteExceptions
	.long MM_ESet+1420
	.long MI_ESet+104
	.long ESet__MarkEverythingUsed
	.long MM_ESet+1435
	.zero	4
	.long ESet__CheckUnused
	.long MM_ESet+1454
	.zero	4
	.long ESet__Pop
	.long MM_ESet+1466
	.long MI_ESet+100
	.long ESet__ResetUsed
	.long MM_ESet+1470
	.zero	4
	.long ESet__Push
	.long MM_ESet+1480
	.long MI_ESet+96
	.long ESet__TypeCheck
	.long MM_ESet+1485
	.long MI_ESet+92
	.long ESet__IsSubset
	.long MM_ESet+1495
	.long MI_ESet+88
	.long ESet__IsEqual
	.long MM_ESet+1504
	.long MI_ESet+84
	.long ESet__Add
	.long MM_ESet+1512
	.long MI_ESet+80
	.long ESet__NewEmpty
	.long MM_ESet+1516
	.long MI_ESet+76
	.long ESet__NewAny
	.long MM_ESet+1525
	.long MI_ESet+72
	.long ESet__RaisesNone
	.long MM_ESet+1532
	.long MI_ESet+68
	.long ESet__RaisesAny
	.long MM_ESet+1543
	.long MI_ESet+64
	.long ESet__GetAddress
	.long MM_ESet+1553
	.long MI_ESet+60
	.long ESet__Declare
	.long MM_ESet+1564
	.long MI_ESet+56
	.long ESet__ExpandHashTable
	.long MM_ESet+1572
	.zero	4
	.long ESet__LookUp
	.long MM_ESet+1588
	.zero	4
	.long ESet__Hash
	.long MM_ESet+1595
	.long MI_ESet+52
	.long ESet__ParseFails
	.long MM_ESet+1600
	.long MI_ESet+48
	.long ESet__ParseRaises
	.long MM_ESet+1611
	.long MI_ESet+44
	.long ESet__Reset
	.long MM_ESet+1623
	.long MI_ESet+128
	.zero	4
.byte 43
.byte 100
.byte 1
.byte 4
.byte 4
.byte 4
.byte 42
.byte 108
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/ESet.m3"
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
.byte 241
.byte 167
.byte 5
.byte 230
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
.byte 44
.byte 196
.byte 243
.byte 11
	.ascii	"ESet.HashTable"
	.zero	1
.byte 14
.byte 14
.byte 14
.byte 4
.byte 4
.byte 16
.byte 0
.byte 42
.byte 12
.byte 4
.byte 4
.byte 0
.byte 8
.byte 15
.byte 5
.byte 7
.byte 15
.byte 2
.byte 19
.byte 254
.byte 126
.byte 25
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 241
.byte 167
.byte 5
.byte 230
.byte 2
	.ascii	"ESet.Elt"
	.zero	1
	.ascii	"ESet.Elt"
	.zero	1
.byte 4
.byte 4
.byte 16
.byte 16
.byte 16
.byte 34
.byte 14
.byte 14
.byte 14
.byte 0
.byte 4
.byte 4
.byte 0
.byte 9
.byte 10
.byte 8
.byte 16
.byte 241
.byte 167
.byte 5
.byte 230
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 2
.byte 25
.byte 25
.byte 7
.byte 28
.byte 28
	.ascii	"ESet.T"
	.zero	1
	.ascii	"M3.ExSet"
	.zero	1
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 0
.byte 3
.byte 15
.byte 2
.byte 16
.byte 44
.byte 196
.byte 243
.byte 11
.byte 16
.byte 219
.byte 32
.byte 139
.byte 157
	.ascii	"ESet.List"
	.zero	1
	.ascii	"M3.ExSetList"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
