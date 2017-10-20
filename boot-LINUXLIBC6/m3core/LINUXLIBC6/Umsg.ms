	.file	"Umsg.mc"
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
	.type	 Umsg__MSG_LOCK,@function
Umsg__MSG_LOCK:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Umsg__MSG_LOCK,.Lfe1-Umsg__MSG_LOCK
	.align 16
	.type	 Umsg__MSG_UNLOCK,@function
Umsg__MSG_UNLOCK:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Umsg__MSG_UNLOCK,.Lfe2-Umsg__MSG_UNLOCK
.globl MM_Umsg
.data
	.align 4
	.type	 MM_Umsg,@object
	.size	 MM_Umsg,252
MM_Umsg:
	.long MM_Umsg+100
	.zero	16
	.long MM_Umsg+72
	.zero	20
	.long Umsg__MSG_LOCK
	.long Umsg__MSG_UNLOCK
	.ascii	"MSG_UNLOCK"
	.zero	1
	.ascii	"MSG_LOCK"
	.zero	1
	.long Umsg__MSG_UNLOCK
	.long MM_Umsg+52
	.long MI_Umsg+152
	.long Umsg__MSG_LOCK
	.long MM_Umsg+63
	.long MI_Umsg+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/unix/linux-libc6/Umsg.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
