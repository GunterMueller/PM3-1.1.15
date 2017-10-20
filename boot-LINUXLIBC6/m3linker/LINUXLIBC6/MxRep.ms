	.file	"MxRep.mc"
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
	.type	 MxRep__UnitName,@function
MxRep__UnitName:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L3
	movl $MM_MxRep+112,%eax
	jmp .L5
	.align 16
.L3:
	movl (%ebx),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%edx
	xorl %eax,%eax
	movb 8(%ebx),%al
	addl $4,%esp
	movl MM_MxRep+52(,%eax,4),%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
.L5:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxRep__UnitName,.Lfe1-MxRep__UnitName
	.align 16
	.type	 MxRep__GetVirtualUnit,@function
MxRep__GetVirtualUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	testl %edi,%edi
	jne .L7
	pushl $388
	call _m3_fault
	.align 16
.L7:
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%edi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L8
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L8
	pushl $389
	call _m3_fault
	.align 16
.L8:
	movl %edx,%ebx
	testl %edi,%edi
	jne .L9
	pushl $404
	call _m3_fault
	.align 16
.L9:
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 12(%edi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L10
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+140
	je .L10
	pushl $405
	call _m3_fault
	.align 16
.L10:
	movl %edx,%esi
	cmpl $0,MM_MxRep+44
	jne .L11
	movl MM_MxRep+144,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	movl $MM_MxRep+156,(%edx)
	movb $0,4(%edx)
	movl %edx,MM_MxRep+44
.L11:
	testl %ebx,%ebx
	jne .L12
	movl MM_MxRep+128,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $4,%esp
	movb $1,8(%edx)
	movl 12(%ebp),%ecx
	movl %ecx,(%edx)
	movl MM_MxRep+44,%eax
	movl %eax,4(%edx)
	movb $1,9(%edx)
	testl %edi,%edi
	jne .L13
	pushl $532
	call _m3_fault
	.align 16
.L13:
	pushl %ebx
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%edi),%eax
	pushl %eax
	movl MI_MxMap+164,%eax
	call *%eax
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $20,-4(%ebp)
	pushl %eax
	movl MM_MxRep+176,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	addl $20,%esp
	testl %ebx,%ebx
	jne .L14
	pushl $548
	call _m3_fault
	.align 16
.L14:
	movl %edx,124(%ebx)
.L12:
	testl %esi,%esi
	jne .L15
	movl MI_MxSet+44,%eax
	call *%eax
	movl %eax,%esi
	testl %edi,%edi
	jne .L16
	pushl $612
	call _m3_fault
	.align 16
.L16:
	pushl %esi
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 12(%edi),%eax
	pushl %eax
	movl MI_MxMap+164,%eax
	call *%eax
	addl $12,%esp
.L15:
	movl 16(%ebp),%ecx
	pushl %ecx
	pushl %esi
	movl MI_MxSet+48,%eax
	call *%eax
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxRep__GetVirtualUnit,.Lfe2-MxRep__GetVirtualUnit
	.align 16
	.type	 MxRep__GetStamp,@function
MxRep__GetStamp:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	movl 16(%ebp),%edi
	movl 24(%ebp),%ebx
	pushl %edi
	pushl %eax
	movl MI_MxVSSet+48,%eax
	call *%eax
	movl %eax,(%ebx)
	addl $8,%esp
	testl %eax,%eax
	je .L17
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_MxVS+48,%eax
	call *%eax
	addl $8,%esp
	testl %esi,%esi
	jne .L19
	pushl $1108
	call _m3_fault
	.align 16
.L19:
	movl -16(%ebp),%eax
	pushl %eax
	movl (%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L20
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L20
	pushl $1109
	call _m3_fault
	.align 16
.L20:
	movl 20(%ebp),%ecx
	movl %edx,(%ecx)
	testl %edx,%edx
	jne .L17
	testl %esi,%esi
	jne .L22
	pushl $1124
	call _m3_fault
	.align 16
.L22:
	movl -16(%ebp),%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L23
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L23
	pushl $1125
	call _m3_fault
	.align 16
.L23:
	movl 20(%ebp),%ecx
	movl %edx,(%ecx)
.L17:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxRep__GetStamp,.Lfe3-MxRep__GetStamp
	.align 16
	.type	 MxRep__GetExportedObject,@function
MxRep__GetExportedObject:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%ebp),%edi
	movl 12(%ebp),%ebx
	movl %edx,(%edi)
	movl 20(%ebp),%ecx
	movl %edx,(%ecx)
	testl %ebx,%ebx
	jne .L25
	pushl $1332
	call _m3_fault
	.align 16
.L25:
	cmpb $0,29(%ebx)
	je .L26
	testl %esi,%esi
	jne .L28
	pushl $1348
	call _m3_fault
	.align 16
.L28:
	movl 4(%ebx),%eax
	pushl %eax
	movl 4(%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L33
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L33
	pushl $1349
	call _m3_fault
	.align 16
.L26:
	testl %esi,%esi
	jne .L32
	pushl $1364
	call _m3_fault
	.align 16
.L32:
	movl 4(%ebx),%eax
	pushl %eax
	movl (%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L33
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L33
	pushl $1365
	call _m3_fault
	.align 16
.L33:
	movl %edx,%eax
	testl %eax,%eax
	jne .L49
	testl %esi,%esi
	jne .L35
	pushl $1396
	call _m3_fault
	.align 16
.L35:
	testl %ebx,%ebx
	jne .L36
	pushl $1396
	call _m3_fault
	.align 16
.L36:
	movl 4(%ebx),%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L37
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L37
	pushl $1397
	call _m3_fault
	.align 16
.L37:
	movl %edx,%eax
	testl %eax,%eax
	je .L24
.L49:
	movl %eax,(%edi)
	testl %eax,%eax
	jne .L39
	pushl $1460
	call _m3_fault
	.align 16
.L39:
	movl 116(%eax),%edx
	jmp .L40
	.align 16
.L41:
	testl %ebx,%ebx
	jne .L43
	pushl $1492
	call _m3_fault
	.align 16
.L43:
	movl 8(%ebx),%eax
	cmpl %eax,8(%edx)
	jne .L44
	movb 29(%edx),%al
	cmpb %al,29(%ebx)
	jne .L44
	movl 20(%ebp),%ecx
	movl %edx,(%ecx)
	jmp .L24
	.align 16
.L44:
	testl %edx,%edx
	jne .L47
	pushl $1556
	call _m3_fault
	.align 16
.L47:
	movl (%edx),%edx
.L40:
	testl %edx,%edx
	jne .L41
.L24:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxRep__GetExportedObject,.Lfe4-MxRep__GetExportedObject
	.align 16
	.type	 MxRep__GetExportedRevelation,@function
MxRep__GetExportedRevelation:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%ebp),%edi
	movl 12(%ebp),%ebx
	movl %edx,(%edi)
	movl 20(%ebp),%ecx
	movl %edx,(%ecx)
	testl %esi,%esi
	jne .L51
	pushl $1764
	call _m3_fault
	.align 16
.L51:
	testl %ebx,%ebx
	jne .L52
	pushl $1764
	call _m3_fault
	.align 16
.L52:
	movl (%ebx),%eax
	pushl %eax
	movl (%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L53
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L53
	pushl $1765
	call _m3_fault
	.align 16
.L53:
	movl %edx,%eax
	testl %eax,%eax
	jne .L72
	testl %esi,%esi
	jne .L55
	pushl $1780
	call _m3_fault
	.align 16
.L55:
	testl %ebx,%ebx
	jne .L56
	pushl $1780
	call _m3_fault
	.align 16
.L56:
	movl (%ebx),%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L57
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxRep+132
	je .L57
	pushl $1781
	call _m3_fault
	.align 16
.L57:
	movl %edx,%eax
	testl %eax,%eax
	je .L50
.L72:
	movl %eax,(%edi)
	testl %eax,%eax
	jne .L59
	pushl $1844
	call _m3_fault
	.align 16
.L59:
	movl 120(%eax),%edx
	jmp .L60
	.align 16
.L61:
	cmpb $0,17(%edx)
	je .L63
	testl %ebx,%ebx
	jne .L65
	pushl $1876
	call _m3_fault
	.align 16
.L65:
	movl 4(%ebx),%eax
	cmpl %eax,4(%edx)
	jne .L63
	movl 8(%ebx),%eax
	cmpl %eax,8(%edx)
	jne .L63
	movb 16(%edx),%al
	cmpb %al,16(%ebx)
	jne .L63
	movl 20(%ebp),%ecx
	movl %edx,(%ecx)
	jmp .L50
	.align 16
.L63:
	testl %edx,%edx
	jne .L70
	pushl $1988
	call _m3_fault
	.align 16
.L70:
	movl 12(%edx),%edx
.L60:
	testl %edx,%edx
	jne .L61
.L50:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxRep__GetExportedRevelation,.Lfe5-MxRep__GetExportedRevelation
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxRep
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_MxRep
.data
	.align 4
	.type	 MM_MxRep,@object
	.size	 MM_MxRep,468
MM_MxRep:
	.long MM_MxRep+328
	.zero	4
	.long MM_MxRep+128
	.zero	8
	.long MM_MxRep+260
	.zero	4
	.long MM_MxRep+324
	.long MM_MxRep+324
	.zero	12
	.long MxRep__UnitName
	.long MM_MxRep+64
	.long MM_MxRep+80
	.long 2
	.long MM_MxRep+72
	.long 4
	.ascii	".m3"
	.zero	1
	.long 2
	.long MM_MxRep+88
	.long 4
	.ascii	".i3"
	.zero	1
	.long MxRep__GetVirtualUnit
	.long MxRep__GetStamp
	.long MxRep__GetExportedObject
	.long MxRep__GetExportedRevelation
	.long 2
	.long MM_MxRep+120
	.long 6
	.ascii	"<NIL>"
	.zero	3
	.long MM_MxRep+136
	.long 880986034
	.long MM_MxRep+144
	.long 1109077765
	.long MM_MxRep+176
	.long 314313739
	.long 2
	.long MM_MxRep+164
	.long 10
	.ascii	"*virtual*"
	.zero	7
	.long 562018850
	.ascii	"GetExportedRevelation"
	.zero	1
	.ascii	"GetExportedObject"
	.zero	1
	.ascii	"GetStamp"
	.zero	1
	.ascii	"GetVirtualUnit"
	.zero	1
	.ascii	"UnitName"
	.zero	4
	.long MxRep__GetExportedRevelation
	.long MM_MxRep+184
	.long MI_MxRep+164
	.long MxRep__GetExportedObject
	.long MM_MxRep+206
	.long MI_MxRep+160
	.long MxRep__GetStamp
	.long MM_MxRep+224
	.long MI_MxRep+156
	.long MxRep__GetVirtualUnit
	.long MM_MxRep+233
	.long MI_MxRep+152
	.long MxRep__UnitName
	.long MM_MxRep+248
	.long MI_MxRep+148
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxRep.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
