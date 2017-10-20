	.file	"RTHeapMap.mc"
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
	.type	 RTHeapMap__WalkRef,@function
RTHeapMap__WalkRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L2
	pushl $500
	call _m3_fault
	.align 16
.L2:
	movl (%esi),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl $1048575,%ebx
	je .L1
	cmpl $1048574,%ebx
	je .L1
	testl %ebx,%ebx
	jne .L4
	pushl $560
	call _m3_fault
	.align 16
.L4:
	pushl %ebx
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	cmpb $0,MM_RTHeapMap+44
	je .L5
	pushl $MM_RTHeapMap+300
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapMap+324
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapMap+344
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	leal 4(%esi),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	addl $36,%esp
	pushl $MM_RTHeapMap+364
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $4,%esp
.L5:
	movl 12(%ebp),%edx
	pushl %edx
	leal 4(%esi),%eax
	pushl %eax
	pushl %edi
	call RTHeapMap__DoWalkRef
.L1:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHeapMap__WalkRef,.Lfe1-RTHeapMap__WalkRef
	.align 16
	.type	 RTHeapMap__DoWalkRef,@function
RTHeapMap__DoWalkRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	testl %esi,%esi
	jne .L7
	pushl $852
	call _m3_fault
	.align 16
.L7:
	movl 80(%esi),%eax
	testl %eax,%eax
	je .L8
	pushl %edi
	pushl %ebx
	pushl %eax
	call RTHeapMap__DoWalkRef
	addl $12,%esp
	addl 24(%esi),%ebx
.L8:
	pushl %edi
	movl 60(%esi),%eax
	pushl %eax
	pushl %ebx
	call RTHeapMap__Walk
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeapMap__DoWalkRef,.Lfe2-RTHeapMap__DoWalkRef
	.align 16
	.type	 RTHeapMap__WalkGlobals,@function
RTHeapMap__WalkGlobals:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	cmpl $0,MM_RTHeapMap+260
	jne .L13
	call RTHeapMap__BuildGlobalMap
.L13:
	movl MM_RTHeapMap+260,%eax
	testl %eax,%eax
	jne .L14
	pushl $1108
	call _m3_fault
	.align 16
.L14:
	movl %ebx,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L15
	.align 16
.L16:
	movl MM_RTHeapMap+260,%eax
	testl %eax,%eax
	jne .L17
	pushl $1124
	call _m3_fault
	.align 16
.L17:
	cmpl %esi,4(%eax)
	ja .L18
	pushl $1122
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax,%esi,4),%ebx
	cmpb $0,MM_RTHeapMap+44
	je .L19
	pushl $MM_RTHeapMap+380
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapMap+404
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapMap+364
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $28,%esp
.L19:
	testl %ebx,%ebx
	jne .L20
	pushl $1268
	call _m3_fault
	.align 16
.L20:
	movl 8(%ebp),%edx
	pushl %edx
	movl 32(%ebx),%eax
	pushl %eax
	pushl %ebx
	call RTHeapMap__Walk
	incl %esi
	addl $12,%esp
.L15:
	cmpl %edi,%esi
	jle .L16
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeapMap__WalkGlobals,.Lfe3-RTHeapMap__WalkGlobals
	.align 16
	.type	 RTHeapMap__BuildGlobalMap,@function
RTHeapMap__BuildGlobalMap:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RTModule+44,%eax
	call *%eax
	decl %eax
	movl %eax,-16(%ebp)
	xorl %esi,%esi
	movl %esi,%edi
	movl %eax,-20(%ebp)
	jmp .L23
	.align 16
.L24:
	pushl %edi
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L25
	cmpl $0,32(%ebx)
	je .L25
	incl %esi
.L25:
	incl %edi
.L23:
	cmpl %edi,-20(%ebp)
	jge .L24
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %eax
	movl MM_RTHeapMap+416,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,MM_RTHeapMap+260
	xorl %esi,%esi
	movl %esi,%edi
	movl -16(%ebp),%edx
	movl %edx,-24(%ebp)
	addl $8,%esp
	jmp .L28
	.align 16
.L29:
	pushl %edi
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L30
	cmpl $0,32(%ebx)
	je .L30
	movl MM_RTHeapMap+260,%eax
	testl %eax,%eax
	jne .L32
	pushl $1620
	call _m3_fault
	.align 16
.L32:
	cmpl %esi,4(%eax)
	ja .L33
	pushl $1618
	call _m3_fault
	.align 16
.L33:
	movl (%eax),%eax
	movl %ebx,(%eax,%esi,4)
	incl %esi
.L30:
	incl %edi
.L28:
	cmpl %edi,-24(%ebp)
	jge .L29
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeapMap__BuildGlobalMap,.Lfe4-RTHeapMap__BuildGlobalMap
	.align 16
	.type	 RTHeapMap__WalkModuleGlobals,@function
RTHeapMap__WalkModuleGlobals:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_RTModule+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L35
	movl 32(%eax),%edx
	testl %edx,%edx
	je .L35
	pushl %ebx
	pushl %edx
	pushl %eax
	call RTHeapMap__Walk
.L35:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTHeapMap__WalkModuleGlobals,.Lfe5-RTHeapMap__WalkModuleGlobals
.section	.rodata
	.align 4
	.type	 L_4.0,@object
	.size	 L_4.0,232
L_4.0:
	.long .L46
	.long .L47
	.long .L48
	.long .L49
	.long .L50
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L51
	.long .L52
	.long .L52
	.long .L53
	.long .L53
	.long .L53
	.long .L53
	.long .L53
	.long .L53
	.long .L53
	.long .L53
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L54
	.long .L55
	.long .L56
	.long .L56
	.long .L56
	.long .L56
	.long .L56
	.long .L56
	.long .L56
	.long .L57
	.long .L58
	.long .L58
	.long .L58
	.long .L58
	.long .L58
	.long .L58
	.long .L58
.text
	.align 16
	.type	 RTHeapMap__Walk,@function
RTHeapMap__Walk:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%edi
	movl 8(%ebp),%esi
	movl 4(%edi),%ecx
	movl %ecx,-8(%ebp)
	testl %esi,%esi
	je .L39
	cmpl $0,12(%ebp)
	je .L39
	cmpb $0,MM_RTHeapMap+44
	je .L43
	pushl $MM_RTHeapMap+428
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapMap+452
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapMap+472
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_RTIO+68,%eax
	call *%eax
	addl $36,%esp
	pushl $MM_RTHeapMap+364
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $4,%esp
.L43:
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L44
	pushl $2116
	call _m3_fault
	.align 16
.L44:
	movb (%eax),%bl
	cmpb $0,MM_RTHeapMap+44
	je .L45
	pushl $MM_RTHeapMap+496
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_RTIO+68,%eax
	call *%eax
	pushl $MM_RTHeapMap+516
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	pushl $MM_RTHeapMap+364
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	addl $28,%esp
.L45:
	xorl %eax,%eax
	movb %bl,%al
	incl 12(%ebp)
	jmp *L_4.0(,%eax,4)
	.align 16
.L47:
	pushl $-1
	movl 12(%ebp),%eax
	pushl %eax
	leal 4(%edi),%eax
	pushl %eax
	movl MI_RTMapOp+708,%eax
	call *%eax
	addl $12,%esp
	jmp .L43
	.align 16
.L46:
.L60:
	movl 4(%edi),%eax
	cmpl %eax,-8(%ebp)
	jge .L39
	decl %eax
	cmpl $127,%eax
	jbe .L62
	pushl $2401
	call _m3_fault
	.align 16
.L62:
	leal 8(%edi,%eax,8),%edx
	movl %edx,-4(%ebp)
	movl (%edx),%eax
	movl %eax,12(%ebp)
	movl 4(%edx),%eax
	decl %eax
	movl %eax,4(%edx)
	jns .L43
	decl 4(%edi)
	jmp .L60
	.align 16
.L53:
	xorl %eax,%eax
	movb %bl,%al
	xorl %edx,%edx
	movb MI_RTMapOp+414(%eax),%dl
	leal -1(%edx),%eax
	cmpl $7,%eax
	jbe .L65
	pushl $2577
	call _m3_fault
	.align 16
.L65:
	pushl %edx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	movl 4(%edi),%edx
	decl %edx
	addl $8,%esp
	cmpl $127,%edx
	jbe .L66
	pushl $2593
	call _m3_fault
	.align 16
.L66:
	leal 8(%edi,%edx,8),%edx
	movl %edx,-4(%ebp)
	cmpl $-1,4(%edx)
	jne .L67
	movl %eax,4(%edx)
.L67:
	movl -4(%ebp),%edx
	movl 4(%edx),%eax
	decl %eax
	movl %eax,4(%edx)
	testl %eax,%eax
	jle .L68
	movl (%edx),%eax
	movl %eax,12(%ebp)
	jmp .L43
	.align 16
.L68:
	decl 4(%edi)
	jmp .L43
	.align 16
.L52:
	xorl %eax,%eax
	movb %bl,%al
	xorl %edx,%edx
	movb MI_RTMapOp+414(%eax),%dl
	leal -1(%edx),%eax
	cmpl $7,%eax
	jbe .L70
	pushl $2721
	call _m3_fault
	.align 16
.L70:
	pushl %edx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	addl $8,%esp
	testl %esi,%esi
	jne .L71
	pushl $2740
	call _m3_fault
	.align 16
.L71:
	movl (%esi),%ebx
	addl $4,%esi
	movl $1,%edx
	movl %edx,-12(%ebp)
	jmp .L72
	.align 16
.L73:
	testl %esi,%esi
	jne .L74
	pushl $2836
	call _m3_fault
	.align 16
.L74:
	imull (%esi),%edx
	addl $4,%esi
	incl -12(%ebp)
.L72:
	cmpl %eax,-12(%ebp)
	jle .L73
	testl %edx,%edx
	jle .L39
	leal -1(%edx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	leal 4(%edi),%eax
	pushl %eax
	movl MI_RTMapOp+708,%eax
	call *%eax
	movl %ebx,%esi
	addl $12,%esp
	jmp .L43
	.align 16
.L50:
	movl (%edi),%eax
	movl 4(%eax),%edx
	pushl %esi
	pushl %edi
	call *%edx
	addl $4,%esi
	addl $8,%esp
	jmp .L43
	.align 16
.L48:
	pushl $-1
	leal 4(%esi),%eax
	pushl %eax
	leal 4(%edi),%eax
	pushl %eax
	movl MI_RTMapOp+708,%eax
	call *%eax
	addl $12,%esp
	testl %esi,%esi
	jne .L77
	pushl $3092
	call _m3_fault
	.align 16
.L77:
	movl (%esi),%esi
	jmp .L43
	.align 16
.L49:
	movl 4(%edi),%eax
	decl %eax
	movl %eax,4(%edi)
	cmpl $127,%eax
	jbe .L78
	pushl $3153
	call _m3_fault
	.align 16
.L78:
	movl 8(%edi,%eax,8),%esi
	jmp .L43
	.align 16
.L54:
	xorl %eax,%eax
	movb %bl,%al
	addl MI_RTMapOp+472(,%eax,4),%esi
	jmp .L43
	.align 16
.L55:
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L79
	pushl $3268
	call _m3_fault
	.align 16
.L79:
	xorl %eax,%eax
	movb (%edx),%al
	addl %eax,%esi
	jmp .L84
	.align 16
.L56:
	xorl %eax,%eax
	movb %bl,%al
	xorl %edx,%edx
	movb MI_RTMapOp+414(%eax),%dl
	leal -1(%edx),%eax
	cmpl $7,%eax
	jbe .L80
	pushl $3361
	call _m3_fault
	.align 16
.L80:
	pushl %edx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	addl %eax,%esi
	addl $8,%esp
	jmp .L43
	.align 16
.L57:
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L81
	pushl $3428
	call _m3_fault
	.align 16
.L81:
	xorl %eax,%eax
	movb (%edx),%al
	subl %eax,%esi
.L84:
	incl %edx
	movl %edx,12(%ebp)
	jmp .L43
	.align 16
.L58:
	xorl %eax,%eax
	movb %bl,%al
	xorl %edx,%edx
	movb MI_RTMapOp+414(%eax),%dl
	leal -1(%edx),%eax
	cmpl $7,%eax
	jbe .L82
	pushl $3521
	call _m3_fault
	.align 16
.L82:
	pushl %edx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	subl %eax,%esi
	addl $8,%esp
	jmp .L43
	.align 16
.L51:
	pushl $3584
	call _m3_fault
	.align 16
.L39:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHeapMap__Walk,.Lfe6-RTHeapMap__Walk
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeapMap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_RTHeapMap
.data
	.align 4
	.type	 MM_RTHeapMap,@object
	.size	 MM_RTHeapMap,912
MM_RTHeapMap:
	.long MM_RTHeapMap+676
	.long MM_RTHeapMap+48
	.long MM_RTHeapMap+416
	.long MM_RTHeapMap+284
	.zero	4
	.long MM_RTHeapMap+600
	.zero	32
	.long -262231888
.byte 140
.byte 81
.byte 171
.byte 227
.byte 60
.byte 249
.byte 245
.byte 19
	.long 1
	.zero	4
	.long 1028
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTHeapMap+855
	.zero	4
	.long MM_RTHeapMap+862
	.zero	8
	.long -1110692894
	.zero	12
	.long MM_RTHeapMap+875
	.long MM_RTHeapMap+893
	.long MM_RTHeapMap+156
	.long RTHeapMap__DoWalkRef
	.zero	8
	.long -1928283533
.byte 42
.byte 229
.byte 106
.byte 147
.byte 89
.byte 95
.byte 122
.byte 30
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTHeapMap+830
	.zero	36
	.long MM_RTHeapMap+835
	.zero	8
	.long RTHeapMap__BuildGlobalMap
	.long RTHeapMap__Walk
	.long RTHeapMap__WalkRef
	.long RTHeapMap__WalkGlobals
	.long RTHeapMap__WalkModuleGlobals
	.long -1093060005
	.long -262231888
	.zero	4
	.long 2
	.long MM_RTHeapMap+308
	.long 9
	.ascii	"Ref: tc="
	.zero	4
	.long 2
	.long MM_RTHeapMap+332
	.long 7
	.ascii	" cell="
	.zero	2
	.long 2
	.long MM_RTHeapMap+352
	.long 6
	.ascii	" ref="
	.zero	3
	.long 2
	.long MM_RTHeapMap+372
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_RTHeapMap+388
	.long 9
	.ascii	"Module: "
	.zero	4
	.long 2
	.long MM_RTHeapMap+412
	.long 3
	.ascii	"  "
	.zero	6
	.long -1928283533
	.long 2
	.long MM_RTHeapMap+436
	.long 11
	.ascii	"Walk: map="
	.zero	2
	.long 2
	.long MM_RTHeapMap+460
	.long 6
	.ascii	" val="
	.zero	3
	.long 2
	.long MM_RTHeapMap+480
	.long 10
	.ascii	" visitor="
	.zero	3
	.long 2
	.long MM_RTHeapMap+504
	.long 6
	.ascii	"  pc="
	.zero	3
	.long 2
	.long MM_RTHeapMap+524
	.long 6
	.ascii	"  op="
	.zero	3
	.ascii	"Walk"
	.zero	1
	.ascii	"WalkModuleGlobals"
	.zero	1
	.ascii	"BuildGlobalMap"
	.zero	1
	.ascii	"WalkGlobals"
	.zero	1
	.ascii	"DoWalkRef"
	.zero	1
	.ascii	"WalkRef"
	.zero	1
	.long RTHeapMap__Walk
	.long MM_RTHeapMap+532
	.zero	4
	.long RTHeapMap__WalkModuleGlobals
	.long MM_RTHeapMap+537
	.long MI_RTHeapMap+260
	.long RTHeapMap__BuildGlobalMap
	.long MM_RTHeapMap+555
	.zero	4
	.long RTHeapMap__WalkGlobals
	.long MM_RTHeapMap+570
	.long MI_RTHeapMap+256
	.long RTHeapMap__DoWalkRef
	.long MM_RTHeapMap+582
	.zero	4
	.long RTHeapMap__WalkRef
	.long MM_RTHeapMap+592
	.long MI_RTHeapMap+252
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHeapMap.m3"
	.zero	1
.byte 24
.byte 1
.byte 5
.byte 0
.byte 0
	.ascii	"RTHeapMap.ModuleMap"
	.zero	1
.byte 14
.byte 1
.byte 5
.byte 14
.byte 26
.byte 128
.byte 0
.byte 7
.byte 10
.byte 1
.byte 15
.byte 2
.byte 7
.byte 1
.byte 65
.byte 128
.byte 15
.byte 2
.byte 0
.byte 24
	.ascii	"RTHeapMap.Visitor"
	.zero	1
	.ascii	"RTHeapMap.Visitor"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
