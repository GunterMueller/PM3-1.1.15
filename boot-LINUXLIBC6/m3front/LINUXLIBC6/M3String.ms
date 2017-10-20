	.file	"M3String.mc"
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
	.type	 M3String__Add,@function
M3String__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,MM_M3String+272
	jne .L2
	movl MM_M3String+368,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_M3String+272
	addl $4,%esp
.L2:
	movl MM_M3String+272,%eax
	testl %eax,%eax
	jne .L3
	pushl $788
	call _m3_fault
	.align 16
.L3:
	movl $0,(%eax)
	movl MM_M3String+272,%eax
	testl %eax,%eax
	jne .L4
	pushl $804
	call _m3_fault
	.align 16
.L4:
	movl %eax,%edx
	movl $0,4(%edx)
	movl %ebx,8(%edx)
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edx
	movl MM_M3String+272,%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L6
	pushl $836
	call _m3_fault
	.align 16
.L6:
	movl %edx,12(%eax)
	movl $-1,20(%eax)
	testl %ebx,%ebx
	jne .L8
	pushl $868
	call _m3_fault
	.align 16
.L8:
	movl %ebx,%edx
	movl 12(%eax),%eax
	testl %eax,%eax
	jge .L10
	pushl $865
	call _m3_fault
	.align 16
.L10:
	movl %eax,-4(%ebp)
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L11
	pushl $865
	call _m3_fault
	.align 16
.L11:
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	call M3String__Intern
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3String__Add,.Lfe1-M3String__Add
	.align 16
	.type	 M3String__FromStr,@function
M3String__FromStr:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	xorl %ebx,%ebx
	cmpl $0,MM_M3String+272
	jne .L13
	movl MM_M3String+368,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_M3String+272
	addl $4,%esp
.L13:
	movl MM_M3String+272,%eax
	testl %eax,%eax
	jne .L14
	pushl $980
	call _m3_fault
	.align 16
.L14:
	movl %ebx,(%eax)
	movl MM_M3String+272,%eax
	testl %eax,%eax
	jne .L15
	pushl $996
	call _m3_fault
	.align 16
.L15:
	movl %ebx,4(%eax)
	movl %ebx,8(%eax)
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl 4(%ebx),%ecx
	cmpl %ecx,%edx
	jle .L18
	movl %ecx,%edx
.L18:
	movl %edx,12(%eax)
	movl $-1,20(%eax)
	movl 12(%eax),%eax
	testl %eax,%eax
	jge .L21
	pushl $1057
	call _m3_fault
	.align 16
.L21:
	movl %eax,-4(%ebp)
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L22
	pushl $1057
	call _m3_fault
	.align 16
.L22:
	movl (%ebx),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	call M3String__Intern
	movl %eax,%ebx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3String__FromStr,.Lfe2-M3String__FromStr
	.align 16
	.type	 M3String__Concat,@function
M3String__Concat:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	je .L24
	cmpl $0,12(%ebx)
	jne .L26
.L24:
	movl %esi,%eax
	jmp .L38
	.align 16
.L26:
	testl %esi,%esi
	je .L27
	cmpl $0,12(%esi)
	jne .L29
.L27:
	movl %ebx,%eax
	jmp .L38
	.align 16
.L29:
	cmpl $0,MM_M3String+272
	jne .L30
	movl MM_M3String+368,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_M3String+272
	addl $4,%esp
.L30:
	movl MM_M3String+272,%eax
	testl %eax,%eax
	jne .L31
	pushl $1220
	call _m3_fault
	.align 16
.L31:
	movl %ebx,(%eax)
	movl MM_M3String+272,%eax
	testl %eax,%eax
	jne .L32
	pushl $1236
	call _m3_fault
	.align 16
.L32:
	movl %eax,%edx
	leal -4(%ebp),%ecx
	movl %esi,4(%edx)
	movl $0,8(%edx)
	movl 12(%esi),%eax
	addl 12(%ebx),%eax
	movl %eax,12(%edx)
	movl $-1,20(%edx)
	movl %ecx,-12(%ebp)
	movl $4,-8(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	call M3String__Intern
	movl %eax,%edx
.L38:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3String__Concat,.Lfe3-M3String__Concat
	.align 16
	.type	 M3String__ToText,@function
M3String__ToText:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L41
	movl %ebx,%eax
	jmp .L48
	.align 16
.L41:
	movl 8(%ebx),%edi
	testl %edi,%edi
	jne .L42
	movl 12(%ebx),%eax
	testl %eax,%eax
	jge .L44
	pushl $1425
	call _m3_fault
	.align 16
.L44:
	pushl %eax
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L45
	pushl $1444
	call _m3_fault
	.align 16
.L45:
	pushl %edi
	pushl %esi
	pushl %ebx
	call M3String__Flatten
	addl $12,%esp
	movl %esi,8(%ebx)
.L42:
	testl %ebx,%ebx
	jne .L47
	pushl $1492
	call _m3_fault
	.align 16
.L47:
	movl 8(%ebx),%eax
.L48:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3String__ToText,.Lfe4-M3String__ToText
	.align 16
	.type	 M3String__Put,@function
M3String__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	testl %esi,%esi
	je .L49
	cmpl $0,8(%esi)
	je .L61
	xorl %ebx,%ebx
	movl 12(%esi),%edx
	decl %edx
	movl %edx,-4(%ebp)
	jmp .L55
	.align 16
.L56:
	testl %esi,%esi
	jne .L57
	pushl $1620
	call _m3_fault
	.align 16
.L57:
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L58
	pushl $1620
	call _m3_fault
	.align 16
.L58:
	cmpl %ebx,4(%eax)
	ja .L59
	pushl $1618
	call _m3_fault
	.align 16
.L59:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %edi
	call M3String__EmitChar
	incl %ebx
	addl $8,%esp
.L55:
	cmpl %ebx,-4(%ebp)
	jge .L56
	jmp .L49
	.align 16
.L61:
	movl (%esi),%eax
	pushl %eax
	pushl %edi
	call M3String__Put
	addl $8,%esp
	movl 4(%esi),%eax
	pushl %eax
	pushl %edi
	call M3String__Put
.L49:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3String__Put,.Lfe5-M3String__Put
	.align 16
	.type	 M3String__Init_chars,@function
M3String__Init_chars:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	je .L63
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L69
	pushl %eax
	pushl %esi
	movl MI_CG+276,%eax
	call *%eax
	jmp .L63
	.align 16
.L69:
	movl (%ebx),%eax
	pushl %eax
	pushl %esi
	call M3String__Init_chars
	addl $8,%esp
	movl (%ebx),%edx
	testl %edx,%edx
	jne .L72
	pushl $1860
	call _m3_fault
	.align 16
.L72:
	movl 4(%ebx),%eax
	pushl %eax
	movl 12(%edx),%eax
	imull MI_Target+600,%eax
	addl %esi,%eax
	pushl %eax
	call M3String__Init_chars
.L63:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 M3String__Init_chars,.Lfe6-M3String__Init_chars
	.align 16
	.type	 M3String__Length,@function
M3String__Length:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L76
	movl 12(%eax),%eax
.L76:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3String__Length,.Lfe7-M3String__Length
	.align 16
	.type	 M3String__GetUID,@function
M3String__GetUID:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L78
	pushl $2084
	call _m3_fault
	.align 16
.L78:
	movl 20(%eax),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3String__GetUID,.Lfe8-M3String__GetUID
	.align 16
	.type	 M3String__SetUID,@function
M3String__SetUID:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %eax,%eax
	jne .L80
	pushl $2164
	call _m3_fault
	.align 16
.L80:
	movl %edx,20(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M3String__SetUID,.Lfe9-M3String__SetUID
	.align 16
	.type	 M3String__Hash,@function
M3String__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L83
	movl $953,%eax
	jmp .L84
	.align 16
.L83:
	movl 16(%eax),%eax
.L84:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 M3String__Hash,.Lfe10-M3String__Hash
	.align 16
	.type	 M3String__Intern,@function
M3String__Intern:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl MM_M3String+272,%edx
	testl %edx,%edx
	jne .L86
	pushl $2436
	call _m3_fault
	.align 16
.L86:
	movl %ebx,16(%edx)
	movl 8(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call M3String__InternHash
	movl %eax,%edi
	movl %edi,%esi
	andl MM_M3String+264,%esi
	movl MM_M3String+268,%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L87
	pushl $2484
	call _m3_fault
	.align 16
.L87:
	cmpl %esi,4(%eax)
	ja .L88
	pushl $2482
	call _m3_fault
	.align 16
.L88:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	jmp .L89
	.align 16
.L90:
	cmpl %edi,16(%ebx)
	jne .L92
	movl 8(%ebp),%eax
	pushl %eax
	movl MM_M3String+272,%eax
	pushl %eax
	pushl %ebx
	call M3String__Equal
	addl $12,%esp
	testl %eax,%eax
	jne .L106
.L92:
	testl %ebx,%ebx
	jne .L93
	pushl $2532
	call _m3_fault
	.align 16
.L93:
	movl 24(%ebx),%ebx
.L89:
	testl %ebx,%ebx
	jne .L90
	movl MM_M3String+272,%ebx
	testl %ebx,%ebx
	jne .L95
	pushl $2612
	call _m3_fault
	.align 16
.L95:
	movl %edi,16(%ebx)
	movl MM_M3String+268,%ecx
	testl %ecx,%ecx
	jne .L97
	pushl $2628
	call _m3_fault
	.align 16
.L97:
	movl %ecx,%edx
	cmpl %esi,4(%edx)
	ja .L98
	pushl $2626
	call _m3_fault
	.align 16
.L98:
	movl (%edx),%eax
	movl (%eax,%esi,4),%eax
	movl %eax,24(%ebx)
	cmpl %esi,4(%edx)
	ja .L100
	pushl $2642
	call _m3_fault
	.align 16
.L100:
	movl (%ecx),%eax
	movl %ebx,(%eax,%esi,4)
	movl $0,MM_M3String+272
	cmpl $0,(%ebx)
	jne .L102
	cmpl $0,8(%ebx)
	jne .L102
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	addl $4,%esp
	movl %eax,8(%ebx)
.L102:
	movl MM_M3String+276,%edx
	incl %edx
	movl %edx,MM_M3String+276
	movl MM_M3String+268,%eax
	testl %eax,%eax
	jne .L105
	pushl $2772
	call _m3_fault
	.align 16
.L105:
	movl 4(%eax),%eax
	addl %eax,%eax
	cmpl %edx,%eax
	jge .L106
	call M3String__ExpandHashTable
.L106:
	movl %ebx,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M3String__Intern,.Lfe11-M3String__Intern
	.align 16
	.type	 M3String__ExpandHashTable,@function
M3String__ExpandHashTable:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MM_M3String+268,%eax
	testl %eax,%eax
	jne .L109
	pushl $2868
	call _m3_fault
	.align 16
.L109:
	movl 4(%eax),%eax
	movl %eax,-24(%ebp)
	movl %eax,%ebx
	addl %eax,%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %eax
	movl MM_M3String+376,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_M3String+264,%edi
	movl %edi,%eax
	addl %edi,%eax
	incl %eax
	movl %eax,-16(%ebp)
	movl %esi,%edx
	decl %ebx
	addl $8,%esp
	jmp .L110
	.align 16
.L111:
	testl %ecx,%ecx
	jne .L112
	pushl $2980
	call _m3_fault
	.align 16
.L112:
	cmpl %edx,4(%ecx)
	ja .L113
	pushl $2978
	call _m3_fault
	.align 16
.L113:
	movl (%ecx),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L110:
	cmpl %ebx,%edx
	jle .L111
	xorl %ebx,%ebx
	movl -24(%ebp),%edi
	decl %edi
	movl %edi,-20(%ebp)
	jmp .L115
	.align 16
.L116:
	movl MM_M3String+268,%eax
	testl %eax,%eax
	jne .L117
	pushl $3028
	call _m3_fault
	.align 16
.L117:
	cmpl %ebx,4(%eax)
	ja .L118
	pushl $3026
	call _m3_fault
	.align 16
.L118:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	jmp .L119
	.align 16
.L120:
	movl 24(%esi),%edi
	movl %edi,-24(%ebp)
	movl -16(%ebp),%edx
	andl 16(%esi),%edx
	testl %ecx,%ecx
	jne .L124
	pushl $3092
	call _m3_fault
	.align 16
.L124:
	cmpl %edx,4(%ecx)
	ja .L125
	pushl $3090
	call _m3_fault
	.align 16
.L125:
	movl (%ecx),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,24(%esi)
	cmpl %edx,4(%ecx)
	ja .L127
	pushl $3106
	call _m3_fault
	.align 16
.L127:
	movl (%ecx),%eax
	movl %esi,(%eax,%edx,4)
	movl -24(%ebp),%esi
.L119:
	testl %esi,%esi
	jne .L120
	incl %ebx
.L115:
	cmpl %ebx,-20(%ebp)
	jge .L116
	movl -16(%ebp),%edi
	movl %edi,MM_M3String+264
	leal -36(%ebp),%esp
	movl %ecx,MM_M3String+268
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 M3String__ExpandHashTable,.Lfe12-M3String__ExpandHashTable
	.align 16
	.type	 M3String__InternHash,@function
M3String__InternHash:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	testl %ebx,%ebx
	jne .L131
	movl %ebx,%eax
	jmp .L154
	.align 16
.L131:
	testl %ecx,%ecx
	jne .L132
	movl 16(%ebx),%eax
	testl %eax,%eax
	jne .L154
.L132:
	testl %ebx,%ebx
	jne .L135
	pushl $3332
	call _m3_fault
	.align 16
.L135:
	cmpl $0,8(%ebx)
	je .L145
	xorl %edx,%edx
	movl 12(%ebx),%esi
	decl %esi
	jmp .L138
	.align 16
.L139:
	testl %ebx,%ebx
	jne .L140
	pushl $3364
	call _m3_fault
	.align 16
.L140:
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L141
	pushl $3364
	call _m3_fault
	.align 16
.L141:
	cmpl %edx,4(%eax)
	ja .L142
	pushl $3362
	call _m3_fault
	.align 16
.L142:
	movl (%eax),%eax
	movb (%edx,%eax),%al
	andl $255,%eax
	leal (%eax,%ecx,2),%ecx
	incl %edx
.L138:
	cmpl %esi,%edx
	jle .L139
	jmp .L144
	.align 16
.L145:
	movl (%ebx),%edx
	testl %edx,%edx
	je .L149
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ecx
	pushl %edx
	call M3String__InternHash
	movl %eax,%ecx
	addl $12,%esp
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ecx
	movl 4(%ebx),%eax
	pushl %eax
	call M3String__InternHash
	movl %eax,%ecx
	jmp .L144
	.align 16
.L149:
	movl 12(%ebx),%ebx
	decl %ebx
	jmp .L150
	.align 16
.L151:
	movl 16(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L152
	pushl $3490
	call _m3_fault
	.align 16
.L152:
	movl (%eax),%eax
	movb (%edx,%eax),%al
	andl $255,%eax
	leal (%eax,%ecx,2),%ecx
	incl %edx
.L150:
	cmpl %ebx,%edx
	jle .L151
.L144:
	movl %ecx,%eax
.L154:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 M3String__InternHash,.Lfe13-M3String__InternHash
	.align 16
	.type	 M3String__Equal,@function
M3String__Equal:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	cmpl $0,8(%ebp)
	jne .L156
	pushl $3636
	call _m3_fault
	.align 16
.L156:
	testl %edi,%edi
	jne .L157
	pushl $3636
	call _m3_fault
	.align 16
.L157:
	movl 8(%ebp),%edx
	movl 12(%edx),%eax
	cmpl %eax,12(%edi)
	jne .L165
	xorl %ebx,%ebx
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L160
	.align 16
.L161:
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call M3String__GetCh
	movl %eax,%esi
	pushl %ebx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edi
	call M3String__GetCh
	addl $24,%esp
	cmpl %eax,%esi
	je .L162
.L165:
	xorl %eax,%eax
	jmp .L164
	.align 16
.L162:
	incl %ebx
.L160:
	cmpl %ebx,-4(%ebp)
	jge .L161
	movl $1,%eax
.L164:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 M3String__Equal,.Lfe14-M3String__Equal
	.align 16
	.type	 M3String__GetCh,@function
M3String__GetCh:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%ecx
	jmp .L167
	.align 16
.L168:
	movl 12(%edx),%ebx
	cmpl %ecx,%ebx
	jle .L174
	movl %edx,%eax
	jmp .L167
	.align 16
.L174:
	movl 4(%eax),%eax
	subl %ebx,%ecx
.L167:
	testl %eax,%eax
	jne .L176
	pushl $3812
	call _m3_fault
	.align 16
.L176:
	movl (%eax),%edx
	testl %edx,%edx
	jne .L168
	movl 8(%eax),%eax
	testl %eax,%eax
	je .L179
	cmpl %ecx,4(%eax)
	ja .L183
	pushl $3954
	call _m3_fault
	.align 16
.L179:
	movl 12(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L183
	pushl $3970
	call _m3_fault
	.align 16
.L183:
	movl (%eax),%eax
	movb (%ecx,%eax),%al
	andl $255,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 M3String__GetCh,.Lfe15-M3String__GetCh
	.align 16
	.type	 M3String__Flatten,@function
M3String__Flatten:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%edi
	testl %ebx,%ebx
	je .L185
	cmpl $0,8(%ebx)
	je .L200
	testl %edi,%edi
	jge .L190
	pushl $4113
	call _m3_fault
	.align 16
.L190:
	movl 12(%ebx),%esi
	testl %esi,%esi
	jge .L192
	pushl $4113
	call _m3_fault
	.align 16
.L192:
	movl %esi,-4(%ebp)
	movl 12(%ebp),%edx
	leal (%esi,%edi),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L193
	pushl $4113
	call _m3_fault
	.align 16
.L193:
	addl (%edx),%edi
	movl %edi,-8(%ebp)
	movl 8(%ebx),%ecx
	movl %ecx,-20(%ebp)
	testl %ecx,%ecx
	jne .L195
	pushl $4116
	call _m3_fault
	.align 16
.L195:
	movl -20(%ebp),%eax
	movl 12(%ebx),%edx
	testl %edx,%edx
	jge .L197
	pushl $4113
	call _m3_fault
	.align 16
.L197:
	movl %edx,-12(%ebp)
	movl %edx,%ecx
	subl 4(%eax),%ecx
	movl %ecx,%eax
	testl %eax,%eax
	jle .L198
	pushl $4113
	call _m3_fault
	.align 16
.L198:
	movl -20(%ebp),%ecx
	movl (%ecx),%eax
	movl %eax,-16(%ebp)
	cmpl %esi,%edx
	je .L199
	pushl $4115
	call _m3_fault
	.align 16
.L199:
	pushl %edx
	pushl %eax
	pushl %edi
	call memmove
	jmp .L185
	.align 16
.L201:
	movl (%ebx),%eax
	pushl %eax
	call M3String__Length
	addl $4,%esp
	addl %edi,%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	call M3String__Flatten
	addl $12,%esp
	movl (%ebx),%ebx
.L200:
	testl %ebx,%ebx
	je .L207
	cmpl $0,8(%ebx)
	je .L201
.L207:
	pushl %edi
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call M3String__Flatten
.L185:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 M3String__Flatten,.Lfe16-M3String__Flatten
	.align 16
	.type	 M3String__EmitChar,@function
M3String__EmitChar:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb 12(%ebp),%dl
.L209:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	movb %dl,%al
	cmpl $31,%eax
	jle .L210
	cmpl $34,%eax
	je .L210
	cmpl $39,%eax
	je .L210
	cmpl $126,%eax
	jg .L210
	cmpl $92,%eax
	jne .L211
.L210:
	movl %edx,%esi
	andl $255,%esi
	movl %esi,%ebx
	pushl $92
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3Buf+48,%eax
	andl $255,%ebx
	call *%eax
	movl %ebx,%eax
	sarl $6,%eax
	addl $8,%esp
	cmpl $9,%eax
	jbe .L212
	pushl $4369
	call _m3_fault
	.align 16
.L212:
	movl $MM_M3String+252,%edi
	movb (%edi,%eax),%al
	andl $255,%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3Buf+48,%eax
	call *%eax
	movl %esi,%ebx
	andl $63,%ebx
	movl %ebx,%eax
	sarl $3,%eax
	addl $8,%esp
	cmpl $9,%eax
	jbe .L213
	pushl $4385
	call _m3_fault
	.align 16
.L213:
	movb (%edi,%eax),%al
	andl $255,%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3Buf+48,%eax
	call *%eax
	movl %esi,%eax
	andl $7,%eax
	addl $8,%esp
	cmpl $9,%eax
	jbe .L214
	pushl $4401
	call _m3_fault
	.align 16
.L214:
	movb (%edi,%eax),%al
	andl $255,%eax
.L211:
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3Buf+48,%eax
	call *%eax
.L216:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 M3String__EmitChar,.Lfe17-M3String__EmitChar
	.align 16
	.type	 M3String__Initialize,@function
M3String__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_M3String+268,%eax
	testl %eax,%eax
	jne .L218
	pushl $4564
	call _m3_fault
	.align 16
.L218:
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L219
	.align 16
.L220:
	movl MM_M3String+268,%eax
	testl %eax,%eax
	jne .L221
	pushl $4564
	call _m3_fault
	.align 16
.L221:
	cmpl %edx,4(%eax)
	ja .L222
	pushl $4562
	call _m3_fault
	.align 16
.L222:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L219:
	cmpl %ecx,%edx
	jle .L220
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 M3String__Initialize,.Lfe18-M3String__Initialize
	.align 16
	.type	 M3String__Reset,@function
M3String__Reset:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl MM_M3String+268,%edx
	testl %edx,%edx
	jne .L225
	pushl $4660
	call _m3_fault
	.align 16
.L225:
	movl %eax,%ecx
	movl 4(%edx),%edx
	decl %edx
	jmp .L226
	.align 16
.L227:
	movl MM_M3String+268,%eax
	testl %eax,%eax
	jne .L228
	pushl $4676
	call _m3_fault
	.align 16
.L228:
	cmpl %ecx,4(%eax)
	ja .L229
	pushl $4674
	call _m3_fault
	.align 16
.L229:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%eax
	jmp .L230
	.align 16
.L231:
	movl $-1,20(%eax)
	movl 24(%eax),%eax
.L230:
	testl %eax,%eax
	jne .L231
	incl %ecx
.L226:
	cmpl %edx,%ecx
	jle .L227
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 M3String__Reset,.Lfe19-M3String__Reset
	.align 16
	.type	 _INITM_M3String,@function
_INITM_M3String:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl $0,MM_M3String+268
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $512,-4(%ebp)
	pushl %eax
	movl MM_M3String+376,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_M3String+268
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 _INITM_M3String,.Lfe20-_INITM_M3String
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3String
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe21:
	.size	 _m3_fault,.Lfe21-_m3_fault
.globl MM_M3String
.data
	.align 4
	.type	 MM_M3String,@object
	.size	 MM_M3String,1048
MM_M3String:
	.long MM_M3String+798
	.long MM_M3String+44
	.long MM_M3String+368
	.long MM_M3String+356
	.zero	4
	.long MM_M3String+548
	.zero	4
	.long MM_M3String+792
	.long MM_M3String+792
	.zero	4
	.long _INITM_M3String
	.zero	8
	.long 1302764220
.byte 239
.byte 237
.byte 223
.byte 87
.byte 83
.byte 119
.byte 121
.byte 26
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_M3String+1008
	.long MM_M3String+1013
	.long MM_M3String+1018
	.zero	28
	.long MM_M3String+1026
	.long MM_M3String+148
	.zero	8
	.long -317233507
.byte 51
.byte 150
.byte 39
.byte 234
.byte 174
.byte 240
.byte 48
.byte 7
	.long 1
	.zero	4
	.long 28
	.long 4
	.zero	20
	.long MM_M3String+942
	.long MM_M3String+950
	.long MM_M3String+957
	.zero	24
	.long MM_M3String+975
	.long MM_M3String+997
	.zero	4
.byte 48
.byte 49
.byte 50
.byte 51
.byte 52
.byte 53
.byte 54
.byte 55
.byte 56
.byte 57
	.zero	2
	.long 511
	.zero	12
	.long M3String__Intern
	.long M3String__ExpandHashTable
	.long M3String__InternHash
	.long M3String__Equal
	.long M3String__GetCh
	.long M3String__Flatten
	.long M3String__EmitChar
	.long M3String__Add
	.long M3String__FromStr
	.long M3String__Concat
	.long M3String__ToText
	.long M3String__Put
	.long M3String__Init_chars
	.long M3String__Length
	.long M3String__GetUID
	.long M3String__SetUID
	.long M3String__Hash
	.long M3String__Initialize
	.long M3String__Reset
	.long -2125489335
	.long -317233507
	.zero	4
	.long MM_M3String+376
	.long -2125489335
	.zero	4
	.long 1302764220
	.ascii	"_INITM_M3String"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"EmitChar"
	.zero	1
	.ascii	"Flatten"
	.zero	1
	.ascii	"GetCh"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"InternHash"
	.zero	1
	.ascii	"ExpandHashTable"
	.zero	1
	.ascii	"Intern"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"SetUID"
	.zero	1
	.ascii	"GetUID"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"Init_chars"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"ToText"
	.zero	1
	.ascii	"Concat"
	.zero	1
	.ascii	"FromStr"
	.zero	1
	.ascii	"Add"
	.zero	2
	.long _INITM_M3String
	.long MM_M3String+384
	.zero	4
	.long M3String__Reset
	.long MM_M3String+400
	.long MI_M3String+88
	.long M3String__Initialize
	.long MM_M3String+406
	.long MI_M3String+84
	.long M3String__EmitChar
	.long MM_M3String+417
	.zero	4
	.long M3String__Flatten
	.long MM_M3String+426
	.zero	4
	.long M3String__GetCh
	.long MM_M3String+434
	.zero	4
	.long M3String__Equal
	.long MM_M3String+440
	.zero	4
	.long M3String__InternHash
	.long MM_M3String+446
	.zero	4
	.long M3String__ExpandHashTable
	.long MM_M3String+457
	.zero	4
	.long M3String__Intern
	.long MM_M3String+473
	.zero	4
	.long M3String__Hash
	.long MM_M3String+480
	.long MI_M3String+80
	.long M3String__SetUID
	.long MM_M3String+485
	.long MI_M3String+76
	.long M3String__GetUID
	.long MM_M3String+492
	.long MI_M3String+72
	.long M3String__Length
	.long MM_M3String+499
	.long MI_M3String+68
	.long M3String__Init_chars
	.long MM_M3String+506
	.long MI_M3String+64
	.long M3String__Put
	.long MM_M3String+517
	.long MI_M3String+60
	.long M3String__ToText
	.long MM_M3String+521
	.long MI_M3String+56
	.long M3String__Concat
	.long MM_M3String+528
	.long MI_M3String+52
	.long M3String__FromStr
	.long MM_M3String+535
	.long MI_M3String+48
	.long M3String__Add
	.long MM_M3String+543
	.long MI_M3String+44
	.zero	4
.byte 43
.byte 12
.byte 1
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/M3String.m3"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 14
.byte 14
.byte 14
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 42
.byte 12
.byte 4
.byte 0
.byte 8
.byte 15
.byte 7
.byte 16
.byte 73
.byte 155
.byte 79
.byte 129
.byte 23
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 7
.byte 26
.byte 26
.byte 23
	.ascii	"M3String_^%#%^__0001M"
	.zero	1
	.ascii	"M3String.T"
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
.byte 73
.byte 155
.byte 79
.byte 129
	.ascii	"M3String.HashTable"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
