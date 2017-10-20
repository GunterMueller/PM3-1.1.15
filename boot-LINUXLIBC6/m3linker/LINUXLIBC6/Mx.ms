	.file	"Mx.mc"
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
	.type	 Mx__NewSet,@function
Mx__NewSet:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_Mx+52,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl $1009
	movl MI_MxMap+44,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L2
	pushl $244
	call _m3_fault
	.align 16
.L2:
	movl %eax,(%ebx)
	pushl $1009
	movl MI_MxMap+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,4(%ebx)
	pushl $39
	movl MI_MxMap+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,8(%ebx)
	pushl $39
	movl MI_MxMap+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,12(%ebx)
	pushl $7001
	movl MI_MxVSSet+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,16(%ebx)
	pushl $7001
	movl MI_MxVSSet+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,20(%ebx)
	pushl $7001
	movl MI_MxMap+44,%eax
	call *%eax
	movl %eax,24(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Mx__NewSet,.Lfe1-Mx__NewSet
	.align 16
	.type	 Mx__Contents,@function
Mx__Contents:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-4(%ebp)
	cmpl $0,8(%ebp)
	je .L10
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %edi,%edi
	jne .L12
	pushl $484
	call _m3_fault
	.align 16
.L12:
	movl -4(%ebp),%esi
	movl 4(%edi),%ecx
	decl %ecx
	movl %ecx,-8(%ebp)
	jmp .L13
	.align 16
.L14:
	testl %edi,%edi
	jne .L15
	pushl $500
	call _m3_fault
	.align 16
.L15:
	cmpl %esi,4(%edi)
	ja .L16
	pushl $498
	call _m3_fault
	.align 16
.L16:
	movl (%edi),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L17
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Mx+64
	je .L17
	pushl $501
	call _m3_fault
	.align 16
.L17:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L18
	movl MM_Mx+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl -4(%ebp),%ecx
	addl $4,%esp
	movl %ecx,4(%edx)
	movl %ebx,(%edx)
	movl %edx,-4(%ebp)
.L18:
	incl %esi
.L13:
	cmpl %esi,-8(%ebp)
	jge .L14
	cmpl $0,8(%ebp)
	jne .L20
	pushl $580
	call _m3_fault
	.align 16
.L20:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	movl MI_MxMap+276,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %eax,%eax
	jne .L21
	pushl $596
	call _m3_fault
	.align 16
.L21:
	xorl %esi,%esi
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-12(%ebp)
	jmp .L22
	.align 16
.L23:
	testl %edi,%edi
	jne .L24
	pushl $612
	call _m3_fault
	.align 16
.L24:
	movl %edi,%eax
	cmpl %esi,4(%eax)
	ja .L25
	pushl $610
	call _m3_fault
	.align 16
.L25:
	movl (%eax),%eax
	movl 4(%eax,%esi,8),%edx
	testl %edx,%edx
	je .L26
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_Mx+64
	je .L26
	pushl $613
	call _m3_fault
	.align 16
.L26:
	movl %edx,%ebx
	testl %ebx,%ebx
	je .L27
	movl MM_Mx+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl -4(%ebp),%ecx
	addl $4,%esp
	movl %ecx,4(%edx)
	movl %ebx,(%edx)
	movl %edx,-4(%ebp)
.L27:
	incl %esi
.L22:
	cmpl %esi,-12(%ebp)
	jge .L23
.L10:
	leal -24(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Mx__Contents,.Lfe2-Mx__Contents
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Mx
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_Mx
.data
	.align 4
	.type	 MM_Mx,@object
	.size	 MM_Mx,256
MM_Mx:
	.long MM_Mx+120
	.zero	4
	.long MM_Mx+52
	.zero	8
	.long MM_Mx+92
	.zero	20
	.long Mx__NewSet
	.long Mx__Contents
	.long MM_Mx+60
	.long 1596416914
	.long MM_Mx+68
	.long 880986034
	.zero	4
	.long -1203380091
	.ascii	"Contents"
	.zero	1
	.ascii	"NewSet"
	.zero	1
	.long Mx__Contents
	.long MM_Mx+76
	.long MI_Mx+152
	.long Mx__NewSet
	.long MM_Mx+85
	.long MI_Mx+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/Mx.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
