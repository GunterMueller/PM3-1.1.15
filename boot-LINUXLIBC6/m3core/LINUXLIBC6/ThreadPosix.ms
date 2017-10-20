	.file	"ThreadPosix.mc"
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
	.type	 ThreadPosix__UTimeNow,@function
ThreadPosix__UTimeNow:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	leal -8(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call gettimeofday
	movl 8(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ThreadPosix__UTimeNow,.Lfe1-ThreadPosix__UTimeNow
	.align 16
	.type	 ThreadPosix__Time_Add,@function
ThreadPosix__Time_Add:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl %ebx,-8(%ebp)
	movl 4(%edx),%eax
	addl 4(%ecx),%eax
	movl %eax,-4(%ebp)
	cmpl $1000000,%eax
	jle .L3
	addl $-1000000,%eax
	movl %eax,-4(%ebp)
	incl %ebx
	movl %ebx,-8(%ebp)
.L3:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ThreadPosix__Time_Add,.Lfe2-ThreadPosix__Time_Add
	.align 16
	.type	 ThreadPosix__Time_Subtract,@function
ThreadPosix__Time_Subtract:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	movl (%ecx),%ebx
	subl %eax,%ebx
	movl %ebx,-8(%ebp)
	movl 4(%edx),%eax
	movl 4(%ecx),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	movl %eax,-4(%ebp)
	testl %eax,%eax
	jge .L5
	addl $1000000,%eax
	movl %eax,-4(%ebp)
	decl %ebx
	movl %ebx,-8(%ebp)
.L5:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ThreadPosix__Time_Subtract,.Lfe3-ThreadPosix__Time_Subtract
	.align 16
	.type	 ThreadPosix__Time_Compare,@function
ThreadPosix__Time_Compare:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl (%ecx),%edx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jg .L10
	jl .L12
	movl 4(%ecx),%edx
	movl 4(%ebx),%eax
	cmpl %eax,%edx
	jne .L9
	xorl %eax,%eax
	jmp .L11
	.align 16
.L9:
	cmpl %eax,%edx
	jg .L10
.L12:
	movl $-1,%eax
	jmp .L11
	.align 16
.L10:
	movl $1,%eax
.L11:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ThreadPosix__Time_Compare,.Lfe4-ThreadPosix__Time_Compare
	.align 16
	.type	 Thread__GetDefaultStackSize,@function
Thread__GetDefaultStackSize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+404,%eax
	testl %eax,%eax
	jge .L14
	pushl $3361
	call _m3_fault
	.align 16
.L14:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Thread__GetDefaultStackSize,.Lfe5-Thread__GetDefaultStackSize
	.align 16
	.type	 Thread__MinDefaultStackSize,@function
Thread__MinDefaultStackSize:
	pushl %ebp
	movl %esp,%ebp
	incl RT0u__inCritical
	movl MM_ThreadPosix+404,%eax
	movl 8(%ebp),%edx
	cmpl %edx,%eax
	jle .L16
	movl %eax,MM_ThreadPosix+404
	jmp .L17
	.align 16
.L16:
	movl %edx,MM_ThreadPosix+404
.L17:
	decl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Thread__MinDefaultStackSize,.Lfe6-Thread__MinDefaultStackSize
	.align 16
	.type	 Thread__IncDefaultStackSize,@function
Thread__IncDefaultStackSize:
	pushl %ebp
	movl %esp,%ebp
	movl RT0u__inCritical,%edx
	leal 1(%edx),%ecx
	movl %ecx,RT0u__inCritical
	movl MM_ThreadPosix+404,%eax
	movl %edx,RT0u__inCritical
	addl 8(%ebp),%eax
	movl %eax,MM_ThreadPosix+404
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Thread__IncDefaultStackSize,.Lfe7-Thread__IncDefaultStackSize
	.align 16
	.type	 Thread__Fork,@function
Thread__Fork:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L20:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl MM_ThreadPosix+412,%eax
	incl %eax
	movl %eax,MM_ThreadPosix+412
	pushl %eax
	pushl $5
	call m3_mod
	addl $8,%esp
	testl %eax,%eax
	jne .L21
	call Scheduler__Yield
.L21:
	incl RT0u__inCritical
	cmpb $0,MM_ThreadPosix+384
	jne .L22
	movb $1,MM_ThreadPosix+384
	call ThreadPosix__StartSwitching
.L22:
	movl MM_ThreadPosix+1596,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,%ebx
	addl $4,%esp
	movl %edi,12(%ecx)
	movl MM_ThreadPosix+456,%eax
	movl %eax,8(%ecx)
	incl %eax
	movl %eax,MM_ThreadPosix+456
	movl MM_ThreadPosix+404,%eax
	testl %eax,%eax
	jge .L23
	pushl $3953
	call _m3_fault
	.align 16
.L23:
	movl %eax,-12(%ebp)
	testl %edi,%edi
	je .L26
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ThreadPosix+1608
	jg .L29
	movl MM_ThreadPosix+1604,%eax
	cmpl %edx,4(%eax)
	jl .L29
.L26:
	movl 4(%edi),%eax
	testl %eax,%eax
	je .L29
	movl %eax,-12(%ebp)
.L29:
	movl MM_ThreadPosix+1612,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,52(%ebx)
	movl MM_ThreadPosix+764,%edx
	movl 24(%edx),%eax
	movl %eax,24(%ebx)
	movl %edx,20(%ebx)
	movl 24(%edx),%ecx
	movl %ebx,20(%ecx)
	movl %ebx,24(%edx)
	movl -12(%ebp),%esi
	pushl %esi
	leal 56(%ebx),%eax
	pushl %eax
	call ThreadPosix__InitContext
	pushl %ebx
	call ThreadPosix__CanRun
	addl $16,%esp
	movl MM_ThreadPosix+1272,%edx
	testl %edx,%edx
	je .L30
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl %ebx
	pushl %edx
	call *%ecx
.L30:
	decl RT0u__inCritical
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L31:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Thread__Fork,.Lfe8-Thread__Fork
	.align 16
	.type	 Thread__Join,@function
Thread__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L33:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl MM_ThreadPosix+764,%eax
	movl %ecx,RTThread__handlerStack
	movb $0,48(%eax)
	pushl %edx
	call ThreadPosix__XJoin
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L34:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Thread__Join,.Lfe9-Thread__Join
	.align 16
	.type	 Thread__AlertJoin,@function
Thread__AlertJoin:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	movl 8(%ebp),%edx
	movb $1,48(%eax)
	pushl %edx
	call ThreadPosix__XJoin
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Thread__AlertJoin,.Lfe10-Thread__AlertJoin
	.align 16
	.type	 ThreadPosix__XJoin,@function
ThreadPosix__XJoin:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	incl RT0u__inCritical
	jmp .L37
	.align 16
.L38:
	movl 52(%esi),%ebx
	pushl $1
	call ThreadPosix__ICannotRun
	movl MM_ThreadPosix+764,%edx
	movl %ebx,32(%edx)
	movl 4(%ebx),%eax
	movl %eax,28(%edx)
	movl MM_ThreadPosix+764,%eax
	movl %eax,4(%ebx)
	decl RT0u__inCritical
	call ThreadPosix__InternalYield
	incl RT0u__inCritical
	addl $4,%esp
.L37:
	xorl %eax,%eax
	movb 4(%esi),%al
	cmpl $5,%eax
	je .L40
	cmpl $6,%eax
	jne .L38
.L40:
	movb $6,4(%esi)
	cmpb $0,MM_ThreadPosix+1248
	je .L41
	pushl $6
	movl 8(%esi),%eax
	pushl %eax
	call ThreadPosix__PerfChanged
.L41:
	incl MM_ThreadPosix+420
	decl RT0u__inCritical
	leal -8(%ebp),%esp
	movl 16(%esi),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 ThreadPosix__XJoin,.Lfe11-ThreadPosix__XJoin
	.align 16
	.type	 Thread__Wait,@function
Thread__Wait:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
.L43:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl MM_ThreadPosix+764,%eax
	movl %ebx,RTThread__handlerStack
	movb $0,48(%eax)
	pushl %edx
	pushl %ecx
	call ThreadPosix__XWait
.L44:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Thread__Wait,.Lfe12-Thread__Wait
	.align 16
	.type	 Thread__AlertWait,@function
Thread__AlertWait:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movb $1,48(%eax)
	pushl %edx
	pushl %ecx
	call ThreadPosix__XWait
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Thread__AlertWait,.Lfe13-Thread__AlertWait
	.align 16
	.type	 M_ThreadPosix_LINE_332.0,@function
M_ThreadPosix_LINE_332.0:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -20(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	call RTHooks__LockMutex
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 M_ThreadPosix_LINE_332.0,.Lfe14-M_ThreadPosix_LINE_332.0
	.align 16
	.type	 ThreadPosix__XWait,@function
ThreadPosix__XWait:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl %esi,-20(%ebp)
	movl $M_ThreadPosix_LINE_332.0,-8(%ebp)
	movl %ebp,-4(%ebp)
.L47:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%esi
	movl %esi,RTThread__handlerStack
	incl RT0u__inCritical
	movl 8(%ebp),%eax
	pushl %eax
	call ThreadPosix__XRelease
	pushl $1
	call ThreadPosix__ICannotRun
	movl MM_ThreadPosix+764,%edx
	movl %ebx,32(%edx)
	movl 4(%ebx),%eax
	movl %eax,28(%edx)
	movl MM_ThreadPosix+764,%eax
	movl %eax,4(%ebx)
	decl RT0u__inCritical
	call ThreadPosix__InternalYield
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_ThreadPosix_LINE_332.0
.L48:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 ThreadPosix__XWait,.Lfe15-ThreadPosix__XWait
	.align 16
	.type	 Thread__Signal,@function
Thread__Signal:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $1
	pushl %eax
	call ThreadPosix__XSignal
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Thread__Signal,.Lfe16-Thread__Signal
	.align 16
	.type	 Thread__Broadcast,@function
Thread__Broadcast:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $-1
	pushl %eax
	call ThreadPosix__XSignal
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Thread__Broadcast,.Lfe17-Thread__Broadcast
	.align 16
	.type	 ThreadPosix__XSignal,@function
ThreadPosix__XSignal:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	incl RT0u__inCritical
.L53:
	movl 4(%esi),%edx
	testl %edx,%edx
	je .L55
	movl 28(%edx),%eax
	movl %eax,4(%esi)
	pushl %edx
	call ThreadPosix__CanRun
	decl %ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L53
.L55:
	leal -8(%ebp),%esp
	decl RT0u__inCritical
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 ThreadPosix__XSignal,.Lfe18-ThreadPosix__XSignal
	.align 16
	.type	 Thread__Alert,@function
Thread__Alert:
	pushl %ebp
	movl %esp,%ebp
	incl RT0u__inCritical
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movb $1,49(%eax)
	decl RT0u__inCritical
	popl %ebp
	ret
.Lfe19:
	.size	 Thread__Alert,.Lfe19-Thread__Alert
	.align 16
	.type	 Thread__TestAlert,@function
Thread__TestAlert:
	pushl %ebp
	movl %esp,%ebp
	incl RT0u__inCritical
	movl MM_ThreadPosix+764,%eax
	movl %ebp,%esp
	movb 49(%eax),%dl
	movb $0,49(%eax)
	decl RT0u__inCritical
	xorl %eax,%eax
	movb %dl,%al
	popl %ebp
	ret
.Lfe20:
	.size	 Thread__TestAlert,.Lfe20-Thread__TestAlert
	.align 16
	.type	 Scheduler__Yield,@function
Scheduler__Yield:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L60:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl MM_ThreadPosix+764,%eax
	movl %edx,RTThread__handlerStack
	movb $0,48(%eax)
	call ThreadPosix__InternalYield
.L61:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Scheduler__Yield,.Lfe21-Scheduler__Yield
	.align 16
	.type	 Thread__Self,@function
Thread__Self:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Thread__Self,.Lfe22-Thread__Self
	.align 16
	.type	 Thread__Acquire,@function
Thread__Acquire:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTHooks__LockMutex
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Thread__Acquire,.Lfe23-Thread__Acquire
	.align 16
	.type	 Thread__Release,@function
Thread__Release:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTHooks__UnlockMutex
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Thread__Release,.Lfe24-Thread__Release
	.align 16
	.type	 RTHooks__LockMutex,@function
RTHooks__LockMutex:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L66:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
.L67:
	movl RT0u__inCritical,%edx
	leal 1(%edx),%ecx
	movl %ecx,RT0u__inCritical
	cmpl $0,4(%ebx)
	jne .L68
	movl MM_ThreadPosix+764,%eax
	testl %eax,%eax
	jne .L69
	pushl $6576
	call _m3_fault
	.align 16
.L69:
	movl %eax,4(%ebx)
	movl %edx,RT0u__inCritical
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L65
	.align 16
.L68:
	pushl $2
	call ThreadPosix__ICannotRun
	movl MM_ThreadPosix+764,%eax
	addl $4,%esp
	movl %ebx,36(%eax)
	movl 8(%ebx),%edx
	movl %edx,28(%eax)
	movb $0,48(%eax)
	movl MM_ThreadPosix+764,%eax
	movl %eax,8(%ebx)
	cmpl %eax,4(%ebx)
	jne .L70
	pushl %ebx
	call ThreadPosix__ImpossibleAcquire
	addl $4,%esp
.L70:
	decl RT0u__inCritical
	call ThreadPosix__InternalYield
	jmp .L67
	.align 16
.L72:
.L65:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 RTHooks__LockMutex,.Lfe25-RTHooks__LockMutex
	.align 16
	.type	 ThreadPosix__ImpossibleAcquire,@function
ThreadPosix__ImpossibleAcquire:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	call ThreadPosix__DumpEverybody
	pushl $MM_ThreadPosix+1624
	call ThreadPosix__OutT
	pushl $0
	movl 4(%ebx),%eax
	movl 8(%eax),%eax
	pushl %eax
	call ThreadPosix__OutI
	pushl $MM_ThreadPosix+1652
	call ThreadPosix__OutT
	pushl $0
	pushl %ebx
	call ThreadPosix__OutA
	pushl $MM_ThreadPosix+1696
	call ThreadPosix__OutT
	pushl $0
	pushl $0
	pushl $MM_ThreadPosix+1760
	pushl $435
	pushl $MM_ThreadPosix+1736
	movl MI_RTMisc+60,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 ThreadPosix__ImpossibleAcquire,.Lfe26-ThreadPosix__ImpossibleAcquire
	.align 16
	.type	 RTHooks__UnlockMutex,@function
RTHooks__UnlockMutex:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L75:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	incl RT0u__inCritical
	pushl %edx
	call ThreadPosix__XRelease
	decl RT0u__inCritical
	addl $4,%esp
	testb %al,%al
	je .L77
	movl MM_ThreadPosix+764,%eax
	movb $0,48(%eax)
	call ThreadPosix__InternalYield
.L77:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 RTHooks__UnlockMutex,.Lfe27-RTHooks__UnlockMutex
	.align 16
	.type	 ThreadPosix__XRelease,@function
ThreadPosix__XRelease:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl %ebx,%esi
	movl MM_ThreadPosix+764,%eax
	cmpl %eax,4(%edi)
	je .L79
	pushl %edi
	call ThreadPosix__SleazyRelease
	addl $4,%esp
.L79:
	movl %edi,%eax
	movl %ebx,4(%eax)
	movl 8(%eax),%ebx
	testl %ebx,%ebx
	jne .L81
	movl %ebx,%eax
	jmp .L86
	.align 16
.L82:
	movl %ebx,%esi
	movl %eax,%ebx
.L81:
	movl 28(%ebx),%eax
	testl %eax,%eax
	jne .L82
	testl %esi,%esi
	je .L84
	movl %eax,28(%esi)
	jmp .L85
	.align 16
.L84:
	movl %esi,8(%edi)
.L85:
	movl $0,28(%ebx)
	pushl %ebx
	call ThreadPosix__CanRun
	movl $1,%eax
.L86:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 ThreadPosix__XRelease,.Lfe28-ThreadPosix__XRelease
	.align 16
	.type	 ThreadPosix__SleazyRelease,@function
ThreadPosix__SleazyRelease:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	call ThreadPosix__DumpEverybody
	pushl $MM_ThreadPosix+1800
	call ThreadPosix__OutT
	pushl $0
	pushl %ebx
	call ThreadPosix__OutA
	addl $12,%esp
	cmpl $0,4(%ebx)
	jne .L88
	pushl $MM_ThreadPosix+1824
	call ThreadPosix__OutT
	addl $4,%esp
	jmp .L89
	.align 16
.L88:
	pushl $MM_ThreadPosix+1856
	call ThreadPosix__OutT
	pushl $0
	movl 4(%ebx),%eax
	movl 8(%eax),%eax
	pushl %eax
	call ThreadPosix__OutI
	pushl $MM_ThreadPosix+1892
	call ThreadPosix__OutT
	addl $16,%esp
.L89:
	pushl $0
	pushl $0
	pushl $MM_ThreadPosix+1908
	pushl $381
	pushl $MM_ThreadPosix+1736
	movl MI_RTMisc+60,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 ThreadPosix__SleazyRelease,.Lfe29-ThreadPosix__SleazyRelease
	.align 16
	.type	 ThreadF__GetCurrentHandlers,@function
ThreadF__GetCurrentHandlers:
	pushl %ebp
	movl %esp,%ebp
	movl RTThread__handlerStack,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 ThreadF__GetCurrentHandlers,.Lfe30-ThreadF__GetCurrentHandlers
	.align 16
	.type	 ThreadF__SetCurrentHandlers,@function
ThreadF__SetCurrentHandlers:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 ThreadF__SetCurrentHandlers,.Lfe31-ThreadF__SetCurrentHandlers
	.align 16
	.type	 RTHooks__PushEFrame,@function
RTHooks__PushEFrame:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L93
	pushl $8084
	call _m3_fault
	.align 16
.L93:
	movl RTThread__handlerStack,%eax
	movl %eax,(%edx)
	movl %edx,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 RTHooks__PushEFrame,.Lfe32-RTHooks__PushEFrame
	.align 16
	.type	 RTHooks__PopEFrame,@function
RTHooks__PopEFrame:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 RTHooks__PopEFrame,.Lfe33-RTHooks__PopEFrame
	.align 16
	.type	 ThreadF__SuspendOthers,@function
ThreadF__SuspendOthers:
	pushl %ebp
	movl %esp,%ebp
	incl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 ThreadF__SuspendOthers,.Lfe34-ThreadF__SuspendOthers
	.align 16
	.type	 ThreadF__ResumeOthers,@function
ThreadF__ResumeOthers:
	pushl %ebp
	movl %esp,%ebp
	decl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 ThreadF__ResumeOthers,.Lfe35-ThreadF__ResumeOthers
	.align 16
	.type	 ThreadF__ProcessStacks,@function
ThreadF__ProcessStacks:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl MM_ThreadPosix+764,%esi
	movl %esi,-16(%ebp)
	movl %esi,%eax
	addl $84,%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
.L98:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	addl $56,%eax
	pushl %eax
	call ThreadPosix__Tos
	movl 8(%ebp),%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L99
	cmpl $-1,(%ebx)
	jne .L99
	movl 8(%ebx),%esi
	movl %esi,-20(%ebp)
	movl 4(%ebx),%ebx
.L99:
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%ecx
	call *%ebx
	movl -16(%ebp),%esi
	addl $84,%esi
	movl %esi,-12(%ebp)
	movl 8(%ebp),%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L101
	cmpl $-1,(%ebx)
	jne .L101
	movl 8(%ebx),%esi
	movl %esi,-24(%ebp)
	movl 4(%ebx),%ebx
.L101:
	movl -12(%ebp),%edx
	leal 156(%edx),%eax
	pushl %eax
	pushl %edx
	movl -24(%ebp),%ecx
	call *%ebx
	movl -16(%ebp),%esi
	addl $8,%esp
	movl 24(%esi),%esi
	movl %esi,-16(%ebp)
	cmpl %esi,MM_ThreadPosix+764
	jne .L98
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 ThreadF__ProcessStacks,.Lfe36-ThreadF__ProcessStacks
	.align 16
	.type	 Thread__Pause,@function
Thread__Pause:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
.L105:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edx
	movl MI_Time+44,%eax
	movl %edx,RTThread__handlerStack
	call *%eax
	leal -8(%ebp),%ebx
	pushl %ebx
	faddl 8(%ebp)
	subl $8,%esp
	fstpl (%esp)
	movl MI_TimePosix+44,%eax
	call *%eax
	pushl $0
	pushl %ebx
	call ThreadPosix__XPause
.L106:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 Thread__Pause,.Lfe37-Thread__Pause
	.align 16
	.type	 Thread__AlertPause,@function
Thread__AlertPause:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
.L108:
	movl $MM_ThreadPosix+1940,-12(%ebp)
	movl $4,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%edx
	movl MI_Time+44,%eax
	movl %edx,RTThread__handlerStack
	call *%eax
	leal -8(%ebp),%ebx
	pushl %ebx
	faddl 8(%ebp)
	subl $8,%esp
	fstpl (%esp)
	movl MI_TimePosix+44,%eax
	call *%eax
	pushl $1
	pushl %ebx
	call ThreadPosix__XPause
.L109:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 Thread__AlertPause,.Lfe38-Thread__AlertPause
	.align 16
	.type	 ThreadPosix__XPause,@function
ThreadPosix__XPause:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movb 12(%ebp),%bl
	incl RT0u__inCritical
	movl 8(%ebp),%ecx
	movl MM_ThreadPosix+764,%edx
	movl (%ecx),%eax
	movl %eax,40(%edx)
	movl 4(%ecx),%eax
	movl %eax,44(%edx)
	movb %bl,48(%edx)
	pushl $3
	call ThreadPosix__ICannotRun
	decl RT0u__inCritical
	call ThreadPosix__InternalYield
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 ThreadPosix__XPause,.Lfe39-ThreadPosix__XPause
	.align 16
	.type	 SchedulerPosix__IOWait,@function
SchedulerPosix__IOWait:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
.L112:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl MM_ThreadPosix+764,%eax
	movl %ebx,RTThread__handlerStack
	movb $0,48(%eax)
	testl %ecx,%ecx
	jge .L113
	pushl $9457
	call _m3_fault
	.align 16
.L113:
	movl 20(%ebp),%eax
	movl 16(%ebp),%edx
	pushl %eax
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call ThreadPosix__XIOWait
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L114:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 SchedulerPosix__IOWait,.Lfe40-SchedulerPosix__IOWait
	.align 16
	.type	 SchedulerPosix__IOAlertWait,@function
SchedulerPosix__IOAlertWait:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	movl 8(%ebp),%ecx
	movb $1,48(%eax)
	testl %ecx,%ecx
	jge .L116
	pushl $9585
	call _m3_fault
	.align 16
.L116:
	movl 20(%ebp),%eax
	movl 16(%ebp),%edx
	pushl %eax
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call ThreadPosix__XIOWait
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 SchedulerPosix__IOAlertWait,.Lfe41-SchedulerPosix__IOAlertWait
	.align 16
	.type	 ThreadPosix__XIOWait,@function
ThreadPosix__XIOWait:
	pushl %ebp
	movl %esp,%ebp
	subl $72,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L118:
	movl $MM_ThreadPosix+1940,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%esi
	sarl $5,%esi
	movl %esi,-56(%ebp)
	movl 8(%ebp),%edx
	andl $31,%edx
	cmpl $31,%edx
	jbe .L119
	pushl $9697
	call _m3_fault
	.align 16
.L119:
	cmpl $31,%edx
	jg .L120
	movl $1,%eax
	movl %edx,%ecx
	sall %cl,%eax
	movl %eax,-52(%ebp)
	jmp .L121
	.align 16
.L120:
	movl $0,-52(%ebp)
.L121:
	movb MM_ThreadPosix+384,%dl
	testb %dl,%dl
	jne .L122
	movl MM_ThreadPosix+764,%eax
	movb %dl,48(%eax)
	movl -56(%ebp),%esi
	cmpl %esi,MM_ThreadPosix+700
	jg .L123
	movl %esi,%eax
	incl %eax
	jns .L124
	pushl $9793
	call _m3_fault
	.align 16
.L124:
	movl %eax,MM_ThreadPosix+700
	cmpl %eax,MM_ThreadPosix+704
	jge .L123
	leal -24(%ebp),%esi
	leal -16(%ebp),%ebx
	movl %ebx,-24(%ebp)
	movl $1,-20(%ebp)
	movl %eax,-16(%ebp)
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,MM_ThreadPosix+708
	movl %ebx,-24(%ebp)
	movl $1,-20(%ebp)
	movl MM_ThreadPosix+700,%eax
	movl %eax,-16(%ebp)
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,MM_ThreadPosix+712
	movl %ebx,-24(%ebp)
	movl $1,-20(%ebp)
	movl MM_ThreadPosix+700,%eax
	movl %eax,-16(%ebp)
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,MM_ThreadPosix+716
	movl MM_ThreadPosix+700,%eax
	movl %eax,MM_ThreadPosix+704
	addl $24,%esp
.L123:
	call ThreadPosix__ZeroFDS
	cmpb $0,12(%ebp)
	je .L126
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L127
	pushl $9956
	call _m3_fault
	.align 16
.L127:
	movl %eax,%edi
	movl -56(%ebp),%ecx
	cmpl %ecx,4(%edi)
	ja .L128
	pushl $9954
	call _m3_fault
	.align 16
.L128:
	movl (%edi),%eax
	movl -56(%ebp),%esi
	movl -52(%ebp),%ecx
	movl %ecx,(%eax,%esi,4)
	jmp .L129
	.align 16
.L126:
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L130
	pushl $9972
	call _m3_fault
	.align 16
.L130:
	movl %eax,%edi
	movl -56(%ebp),%esi
	cmpl %esi,4(%edi)
	ja .L131
	pushl $9970
	call _m3_fault
	.align 16
.L131:
	movl (%edi),%eax
	movl -56(%ebp),%ecx
	movl -52(%ebp),%esi
	movl %esi,(%eax,%ecx,4)
.L129:
	fldz
	fcompl 16(%ebp)
	fnstsw %ax
	andb $69,%ah
	je .L132
	leal -32(%ebp),%ebx
	pushl %ebx
	pushl 20(%ebp)
	pushl 16(%ebp)
	call ThreadPosix__UTimeFromTime
	pushl %ebx
	movl 8(%ebp),%eax
	incl %eax
	pushl %eax
	call ThreadPosix__CallSelect
	addl $20,%esp
	jmp .L133
	.align 16
.L132:
	pushl $0
	movl 8(%ebp),%eax
	incl %eax
	pushl %eax
	call ThreadPosix__CallSelect
	addl $8,%esp
.L133:
	testl %eax,%eax
	jle .L134
	cmpl $0,-56(%ebp)
	jge .L135
	pushl $10113
	call _m3_fault
	.align 16
.L135:
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl -52(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%esi
	pushl %esi
	call ThreadPosix__TestFDS
	movl %eax,%edx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L117
	.align 16
.L134:
	testl %eax,%eax
	jne .L136
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $3,%eax
	jmp .L117
	.align 16
.L136:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L117
	.align 16
.L122:
	movl $0,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -64(%ebp),%eax
	movl -56(%ebp),%esi
	cmpl %esi,MM_ThreadPosix+704
	jg .L137
	leal -24(%ebp),%ecx
	movl %ecx,-68(%ebp)
	leal -16(%ebp),%esi
	movl %esi,-24(%ebp)
	movl $1,-20(%ebp)
	movl -56(%ebp),%ebx
	incl %ebx
	movl %ebx,-16(%ebp)
	pushl %ecx
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,-60(%ebp)
	movl %esi,-24(%ebp)
	movl $1,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl -68(%ebp),%ecx
	pushl %ecx
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl %edi,-64(%ebp)
	movl %esi,-24(%ebp)
	movl $1,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl -68(%ebp),%esi
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	addl $24,%esp
.L137:
	incl RT0u__inCritical
	movl -56(%ebp),%ecx
	cmpl %ecx,MM_ThreadPosix+700
	jg .L138
	movl %ecx,%edx
	incl %edx
	jns .L139
	pushl $10369
	call _m3_fault
	.align 16
.L139:
	movl %edx,MM_ThreadPosix+700
	cmpl %edx,MM_ThreadPosix+704
	jge .L138
	movl -60(%ebp),%esi
	movl %esi,MM_ThreadPosix+708
	movl -64(%ebp),%ecx
	movl %ecx,MM_ThreadPosix+712
	movl %eax,MM_ThreadPosix+716
	movl %edx,MM_ThreadPosix+704
.L138:
	movl MM_ThreadPosix+764,%eax
	movl 8(%ebp),%esi
	movl %esi,240(%eax)
	movb 12(%ebp),%cl
	movb %cl,244(%eax)
	cmpl $0,-56(%ebp)
	jge .L141
	pushl $10529
	call _m3_fault
	.align 16
.L141:
	movl MM_ThreadPosix+764,%edx
	movl -56(%ebp),%esi
	fldz
	movl %esi,264(%edx)
	movl -52(%ebp),%ecx
	movl %ecx,268(%edx)
	fcoml 16(%ebp)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	setb %al
	movb %al,256(%edx)
	fcompl 16(%ebp)
	fnstsw %ax
	andb $69,%ah
	je .L142
	movl MM_ThreadPosix+764,%edi
	leal -40(%ebp),%esi
	pushl %esi
	call ThreadPosix__UTimeNow
	leal -48(%ebp),%ebx
	pushl %ebx
	pushl 20(%ebp)
	pushl 16(%ebp)
	call ThreadPosix__UTimeFromTime
	leal 248(%edi),%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	call ThreadPosix__Time_Add
	addl $28,%esp
.L142:
	pushl $4
	call ThreadPosix__ICannotRun
	decl RT0u__inCritical
	call ThreadPosix__InternalYield
	movl MM_ThreadPosix+764,%eax
	movl 260(%eax),%edx
	movl %edx,errno
	movl -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movb 245(%eax),%al
	andl $255,%eax
.L143:
.L117:
	leal -84(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe42:
	.size	 ThreadPosix__XIOWait,.Lfe42-ThreadPosix__XIOWait
	.align 16
	.type	 ThreadPosix__ZeroFDS,@function
ThreadPosix__ZeroFDS:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movl MM_ThreadPosix+700,%ecx
	decl %ecx
	jmp .L145
	.align 16
.L146:
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L147
	pushl $10836
	call _m3_fault
	.align 16
.L147:
	cmpl %edx,4(%eax)
	ja .L148
	pushl $10834
	call _m3_fault
	.align 16
.L148:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L149
	pushl $10852
	call _m3_fault
	.align 16
.L149:
	cmpl %edx,4(%eax)
	ja .L150
	pushl $10850
	call _m3_fault
	.align 16
.L150:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L145:
	cmpl %ecx,%edx
	jle .L146
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 ThreadPosix__ZeroFDS,.Lfe43-ThreadPosix__ZeroFDS
	.align 16
	.type	 ThreadPosix__TestFDS,@function
ThreadPosix__TestFDS:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+716,%eax
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	testl %eax,%eax
	jne .L153
	pushl $11140
	call _m3_fault
	.align 16
.L153:
	cmpl %edx,4(%eax)
	ja .L154
	pushl $11138
	call _m3_fault
	.align 16
.L154:
	movl (%eax),%eax
	testl %ecx,(%eax,%edx,4)
	je .L155
	cmpb $0,16(%ebp)
	je .L156
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L157
	pushl $11172
	call _m3_fault
	.align 16
.L157:
	cmpl %edx,4(%eax)
	ja .L158
	pushl $11170
	call _m3_fault
	.align 16
.L158:
	movl (%eax),%eax
	testl %ecx,(%eax,%edx,4)
	jne .L171
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L160
	pushl $11220
	call _m3_fault
	.align 16
.L160:
	cmpl %edx,4(%eax)
	ja .L168
	pushl $11218
	call _m3_fault
	.align 16
.L156:
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L164
	pushl $11284
	call _m3_fault
	.align 16
.L164:
	cmpl %edx,4(%eax)
	ja .L165
	pushl $11282
	call _m3_fault
	.align 16
.L165:
	movl (%eax),%eax
	testl %ecx,(%eax,%edx,4)
	je .L166
.L171:
	xorl %eax,%eax
	jmp .L170
	.align 16
.L166:
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L167
	pushl $11332
	call _m3_fault
	.align 16
.L167:
	cmpl %edx,4(%eax)
	ja .L168
	pushl $11330
	call _m3_fault
	.align 16
.L168:
	movl (%eax),%eax
	testl %ecx,(%eax,%edx,4)
	jne .L155
	movl $2,%eax
	jmp .L170
	.align 16
.L155:
	movl $3,%eax
.L170:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 ThreadPosix__TestFDS,.Lfe44-ThreadPosix__TestFDS
	.align 16
	.type	 ThreadPosix__CallSelect,@function
ThreadPosix__CallSelect:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl MM_ThreadPosix+700,%esi
	decl %esi
	jmp .L173
	.align 16
.L174:
	movl MM_ThreadPosix+716,%ecx
	testl %ecx,%ecx
	jne .L175
	pushl $11540
	call _m3_fault
	.align 16
.L175:
	cmpl %ebx,4(%ecx)
	ja .L176
	pushl $11538
	call _m3_fault
	.align 16
.L176:
	movl MM_ThreadPosix+708,%edx
	testl %edx,%edx
	jne .L177
	pushl $11540
	call _m3_fault
	.align 16
.L177:
	cmpl %ebx,4(%edx)
	ja .L178
	pushl $11538
	call _m3_fault
	.align 16
.L178:
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L179
	pushl $11540
	call _m3_fault
	.align 16
.L179:
	cmpl %ebx,4(%eax)
	ja .L180
	pushl $11538
	call _m3_fault
	.align 16
.L180:
	movl (%ecx),%ecx
	movl (%edx),%edx
	movl (%eax),%eax
	movl (%edx,%ebx,4),%edx
	orl (%eax,%ebx,4),%edx
	movl %edx,(%ecx,%ebx,4)
	incl %ebx
.L173:
	cmpl %esi,%ebx
	jle .L174
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L182
	pushl $11572
	call _m3_fault
	.align 16
.L182:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L183
	pushl $11570
	call _m3_fault
	.align 16
.L183:
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L184
	pushl $11572
	call _m3_fault
	.align 16
.L184:
	movl %eax,%ecx
	cmpl $0,4(%ecx)
	jne .L185
	pushl $11570
	call _m3_fault
	.align 16
.L185:
	movl MM_ThreadPosix+716,%eax
	testl %eax,%eax
	jne .L186
	pushl $11572
	call _m3_fault
	.align 16
.L186:
	cmpl $0,4(%eax)
	jne .L187
	pushl $11570
	call _m3_fault
	.align 16
.L187:
	movl 12(%ebp),%edi
	pushl %edi
	movl (%eax),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl 8(%ebp),%edi
	pushl %edi
	call select
	movl %eax,-8(%ebp)
	addl $20,%esp
	testl %eax,%eax
	jle .L188
	xorl %ebx,%ebx
	movl MM_ThreadPosix+700,%edi
	decl %edi
	movl %edi,-4(%ebp)
	jmp .L189
	.align 16
.L190:
	movl MM_ThreadPosix+716,%eax
	testl %eax,%eax
	jne .L191
	pushl $11652
	call _m3_fault
	.align 16
.L191:
	cmpl %ebx,4(%eax)
	ja .L193
	pushl $11650
	call _m3_fault
	.align 16
.L193:
	movl %eax,%ecx
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L195
	pushl $11652
	call _m3_fault
	.align 16
.L195:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L196
	pushl $11650
	call _m3_fault
	.align 16
.L196:
	movl MM_ThreadPosix+712,%esi
	testl %esi,%esi
	jne .L197
	pushl $11652
	call _m3_fault
	.align 16
.L197:
	cmpl %ebx,4(%esi)
	ja .L198
	pushl $11650
	call _m3_fault
	.align 16
.L198:
	movl (%ecx),%ecx
	movl (%edx),%eax
	movl (%ecx,%ebx,4),%edx
	orl (%eax,%ebx,4),%edx
	movl (%esi),%eax
	orl (%eax,%ebx,4),%edx
	movl %edx,(%ecx,%ebx,4)
	incl %ebx
.L189:
	cmpl %ebx,-4(%ebp)
	jge .L190
.L188:
	leal -20(%ebp),%esp
	movl -8(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe45:
	.size	 ThreadPosix__CallSelect,.Lfe45-ThreadPosix__CallSelect
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x412e8480
.text
	.align 16
	.type	 ThreadPosix__UTimeFromTime,@function
ThreadPosix__UTimeFromTime:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	fldl 8(%ebp)
.L201:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	fnstcw -20(%ebp)
	movl -20(%ebp),%eax
	movb $12,%ah
	movl %eax,-24(%ebp)
	fldcw -24(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -20(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L203
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucomp %st(1)
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L203
	decl %edx
.L203:
	pushl %edx
	fisubl (%esp)
	addl $4,%esp
	fldl .LC0
	fmulp %st,%st(1)
	movl %edx,-32(%ebp)
	fldz
	fxch %st(1)
	fnstcw -20(%ebp)
	movl -20(%ebp),%eax
	movb $12,%ah
	movl %eax,-24(%ebp)
	fldcw -24(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -20(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	fstp %st(1)
	je .L210
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	movl %edx,-28(%ebp)
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L206
	decl %edx
	jmp .L209
	.align 16
.L210:
	fstp %st(0)
.L209:
	movl %edx,-28(%ebp)
.L206:
	movl 16(%ebp),%edx
	movl -32(%ebp),%eax
	movl %eax,(%edx)
	movl -28(%ebp),%eax
	movl %eax,4(%edx)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L208:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 ThreadPosix__UTimeFromTime,.Lfe46-ThreadPosix__UTimeFromTime
	.align 16
	.type	 SchedulerPosix__DisableSwitching,@function
SchedulerPosix__DisableSwitching:
	pushl %ebp
	movl %esp,%ebp
	incl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 SchedulerPosix__DisableSwitching,.Lfe47-SchedulerPosix__DisableSwitching
	.align 16
	.type	 SchedulerPosix__EnableSwitching,@function
SchedulerPosix__EnableSwitching:
	pushl %ebp
	movl %esp,%ebp
	decl RT0u__inCritical
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe48:
	.size	 SchedulerPosix__EnableSwitching,.Lfe48-SchedulerPosix__EnableSwitching
	.align 16
	.type	 ThreadPosix__StartSwitching,@function
ThreadPosix__StartSwitching:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
.L214:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpb $0,MM_ThreadPosix+372
	je .L217
	movl MM_ThreadPosix+744,%eax
	pushl %eax
	movl MI_RTThread+180,%eax
	call *%eax
	movl MM_ThreadPosix+396,%edx
	movl %edx,-32(%ebp)
	movl MM_ThreadPosix+400,%eax
	movl %eax,-28(%ebp)
	movl %edx,-24(%ebp)
	movl %eax,-20(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $16,%esp
	testl %eax,%eax
	je .L216
	pushl $0
	pushl $MM_ThreadPosix+424
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L216:
	movl MI_RTThread+184,%eax
	call *%eax
.L217:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe49:
	.size	 ThreadPosix__StartSwitching,.Lfe49-ThreadPosix__StartSwitching
	.align 16
	.type	 ThreadPosix__switch_thread,@function
ThreadPosix__switch_thread:
	pushl %ebp
	movl MI_RTThread+184,%eax
	movl %esp,%ebp
	call *%eax
	cmpl $0,RT0u__inCritical
	jne .L218
	call ThreadPosix__InternalYield
.L218:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe50:
	.size	 ThreadPosix__switch_thread,.Lfe50-ThreadPosix__switch_thread
	.align 16
	.type	 ThreadF__SetSwitchingInterval,@function
ThreadF__SetSwitchingInterval:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L221:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	incl RT0u__inCritical
	movl %ebx,%ecx
	sarl $31,%ecx
	movl %ebx,%edx
	xorl %ecx,%edx
	movl $1125899907,%eax
	mull %edx
	shrl $18,%edx
	movl %edx,-12(%ebp)
	xorl %edx,%ecx
	movl %ecx,MM_ThreadPosix+396
	movl %ebx,%eax
	movl $1000000,%esi
	cltd
	idivl %esi
	testl %edx,%edx
	je .L222
	testl %ebx,%ebx
	jge .L222
	addl $1000000,%edx
.L222:
	movl %edx,MM_ThreadPosix+400
	decl RT0u__inCritical
	cmpb $0,MM_ThreadPosix+384
	je .L224
	call ThreadPosix__StartSwitching
.L224:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe51:
	.size	 ThreadF__SetSwitchingInterval,.Lfe51-ThreadF__SetSwitchingInterval
	.align 16
	.type	 ThreadPosix__CanRun,@function
ThreadPosix__CanRun:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movb $0,4(%eax)
	movl $0,28(%eax)
	movl $0,32(%eax)
	movl $0,36(%eax)
	cmpb $0,MM_ThreadPosix+1248
	je .L225
	pushl $0
	movl 8(%eax),%eax
	pushl %eax
	call ThreadPosix__PerfChanged
.L225:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe52:
	.size	 ThreadPosix__CanRun,.Lfe52-ThreadPosix__CanRun
	.align 16
	.type	 ThreadPosix__ICannotRun,@function
ThreadPosix__ICannotRun:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	movb 8(%ebp),%dl
	movb %dl,4(%eax)
	cmpb $0,MM_ThreadPosix+1248
	je .L227
	xorl %eax,%eax
	movb %dl,%al
	pushl %eax
	movl MM_ThreadPosix+764,%eax
	movl 8(%eax),%eax
	pushl %eax
	call ThreadPosix__PerfChanged
.L227:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe53:
	.size	 ThreadPosix__ICannotRun,.Lfe53-ThreadPosix__ICannotRun
.section	.rodata
	.align 4
	.type	 L_24.1,@object
	.size	 L_24.1,28
L_24.1:
	.long .L236
	.long .L237
	.long .L238
	.long .L239
	.long .L240
	.long .L241
	.long .L241
.text
	.align 16
	.type	 ThreadPosix__InternalYield,@function
ThreadPosix__InternalYield:
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L230:
	movl $MM_ThreadPosix+1940,-20(%ebp)
	movl $4,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movb $0,-52(%ebp)
	xorl %edi,%edi
	movl RT0u__inCritical,%eax
	incl %eax
	movl %eax,RT0u__inCritical
	cmpl $1,%eax
	je .L231
	pushl $13152
	call _m3_fault
	.align 16
.L231:
	movl MM_ThreadPosix+764,%eax
	movl 24(%eax),%eax
	movl %eax,-60(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	call ThreadPosix__UTimeNow
	addl $4,%esp
.L232:
	movl -60(%ebp),%ebx
	cmpb $0,-52(%ebp)
	je .L233
	testl %edi,%edi
	jge .L234
.L233:
	call ThreadPosix__ZeroFDS
.L234:
	movl $0,-56(%ebp)
	movb $0,-48(%ebp)
	movb -48(%ebp),%cl
	movb %cl,-40(%ebp)
	movb %cl,-44(%ebp)
.L235:
	xorl %eax,%eax
	movb 4(%ebx),%al
	jmp *L_24.1(,%eax,4)
	.align 16
.L237:
	cmpb $0,48(%ebx)
	je .L249
	cmpb $0,49(%ebx)
	je .L249
	movl 32(%ebx),%edx
	movl 4(%edx),%eax
	cmpl %ebx,%eax
	jne .L243
	movl 28(%ebx),%eax
	movl %eax,4(%edx)
	jmp .L317
	.align 16
.L243:
.L246:
	movl %eax,%edx
	movl 28(%edx),%eax
	cmpl %ebx,%eax
	jne .L246
	movl 28(%ebx),%eax
	movl %eax,28(%edx)
	jmp .L317
	.align 16
.L238:
	cmpb $0,48(%ebx)
	je .L249
	pushl $13600
	call _m3_fault
	.align 16
.L239:
	cmpb $0,48(%ebx)
	je .L251
	cmpb $0,49(%ebx)
	jne .L317
.L251:
	leal -16(%ebp),%eax
	pushl %eax
	leal 40(%ebx),%esi
	pushl %esi
	call ThreadPosix__Time_Compare
	addl $8,%esp
	testl %eax,%eax
	jle .L317
	cmpb $0,-48(%ebp)
	jne .L253
	movl 40(%ebx),%eax
	movl %eax,-8(%ebp)
	movl 44(%ebx),%eax
	jmp .L318
	.align 16
.L253:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	call ThreadPosix__Time_Compare
	addl $8,%esp
	testl %eax,%eax
	jge .L249
	movl 40(%ebx),%eax
	movl %eax,-8(%ebp)
	movl 44(%ebx),%eax
	movl %eax,-4(%ebp)
	jmp .L249
	.align 16
.L240:
	cmpb $0,48(%ebx)
	je .L256
	cmpb $0,49(%ebx)
	jne .L317
.L256:
	cmpb $0,-52(%ebp)
	jne .L257
	movl 240(%ebx),%edx
	incl %edx
	movl -56(%ebp),%eax
	cmpl %eax,%edx
	jle .L258
	movl %edx,%eax
.L258:
	testl %eax,%eax
	jge .L260
	pushl $13985
	call _m3_fault
	.align 16
.L260:
	movl %eax,-56(%ebp)
	cmpb $0,244(%ebx)
	je .L261
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L262
	pushl $14020
	call _m3_fault
	.align 16
.L262:
	movl 264(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L269
	pushl $14018
	call _m3_fault
	.align 16
.L261:
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L267
	pushl $14068
	call _m3_fault
	.align 16
.L267:
	movl 264(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L269
	pushl $14066
	call _m3_fault
	.align 16
.L269:
	movl (%eax),%eax
	movl 268(%ebx),%ecx
	orl %ecx,(%eax,%edx,4)
	movb $1,-44(%ebp)
	jmp .L271
	.align 16
.L257:
	testl %edi,%edi
	jge .L272
	cmpb $0,244(%ebx)
	je .L273
	movl MM_ThreadPosix+708,%eax
	testl %eax,%eax
	jne .L274
	pushl $14196
	call _m3_fault
	.align 16
.L274:
	movl 264(%ebx),%esi
	cmpl %esi,4(%eax)
	ja .L278
	pushl $14194
	call _m3_fault
	.align 16
.L273:
	movl MM_ThreadPosix+712,%eax
	testl %eax,%eax
	jne .L277
	pushl $14228
	call _m3_fault
	.align 16
.L277:
	movl 264(%ebx),%esi
	cmpl %esi,4(%eax)
	ja .L278
	pushl $14226
	call _m3_fault
	.align 16
.L278:
	movl (%eax),%edx
	movl 268(%ebx),%eax
	movl %eax,(%edx,%esi,4)
	pushl $MM_ThreadPosix+376
	movl 240(%ebx),%eax
	incl %eax
	pushl %eax
	call ThreadPosix__CallSelect
	addl $8,%esp
	testl %eax,%eax
	jle .L279
	xorl %eax,%eax
	movb 244(%ebx),%al
	pushl %eax
	movl 268(%ebx),%eax
	pushl %eax
	movl 264(%ebx),%eax
	pushl %eax
	call ThreadPosix__TestFDS
	movb %al,245(%ebx)
	pushl %ebx
	call ThreadPosix__CanRun
	addl $16,%esp
	jmp .L248
	.align 16
.L279:
	testl %eax,%eax
	jge .L281
	movl errno,%eax
	movl %eax,260(%ebx)
	movb $1,245(%ebx)
	jmp .L317
	.align 16
.L272:
	testl %edi,%edi
	jle .L281
	xorl %eax,%eax
	movb 244(%ebx),%al
	pushl %eax
	movl 268(%ebx),%eax
	pushl %eax
	movl 264(%ebx),%eax
	pushl %eax
	call ThreadPosix__TestFDS
	addl $12,%esp
	cmpb $3,%al
	je .L281
	movb %al,245(%ebx)
	jmp .L317
	.align 16
.L281:
	cmpb $0,256(%ebx)
	je .L249
	leal -16(%ebp),%eax
	pushl %eax
	leal 248(%ebx),%eax
	pushl %eax
	call ThreadPosix__Time_Compare
	addl $8,%esp
	testl %eax,%eax
	jg .L271
	movl $0,260(%ebx)
	movb $3,245(%ebx)
.L317:
	pushl %ebx
	call ThreadPosix__CanRun
	addl $4,%esp
	jmp .L248
	.align 16
.L271:
	cmpb $0,256(%ebx)
	je .L249
	cmpb $0,-48(%ebp)
	jne .L286
	movl 248(%ebx),%eax
	movl %eax,-8(%ebp)
	movl 252(%ebx),%eax
.L318:
	movl %eax,-4(%ebp)
	movb $1,-48(%ebp)
	jmp .L249
	.align 16
.L286:
	leal -8(%ebp),%eax
	pushl %eax
	leal 248(%ebx),%eax
	pushl %eax
	call ThreadPosix__Time_Compare
	addl $8,%esp
	testl %eax,%eax
	jge .L249
	movl 248(%ebx),%eax
	movl %eax,-8(%ebp)
	movl 252(%ebx),%eax
	movl %eax,-4(%ebp)
	jmp .L249
	.align 16
.L241:
	cmpb $0,MM_ThreadPosix+1248
	je .L289
	movl 8(%ebx),%eax
	pushl %eax
	call ThreadPosix__PerfDeleted
	addl $4,%esp
.L289:
	movl MM_ThreadPosix+1272,%edx
	testl %edx,%edx
	je .L290
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %ebx
	pushl %edx
	call *%eax
	addl $8,%esp
.L290:
	movl 20(%ebx),%edx
	cmpl %ebx,-60(%ebp)
	jne .L291
	movl %edx,-60(%ebp)
.L291:
	movl 24(%ebx),%eax
	movl %edx,20(%eax)
	movl 24(%ebx),%eax
	movl %eax,24(%edx)
	movl $0,20(%ebx)
	movl MM_ThreadPosix+460,%eax
	movl %eax,24(%ebx)
	movl %ebx,MM_ThreadPosix+460
	movl %edx,%ebx
	movb $1,-40(%ebp)
	jmp .L249
	.align 16
.L236:
	jmp .L248
	.align 16
.L249:
	movl 24(%ebx),%ebx
	cmpl %ebx,-60(%ebp)
	jne .L235
	cmpb $0,-52(%ebp)
	jne .L248
	movl -56(%ebp),%eax
	decl %eax
	sarl $5,%eax
	incl %eax
	jns .L295
	pushl $15297
	call _m3_fault
	.align 16
.L295:
	movl %eax,MM_ThreadPosix+700
.L248:
	movb 4(%ebx),%cl
	movb %cl,-64(%ebp)
	testb %cl,%cl
	jne .L296
	cmpb $0,-52(%ebp)
	jne .L297
	cmpb $0,-44(%ebp)
	jne .L296
.L297:
	cmpb $0,MM_ThreadPosix+1248
	je .L298
	movl 8(%ebx),%eax
	pushl %eax
	call ThreadPosix__PerfRunning
	addl $4,%esp
.L298:
	pushl %ebx
	leal 56(%ebx),%eax
	pushl %eax
	movl MM_ThreadPosix+764,%eax
	addl $56,%eax
	pushl %eax
	call ThreadPosix__Transfer
	addl $12,%esp
	cmpl $0,MM_ThreadPosix+460
	je .L299
	call ThreadPosix__FreeDeadStacks
.L299:
	movl MM_ThreadPosix+764,%edx
	xorl %eax,%eax
	cmpb $0,48(%edx)
	je .L300
	cmpb $0,49(%edx)
	setne %al
	andl $255,%eax
.L300:
	movb %al,%bl
	movb -64(%ebp),%cl
	movb %cl,48(%edx)
	testb %bl,%bl
	je .L301
	movl MM_ThreadPosix+764,%eax
	movb %cl,49(%eax)
.L301:
	decl RT0u__inCritical
	testb %bl,%bl
	je .L302
	pushl $0
	pushl $MI_Thread+184
	movl MI_RTHooks+52,%eax
	call *%eax
.L302:
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L229
	.align 16
.L296:
	cmpb $0,-40(%ebp)
	je .L303
	movb $0,-52(%ebp)
	xorl %edi,%edi
	jmp .L232
	.align 16
.L303:
	testl %edi,%edi
	jge .L305
	movb -40(%ebp),%cl
	movb %cl,-52(%ebp)
	xorl %edi,%edi
	jmp .L232
	.align 16
.L305:
	cmpb $0,-48(%ebp)
	jne .L306
	cmpb $0,-44(%ebp)
	je .L307
.L306:
	cmpb $0,MM_ThreadPosix+1248
	je .L308
	pushl $-1
	call ThreadPosix__PerfRunning
	addl $4,%esp
.L308:
	cmpb $0,4(%ebx)
	je .L309
	cmpb $0,-48(%ebp)
	je .L312
	leal -16(%ebp),%edi
	pushl %edi
	leal -8(%ebp),%esi
	pushl %esi
	call ThreadPosix__Time_Compare
	addl $8,%esp
	testl %eax,%eax
	jg .L310
.L309:
	pushl $MM_ThreadPosix+376
	jmp .L319
	.align 16
.L310:
	leal -36(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	call ThreadPosix__Time_Subtract
	pushl %ebx
	movl -56(%ebp),%ecx
	pushl %ecx
	call ThreadPosix__CallSelect
	movl %eax,%edi
	addl $20,%esp
	jmp .L311
	.align 16
.L312:
	pushl $0
.L319:
	movl -56(%ebp),%ecx
	pushl %ecx
	call ThreadPosix__CallSelect
	movl %eax,%edi
	addl $8,%esp
.L311:
	testl %edi,%edi
	jg .L313
	leal -16(%ebp),%eax
	pushl %eax
	call ThreadPosix__UTimeNow
	addl $4,%esp
.L313:
	movb $1,-52(%ebp)
	jmp .L232
	.align 16
.L307:
	cmpb $0,MM_ThreadPosix+1248
	je .L314
	pushl $-1
	call ThreadPosix__PerfRunning
	addl $4,%esp
.L314:
	call ThreadPosix__DumpEverybody
	pushl $0
	pushl $0
	pushl $MM_ThreadPosix+1960
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	addl $20,%esp
	jmp .L232
	.align 16
.L316:
.L229:
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe54:
	.size	 ThreadPosix__InternalYield,.Lfe54-ThreadPosix__InternalYield
	.align 16
	.type	 ThreadPosix__FreeDeadStacks,@function
ThreadPosix__FreeDeadStacks:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_ThreadPosix+460,%ebx
	jmp .L321
	.align 16
.L322:
	cmpl %ebx,MM_ThreadPosix+764
	jne .L323
	pushl $16208
	call _m3_fault
	.align 16
.L323:
	cmpl $0,56(%ebx)
	je .L324
	leal 56(%ebx),%eax
	pushl %eax
	movl MI_RTThread+156,%eax
	call *%eax
	movl $0,56(%ebx)
	addl $4,%esp
.L324:
	movl %ebx,%eax
	movl 24(%ebx),%ebx
	movl $0,24(%eax)
.L321:
	testl %ebx,%ebx
	jne .L322
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe55:
	.size	 ThreadPosix__FreeDeadStacks,.Lfe55-ThreadPosix__FreeDeadStacks
	.align 16
	.type	 ThreadPosix__InitTopContext,@function
ThreadPosix__InitTopContext:
	pushl %ebp
	movl %esp,%ebp
	subl $156,%esp
	pushl %ebx
	pushl $156
	pushl $0
	leal -156(%ebp),%ebx
	pushl %ebx
	call memset
	movl 8(%ebp),%ecx
	movl $0,(%ecx)
	movl 8(%ebp),%ecx
	movl MI_RTHooks+48,%edx
	movl %edx,4(%ecx)
	movl MI_RTHooks+44,%eax
	movl %eax,8(%ecx)
	movl %edx,12(%ecx)
	movl %eax,16(%ecx)
	movl $0,20(%ecx)
	movl $0,24(%ecx)
	pushl %ebx
	call _setjmp
	addl $16,%esp
	testl %eax,%eax
	je .L327
	pushl $17232
	call _m3_fault
	.align 16
.L327:
	leal -156(%ebp),%eax
	pushl %eax
	movl MI_RTThread+44,%eax
	call *%eax
	movl %eax,%ecx
	pushl %ecx
	call ThreadPosix__DetermineContext
	movl -160(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe56:
	.size	 ThreadPosix__InitTopContext,.Lfe56-ThreadPosix__InitTopContext
	.align 16
	.type	 ThreadPosix__DetermineContext,@function
ThreadPosix__DetermineContext:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
.L329:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	pushl $MM_ThreadPosix+780
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L330
	pushl $MM_ThreadPosix+780
	movl MI_RTThread+44,%eax
	call *%eax
	movl %eax,%ecx
	movl MI_RTThread+168,%eax
	movl %ecx,MM_ThreadPosix+776
	call *%eax
	leal -20(%ebp),%edx
	leal -12(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl $1,-16(%ebp)
	movl MM_ThreadPosix+776,%eax
	subl 8(%ebp),%eax
	jns .L331
	negl %eax
.L331:
	sarl $2,%eax
	addl $3,%eax
	movl %eax,-12(%ebp)
	pushl %edx
	movl MM_ThreadPosix+1980,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,MM_ThreadPosix+768
	addl $12,%esp
	cmpb $0,MM_ThreadPosix+408
	je .L332
	movl MM_ThreadPosix+776,%eax
	movl %eax,MM_ThreadPosix+772
	jmp .L333
	.align 16
.L332:
	movl 8(%ebp),%ebx
	addl $-8,%ebx
	movl %ebx,MM_ThreadPosix+772
.L333:
	movl MM_ThreadPosix+768,%eax
	testl %eax,%eax
	jne .L334
	pushl $17844
	call _m3_fault
	.align 16
.L334:
	movl %eax,%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L336
	pushl $17842
	call _m3_fault
	.align 16
.L336:
	sall $2,%eax
	pushl %eax
	movl MM_ThreadPosix+772,%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	call memcpy
	jmp .L338
	.align 16
.L330:
	movl MM_ThreadPosix+764,%edx
	movl 76(%edx),%eax
	movl %eax,RTThread__handlerStack
	movl 68(%edx),%eax
	movl %eax,MI_RTHooks+48
	movl 80(%edx),%eax
	movl %eax,errno
	movl MI_RTThread+184,%eax
	call *%eax
	decl RT0u__inCritical
	movl MM_ThreadPosix+764,%eax
	addl $272,%eax
	pushl %eax
	movl MI_FloatMode+116,%eax
	call *%eax
	movl MM_ThreadPosix+764,%eax
	movl 12(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl %edx
	call *%ecx
	movl %eax,%edx
	movl MM_ThreadPosix+764,%eax
	movl %edx,16(%eax)
	incl RT0u__inCritical
	movl 52(%eax),%eax
	pushl %eax
	call Thread__Broadcast
	pushl $5
	call ThreadPosix__ICannotRun
	incl MM_ThreadPosix+416
	decl RT0u__inCritical
	call ThreadPosix__InternalYield
	pushl $18160
	call _m3_fault
	.align 16
.L338:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe57:
	.size	 ThreadPosix__DetermineContext,.Lfe57-ThreadPosix__DetermineContext
	.align 16
	.type	 ThreadPosix__InitContext,@function
ThreadPosix__InitContext:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_RTThread+152,%eax
	call *%eax
	addl $8,%esp
	cmpb $0,MM_ThreadPosix+408
	je .L340
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	movl %eax,12(%edx)
	movl 8(%edx),%ebx
	addl $-4,%ebx
	movl %ebx,16(%edx)
	jmp .L341
	.align 16
.L340:
	movl 8(%ebp),%edx
	movl 8(%edx),%ebx
	addl $-4,%ebx
	movl %ebx,12(%edx)
	movl 4(%edx),%eax
	movl %eax,16(%edx)
.L341:
	movl 8(%ebp),%edx
	movl $0,20(%edx)
	movl errno,%eax
	movl %eax,24(%edx)
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L342
	pushl $18548
	call _m3_fault
	.align 16
.L342:
	movl $123456,(%eax)
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L343
	pushl $18564
	call _m3_fault
	.align 16
.L343:
	movl $123456,(%eax)
	cmpb $0,MM_ThreadPosix+408
	je .L344
	xorl %esi,%esi
	movl MM_ThreadPosix+768,%eax
	testl %eax,%eax
	jne .L345
	pushl $18628
	call _m3_fault
	.align 16
.L345:
	pushl $8
	movl 8(%ebp),%edx
	movl 4(%eax),%eax
	sall $2,%eax
	movl 8(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	addl $-15,%eax
	pushl %eax
	movl MI_RTMisc+52,%eax
	call *%eax
	movl %eax,%ecx
	jmp .L351
	.align 16
.L344:
	movl MM_ThreadPosix+768,%eax
	testl %eax,%eax
	jne .L347
	pushl $18708
	call _m3_fault
	.align 16
.L347:
	movl 4(%eax),%eax
	addl $-2,%eax
	leal 0(,%eax,4),%esi
	pushl $8
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	leal 4(%eax,%esi),%eax
	pushl %eax
	movl MI_RTMisc+52,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ecx
	subl %esi,%ecx
.L351:
	addl $8,%esp
	addl %ecx,%esi
	movl %esi,%ebx
	subl MM_ThreadPosix+776,%ebx
	movl %ebx,-4(%ebp)
	movl MM_ThreadPosix+768,%eax
	testl %eax,%eax
	jne .L348
	pushl $18804
	call _m3_fault
	.align 16
.L348:
	movl %eax,%edx
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L350
	pushl $18802
	call _m3_fault
	.align 16
.L350:
	sall $2,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl %ecx
	call memcpy
	movl -4(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_RTThread+176,%eax
	call *%eax
	movl 8(%ebp),%edi
	addl $28,%edi
	movl $MM_ThreadPosix+780,%esi
	cld
	movl $39,%ecx
	rep
	movsl
	pushl %ebx
	movl 8(%ebp),%eax
	addl $28,%eax
	pushl %eax
	movl MI_RTThread+172,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe58:
	.size	 ThreadPosix__InitContext,.Lfe58-ThreadPosix__InitContext
	.align 16
	.type	 ThreadPosix__Transfer,@function
ThreadPosix__Transfer:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 16(%ebp),%ebx
	cmpl $0,(%edx)
	je .L353
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L354
	pushl $18964
	call _m3_fault
	.align 16
.L354:
	cmpl $123456,(%eax)
	jne .L355
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L356
	pushl $18964
	call _m3_fault
	.align 16
.L356:
	cmpl $123456,(%eax)
	je .L353
.L355:
	movl MM_ThreadPosix+764,%eax
	pushl %eax
	call ThreadPosix__SmashedStack
	addl $4,%esp
.L353:
	movl 12(%ebp),%edx
	cmpl $0,(%edx)
	je .L357
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L358
	pushl $19060
	call _m3_fault
	.align 16
.L358:
	cmpl $123456,(%eax)
	jne .L359
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L360
	pushl $19060
	call _m3_fault
	.align 16
.L360:
	cmpl $123456,(%eax)
	je .L357
.L359:
	pushl %ebx
	call ThreadPosix__SmashedStack
	addl $4,%esp
.L357:
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	je .L352
	movl MI_RTThread+188,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl RTThread__handlerStack,%eax
	movl %eax,20(%edx)
	movl errno,%eax
	movl %eax,24(%edx)
	movl %ebx,MM_ThreadPosix+764
	movl 8(%ebx),%eax
	movl %eax,ThreadF__myId
	movl 12(%ebp),%eax
	addl $28,%eax
	pushl %eax
	addl $28,%edx
	pushl %edx
	call RTThread__Transfer
	movl 8(%ebp),%edx
	movl 12(%edx),%eax
	movl %eax,MI_RTHooks+48
	movl 20(%edx),%eax
	movl %eax,RTThread__handlerStack
	movl 24(%edx),%eax
	movl %eax,errno
	movl MI_RTThread+184,%eax
	call *%eax
.L352:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe59:
	.size	 ThreadPosix__Transfer,.Lfe59-ThreadPosix__Transfer
	.align 16
	.type	 ThreadPosix__SmashedStack,@function
ThreadPosix__SmashedStack:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	call ThreadPosix__DumpEverybody
	pushl $MM_ThreadPosix+1624
	call ThreadPosix__OutT
	pushl $0
	movl 8(%ebx),%eax
	pushl %eax
	call ThreadPosix__OutI
	pushl $MM_ThreadPosix+1992
	call ThreadPosix__OutT
	pushl $MM_ThreadPosix+2040
	call ThreadPosix__OutT
	pushl $0
	pushl $0
	pushl $MM_ThreadPosix+2140
	pushl $1230
	pushl $MM_ThreadPosix+2112
	movl MI_RTMisc+60,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe60:
	.size	 ThreadPosix__SmashedStack,.Lfe60-ThreadPosix__SmashedStack
	.align 16
	.type	 ThreadPosix__Tos,@function
ThreadPosix__Tos:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	cmpb $0,MM_ThreadPosix+408
	je .L364
	movl 8(%ebp),%eax
	addl $28,%eax
	pushl %eax
	movl MI_RTThread+44,%eax
	call *%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	addl $-4,%eax
	jmp .L366
	.align 16
.L364:
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	addl $4,%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	addl $28,%eax
	pushl %eax
	movl MI_RTThread+44,%eax
	call *%eax
.L366:
	movl %eax,(%esi)
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe61:
	.size	 ThreadPosix__Tos,.Lfe61-ThreadPosix__Tos
	.align 16
	.type	 ThreadF__MyFPState,@function
ThreadF__MyFPState:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	addl $272,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe62:
	.size	 ThreadF__MyFPState,.Lfe62-ThreadF__MyFPState
	.align 16
	.type	 ThreadPosix__DumpEverybody,@function
ThreadPosix__DumpEverybody:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	incl RT0u__inCritical
	pushl $MM_ThreadPosix+2176
	call ThreadPosix__OutT
	pushl $MM_ThreadPosix+2220
	call ThreadPosix__OutT
	pushl $MM_ThreadPosix+2268
	call ThreadPosix__OutT
	pushl $MM_ThreadPosix+2316
	call ThreadPosix__OutT
	movl MM_ThreadPosix+764,%ebx
	addl $16,%esp
.L369:
	testl %ebx,%ebx
	jne .L370
	pushl $MM_ThreadPosix+2360
	call ThreadPosix__OutT
	addl $4,%esp
	jmp .L371
	.align 16
.L370:
	pushl %ebx
	call ThreadPosix__DumpThread
	movl 24(%ebx),%ebx
	addl $4,%esp
	cmpl %ebx,MM_ThreadPosix+764
	jne .L369
.L371:
	pushl $MM_ThreadPosix+2400
	call ThreadPosix__OutT
	pushl $MM_ThreadPosix+2220
	call ThreadPosix__OutT
	movl MI_RTIO+72,%eax
	call *%eax
	decl RT0u__inCritical
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe63:
	.size	 ThreadPosix__DumpEverybody,.Lfe63-ThreadPosix__DumpEverybody
.section	.rodata
	.align 4
	.type	 L_26.2,@object
	.size	 L_26.2,28
L_26.2:
	.long .L388
	.long .L389
	.long .L390
	.long .L391
	.long .L392
	.long .L393
	.long .L394
.text
	.align 16
	.type	 ThreadPosix__DumpThread,@function
ThreadPosix__DumpThread:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	cmpl %esi,MM_ThreadPosix+764
	jne .L373
	pushl $MM_ThreadPosix+2444
	jmp .L401
	.align 16
.L373:
	pushl $MM_ThreadPosix+2460
.L401:
	call ThreadPosix__OutT
	addl $4,%esp
	pushl $3
	movl 8(%esi),%eax
	pushl %eax
	call ThreadPosix__OutI
	pushl $12
	pushl %esi
	call ThreadPosix__OutA
	pushl $12
	movl 12(%esi),%eax
	pushl %eax
	call ThreadPosix__OutA
	pushl $MM_ThreadPosix+2460
	call ThreadPosix__OutT
	xorl %ebx,%ebx
	movl 12(%esi),%eax
	addl $28,%esp
	testl %eax,%eax
	jne .L400
	pushl $MM_ThreadPosix+2476
	call ThreadPosix__OutT
	addl $4,%esp
	jmp .L380
	.align 16
.L400:
	movl (%eax),%eax
	testl %eax,%eax
	je .L379
	movl 4(%eax),%ebx
.L379:
	leal -8(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_RTProcedureSRC+48,%eax
	call *%eax
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L381
	cmpl %ebx,%eax
	je .L382
.L381:
	pushl $20
	pushl %ebx
	call ThreadPosix__OutA
	addl $8,%esp
	jmp .L380
	.align 16
.L382:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	call strlen
	pushl %eax
	pushl $20
	call ThreadPosix__Pad
	addl $16,%esp
.L380:
	cmpb $0,48(%esi)
	je .L384
	pushl $MM_ThreadPosix+2512
	jmp .L402
	.align 16
.L384:
	pushl $MM_ThreadPosix+2460
.L402:
	call ThreadPosix__OutT
	addl $4,%esp
	cmpb $0,49(%esi)
	je .L386
	pushl $MM_ThreadPosix+2528
	jmp .L403
	.align 16
.L386:
	pushl $MM_ThreadPosix+2544
.L403:
	call ThreadPosix__OutT
	addl $4,%esp
	xorl %eax,%eax
	movb 4(%esi),%al
	movl MM_ThreadPosix+960(,%eax,4),%eax
	pushl %eax
	call ThreadPosix__OutT
	xorl %eax,%eax
	movb 4(%esi),%al
	addl $4,%esp
	jmp *L_26.2(,%eax,4)
	.align 16
.L388:
	jmp .L395
	.align 16
.L389:
	pushl $0
	movl 32(%esi),%eax
	pushl %eax
	call ThreadPosix__OutA
	addl $8,%esp
	jmp .L395
	.align 16
.L390:
	movl 36(%esi),%ebx
	pushl $0
	pushl %ebx
	call ThreadPosix__OutA
	addl $8,%esp
	testl %ebx,%ebx
	je .L395
	cmpl $0,4(%ebx)
	jne .L397
	pushl $MM_ThreadPosix+2560
	call ThreadPosix__OutT
	addl $4,%esp
	jmp .L395
	.align 16
.L397:
	pushl $MM_ThreadPosix+2584
	call ThreadPosix__OutT
	pushl $0
	movl 4(%ebx),%eax
	movl 8(%eax),%eax
	pushl %eax
	call ThreadPosix__OutI
	pushl $MM_ThreadPosix+2608
	call ThreadPosix__OutT
	addl $16,%esp
.L392:
.L391:
.L393:
.L394:
.L395:
	pushl $MM_ThreadPosix+2624
	call ThreadPosix__OutT
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe64:
	.size	 ThreadPosix__DumpThread,.Lfe64-ThreadPosix__DumpThread
	.align 16
	.type	 ThreadPosix__OutT,@function
ThreadPosix__OutT:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RTIO+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe65:
	.size	 ThreadPosix__OutT,.Lfe65-ThreadPosix__OutT
	.align 16
	.type	 ThreadPosix__OutI,@function
ThreadPosix__OutI:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_RTIO+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe66:
	.size	 ThreadPosix__OutI,.Lfe66-ThreadPosix__OutI
	.align 16
	.type	 ThreadPosix__OutA,@function
ThreadPosix__OutA:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_RTIO+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe67:
	.size	 ThreadPosix__OutA,.Lfe67-ThreadPosix__OutA
	.align 16
	.type	 ThreadPosix__Pad,@function
ThreadPosix__Pad:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	cmpl %eax,%edx
	jge .L407
	subl %edx,%eax
	pushl %eax
	pushl $MM_ThreadPosix+1216
	movl MI_RTIO+48,%eax
	call *%eax
.L407:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe68:
	.size	 ThreadPosix__Pad,.Lfe68-ThreadPosix__Pad
	.align 16
	.type	 ThreadPosix__PerfStart,@function
ThreadPosix__PerfStart:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_ThreadPosix+1244
	pushl $MM_ThreadPosix+2640
	movl MI_RTPerfTool+44,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L409
	movb $1,MM_ThreadPosix+1248
	movl MM_ThreadPosix+1256,%eax
	pushl %eax
	movl MI_RTProcess+44,%eax
	call *%eax
.L409:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe69:
	.size	 ThreadPosix__PerfStart,.Lfe69-ThreadPosix__PerfStart
	.align 16
	.type	 ThreadPosix__PerfStop,@function
ThreadPosix__PerfStop:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+1244,%eax
	pushl %eax
	movl MI_RTPerfTool+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe70:
	.size	 ThreadPosix__PerfStop,.Lfe70-ThreadPosix__PerfStop
	.align 16
	.type	 ThreadPosix__PerfChanged,@function
ThreadPosix__PerfChanged:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 8(%ebp),%eax
	movb 12(%ebp),%dl
	movb $0,-12(%ebp)
	movl %eax,-8(%ebp)
	movb %dl,-4(%ebp)
	pushl $12
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_ThreadPosix+1244,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_ThreadPosix+1248
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe71:
	.size	 ThreadPosix__PerfChanged,.Lfe71-ThreadPosix__PerfChanged
	.align 16
	.type	 ThreadPosix__PerfDeleted,@function
ThreadPosix__PerfDeleted:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 8(%ebp),%eax
	movb $2,-12(%ebp)
	movl %eax,-8(%ebp)
	movb $6,-4(%ebp)
	pushl $12
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_ThreadPosix+1244,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_ThreadPosix+1248
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe72:
	.size	 ThreadPosix__PerfDeleted,.Lfe72-ThreadPosix__PerfDeleted
	.align 16
	.type	 ThreadPosix__PerfRunning,@function
ThreadPosix__PerfRunning:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 8(%ebp),%eax
	movb $1,-12(%ebp)
	movl %eax,-8(%ebp)
	movb $6,-4(%ebp)
	pushl $12
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_ThreadPosix+1244,%eax
	pushl %eax
	movl MI_RTPerfTool+52,%eax
	call *%eax
	movb %al,MM_ThreadPosix+1248
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe73:
	.size	 ThreadPosix__PerfRunning,.Lfe73-ThreadPosix__PerfRunning
	.align 16
	.type	 ThreadF__RegisterHooks,@function
ThreadF__RegisterHooks:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	incl RT0u__inCritical
	movl MM_ThreadPosix+1272,%esi
	movl %eax,MM_ThreadPosix+1272
	cmpb $0,12(%ebp)
	je .L416
	testl %eax,%eax
	je .L416
	movl MM_ThreadPosix+764,%ebx
.L417:
	movl MM_ThreadPosix+1272,%eax
	movl (%eax),%edx
	movl 4(%edx),%edx
	pushl %ebx
	pushl %eax
	call *%edx
	movl 24(%ebx),%ebx
	addl $8,%esp
	cmpl %ebx,MM_ThreadPosix+764
	jne .L417
.L416:
	decl RT0u__inCritical
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe74:
	.size	 ThreadF__RegisterHooks,.Lfe74-ThreadF__RegisterHooks
	.align 16
	.type	 ThreadF__MyId,@function
ThreadF__MyId:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ThreadPosix+764,%eax
	movl %ebp,%esp
	movl 8(%eax),%eax
	popl %ebp
	ret
.Lfe75:
	.size	 ThreadF__MyId,.Lfe75-ThreadF__MyId
	.align 16
	.type	 RTThreadInit__Init,@function
RTThreadInit__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl $1,RT0u__inCritical
	movl MM_ThreadPosix+1596,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movb $0,4(%edx)
	movl MM_ThreadPosix+456,%eax
	movl %eax,8(%edx)
	movl %edx,MM_ThreadPosix+388
	leal 272(%edx),%eax
	pushl %eax
	movl MI_FloatMode+116,%eax
	call *%eax
	incl MM_ThreadPosix+456
	call ThreadPosix__QQ
	movl %eax,%edx
	leal -4(%ebp),%eax
	addl $8,%esp
	cmpl %edx,%eax
	seta %al
	movb %al,MM_ThreadPosix+408
	movl MM_ThreadPosix+388,%eax
	addl $56,%eax
	pushl %eax
	call ThreadPosix__InitTopContext
	movl MM_ThreadPosix+388,%eax
	movl %eax,MM_ThreadPosix+764
	movl 8(%eax),%edx
	movl %edx,ThreadF__myId
	movl $0,MM_ThreadPosix+392
	movl %eax,24(%eax)
	movl %eax,20(%eax)
	movl $0,RT0u__inCritical
	call ThreadPosix__PerfStart
	pushl $MM_ThreadPosix+2664
	movl MI_RTParams+52,%eax
	call *%eax
	testl %eax,%eax
	sete %al
	movb %al,MM_ThreadPosix+372
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe76:
	.size	 RTThreadInit__Init,.Lfe76-RTThreadInit__Init
	.align 16
	.type	 ThreadPosix__QQ,@function
ThreadPosix__QQ:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	leal -4(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe77:
	.size	 ThreadPosix__QQ,.Lfe77-ThreadPosix__QQ
	.align 16
	.type	 _INITM_ThreadPosix,@function
_INITM_ThreadPosix:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	leal -12(%ebp),%esi
	pushl %ebx
	movl $0,MM_ThreadPosix+708
	movl $0,MM_ThreadPosix+712
	movl $0,MM_ThreadPosix+716
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,-4(%ebp)
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_ThreadPosix+708
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,-4(%ebp)
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_ThreadPosix+712
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,-4(%ebp)
	pushl %esi
	movl MM_ThreadPosix+1948,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	leal -20(%ebp),%esp
	movl %eax,MM_ThreadPosix+716
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe78:
	.size	 _INITM_ThreadPosix,.Lfe78-_INITM_ThreadPosix
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ThreadPosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe79:
	.size	 _m3_fault,.Lfe79-_m3_fault
.globl MM_ThreadPosix
.data
	.align 4
	.type	 MM_ThreadPosix,@object
	.size	 MM_ThreadPosix,5088
MM_ThreadPosix:
	.long MM_ThreadPosix+4505
	.long MM_ThreadPosix+44
	.long MM_ThreadPosix+1596
	.long MM_ThreadPosix+1568
	.zero	4
	.long MM_ThreadPosix+3544
	.zero	4
	.long MM_ThreadPosix+4484
	.long MM_ThreadPosix+4484
	.zero	4
	.long _INITM_ThreadPosix
	.zero	8
	.long -279781087
.byte 109
.byte 49
.byte 3
.byte 230
.byte 76
.byte 208
.byte 81
.byte 9
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ThreadPosix+5038
	.long MM_ThreadPosix+5041
	.long MM_ThreadPosix+5044
	.zero	8
	.long -1651526519
	.zero	12
	.long MM_ThreadPosix+5053
	.long MM_ThreadPosix+5069
	.long MM_ThreadPosix+148
	.zero	8
	.long -1420845260
.byte 218
.byte 62
.byte 150
.byte 189
.byte 238
.byte 161
.byte 217
.byte 22
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ThreadPosix+4982
	.long MM_ThreadPosix+4984
	.long MM_ThreadPosix+4986
	.zero	8
	.long -1651526519
	.zero	12
	.long MM_ThreadPosix+4994
	.long MM_ThreadPosix+5021
	.long MM_ThreadPosix+252
	.zero	8
	.long 1835408031
.byte 237
.byte 225
.byte 190
.byte 99
.byte 114
.byte 251
.byte 216
.byte 14
	.long 1
	.zero	4
	.long 284
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ThreadPosix+4799
	.long MM_ThreadPosix+4854
	.long MM_ThreadPosix+4866
	.zero	8
	.long -1651526519
	.zero	12
	.long MM_ThreadPosix+4954
	.long MM_ThreadPosix+4973
	.long MM_ThreadPosix+488
	.long ThreadPosix__UTimeNow
	.long ThreadPosix__Time_Add
	.long ThreadPosix__Time_Subtract
	.long ThreadPosix__Time_Compare
	.zero	28
	.long 100000
	.long 3000
	.zero	16
	.long MM_ThreadPosix+428
	.ascii	"ThreadPosix.InternalError"
	.zero	3
	.long 1
	.zero	4
	.long ThreadPosix__XJoin
	.long ThreadPosix__XWait
	.long ThreadPosix__XSignal
	.long ThreadPosix__ImpossibleAcquire
	.long ThreadPosix__XRelease
	.long ThreadPosix__SleazyRelease
	.zero	8
	.long -263243242
.byte 83
.byte 246
.byte 87
.byte 229
.byte 69
.byte 204
.byte 24
.byte 21
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_ThreadPosix+4768
	.zero	36
	.long MM_ThreadPosix+4770
	.long MM_ThreadPosix+596
	.long ThreadPosix__XPause
	.zero	8
	.long 1561472578
.byte 223
.byte 197
.byte 188
.byte 95
.byte 157
.byte 235
.byte 174
.byte 2
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_ThreadPosix+4741
	.zero	4
	.long MM_ThreadPosix+4747
	.zero	28
	.long MM_ThreadPosix+4752
	.long MM_ThreadPosix+996
	.long 1
	.long 1
	.zero	12
	.long ThreadPosix__XIOWait
	.long ThreadPosix__ZeroFDS
	.long ThreadPosix__TestFDS
	.long ThreadPosix__CallSelect
	.long ThreadPosix__UTimeFromTime
	.long ThreadPosix__StartSwitching
	.long ThreadPosix__switch_thread
	.long ThreadPosix__CanRun
	.long ThreadPosix__ICannotRun
	.long ThreadPosix__InternalYield
	.long ThreadPosix__FreeDeadStacks
	.zero	172
	.long ThreadPosix__InitTopContext
	.long ThreadPosix__DetermineContext
	.long ThreadPosix__InitContext
	.long ThreadPosix__Transfer
	.long ThreadPosix__SmashedStack
	.long ThreadPosix__Tos
	.long MM_ThreadPosix+1428
	.long MM_ThreadPosix+1448
	.long MM_ThreadPosix+1472
	.long MM_ThreadPosix+1492
	.long MM_ThreadPosix+1512
	.long MM_ThreadPosix+1532
	.long MM_ThreadPosix+1552
	.long ThreadPosix__DumpEverybody
	.long ThreadPosix__DumpThread
	.zero	8
	.long 544618952
.byte 50
.byte 225
.byte 73
.byte 42
.byte 250
.byte 216
.byte 63
.byte 10
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_ThreadPosix+4698
	.zero	36
	.long MM_ThreadPosix+4703
	.long MM_ThreadPosix+1100
	.zero	8
	.long 1072039380
.byte 158
.byte 146
.byte 144
.byte 63
.byte 74
.byte 151
.byte 118
.byte 0
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_ThreadPosix+4659
	.zero	36
	.long MM_ThreadPosix+4661
	.zero	4
	.long ThreadPosix__OutT
	.long ThreadPosix__OutI
	.long ThreadPosix__OutA
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
	.zero	3
	.long ThreadPosix__Pad
	.zero	8
	.long ThreadPosix__PerfStart
	.long ThreadPosix__PerfStop
	.long ThreadPosix__PerfChanged
	.long ThreadPosix__PerfDeleted
	.long ThreadPosix__PerfRunning
	.zero	4
	.long ThreadPosix__QQ
	.long RTHooks__PushEFrame
	.long RTHooks__PopEFrame
	.long RTHooks__LockMutex
	.long RTHooks__UnlockMutex
	.long RTThreadInit__Init
	.long SchedulerPosix__IOWait
	.long SchedulerPosix__IOAlertWait
	.long SchedulerPosix__DisableSwitching
	.long SchedulerPosix__EnableSwitching
	.long Scheduler__Yield
	.long ThreadF__GetCurrentHandlers
	.long ThreadF__SetCurrentHandlers
	.long ThreadF__SuspendOthers
	.long ThreadF__ResumeOthers
	.long ThreadF__ProcessStacks
	.long ThreadF__MyFPState
	.long ThreadF__RegisterHooks
	.long ThreadF__MyId
	.long ThreadF__SetSwitchingInterval
	.long Thread__Fork
	.long Thread__Join
	.long Thread__Wait
	.long Thread__Acquire
	.long Thread__Release
	.long Thread__Broadcast
	.long Thread__Signal
	.long Thread__Pause
	.long Thread__Self
	.long Thread__Alert
	.long Thread__TestAlert
	.long Thread__AlertWait
	.long Thread__AlertJoin
	.long Thread__AlertPause
	.long Thread__GetDefaultStackSize
	.long Thread__MinDefaultStackSize
	.long Thread__IncDefaultStackSize
	.long 2
	.long MM_ThreadPosix+1436
	.long 8
	.ascii	"*ready*"
	.zero	1
	.long 2
	.long MM_ThreadPosix+1456
	.long 11
	.ascii	"condition "
	.zero	2
	.long 2
	.long MM_ThreadPosix+1480
	.long 7
	.ascii	"mutex "
	.zero	2
	.long 2
	.long MM_ThreadPosix+1500
	.long 7
	.ascii	"timer "
	.zero	2
	.long 2
	.long MM_ThreadPosix+1520
	.long 5
	.ascii	"I/O "
	.zero	4
	.long 2
	.long MM_ThreadPosix+1540
	.long 8
	.ascii	"*dying*"
	.zero	1
	.long 2
	.long MM_ThreadPosix+1560
	.long 7
	.ascii	"*dead*"
	.zero	2
	.long 1259778285
	.long 1835408031
	.long 1475387830
	.long -1420845260
	.long 356643957
	.long -279781087
	.zero	4
	.long MM_ThreadPosix+1604
	.long 1259778285
	.long MM_ThreadPosix+1612
	.long -597219081
	.long MM_ThreadPosix+1948
	.long 1475387830
	.long 2
	.long MM_ThreadPosix+1632
	.long 13
	.ascii	"*** Thread #"
	.zero	4
	.long 2
	.long MM_ThreadPosix+1660
	.long 31
	.ascii	" is trying to reacquire mutex "
	.zero	2
	.long 2
	.long MM_ThreadPosix+1704
	.long 26
	.ascii	" which it already holds.\n"
	.zero	3
	.long 2
	.long MM_ThreadPosix+1744
	.long 10
	.ascii	"Thread.m3"
	.zero	3
	.long 2
	.long MM_ThreadPosix+1768
	.long 26
	.ascii	"impossible Thread.Acquire"
	.zero	3
	.long 2
	.long MM_ThreadPosix+1808
	.long 11
	.ascii	"*** Mutex "
	.zero	2
	.long 2
	.long MM_ThreadPosix+1832
	.long 17
	.ascii	" is not locked.\n"
	.zero	4
	.long 2
	.long MM_ThreadPosix+1864
	.long 21
	.ascii	" is held by thread #"
	.zero	4
	.long 2
	.long MM_ThreadPosix+1900
	.long 3
	.ascii	".\n"
	.zero	2
	.long 2
	.long MM_ThreadPosix+1916
	.long 23
	.ascii	"illegal Thread.Release"
	.zero	2
	.long MI_Thread+184
	.zero	4
	.long MM_ThreadPosix+1980
	.long 1561472578
	.long 2
	.long MM_ThreadPosix+1968
	.long 11
	.ascii	"Deadlock !"
	.zero	6
	.long 465865088
	.long 2
	.long MM_ThreadPosix+2000
	.long 33
	.ascii	"'s stack overflowed its limits.\n"
	.zero	4
	.long 2
	.long MM_ThreadPosix+2048
	.long 58
	.ascii	"*** Use Thread.IncDefaultStackSize to get bigger stacks.\n"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2120
	.long 15
	.ascii	"ThreadPosix.m3"
	.zero	2
	.long 2
	.long MM_ThreadPosix+2148
	.long 21
	.ascii	"corrupt thread stack"
	.zero	4
	.long 2
	.long MM_ThreadPosix+2184
	.long 32
	.ascii	"\n\n*****************************"
	.zero	1
	.long 2
	.long MM_ThreadPosix+2228
	.long 36
	.ascii	"**********************************\n"
	.zero	1
	.long 2
	.long MM_ThreadPosix+2276
	.long 34
	.ascii	"  id    Thread.T     closure root"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2324
	.long 32
	.ascii	"                A* waiting for\n"
	.zero	1
	.long 2
	.long MM_ThreadPosix+2368
	.long 28
	.ascii	"!!! NIL thread in ring !!!\n"
	.zero	1
	.long 2
	.long MM_ThreadPosix+2408
	.long 30
	.ascii	"*****************************"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2452
	.long 2
	.ascii	">"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2468
	.long 2
	.ascii	" "
	.zero	3
	.long 2
	.long MM_ThreadPosix+2484
	.long 21
	.ascii	"*main program*      "
	.zero	4
	.long 2
	.long MM_ThreadPosix+2520
	.long 2
	.ascii	"A"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2536
	.long 3
	.ascii	"* "
	.zero	2
	.long 2
	.long MM_ThreadPosix+2552
	.long 3
	.ascii	"  "
	.zero	2
	.long 2
	.long MM_ThreadPosix+2568
	.long 12
	.ascii	" (unlocked)"
	.zero	1
	.long 2
	.long MM_ThreadPosix+2592
	.long 12
	.ascii	" (held by #"
	.zero	1
	.long 2
	.long MM_ThreadPosix+2616
	.long 2
	.ascii	")"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2632
	.long 2
	.ascii	"\n"
	.zero	3
	.long 2
	.long MM_ThreadPosix+2648
	.long 11
	.ascii	"showthread"
	.zero	2
	.long 2
	.long MM_ThreadPosix+2672
	.long 13
	.ascii	"nopreemption"
	.zero	4
	.ascii	"_INITM_ThreadPosix"
	.zero	1
	.ascii	"QQ"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"MyId"
	.zero	1
	.ascii	"RegisterHooks"
	.zero	1
	.ascii	"PerfRunning"
	.zero	1
	.ascii	"PerfDeleted"
	.zero	1
	.ascii	"PerfChanged"
	.zero	1
	.ascii	"PerfStop"
	.zero	1
	.ascii	"PerfStart"
	.zero	1
	.ascii	"Pad"
	.zero	1
	.ascii	"OutA"
	.zero	1
	.ascii	"OutI"
	.zero	1
	.ascii	"OutT"
	.zero	1
	.ascii	"DumpThread"
	.zero	1
	.ascii	"DumpEverybody"
	.zero	1
	.ascii	"MyFPState"
	.zero	1
	.ascii	"Tos"
	.zero	1
	.ascii	"SmashedStack"
	.zero	1
	.ascii	"Transfer"
	.zero	1
	.ascii	"InitContext"
	.zero	1
	.ascii	"DetermineContext"
	.zero	1
	.ascii	"InitTopContext"
	.zero	1
	.ascii	"FreeDeadStacks"
	.zero	1
	.ascii	"InternalYield"
	.zero	1
	.ascii	"ICannotRun"
	.zero	1
	.ascii	"CanRun"
	.zero	1
	.ascii	"SetSwitchingInterval"
	.zero	1
	.ascii	"switch_thread"
	.zero	1
	.ascii	"StartSwitching"
	.zero	1
	.ascii	"EnableSwitching"
	.zero	1
	.ascii	"DisableSwitching"
	.zero	1
	.ascii	"UTimeFromTime"
	.zero	1
	.ascii	"CallSelect"
	.zero	1
	.ascii	"TestFDS"
	.zero	1
	.ascii	"ZeroFDS"
	.zero	1
	.ascii	"XIOWait"
	.zero	1
	.ascii	"IOAlertWait"
	.zero	1
	.ascii	"IOWait"
	.zero	1
	.ascii	"XPause"
	.zero	1
	.ascii	"AlertPause"
	.zero	1
	.ascii	"Pause"
	.zero	1
	.ascii	"ProcessStacks"
	.zero	1
	.ascii	"ResumeOthers"
	.zero	1
	.ascii	"SuspendOthers"
	.zero	1
	.ascii	"PopEFrame"
	.zero	1
	.ascii	"PushEFrame"
	.zero	1
	.ascii	"SetCurrentHandlers"
	.zero	1
	.ascii	"GetCurrentHandlers"
	.zero	1
	.ascii	"SleazyRelease"
	.zero	1
	.ascii	"XRelease"
	.zero	1
	.ascii	"UnlockMutex"
	.zero	1
	.ascii	"ImpossibleAcquire"
	.zero	1
	.ascii	"LockMutex"
	.zero	1
	.ascii	"Release"
	.zero	1
	.ascii	"Acquire"
	.zero	1
	.ascii	"Self"
	.zero	1
	.ascii	"Yield"
	.zero	1
	.ascii	"TestAlert"
	.zero	1
	.ascii	"Alert"
	.zero	1
	.ascii	"XSignal"
	.zero	1
	.ascii	"Broadcast"
	.zero	1
	.ascii	"Signal"
	.zero	1
	.ascii	"XWait"
	.zero	1
	.ascii	"M_ThreadPosix_LINE_332"
	.zero	1
	.ascii	"AlertWait"
	.zero	1
	.ascii	"Wait"
	.zero	1
	.ascii	"XJoin"
	.zero	1
	.ascii	"AlertJoin"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"Fork"
	.zero	1
	.ascii	"IncDefaultStackSize"
	.zero	1
	.ascii	"MinDefaultStackSize"
	.zero	1
	.ascii	"GetDefaultStackSize"
	.zero	1
	.ascii	"Time_Compare"
	.zero	1
	.ascii	"Time_Subtract"
	.zero	1
	.ascii	"Time_Add"
	.zero	1
	.ascii	"UTimeNow"
	.zero	4
	.long _INITM_ThreadPosix
	.long MM_ThreadPosix+2688
	.zero	4
	.long ThreadPosix__QQ
	.long MM_ThreadPosix+2707
	.zero	4
	.long RTThreadInit__Init
	.long MM_ThreadPosix+2710
	.long MI_RTThreadInit+44
	.long ThreadF__MyId
	.long MM_ThreadPosix+2715
	.long MI_ThreadF+280
	.long ThreadF__RegisterHooks
	.long MM_ThreadPosix+2720
	.long MI_ThreadF+276
	.long ThreadPosix__PerfRunning
	.long MM_ThreadPosix+2734
	.zero	4
	.long ThreadPosix__PerfDeleted
	.long MM_ThreadPosix+2746
	.zero	4
	.long ThreadPosix__PerfChanged
	.long MM_ThreadPosix+2758
	.zero	4
	.long ThreadPosix__PerfStop
	.long MM_ThreadPosix+2770
	.zero	4
	.long ThreadPosix__PerfStart
	.long MM_ThreadPosix+2779
	.zero	4
	.long ThreadPosix__Pad
	.long MM_ThreadPosix+2789
	.zero	4
	.long ThreadPosix__OutA
	.long MM_ThreadPosix+2793
	.zero	4
	.long ThreadPosix__OutI
	.long MM_ThreadPosix+2798
	.zero	4
	.long ThreadPosix__OutT
	.long MM_ThreadPosix+2803
	.zero	4
	.long ThreadPosix__DumpThread
	.long MM_ThreadPosix+2808
	.zero	4
	.long ThreadPosix__DumpEverybody
	.long MM_ThreadPosix+2819
	.zero	4
	.long ThreadF__MyFPState
	.long MM_ThreadPosix+2833
	.long MI_ThreadF+168
	.long ThreadPosix__Tos
	.long MM_ThreadPosix+2843
	.zero	4
	.long ThreadPosix__SmashedStack
	.long MM_ThreadPosix+2847
	.zero	4
	.long ThreadPosix__Transfer
	.long MM_ThreadPosix+2860
	.zero	4
	.long ThreadPosix__InitContext
	.long MM_ThreadPosix+2869
	.zero	4
	.long ThreadPosix__DetermineContext
	.long MM_ThreadPosix+2881
	.zero	4
	.long ThreadPosix__InitTopContext
	.long MM_ThreadPosix+2898
	.zero	4
	.long ThreadPosix__FreeDeadStacks
	.long MM_ThreadPosix+2913
	.zero	4
	.long ThreadPosix__InternalYield
	.long MM_ThreadPosix+2928
	.zero	4
	.long ThreadPosix__ICannotRun
	.long MM_ThreadPosix+2942
	.zero	4
	.long ThreadPosix__CanRun
	.long MM_ThreadPosix+2953
	.zero	4
	.long ThreadF__SetSwitchingInterval
	.long MM_ThreadPosix+2960
	.long MI_ThreadF+284
	.long ThreadPosix__switch_thread
	.long MM_ThreadPosix+2981
	.zero	4
	.long ThreadPosix__StartSwitching
	.long MM_ThreadPosix+2995
	.zero	4
	.long SchedulerPosix__EnableSwitching
	.long MM_ThreadPosix+3010
	.long MI_SchedulerPosix+56
	.long SchedulerPosix__DisableSwitching
	.long MM_ThreadPosix+3026
	.long MI_SchedulerPosix+52
	.long ThreadPosix__UTimeFromTime
	.long MM_ThreadPosix+3043
	.zero	4
	.long ThreadPosix__CallSelect
	.long MM_ThreadPosix+3057
	.zero	4
	.long ThreadPosix__TestFDS
	.long MM_ThreadPosix+3068
	.zero	4
	.long ThreadPosix__ZeroFDS
	.long MM_ThreadPosix+3076
	.zero	4
	.long ThreadPosix__XIOWait
	.long MM_ThreadPosix+3084
	.zero	4
	.long SchedulerPosix__IOAlertWait
	.long MM_ThreadPosix+3092
	.long MI_SchedulerPosix+48
	.long SchedulerPosix__IOWait
	.long MM_ThreadPosix+3104
	.long MI_SchedulerPosix+44
	.long ThreadPosix__XPause
	.long MM_ThreadPosix+3111
	.zero	4
	.long Thread__AlertPause
	.long MM_ThreadPosix+3118
	.long MI_Thread+220
	.long Thread__Pause
	.long MM_ThreadPosix+3129
	.long MI_Thread+176
	.long ThreadF__ProcessStacks
	.long MM_ThreadPosix+3135
	.long MI_ThreadF+60
	.long ThreadF__ResumeOthers
	.long MM_ThreadPosix+3149
	.long MI_ThreadF+56
	.long ThreadF__SuspendOthers
	.long MM_ThreadPosix+3162
	.long MI_ThreadF+52
	.long RTHooks__PopEFrame
	.long MM_ThreadPosix+3176
	.long MI_RTHooks+64
	.long RTHooks__PushEFrame
	.long MM_ThreadPosix+3186
	.long MI_RTHooks+60
	.long ThreadF__SetCurrentHandlers
	.long MM_ThreadPosix+3197
	.long MI_ThreadF+48
	.long ThreadF__GetCurrentHandlers
	.long MM_ThreadPosix+3216
	.long MI_ThreadF+44
	.long ThreadPosix__SleazyRelease
	.long MM_ThreadPosix+3235
	.zero	4
	.long ThreadPosix__XRelease
	.long MM_ThreadPosix+3249
	.zero	4
	.long RTHooks__UnlockMutex
	.long MM_ThreadPosix+3258
	.long MI_RTHooks+72
	.long ThreadPosix__ImpossibleAcquire
	.long MM_ThreadPosix+3270
	.zero	4
	.long RTHooks__LockMutex
	.long MM_ThreadPosix+3288
	.long MI_RTHooks+68
	.long Thread__Release
	.long MM_ThreadPosix+3298
	.long MI_Thread+164
	.long Thread__Acquire
	.long MM_ThreadPosix+3306
	.long MI_Thread+160
	.long Thread__Self
	.long MM_ThreadPosix+3314
	.long MI_Thread+180
	.long Scheduler__Yield
	.long MM_ThreadPosix+3319
	.long MI_Scheduler+44
	.long Thread__TestAlert
	.long MM_ThreadPosix+3325
	.long MI_Thread+208
	.long Thread__Alert
	.long MM_ThreadPosix+3335
	.long MI_Thread+204
	.long ThreadPosix__XSignal
	.long MM_ThreadPosix+3341
	.zero	4
	.long Thread__Broadcast
	.long MM_ThreadPosix+3349
	.long MI_Thread+168
	.long Thread__Signal
	.long MM_ThreadPosix+3359
	.long MI_Thread+172
	.long ThreadPosix__XWait
	.long MM_ThreadPosix+3366
	.zero	4
	.long M_ThreadPosix_LINE_332.0
	.long MM_ThreadPosix+3372
	.zero	4
	.long Thread__AlertWait
	.long MM_ThreadPosix+3395
	.long MI_Thread+212
	.long Thread__Wait
	.long MM_ThreadPosix+3405
	.long MI_Thread+156
	.long ThreadPosix__XJoin
	.long MM_ThreadPosix+3410
	.zero	4
	.long Thread__AlertJoin
	.long MM_ThreadPosix+3416
	.long MI_Thread+216
	.long Thread__Join
	.long MM_ThreadPosix+3426
	.long MI_Thread+152
	.long Thread__Fork
	.long MM_ThreadPosix+3431
	.long MI_Thread+148
	.long Thread__IncDefaultStackSize
	.long MM_ThreadPosix+3436
	.long MI_Thread+232
	.long Thread__MinDefaultStackSize
	.long MM_ThreadPosix+3456
	.long MI_Thread+228
	.long Thread__GetDefaultStackSize
	.long MM_ThreadPosix+3476
	.long MI_Thread+224
	.long ThreadPosix__Time_Compare
	.long MM_ThreadPosix+3496
	.zero	4
	.long ThreadPosix__Time_Subtract
	.long MM_ThreadPosix+3509
	.zero	4
	.long ThreadPosix__Time_Add
	.long MM_ThreadPosix+3523
	.zero	4
	.long ThreadPosix__UTimeNow
	.long MM_ThreadPosix+3532
	.zero	8
.byte 43
.byte 132
.byte 1
.byte 4
.byte 4
.byte 42
.byte 64
.byte 4
.byte 42
.byte 244
.byte 4
.byte 4
.byte 4
.byte 42
.byte 44
.byte 4
.byte 43
.byte 248
.byte 1
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/thread/POSIX/ThreadPosix.m3"
	.zero	1
.byte 5
.byte 0
	.ascii	"ThreadPosix.DumpThread.ClosureObject"
	.zero	1
.byte 1
.byte 5
.byte 26
.byte 2
.byte 0
	.ascii	"ThreadPosix.DumpThread.ClosureMethods"
	.zero	1
.byte 24
.byte 1
.byte 20
.byte 4
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 18
.byte 32
	.ascii	"ThreadPosix.FDS"
	.zero	1
.byte 5
.byte 0
	.ascii	"ThreadPosix.PushEFrame.Frame"
	.zero	1
.byte 16
.byte 36
.byte 14
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 14
.byte 14
.byte 16
.byte 16
.byte 35
.byte 4
.byte 5
.byte 5
.byte 5
.byte 5
.byte 5
.byte 5
.byte 14
.byte 14
.byte 14
.byte 14
.byte 5
.byte 5
.byte 5
.byte 14
.byte 1
.byte 14
.byte 26
.byte 32
.byte 18
.byte 16
.byte 16
.byte 35
.byte 14
.byte 14
.byte 16
.byte 36
.byte 14
.byte 18
.byte 20
.byte 4
.byte 1
.byte 16
.byte 26
.byte 7
.byte 1
.byte 16
.byte 26
.byte 7
.byte 0
.byte 41
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 42
.byte 12
.byte 4
.byte 0
.byte 50
.byte 10
.byte 16
.byte 5
.byte 7
.byte 7
.byte 16
.byte 157
.byte 147
.byte 69
.byte 229
.byte 17
.byte 16
.byte 237
.byte 176
.byte 22
.byte 75
.byte 27
.byte 27
.byte 16
.byte 182
.byte 161
.byte 240
.byte 87
.byte 16
.byte 117
.byte 244
.byte 65
.byte 21
.byte 15
.byte 2
.byte 19
.byte 254
.byte 126
.byte 33
.byte 2
.byte 35
.byte 30
.byte 15
.byte 6
.byte 15
.byte 3
.byte 20
.byte 128
.byte 137
.byte 196
.byte 27
.byte 0
.byte 41
.byte 41
.byte 41
.byte 41
.byte 24
.byte 15
.byte 8
.byte 33
.byte 33
.byte 33
.byte 41
.byte 41
.byte 41
.byte 33
.byte 15
.byte 1
.byte 1
.byte 32
.byte 24
.byte 15
.byte 8
.byte 3
.byte 35
.byte 5
.byte 4
.byte 32
.byte 35
.byte 24
.byte 59
.byte 18
.byte 32
.byte 15
.byte 2
.byte 1
.byte 7
.byte 5
.byte 3
.byte 1
.byte 7
.byte 35
	.ascii	"Thread.T Posix-1.6"
	.zero	1
	.ascii	"Thread.T"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 237
.byte 176
.byte 22
.byte 75
	.ascii	"Thread.Condition Posix-1.0"
	.zero	1
	.ascii	"Thread.Condition"
	.zero	1
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 237
.byte 176
.byte 22
.byte 75
.byte 23
	.ascii	"Mutex Posix-1.0"
	.zero	1
	.ascii	"M3_BUILTIN.MUTEX"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
