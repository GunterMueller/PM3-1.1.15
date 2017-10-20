	.file	"CoffTime.mc"
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
	.type	 CoffTime__Now,@function
CoffTime__Now:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Time+44,%eax
	subl $8,%esp
	call *%eax
	leal -8(%ebp),%eax
	pushl %eax
	subl $8,%esp
	fstpl (%esp)
	movl MI_TimePosix+44,%eax
	call *%eax
	movl -8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 CoffTime__Now,.Lfe1-CoffTime__Now
	.align 16
	.type	 CoffTime__OfFile,@function
CoffTime__OfFile:
	pushl %ebp
	movl %esp,%ebp
	subl $204,%esp
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
.L3:
	movl $MM_CoffTime+52,-196(%ebp)
	movl $0,-200(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-204(%ebp)
	leal -204(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -184(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L4
	leal -24(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_FS+184,%eax
	call *%eax
	movl -204(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $8,%esp
	jmp .L5
	.align 16
.L4:
	xorl %eax,%eax
	jmp .L7
	.align 16
.L5:
	leal -8(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	movl -20(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_TimePosix+44,%eax
	call *%eax
	movl -8(%ebp),%eax
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 CoffTime__OfFile,.Lfe2-CoffTime__OfFile
.globl MM_CoffTime
.data
	.align 4
	.type	 MM_CoffTime,@object
	.size	 MM_CoffTime,248
MM_CoffTime:
	.long MM_CoffTime+100
	.zero	16
	.long MM_CoffTime+72
	.zero	20
	.long CoffTime__Now
	.long CoffTime__OfFile
	.long MI_OSError+44
	.zero	4
	.ascii	"OfFile"
	.zero	1
	.ascii	"Now"
	.zero	2
	.long CoffTime__OfFile
	.long MM_CoffTime+60
	.long MI_CoffTime+48
	.long CoffTime__Now
	.long MM_CoffTime+67
	.long MI_CoffTime+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/POSIX/CoffTime.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
