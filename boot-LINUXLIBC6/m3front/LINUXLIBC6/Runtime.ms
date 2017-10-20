	.file	"Runtime.mc"
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
	.type	 Runtime__Reset,@function
Runtime__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Runtime+128
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Runtime__Reset,.Lfe1-Runtime__Reset
	.align 16
	.type	 Runtime__Import,@function
Runtime__Import:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_Runtime+128,%ebx
	testl %ebx,%ebx
	jne .L2
	pushl %ebx
	pushl $MM_Runtime+636
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Runtime+132
	pushl %ebx
	pushl $MM_Runtime+656
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,MM_Runtime+136
	pushl $1
	movl MM_Runtime+132,%eax
	pushl %eax
	movl MI_Module+52,%eax
	call *%eax
	movl %eax,MM_Runtime+128
	movl %ebx,%eax
.L4:
	movl $0,MM_Runtime+140(,%eax,4)
	incl %eax
	cmpl $14,%eax
	jle .L4
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Runtime__Import,.Lfe2-Runtime__Import
	.align 16
	.type	 Runtime__Bind,@function
Runtime__Bind:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl MM_Runtime+132,%eax
	cmpl %eax,12(%edx)
	jne .L8
	movl MI_Module+72,%eax
	call *%eax
	testl %eax,%eax
	je .L8
	movl $0,(%ebx)
	movl $0,(%esi)
	jmp .L7
	.align 16
.L8:
	movl MM_Runtime+128,%eax
	movl %eax,(%ebx)
	movl MM_Runtime+136,%eax
	movl %eax,(%esi)
.L7:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Runtime__Bind,.Lfe3-Runtime__Bind
	.align 16
	.type	 Runtime__LookUpProc,@function
Runtime__LookUpProc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %eax,%eax
	movb 8(%ebp),%al
	xorl %ebx,%ebx
	movb MM_Runtime+104(%eax),%bl
	movl MM_Runtime+140(,%ebx,4),%eax
	cmpl $0,MM_Runtime+128
	jne .L11
	pushl $1184
	call _m3_fault
	.align 16
.L11:
	testl %eax,%eax
	jne .L12
	pushl %eax
	movl MM_Runtime+44(,%ebx,4),%eax
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	call Runtime__LookUpNewProc
	movl %eax,MM_Runtime+140(,%ebx,4)
.L12:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Runtime__LookUpProc,.Lfe4-Runtime__LookUpProc
	.align 16
	.type	 Runtime__LookUpNewProc,@function
Runtime__LookUpNewProc:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	pushl %eax
	call Runtime__LookUp
	movl %eax,%ebx
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $8,%esp
	cmpb $4,%al
	je .L14
	xorl %eax,%eax
	jmp .L22
	.align 16
.L14:
	pushl %ebx
	movl MI_Value+60,%eax
	call *%eax
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L15
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Runtime+680
	jg .L16
	movl MM_Runtime+676,%eax
	cmpl %edx,4(%eax)
	jge .L15
.L16:
	pushl $1525
	call _m3_fault
	.align 16
.L15:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Procedure+80,%eax
	call *%eax
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L17
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_CG+168,%eax
	call *%eax
	addl $8,%esp
	jmp .L18
	.align 16
.L17:
	movl -8(%ebp),%edx
	testl %edx,%edx
	je .L18
	movl -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_CG+172,%eax
	call *%eax
	addl $12,%esp
.L18:
	testl %ebx,%ebx
	je .L20
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Runtime+680
	jg .L21
	movl MM_Runtime+676,%eax
	cmpl %edx,4(%eax)
	jge .L20
.L21:
	pushl $1621
	call _m3_fault
	.align 16
.L20:
	movl %ebx,%eax
.L22:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Runtime__LookUpNewProc,.Lfe5-Runtime__LookUpNewProc
	.align 16
	.type	 Runtime__LookUp,@function
Runtime__LookUp:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl %ebx,%esi
	movl MM_Runtime+128,%eax
	testl %eax,%eax
	je .L28
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L26
	pushl $1
	pushl %edi
	pushl %eax
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
.L26:
	testl %ebx,%ebx
	jne .L27
	movl MM_Runtime+132,%eax
	movl %eax,-8(%ebp)
	movl %edi,-4(%ebp)
	pushl $MM_Runtime+688
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
.L27:
	movl MI_Scope+68,%eax
	call *%eax
	pushl %esi
	pushl %edi
	pushl %eax
	movl MI_Scope+76,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	testl %esi,%esi
	je .L28
	pushl %ebx
	pushl %esi
	movl MI_Procedure+72,%eax
	call *%eax
	testl %eax,%eax
	je .L28
	movl %esi,%ebx
.L28:
	movl %ebx,%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Runtime__LookUp,.Lfe6-Runtime__LookUp
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Runtime
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_Runtime
.data
	.align 4
	.type	 MM_Runtime,@object
	.size	 MM_Runtime,1004
MM_Runtime:
	.long MM_Runtime+861
	.zero	4
	.long MM_Runtime+676
	.zero	8
	.long MM_Runtime+776
	.zero	4
	.long MM_Runtime+852
	.long MM_Runtime+852
	.zero	8
	.long MM_Runtime+228
	.long MM_Runtime+248
	.long MM_Runtime+272
	.long MM_Runtime+296
	.long MM_Runtime+320
	.long MM_Runtime+344
	.long MM_Runtime+368
	.long MM_Runtime+388
	.long MM_Runtime+412
	.long MM_Runtime+444
	.long MM_Runtime+476
	.long MM_Runtime+508
	.long MM_Runtime+548
	.long MM_Runtime+580
	.long MM_Runtime+612
.byte 0
.byte 1
.byte 2
.byte 3
.byte 4
.byte 5
.byte 6
.byte 7
.byte 8
.byte 9
.byte 10
.byte 11
.byte 12
.byte 13
.byte 14
.byte 14
.byte 14
.byte 14
.byte 14
.byte 14
.byte 14
.byte 14
.byte 14
	.zero	73
	.long Runtime__LookUpNewProc
	.long Runtime__LookUp
	.long Runtime__Import
	.long Runtime__Bind
	.long Runtime__LookUpProc
	.long Runtime__Reset
	.long 2
	.long MM_Runtime+236
	.long 6
	.ascii	"Raise"
	.zero	3
	.long 2
	.long MM_Runtime+256
	.long 12
	.ascii	"ResumeRaise"
	.zero	1
	.long 2
	.long MM_Runtime+280
	.long 11
	.ascii	"PushEFrame"
	.zero	2
	.long 2
	.long MM_Runtime+304
	.long 10
	.ascii	"PopEFrame"
	.zero	3
	.long 2
	.long MM_Runtime+328
	.long 10
	.ascii	"LockMutex"
	.zero	3
	.long 2
	.long MM_Runtime+352
	.long 12
	.ascii	"UnlockMutex"
	.zero	1
	.long 2
	.long MM_Runtime+376
	.long 7
	.ascii	"Concat"
	.zero	2
	.long 2
	.long MM_Runtime+396
	.long 9
	.ascii	"Allocate"
	.zero	4
	.long 2
	.long MM_Runtime+420
	.long 18
	.ascii	"AllocateOpenArray"
	.zero	3
	.long 2
	.long MM_Runtime+452
	.long 20
	.ascii	"AllocateUntracedObj"
	.zero	1
	.long 2
	.long MM_Runtime+484
	.long 20
	.ascii	"AllocateUntracedRef"
	.zero	1
	.long 2
	.long MM_Runtime+516
	.long 26
	.ascii	"AllocateUntracedOpenArray"
	.zero	3
	.long 2
	.long MM_Runtime+556
	.long 19
	.ascii	"DisposeUntracedRef"
	.zero	2
	.long 2
	.long MM_Runtime+588
	.long 19
	.ascii	"DisposeUntracedObj"
	.zero	2
	.long 2
	.long MM_Runtime+620
	.long 12
	.ascii	"ReportFault"
	.zero	1
	.long 2
	.long MM_Runtime+644
	.long 8
	.ascii	"RTHooks"
	.zero	1
	.long 2
	.long MM_Runtime+664
	.long 12
	.ascii	"__RTHooks__"
	.zero	5
	.long -712670126
	.long 2
	.long MM_Runtime+696
	.long 28
	.ascii	"undefined runtime symbol !!"
	.zero	1
	.ascii	"LookUp"
	.zero	1
	.ascii	"LookUpNewProc"
	.zero	1
	.ascii	"LookUpProc"
	.zero	1
	.ascii	"Bind"
	.zero	1
	.ascii	"Import"
	.zero	1
	.ascii	"Reset"
	.zero	3
	.long Runtime__LookUp
	.long MM_Runtime+724
	.zero	4
	.long Runtime__LookUpNewProc
	.long MM_Runtime+731
	.zero	4
	.long Runtime__LookUpProc
	.long MM_Runtime+745
	.long MI_Runtime+52
	.long Runtime__Bind
	.long MM_Runtime+756
	.long MI_Runtime+48
	.long Runtime__Import
	.long MM_Runtime+761
	.long MI_Runtime+44
	.long Runtime__Reset
	.long MM_Runtime+768
	.long MI_Runtime+56
	.zero	4
.byte 42
.byte 128
.byte 4
.byte 41
.byte 1
.byte 4
.byte 26
.byte 15
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Runtime.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
