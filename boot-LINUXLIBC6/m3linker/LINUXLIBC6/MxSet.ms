	.file	"MxSet.mc"
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
	.type	 MxSet__New,@function
MxSet__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_MxSet+280,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl $17
	movl MI_MxMap+44,%eax
	call *%eax
	movl %eax,(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxSet__New,.Lfe1-MxSet__New
	.align 16
	.type	 MxSet__Insert,@function
MxSet__Insert:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	testl %edi,%edi
	jne .L3
	pushl $484
	call _m3_fault
	.align 16
.L3:
	testl %esi,%esi
	jne .L4
	pushl $484
	call _m3_fault
	.align 16
.L4:
	movl (%esi),%eax
	pushl %eax
	movl (%edi),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L5
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxSet+292
	je .L5
	pushl $485
	call _m3_fault
	.align 16
.L5:
	movl %edx,%ebx
	testl %ebx,%ebx
	jne .L6
	movl MM_MxSet+288,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %esi,%esi
	jne .L7
	pushl $532
	call _m3_fault
	.align 16
.L7:
	movl (%esi),%eax
	movl %eax,(%edx)
	movl %edx,%ebx
	testl %edi,%edi
	jne .L8
	pushl $548
	call _m3_fault
	.align 16
.L8:
	testl %edx,%edx
	jne .L9
	pushl $548
	call _m3_fault
	.align 16
.L9:
	pushl %edx
	pushl %eax
	movl (%edi),%eax
	pushl %eax
	movl MI_MxMap+164,%eax
	call *%eax
	addl $12,%esp
.L6:
	testl %esi,%esi
	jne .L10
	pushl $580
	call _m3_fault
	.align 16
.L10:
	cmpb $0,8(%esi)
	je .L11
	testl %ebx,%ebx
	jne .L12
	pushl $596
	call _m3_fault
	.align 16
.L12:
	movl %esi,4(%ebx)
	jmp .L2
	.align 16
.L11:
	testl %ebx,%ebx
	jne .L14
	pushl $612
	call _m3_fault
	.align 16
.L14:
	movl %esi,8(%ebx)
.L2:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxSet__Insert,.Lfe2-MxSet__Insert
	.align 16
	.type	 MxSet__IsMember,@function
MxSet__IsMember:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	testl %edx,%edx
	jne .L16
	pushl $692
	call _m3_fault
	.align 16
.L16:
	testl %ebx,%ebx
	jne .L17
	pushl $692
	call _m3_fault
	.align 16
.L17:
	movl (%ebx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_MxMap+152,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L18
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxSet+292
	je .L18
	pushl $693
	call _m3_fault
	.align 16
.L18:
	testl %edx,%edx
	jne .L19
	movl %edx,%eax
	jmp .L24
	.align 16
.L19:
	testl %ebx,%ebx
	jne .L20
	pushl $740
	call _m3_fault
	.align 16
.L20:
	cmpb $0,8(%ebx)
	je .L23
	cmpl $0,4(%edx)
	setne %al
	jmp .L25
	.align 16
.L23:
	cmpl $0,8(%edx)
	setne %al
.L25:
	andl $255,%eax
.L24:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxSet__IsMember,.Lfe3-MxSet__IsMember
	.align 16
	.type	 MxSet__ToList,@function
MxSet__ToList:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L45
	movl (%eax),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
	testl %eax,%eax
	je .L45
	movl %esi,%edi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-8(%ebp)
	jmp .L31
	.align 16
.L32:
	cmpl $0,-4(%ebp)
	jne .L33
	pushl $932
	call _m3_fault
	.align 16
.L33:
	movl -4(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L34
	pushl $930
	call _m3_fault
	.align 16
.L34:
	movl (%eax),%eax
	movl 4(%eax,%edi,8),%edx
	testl %edx,%edx
	je .L35
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_MxSet+292
	je .L35
	pushl $933
	call _m3_fault
	.align 16
.L35:
	movl %edx,%ebx
	testl %edx,%edx
	je .L36
	cmpl $0,4(%edx)
	je .L40
	movl MM_MxSet+296,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	movl 4(%ebx),%eax
	movl %eax,(%edx)
	movl %esi,4(%edx)
	movl %edx,%esi
.L40:
	cmpl $0,8(%ebx)
	je .L36
	movl MM_MxSet+296,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	movl 8(%ebx),%eax
	movl %eax,(%edx)
	movl %esi,4(%edx)
	movl %edx,%esi
.L36:
	incl %edi
.L31:
	cmpl %edi,-8(%ebp)
	jge .L32
.L45:
	movl %esi,%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxSet__ToList,.Lfe4-MxSet__ToList
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxSet
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_MxSet
.data
	.align 4
	.type	 MM_MxSet,@object
	.size	 MM_MxSet,580
MM_MxSet:
	.long MM_MxSet+384
	.long MM_MxSet+44
	.long MM_MxSet+280
	.long MM_MxSet+268
	.zero	4
	.long MM_MxSet+332
	.zero	28
	.long -916008635
.byte 35
.byte 43
.byte 129
.byte 215
.byte 102
.byte 250
.byte 231
.byte 30
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	20
	.long MM_MxSet+552
	.long MM_MxSet+554
	.long MM_MxSet+556
	.zero	24
	.long MM_MxSet+564
	.long MM_MxSet+572
	.long MM_MxSet+148
	.zero	8
	.long 88909689
.byte 240
.byte 150
.byte 80
.byte 2
.byte 137
.byte 49
.byte 28
.byte 7
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	20
	.long MM_MxSet+521
	.long MM_MxSet+525
	.long MM_MxSet+529
	.zero	28
	.long MM_MxSet+541
	.zero	4
	.long MxSet__New
	.long MxSet__Insert
	.long MxSet__IsMember
	.long MxSet__ToList
	.long 1109077765
	.long -916008635
	.zero	4
	.long MM_MxSet+288
	.long 1109077765
	.long MM_MxSet+296
	.long 88909689
	.zero	4
	.long -1203380091
	.ascii	"ToList"
	.zero	1
	.ascii	"IsMember"
	.zero	1
	.ascii	"Insert"
	.zero	1
	.ascii	"New"
	.zero	2
	.long MxSet__ToList
	.long MM_MxSet+304
	.long MI_MxSet+56
	.long MxSet__IsMember
	.long MM_MxSet+311
	.long MI_MxSet+52
	.long MxSet__Insert
	.long MM_MxSet+320
	.long MI_MxSet+48
	.long MxSet__New
	.long MM_MxSet+327
	.long MI_MxSet+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxSet.m3"
	.zero	1
.byte 14
.byte 4
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 0
.byte 4
.byte 15
.byte 3
.byte 19
.byte 254
.byte 126
.byte 16
.byte 178
.byte 199
.byte 130
.byte 52
.byte 24
	.ascii	"MxSet.Pair"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 15
.byte 1
.byte 16
.byte 196
.byte 230
.byte 15
.byte 30
	.ascii	"LinkSet"
	.zero	1
	.ascii	"MxSet.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
