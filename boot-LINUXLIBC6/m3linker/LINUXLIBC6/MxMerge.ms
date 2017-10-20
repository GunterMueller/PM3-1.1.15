	.file	"MxMerge.mc"
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
	.type	 MxMerge__MergeUnit,@function
MxMerge__MergeUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%eax
	movl 16(%ebp),%edx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testl %edi,%edi
	jne .L2
	movl %edi,%eax
	jmp .L29
	.align 16
.L2:
	testl %eax,%eax
	jne .L3
	pushl $560
	call _m3_fault
	.align 16
.L3:
	movl %edi,-20(%ebp)
	movl %eax,-16(%ebp)
	movl %edx,-12(%ebp)
	movb $0,-4(%ebp)
	cmpb $0,8(%edi)
	je .L8
	movl (%eax),%eax
	jmp .L30
	.align 16
.L8:
	movl 4(%eax),%eax
.L30:
	movl %eax,-24(%ebp)
	testl %edi,%edi
	jne .L9
	pushl $756
	call _m3_fault
	.align 16
.L9:
	movl (%edi),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	je .L10
	movl -4(%esi),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxMerge+244
	je .L10
	pushl $757
	call _m3_fault
	.align 16
.L10:
	movl %esi,-28(%ebp)
	testl %esi,%esi
	je .L11
	pushl %esi
	pushl %edi
	leal -20(%ebp),%ebx
	pushl %ebx
	call MxMerge__DuplicateUnit
	movl %eax,%esi
	pushl %esi
	pushl %ebx
	call MxMerge__Flush
	jmp .L29
	.align 16
.L11:
	pushl %edi
	leal -20(%ebp),%ebx
	pushl %ebx
	call MxMerge__CheckUnit
	addl $8,%esp
	cmpb $0,-4(%ebp)
	je .L12
	movl MM_MxMerge+248,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl -28(%ebp),%ecx
	movl %ecx,4(%esi)
	movl %edi,(%esi)
	pushl %esi
	pushl %ebx
	call MxMerge__Flush
	movl %eax,%ebx
	jmp .L29
	.align 16
.L12:
	testl %edi,%edi
	jne .L13
	pushl $948
	call _m3_fault
	.align 16
.L13:
	pushl %edi
	movl (%edi),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	movl MI_MxMap+164,%eax
	call *%eax
	addl $12,%esp
	pushl $1
	pushl $1
	leal 68(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddStamps
	addl $16,%esp
	pushl %esi
	pushl $1
	leal 76(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddStamps
	addl $16,%esp
	pushl $1
	pushl %esi
	leal 52(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddStamps
	addl $16,%esp
	pushl %esi
	pushl %esi
	leal 60(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddStamps
	addl $16,%esp
	movl 112(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddObjects
	addl $8,%esp
	movl 120(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddRevelations
	addl $8,%esp
	leal 92(%edi),%eax
	pushl %eax
	pushl %ebx
	call MxMerge__AddExportedTypes
	movl -16(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L22
	pushl $1140
	call _m3_fault
	.align 16
.L22:
	movl (%edi),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	movl MI_MxMap+168,%eax
	call *%eax
	movl -16(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L24
	pushl $1188
	call _m3_fault
	.align 16
.L24:
	movl (%edi),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L25
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxMerge+260
	je .L25
	pushl $1189
	call _m3_fault
	.align 16
.L25:
	testl %ebx,%ebx
	je .L26
	movl -16(%ebp),%edx
	testl %edx,%edx
	jne .L27
	pushl $1220
	call _m3_fault
	.align 16
.L27:
	testl %edi,%edi
	jne .L28
	pushl $1220
	call _m3_fault
	.align 16
.L28:
	movl (%edi),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	movl MI_MxMap+168,%eax
	call *%eax
	pushl %ebx
	movl MI_MxSet+56,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	leal -20(%ebp),%ebx
	pushl %ebx
	call MxMerge__FilterClients
	pushl %eax
	pushl %ebx
	jmp .L31
	.align 16
.L26:
	pushl %ebx
	leal -20(%ebp),%eax
	pushl %eax
.L31:
	call MxMerge__Flush
	movl %eax,%esi
.L29:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxMerge__MergeUnit,.Lfe1-MxMerge__MergeUnit
	.align 16
	.type	 MxMerge__Flush,@function
MxMerge__Flush:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L33
	movl 12(%eax),%eax
	testl %eax,%eax
	je .L33
	pushl %edx
	pushl %eax
	movl MI_M3Buf+80,%eax
	call *%eax
.L33:
	movl 12(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxMerge__Flush,.Lfe2-MxMerge__Flush
	.align 16
	.type	 MxMerge__CheckUnit,@function
MxMerge__CheckUnit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L35
	pushl $1524
	call _m3_fault
	.align 16
.L35:
	pushl $1
	pushl $1
	leal 68(%ebx),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__CheckStamps
	movl 8(%ebp),%edx
	addl $20,%esp
	cmpb $0,16(%edx)
	je .L37
	cmpl $0,8(%edx)
	je .L34
.L37:
	pushl $0
	pushl $1
	leal 76(%ebx),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call MxMerge__CheckStamps
	movl 8(%ebp),%edx
	addl $20,%esp
	cmpb $0,16(%edx)
	je .L39
	cmpl $0,8(%edx)
	je .L34
.L39:
	pushl $1
	pushl $0
	leal 52(%ebx),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call MxMerge__CheckStamps
	movl 8(%ebp),%edx
	addl $20,%esp
	cmpb $0,16(%edx)
	je .L41
	cmpl $0,8(%edx)
	je .L34
.L41:
	pushl $0
	pushl $0
	leal 60(%ebx),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call MxMerge__CheckStamps
	movl 8(%ebp),%edx
	addl $20,%esp
	cmpb $0,16(%edx)
	je .L43
	cmpl $0,8(%edx)
	je .L34
.L43:
	leal 84(%ebx),%eax
	pushl %eax
	pushl %edx
	call MxMerge__CheckImportedTypes
	movl 8(%ebp),%edx
	addl $8,%esp
	cmpb $0,16(%edx)
	je .L45
	cmpl $0,8(%edx)
	je .L34
.L45:
	movl 116(%ebx),%eax
	pushl %eax
	pushl %edx
	call MxMerge__CheckObjects
	movl 8(%ebp),%edx
	addl $8,%esp
	cmpb $0,16(%edx)
	je .L47
	cmpl $0,8(%edx)
	je .L34
.L47:
	movl 112(%ebx),%eax
	pushl %eax
	pushl %edx
	call MxMerge__CheckObjects
	movl 8(%ebp),%edx
	addl $8,%esp
	cmpb $0,16(%edx)
	je .L49
	cmpl $0,8(%edx)
	je .L34
.L49:
	movl 120(%ebx),%eax
	pushl %eax
	pushl %edx
	call MxMerge__CheckRevelations
.L34:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxMerge__CheckUnit,.Lfe3-MxMerge__CheckUnit
	.align 16
	.type	 MxMerge__DuplicateUnit,@function
MxMerge__DuplicateUnit:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl MM_MxMerge+248,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl $0,4(%ebx)
	movl %esi,(%ebx)
	movl 8(%ebp),%eax
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	addl $4,%esp
	cmpl $0,8(%eax)
	je .L57
	pushl %esi
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxMerge+292
	pushl %edx
	pushl $MM_MxMerge+268
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $24,%esp
	testl %esi,%esi
	jne .L52
	pushl $1940
	call _m3_fault
	.align 16
.L52:
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L53
	pushl $1940
	call _m3_fault
	.align 16
.L53:
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl $MM_MxMerge+308
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $20,%esp
	testl %edi,%edi
	jne .L54
	pushl $1956
	call _m3_fault
	.align 16
.L54:
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L55
	pushl $1956
	call _m3_fault
	.align 16
.L55:
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl $MM_MxMerge+328
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
.L57:
	movl %ebx,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxMerge__DuplicateUnit,.Lfe4-MxMerge__DuplicateUnit
	.align 16
	.type	 MxMerge__CheckStamps,@function
MxMerge__CheckStamps:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%eax
	movl $0,-8(%ebp)
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%esi
	leal -1(%eax),%edi
	jmp .L59
	.align 16
.L60:
	cmpl $0,12(%ebp)
	jne .L61
	pushl $2148
	call _m3_fault
	.align 16
.L61:
	movl 12(%ebp),%ecx
	movl 124(%ecx),%eax
	testl %eax,%eax
	jne .L62
	pushl $2148
	call _m3_fault
	.align 16
.L62:
	cmpl %esi,4(%eax)
	ja .L63
	pushl $2146
	call _m3_fault
	.align 16
.L63:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L64
	pushl $2164
	call _m3_fault
	.align 16
.L64:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 16(%edx),%eax
	pushl %eax
	pushl %edx
	movl MI_MxRep+156,%eax
	call *%eax
	addl $20,%esp
	movl -8(%ebp),%eax
	testl %eax,%eax
	jne .L65
	cmpl $0,-4(%ebp)
	je .L66
.L65:
	movl -4(%ebp),%edx
	testl %edx,%edx
	jne .L67
	testl %eax,%eax
	jne .L68
	pushl $2244
	call _m3_fault
	.align 16
.L68:
	cmpb $0,9(%eax)
	jne .L66
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__MissingStamp
	movl %eax,%edx
	addl $8,%esp
	jmp .L82
	.align 16
.L67:
	cmpl %ebx,%edx
	je .L72
	pushl %ebx
	pushl %edx
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__BadStamps
	movl %eax,%edx
	addl $16,%esp
	jmp .L82
	.align 16
.L72:
	cmpb $0,20(%ebp)
	je .L66
	testl %eax,%eax
	jne .L75
	pushl $2372
	call _m3_fault
	.align 16
.L75:
	cmpb $0,9(%eax)
	jne .L66
	pushl %edx
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__DuplicateStamp
	movl %eax,%edx
	addl $12,%esp
.L82:
	testl %edx,%edx
	jne .L58
.L66:
	cmpb $0,24(%ebp)
	je .L78
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L79
	pushl $2484
	call _m3_fault
	.align 16
.L79:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 20(%edx),%eax
	pushl %eax
	pushl %edx
	movl MI_MxRep+156,%eax
	call *%eax
	addl $20,%esp
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L78
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__DuplicateStampImpl
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L58
.L78:
	incl %esi
.L59:
	cmpl %edi,%esi
	jle .L60
.L58:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxMerge__CheckStamps,.Lfe5-MxMerge__CheckStamps
	.align 16
	.type	 MxMerge__ReCheckStamps,@function
MxMerge__ReCheckStamps:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 8(%ebp),%eax
	movl $0,-24(%ebp)
	movl (%eax),%eax
	testl %eax,%eax
	jne .L84
	pushl $2644
	call _m3_fault
	.align 16
.L84:
	movl (%eax),%eax
	movl %eax,-28(%ebp)
	movl 16(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%esi
	decl %eax
	movl %eax,-32(%ebp)
	jmp .L85
	.align 16
.L86:
	testl %edi,%edi
	jne .L87
	pushl $2692
	call _m3_fault
	.align 16
.L87:
	movl 124(%edi),%eax
	testl %eax,%eax
	jne .L88
	pushl $2692
	call _m3_fault
	.align 16
.L88:
	cmpl %esi,4(%eax)
	ja .L89
	pushl $2690
	call _m3_fault
	.align 16
.L89:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_MxVS+48,%eax
	call *%eax
	addl $8,%esp
	movl -28(%ebp),%ecx
	cmpl %ecx,-16(%ebp)
	jne .L90
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L91
	pushl $2740
	call _m3_fault
	.align 16
.L91:
	leal -20(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 16(%edx),%eax
	pushl %eax
	pushl %edx
	movl MI_MxRep+156,%eax
	call *%eax
	addl $20,%esp
	cmpl $0,-24(%ebp)
	je .L92
	cmpl $0,-20(%ebp)
	jne .L90
.L92:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	testl %eax,%eax
	jne .L94
	pushl $2788
	call _m3_fault
	.align 16
.L94:
	cmpb $0,8(%eax)
	je .L95
	pushl %ebx
	pushl %edx
	call MxMerge__MissingStamp
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L83
	jmp .L90
	.align 16
.L95:
	pushl %edi
	pushl %ebx
	pushl %edx
	call MxMerge__AddVirtualExport
	addl $12,%esp
.L90:
	incl %esi
.L85:
	cmpl %esi,-32(%ebp)
	jge .L86
.L83:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxMerge__ReCheckStamps,.Lfe6-MxMerge__ReCheckStamps
	.align 16
	.type	 MxMerge__AddStamps,@function
MxMerge__AddStamps:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%esi
	leal -1(%eax),%edi
	jmp .L100
	.align 16
.L101:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	testl %eax,%eax
	jne .L102
	pushl $3092
	call _m3_fault
	.align 16
.L102:
	movl 124(%eax),%eax
	testl %eax,%eax
	jne .L103
	pushl $3092
	call _m3_fault
	.align 16
.L103:
	cmpl %esi,4(%eax)
	ja .L104
	pushl $3090
	call _m3_fault
	.align 16
.L104:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	cmpb $0,16(%ebp)
	je .L105
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L106
	pushl $3140
	call _m3_fault
	.align 16
.L106:
	pushl %ebx
	movl 16(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+52,%eax
	call *%eax
	addl $8,%esp
	jmp .L107
	.align 16
.L105:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L108
	pushl $3172
	call _m3_fault
	.align 16
.L108:
	pushl %ebx
	movl 16(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L107
	movl 8(%ebp),%edx
	movl (%edx),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call MxMerge__AddVirtualExport
	addl $12,%esp
.L107:
	cmpb $0,20(%ebp)
	je .L110
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L111
	pushl $3300
	call _m3_fault
	.align 16
.L111:
	pushl %ebx
	movl 20(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+52,%eax
	call *%eax
	addl $8,%esp
.L110:
	incl %esi
.L100:
	cmpl %edi,%esi
	jle .L101
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 MxMerge__AddStamps,.Lfe7-MxMerge__AddStamps
	.align 16
	.type	 MxMerge__AddVirtualExport,@function
MxMerge__AddVirtualExport:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	leal -16(%ebp),%eax
	pushl %ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	pushl %eax
	pushl %esi
	movl MI_MxVS+48,%eax
	call *%eax
	pushl %ebx
	movl -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+152,%eax
	call *%eax
	movl 8(%ebp),%eax
	addl $20,%esp
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L114
	pushl $3476
	call _m3_fault
	.align 16
.L114:
	pushl %esi
	movl 16(%eax),%eax
	pushl %eax
	movl MI_MxVSSet+52,%eax
	call *%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 MxMerge__AddVirtualExport,.Lfe8-MxMerge__AddVirtualExport
	.align 16
	.type	 MxMerge__MissingStamp,@function
MxMerge__MissingStamp:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	subl $16,%esp
	cmpl $0,8(%eax)
	je .L116
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxMerge+348
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $32,%esp
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $MM_MxMerge+396
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxMerge+380
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	movl %eax,%edx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	xorl %eax,%eax
	jmp .L117
	.align 16
.L116:
	movl $1,%eax
.L117:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 MxMerge__MissingStamp,.Lfe9-MxMerge__MissingStamp
	.align 16
	.type	 MxMerge__DuplicateStamp,@function
MxMerge__DuplicateStamp:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%edx
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	cmpl $0,8(%eax)
	je .L119
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxMerge+424
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $32,%esp
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxMerge+460
	pushl %edx
	pushl $MM_MxMerge+380
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl %ebx
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	movl $MM_MxMerge+492,%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	movl 8(%ebp),%eax
	addl $48,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	xorl %eax,%eax
	jmp .L120
	.align 16
.L119:
	movl $1,%eax
.L120:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 MxMerge__DuplicateStamp,.Lfe10-MxMerge__DuplicateStamp
	.align 16
	.type	 MxMerge__DuplicateStampImpl,@function
MxMerge__DuplicateStampImpl:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%edx
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	cmpl $0,8(%eax)
	je .L122
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxMerge+508
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $32,%esp
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxMerge+460
	pushl %edx
	pushl $MM_MxMerge+380
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl %ebx
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	movl $MM_MxMerge+492,%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	movl 8(%ebp),%eax
	addl $48,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	xorl %eax,%eax
	jmp .L123
	.align 16
.L122:
	movl $1,%eax
.L123:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 MxMerge__DuplicateStampImpl,.Lfe11-MxMerge__DuplicateStampImpl
	.align 16
	.type	 MxMerge__BadStamps__PrintUnit.0,@function
MxMerge__BadStamps__PrintUnit.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%eax
	movl -4(%ebp),%ebx
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edi
	movl -20(%ebx),%eax
	addl %edi,%eax
	addl $8,%esp
	cmpl $72,%eax
	jle .L126
	pushl $0
	pushl $0
	pushl $MM_MxMerge+548
	movl MI_Wr+60,%eax
	pushl %eax
	movl -24(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	call MxMerge__Out
	movl $5,-20(%ebx)
	addl $20,%esp
.L126:
	pushl $0
	pushl $0
	pushl $MM_MxMerge+568
	pushl %esi
	movl -24(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	call MxMerge__Out
	movl -20(%ebx),%eax
	addl $2,%eax
	addl %eax,%edi
	leal -16(%ebp),%esp
	movl %edi,-20(%ebx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 MxMerge__BadStamps__PrintUnit.0,.Lfe12-MxMerge__BadStamps__PrintUnit.0
	.align 16
	.type	 MxMerge__BadStamps__CheckUnitStamps.1,@function
MxMerge__BadStamps__CheckUnitStamps.1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%ecx
	movl 16(%ebp),%edi
	movl 12(%ebp),%eax
	movl -4(%ebp),%esi
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	leal -1(%eax),%ebx
	jmp .L128
	.align 16
.L129:
	testl %ecx,%ecx
	jne .L130
	pushl $4516
	call _m3_fault
	.align 16
.L130:
	movl 124(%ecx),%eax
	testl %eax,%eax
	jne .L131
	pushl $4516
	call _m3_fault
	.align 16
.L131:
	cmpl %edx,4(%eax)
	ja .L132
	pushl $4514
	call _m3_fault
	.align 16
.L132:
	movl (%eax),%eax
	cmpl %edi,(%eax,%edx,4)
	jne .L133
	pushl %ecx
	movl %esi,%ecx
	call MxMerge__BadStamps__PrintUnit.0
	movl $1,%eax
	jmp .L135
	.align 16
.L133:
	incl %edx
.L128:
	cmpl %ebx,%edx
	jle .L129
	xorl %eax,%eax
.L135:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 MxMerge__BadStamps__CheckUnitStamps.1,.Lfe13-MxMerge__BadStamps__CheckUnitStamps.1
	.align 16
	.type	 MxMerge__BadStamps,@function
MxMerge__BadStamps:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl %esi,-24(%ebp)
	movl 8(%ebp),%eax
	movl $20,-20(%ebp)
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	xorl %edi,%edi
	cmpl $0,8(%eax)
	jne .L136
	movl $1,%eax
	jmp .L153
	.align 16
.L136:
	leal -16(%ebp),%esi
	movl %esi,-28(%ebp)
	pushl %esi
	movl 20(%ebp),%esi
	pushl %esi
	movl MI_MxVS+48,%eax
	call *%eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %edi
	pushl %edi
	movl %eax,%edx
	pushl %edx
	pushl $MM_MxMerge+584
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $32,%esp
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%edx
	pushl %edi
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl $MM_MxMerge+380
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	leal -8(%ebp),%esi
	movl %esi,-32(%ebp)
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutX
	addl $32,%esp
	movl -28(%ebp),%esi
	pushl %esi
	movl 16(%ebp),%esi
	pushl %esi
	movl MI_MxVS+48,%eax
	call *%eax
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl %edi
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl $MM_MxMerge+624
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $32,%esp
	movl -32(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutX
	pushl %edi
	pushl %edi
	pushl %edi
	pushl $MM_MxMerge+624
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $28,%esp
	testl %ebx,%ebx
	jne .L137
	pushl $4852
	call _m3_fault
	.align 16
.L137:
	cmpb $0,9(%ebx)
	jne .L138
	pushl %ebx
	movl %ebp,%ecx
	call MxMerge__BadStamps__PrintUnit.0
	addl $4,%esp
.L138:
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L139
	pushl $4884
	call _m3_fault
	.align 16
.L139:
	movl -16(%ebp),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L140
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxMerge+260
	je .L140
	pushl $4885
	call _m3_fault
	.align 16
.L140:
	pushl %edx
	movl MI_MxSet+56,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	jmp .L141
	.align 16
.L142:
	movl (%edi),%ebx
	testl %ebx,%ebx
	jne .L144
	pushl $4948
	call _m3_fault
	.align 16
.L144:
	movl 20(%ebp),%esi
	pushl %esi
	leal 68(%ebx),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %ebx
	call MxMerge__BadStamps__CheckUnitStamps.1
	addl $12,%esp
	testl %eax,%eax
	jne .L149
	pushl %esi
	leal 76(%ebx),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %ebx
	call MxMerge__BadStamps__CheckUnitStamps.1
	addl $12,%esp
	testl %eax,%eax
	jne .L149
	pushl %esi
	leal 52(%ebx),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %ebx
	call MxMerge__BadStamps__CheckUnitStamps.1
	addl $12,%esp
	testl %eax,%eax
	jne .L149
	pushl %esi
	leal 60(%ebx),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %ebx
	call MxMerge__BadStamps__CheckUnitStamps.1
	addl $12,%esp
.L149:
	testl %edi,%edi
	jne .L150
	pushl $5028
	call _m3_fault
	.align 16
.L150:
	movl 4(%edi),%edi
.L141:
	testl %edi,%edi
	jne .L142
	cmpl $0,-20(%ebp)
	jle .L152
	pushl %edi
	pushl %edi
	pushl %edi
	movl MI_Wr+60,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
.L152:
	movl %edi,%eax
.L153:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 MxMerge__BadStamps,.Lfe14-MxMerge__BadStamps
	.align 16
	.type	 MxMerge__CheckRevelations,@function
MxMerge__CheckRevelations:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	jmp .L155
	.align 16
.L156:
	cmpb $0,17(%ebx)
	jne .L158
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+164,%eax
	call *%eax
	addl $16,%esp
	movl -8(%ebp),%eax
	testl %eax,%eax
	je .L158
	cmpl $0,-4(%ebp)
	jne .L158
	cmpb $0,9(%eax)
	jne .L158
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__MissingRevelation
	addl $8,%esp
	testl %eax,%eax
	jne .L154
.L158:
	testl %ebx,%ebx
	jne .L166
	pushl $5428
	call _m3_fault
	.align 16
.L166:
	movl 12(%ebx),%ebx
.L155:
	testl %ebx,%ebx
	jne .L156
.L154:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 MxMerge__CheckRevelations,.Lfe15-MxMerge__CheckRevelations
	.align 16
	.type	 MxMerge__ReCheckRevelations,@function
MxMerge__ReCheckRevelations:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-8(%ebp)
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl (%eax),%eax
	testl %eax,%eax
	jne .L168
	pushl $5524
	call _m3_fault
	.align 16
.L168:
	movl (%eax),%eax
	movl %eax,-12(%ebp)
	jmp .L169
	.align 16
.L170:
	movl -12(%ebp),%esi
	cmpl %esi,(%ebx)
	jne .L172
	cmpb $0,17(%ebx)
	jne .L172
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+164,%eax
	call *%eax
	addl $16,%esp
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L174
	cmpb $0,17(%eax)
	jne .L172
.L174:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	testl %eax,%eax
	jne .L177
	pushl $5636
	call _m3_fault
	.align 16
.L177:
	cmpb $0,8(%eax)
	je .L182
	pushl %ebx
	pushl %edx
	call MxMerge__MissingRevelation
	addl $8,%esp
	testl %eax,%eax
	jne .L167
	jmp .L172
	.align 16
.L182:
	movl 16(%ebp),%esi
	pushl %esi
	movl (%ebx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl MI_MxRep+152,%eax
	call *%eax
	movl %eax,-8(%ebp)
	movl MM_MxMerge+640,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $16,%esp
	testl %eax,%eax
	jne .L184
	pushl $5732
	call _m3_fault
	.align 16
.L184:
	movl %eax,%edi
	movl %ebx,%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl -4(%ebp),%ecx
	testl %ecx,%ecx
	jne .L185
	pushl $5748
	call _m3_fault
	.align 16
.L185:
	movl -8(%ebp),%edx
	testl %edx,%edx
	jne .L186
	pushl $5748
	call _m3_fault
	.align 16
.L186:
	movl 120(%edx),%eax
	movl %eax,12(%ecx)
	movl %ecx,120(%edx)
	movb $1,17(%ecx)
.L172:
	testl %ebx,%ebx
	jne .L189
	pushl $5828
	call _m3_fault
	.align 16
.L189:
	movl 12(%ebx),%ebx
.L169:
	testl %ebx,%ebx
	jne .L170
.L167:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 MxMerge__ReCheckRevelations,.Lfe16-MxMerge__ReCheckRevelations
	.align 16
	.type	 MxMerge__MissingRevelation,@function
MxMerge__MissingRevelation:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	cmpl $0,8(%eax)
	jne .L191
	movl $1,%eax
	jmp .L196
	.align 16
.L191:
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxMerge+652
	movl %eax,%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $24,%esp
	testl %ebx,%ebx
	jne .L192
	pushl $5988
	call _m3_fault
	.align 16
.L192:
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutT
	addl $8,%esp
	pushl $0
	pushl $0
	pushl $0
	xorl %eax,%eax
	movb 16(%ebx),%al
	movl MM_MxMerge+160(,%eax,4),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $20,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutT
	addl $8,%esp
	movl (%ebx),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxMerge+212
	pushl %edx
	pushl $MM_MxMerge+696
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	xorl %eax,%eax
.L196:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 MxMerge__MissingRevelation,.Lfe17-MxMerge__MissingRevelation
	.align 16
	.type	 MxMerge__AddRevelations,@function
MxMerge__AddRevelations:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	jmp .L198
	.align 16
.L199:
	cmpb $0,17(%ebx)
	jne .L201
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+164,%eax
	call *%eax
	addl $16,%esp
	cmpl $0,-4(%ebp)
	jne .L201
	movl 8(%ebp),%edx
	movl (%edx),%eax
	pushl %eax
	movl (%ebx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl MI_MxRep+152,%eax
	call *%eax
	movl %eax,-8(%ebp)
	movl MM_MxMerge+640,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $16,%esp
	testl %eax,%eax
	jne .L205
	pushl $6276
	call _m3_fault
	.align 16
.L205:
	movl %eax,%edi
	movl %ebx,%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl -4(%ebp),%ecx
	testl %ecx,%ecx
	jne .L206
	pushl $6292
	call _m3_fault
	.align 16
.L206:
	movl -8(%ebp),%edx
	testl %edx,%edx
	jne .L207
	pushl $6292
	call _m3_fault
	.align 16
.L207:
	movl 120(%edx),%eax
	movl %eax,12(%ecx)
	movl %ecx,120(%edx)
	movb $1,17(%ecx)
.L201:
	testl %ebx,%ebx
	jne .L210
	pushl $6356
	call _m3_fault
	.align 16
.L210:
	movl 12(%ebx),%ebx
.L198:
	testl %ebx,%ebx
	jne .L199
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 MxMerge__AddRevelations,.Lfe18-MxMerge__AddRevelations
	.align 16
	.type	 MxMerge__CheckImportedTypes,@function
MxMerge__CheckImportedTypes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%ebx
	leal -1(%eax),%edi
	jmp .L213
	.align 16
.L214:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	testl %eax,%eax
	jne .L215
	pushl $6516
	call _m3_fault
	.align 16
.L215:
	movl 124(%eax),%eax
	testl %eax,%eax
	jne .L216
	pushl $6516
	call _m3_fault
	.align 16
.L216:
	cmpl %ebx,4(%eax)
	ja .L217
	pushl $6514
	call _m3_fault
	.align 16
.L217:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L218
	pushl $6532
	call _m3_fault
	.align 16
.L218:
	pushl %esi
	movl 24(%eax),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L219
	movl 8(%ebp),%eax
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	cmpl $0,8(%eax)
	je .L212
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxMerge+716
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutT
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $20,%esp
.L219:
	incl %ebx
.L213:
	cmpl %edi,%ebx
	jle .L214
.L212:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 MxMerge__CheckImportedTypes,.Lfe19-MxMerge__CheckImportedTypes
	.align 16
	.type	 MxMerge__AddExportedTypes,@function
MxMerge__AddExportedTypes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 4(%eax),%eax
	addl %edx,%eax
	movl %edx,%ebx
	leal -1(%eax),%edi
	jmp .L223
	.align 16
.L224:
	movl 8(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	jne .L225
	pushl $6756
	call _m3_fault
	.align 16
.L225:
	movl 124(%edx),%eax
	testl %eax,%eax
	jne .L226
	pushl $6756
	call _m3_fault
	.align 16
.L226:
	cmpl %ebx,4(%eax)
	ja .L227
	pushl $6754
	call _m3_fault
	.align 16
.L227:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%ecx
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L228
	pushl $6772
	call _m3_fault
	.align 16
.L228:
	pushl %edx
	pushl %ecx
	movl 24(%eax),%eax
	pushl %eax
	movl MI_MxMap+164,%eax
	call *%eax
	incl %ebx
	addl $12,%esp
.L223:
	cmpl %edi,%ebx
	jle .L224
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 MxMerge__AddExportedTypes,.Lfe20-MxMerge__AddExportedTypes
	.align 16
	.type	 MxMerge__CheckObjects,@function
MxMerge__CheckObjects:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	jmp .L231
	.align 16
.L232:
	cmpb $0,28(%ebx)
	jne .L234
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+160,%eax
	call *%eax
	addl $16,%esp
	movl -8(%ebp),%eax
	testl %eax,%eax
	je .L234
	movl -4(%ebp),%edx
	testl %edx,%edx
	jne .L243
	cmpb $0,9(%eax)
	jne .L234
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__MissingObject
	addl $8,%esp
	jmp .L256
	.align 16
.L243:
	movl 12(%ebx),%eax
	cmpl %eax,12(%edx)
	jne .L244
	movl 16(%ebx),%eax
	cmpl %eax,16(%edx)
	jne .L244
	movl 20(%ebx),%eax
	cmpl %eax,20(%edx)
	jne .L244
	movl 24(%ebx),%eax
	cmpl %eax,24(%edx)
	jne .L244
	testl %ebx,%ebx
	jne .L252
	pushl $7092
	call _m3_fault
	.align 16
.L252:
	movb 29(%edx),%al
	cmpb %al,29(%ebx)
	je .L234
.L244:
	pushl %ebx
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__BadObject
	addl $16,%esp
.L256:
	testl %eax,%eax
	jne .L230
.L234:
	testl %ebx,%ebx
	jne .L255
	pushl $7220
	call _m3_fault
	.align 16
.L255:
	movl (%ebx),%ebx
.L231:
	testl %ebx,%ebx
	jne .L232
.L230:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 MxMerge__CheckObjects,.Lfe21-MxMerge__CheckObjects
	.align 16
	.type	 MxMerge__ReCheckObjects,@function
MxMerge__ReCheckObjects:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-8(%ebp)
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl (%eax),%eax
	testl %eax,%eax
	jne .L258
	pushl $7300
	call _m3_fault
	.align 16
.L258:
	movl (%eax),%eax
	movl %eax,-12(%ebp)
	jmp .L259
	.align 16
.L260:
	movl -12(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	jne .L262
	cmpb $0,28(%ebx)
	jne .L262
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+160,%eax
	call *%eax
	addl $16,%esp
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L264
	cmpb $0,28(%eax)
	jne .L262
.L264:
	movl -8(%ebp),%eax
	testl %eax,%eax
	je .L267
	cmpb $0,9(%eax)
	jne .L267
	movb 8(%eax),%al
	cmpb %al,29(%ebx)
	je .L267
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__MissingObject
	addl $8,%esp
	testl %eax,%eax
	jne .L257
	jmp .L262
	.align 16
.L267:
	testl %ebx,%ebx
	jne .L274
	pushl $7508
	call _m3_fault
	.align 16
.L274:
	movl 16(%ebp),%ecx
	pushl %ecx
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-8(%ebp)
	movl MM_MxMerge+752,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $16,%esp
	testl %edx,%edx
	jne .L276
	pushl $7524
	call _m3_fault
	.align 16
.L276:
	movl %edx,%edi
	movl %ebx,%esi
	cld
	movl $8,%ecx
	rep
	movsl
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L277
	pushl $7540
	call _m3_fault
	.align 16
.L277:
	movl %eax,%edx
	movl -8(%ebp),%eax
	testl %eax,%eax
	jne .L278
	pushl $7540
	call _m3_fault
	.align 16
.L278:
	movl 116(%eax),%eax
	movl %eax,(%edx)
	movl -8(%ebp),%edx
	testl %edx,%edx
	jne .L279
	pushl $7540
	call _m3_fault
	.align 16
.L279:
	movl -4(%ebp),%eax
	movl %eax,116(%edx)
	testl %eax,%eax
	jne .L280
	pushl $7556
	call _m3_fault
	.align 16
.L280:
	movb $1,28(%eax)
.L262:
	testl %ebx,%ebx
	jne .L281
	pushl $7620
	call _m3_fault
	.align 16
.L281:
	movl (%ebx),%ebx
.L259:
	testl %ebx,%ebx
	jne .L260
.L257:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 MxMerge__ReCheckObjects,.Lfe22-MxMerge__ReCheckObjects
	.align 16
	.type	 MxMerge__MissingObject,@function
MxMerge__MissingObject:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	cmpl $0,8(%eax)
	jne .L283
	movl $1,%eax
	jmp .L287
	.align 16
.L283:
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $MM_MxMerge+764
	movl %eax,%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxMerge+780
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $44,%esp
	testl %ebx,%ebx
	jne .L284
	pushl $7844
	call _m3_fault
	.align 16
.L284:
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutT
	addl $8,%esp
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	addl $4,%esp
	movl %eax,%edx
	pushl $0
	xorl %eax,%eax
	movb 29(%ebx),%al
	movl MM_MxMerge+200(,%eax,4),%eax
	pushl %eax
	pushl %edx
	pushl $MM_MxMerge+696
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	xorl %eax,%eax
.L287:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 MxMerge__MissingObject,.Lfe23-MxMerge__MissingObject
	.align 16
	.type	 MxMerge__BadObject__PrintUnit.2,@function
MxMerge__BadObject__PrintUnit.2:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%eax
	movl -4(%ebp),%ebx
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edi
	movl -4(%ebx),%eax
	addl %edi,%eax
	addl $8,%esp
	cmpl $72,%eax
	jle .L290
	pushl $0
	pushl $0
	pushl $MM_MxMerge+548
	movl MI_Wr+60,%eax
	pushl %eax
	movl -8(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	call MxMerge__Out
	movl $5,-4(%ebx)
	addl $20,%esp
.L290:
	pushl $0
	pushl $0
	pushl $MM_MxMerge+568
	pushl %esi
	movl -8(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	call MxMerge__Out
	movl -4(%ebx),%eax
	addl $2,%eax
	addl %eax,%edi
	leal -16(%ebp),%esp
	movl %edi,-4(%ebx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 MxMerge__BadObject__PrintUnit.2,.Lfe24-MxMerge__BadObject__PrintUnit.2
	.align 16
	.type	 MxMerge__BadObject__CheckUnitObjs.3,@function
MxMerge__BadObject__CheckUnitObjs.3:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl 16(%ebp),%ecx
	movl -4(%ebp),%ebx
	jmp .L292
	.align 16
.L293:
	testl %ecx,%ecx
	jne .L295
	pushl $8196
	call _m3_fault
	.align 16
.L295:
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx)
	jne .L296
	movl 8(%ecx),%eax
	cmpl %eax,8(%edx)
	jne .L296
	movb 29(%edx),%al
	cmpb %al,29(%ecx)
	jne .L296
	pushl %esi
	movl %ebx,%ecx
	call MxMerge__BadObject__PrintUnit.2
	movl $1,%eax
	jmp .L303
	.align 16
.L296:
	testl %edx,%edx
	jne .L301
	pushl $8292
	call _m3_fault
	.align 16
.L301:
	movl (%edx),%edx
.L292:
	testl %edx,%edx
	jne .L293
	movl %edx,%eax
.L303:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 MxMerge__BadObject__CheckUnitObjs.3,.Lfe25-MxMerge__BadObject__CheckUnitObjs.3
	.align 16
	.type	 MxMerge__BadObject,@function
MxMerge__BadObject:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	leal 8(%ebp),%ebx
	movl %ebx,-8(%ebp)
	movl 8(%ebp),%eax
	movl $4,-4(%ebp)
	movb $1,16(%eax)
	movl 8(%ebp),%eax
	xorl %esi,%esi
	cmpl $0,8(%eax)
	jne .L304
	movl $1,%eax
	jmp .L319
	.align 16
.L304:
	pushl %esi
	pushl %esi
	pushl %esi
	pushl $MM_MxMerge+832
	pushl %eax
	call MxMerge__Out
	addl $20,%esp
	cmpl $0,16(%ebp)
	jne .L305
	pushl $8452
	call _m3_fault
	.align 16
.L305:
	movl 16(%ebp),%ebx
	movl 8(%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutT
	pushl %esi
	pushl %esi
	pushl %esi
	movl MI_Wr+60,%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	movl 20(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__DumpObj
	movl 8(%ebp),%eax
	addl $36,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	movl %eax,%edx
	pushl %esi
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl $MM_MxMerge+624
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	movl 16(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__DumpObj
	addl $32,%esp
	pushl %esi
	pushl %esi
	pushl %esi
	pushl $MM_MxMerge+624
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $20,%esp
	testl %edi,%edi
	jne .L306
	pushl $8564
	call _m3_fault
	.align 16
.L306:
	cmpb $0,9(%edi)
	jne .L307
	pushl %edi
	movl %ebp,%ecx
	call MxMerge__BadObject__PrintUnit.2
	addl $4,%esp
.L307:
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L309
	pushl $8596
	call _m3_fault
	.align 16
.L309:
	movl 16(%ebp),%ebx
	movl 4(%ebx),%eax
	pushl %eax
	movl 12(%edx),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L310
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxMerge+260
	je .L310
	pushl $8597
	call _m3_fault
	.align 16
.L310:
	pushl %edx
	movl MI_MxSet+56,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	jmp .L311
	.align 16
.L312:
	movl (%esi),%edi
	testl %edi,%edi
	jne .L314
	pushl $8660
	call _m3_fault
	.align 16
.L314:
	movl 20(%ebp),%ebx
	pushl %ebx
	movl 116(%edi),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %edi
	call MxMerge__BadObject__CheckUnitObjs.3
	addl $12,%esp
	testl %eax,%eax
	jne .L317
	pushl %ebx
	movl 112(%edi),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %edi
	call MxMerge__BadObject__CheckUnitObjs.3
	addl $12,%esp
.L317:
	movl 4(%esi),%esi
.L311:
	testl %esi,%esi
	jne .L312
	movl %esi,%eax
.L319:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 MxMerge__BadObject,.Lfe26-MxMerge__BadObject
	.align 16
	.type	 MxMerge__DumpObj,@function
MxMerge__DumpObj:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxMerge+888
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $20,%esp
	testl %esi,%esi
	jne .L321
	pushl $8852
	call _m3_fault
	.align 16
.L321:
	movl 12(%esi),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__OutT
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxMerge+916
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $28,%esp
	pushl $10
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	movl $MM_MxMerge+940,%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $28,%esp
	pushl $10
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_MxMerge+960
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxMerge+984
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	addl $48,%esp
	pushl $10
	movl 24(%esi),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_MxMerge+1012
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__Out
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 MxMerge__DumpObj,.Lfe27-MxMerge__DumpObj
	.align 16
	.type	 MxMerge__AddObjects,@function
MxMerge__AddObjects:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	jmp .L326
	.align 16
.L327:
	cmpb $0,28(%ebx)
	jne .L329
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_MxRep+160,%eax
	call *%eax
	addl $16,%esp
	cmpl $0,-4(%ebp)
	jne .L329
	movl 8(%ebp),%edx
	movl (%edx),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl MI_MxRep+152,%eax
	call *%eax
	movl %eax,-8(%ebp)
	movl MM_MxMerge+752,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $16,%esp
	testl %eax,%eax
	jne .L333
	pushl $9172
	call _m3_fault
	.align 16
.L333:
	movl %eax,%edi
	movl %ebx,%esi
	cld
	movl $8,%ecx
	rep
	movsl
	movl -4(%ebp),%edx
	testl %edx,%edx
	jne .L334
	pushl $9188
	call _m3_fault
	.align 16
.L334:
	movl -8(%ebp),%eax
	testl %eax,%eax
	jne .L335
	pushl $9188
	call _m3_fault
	.align 16
.L335:
	movl 116(%eax),%eax
	movl %eax,(%edx)
	movl -8(%ebp),%edx
	testl %edx,%edx
	jne .L336
	pushl $9188
	call _m3_fault
	.align 16
.L336:
	movl -4(%ebp),%eax
	movl %eax,116(%edx)
	testl %eax,%eax
	jne .L337
	pushl $9204
	call _m3_fault
	.align 16
.L337:
	movb $1,28(%eax)
.L329:
	testl %ebx,%ebx
	jne .L338
	pushl $9252
	call _m3_fault
	.align 16
.L338:
	movl (%ebx),%ebx
.L326:
	testl %ebx,%ebx
	jne .L327
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 MxMerge__AddObjects,.Lfe28-MxMerge__AddObjects
	.align 16
	.type	 MxMerge__FilterClients,@function
MxMerge__FilterClients:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 12(%ebp),%ebx
	jmp .L341
	.align 16
.L342:
	movl (%ebx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxMerge__ReCheckUnit
	addl $8,%esp
	testl %eax,%eax
	je .L344
	testl %esi,%esi
	jne .L346
	movl MI_MxSet+44,%eax
	call *%eax
	movl %eax,%esi
.L346:
	movl (%ebx),%eax
	pushl %eax
	pushl %esi
	movl MI_MxSet+48,%eax
	call *%eax
	addl $8,%esp
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L348
	pushl $9476
	call _m3_fault
	.align 16
.L348:
	movb $1,9(%eax)
.L344:
	testl %ebx,%ebx
	jne .L349
	pushl $9508
	call _m3_fault
	.align 16
.L349:
	movl 4(%ebx),%ebx
.L341:
	testl %ebx,%ebx
	jne .L342
	pushl %esi
	movl MI_MxSet+56,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 MxMerge__FilterClients,.Lfe29-MxMerge__FilterClients
	.align 16
	.type	 MxMerge__ReCheckUnit,@function
MxMerge__ReCheckUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movb 16(%eax),%cl
	movb %cl,-4(%ebp)
	movb $0,16(%eax)
	movl 8(%ebp),%edx
	cmpb $0,16(%edx)
	jne .L358
	testl %ebx,%ebx
	jne .L353
	pushl $9684
	call _m3_fault
	.align 16
.L353:
	leal 52(%ebx),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call MxMerge__ReCheckStamps
	movl 8(%ebp),%edx
	addl $12,%esp
	cmpb $0,16(%edx)
	jne .L358
	leal 60(%ebx),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call MxMerge__ReCheckStamps
	movl 8(%ebp),%edx
	addl $12,%esp
	cmpb $0,16(%edx)
	jne .L358
	pushl %ebx
	movl 120(%ebx),%eax
	pushl %eax
	pushl %edx
	call MxMerge__ReCheckRevelations
	movl 8(%ebp),%edx
	addl $12,%esp
	cmpb $0,16(%edx)
	jne .L358
	pushl %ebx
	movl 112(%ebx),%eax
	pushl %eax
	pushl %edx
	call MxMerge__ReCheckObjects
.L358:
	movl 8(%ebp),%eax
	movb -4(%ebp),%cl
	movb 16(%eax),%dl
	movb %cl,16(%eax)
	xorl %eax,%eax
	movb %dl,%al
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 MxMerge__ReCheckUnit,.Lfe30-MxMerge__ReCheckUnit
	.align 16
	.type	 MxMerge__OutT,@function
MxMerge__OutT:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	cmpl $0,8(%eax)
	je .L360
	cmpl $0,12(%eax)
	jne .L362
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movl %edx,12(%eax)
.L362:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxMerge+1028
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	pushl $MM_MxMerge+1044
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+60,%eax
	call *%eax
.L360:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 MxMerge__OutT,.Lfe31-MxMerge__OutT
	.align 16
	.type	 MxMerge__OutX,@function
MxMerge__OutX:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl $0,8(%eax)
	je .L363
	cmpl $0,12(%eax)
	jne .L365
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movl %edx,12(%eax)
.L365:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxMerge+1060
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	pushl $MM_MxMerge+1076
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+56,%eax
	call *%eax
.L363:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 MxMerge__OutX,.Lfe32-MxMerge__OutX
	.align 16
	.type	 MxMerge__Out,@function
MxMerge__Out:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 8(%ebp),%eax
	movl 20(%ebp),%edi
	cmpl $0,8(%eax)
	je .L366
	cmpl $0,12(%eax)
	jne .L368
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	movl %edx,12(%eax)
.L368:
	testl %ebx,%ebx
	je .L369
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
.L369:
	testl %esi,%esi
	je .L370
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
.L370:
	testl %edi,%edi
	je .L371
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
	addl $24,%esp
.L371:
	cmpl $0,24(%ebp)
	je .L366
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl 24(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_MxIO+44,%eax
	call *%eax
.L366:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 MxMerge__Out,.Lfe33-MxMerge__Out
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxMerge
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe34:
	.size	 _m3_fault,.Lfe34-_m3_fault
.globl MM_MxMerge
.data
	.align 4
	.type	 MM_MxMerge,@object
	.size	 MM_MxMerge,2084
MM_MxMerge:
	.long MM_MxMerge+1944
	.zero	4
	.long MM_MxMerge+240
	.zero	8
	.long MM_MxMerge+1544
	.zero	20
	.long MxMerge__Flush
	.long MxMerge__CheckUnit
	.long MxMerge__DuplicateUnit
	.long MxMerge__CheckStamps
	.long MxMerge__ReCheckStamps
	.long MxMerge__AddStamps
	.long MxMerge__AddVirtualExport
	.long MxMerge__MissingStamp
	.long MxMerge__DuplicateStamp
	.long MxMerge__DuplicateStampImpl
	.long MxMerge__BadStamps
	.long MxMerge__CheckRevelations
	.long MxMerge__ReCheckRevelations
	.long MxMerge__MissingRevelation
	.long MxMerge__AddRevelations
	.long MxMerge__CheckImportedTypes
	.long MxMerge__AddExportedTypes
	.long MxMerge__CheckObjects
	.long MxMerge__ReCheckObjects
	.long MxMerge__MissingObject
	.long MxMerge__BadObject
	.long MxMerge__DumpObj
	.long MxMerge__AddObjects
	.long MxMerge__FilterClients
	.long MxMerge__ReCheckUnit
	.long MxMerge__OutT
	.long MxMerge__OutX
	.long MxMerge__Out
	.long MxMerge__MergeUnit
	.long MM_MxMerge+172
	.long MM_MxMerge+188
	.long 2
	.long MM_MxMerge+180
	.long 3
	.ascii	"= "
	.zero	2
	.long 2
	.long MM_MxMerge+196
	.long 4
	.ascii	"<: "
	.zero	1
	.long MM_MxMerge+212
	.long MM_MxMerge+228
	.long 2
	.long MM_MxMerge+220
	.long 4
	.ascii	".i3"
	.zero	1
	.long 2
	.long MM_MxMerge+236
	.long 4
	.ascii	".m3"
	.zero	1
	.long MM_MxMerge+248
	.long 880986034
	.long MM_MxMerge+256
	.long -1203380091
	.long MM_MxMerge+640
	.long 1109077765
	.long 2
	.long MM_MxMerge+276
	.long 11
	.ascii	"duplicate "
	.zero	2
	.long 2
	.long MM_MxMerge+300
	.long 2
	.ascii	":"
	.zero	3
	.long 2
	.long MM_MxMerge+316
	.long 6
	.ascii	"  in "
	.zero	3
	.long 2
	.long MM_MxMerge+336
	.long 6
	.ascii	" and "
	.zero	3
	.long 2
	.long MM_MxMerge+356
	.long 17
	.ascii	"missing export: "
	.zero	4
	.long 2
	.long MM_MxMerge+388
	.long 2
	.ascii	"."
	.zero	3
	.long 2
	.long MM_MxMerge+404
	.long 14
	.ascii	" imported by "
	.zero	3
	.long 2
	.long MM_MxMerge+432
	.long 23
	.ascii	"multiple definitions: "
	.zero	2
	.long 2
	.long MM_MxMerge+468
	.long 17
	.ascii	" implemented by:"
	.zero	4
	.long 2
	.long MM_MxMerge+500
	.long 4
	.ascii	"   "
	.zero	1
	.long 2
	.long MM_MxMerge+516
	.long 27
	.ascii	"multiple implementations: "
	.zero	2
	.long 2
	.long MM_MxMerge+556
	.long 6
	.ascii	"     "
	.zero	3
	.long 2
	.long MM_MxMerge+576
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_MxMerge+592
	.long 25
	.ascii	"version stamp mismatch: "
	.zero	4
	.long 2
	.long MM_MxMerge+632
	.long 5
	.ascii	" => "
	.zero	4
	.long MM_MxMerge+752
	.long -660466080
	.long 2
	.long MM_MxMerge+660
	.long 32
	.ascii	": missing imported revelation: "
	.zero	1
	.long 2
	.long MM_MxMerge+704
	.long 6
	.ascii	"from "
	.zero	3
	.long 2
	.long MM_MxMerge+724
	.long 26
	.ascii	": missing imported type: "
	.zero	7
	.long -929516260
	.long 2
	.long MM_MxMerge+772
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_MxMerge+788
	.long 37
	.ascii	"missing opaque object info for type "
	.zero	4
	.long 2
	.long MM_MxMerge+840
	.long 42
	.ascii	"inconsistent opaque object info for type "
	.zero	3
	.long 2
	.long MM_MxMerge+896
	.long 13
	.ascii	"super type: "
	.zero	4
	.long 2
	.long MM_MxMerge+924
	.long 9
	.ascii	" data: ("
	.zero	4
	.long 2
	.long MM_MxMerge+948
	.long 7
	.ascii	"size: "
	.zero	2
	.long 2
	.long MM_MxMerge+968
	.long 10
	.ascii	", align: "
	.zero	3
	.long 2
	.long MM_MxMerge+992
	.long 13
	.ascii	")  method: ("
	.zero	4
	.long 2
	.long MM_MxMerge+1020
	.long 2
	.ascii	")"
	.zero	3
	.long 2
	.long MM_MxMerge+1036
	.long 3
	.ascii	"_t"
	.zero	2
	.long 2
	.long MM_MxMerge+1052
	.long 2
	.ascii	" "
	.zero	3
	.long 2
	.long MM_MxMerge+1068
	.long 4
	.ascii	"  <"
	.zero	1
	.long 2
	.long MM_MxMerge+1084
	.long 2
	.ascii	">"
	.zero	3
	.ascii	"Out"
	.zero	1
	.ascii	"OutX"
	.zero	1
	.ascii	"OutT"
	.zero	1
	.ascii	"ReCheckUnit"
	.zero	1
	.ascii	"FilterClients"
	.zero	1
	.ascii	"AddObjects"
	.zero	1
	.ascii	"DumpObj"
	.zero	1
	.ascii	"BadObject"
	.zero	1
	.ascii	"BadObject.CheckUnitObjs"
	.zero	1
	.ascii	"BadObject.PrintUnit"
	.zero	1
	.ascii	"MissingObject"
	.zero	1
	.ascii	"ReCheckObjects"
	.zero	1
	.ascii	"CheckObjects"
	.zero	1
	.ascii	"AddExportedTypes"
	.zero	1
	.ascii	"CheckImportedTypes"
	.zero	1
	.ascii	"AddRevelations"
	.zero	1
	.ascii	"MissingRevelation"
	.zero	1
	.ascii	"ReCheckRevelations"
	.zero	1
	.ascii	"CheckRevelations"
	.zero	1
	.ascii	"BadStamps"
	.zero	1
	.ascii	"BadStamps.CheckUnitStamps"
	.zero	1
	.ascii	"BadStamps.PrintUnit"
	.zero	1
	.ascii	"DuplicateStampImpl"
	.zero	1
	.ascii	"DuplicateStamp"
	.zero	1
	.ascii	"MissingStamp"
	.zero	1
	.ascii	"AddVirtualExport"
	.zero	1
	.ascii	"AddStamps"
	.zero	1
	.ascii	"ReCheckStamps"
	.zero	1
	.ascii	"CheckStamps"
	.zero	1
	.ascii	"DuplicateUnit"
	.zero	1
	.ascii	"CheckUnit"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"MergeUnit"
	.zero	1
	.long MxMerge__Out
	.long MM_MxMerge+1088
	.zero	4
	.long MxMerge__OutX
	.long MM_MxMerge+1092
	.zero	4
	.long MxMerge__OutT
	.long MM_MxMerge+1097
	.zero	4
	.long MxMerge__ReCheckUnit
	.long MM_MxMerge+1102
	.zero	4
	.long MxMerge__FilterClients
	.long MM_MxMerge+1114
	.zero	4
	.long MxMerge__AddObjects
	.long MM_MxMerge+1128
	.zero	4
	.long MxMerge__DumpObj
	.long MM_MxMerge+1139
	.zero	4
	.long MxMerge__BadObject
	.long MM_MxMerge+1147
	.zero	4
	.long MxMerge__BadObject__CheckUnitObjs.3
	.long MM_MxMerge+1157
	.zero	4
	.long MxMerge__BadObject__PrintUnit.2
	.long MM_MxMerge+1181
	.zero	4
	.long MxMerge__MissingObject
	.long MM_MxMerge+1201
	.zero	4
	.long MxMerge__ReCheckObjects
	.long MM_MxMerge+1215
	.zero	4
	.long MxMerge__CheckObjects
	.long MM_MxMerge+1230
	.zero	4
	.long MxMerge__AddExportedTypes
	.long MM_MxMerge+1243
	.zero	4
	.long MxMerge__CheckImportedTypes
	.long MM_MxMerge+1260
	.zero	4
	.long MxMerge__AddRevelations
	.long MM_MxMerge+1279
	.zero	4
	.long MxMerge__MissingRevelation
	.long MM_MxMerge+1294
	.zero	4
	.long MxMerge__ReCheckRevelations
	.long MM_MxMerge+1312
	.zero	4
	.long MxMerge__CheckRevelations
	.long MM_MxMerge+1331
	.zero	4
	.long MxMerge__BadStamps
	.long MM_MxMerge+1348
	.zero	4
	.long MxMerge__BadStamps__CheckUnitStamps.1
	.long MM_MxMerge+1358
	.zero	4
	.long MxMerge__BadStamps__PrintUnit.0
	.long MM_MxMerge+1384
	.zero	4
	.long MxMerge__DuplicateStampImpl
	.long MM_MxMerge+1404
	.zero	4
	.long MxMerge__DuplicateStamp
	.long MM_MxMerge+1423
	.zero	4
	.long MxMerge__MissingStamp
	.long MM_MxMerge+1438
	.zero	4
	.long MxMerge__AddVirtualExport
	.long MM_MxMerge+1451
	.zero	4
	.long MxMerge__AddStamps
	.long MM_MxMerge+1468
	.zero	4
	.long MxMerge__ReCheckStamps
	.long MM_MxMerge+1478
	.zero	4
	.long MxMerge__CheckStamps
	.long MM_MxMerge+1492
	.zero	4
	.long MxMerge__DuplicateUnit
	.long MM_MxMerge+1504
	.zero	4
	.long MxMerge__CheckUnit
	.long MM_MxMerge+1518
	.zero	4
	.long MxMerge__Flush
	.long MM_MxMerge+1528
	.zero	4
	.long MxMerge__MergeUnit
	.long MM_MxMerge+1534
	.long MI_MxMerge+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxMerge.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
