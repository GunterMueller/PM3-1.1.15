	.file	"M3ID.mc"
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
	.type	 M3ID__Add,@function
M3ID__Add:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L3
	pushl $788
	call _m3_fault
	.align 16
.L3:
	movl 4(%ebx),%eax
	decl %eax
	pushl %eax
	pushl %ebx
	call M3ID__FromStr
	movl %eax,%ecx
	addl $8,%esp
	cmpb $0,12(%ebp)
	je .L4
	cmpl $200,%ecx
	jbe .L5
	pushl $817
	call _m3_fault
	.align 16
.L5:
	movb 12(%ebp),%dl
	movb %dl,MM_M3ID+380(%ecx)
.L4:
	movl MM_M3ID+264,%esi
	testl %esi,%esi
	jne .L6
	pushl $836
	call _m3_fault
	.align 16
.L6:
	cmpl %ecx,4(%esi)
	ja .L7
	pushl $834
	call _m3_fault
	.align 16
.L7:
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	addl (%esi),%eax
	cmpl $0,8(%eax)
	jne .L8
	movl %ebx,8(%eax)
.L8:
	leal -8(%ebp),%esp
	movl %ecx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3ID__Add,.Lfe1-M3ID__Add
	.align 16
	.type	 M3ID__FromStr,@function
M3ID__FromStr:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %esi,%esi
	movl 4(%eax),%eax
	cmpl %eax,12(%ebp)
	jle .L12
	movl %eax,12(%ebp)
.L12:
	testl %eax,%eax
	jne .L13
	pushl $962
	call _m3_fault
	.align 16
.L13:
	movl %esi,-24(%ebp)
	movl -24(%ebp),%ecx
	movl 12(%ebp),%esi
	decl %esi
	jmp .L14
	.align 16
.L15:
	movl 8(%ebp),%edx
	cmpl %ecx,4(%edx)
	ja .L16
	pushl $1010
	call _m3_fault
	.align 16
.L16:
	movl -24(%ebp),%eax
	sall $4,%eax
	movl (%edx),%edx
	addl -24(%ebp),%eax
	movb (%ecx,%edx),%dl
	andl $255,%edx
	addl %edx,%eax
	movl %eax,-24(%ebp)
	incl %ecx
.L14:
	cmpl %esi,%ecx
	jle .L15
	movl -24(%ebp),%eax
	andl MM_M3ID+268,%eax
	jns .L18
	pushl $1057
	call _m3_fault
	.align 16
.L18:
	movl %eax,%esi
.L19:
	movl MM_M3ID+376,%eax
	testl %eax,%eax
	jne .L20
	pushl $1092
	call _m3_fault
	.align 16
.L20:
	movl %eax,%ecx
	cmpl %esi,4(%ecx)
	ja .L21
	pushl $1090
	call _m3_fault
	.align 16
.L21:
	movl (%ecx),%eax
	movl (%eax,%esi,4),%edi
	testl %edi,%edi
	je .L23
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L24
	pushl $1124
	call _m3_fault
	.align 16
.L24:
	movl %eax,%ecx
	cmpl %edi,4(%ecx)
	ja .L25
	pushl $1122
	call _m3_fault
	.align 16
.L25:
	leal (%edi,%edi,2),%eax
	sall $2,%eax
	movl %eax,%edx
	addl (%ecx),%edx
	movl -24(%ebp),%ebx
	cmpl %ebx,4(%edx)
	jne .L26
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L27
	pushl $1138
	call _m3_fault
	.align 16
.L27:
	movl (%eax),%eax
	movl %eax,-28(%ebp)
	movl (%edx),%edx
	movl 12(%ebp),%ecx
	jmp .L30
	.align 16
.L31:
	decl %ecx
	incl -28(%ebp)
	incl %edx
.L30:
	testl %ecx,%ecx
	jle .L35
	cmpl $0,-28(%ebp)
	jne .L33
	pushl $1188
	call _m3_fault
	.align 16
.L33:
	testl %edx,%edx
	jne .L34
	pushl $1188
	call _m3_fault
	.align 16
.L34:
	movl -28(%ebp),%ebx
	movb (%ebx),%al
	cmpb %al,(%edx)
	je .L31
.L35:
	testl %ecx,%ecx
	jne .L26
	testl %edx,%edx
	jne .L37
	pushl $1268
	call _m3_fault
	.align 16
.L37:
	cmpb $0,(%edx)
	je .L59
.L26:
	incl %esi
	movl MM_M3ID+376,%eax
	testl %eax,%eax
	jne .L38
	pushl $1316
	call _m3_fault
	.align 16
.L38:
	cmpl %esi,4(%eax)
	jg .L19
	xorl %esi,%esi
	jmp .L19
	.align 16
.L23:
	movl MM_M3ID+260,%edi
	leal 1(%edi),%ebx
	movl %ebx,MM_M3ID+260
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L40
	pushl $1396
	call _m3_fault
	.align 16
.L40:
	cmpl %edi,4(%eax)
	jg .L41
	call M3ID__ExpandIDs
.L41:
	movl MM_M3ID+376,%eax
	testl %eax,%eax
	jne .L42
	pushl $1412
	call _m3_fault
	.align 16
.L42:
	movl %eax,%ecx
	cmpl %esi,4(%ecx)
	ja .L43
	pushl $1410
	call _m3_fault
	.align 16
.L43:
	movl (%ecx),%eax
	movl %edi,(%eax,%esi,4)
	movl 12(%ebp),%eax
	addl MM_M3ID+252,%eax
	cmpl $8186,%eax
	jle .L44
	call M3ID__ExpandChars
.L44:
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L45
	pushl $1508
	call _m3_fault
	.align 16
.L45:
	movl %eax,%ecx
	cmpl %edi,4(%ecx)
	ja .L46
	pushl $1506
	call _m3_fault
	.align 16
.L46:
	leal (%edi,%edi,2),%edx
	movl (%ecx),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-4(%ebp)
	movl MM_M3ID+256,%ecx
	testl %ecx,%ecx
	jne .L47
	pushl $1524
	call _m3_fault
	.align 16
.L47:
	movl MM_M3ID+252,%edx
	cmpl $8187,%edx
	jle .L48
	pushl $1521
	call _m3_fault
	.align 16
.L48:
	addl %edx,%ecx
	movl %ecx,(%eax)
	movl -4(%ebp),%eax
	movl -24(%ebp),%ebx
	movl %ebx,4(%eax)
	movl $0,8(%eax)
	cmpl $0,12(%ebp)
	jge .L49
	pushl $1569
	call _m3_fault
	.align 16
.L49:
	movl 12(%ebp),%ebx
	movl %ebx,-8(%ebp)
	movl MM_M3ID+252,%edx
	leal (%ebx,%edx),%eax
	cmpl $8188,%eax
	jle .L50
	pushl $1569
	call _m3_fault
	.align 16
.L50:
	movl MM_M3ID+256,%eax
	testl %eax,%eax
	jne .L51
	pushl $1572
	call _m3_fault
	.align 16
.L51:
	addl %edx,%eax
	movl %eax,-12(%ebp)
	movl 12(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L53
	pushl $1569
	call _m3_fault
	.align 16
.L53:
	movl (%edx),%eax
	movl %eax,-20(%ebp)
	pushl %ecx
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	call memmove
	movl MM_M3ID+256,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L55
	pushl $1588
	call _m3_fault
	.align 16
.L55:
	movl 12(%ebp),%eax
	addl MM_M3ID+252,%eax
	cmpl $8187,%eax
	jbe .L56
	pushl $1585
	call _m3_fault
	.align 16
.L56:
	movb $0,(%eax,%edx)
	movl MM_M3ID+252,%eax
	incl %eax
	addl 12(%ebp),%eax
	jns .L57
	pushl $1601
	call _m3_fault
	.align 16
.L57:
	movl %eax,MM_M3ID+252
	movl MM_M3ID+376,%edx
	testl %edx,%edx
	jne .L58
	pushl $1668
	call _m3_fault
	.align 16
.L58:
	movl MM_M3ID+260,%ebx
	movl %ebx,%eax
	addl %ebx,%eax
	cmpl %eax,4(%edx)
	jge .L59
	call M3ID__ExpandHashTable
.L59:
	movl %edi,%eax
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3ID__FromStr,.Lfe2-M3ID__FromStr
	.align 16
	.type	 M3ID__ToText,@function
M3ID__ToText:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl 8(%ebp),%ecx
	cmpl %ecx,MM_M3ID+260
	jg .L62
	pushl $1792
	call _m3_fault
	.align 16
.L62:
	cmpl $0,8(%ebp)
	je .L66
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L64
	pushl $1828
	call _m3_fault
	.align 16
.L64:
	movl %eax,%edx
	movl 8(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L65
	pushl $1826
	call _m3_fault
	.align 16
.L65:
	movl 8(%ebp),%ecx
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	movl %eax,-4(%ebp)
	addl (%edx),%eax
	movl 8(%eax),%ebx
	testl %ebx,%ebx
	jne .L66
	movl (%eax),%edi
	pushl %edi
	call strlen
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jge .L69
	pushl $1889
	call _m3_fault
	.align 16
.L69:
	pushl %esi
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L70
	pushl $1908
	call _m3_fault
	.align 16
.L70:
	cmpl $0,4(%ebx)
	jne .L71
	pushl $1906
	call _m3_fault
	.align 16
.L71:
	leal 1(%esi),%eax
	pushl %eax
	pushl %edi
	movl (%ebx),%eax
	pushl %eax
	call memcpy
	movl MM_M3ID+264,%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L72
	pushl $1924
	call _m3_fault
	.align 16
.L72:
	movl 8(%ebp),%ecx
	cmpl %ecx,4(%eax)
	ja .L73
	pushl $1922
	call _m3_fault
	.align 16
.L73:
	movl -4(%ebp),%edx
	addl (%eax),%edx
	movl %ebx,8(%edx)
.L66:
	movl %ebx,%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3ID__ToText,.Lfe3-M3ID__ToText
	.align 16
	.type	 M3ID__Put,@function
M3ID__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ecx
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L76
	pushl $2020
	call _m3_fault
	.align 16
.L76:
	cmpl %ecx,4(%eax)
	ja .L77
	pushl $2018
	call _m3_fault
	.align 16
.L77:
	movl (%eax),%edx
	leal (%ecx,%ecx,2),%eax
	movl (%edx,%eax,4),%ebx
	cmpl %ecx,MM_M3ID+260
	jg .L78
	pushl $2048
	call _m3_fault
	.align 16
.L78:
	testl %ecx,%ecx
	je .L75
	pushl %ebx
	call strlen
	addl $4,%esp
	testl %eax,%eax
	jge .L80
	pushl $2097
	call _m3_fault
	.align 16
.L80:
	cmpl $8188,%eax
	jle .L81
	pushl $2097
	call _m3_fault
	.align 16
.L81:
	movl %eax,-4(%ebp)
	testl %ebx,%ebx
	jne .L82
	pushl $2100
	call _m3_fault
	.align 16
.L82:
	movl %ebx,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_M3Buf+68,%eax
	call *%eax
.L75:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3ID__Put,.Lfe4-M3ID__Put
	.align 16
	.type	 M3ID__GetClass,@function
M3ID__GetClass:
	pushl %ebp
	movl %esp,%ebp
	movl MM_M3ID+260,%edx
	movl 8(%ebp),%eax
	cmpl %edx,%eax
	jl .L84
	pushl $2176
	call _m3_fault
	.align 16
.L84:
	cmpl $199,%eax
	jg .L85
	cmpl $200,%eax
	jbe .L86
	pushl $2209
	call _m3_fault
	.align 16
.L86:
	movb MM_M3ID+380(%eax),%al
	andl $255,%eax
	jmp .L88
	.align 16
.L85:
	cmpl %edx,%eax
	jl .L87
	pushl $2224
	call _m3_fault
	.align 16
.L87:
	xorl %eax,%eax
.L88:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3ID__GetClass,.Lfe5-M3ID__GetClass
	.align 16
	.type	 M3ID__Hash,@function
M3ID__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl %eax,MM_M3ID+260
	jg .L90
	pushl $2320
	call _m3_fault
	.align 16
.L90:
	movl MM_M3ID+264,%edx
	testl %edx,%edx
	jne .L91
	pushl $2340
	call _m3_fault
	.align 16
.L91:
	cmpl %eax,4(%edx)
	ja .L92
	pushl $2338
	call _m3_fault
	.align 16
.L92:
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl %ebp,%esp
	popl %ebp
	movl 4(%eax),%eax
	ret
.Lfe6:
	.size	 M3ID__Hash,.Lfe6-M3ID__Hash
	.align 16
	.type	 M3ID__AdvanceMarks,@function
M3ID__AdvanceMarks:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl MM_M3ID+688,%edx
	testl %edx,%edx
	je .L94
	movl MM_M3ID+260,%eax
	cmpl %eax,4(%edx)
	jg .L96
.L94:
	leal -12(%ebp),%edx
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L97
	pushl $2436
	call _m3_fault
	.align 16
.L97:
	movl 4(%eax),%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_M3ID+744,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_M3ID+688
	movb $0,MM_M3ID+692
	addl $8,%esp
.L96:
	movb MM_M3ID+692,%al
	incb %al
	andl $255,%eax
	cmpl $255,%eax
	jbe .L98
	pushl $2481
	call _m3_fault
	.align 16
.L98:
	movb %al,MM_M3ID+692
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3ID__AdvanceMarks,.Lfe7-M3ID__AdvanceMarks
	.align 16
	.type	 M3ID__SetMark,@function
M3ID__SetMark:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl %ebx,MM_M3ID+260
	jg .L100
	pushl $2576
	call _m3_fault
	.align 16
.L100:
	movl MM_M3ID+688,%eax
	testl %eax,%eax
	jne .L101
	pushl $2596
	call _m3_fault
	.align 16
.L101:
	cmpl %ebx,4(%eax)
	ja .L102
	pushl $2594
	call _m3_fault
	.align 16
.L102:
	movl (%eax),%edx
	movb MM_M3ID+692,%al
	movb (%ebx,%edx),%cl
	movb %al,(%ebx,%edx)
	cmpb %cl,MM_M3ID+692
	sete %al
	andl $255,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3ID__SetMark,.Lfe8-M3ID__SetMark
	.align 16
	.type	 M3ID__IsLT,@function
M3ID__IsLT:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%esi
	movl MM_M3ID+260,%eax
	cmpl %eax,%ecx
	jge .L106
	cmpl %eax,%esi
	jl .L107
.L106:
	pushl $2720
	call _m3_fault
	.align 16
.L107:
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L108
	pushl $2740
	call _m3_fault
	.align 16
.L108:
	movl 4(%eax),%edx
	cmpl %edx,%ecx
	jb .L109
	pushl $2738
	call _m3_fault
	.align 16
.L109:
	movl (%eax),%ebx
	leal (%ecx,%ecx,2),%eax
	movl (%ebx,%eax,4),%ecx
	cmpl %edx,%esi
	jb .L111
	pushl $2754
	call _m3_fault
	.align 16
.L111:
	leal (%esi,%esi,2),%eax
	movl (%ebx,%eax,4),%eax
	pushl %eax
	pushl %ecx
	call strcmp
	leal -8(%ebp),%esp
	shrl $31,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M3ID__IsLT,.Lfe9-M3ID__IsLT
	.align 16
	.type	 M3ID__ExpandChars,@function
M3ID__ExpandChars:
	pushl %ebp
	movl %esp,%ebp
	movl MM_M3ID+752,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,MM_M3ID+256
	movl $0,MM_M3ID+252
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 M3ID__ExpandChars,.Lfe10-M3ID__ExpandChars
	.align 16
	.type	 M3ID__ExpandIDs,@function
M3ID__ExpandIDs:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L114
	pushl $2964
	call _m3_fault
	.align 16
.L114:
	movl 4(%eax),%esi
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,%edi
	addl %esi,%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_M3ID+760,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L115
	pushl $2996
	call _m3_fault
	.align 16
.L115:
	movl %esi,-16(%ebp)
	movl %esi,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L116
	pushl $2993
	call _m3_fault
	.align 16
.L116:
	movl (%ebx),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl MM_M3ID+264,%edx
	testl %edx,%edx
	jne .L117
	pushl $2996
	call _m3_fault
	.align 16
.L117:
	cmpl %esi,4(%edx)
	je .L118
	pushl $2995
	call _m3_fault
	.align 16
.L118:
	leal (%esi,%edi),%eax
	sall $2,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	leal -36(%ebp),%esp
	movl %ebx,MM_M3ID+264
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M3ID__ExpandIDs,.Lfe11-M3ID__ExpandIDs
	.align 16
	.type	 M3ID__ExpandHashTable,@function
M3ID__ExpandHashTable:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_M3ID+376,%eax
	testl %eax,%eax
	jne .L120
	pushl $3092
	call _m3_fault
	.align 16
.L120:
	movl 4(%eax),%eax
	movl %eax,-20(%ebp)
	movl %eax,%edi
	addl %eax,%edi
	movl %edi,-28(%ebp)
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl -28(%ebp),%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_M3ID+768,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl MM_M3ID+268,%edi
	movl %edi,%eax
	addl %edi,%eax
	incl %eax
	movl %eax,-16(%ebp)
	xorl %edx,%edx
	movl -28(%ebp),%ecx
	decl %ecx
	addl $8,%esp
	jmp .L121
	.align 16
.L122:
	testl %ebx,%ebx
	jne .L123
	pushl $3204
	call _m3_fault
	.align 16
.L123:
	cmpl %edx,4(%ebx)
	ja .L124
	pushl $3202
	call _m3_fault
	.align 16
.L124:
	movl (%ebx),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L121:
	cmpl %ecx,%edx
	jle .L122
	xorl %esi,%esi
	movl -20(%ebp),%edi
	decl %edi
	movl %edi,-24(%ebp)
	jmp .L126
	.align 16
.L127:
	movl MM_M3ID+376,%eax
	testl %eax,%eax
	jne .L128
	pushl $3252
	call _m3_fault
	.align 16
.L128:
	movl %eax,%edx
	cmpl %esi,4(%edx)
	ja .L129
	pushl $3250
	call _m3_fault
	.align 16
.L129:
	movl (%edx),%eax
	movl (%eax,%esi,4),%ecx
	testl %ecx,%ecx
	je .L130
	movl MM_M3ID+264,%eax
	testl %eax,%eax
	jne .L131
	pushl $3284
	call _m3_fault
	.align 16
.L131:
	movl %eax,%edx
	cmpl %ecx,4(%edx)
	ja .L132
	pushl $3282
	call _m3_fault
	.align 16
.L132:
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl -16(%ebp),%edi
	andl 4(%eax),%edi
	movl %edi,%eax
	jmp .L133
	.align 16
.L134:
	incl %eax
	cmpl %eax,-28(%ebp)
	jg .L133
	xorl %eax,%eax
.L133:
	testl %ebx,%ebx
	jne .L136
	pushl $3300
	call _m3_fault
	.align 16
.L136:
	cmpl %eax,4(%ebx)
	ja .L137
	pushl $3298
	call _m3_fault
	.align 16
.L137:
	movl (%ebx),%edx
	cmpl $0,(%edx,%eax,4)
	jne .L134
	movl %ecx,(%edx,%eax,4)
.L130:
	incl %esi
.L126:
	cmpl %esi,-24(%ebp)
	jge .L127
	movl -16(%ebp),%edi
	movl %edi,MM_M3ID+268
	leal -40(%ebp),%esp
	movl %ebx,MM_M3ID+376
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 M3ID__ExpandHashTable,.Lfe12-M3ID__ExpandHashTable
	.align 16
	.type	 _INITM_M3ID,@function
_INITM_M3ID:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl $0,MM_M3ID+256
	movl $0,MM_M3ID+264
	movl $0,MM_M3ID+376
	movl MM_M3ID+752,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,MM_M3ID+256
	leal -12(%ebp),%esi
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $2000,-4(%ebp)
	pushl %esi
	movl MM_M3ID+760,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_M3ID+264
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $2048,-4(%ebp)
	pushl %esi
	movl MM_M3ID+768,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	leal -20(%ebp),%esp
	movl %eax,MM_M3ID+376
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 _INITM_M3ID,.Lfe13-_INITM_M3ID
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3ID
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_M3ID
.data
	.align 4
	.type	 MM_M3ID,@object
	.size	 MM_M3ID,1292
MM_M3ID:
	.long MM_M3ID+1064
	.long MM_M3ID+44
	.long MM_M3ID+744
	.zero	8
	.long MM_M3ID+892
	.zero	4
	.long MM_M3ID+1052
	.long MM_M3ID+1052
	.zero	4
	.long _INITM_M3ID
	.zero	8
	.long 1415035316
.byte 18
.byte 132
.byte 108
.byte 75
.byte 166
.byte 61
.byte 59
.byte 31
	.zero	8
	.long 8188
	.long 1
	.zero	20
	.long MM_M3ID+1268
	.zero	36
	.long MM_M3ID+1274
	.long MM_M3ID+148
	.zero	8
	.long 2085932517
.byte 114
.byte 255
.byte 58
.byte 115
.byte 151
.byte 50
.byte 110
.byte 15
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 12
	.zero	4
	.long MM_M3ID+1223
	.long MM_M3ID+1230
	.long MM_M3ID+1236
	.zero	28
	.long MM_M3ID+1252
	.long MM_M3ID+272
	.zero	8
	.long 1
	.zero	4
	.long 2047
	.zero	8
	.long 1903920718
.byte 5
.byte 39
.byte 50
.byte 126
.byte 75
.byte 161
.byte 73
.byte 15
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_M3ID+1212
	.zero	4
	.long MM_M3ID+1217
	.zero	32
	.long MM_M3ID+584
	.zero	216
	.long -861351064
.byte 229
.byte 42
.byte 237
.byte 223
.byte 141
.byte 249
.byte 69
.byte 19
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_M3ID+1200
	.zero	4
	.long MM_M3ID+1205
	.zero	44
	.long M3ID__ExpandChars
	.long M3ID__ExpandIDs
	.long M3ID__ExpandHashTable
	.long M3ID__Add
	.long M3ID__FromStr
	.long M3ID__ToText
	.long M3ID__GetClass
	.long M3ID__Hash
	.long M3ID__Put
	.long M3ID__AdvanceMarks
	.long M3ID__SetMark
	.long M3ID__IsLT
	.long MM_M3ID+752
	.long -861351064
	.long MM_M3ID+760
	.long 1415035316
	.long MM_M3ID+768
	.long 2085932517
	.zero	4
	.long 1903920718
	.ascii	"_INITM_M3ID"
	.zero	1
	.ascii	"ExpandHashTable"
	.zero	1
	.ascii	"ExpandIDs"
	.zero	1
	.ascii	"ExpandChars"
	.zero	1
	.ascii	"IsLT"
	.zero	1
	.ascii	"SetMark"
	.zero	1
	.ascii	"AdvanceMarks"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"GetClass"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"ToText"
	.zero	1
	.ascii	"FromStr"
	.zero	1
	.ascii	"Add"
	.zero	4
	.long _INITM_M3ID
	.long MM_M3ID+776
	.zero	4
	.long M3ID__ExpandHashTable
	.long MM_M3ID+788
	.zero	4
	.long M3ID__ExpandIDs
	.long MM_M3ID+804
	.zero	4
	.long M3ID__ExpandChars
	.long MM_M3ID+814
	.zero	4
	.long M3ID__IsLT
	.long MM_M3ID+826
	.long MI_M3ID+76
	.long M3ID__SetMark
	.long MM_M3ID+831
	.long MI_M3ID+72
	.long M3ID__AdvanceMarks
	.long MM_M3ID+839
	.long MI_M3ID+68
	.long M3ID__Hash
	.long MM_M3ID+852
	.long MI_M3ID+60
	.long M3ID__GetClass
	.long MM_M3ID+857
	.long MI_M3ID+56
	.long M3ID__Put
	.long MM_M3ID+866
	.long MI_M3ID+64
	.long M3ID__ToText
	.long MM_M3ID+870
	.long MI_M3ID+52
	.long M3ID__FromStr
	.long MM_M3ID+877
	.long MI_M3ID+48
	.long M3ID__Add
	.long MM_M3ID+885
	.long MI_M3ID+44
	.zero	4
.byte 43
.byte 8
.byte 1
.byte 4
.byte 42
.byte 108
.byte 4
.byte 43
.byte 52
.byte 1
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3ID.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 0
.byte 65
.byte 255
.byte 24
.byte 1
.byte 14
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 254
.byte 126
.byte 24
.byte 1
.byte 5
.byte 14
.byte 4
.byte 0
.byte 0
.byte 24
.byte 1
.byte 41
.byte 4
.byte 0
.byte 0
.byte 5
.byte 11
.byte 1
.byte 15
.byte 3
.byte 20
.byte 254
.byte 137
.byte 179
.byte 23
.byte 7
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
	.ascii	"M3ID.DescBuffer"
	.zero	1
.byte 1
.byte 16
.byte 27
.byte 252
.byte 31
.byte 0
	.ascii	"M3ID.CharBuffer"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
