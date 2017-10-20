	.file	"M3BackPosix.mc"
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
	.type	 M3Backend__Open,@function
M3Backend__Open:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3CG_Wr+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3Backend__Open,.Lfe1-M3Backend__Open
	.align 16
	.type	 M3Backend__Close,@function
M3Backend__Close:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3Backend__Close,.Lfe2-M3Backend__Close
.globl MM_M3BackPosix
.data
	.align 4
	.type	 MM_M3BackPosix,@object
	.size	 MM_M3BackPosix,236
MM_M3BackPosix:
	.long MM_M3BackPosix+92
	.zero	16
	.long MM_M3BackPosix+64
	.zero	20
	.long M3Backend__Open
	.long M3Backend__Close
	.ascii	"Close"
	.zero	1
	.ascii	"Open"
	.zero	2
	.long M3Backend__Close
	.long MM_M3BackPosix+52
	.long MI_M3Backend+48
	.long M3Backend__Open
	.long MM_M3BackPosix+58
	.long MI_M3Backend+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3dri"
	.ascii	"ver/src/M3BackPosix.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
