	.file	"RTProcess.mc"
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
	.type	 RTProcess__RegisterExitor,@function
RTProcess__RegisterExitor:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_RTProcess+176,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %ebx,%ebx
	je .L2
	cmpl $-1,(%ebx)
	jne .L2
	pushl $453
	call _m3_fault
	.align 16
.L2:
	movl %ebx,(%eax)
	movl MM_RTProcess+148,%eax
	movl %eax,4(%edx)
	movl %edx,MM_RTProcess+148
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTProcess__RegisterExitor,.Lfe1-RTProcess__RegisterExitor
	.align 16
	.type	 RTProcess__InvokeExitors,@function
RTProcess__InvokeExitors:
	pushl %ebp
	movl %esp,%ebp
	jmp .L5
	.align 16
.L6:
	movl 4(%edx),%eax
	movl %eax,MM_RTProcess+148
	movl (%edx),%eax
	call *%eax
.L5:
	movl MM_RTProcess+148,%edx
	testl %edx,%edx
	jne .L6
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTProcess__InvokeExitors,.Lfe2-RTProcess__InvokeExitors
	.align 16
	.type	 RTProcess__Exit,@function
RTProcess__Exit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	call RTProcess__InvokeExitors
	pushl %ebx
	movl MI_RTOS+44,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTProcess__Exit,.Lfe3-RTProcess__Exit
	.align 16
	.type	 RTProcess__Crash,@function
RTProcess__Crash:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L12
	pushl $MM_RTProcess+188
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTProcess+208
	movl MI_RTIO+56,%eax
	call *%eax
	addl $12,%esp
.L12:
	movl MI_RTException+364,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	call RTProcess__InvokeExitors
	movl MI_RTHeapRep+412,%eax
	call *%eax
	movl MI_RTOS+48,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTProcess__Crash,.Lfe4-RTProcess__Crash
	.align 16
	.type	 RTProcess__OnInterrupt,@function
RTProcess__OnInterrupt:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTProcess+152,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L14
	cmpl $-1,(%edx)
	jne .L14
	pushl $1221
	call _m3_fault
	.align 16
.L14:
	movl %edx,MM_RTProcess+152
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTProcess__OnInterrupt,.Lfe5-RTProcess__OnInterrupt
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTProcess
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_RTProcess
.data
	.align 4
	.type	 MM_RTProcess,@object
	.size	 MM_RTProcess,528
MM_RTProcess:
	.long MM_RTProcess+336
	.long MM_RTProcess+44
	.long MM_RTProcess+176
	.zero	8
	.long MM_RTProcess+272
	.zero	28
	.long -950994739
.byte 130
.byte 164
.byte 121
.byte 206
.byte 79
.byte 92
.byte 41
.byte 9
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_RTProcess+490
	.zero	32
	.long MM_RTProcess+493
	.long MM_RTProcess+510
	.zero	12
	.long RTProcess__RegisterExitor
	.long RTProcess__Exit
	.long RTProcess__Crash
	.long RTProcess__InvokeExitors
	.long RTProcess__OnInterrupt
	.zero	4
	.long -950994739
	.long 2
	.long MM_RTProcess+196
	.long 6
	.ascii	"\n*** "
	.zero	3
	.long 2
	.long MM_RTProcess+216
	.long 2
	.ascii	"\n"
	.zero	3
	.ascii	"OnInterrupt"
	.zero	1
	.ascii	"Crash"
	.zero	1
	.ascii	"Exit"
	.zero	1
	.ascii	"InvokeExitors"
	.zero	1
	.ascii	"RegisterExitor"
	.zero	1
	.long RTProcess__OnInterrupt
	.long MM_RTProcess+220
	.long MI_RTProcess+60
	.long RTProcess__Crash
	.long MM_RTProcess+232
	.long MI_RTProcess+52
	.long RTProcess__Exit
	.long MM_RTProcess+238
	.long MI_RTProcess+48
	.long RTProcess__InvokeExitors
	.long MM_RTProcess+243
	.long MI_RTProcess+56
	.long RTProcess__RegisterExitor
	.long MM_RTProcess+257
	.long MI_RTProcess+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTProcess.m3"
	.zero	1
.byte 6
.byte 5
.byte 0
	.ascii	"RTProcess.Exitor"
	.zero	1
	.ascii	"RTProcess.Exitor"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
