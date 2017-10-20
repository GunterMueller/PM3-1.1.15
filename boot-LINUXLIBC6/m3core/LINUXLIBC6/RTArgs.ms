	.file	"RTArgs.mc"
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
	.type	 RTArgs__ArgC,@function
RTArgs__ArgC:
	pushl %ebp
	movl %esp,%ebp
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L2
	pushl $292
	call _m3_fault
	.align 16
.L2:
	movl 8(%eax),%eax
	testl %eax,%eax
	jge .L3
	pushl $289
	call _m3_fault
	.align 16
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTArgs__ArgC,.Lfe1-RTArgs__ArgC
	.align 16
	.type	 RTArgs__GetArg,@function
RTArgs__GetArg:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl MI_RTLinker+148,%edx
	movl 8(%ebp),%ecx
	testl %edx,%edx
	jne .L5
	pushl $356
	call _m3_fault
	.align 16
.L5:
	movl 12(%edx),%eax
	leal (%eax,%ecx,4),%eax
	cmpl %ecx,8(%edx)
	jg .L7
	pushl $417
	call _m3_fault
	.align 16
.L7:
	testl %eax,%eax
	jne .L10
	pushl $452
	call _m3_fault
	.align 16
.L10:
	movl (%eax),%eax
	pushl %eax
	movl MI_M3toC+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTArgs__GetArg,.Lfe2-RTArgs__GetArg
	.align 16
	.type	 RTArgs__EnvC,@function
RTArgs__EnvC:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L12
	pushl $548
	call _m3_fault
	.align 16
.L12:
	movl 16(%eax),%eax
	cmpl $0,MM_RTArgs+44
	jne .L13
	jmp .L14
	.align 16
.L15:
	addl $4,%eax
	incl %edx
.L14:
	testl %eax,%eax
	jne .L16
	pushl $596
	call _m3_fault
	.align 16
.L16:
	cmpl $0,(%eax)
	jne .L15
	movl %edx,MM_RTArgs+44
.L13:
	movl MM_RTArgs+44,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTArgs__EnvC,.Lfe3-RTArgs__EnvC
	.align 16
	.type	 RTArgs__GetEnv,@function
RTArgs__GetEnv:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L19
	pushl $756
	call _m3_fault
	.align 16
.L19:
	movl 16(%eax),%eax
	leal (%eax,%esi,4),%ebx
	call RTArgs__EnvC
	cmpl %eax,%esi
	jl .L20
	pushl $817
	call _m3_fault
	.align 16
.L20:
	testl %ebx,%ebx
	jne .L23
	pushl $852
	call _m3_fault
	.align 16
.L23:
	movl (%ebx),%eax
	pushl %eax
	movl MI_M3toC+56,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTArgs__GetEnv,.Lfe4-RTArgs__GetEnv
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTArgs
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_RTArgs
.data
	.align 4
	.type	 MM_RTArgs,@object
	.size	 MM_RTArgs,292
MM_RTArgs:
	.long MM_RTArgs+140
	.zero	16
	.long MM_RTArgs+88
	.zero	24
	.long RTArgs__ArgC
	.long RTArgs__GetArg
	.long RTArgs__EnvC
	.long RTArgs__GetEnv
	.ascii	"GetEnv"
	.zero	1
	.ascii	"EnvC"
	.zero	1
	.ascii	"GetArg"
	.zero	1
	.ascii	"ArgC"
	.zero	1
	.long RTArgs__GetEnv
	.long MM_RTArgs+64
	.long MI_RTArgs+56
	.long RTArgs__EnvC
	.long MM_RTArgs+71
	.long MI_RTArgs+52
	.long RTArgs__GetArg
	.long MM_RTArgs+76
	.long MI_RTArgs+48
	.long RTArgs__ArgC
	.long MM_RTArgs+83
	.long MI_RTArgs+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/POSIX/RTArgs.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
