	.file	"PipePosix.mc"
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
	.type	 Pipe__Open,@function
Pipe__Open:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	leal -8(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl %eax
	call pipe
	addl $4,%esp
	testl %eax,%eax
	jge .L2
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L2:
	pushl $1
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_FilePosix+152,%eax
	call *%eax
	movl %eax,(%ebx)
	pushl $2
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_FilePosix+152,%eax
	call *%eax
	leal -16(%ebp),%esp
	movl %eax,(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Pipe__Open,.Lfe1-Pipe__Open
.globl MM_PipePosix
.data
	.align 4
	.type	 MM_PipePosix,@object
	.size	 MM_PipePosix,220
MM_PipePosix:
	.long MM_PipePosix+72
	.zero	16
	.long MM_PipePosix+56
	.zero	20
	.long Pipe__Open
	.ascii	"Open"
	.zero	4
	.long Pipe__Open
	.long MM_PipePosix+48
	.long MI_Pipe+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/POSIX/PipePosix.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
