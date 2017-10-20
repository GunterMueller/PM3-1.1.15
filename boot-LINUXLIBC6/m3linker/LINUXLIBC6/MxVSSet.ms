	.file	"MxVSSet.mc"
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
	.type	 MxVSSet__New,@function
MxVSSet__New:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_MxVSSet+180,%eax
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
	movl MM_MxVSSet+188,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L4
	pushl $340
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
	.size	 MxVSSet__New,.Lfe1-MxVSSet__New
	.align 16
	.type	 MxVSSet__Get,@function
MxVSSet__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%edx
.L6:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -32(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_MxVS+48,%eax
	call *%eax
	addl $8,%esp
	testl %edi,%edi
	jne .L7
	pushl $468
	call _m3_fault
	.align 16
.L7:
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L8
	pushl $468
	call _m3_fault
	.align 16
.L8:
	movl -28(%ebp),%eax
	sall $4,%eax
	addl -28(%ebp),%eax
	xorl -32(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call m3_mod
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ebx
	addl $8,%esp
.L9:
	testl %edi,%edi
	jne .L10
	pushl $516
	call _m3_fault
	.align 16
.L10:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L11
	pushl $516
	call _m3_fault
	.align 16
.L11:
	cmpl %ebx,4(%eax)
	ja .L12
	pushl $514
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%esi
	testl %esi,%esi
	je .L21
	leal -16(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_MxVS+48,%eax
	call *%eax
	movl -28(%ebp),%eax
	addl $8,%esp
	cmpl %eax,-12(%ebp)
	jne .L14
	movl -32(%ebp),%eax
	cmpl %eax,-16(%ebp)
	jne .L14
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
	jmp .L5
	.align 16
.L14:
	incl %ebx
	testl %edi,%edi
	jne .L15
	pushl $612
	call _m3_fault
	.align 16
.L15:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L16
	pushl $612
	call _m3_fault
	.align 16
.L16:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jge .L17
	xorl %ebx,%ebx
.L17:
	cmpl %ebx,-44(%ebp)
	jne .L9
.L21:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L20:
.L5:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxVSSet__Get,.Lfe2-MxVSSet__Get
	.align 16
	.type	 MxVSSet__Insert,@function
MxVSSet__Insert:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L23:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -32(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%ecx
	pushl %ecx
	movl MI_MxVS+48,%eax
	call *%eax
	addl $8,%esp
	testl %esi,%esi
	jne .L24
	pushl $756
	call _m3_fault
	.align 16
.L24:
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L25
	pushl $756
	call _m3_fault
	.align 16
.L25:
	movl -28(%ebp),%eax
	sall $4,%eax
	addl -28(%ebp),%eax
	xorl -32(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call m3_mod
	movl %eax,%edi
	movl %edi,%ebx
	addl $8,%esp
.L26:
	testl %esi,%esi
	jne .L27
	pushl $804
	call _m3_fault
	.align 16
.L27:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L28
	pushl $804
	call _m3_fault
	.align 16
.L28:
	cmpl %ebx,4(%eax)
	ja .L29
	pushl $802
	call _m3_fault
	.align 16
.L29:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%edx
	testl %edx,%edx
	jne .L30
	movl 12(%ebp),%ecx
	movl %ecx,(%eax,%ebx,4)
	movl (%esi),%eax
	incl %eax
	movl %eax,(%esi)
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L37
	pushl $884
	call _m3_fault
	.align 16
.L37:
	addl %eax,%eax
	cmpl %eax,4(%edx)
	jge .L49
	pushl %esi
	call MxVSSet__Expand
	jmp .L49
	.align 16
.L30:
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_MxVS+48,%eax
	call *%eax
	movl -28(%ebp),%eax
	addl $8,%esp
	cmpl %eax,-12(%ebp)
	jne .L39
	movl -32(%ebp),%eax
	cmpl %eax,-16(%ebp)
	jne .L39
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L41
	pushl $996
	call _m3_fault
	.align 16
.L41:
	cmpl %ebx,4(%eax)
	ja .L42
	pushl $994
	call _m3_fault
	.align 16
.L42:
	movl (%eax),%eax
	movl 12(%ebp),%ecx
	movl %ecx,(%eax,%ebx,4)
.L49:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L22
	.align 16
.L39:
	incl %ebx
	testl %esi,%esi
	jne .L43
	pushl $1060
	call _m3_fault
	.align 16
.L43:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L44
	pushl $1060
	call _m3_fault
	.align 16
.L44:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jge .L45
	xorl %ebx,%ebx
.L45:
	cmpl %edi,%ebx
	jne .L26
	pushl %esi
	call MxVSSet__Expand
	addl $4,%esp
	jmp .L26
	.align 16
.L48:
.L22:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxVSSet__Insert,.Lfe3-MxVSSet__Insert
	.align 16
	.type	 MxVSSet__Expand,@function
MxVSSet__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L51
	pushl $1156
	call _m3_fault
	.align 16
.L51:
	movl 8(%ebp),%edx
	movl 4(%edx),%edi
	testl %edi,%edi
	jne .L52
	pushl $1172
	call _m3_fault
	.align 16
.L52:
	movl 4(%edi),%ebx
	movl 8(%ebp),%edx
	leal -12(%ebp),%eax
	movl $0,(%edx)
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%edx
	addl %ebx,%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_MxVSSet+188,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	addl $8,%esp
	movl 8(%ebp),%edx
	xorl %esi,%esi
	decl %ebx
	movl %eax,4(%edx)
	jmp .L55
	.align 16
.L56:
	testl %edi,%edi
	jne .L57
	pushl $1268
	call _m3_fault
	.align 16
.L57:
	movl %edi,%eax
	cmpl %esi,4(%eax)
	ja .L58
	pushl $1266
	call _m3_fault
	.align 16
.L58:
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	testl %eax,%eax
	je .L59
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call MxVSSet__Insert
	addl $8,%esp
.L59:
	incl %esi
.L55:
	cmpl %ebx,%esi
	jle .L56
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxVSSet__Expand,.Lfe4-MxVSSet__Expand
	.align 16
	.type	 MxVSSet__GetData,@function
MxVSSet__GetData:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L64
	movl 4(%eax),%eax
.L64:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxVSSet__GetData,.Lfe5-MxVSSet__GetData
	.align 16
	.type	 _INITM_MxVSSet,@function
_INITM_MxVSSet:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 _INITM_MxVSSet,.Lfe6-_INITM_MxVSSet
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxVSSet
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_MxVSSet
.data
	.align 4
	.type	 MM_MxVSSet,@object
	.size	 MM_MxVSSet,496
MM_MxVSSet:
	.long MM_MxVSSet+320
	.long MM_MxVSSet+44
	.long MM_MxVSSet+180
	.long MM_MxVSSet+168
	.zero	4
	.long MM_MxVSSet+244
	.zero	16
	.long _INITM_MxVSSet
	.zero	8
	.long 1689711219
.byte 88
.byte 108
.byte 172
.byte 98
.byte 43
.byte 158
.byte 26
.byte 6
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_MxVSSet+459
	.long MM_MxVSSet+462
	.long MM_MxVSSet+465
	.zero	24
	.long MM_MxVSSet+474
	.long MM_MxVSSet+484
	.zero	4
	.long MxVSSet__Expand
	.long MxVSSet__New
	.long MxVSSet__Get
	.long MxVSSet__Insert
	.long MxVSSet__GetData
	.long -33412827
	.long 1689711219
	.zero	4
	.long MM_MxVSSet+188
	.long -33412827
	.zero	4
	.long 562018850
	.ascii	"_INITM_MxVSSet"
	.zero	1
	.ascii	"GetData"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"Insert"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"New"
	.zero	4
	.long _INITM_MxVSSet
	.long MM_MxVSSet+196
	.zero	4
	.long MxVSSet__GetData
	.long MM_MxVSSet+211
	.long MI_MxVSSet+56
	.long MxVSSet__Expand
	.long MM_MxVSSet+219
	.zero	4
	.long MxVSSet__Insert
	.long MM_MxVSSet+226
	.long MI_MxVSSet+52
	.long MxVSSet__Get
	.long MM_MxVSSet+233
	.long MI_MxVSSet+48
	.long MxVSSet__New
	.long MM_MxVSSet+237
	.long MI_MxVSSet+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxVSSet.m3"
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
.byte 34
.byte 186
.byte 127
.byte 33
	.ascii	"MxVSMap.T"
	.zero	1
	.ascii	"MxVSSet.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
