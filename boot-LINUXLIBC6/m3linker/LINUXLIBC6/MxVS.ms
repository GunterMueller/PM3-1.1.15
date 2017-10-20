	.file	"MxVS.mc"
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
	.type	 MxVS__Init,@function
MxVS__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	leal -12(%ebp),%esi
	pushl %ebx
	movl $1,MM_MxVS+148
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $2000,-4(%ebp)
	pushl %esi
	movl MM_MxVS+188,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_MxVS+152
	movl $2047,MM_MxVS+156
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $2048,-4(%ebp)
	pushl %esi
	movl MM_MxVS+196,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	leal -20(%ebp),%esp
	movl %eax,MM_MxVS+160
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxVS__Init,.Lfe1-MxVS__Init
	.align 16
	.type	 MxVS__Get,@function
MxVS__Get:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	jle .L3
	cmpl %edx,MM_MxVS+148
	jg .L4
.L3:
	pushl $512
	call _m3_fault
	.align 16
.L4:
	movl MM_MxVS+152,%eax
	testl %eax,%eax
	jne .L5
	pushl $532
	call _m3_fault
	.align 16
.L5:
	cmpl %edx,4(%eax)
	ja .L6
	pushl $530
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%ecx
	sall $4,%edx
	movl 12(%ebp),%ebx
	movl (%ecx,%edx),%eax
	movl %eax,(%ebx)
	movl 4(%ecx,%edx),%eax
	movl %eax,4(%ebx)
	movl 8(%ecx,%edx),%eax
	movl %eax,8(%ebx)
	movl 12(%ecx,%edx),%eax
	movl %eax,12(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxVS__Get,.Lfe2-MxVS__Get
	.align 16
	.type	 MxVS__Put,@function
MxVS__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxVS__Hash
	andl MM_MxVS+156,%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L8
	pushl $641
	call _m3_fault
	.align 16
.L8:
	movl %eax,%ebx
.L9:
	movl MM_MxVS+160,%eax
	testl %eax,%eax
	jne .L10
	pushl $708
	call _m3_fault
	.align 16
.L10:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L11
	pushl $706
	call _m3_fault
	.align 16
.L11:
	movl (%edx),%eax
	movl (%eax,%ebx,4),%esi
	testl %esi,%esi
	je .L13
	movl MM_MxVS+152,%eax
	testl %eax,%eax
	jne .L14
	pushl $740
	call _m3_fault
	.align 16
.L14:
	movl %eax,%edx
	cmpl %esi,4(%edx)
	ja .L15
	pushl $738
	call _m3_fault
	.align 16
.L15:
	movl %esi,%eax
	sall $4,%eax
	movl (%edx),%edx
	movl 8(%ebp),%ecx
	addl %eax,%edx
	movl (%ecx),%eax
	cmpl %eax,(%edx)
	jne .L16
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx)
	jne .L16
	movl 8(%ecx),%eax
	cmpl %eax,8(%edx)
	jne .L16
	movl 12(%ecx),%eax
	cmpl %eax,12(%edx)
	je .L26
.L16:
	incl %ebx
	movl MM_MxVS+160,%eax
	testl %eax,%eax
	jne .L17
	pushl $772
	call _m3_fault
	.align 16
.L17:
	cmpl %ebx,4(%eax)
	jg .L9
	xorl %ebx,%ebx
	jmp .L9
	.align 16
.L13:
	movl MM_MxVS+148,%esi
	leal 1(%esi),%edi
	movl %edi,MM_MxVS+148
	movl MM_MxVS+152,%eax
	testl %eax,%eax
	jne .L19
	pushl $852
	call _m3_fault
	.align 16
.L19:
	cmpl %esi,4(%eax)
	jg .L20
	call MxVS__ExpandInfo
.L20:
	movl MM_MxVS+160,%edi
	movl %edi,-4(%ebp)
	testl %edi,%edi
	jne .L21
	pushl $868
	call _m3_fault
	.align 16
.L21:
	movl -4(%ebp),%edi
	cmpl %ebx,4(%edi)
	ja .L22
	pushl $866
	call _m3_fault
	.align 16
.L22:
	movl -4(%ebp),%edi
	movl (%edi),%eax
	movl %esi,(%eax,%ebx,4)
	movl MM_MxVS+152,%eax
	testl %eax,%eax
	jne .L23
	pushl $884
	call _m3_fault
	.align 16
.L23:
	cmpl %esi,4(%eax)
	ja .L24
	pushl $882
	call _m3_fault
	.align 16
.L24:
	movl (%eax),%ebx
	movl %esi,%ecx
	movl 8(%ebp),%edx
	sall $4,%ecx
	movl (%edx),%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ebx,%ecx)
	movl MM_MxVS+148,%edi
	movl %edi,%eax
	addl %edi,%eax
	movl -4(%ebp),%edi
	cmpl %eax,4(%edi)
	jge .L26
	call MxVS__ExpandHashTable
.L26:
	movl %esi,%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxVS__Put,.Lfe3-MxVS__Put
	.align 16
	.type	 MxVS__ExpandInfo,@function
MxVS__ExpandInfo:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_MxVS+152,%eax
	testl %eax,%eax
	jne .L29
	pushl $1060
	call _m3_fault
	.align 16
.L29:
	movl 4(%eax),%esi
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,%edi
	addl %esi,%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_MxVS+188,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L30
	pushl $1092
	call _m3_fault
	.align 16
.L30:
	movl %esi,-16(%ebp)
	movl %esi,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L31
	pushl $1089
	call _m3_fault
	.align 16
.L31:
	movl (%ebx),%ecx
	movl %ecx,-20(%ebp)
	movl MM_MxVS+152,%edx
	testl %edx,%edx
	jne .L32
	pushl $1092
	call _m3_fault
	.align 16
.L32:
	cmpl %esi,4(%edx)
	je .L33
	pushl $1091
	call _m3_fault
	.align 16
.L33:
	movl %esi,%eax
	sall $4,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl %ecx
	call memmove
	leal -32(%ebp),%esp
	movl %ebx,MM_MxVS+152
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxVS__ExpandInfo,.Lfe4-MxVS__ExpandInfo
	.align 16
	.type	 MxVS__ExpandHashTable,@function
MxVS__ExpandHashTable:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_MxVS+160,%eax
	testl %eax,%eax
	jne .L35
	pushl $1188
	call _m3_fault
	.align 16
.L35:
	movl 4(%eax),%esi
	movl %esi,%ecx
	addl %esi,%ecx
	movl %ecx,-20(%ebp)
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_MxVS+196,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl MM_MxVS+156,%ecx
	movl %ecx,%eax
	addl %ecx,%eax
	incl %eax
	movl %eax,-16(%ebp)
	xorl %edx,%edx
	movl -20(%ebp),%edi
	decl %edi
	addl $8,%esp
	jmp .L36
	.align 16
.L37:
	testl %ebx,%ebx
	jne .L38
	pushl $1300
	call _m3_fault
	.align 16
.L38:
	cmpl %edx,4(%ebx)
	ja .L39
	pushl $1298
	call _m3_fault
	.align 16
.L39:
	movl (%ebx),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L36:
	cmpl %edi,%edx
	jle .L37
	xorl %edi,%edi
	decl %esi
	movl %esi,-24(%ebp)
	jmp .L41
	.align 16
.L42:
	movl MM_MxVS+160,%eax
	testl %eax,%eax
	jne .L43
	pushl $1348
	call _m3_fault
	.align 16
.L43:
	movl %eax,%edx
	cmpl %edi,4(%edx)
	ja .L44
	pushl $1346
	call _m3_fault
	.align 16
.L44:
	movl (%edx),%eax
	movl (%eax,%edi,4),%esi
	testl %esi,%esi
	je .L45
	movl MM_MxVS+152,%eax
	testl %eax,%eax
	jne .L46
	pushl $1380
	call _m3_fault
	.align 16
.L46:
	movl %eax,%edx
	cmpl %esi,4(%edx)
	ja .L47
	pushl $1378
	call _m3_fault
	.align 16
.L47:
	movl %esi,%eax
	sall $4,%eax
	addl (%edx),%eax
	pushl %eax
	call MxVS__Hash
	andl -16(%ebp),%eax
	addl $4,%esp
	jmp .L48
	.align 16
.L49:
	incl %eax
	cmpl %eax,-20(%ebp)
	jg .L48
	xorl %eax,%eax
.L48:
	testl %ebx,%ebx
	jne .L51
	pushl $1396
	call _m3_fault
	.align 16
.L51:
	cmpl %eax,4(%ebx)
	ja .L52
	pushl $1394
	call _m3_fault
	.align 16
.L52:
	movl (%ebx),%edx
	cmpl $0,(%edx,%eax,4)
	jne .L49
	movl %esi,(%edx,%eax,4)
.L45:
	incl %edi
.L41:
	cmpl %edi,-24(%ebp)
	jge .L42
	movl -16(%ebp),%ecx
	movl %ecx,MM_MxVS+156
	leal -36(%ebp),%esp
	movl %ebx,MM_MxVS+160
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxVS__ExpandHashTable,.Lfe5-MxVS__ExpandHashTable
	.align 16
	.type	 MxVS__Hash,@function
MxVS__Hash:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl (%edx),%eax
	leal (%eax,%eax,8),%ebx
	leal (%eax,%ebx,4),%ebx
	movl 4(%edx),%eax
	sall $4,%eax
	addl 4(%edx),%eax
	addl %eax,%ebx
	xorl %eax,%eax
	movb 8(%edx),%al
	leal (%eax,%eax,8),%ecx
	leal (%eax,%ecx,8),%ecx
	xorl %eax,%eax
	movb 9(%edx),%al
	leal (%eax,%eax,2),%edx
	leal (%eax,%edx,4),%edx
	leal 0(,%edx,8),%eax
	subl %edx,%eax
	addl %eax,%ecx
	leal (%ecx,%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxVS__Hash,.Lfe6-MxVS__Hash
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxVS
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_MxVS
.data
	.align 4
	.type	 MM_MxVS,@object
	.size	 MM_MxVS,516
MM_MxVS:
	.long MM_MxVS+334
	.long MM_MxVS+44
	.long MM_MxVS+188
	.zero	8
	.long MM_MxVS+252
	.zero	4
	.long MM_MxVS+328
	.long MM_MxVS+328
	.zero	16
	.long -1578084040
.byte 24
.byte 85
.byte 18
.byte 179
.byte 32
.byte 12
.byte 226
.byte 18
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 16
	.zero	4
	.long MM_MxVS+470
	.zero	4
	.long MM_MxVS+480
	.zero	28
	.long MM_MxVS+499
	.zero	20
	.long MxVS__ExpandInfo
	.long MxVS__ExpandHashTable
	.long MxVS__Hash
	.long MxVS__Init
	.long MxVS__Get
	.long MxVS__Put
	.long MM_MxVS+196
	.long -1578084040
	.zero	4
	.long 562018850
	.ascii	"Hash"
	.zero	1
	.ascii	"ExpandHashTable"
	.zero	1
	.ascii	"ExpandInfo"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Init"
	.zero	4
	.long MxVS__Hash
	.long MM_MxVS+204
	.zero	4
	.long MxVS__ExpandHashTable
	.long MM_MxVS+209
	.zero	4
	.long MxVS__ExpandInfo
	.long MM_MxVS+225
	.zero	4
	.long MxVS__Put
	.long MM_MxVS+236
	.long MI_MxVS+52
	.long MxVS__Get
	.long MM_MxVS+240
	.long MI_MxVS+48
	.long MxVS__Init
	.long MM_MxVS+244
	.long MI_MxVS+44
	.zero	4
.byte 42
.byte 152
.byte 4
.byte 37
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxVS.m3"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 14
.byte 1
.byte 16
.byte 26
.byte 8
.byte 0
.byte 0
.byte 8
.byte 11
.byte 1
.byte 15
.byte 3
.byte 19
.byte 254
.byte 126
.byte 24
.byte 15
.byte 1
.byte 1
.byte 8
.byte 12
.byte 8
.byte 19
.byte 0
.byte 65
.byte 255
	.ascii	"MxVS.InfoBuffer"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
