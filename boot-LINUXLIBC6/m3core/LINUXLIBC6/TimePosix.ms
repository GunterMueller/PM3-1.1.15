	.file	"TimePosix.mc"
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
	.type	 Time__Now,@function
Time__Now:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%ebx
	pushl %ebx
	call gettimeofday
	addl $8,%esp
	testl %eax,%eax
	je .L2
	pushl $304
	call _m3_fault
	.align 16
.L2:
	pushl %ebx
	call TimePosix__FromUtime
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Time__Now,.Lfe1-Time__Now
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x412e8480
	.align 4
.LC1:
	.long 0x0,0x3fe00000
.text
	.align 16
	.type	 TimePosix__ToUtime,@function
TimePosix__ToUtime:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	fldl 8(%ebp)
.L4:
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	fnstcw -28(%ebp)
	movl -28(%ebp),%edx
	movb $12,%dh
	movl %edx,-32(%ebp)
	fldcw -32(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %eax
	fldcw -28(%ebp)
	pushl %eax
	fisubl (%esp)
	addl $4,%esp
	fldl .LC0
	fmulp %st,%st(1)
	movl $5,-20(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl %eax,-8(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L5
	fldl .LC1
	faddp %st,%st(1)
	jmp .L8
	.align 16
.L5:
	fldl .LC1
	fsubrp %st,%st(1)
.L8:
	fnstcw -28(%ebp)
	movl -28(%ebp),%edx
	movb $12,%dh
	movl %edx,-32(%ebp)
	fldcw -32(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -28(%ebp)
	movl %eax,-4(%ebp)
	movl 16(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TimePosix__ToUtime,.Lfe2-TimePosix__ToUtime
.section	.rodata
	.align 4
.LC2:
	.long 0x0,0x412e8480
	.align 4
.LC3:
	.long 0x0,0xf4240000,0x4012
.text
	.align 16
	.type	 TimePosix__FromUtime,@function
TimePosix__FromUtime:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L10:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	fildl 4(%eax)
	fldt .LC3
	fdivrp %st,%st(1)
	subl $8,%esp
	fstpl (%esp)
	popl %edx
	popl %ecx
	movl %edx,-16(%ebp)
	movl %ecx,-12(%ebp)
	fldl -16(%ebp)
	fiaddl (%eax)
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TimePosix__FromUtime,.Lfe3-TimePosix__FromUtime
	.align 16
	.type	 _INITM_TimePosix,@function
_INITM_TimePosix:
	pushl %ebp
	movl %esp,%ebp
	call Time__Now
	fstpl MM_TimePosix+44
	jmp .L13
	.align 16
.L15:
	fstp %st(0)
	fstp %st(0)
.L13:
	call Time__Now
	fstl MM_TimePosix+52
	fldl MM_TimePosix+44
	fucom %st(1)
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L15
	fsubrp %st,%st(1)
	movl %ebp,%esp
	popl %ebp
	fstpl MI_Time+48
	ret
.Lfe4:
	.size	 _INITM_TimePosix,.Lfe4-_INITM_TimePosix
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TimePosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_TimePosix
.data
	.align 4
	.type	 MM_TimePosix,@object
	.size	 MM_TimePosix,316
MM_TimePosix:
	.long MM_TimePosix+164
	.zero	16
	.long MM_TimePosix+112
	.zero	16
	.long _INITM_TimePosix
	.zero	16
	.long TimePosix__ToUtime
	.long TimePosix__FromUtime
	.long Time__Now
	.ascii	"_INITM_TimePosix"
	.zero	1
	.ascii	"FromUtime"
	.zero	1
	.ascii	"ToUtime"
	.zero	1
	.ascii	"Now"
	.zero	2
	.long _INITM_TimePosix
	.long MM_TimePosix+72
	.zero	4
	.long TimePosix__FromUtime
	.long MM_TimePosix+89
	.long MI_TimePosix+48
	.long TimePosix__ToUtime
	.long MM_TimePosix+99
	.long MI_TimePosix+44
	.long Time__Now
	.long MM_TimePosix+107
	.long MI_Time+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/time/POSIX/TimePosix.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
