	.file	"RTOS.mc"
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
	.type	 RTOS__Exit,@function
RTOS__Exit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call exit
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTOS__Exit,.Lfe1-RTOS__Exit
	.align 16
	.type	 RTOS__Crash,@function
RTOS__Crash:
	pushl %ebp
	movl %esp,%ebp
	call abort
.L3:
	jmp .L3
	.align 16
.Lfe2:
	.size	 RTOS__Crash,.Lfe2-RTOS__Crash
	.align 16
	.type	 RTOS__GetMemory,@function
RTOS__GetMemory:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call sbrk
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTOS__GetMemory,.Lfe3-RTOS__GetMemory
	.align 16
	.type	 RTOS__LockHeap,@function
RTOS__LockHeap:
	pushl %ebp
	movl %esp,%ebp
	incl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTOS__LockHeap,.Lfe4-RTOS__LockHeap
	.align 16
	.type	 RTOS__UnlockHeap,@function
RTOS__UnlockHeap:
	pushl %ebp
	movl %esp,%ebp
	decl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTOS__UnlockHeap,.Lfe5-RTOS__UnlockHeap
	.align 16
	.type	 RTOS__Write,@function
RTOS__Write:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $2
	call write
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTOS__Write,.Lfe6-RTOS__Write
.globl MM_RTOS
.data
	.align 4
	.type	 MM_RTOS,@object
	.size	 MM_RTOS,340
MM_RTOS:
	.long MM_RTOS+192
	.zero	16
	.long MM_RTOS+116
	.zero	20
	.long RTOS__Exit
	.long RTOS__Crash
	.long RTOS__GetMemory
	.long RTOS__LockHeap
	.long RTOS__UnlockHeap
	.long RTOS__Write
	.ascii	"Write"
	.zero	1
	.ascii	"UnlockHeap"
	.zero	1
	.ascii	"LockHeap"
	.zero	1
	.ascii	"GetMemory"
	.zero	1
	.ascii	"Crash"
	.zero	1
	.ascii	"Exit"
	.zero	2
	.long RTOS__Write
	.long MM_RTOS+68
	.long MI_RTOS+64
	.long RTOS__UnlockHeap
	.long MM_RTOS+74
	.long MI_RTOS+60
	.long RTOS__LockHeap
	.long MM_RTOS+85
	.long MI_RTOS+56
	.long RTOS__GetMemory
	.long MM_RTOS+94
	.long MI_RTOS+52
	.long RTOS__Crash
	.long MM_RTOS+104
	.long MI_RTOS+48
	.long RTOS__Exit
	.long MM_RTOS+110
	.long MI_RTOS+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/POSIX/RTOS.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
