	.file	"RTSignal.mc"
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
	.type	 RTSignal__InstallHandlers,@function
RTSignal__InstallHandlers:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_RTSignal+44
	movl $1,MM_RTSignal+48
	movl MM_RTSignal+84,%eax
	pushl %eax
	pushl $1
	pushl $0
	call RTSignal__SetHandler
	movl MM_RTSignal+88,%eax
	pushl %eax
	pushl $2
	pushl $1
	call RTSignal__SetHandler
	movl MM_RTSignal+92,%eax
	pushl %eax
	pushl $3
	pushl $2
	call RTSignal__SetHandler
	addl $36,%esp
	movl MM_RTSignal+96,%eax
	pushl %eax
	pushl $11
	pushl $3
	call RTSignal__SetHandler
	movl MM_RTSignal+48,%eax
	pushl %eax
	pushl $13
	pushl $4
	call RTSignal__SetHandler
	movl MM_RTSignal+84,%eax
	pushl %eax
	pushl $15
	pushl $5
	call RTSignal__SetHandler
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTSignal__InstallHandlers,.Lfe1-RTSignal__InstallHandlers
	.align 16
	.type	 RTSignal__SetHandler,@function
RTSignal__SetHandler:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	call signal
	addl $8,%esp
	cmpl $5,%ebx
	jbe .L3
	pushl $545
	call _m3_fault
	.align 16
.L3:
	movl %eax,MM_RTSignal+52(,%ebx,4)
	cmpl %eax,MM_RTSignal+44
	je .L2
	pushl %eax
	pushl %esi
	call signal
.L2:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTSignal__SetHandler,.Lfe2-RTSignal__SetHandler
	.align 16
	.type	 RTSignal__RestoreHandlers,@function
RTSignal__RestoreHandlers:
	pushl %ebp
	movl %esp,%ebp
	pushl $1
	pushl $0
	call RTSignal__RestoreHandler
	pushl $2
	pushl $1
	call RTSignal__RestoreHandler
	pushl $3
	pushl $2
	call RTSignal__RestoreHandler
	pushl $11
	pushl $3
	call RTSignal__RestoreHandler
	addl $32,%esp
	pushl $13
	pushl $4
	call RTSignal__RestoreHandler
	pushl $15
	pushl $5
	call RTSignal__RestoreHandler
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTSignal__RestoreHandlers,.Lfe3-RTSignal__RestoreHandlers
	.align 16
	.type	 RTSignal__RestoreHandler,@function
RTSignal__RestoreHandler:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	cmpl $5,%eax
	jbe .L7
	pushl $849
	call _m3_fault
	.align 16
.L7:
	movl MM_RTSignal+52(,%eax,4),%eax
	pushl %eax
	pushl %edx
	call signal
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTSignal__RestoreHandler,.Lfe4-RTSignal__RestoreHandler
	.align 16
	.type	 RTSignal__Shutdown,@function
RTSignal__Shutdown:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MI_RTProcess+56,%eax
	movl 8(%ebp),%ebx
	call *%eax
	movl MM_RTSignal+44,%eax
	pushl %eax
	pushl %ebx
	call signal
	call getpid
	pushl %ebx
	pushl %eax
	call kill
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTSignal__Shutdown,.Lfe5-RTSignal__Shutdown
	.align 16
	.type	 RTSignal__Interrupt,@function
RTSignal__Interrupt:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $0
	movl MI_RTProcess+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L10
	pushl %esi
	call RTSignal__Shutdown
	jmp .L9
	.align 16
.L10:
	pushl %ebx
	movl MI_RTProcess+60,%eax
	call *%eax
	call *%ebx
.L9:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTSignal__Interrupt,.Lfe6-RTSignal__Interrupt
	.align 16
	.type	 RTSignal__Quit,@function
RTSignal__Quit:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_RTSignal+112
	movl MI_RTMisc+68,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTSignal__Quit,.Lfe7-RTSignal__Quit
	.align 16
	.type	 RTSignal__SegV,@function
RTSignal__SegV:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_RTSignal+132
	movl MI_RTMisc+68,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTSignal__SegV,.Lfe8-RTSignal__SegV
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTSignal
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_RTSignal
.data
	.align 4
	.type	 MM_RTSignal,@object
	.size	 MM_RTSignal,552
MM_RTSignal:
	.long MM_RTSignal+392
	.zero	16
	.long MM_RTSignal+292
	.zero	52
	.long RTSignal__SetHandler
	.long RTSignal__RestoreHandler
	.long RTSignal__Shutdown
	.long RTSignal__Interrupt
	.long RTSignal__Quit
	.long RTSignal__SegV
	.long RTSignal__InstallHandlers
	.long RTSignal__RestoreHandlers
	.long 2
	.long MM_RTSignal+120
	.long 8
	.ascii	"aborted"
	.zero	1
	.long 2
	.long MM_RTSignal+140
	.long 61
	.ascii	"Segmentation violation - possible attempt to dereference NIL"
	.zero	4
	.ascii	"SegV"
	.zero	1
	.ascii	"Quit"
	.zero	1
	.ascii	"Interrupt"
	.zero	1
	.ascii	"Shutdown"
	.zero	1
	.ascii	"RestoreHandler"
	.zero	1
	.ascii	"RestoreHandlers"
	.zero	1
	.ascii	"SetHandler"
	.zero	1
	.ascii	"InstallHandlers"
	.zero	2
	.long RTSignal__SegV
	.long MM_RTSignal+204
	.zero	4
	.long RTSignal__Quit
	.long MM_RTSignal+209
	.zero	4
	.long RTSignal__Interrupt
	.long MM_RTSignal+214
	.zero	4
	.long RTSignal__Shutdown
	.long MM_RTSignal+224
	.zero	4
	.long RTSignal__RestoreHandler
	.long MM_RTSignal+233
	.zero	4
	.long RTSignal__RestoreHandlers
	.long MM_RTSignal+248
	.long MI_RTSignal+48
	.long RTSignal__SetHandler
	.long MM_RTSignal+264
	.zero	4
	.long RTSignal__InstallHandlers
	.long MM_RTSignal+275
	.long MI_RTSignal+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/LINUXLIBC6/RTSignal.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
