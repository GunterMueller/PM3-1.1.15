	.file	"RTHeapRep.mc"
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
	.type	 RTHeapRep__UnsafeGetShape,@function
RTHeapRep__UnsafeGetShape:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl %ebx,%eax
	testl %ebx,%ebx
	je .L2
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
.L2:
	cmpl $1048575,%eax
	jle .L3
	pushl $273
	call _m3_fault
	.align 16
.L3:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L4
	pushl $308
	call _m3_fault
	.align 16
.L4:
	movl 44(%eax),%eax
	movl %eax,(%esi)
	testl %eax,%eax
	je .L1
	addl $4,%ebx
	movl %ebx,(%edi)
.L1:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHeapRep__UnsafeGetShape,.Lfe1-RTHeapRep__UnsafeGetShape
	.align 16
	.type	 RTHeapRep__InvokeMonitors,@function
RTHeapRep__InvokeMonitors:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	cmpb $0,8(%ebp)
	je .L7
	movl MM_RTHeapRep+148,%ebx
	jmp .L8
	.align 16
.L9:
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %ebx
	call *%eax
	movl 4(%ebx),%ebx
	addl $4,%esp
.L8:
	testl %ebx,%ebx
	jne .L9
	jmp .L6
	.align 16
.L7:
	movl MM_RTHeapRep+152,%ebx
	jmp .L12
	.align 16
.L13:
	movl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %ebx
	call *%eax
	movl 8(%ebx),%ebx
	addl $4,%esp
.L12:
	testl %ebx,%ebx
	jne .L13
.L6:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeapRep__InvokeMonitors,.Lfe2-RTHeapRep__InvokeMonitors
	.align 16
	.type	 RTHeapRep__RegisterMonitor,@function
RTHeapRep__RegisterMonitor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl MM_RTHeapRep+148,%eax
	movl %eax,4(%edx)
	testl %eax,%eax
	jne .L16
	movl %edx,MM_RTHeapRep+152
	jmp .L17
	.align 16
.L16:
	movl %edx,8(%eax)
.L17:
	movl %edx,MM_RTHeapRep+148
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeapRep__RegisterMonitor,.Lfe3-RTHeapRep__RegisterMonitor
	.align 16
	.type	 RTHeapRep__UnregisterMonitor,@function
RTHeapRep__UnregisterMonitor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	cmpl %ecx,MM_RTHeapRep+148
	jne .L19
	cmpl %ecx,MM_RTHeapRep+152
	jne .L20
	movl $0,MM_RTHeapRep+148
	movl $0,MM_RTHeapRep+152
	jmp .L18
	.align 16
.L20:
	movl 4(%ecx),%eax
	movl %eax,MM_RTHeapRep+148
	movl $0,8(%eax)
	jmp .L18
	.align 16
.L19:
	cmpl %ecx,MM_RTHeapRep+152
	jne .L23
	movl 8(%ecx),%eax
	movl %eax,MM_RTHeapRep+152
	movl $0,4(%eax)
	jmp .L18
	.align 16
.L23:
	movl 8(%ecx),%edx
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 4(%ecx),%edx
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
.L18:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeapRep__UnregisterMonitor,.Lfe4-RTHeapRep__UnregisterMonitor
	.align 16
	.type	 RTHeapRep__Noop,@function
RTHeapRep__Noop:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTHeapRep__Noop,.Lfe5-RTHeapRep__Noop
	.align 16
	.type	 RTHeapRep__CheckTypes,@function
RTHeapRep__CheckTypes:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $9
	pushl $0
	leal -12(%ebp),%eax
	pushl %eax
	call memset
	xorl %esi,%esi
	movl MI_RT0u+156,%edi
	decl %edi
	addl $12,%esp
	jmp .L27
	.align 16
.L28:
	cmpl $1048575,%esi
	jle .L29
	pushl $1665
	call _m3_fault
	.align 16
.L29:
	pushl %esi
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L30
	pushl $1668
	call _m3_fault
	.align 16
.L30:
	movl %eax,-16(%ebp)
	cmpl $0,20(%eax)
	je .L31
	cmpl $0,44(%eax)
	jne .L31
	movl 28(%eax),%ebx
	pushl $4
	pushl %ebx
	movl MI_RTMisc+56,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,%ebx
	je .L31
	pushl $1712
	call _m3_fault
	.align 16
.L31:
	incl %esi
.L27:
	cmpl %edi,%esi
	jle .L28
	xorl %eax,%eax
.L34:
	movb $0,-12(%eax,%ebp)
	incl %eax
	cmpl $8,%eax
	jle .L34
	movb $1,-11(%ebp)
	movb $1,-10(%ebp)
	movb $1,-8(%ebp)
	movb $1,-4(%ebp)
	xorl %ebx,%ebx
	movl MI_RT0u+156,%esi
	decl %esi
	jmp .L37
	.align 16
.L38:
	cmpl $1048575,%ebx
	jle .L39
	pushl $1969
	call _m3_fault
	.align 16
.L39:
	pushl %ebx
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L40
	pushl $1972
	call _m3_fault
	.align 16
.L40:
	movl %eax,-16(%ebp)
	cmpl $0,20(%eax)
	je .L41
	movl 32(%eax),%eax
	cmpl $8,%eax
	jbe .L42
	pushl $2001
	call _m3_fault
	.align 16
.L42:
	cmpb $0,-12(%eax,%ebp)
	jne .L41
	pushl $2000
	call _m3_fault
	.align 16
.L41:
	incl %ebx
.L37:
	cmpl %esi,%ebx
	jle .L38
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHeapRep__CheckTypes,.Lfe6-RTHeapRep__CheckTypes
	.align 16
	.type	 M_RTHeapRep_tc3630505_LINK,@function
M_RTHeapRep_tc3630505_LINK:
	pushl %ebp
	movl MM_RTHeapRep+524,%eax
	movl %esp,%ebp
	movl 52(%eax),%edx
	movl %ebp,%esp
	movl MM_RTHeapRep+156,%eax
	movl %eax,4(%edx)
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe7:
	.size	 M_RTHeapRep_tc3630505_LINK,.Lfe7-M_RTHeapRep_tc3630505_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeapRep
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_RTHeapRep
.data
	.align 4
	.type	 MM_RTHeapRep,@object
	.size	 MM_RTHeapRep,580
MM_RTHeapRep:
	.long MM_RTHeapRep+353
	.long MM_RTHeapRep+44
	.long MM_RTHeapRep+524
	.long MM_RTHeapRep+180
	.zero	4
	.long MM_RTHeapRep+272
	.zero	4
	.long MM_RTHeapRep+348
	.long MM_RTHeapRep+348
	.zero	16
	.long -1016920827
.byte 247
.byte 190
.byte 129
.byte 222
.byte 242
.byte 187
.byte 226
.byte 29
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTHeapRep+507
	.long MM_RTHeapRep+510
	.long MM_RTHeapRep+513
	.zero	4
	.long M_RTHeapRep_tc3630505_LINK
	.long 808491719
	.zero	12
	.long MM_RTHeapRep+532
	.long MM_RTHeapRep+554
	.zero	12
	.long RTHeapRep__Noop
	.long RTHeapRep__UnsafeGetShape
	.long RTHeapRep__RegisterMonitor
	.long RTHeapRep__UnregisterMonitor
	.long RTHeapRep__InvokeMonitors
	.long RTHeapRep__CheckTypes
	.long 41259960
	.long -1016920827
	.zero	4
	.ascii	"CheckTypes"
	.zero	1
	.ascii	"Noop"
	.zero	1
	.ascii	"UnregisterMonitor"
	.zero	1
	.ascii	"RegisterMonitor"
	.zero	1
	.ascii	"InvokeMonitors"
	.zero	1
	.ascii	"UnsafeGetShape"
	.zero	1
	.long RTHeapRep__CheckTypes
	.long MM_RTHeapRep+192
	.long MI_RTHeapRep+668
	.long RTHeapRep__Noop
	.long MM_RTHeapRep+203
	.zero	4
	.long RTHeapRep__UnregisterMonitor
	.long MM_RTHeapRep+208
	.long MI_RTHeapRep+548
	.long RTHeapRep__RegisterMonitor
	.long MM_RTHeapRep+226
	.long MI_RTHeapRep+544
	.long RTHeapRep__InvokeMonitors
	.long MM_RTHeapRep+242
	.long MI_RTHeapRep+552
	.long RTHeapRep__UnsafeGetShape
	.long MM_RTHeapRep+257
	.long MI_RTHeapRep+380
	.zero	4
.byte 42
.byte 148
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHeapRep.m3"
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
.byte 184
.byte 147
.byte 117
.byte 2
.byte 23
	.zero	6
	.long -1016920827
	.ascii	"RTHeap.MonitorClosure"
	.zero	1
	.ascii	"RTHeapRep.MonitorClosure"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
