	.file	"MxMap.mc"
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
	.type	 MxMap__New,@function
MxMap__New:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_MxMap+192,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $16,%eax
	addl $4,%esp
	cmpl %esi,%eax
	jle .L2
	movl %eax,-4(%ebp)
	jmp .L3
	.align 16
.L2:
	movl %esi,-4(%ebp)
.L3:
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_MxMap+200,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L4
	pushl $308
	call _m3_fault
	.align 16
.L4:
	movl %eax,4(%ebx)
	leal -20(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxMap__New,.Lfe1-MxMap__New
	.align 16
	.type	 MxMap__Get,@function
MxMap__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
.L6:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L7
	pushl $388
	call _m3_fault
	.align 16
.L7:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L8
	pushl $388
	call _m3_fault
	.align 16
.L8:
	pushl %edi
	movl 4(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	addl $8,%esp
.L9:
	testl %ebx,%ebx
	jne .L10
	pushl $452
	call _m3_fault
	.align 16
.L10:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L11
	pushl $452
	call _m3_fault
	.align 16
.L11:
	cmpl %ecx,4(%eax)
	ja .L12
	pushl $450
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	leal (%eax,%ecx,8),%edx
	movl %edx,-12(%ebp)
	cmpl %edi,(%edx)
	jne .L13
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 4(%edx),%eax
	jmp .L5
	.align 16
.L13:
	movl 4(%edx),%edx
	testl %edx,%edx
	je .L21
	incl %ecx
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L16
	pushl $532
	call _m3_fault
	.align 16
.L16:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ecx,%eax
	jge .L17
	xorl %ecx,%ecx
.L17:
	cmpl %ecx,-16(%ebp)
	jne .L9
.L21:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L20:
.L5:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxMap__Get,.Lfe2-MxMap__Get
	.align 16
	.type	 MxMap__GetDirect,@function
MxMap__GetDirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jl .L23
	testl %eax,%eax
	jne .L24
	pushl $644
	call _m3_fault
	.align 16
.L24:
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L25
	pushl $644
	call _m3_fault
	.align 16
.L25:
	movl 4(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl %ebx,%eax
	jl .L23
	cmpl %ecx,%ebx
	jb .L28
	pushl $658
	call _m3_fault
	.align 16
.L28:
	movl (%edx),%eax
	movl 4(%eax,%ebx,8),%eax
	jmp .L29
	.align 16
.L23:
	xorl %eax,%eax
.L29:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxMap__GetDirect,.Lfe3-MxMap__GetDirect
	.align 16
	.type	 MxMap__GetIndex,@function
MxMap__GetIndex:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
.L31:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L32
	pushl $756
	call _m3_fault
	.align 16
.L32:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L33
	pushl $756
	call _m3_fault
	.align 16
.L33:
	pushl %esi
	movl 4(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%ecx
	movl %ecx,%edx
	addl $8,%esp
.L34:
	testl %ebx,%ebx
	jne .L35
	pushl $820
	call _m3_fault
	.align 16
.L35:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L36
	pushl $820
	call _m3_fault
	.align 16
.L36:
	cmpl %edx,4(%eax)
	ja .L37
	pushl $818
	call _m3_fault
	.align 16
.L37:
	movl (%eax),%eax
	leal (%eax,%edx,8),%eax
	movl %eax,-12(%ebp)
	cmpl %esi,(%eax)
	jne .L38
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L30
	.align 16
.L38:
	cmpl $0,4(%eax)
	je .L46
	incl %edx
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L41
	pushl $900
	call _m3_fault
	.align 16
.L41:
	movl 4(%eax),%eax
	decl %eax
	cmpl %edx,%eax
	jge .L42
	xorl %edx,%edx
.L42:
	cmpl %ecx,%edx
	jne .L34
.L46:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $-1,%eax
.L45:
.L30:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxMap__GetIndex,.Lfe4-MxMap__GetIndex
	.align 16
	.type	 MxMap__Insert,@function
MxMap__Insert:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L48:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %esi,%esi
	jne .L49
	pushl $996
	call _m3_fault
	.align 16
.L49:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L50
	pushl $996
	call _m3_fault
	.align 16
.L50:
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 4(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%edi
	movl %edi,%ebx
	addl $8,%esp
.L51:
	testl %esi,%esi
	jne .L52
	pushl $1060
	call _m3_fault
	.align 16
.L52:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L53
	pushl $1060
	call _m3_fault
	.align 16
.L53:
	cmpl %ebx,4(%eax)
	ja .L54
	pushl $1058
	call _m3_fault
	.align 16
.L54:
	movl (%eax),%eax
	leal (%eax,%ebx,8),%eax
	movl %eax,-12(%ebp)
	movl 12(%ebp),%ecx
	cmpl %ecx,(%eax)
	jne .L55
	movl 16(%ebp),%ecx
	movl %ecx,4(%eax)
	jmp .L61
	.align 16
.L55:
	cmpl $0,4(%eax)
	jne .L56
	movl 12(%ebp),%ecx
	movl %ecx,(%eax)
	movl -12(%ebp),%eax
	movl 16(%ebp),%ecx
	movl %ecx,4(%eax)
	movl (%esi),%eax
	incl %eax
	movl %eax,(%esi)
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L60
	pushl $1188
	call _m3_fault
	.align 16
.L60:
	addl %eax,%eax
	cmpl %eax,4(%edx)
	jge .L61
	pushl %esi
	call MxMap__Expand
.L61:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L47
	.align 16
.L56:
	incl %ebx
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L63
	pushl $1268
	call _m3_fault
	.align 16
.L63:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jge .L64
	xorl %ebx,%ebx
.L64:
	cmpl %edi,%ebx
	jne .L51
	pushl %esi
	call MxMap__Expand
	addl $4,%esp
	jmp .L51
	.align 16
.L67:
.L47:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxMap__Insert,.Lfe5-MxMap__Insert
	.align 16
	.type	 MxMap__Expand,@function
MxMap__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L69
	pushl $1364
	call _m3_fault
	.align 16
.L69:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%edi
	testl %edi,%edi
	jne .L70
	pushl $1380
	call _m3_fault
	.align 16
.L70:
	movl 4(%edi),%ebx
	movl 8(%ebp),%ecx
	leal -12(%ebp),%eax
	movl $0,(%ecx)
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%ecx
	addl %ebx,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_MxMap+200,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	movl 8(%ebp),%ecx
	xorl %esi,%esi
	decl %ebx
	movl %eax,4(%ecx)
	jmp .L73
	.align 16
.L74:
	testl %edi,%edi
	jne .L75
	pushl $1460
	call _m3_fault
	.align 16
.L75:
	movl %edi,%eax
	cmpl %esi,4(%eax)
	ja .L76
	pushl $1458
	call _m3_fault
	.align 16
.L76:
	movl (%eax),%eax
	leal (%eax,%esi,8),%eax
	movl %eax,-16(%ebp)
	movl 4(%eax),%edx
	testl %edx,%edx
	je .L77
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	call MxMap__Insert
	addl $12,%esp
.L77:
	incl %esi
.L73:
	cmpl %ebx,%esi
	jle .L74
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxMap__Expand,.Lfe6-MxMap__Expand
	.align 16
	.type	 MxMap__Delete,@function
MxMap__Delete:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
.L80:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %esi,%esi
	jne .L81
	pushl $1572
	call _m3_fault
	.align 16
.L81:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L82
	pushl $1572
	call _m3_fault
	.align 16
.L82:
	pushl %edi
	movl 4(%eax),%eax
	pushl %eax
	call m3_mod
	movl %eax,%ebx
	movl %ebx,%edx
	addl $8,%esp
.L83:
	testl %esi,%esi
	jne .L84
	pushl $1636
	call _m3_fault
	.align 16
.L84:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L85
	pushl $1636
	call _m3_fault
	.align 16
.L85:
	cmpl %ebx,4(%eax)
	ja .L86
	pushl $1634
	call _m3_fault
	.align 16
.L86:
	movl (%eax),%eax
	leal (%eax,%ebx,8),%eax
	movl %eax,-12(%ebp)
	cmpl %edi,(%eax)
	jne .L87
	movl $0,4(%eax)
	decl (%esi)
	jmp .L95
	.align 16
.L87:
	cmpl $0,4(%eax)
	je .L106
	incl %ebx
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L92
	pushl $1812
	call _m3_fault
	.align 16
.L92:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jge .L93
	xorl %ebx,%ebx
.L93:
	cmpl %edx,%ebx
	jne .L83
	jmp .L106
	.align 16
.L95:
	incl %ebx
	testl %esi,%esi
	jne .L96
	pushl $1924
	call _m3_fault
	.align 16
.L96:
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L97
	pushl $1924
	call _m3_fault
	.align 16
.L97:
	movl 4(%edx),%edi
	leal -1(%edi),%eax
	cmpl %ebx,%eax
	jge .L100
	xorl %ebx,%ebx
.L100:
	movl %edx,%eax
	cmpl %edi,%ebx
	jb .L101
	pushl $1938
	call _m3_fault
	.align 16
.L101:
	movl (%eax),%eax
	leal (%eax,%ebx,8),%eax
	movl %eax,-12(%ebp)
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L102
.L106:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L79
	.align 16
.L102:
	movl $0,4(%eax)
	decl (%esi)
	pushl %edx
	movl -12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	pushl %esi
	call MxMap__Insert
	addl $12,%esp
	jmp .L95
	.align 16
.L105:
.L79:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 MxMap__Delete,.Lfe7-MxMap__Delete
	.align 16
	.type	 MxMap__GetData,@function
MxMap__GetData:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L110
	movl 4(%eax),%eax
.L110:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 MxMap__GetData,.Lfe8-MxMap__GetData
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxMap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_MxMap
.data
	.align 4
	.type	 MM_MxMap,@object
	.size	 MM_MxMap,532
MM_MxMap:
	.long MM_MxMap+364
	.long MM_MxMap+44
	.long MM_MxMap+192
	.long MM_MxMap+180
	.zero	4
	.long MM_MxMap+264
	.zero	28
	.long -292819397
.byte 241
.byte 210
.byte 162
.byte 243
.byte 202
.byte 60
.byte 41
.byte 29
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_MxMap+501
	.long MM_MxMap+504
	.long MM_MxMap+507
	.zero	24
	.long MM_MxMap+516
	.long MM_MxMap+524
	.zero	4
	.long MxMap__Expand
	.long MxMap__New
	.long MxMap__Get
	.long MxMap__GetIndex
	.long MxMap__GetDirect
	.long MxMap__Insert
	.long MxMap__Delete
	.long MxMap__GetData
	.long 504358596
	.long -292819397
	.zero	4
	.long MM_MxMap+200
	.long 504358596
	.zero	4
	.long 8215259
	.ascii	"GetData"
	.zero	1
	.ascii	"Delete"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"Insert"
	.zero	1
	.ascii	"GetIndex"
	.zero	1
	.ascii	"GetDirect"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"New"
	.zero	1
	.long MxMap__GetData
	.long MM_MxMap+208
	.long MI_MxMap+276
	.long MxMap__Delete
	.long MM_MxMap+216
	.long MI_MxMap+168
	.long MxMap__Expand
	.long MM_MxMap+223
	.zero	4
	.long MxMap__Insert
	.long MM_MxMap+230
	.long MI_MxMap+164
	.long MxMap__GetIndex
	.long MM_MxMap+237
	.long MI_MxMap+156
	.long MxMap__GetDirect
	.long MM_MxMap+246
	.long MI_MxMap+160
	.long MxMap__Get
	.long MM_MxMap+256
	.long MI_MxMap+152
	.long MxMap__New
	.long MM_MxMap+260
	.long MI_MxMap+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxMap.m3"
	.zero	1
.byte 14
.byte 4
.byte 0
.byte 37
.byte 4
.byte 0
.byte 3
.byte 15
.byte 2
.byte 7
.byte 16
.byte 219
.byte 90
.byte 125
.byte 0
	.ascii	"MxMap.T"
	.zero	1
	.ascii	"MxMap.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
