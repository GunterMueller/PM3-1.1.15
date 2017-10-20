	.file	"RTType.mc"
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
	.type	 RTType__MaxTypecode,@function
RTType__MaxTypecode:
	pushl %ebp
	movl %esp,%ebp
	movl MI_RT0u+156,%eax
	decl %eax
	cmpl $1048575,%eax
	jbe .L2
	pushl $353
	call _m3_fault
	.align 16
.L2:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTType__MaxTypecode,.Lfe1-RTType__MaxTypecode
	.align 16
	.type	 RTType__IsSubtype,@function
RTType__IsSubtype:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	call RTType__Get
	movl %eax,%esi
	movl %esi,%edi
	addl $4,%esp
	cmpl %ebx,MI_RT0u+156
	jg .L4
	pushl %ebx
	call RTType__BadType
	addl $4,%esp
.L4:
	testl %ebx,%ebx
	je .L10
	xorl %eax,%eax
	testl %esi,%esi
	jne .L6
	pushl $484
	call _m3_fault
	.align 16
.L6:
	cmpl %ebx,(%edi)
	jg .L7
	cmpl %ebx,4(%edi)
	jl .L7
.L10:
	movl $1,%eax
.L7:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTType__IsSubtype,.Lfe2-RTType__IsSubtype
	.align 16
	.type	 RTType__Supertype,@function
RTType__Supertype:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTType__Get
	addl $4,%esp
	testl %eax,%eax
	jne .L12
	pushl $580
	call _m3_fault
	.align 16
.L12:
	movl 80(%eax),%eax
	testl %eax,%eax
	jne .L15
	movl $1048575,%eax
	jmp .L17
	.align 16
.L15:
	movl (%eax),%eax
	cmpl $1048575,%eax
	jbe .L16
	pushl $609
	call _m3_fault
	.align 16
.L16:
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTType__Supertype,.Lfe3-RTType__Supertype
	.align 16
	.type	 RTType__IsTraced,@function
RTType__IsTraced:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTType__Get
	addl $4,%esp
	testl %eax,%eax
	jne .L19
	pushl $724
	call _m3_fault
	.align 16
.L19:
	cmpl $0,20(%eax)
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTType__IsTraced,.Lfe4-RTType__IsTraced
	.align 16
	.type	 RTType__Get,@function
RTType__Get:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl MI_RT0u+264,%eax
	leal (%eax,%edx,4),%ebx
	cmpl %edx,MI_RT0u+156
	jg .L21
	pushl %edx
	call RTType__BadType
	addl $4,%esp
.L21:
	testl %ebx,%ebx
	jne .L22
	pushl $836
	call _m3_fault
	.align 16
.L22:
	movl (%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTType__Get,.Lfe5-RTType__Get
	.align 16
	.type	 RTType__GetNDimensions,@function
RTType__GetNDimensions:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTType__Get
	addl $4,%esp
	testl %eax,%eax
	jne .L24
	pushl $932
	call _m3_fault
	.align 16
.L24:
	movl 44(%eax),%eax
	testl %eax,%eax
	jge .L25
	pushl $929
	call _m3_fault
	.align 16
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTType__GetNDimensions,.Lfe6-RTType__GetNDimensions
	.align 16
	.type	 RTTypeSRC__TypeName,@function
RTTypeSRC__TypeName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L27
	movl -4(%eax),%eax
	sall $11,%eax
	shrl $12,%eax
.L27:
	cmpl $1048575,%eax
	jle .L28
	pushl $993
	call _m3_fault
	.align 16
.L28:
	pushl %eax
	call RTType__Get
	pushl %eax
	call RTType__TypeDefnToName
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTTypeSRC__TypeName,.Lfe7-RTTypeSRC__TypeName
	.align 16
	.type	 RTTypeSRC__TypecodeName,@function
RTTypeSRC__TypecodeName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTType__Get
	pushl %eax
	call RTType__TypeDefnToName
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTTypeSRC__TypecodeName,.Lfe8-RTTypeSRC__TypecodeName
	.align 16
	.type	 RTType__TypeDefnToName,@function
RTType__TypeDefnToName:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L31
	pushl $1204
	call _m3_fault
	.align 16
.L31:
	movl 96(%eax),%eax
	testl %eax,%eax
	jne .L33
	movl $MM_RTType+536,%eax
	jmp .L34
	.align 16
.L33:
	pushl %eax
	movl MI_M3toC+60,%eax
	call *%eax
.L34:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTType__TypeDefnToName,.Lfe9-RTType__TypeDefnToName
	.align 16
	.type	 RTTypeSRC__FindType,@function
RTTypeSRC__FindType:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L36:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl MM_RTType+52,%esi
	movl %esi,-12(%ebp)
	xorl %ecx,%ecx
	movl MM_RTType+48,%eax
	testl %eax,%eax
	jge .L51
	pushl $1489
	call _m3_fault
	.align 16
.L39:
	leal (%ebx,%ecx),%eax
	sarl $1,%eax
	jns .L40
	pushl $1569
	call _m3_fault
	.align 16
.L40:
	movl -12(%ebp),%esi
	leal (%esi,%eax,8),%edx
	testl %edx,%edx
	jne .L41
	pushl $1604
	call _m3_fault
	.align 16
.L41:
	cmpl %edi,(%edx)
	jle .L42
.L51:
	movl %eax,%ebx
	jmp .L38
	.align 16
.L42:
	leal 1(%eax),%ecx
.L38:
	cmpl %ebx,%ecx
	jl .L39
	testl %ecx,%ecx
	jle .L45
	leal -1(%ecx),%eax
	testl %eax,%eax
	jge .L46
	pushl $1681
	call _m3_fault
	.align 16
.L46:
	movl %eax,%ecx
.L45:
	movl -12(%ebp),%esi
	leal (%esi,%ecx,8),%edx
	testl %edx,%edx
	jne .L47
	pushl $1716
	call _m3_fault
	.align 16
.L47:
	cmpl %edi,(%edx)
	je .L48
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L35
	.align 16
.L48:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 4(%edx),%eax
.L50:
.L35:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTTypeSRC__FindType,.Lfe10-RTTypeSRC__FindType
	.align 16
	.type	 RTTypeSRC__Init,@function
RTTypeSRC__Init:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,MM_RTType+160
	je .L53
	pushl $1952
	call _m3_fault
	.align 16
.L53:
	movb $1,MM_RTType+160
	call RTType__RegisterTypes
	call RTType__CheckOpaques
	call RTType__CheckBrands
	call RTType__FindChildren
	call RTType__CheckParents
	call RTType__AssignTypecodes
	call RTType__FixLinks
	call RTType__FixSizes
	call RTType__CallSetupProcs
	call RTType__CheckRevelations
	movl MI_RTHeapRep+668,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RTTypeSRC__Init,.Lfe11-RTTypeSRC__Init
	.align 16
	.type	 RTType__RegisterTypes,@function
RTType__RegisterTypes:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl %edi,%ebx
	movl MI_RT0u+44,%esi
	decl %esi
	jmp .L55
	.align 16
.L56:
	pushl %ebx
	movl MI_RTModule+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L57
	pushl $2404
	call _m3_fault
	.align 16
.L57:
	movl 4(%eax),%edx
	jmp .L58
	.align 16
.L59:
	incl %edi
	movl 100(%edx),%edx
.L58:
	testl %edx,%edx
	jne .L59
	incl %ebx
.L55:
	cmpl %esi,%ebx
	jle .L56
	testl %edi,%edi
	jge .L63
	pushl $2481
	call _m3_fault
	.align 16
.L63:
	movl %edi,MI_RT0u+156
	leal 0(,%edi,4),%ebx
	pushl %ebx
	call malloc
	movl %eax,MI_RT0u+264
	pushl %ebx
	call malloc
	movl %eax,MI_RT0u+372
	pushl %ebx
	call malloc
	movl %eax,MI_RT0u+376
	pushl %ebx
	movl MI_RT0u+372,%eax
	pushl %eax
	movl MI_RTMisc+48,%eax
	call *%eax
	pushl %ebx
	movl MI_RT0u+376,%eax
	pushl %eax
	movl MI_RTMisc+48,%eax
	call *%eax
	movl MI_RT0u+264,%esi
	xorl %ebx,%ebx
	movl MI_RT0u+44,%ecx
	decl %ecx
	movl %ecx,-4(%ebp)
	addl $28,%esp
	jmp .L64
	.align 16
.L65:
	pushl %ebx
	movl MI_RTModule+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L66
	pushl $2692
	call _m3_fault
	.align 16
.L66:
	movl 4(%eax),%edx
	jmp .L67
	.align 16
.L68:
	testl %esi,%esi
	jne .L69
	pushl $2724
	call _m3_fault
	.align 16
.L69:
	movl %esi,%eax
	leal 4(%eax),%esi
	movl %edx,(%eax)
	movl 100(%edx),%edx
.L67:
	testl %edx,%edx
	jne .L68
	incl %ebx
.L64:
	cmpl %ebx,-4(%ebp)
	jge .L65
	movl MI_RT0u+264,%esi
	movl $1,%ebx
	decl %edi
	movl %edi,-8(%ebp)
	jmp .L73
	.align 16
.L74:
	leal (%esi,%ebx,4),%eax
	testl %eax,%eax
	jne .L75
	pushl $2868
	call _m3_fault
	.align 16
.L75:
	movl (%eax),%edx
	testl %edx,%edx
	jne .L76
	pushl $2884
	call _m3_fault
	.align 16
.L76:
	movl 8(%edx),%edi
	leal -4(%esi,%ebx,4),%ecx
	jmp .L106
	.align 16
.L78:
	cmpl $-4,-20(%ebp)
	jne .L79
	pushl $2948
	call _m3_fault
	.align 16
.L79:
	movl -20(%ebp),%ecx
	movl %eax,4(%ecx)
	addl $-4,%ecx
.L106:
	movl %ecx,-20(%ebp)
	cmpl %esi,-20(%ebp)
	jb .L84
	cmpl $0,-20(%ebp)
	jne .L82
	pushl $2916
	call _m3_fault
	.align 16
.L82:
	movl -20(%ebp),%ecx
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L83
	pushl $2916
	call _m3_fault
	.align 16
.L83:
	cmpl %edi,8(%eax)
	jg .L78
.L84:
	cmpl $-4,-20(%ebp)
	jne .L85
	pushl $3012
	call _m3_fault
	.align 16
.L85:
	movl -20(%ebp),%ecx
	incl %ebx
	movl %edx,4(%ecx)
.L73:
	cmpl %ebx,-8(%ebp)
	jge .L74
	movl $1,%edi
	movl MI_RT0u+264,%esi
	movl %esi,-20(%ebp)
	movl %edi,-12(%ebp)
	movl MI_RT0u+156,%ecx
	decl %ecx
	movl %ecx,-16(%ebp)
	jmp .L87
	.align 16
.L88:
	addl $4,-20(%ebp)
	testl %esi,%esi
	jne .L89
	pushl $3156
	call _m3_fault
	.align 16
.L89:
	movl (%esi),%edx
	testl %edx,%edx
	jne .L90
	pushl $3156
	call _m3_fault
	.align 16
.L90:
	cmpl $0,-20(%ebp)
	jne .L91
	pushl $3156
	call _m3_fault
	.align 16
.L91:
	movl -20(%ebp),%ecx
	movl (%ecx),%ebx
	testl %ebx,%ebx
	jne .L92
	pushl $3156
	call _m3_fault
	.align 16
.L92:
	movl 8(%ebx),%eax
	cmpl %eax,8(%edx)
	jne .L93
	cmpl $0,96(%edx)
	jne .L101
	movl 96(%ebx),%eax
	movl %eax,96(%edx)
	jmp .L101
	.align 16
.L93:
	incl %edi
	leal 4(%esi),%eax
	movl %eax,%esi
	testl %eax,%eax
	jne .L102
	pushl $3252
	call _m3_fault
	.align 16
.L102:
	movl %ebx,(%eax)
.L101:
	incl -12(%ebp)
.L87:
	movl -16(%ebp),%ecx
	cmpl %ecx,-12(%ebp)
	jle .L88
	testl %edi,%edi
	jge .L105
	pushl $3297
	call _m3_fault
	.align 16
.L105:
	leal -32(%ebp),%esp
	movl %edi,MI_RT0u+156
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 RTType__RegisterTypes,.Lfe12-RTType__RegisterTypes
	.align 16
	.type	 RTType__CheckOpaques,@function
RTType__CheckOpaques:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MI_RT0u+156,%edi
	movl MI_RT0u+44,%ecx
	decl %ecx
	movl %ecx,-8(%ebp)
	jmp .L108
	.align 16
.L109:
	pushl %esi
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L110
	pushl $3572
	call _m3_fault
	.align 16
.L110:
	movl -4(%ebp),%ecx
	movl 12(%ecx),%ebx
	testl %ebx,%ebx
	je .L111
	jmp .L112
	.align 16
.L113:
	incl %edi
	addl $8,%ebx
.L112:
	testl %ebx,%ebx
	jne .L114
	pushl $3604
	call _m3_fault
	.align 16
.L114:
	cmpl $0,(%ebx)
	jne .L113
.L111:
	incl %esi
.L108:
	cmpl %esi,-8(%ebp)
	jge .L109
	movl %edi,MM_RTType+48
	leal 0(,%edi,8),%eax
	pushl %eax
	call malloc
	movl %eax,MM_RTType+52
	movl MI_RT0u+264,%edx
	movl %eax,-16(%ebp)
	xorl %ebx,%ebx
	movl MI_RT0u+156,%edi
	decl %edi
	addl $4,%esp
	jmp .L117
	.align 16
.L118:
	testl %edx,%edx
	jne .L119
	pushl $3796
	call _m3_fault
	.align 16
.L119:
	movl (%edx),%esi
	cmpl $0,-16(%ebp)
	jne .L120
	pushl $3812
	call _m3_fault
	.align 16
.L120:
	testl %esi,%esi
	jne .L121
	pushl $3812
	call _m3_fault
	.align 16
.L121:
	movl 8(%esi),%eax
	movl -16(%ebp),%ecx
	addl $4,%edx
	movl %eax,(%ecx)
	movl -16(%ebp),%eax
	incl %ebx
	movl %esi,4(%eax)
	addl $8,%eax
	movl %eax,-16(%ebp)
.L117:
	cmpl %edi,%ebx
	jle .L118
	movl MI_RT0u+156,%eax
	movl %eax,MM_RTType+48
	xorl %edi,%edi
	movl MI_RT0u+44,%ecx
	decl %ecx
	movl %ecx,-12(%ebp)
	jmp .L124
	.align 16
.L125:
	pushl %edi
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L126
	pushl $3972
	call _m3_fault
	.align 16
.L126:
	movl 12(%eax),%ebx
	testl %ebx,%ebx
	je .L127
	jmp .L128
	.align 16
.L129:
	pushl %eax
	call RTTypeSRC__FindType
	addl $4,%esp
	testl %eax,%eax
	je .L132
	pushl %eax
	pushl %ebx
	movl -4(%ebp),%ecx
	pushl %ecx
	call RTType__DuplicateLHS
	addl $12,%esp
.L132:
	movl 4(%ebx),%eax
	pushl %eax
	call RTTypeSRC__FindType
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L133
	pushl %ebx
	movl -4(%ebp),%ecx
	pushl %ecx
	call RTType__UndefinedRHS
	addl $8,%esp
.L133:
	movl MM_RTType+48,%ecx
	leal 0(,%ecx,8),%eax
	movl MM_RTType+52,%edx
	addl %eax,%edx
	leal -8(%edx),%ecx
	jmp .L148
	.align 16
.L135:
	testl %edx,%edx
	jne .L137
	pushl $4164
	call _m3_fault
	.align 16
.L137:
	movl %eax,(%edx)
	movl -16(%ebp),%ecx
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	addl $-8,%edx
	addl $-8,%ecx
.L148:
	movl %ecx,-16(%ebp)
	movl -16(%ebp),%ecx
	cmpl %ecx,MM_RTType+52
	ja .L141
	testl %ecx,%ecx
	jne .L139
	pushl $4148
	call _m3_fault
	.align 16
.L139:
	testl %ebx,%ebx
	jne .L140
	pushl $4148
	call _m3_fault
	.align 16
.L140:
	movl -16(%ebp),%ecx
	movl (%ecx),%eax
	cmpl %eax,(%ebx)
	jl .L135
.L141:
	testl %edx,%edx
	jne .L142
	pushl $4228
	call _m3_fault
	.align 16
.L142:
	testl %ebx,%ebx
	jne .L143
	pushl $4228
	call _m3_fault
	.align 16
.L143:
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %esi,4(%edx)
	incl MM_RTType+48
	addl $8,%ebx
.L128:
	testl %ebx,%ebx
	jne .L145
	pushl $4004
	call _m3_fault
	.align 16
.L145:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L129
.L127:
	incl %edi
.L124:
	cmpl %edi,-12(%ebp)
	jge .L125
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RTType__CheckOpaques,.Lfe13-RTType__CheckOpaques
	.align 16
	.type	 RTType__CheckBrands,@function
RTType__CheckBrands:
	pushl %ebp
	movl %esp,%ebp
	subl $1184,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L150:
	movl $5,-1176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-1180(%ebp)
	leal -1180(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $1172
	pushl $0
	leal -1172(%ebp),%eax
	pushl %eax
	call memset
	movl MI_RT0u+264,%ebx
	xorl %edi,%edi
	movl MI_RT0u+156,%ecx
	decl %ecx
	movl %ecx,-1184(%ebp)
	addl $12,%esp
	jmp .L151
	.align 16
.L152:
	testl %ebx,%ebx
	jne .L153
	pushl $4580
	call _m3_fault
	.align 16
.L153:
	movl (%ebx),%esi
	testl %esi,%esi
	jne .L154
	pushl $4596
	call _m3_fault
	.align 16
.L154:
	movl 92(%esi),%eax
	testl %eax,%eax
	je .L155
	pushl %eax
	call RTType__HashString
	pushl %eax
	pushl $293
	call m3_mod
	movl %eax,%edx
	addl $12,%esp
	cmpl $292,%edx
	jbe .L158
	pushl $4625
	call _m3_fault
	.align 16
.L158:
	movl -1172(%ebp,%edx,4),%eax
	movl %eax,88(%esi)
	movl %esi,-1172(%ebp,%edx,4)
.L155:
	addl $4,%ebx
	incl %edi
.L151:
	cmpl %edi,-1184(%ebp)
	jge .L152
	xorl %edi,%edi
.L161:
	movl -1172(%ebp,%edi,4),%esi
	jmp .L162
	.align 16
.L163:
	movl 88(%esi),%ebx
	jmp .L165
	.align 16
.L166:
	testl %esi,%esi
	jne .L168
	pushl $4820
	call _m3_fault
	.align 16
.L168:
	movl 92(%ebx),%eax
	pushl %eax
	movl 92(%esi),%eax
	pushl %eax
	call strcmp
	addl $8,%esp
	testl %eax,%eax
	jne .L171
	call RTType__StartError
	pushl $MM_RTType+560
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	movl 92(%esi),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTType+608
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutType
	pushl $MM_RTType+632
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	call RTType__PutType
	call RTType__EndError
	addl $20,%esp
.L171:
	movl 88(%ebx),%ebx
.L165:
	testl %ebx,%ebx
	jne .L166
	testl %esi,%esi
	jne .L173
	pushl $5028
	call _m3_fault
	.align 16
.L173:
	movl 88(%esi),%esi
.L162:
	testl %esi,%esi
	jne .L163
	incl %edi
	cmpl $292,%edi
	jle .L161
	movl MI_RT0u+264,%ebx
	movl %esi,%edx
	movl MI_RT0u+156,%esi
	decl %esi
	jmp .L177
	.align 16
.L178:
	testl %ebx,%ebx
	jne .L179
	pushl $5140
	call _m3_fault
	.align 16
.L179:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L180
	pushl $5140
	call _m3_fault
	.align 16
.L180:
	movl $0,88(%eax)
	addl $4,%ebx
	incl %edx
.L177:
	cmpl %esi,%edx
	jle .L178
.L182:
	movl -1180(%ebp),%eax
	leal -1196(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 RTType__CheckBrands,.Lfe14-RTType__CheckBrands
	.align 16
	.type	 RTType__HashString,@function
RTType__HashString:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	movl 8(%ebp),%edx
	jmp .L184
	.align 16
.L185:
	andl $255,%eax
	leal (%eax,%ecx,2),%ecx
	incl %edx
.L184:
	testl %edx,%edx
	jne .L187
	pushl $5284
	call _m3_fault
	.align 16
.L187:
	movb (%edx),%al
	testb %al,%al
	jne .L185
	movl %ecx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 RTType__HashString,.Lfe15-RTType__HashString
	.align 16
	.type	 RTType__FindChildren,@function
RTType__FindChildren:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RT0u+264,%edi
	movl $0,-4(%ebp)
	movl MI_RT0u+156,%edx
	decl %edx
	movl %edx,-8(%ebp)
	jmp .L190
	.align 16
.L191:
	testl %edi,%edi
	jne .L192
	pushl $5476
	call _m3_fault
	.align 16
.L192:
	movl (%edi),%ebx
	testl %ebx,%ebx
	jne .L193
	pushl $5492
	call _m3_fault
	.align 16
.L193:
	movl 76(%ebx),%eax
	testl %eax,%eax
	je .L194
	pushl %eax
	call RTTypeSRC__FindType
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L197
	pushl %ebx
	call RTType__BadParent
	addl $4,%esp
.L197:
	movl %esi,80(%ebx)
	testl %esi,%esi
	jne .L199
	pushl $5556
	call _m3_fault
	.align 16
.L199:
	movl 84(%esi),%eax
	movl %eax,88(%ebx)
	movl %ebx,84(%esi)
.L194:
	addl $4,%edi
	incl -4(%ebp)
.L190:
	movl -8(%ebp),%edx
	cmpl %edx,-4(%ebp)
	jle .L191
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 RTType__FindChildren,.Lfe16-RTType__FindChildren
	.align 16
	.type	 RTType__CheckParents,@function
RTType__CheckParents:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MI_RT0u+264,%ebx
	movl MI_RT0u+156,%edi
	decl %edi
	jmp .L203
	.align 16
.L204:
	testl %ebx,%ebx
	jne .L205
	pushl $5748
	call _m3_fault
	.align 16
.L205:
	movl (%ebx),%edx
	movl %edx,%eax
	jmp .L206
	.align 16
.L207:
	movl 80(%edx),%edx
	movl 80(%eax),%eax
	testl %eax,%eax
	je .L211
	movl 80(%eax),%eax
	cmpl %eax,%edx
	jne .L206
	testl %ebx,%ebx
	jne .L214
	pushl $5844
	call _m3_fault
	.align 16
.L214:
	movl (%ebx),%eax
	pushl %eax
	call RTType__ParentCycle
	addl $4,%esp
	jmp .L211
	.align 16
.L206:
	testl %eax,%eax
	je .L211
	testl %edx,%edx
	jne .L207
.L211:
	addl $4,%ebx
	incl %esi
.L203:
	cmpl %edi,%esi
	jle .L204
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 RTType__CheckParents,.Lfe17-RTType__CheckParents
	.align 16
	.type	 RTType__AssignTypecodes,@function
RTType__AssignTypecodes:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $1223456110
	call RTTypeSRC__FindType
	movl %eax,MM_RTType+164
	pushl $1358456180
	call RTTypeSRC__FindType
	movl %eax,MM_RTType+168
	pushl $-1651526519
	call RTTypeSRC__FindType
	movl %eax,MM_RTType+172
	pushl $-1987139703
	call RTTypeSRC__FindType
	movl %eax,MM_RTType+176
	movl MI_RT0u+264,%ecx
	xorl %edx,%edx
	movl MI_RT0u+156,%ebx
	decl %ebx
	addl $16,%esp
	jmp .L218
	.align 16
.L219:
	testl %ecx,%ecx
	jne .L220
	pushl $6180
	call _m3_fault
	.align 16
.L220:
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L221
	pushl $6180
	call _m3_fault
	.align 16
.L221:
	movl $1048575,(%eax)
	addl $4,%ecx
	incl %edx
.L218:
	cmpl %ebx,%edx
	jle .L219
	movl MM_RTType+164,%eax
	testl %eax,%eax
	jne .L223
	pushl $6260
	call _m3_fault
	.align 16
.L223:
	movl $0,(%eax)
	movl MM_RTType+164,%eax
	testl %eax,%eax
	jne .L224
	pushl $6260
	call _m3_fault
	.align 16
.L224:
	movl $0,4(%eax)
	movl MM_RTType+168,%eax
	testl %eax,%eax
	jne .L225
	pushl $6276
	call _m3_fault
	.align 16
.L225:
	movl $1,(%eax)
	movl MM_RTType+168,%eax
	testl %eax,%eax
	jne .L226
	pushl $6276
	call _m3_fault
	.align 16
.L226:
	movl $1,4(%eax)
	movl $2,-4(%ebp)
	leal -4(%ebp),%ebx
	pushl %ebx
	movl MM_RTType+172,%eax
	pushl %eax
	call RTType__AssignObjectTypecode
	pushl %ebx
	movl MM_RTType+176,%eax
	pushl %eax
	call RTType__AssignObjectTypecode
	movl MI_RT0u+264,%ecx
	xorl %ebx,%ebx
	movl MI_RT0u+156,%esi
	decl %esi
	addl $16,%esp
	jmp .L227
	.align 16
.L228:
	testl %ecx,%ecx
	jne .L229
	pushl $6436
	call _m3_fault
	.align 16
.L229:
	movl (%ecx),%edx
	testl %edx,%edx
	jne .L230
	pushl $6452
	call _m3_fault
	.align 16
.L230:
	cmpl $1048575,(%edx)
	jne .L231
	movl -4(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	incl %eax
	movl %eax,-4(%ebp)
.L231:
	addl $4,%ecx
	incl %ebx
.L227:
	cmpl %esi,%ebx
	jle .L228
	movl -4(%ebp),%eax
	cmpl %eax,MI_RT0u+156
	je .L235
	pushl $6576
	call _m3_fault
	.align 16
.L235:
	movl MI_RT0u+264,%ecx
	xorl %esi,%esi
	leal -1(%eax),%edi
	jmp .L236
	.align 16
.L237:
	testl %ecx,%ecx
	jne .L238
	pushl $6660
	call _m3_fault
	.align 16
.L238:
	movl (%ecx),%edx
	jmp .L239
	.align 16
.L240:
	movl MI_RT0u+264,%eax
	leal (%eax,%ebx,4),%ebx
	testl %ebx,%ebx
	jne .L242
	pushl $6708
	call _m3_fault
	.align 16
.L242:
	movl (%ebx),%eax
	movl %edx,(%ebx)
	movl %eax,%edx
.L239:
	testl %edx,%edx
	jne .L244
	pushl $6676
	call _m3_fault
	.align 16
.L244:
	movl (%edx),%ebx
	cmpl %esi,%ebx
	jne .L240
	testl %ecx,%ecx
	jne .L246
	pushl $6772
	call _m3_fault
	.align 16
.L246:
	movl %edx,(%ecx)
	addl $4,%ecx
	incl %esi
.L236:
	cmpl %edi,%esi
	jle .L237
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 RTType__AssignTypecodes,.Lfe18-RTType__AssignTypecodes
	.align 16
	.type	 RTType__AssignObjectTypecode,@function
RTType__AssignObjectTypecode:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L249
	pushl $6900
	call _m3_fault
	.align 16
.L249:
	cmpl $1048575,(%esi)
	je .L251
	pushl $6896
	call _m3_fault
	.align 16
.L251:
	movl 12(%ebp),%eax
	movl (%eax),%eax
	movl %eax,(%esi)
	movl 12(%ebp),%eax
	incl (%eax)
	movl 84(%esi),%ebx
	jmp .L253
	.align 16
.L254:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTType__AssignObjectTypecode
	addl $8,%esp
	movl 88(%ebx),%ebx
.L253:
	testl %ebx,%ebx
	jne .L254
	testl %esi,%esi
	jne .L257
	pushl $7012
	call _m3_fault
	.align 16
.L257:
	movl 12(%ebp),%eax
	leal -8(%ebp),%esp
	movl (%eax),%eax
	decl %eax
	movl %eax,4(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 RTType__AssignObjectTypecode,.Lfe19-RTType__AssignObjectTypecode
	.align 16
	.type	 RTType__FixLinks,@function
RTType__FixLinks:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl MI_RT0u+44,%edx
	decl %edx
	movl %edx,-12(%ebp)
	jmp .L259
	.align 16
.L260:
	pushl %edi
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,-8(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L261
	pushl $7188
	call _m3_fault
	.align 16
.L261:
	movl 8(%eax),%ebx
	jmp .L262
	.align 16
.L263:
	movl (%ebx),%edx
	movl %edx,-4(%ebp)
	movl 4(%ebx),%eax
	pushl %eax
	call RTTypeSRC__FindType
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L268
	movl 4(%ebx),%eax
	pushl %eax
	movl -8(%ebp),%edx
	pushl %edx
	call RTType__BadTypeId
	addl $8,%esp
.L268:
	movl %esi,(%ebx)
	testl %esi,%esi
	jne .L270
	pushl $7284
	call _m3_fault
	.align 16
.L270:
	movl (%esi),%eax
	movl %eax,4(%ebx)
	movl -4(%ebp),%ebx
.L262:
	testl %ebx,%ebx
	jne .L263
	incl %edi
.L259:
	cmpl %edi,-12(%ebp)
	jge .L260
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 RTType__FixLinks,.Lfe20-RTType__FixLinks
	.align 16
	.type	 RTType__FixSizes,@function
RTType__FixSizes:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl MI_RT0u+264,%esi
	movl MI_RT0u+156,%edx
	decl %edx
	movl %edx,-4(%ebp)
	jmp .L274
	.align 16
.L275:
	testl %esi,%esi
	jne .L276
	pushl $7492
	call _m3_fault
	.align 16
.L276:
	movl (%esi),%ebx
	testl %ebx,%ebx
	jne .L277
	pushl $7508
	call _m3_fault
	.align 16
.L277:
	cmpl $0,(%ebx)
	je .L278
	cmpl $0,80(%ebx)
	jne .L278
	cmpl $0,84(%ebx)
	jne .L278
	pushl $4
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	movl %eax,28(%ebx)
.L278:
	addl $4,%esi
	incl %edi
.L274:
	cmpl %edi,-4(%ebp)
	jge .L275
	movl MM_RTType+172,%eax
	pushl %eax
	call RTType__FixObjectSizes
	movl MM_RTType+176,%eax
	pushl %eax
	call RTType__FixObjectSizes
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 RTType__FixSizes,.Lfe21-RTType__FixSizes
	.align 16
	.type	 RTType__FixObjectSizes,@function
RTType__FixObjectSizes:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L285
	pushl $7780
	call _m3_fault
	.align 16
.L285:
	movl 80(%esi),%ebx
	testl %ebx,%ebx
	je .L286
	movl 32(%esi),%eax
	pushl %eax
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	movl %eax,24(%esi)
	addl %eax,28(%esi)
	movl 32(%ebx),%edx
	movl 32(%esi),%eax
	cmpl %edx,%eax
	jge .L295
	movl %edx,%eax
.L295:
	movl %eax,32(%esi)
	movl 40(%ebx),%eax
	movl %eax,36(%esi)
	addl %eax,40(%esi)
.L286:
	testl %esi,%esi
	jne .L300
	pushl $7908
	call _m3_fault
	.align 16
.L300:
	pushl $4
	movl 28(%esi),%eax
	pushl %eax
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	movl %eax,28(%esi)
	movl 40(%esi),%eax
	pushl %eax
	call malloc
	addl $4,%esp
	movl %eax,52(%esi)
	testl %eax,%eax
	jne .L307
	call RTType__StartError
	pushl $MM_RTType+656
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutType
	call RTType__EndError
	addl $8,%esp
.L307:
	movl 40(%esi),%eax
	pushl %eax
	movl 52(%esi),%eax
	pushl %eax
	movl MI_RTMisc+48,%eax
	call *%eax
	addl $8,%esp
	movl 84(%esi),%ebx
	jmp .L309
	.align 16
.L310:
	pushl %ebx
	call RTType__FixObjectSizes
	addl $4,%esp
	movl 88(%ebx),%ebx
.L309:
	testl %ebx,%ebx
	jne .L310
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 RTType__FixObjectSizes,.Lfe22-RTType__FixObjectSizes
	.align 16
	.type	 RTType__CallSetupProcs,@function
RTType__CallSetupProcs:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MI_RT0u+264,%ebx
	movl MI_RT0u+156,%edi
	decl %edi
	jmp .L314
	.align 16
.L315:
	testl %ebx,%ebx
	jne .L316
	pushl $8324
	call _m3_fault
	.align 16
.L316:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L317
	pushl $8340
	call _m3_fault
	.align 16
.L317:
	cmpl $0,80(%eax)
	jne .L318
	cmpl $0,84(%eax)
	jne .L318
	movl 72(%eax),%edx
	testl %edx,%edx
	je .L318
	pushl %eax
	call *%edx
	addl $4,%esp
.L318:
	addl $4,%ebx
	incl %esi
.L314:
	cmpl %edi,%esi
	jle .L315
	movl MM_RTType+172,%eax
	pushl %eax
	call RTType__SetupObject
	movl MM_RTType+176,%eax
	pushl %eax
	call RTType__SetupObject
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 RTType__CallSetupProcs,.Lfe23-RTType__CallSetupProcs
	.align 16
	.type	 RTType__SetupObject,@function
RTType__SetupObject:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L324:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %esi,%esi
	jne .L325
	pushl $8580
	call _m3_fault
	.align 16
.L325:
	movl 80(%esi),%ebx
	testl %ebx,%ebx
	je .L330
	movl 40(%ebx),%eax
	pushl %eax
	movl 52(%esi),%eax
	pushl %eax
	movl 52(%ebx),%eax
	pushl %eax
	movl MI_RTMisc+44,%eax
	call *%eax
	addl $12,%esp
.L330:
	movl 52(%esi),%edx
	testl %edx,%edx
	jne .L332
	pushl $8644
	call _m3_fault
	.align 16
.L332:
	movl (%esi),%eax
	movl %eax,(%edx)
	movl 52(%esi),%edx
	addl $4,%edx
	movl 40(%esi),%eax
	sarl $2,%eax
	movl $1,%ecx
	leal -1(%eax),%ebx
	jmp .L335
	.align 16
.L336:
	testl %edx,%edx
	jne .L337
	pushl $8724
	call _m3_fault
	.align 16
.L337:
	cmpl $0,(%edx)
	jne .L338
	movl MM_RTType+444,%eax
	movl %eax,(%edx)
.L338:
	addl $4,%edx
	incl %ecx
.L335:
	cmpl %ebx,%ecx
	jle .L336
	testl %esi,%esi
	jne .L341
	pushl $8804
	call _m3_fault
	.align 16
.L341:
	movl 72(%esi),%eax
	testl %eax,%eax
	je .L342
	pushl %esi
	call *%eax
	addl $4,%esp
.L342:
	movl 84(%esi),%ebx
	jmp .L345
	.align 16
.L346:
	pushl %ebx
	call RTType__SetupObject
	addl $4,%esp
	movl 88(%ebx),%ebx
.L345:
	testl %ebx,%ebx
	jne .L346
.L349:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 RTType__SetupObject,.Lfe24-RTType__SetupObject
	.align 16
	.type	 RTType__CheckRevelations,@function
RTType__CheckRevelations:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-4(%ebp)
	movl MI_RT0u+44,%ecx
	decl %ecx
	movl %ecx,-8(%ebp)
	jmp .L351
	.align 16
.L352:
	movl -4(%ebp),%ecx
	pushl %ecx
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %edi,%edi
	jne .L353
	pushl $9108
	call _m3_fault
	.align 16
.L353:
	movl 16(%edi),%ebx
	testl %ebx,%ebx
	je .L354
	jmp .L355
	.align 16
.L356:
	pushl %eax
	call RTTypeSRC__FindType
	movl %eax,%esi
	addl $4,%esp
	movl 4(%ebx),%eax
	pushl %eax
	call RTTypeSRC__FindType
	addl $4,%esp
	testl %esi,%esi
	je .L359
	testl %eax,%eax
	je .L359
	movl (%esi),%edx
	cmpl %edx,(%eax)
	jg .L359
	cmpl %edx,4(%eax)
	jge .L364
.L359:
	pushl %eax
	pushl %esi
	pushl %ebx
	pushl %edi
	call RTType__BadRevelation
	addl $16,%esp
.L364:
	addl $8,%ebx
.L355:
	testl %ebx,%ebx
	jne .L365
	pushl $9140
	call _m3_fault
	.align 16
.L365:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L356
.L354:
	incl -4(%ebp)
.L351:
	movl -8(%ebp),%ecx
	cmpl %ecx,-4(%ebp)
	jle .L352
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 RTType__CheckRevelations,.Lfe25-RTType__CheckRevelations
	.align 16
	.type	 RTType__UndefinedMethod,@function
RTType__UndefinedMethod:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $0
	pushl $MM_RTType+708
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 RTType__UndefinedMethod,.Lfe26-RTType__UndefinedMethod
	.align 16
	.type	 RTType__BadType,@function
RTType__BadType:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTType+764
	movl MI_RTMisc+68,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 RTType__BadType,.Lfe27-RTType__BadType
	.align 16
	.type	 RTType__StartError,@function
RTType__StartError:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RTType+796
	movl MI_RTIO+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 RTType__StartError,.Lfe28-RTType__StartError
	.align 16
	.type	 RTType__EndError,@function
RTType__EndError:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RTType+820
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_RTType+840
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 RTType__EndError,.Lfe29-RTType__EndError
	.align 16
	.type	 RTType__BadTypeId,@function
RTType__BadTypeId:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	call RTType__StartError
	pushl $MM_RTType+888
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+928
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutModule
	call RTType__EndError
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 RTType__BadTypeId,.Lfe30-RTType__BadTypeId
	.align 16
	.type	 RTType__DuplicateLHS,@function
RTType__DuplicateLHS:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	call RTType__StartError
	pushl $MM_RTType+952
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTType+988
	movl MI_RTIO+56,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L374
	pushl $10020
	call _m3_fault
	.align 16
.L374:
	pushl $0
	movl (%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+1020
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	pushl $0
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+928
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutModule
	pushl $MM_RTType+1040
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %edi
	call RTType__PutType
	call RTType__EndError
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 RTType__DuplicateLHS,.Lfe31-RTType__DuplicateLHS
	.align 16
	.type	 RTType__UndefinedRHS,@function
RTType__UndefinedRHS:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	call RTType__StartError
	pushl $MM_RTType+1076
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTType+988
	movl MI_RTIO+56,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L377
	pushl $10260
	call _m3_fault
	.align 16
.L377:
	pushl $0
	movl (%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+1020
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	pushl $0
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+928
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutModule
	call RTType__EndError
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 RTType__UndefinedRHS,.Lfe32-RTType__UndefinedRHS
	.align 16
	.type	 RTType__BadParent,@function
RTType__BadParent:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	call RTType__StartError
	pushl $MM_RTType+1132
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	call RTType__PutType
	pushl $MM_RTType+1184
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	testl %ebx,%ebx
	jne .L380
	pushl $10484
	call _m3_fault
	.align 16
.L380:
	pushl $0
	movl 76(%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	call RTType__EndError
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 RTType__BadParent,.Lfe33-RTType__BadParent
	.align 16
	.type	 RTType__ParentCycle,@function
RTType__ParentCycle:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	call RTType__StartError
	pushl $MM_RTType+1216
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutType
	addl $8,%esp
	testl %esi,%esi
	jne .L382
	pushl $10644
	call _m3_fault
	.align 16
.L382:
	movl 80(%esi),%ebx
	jmp .L383
	.align 16
.L384:
	pushl $MM_RTType+1276
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	call RTType__PutType
	addl $8,%esp
	cmpl %esi,%ebx
	je .L386
	testl %ebx,%ebx
	jne .L387
	pushl $10724
	call _m3_fault
	.align 16
.L387:
	movl 80(%ebx),%ebx
.L383:
	testl %ebx,%ebx
	jne .L384
.L386:
	call RTType__EndError
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 RTType__ParentCycle,.Lfe34-RTType__ParentCycle
	.align 16
	.type	 RTType__BadRevelation,@function
RTType__BadRevelation:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
	call RTType__StartError
	pushl $MM_RTType+1308
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTType+988
	movl MI_RTIO+56,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L389
	pushl $10900
	call _m3_fault
	.align 16
.L389:
	pushl $0
	movl (%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+1356
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	pushl $0
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+1376
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %esi
	call RTType__PutType
	pushl $MM_RTType+1404
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %edi
	call RTType__PutType
	pushl $MM_RTType+928
	movl MI_RTIO+56,%eax
	call *%eax
	movl 8(%ebp),%edx
	pushl %edx
	call RTType__PutModule
	addl $32,%esp
	call RTType__EndError
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 RTType__BadRevelation,.Lfe35-RTType__BadRevelation
	.align 16
	.type	 RTType__PutType,@function
RTType__PutType:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $MM_RTType+1424
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+68,%eax
	call *%eax
	addl $12,%esp
	testl %ebx,%ebx
	je .L392
	pushl $MM_RTType+1440
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	pushl $0
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	pushl $MM_RTType+1460
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
	pushl $3
	movl (%ebx),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $8,%esp
	cmpl $0,4(%ebx)
	je .L398
	pushl $MM_RTType+1488
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	pushl $3
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	addl $8,%esp
.L398:
	cmpl $0,96(%ebx)
	je .L392
	pushl $MM_RTType+1508
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	movl 96(%ebx),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	addl $4,%esp
.L392:
	pushl $MM_RTType+1524
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 RTType__PutType,.Lfe36-RTType__PutType
	.align 16
	.type	 RTType__PutModule,@function
RTType__PutModule:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L402
	pushl $12148
	call _m3_fault
	.align 16
.L402:
	movl (%eax),%eax
	testl %eax,%eax
	jne .L405
	pushl $MM_RTType+1540
	movl MI_RTIO+56,%eax
	jmp .L406
	.align 16
.L405:
	pushl %eax
	movl MI_RTIO+52,%eax
.L406:
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 RTType__PutModule,.Lfe37-RTType__PutModule
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe38:
	.size	 _m3_fault,.Lfe38-_m3_fault
.globl MM_RTType
.data
	.align 4
	.type	 MM_RTType,@object
	.size	 MM_RTType,2596
MM_RTType:
	.long MM_RTType+2436
	.long MM_RTType+56
	.zero	12
	.long MM_RTType+1988
	.zero	20
	.long RTType__TypeDefnToName
	.zero	16
	.long -2145129127
.byte 219
.byte 128
.byte 244
.byte 139
.byte 130
.byte 109
.byte 215
.byte 11
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_RTType+2592
	.zero	40
	.long MM_RTType+216
	.zero	20
	.long RTType__RegisterTypes
	.long RTType__CheckOpaques
	.long RTType__CheckBrands
	.long RTType__HashString
	.long RTType__FindChildren
	.long RTType__CheckParents
	.long RTType__AssignTypecodes
	.long RTType__AssignObjectTypecode
	.long RTType__FixLinks
	.zero	8
	.long 451631810
.byte 169
.byte 50
.byte 73
.byte 23
.byte 107
.byte 104
.byte 162
.byte 13
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_RTType+2589
	.zero	40
	.long MM_RTType+336
	.long RTType__FixSizes
	.long RTType__FixObjectSizes
	.long RTType__CallSetupProcs
	.long RTType__SetupObject
	.zero	8
	.long 690206623
.byte 228
.byte 52
.byte 218
.byte 38
.byte 123
.byte 131
.byte 249
.byte 15
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_RTType+2587
	.zero	44
	.long RTType__CheckRevelations
	.long RTType__UndefinedMethod
	.long RTType__BadType
	.long RTType__StartError
	.long RTType__EndError
	.long RTType__BadTypeId
	.long RTType__DuplicateLHS
	.long RTType__UndefinedRHS
	.long RTType__BadParent
	.long RTType__ParentCycle
	.long RTType__BadRevelation
	.long RTType__PutType
	.long RTType__PutModule
	.long RTTypeSRC__TypeName
	.long RTTypeSRC__TypecodeName
	.long RTTypeSRC__FindType
	.long RTTypeSRC__Init
	.long RTType__MaxTypecode
	.long RTType__IsSubtype
	.long RTType__Supertype
	.long RTType__IsTraced
	.long RTType__Get
	.long RTType__GetNDimensions
	.long 2
	.long MM_RTType+544
	.long 12
	.ascii	"<anon type>"
	.zero	1
	.long 2
	.long MM_RTType+568
	.long 33
	.ascii	"Two types have the same brand: \""
	.zero	4
	.long 2
	.long MM_RTType+616
	.long 10
	.ascii	"\"\n***    "
	.zero	3
	.long 2
	.long MM_RTType+640
	.long 9
	.ascii	"\n***    "
	.zero	4
	.long 2
	.long MM_RTType+664
	.long 37
	.ascii	"unable to allocate method suite for "
	.zero	4
	.long 2
	.long MM_RTType+716
	.long 41
	.ascii	"attempted invocation of undefined method"
	.zero	4
	.long 2
	.long MM_RTType+772
	.long 20
	.ascii	"improper typecode: "
	.zero	1
	.long 2
	.long MM_RTType+804
	.long 11
	.ascii	"\n\n***\n*** "
	.zero	2
	.long 2
	.long MM_RTType+828
	.long 5
	.ascii	"\n***"
	.zero	4
	.long 2
	.long MM_RTType+848
	.long 35
	.ascii	"unable to initialize runtime types"
	.zero	2
	.long 2
	.long MM_RTType+896
	.long 28
	.ascii	"unable to resolve type id: "
	.zero	1
	.long 2
	.long MM_RTType+936
	.long 12
	.ascii	"\n***    in "
	.zero	1
	.long 2
	.long MM_RTType+960
	.long 24
	.ascii	"opaque type redefined: "
	.zero	1
	.long 2
	.long MM_RTType+996
	.long 18
	.ascii	"\n***    REVEAL _t"
	.zero	3
	.long 2
	.long MM_RTType+1028
	.long 6
	.ascii	" = _t"
	.zero	3
	.long 2
	.long MM_RTType+1048
	.long 24
	.ascii	"\n***    but, already = "
	.zero	1
	.long 2
	.long MM_RTType+1084
	.long 41
	.ascii	"opaque type revealed as undefined type: "
	.zero	4
	.long 2
	.long MM_RTType+1140
	.long 38
	.ascii	"super type undefined:\n***    child = "
	.zero	3
	.long 2
	.long MM_RTType+1192
	.long 20
	.ascii	"\n***    parent = _t"
	.zero	1
	.long 2
	.long MM_RTType+1224
	.long 47
	.ascii	"illegal cycle in super types:\n***    child  = "
	.zero	2
	.long 2
	.long MM_RTType+1284
	.long 18
	.ascii	"\n***    parent = "
	.zero	3
	.long 2
	.long MM_RTType+1316
	.long 34
	.ascii	"inconsistent partial revelation: "
	.zero	3
	.long 2
	.long MM_RTType+1364
	.long 7
	.ascii	" <: _t"
	.zero	2
	.long 2
	.long MM_RTType+1384
	.long 16
	.ascii	"\n***           "
	.zero	1
	.long 2
	.long MM_RTType+1412
	.long 5
	.ascii	" <: "
	.zero	4
	.long 2
	.long MM_RTType+1432
	.long 2
	.ascii	"["
	.zero	3
	.long 2
	.long MM_RTType+1448
	.long 5
	.ascii	"  _t"
	.zero	4
	.long 2
	.long MM_RTType+1468
	.long 13
	.ascii	"  typecode= "
	.zero	4
	.long 2
	.long MM_RTType+1496
	.long 5
	.ascii	" .. "
	.zero	4
	.long 2
	.long MM_RTType+1516
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_RTType+1532
	.long 2
	.ascii	"]"
	.zero	3
	.long 2
	.long MM_RTType+1548
	.long 4
	.ascii	"???"
	.zero	1
	.ascii	"PutModule"
	.zero	1
	.ascii	"PutType"
	.zero	1
	.ascii	"BadRevelation"
	.zero	1
	.ascii	"ParentCycle"
	.zero	1
	.ascii	"BadParent"
	.zero	1
	.ascii	"UndefinedRHS"
	.zero	1
	.ascii	"DuplicateLHS"
	.zero	1
	.ascii	"BadTypeId"
	.zero	1
	.ascii	"EndError"
	.zero	1
	.ascii	"StartError"
	.zero	1
	.ascii	"BadType"
	.zero	1
	.ascii	"UndefinedMethod"
	.zero	1
	.ascii	"CheckRevelations"
	.zero	1
	.ascii	"SetupObject"
	.zero	1
	.ascii	"CallSetupProcs"
	.zero	1
	.ascii	"FixObjectSizes"
	.zero	1
	.ascii	"FixSizes"
	.zero	1
	.ascii	"FixLinks"
	.zero	1
	.ascii	"AssignObjectTypecode"
	.zero	1
	.ascii	"AssignTypecodes"
	.zero	1
	.ascii	"CheckParents"
	.zero	1
	.ascii	"FindChildren"
	.zero	1
	.ascii	"HashString"
	.zero	1
	.ascii	"CheckBrands"
	.zero	1
	.ascii	"CheckOpaques"
	.zero	1
	.ascii	"RegisterTypes"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"FindType"
	.zero	1
	.ascii	"TypeDefnToName"
	.zero	1
	.ascii	"TypecodeName"
	.zero	1
	.ascii	"TypeName"
	.zero	1
	.ascii	"GetNDimensions"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"IsTraced"
	.zero	1
	.ascii	"Supertype"
	.zero	1
	.ascii	"IsSubtype"
	.zero	1
	.ascii	"MaxTypecode"
	.zero	2
	.long RTType__PutModule
	.long MM_RTType+1552
	.zero	4
	.long RTType__PutType
	.long MM_RTType+1562
	.zero	4
	.long RTType__BadRevelation
	.long MM_RTType+1570
	.zero	4
	.long RTType__ParentCycle
	.long MM_RTType+1584
	.zero	4
	.long RTType__BadParent
	.long MM_RTType+1596
	.zero	4
	.long RTType__UndefinedRHS
	.long MM_RTType+1606
	.zero	4
	.long RTType__DuplicateLHS
	.long MM_RTType+1619
	.zero	4
	.long RTType__BadTypeId
	.long MM_RTType+1632
	.zero	4
	.long RTType__EndError
	.long MM_RTType+1642
	.zero	4
	.long RTType__StartError
	.long MM_RTType+1651
	.zero	4
	.long RTType__BadType
	.long MM_RTType+1662
	.zero	4
	.long RTType__UndefinedMethod
	.long MM_RTType+1670
	.zero	4
	.long RTType__CheckRevelations
	.long MM_RTType+1686
	.zero	4
	.long RTType__SetupObject
	.long MM_RTType+1703
	.zero	4
	.long RTType__CallSetupProcs
	.long MM_RTType+1715
	.zero	4
	.long RTType__FixObjectSizes
	.long MM_RTType+1730
	.zero	4
	.long RTType__FixSizes
	.long MM_RTType+1745
	.zero	4
	.long RTType__FixLinks
	.long MM_RTType+1754
	.zero	4
	.long RTType__AssignObjectTypecode
	.long MM_RTType+1763
	.zero	4
	.long RTType__AssignTypecodes
	.long MM_RTType+1784
	.zero	4
	.long RTType__CheckParents
	.long MM_RTType+1800
	.zero	4
	.long RTType__FindChildren
	.long MM_RTType+1813
	.zero	4
	.long RTType__HashString
	.long MM_RTType+1826
	.zero	4
	.long RTType__CheckBrands
	.long MM_RTType+1837
	.zero	4
	.long RTType__CheckOpaques
	.long MM_RTType+1849
	.zero	4
	.long RTType__RegisterTypes
	.long MM_RTType+1862
	.zero	4
	.long RTTypeSRC__Init
	.long MM_RTType+1876
	.long MI_RTTypeSRC+56
	.long RTTypeSRC__FindType
	.long MM_RTType+1881
	.long MI_RTTypeSRC+52
	.long RTType__TypeDefnToName
	.long MM_RTType+1890
	.zero	4
	.long RTTypeSRC__TypecodeName
	.long MM_RTType+1905
	.long MI_RTTypeSRC+48
	.long RTTypeSRC__TypeName
	.long MM_RTType+1918
	.long MI_RTTypeSRC+44
	.long RTType__GetNDimensions
	.long MM_RTType+1927
	.long MI_RTType+64
	.long RTType__Get
	.long MM_RTType+1942
	.long MI_RTType+60
	.long RTType__IsTraced
	.long MM_RTType+1946
	.long MI_RTType+56
	.long RTType__Supertype
	.long MM_RTType+1955
	.long MI_RTType+52
	.long RTType__IsSubtype
	.long MM_RTType+1965
	.long MI_RTType+48
	.long RTType__MaxTypecode
	.long MM_RTType+1975
	.long MI_RTType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTType.m3"
	.zero	1
.byte 5
.byte 0
.byte 5
.byte 14
.byte 0
.byte 14
.byte 5
.byte 0
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
