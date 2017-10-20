	.file	"MachineIDPosix.mc"
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
	.type	 MachineID__Get,@function
MachineID__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
.L2:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -8(%ebp),%eax
	pushl %eax
	call MachineID__CanGet
	addl $4,%esp
	testl %eax,%eax
	je .L3
	movl 8(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movw -4(%ebp),%ax
	movw %ax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L1
	.align 16
.L3:
	pushl %eax
	pushl $MM_MachineIDPosix+148
	movl MI_RTHooks+52,%eax
	call *%eax
.L4:
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MachineID__Get,.Lfe1-MachineID__Get
	.align 16
	.type	 MachineID__CanGet,@function
MachineID__CanGet:
	pushl %ebp
	movl %esp,%ebp
	subl $436,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L6:
	movl $5,-428(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-432(%ebp)
	leal -432(%ebp),%esi
	movl %esi,RTThread__handlerStack
	xorl %ebx,%ebx
	movl %ebx,-388(%ebp)
	movl %ebx,-384(%ebp)
	pushl %ebx
	pushl $1
	pushl $1
	call socket
	movl %eax,%edx
	movl %edx,%edi
	addl $12,%esp
	testl %edx,%edx
	jl .L7
	movl $352,-388(%ebp)
	leal -380(%ebp),%esi
	movl %esi,-384(%ebp)
	leal -388(%ebp),%eax
	pushl %eax
	pushl $-1073190636
	pushl %edx
	call ioctl
	movl %eax,%edx
	addl $12,%esp
	cmpl $-1,%edx
	je .L7
	movl -388(%ebp),%eax
	sarl $5,%eax
	decl %eax
	movl %eax,-436(%ebp)
	jmp .L9
	.align 16
.L10:
	cmpl $10,%ebx
	jle .L11
	pushl $1169
	call _m3_fault
	.align 16
.L11:
	movl %ebx,%eax
	sall $5,%eax
	addl %ebp,%eax
	leal -380(%eax),%edx
	movl -380(%eax),%eax
	movl %eax,-28(%ebp)
	movl 4(%edx),%eax
	movl %eax,-24(%ebp)
	movl 8(%edx),%eax
	movl %eax,-20(%ebp)
	movl 12(%edx),%eax
	movl %eax,-16(%ebp)
	leal -28(%ebp),%eax
	pushl %eax
	pushl $-1071879908
	pushl %edi
	call ioctl
	movl %eax,%edx
	addl $12,%esp
	cmpl $-1,%edx
	je .L12
	cmpb $0,-12(%ebp)
	jne .L13
	cmpb $0,-11(%ebp)
	je .L12
.L13:
	movl 8(%ebp),%edx
	movl -12(%ebp),%eax
	movl %eax,(%edx)
	movw -8(%ebp),%ax
	movw %ax,4(%edx)
	jmp .L25
	.align 16
.L12:
	incl %ebx
.L9:
	cmpl %ebx,-436(%ebp)
	jge .L10
.L7:
	pushl $32
	leal -424(%ebp),%ebx
	pushl %ebx
	call gethostname
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L15
	pushl %ebx
	call gethostbyname
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L15
	cmpl $4,12(%ebx)
	jne .L15
	movl 16(%ebx),%eax
	testl %eax,%eax
	jne .L19
	pushl $1444
	call _m3_fault
	.align 16
.L19:
	movl (%eax),%ecx
	movl 8(%ebp),%eax
	movb $0,(%eax)
	movl 8(%ebp),%eax
	movb $0,1(%eax)
	testl %ecx,%ecx
	jne .L20
	pushl $1492
	call _m3_fault
	.align 16
.L20:
	movl 8(%ebp),%edx
	movb (%ecx),%al
	movb %al,2(%edx)
	movl 8(%ebp),%edx
	movb 1(%ecx),%al
	movb %al,3(%edx)
	movl 8(%ebp),%edx
	movb 2(%ecx),%al
	movb %al,4(%edx)
	movl 8(%ebp),%edx
	movb 3(%ecx),%al
	movb %al,5(%edx)
.L25:
	movl -432(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L5
	.align 16
.L15:
	movl 8(%ebp),%eax
	movb $0,(%eax)
	movl 8(%ebp),%eax
	movb $0,1(%eax)
	movl 8(%ebp),%eax
	movb $0,2(%eax)
	movl 8(%ebp),%eax
	movb $0,3(%eax)
	movl 8(%ebp),%eax
	movb $0,4(%eax)
	movl 8(%ebp),%eax
	movb $0,5(%eax)
	movl -432(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L24:
.L5:
	leal -448(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MachineID__CanGet,.Lfe2-MachineID__CanGet
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MachineIDPosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_MachineIDPosix
.data
	.align 4
	.type	 MM_MachineIDPosix,@object
	.size	 MM_MachineIDPosix,524
MM_MachineIDPosix:
	.long MM_MachineIDPosix+328
	.long MM_MachineIDPosix+44
	.zero	12
	.long MM_MachineIDPosix+300
	.zero	28
	.long 1551241715
.byte 239
.byte 104
.byte 220
.byte 70
.byte 28
.byte 121
.byte 170
.byte 26
	.zero	8
	.long 32
	.long 4
	.zero	20
	.long MM_MachineIDPosix+514
	.zero	40
	.long MM_MachineIDPosix+176
	.long MM_MachineIDPosix+152
	.ascii	"MachineIDPosix.Failure"
	.zero	10
	.long -988662723
.byte 114
.byte 28
.byte 187
.byte 196
.byte 79
.byte 40
.byte 169
.byte 1
	.zero	8
	.long 4
	.long 1
	.zero	20
	.long MM_MachineIDPosix+481
	.zero	36
	.long MM_MachineIDPosix+486
	.zero	4
	.long MachineID__Get
	.long MachineID__CanGet
	.ascii	"CanGet"
	.zero	1
	.ascii	"Get"
	.zero	2
	.long MachineID__CanGet
	.long MM_MachineIDPosix+288
	.long MI_MachineID+48
	.long MachineID__Get
	.long MM_MachineIDPosix+295
	.long MI_MachineID+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/uid/POSIX/MachineIDPosix.m3"
	.zero	1
.byte 1
.byte 16
.byte 26
.byte 4
.byte 0
	.ascii	"MachineIDPosix.CanGet.1.Ptr"
	.zero	1
.byte 1
.byte 16
.byte 26
.byte 16
.byte 17
.byte 1
.byte 12
.byte 26
.byte 14
.byte 0
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
