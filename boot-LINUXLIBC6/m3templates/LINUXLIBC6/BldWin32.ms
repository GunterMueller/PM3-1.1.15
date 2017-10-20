	.file	"BldWin32.mc"
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
	.type	 BldWin32__DelFile,@function
BldWin32__DelFile:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L2:
	movl $MM_BldWin32+56,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L1
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_FS+64,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L3:
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 BldWin32__DelFile,.Lfe1-BldWin32__DelFile
	.align 16
	.type	 BldWin32__LinkFile,@function
BldWin32__LinkFile:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
.L7:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	pushl %edx
	pushl %ecx
	pushl %ebx
	movl MI_BldQuake+148,%eax
	call *%eax
.L8:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 BldWin32__LinkFile,.Lfe2-BldWin32__LinkFile
	.align 16
	.type	 BldWin32__MakeExec,@function
BldWin32__MakeExec:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 BldWin32__MakeExec,.Lfe3-BldWin32__MakeExec
.globl MM_BldWin32
.data
	.align 4
	.type	 MM_BldWin32,@object
	.size	 MM_BldWin32,276
MM_BldWin32:
	.long MM_BldWin32+132
	.zero	16
	.long MM_BldWin32+92
	.zero	20
	.long BldWin32__DelFile
	.long BldWin32__LinkFile
	.long BldWin32__MakeExec
	.long MI_OSError+44
	.zero	4
	.ascii	"MakeExec"
	.zero	1
	.ascii	"LinkFile"
	.zero	1
	.ascii	"DelFile"
	.zero	3
	.long BldWin32__MakeExec
	.long MM_BldWin32+64
	.long MI_BldWin32+52
	.long BldWin32__LinkFile
	.long MM_BldWin32+73
	.long MI_BldWin32+48
	.long BldWin32__DelFile
	.long MM_BldWin32+82
	.long MI_BldWin32+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3tem"
	.ascii	"plates/src/BldWin32.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
