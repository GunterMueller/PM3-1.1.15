	.file	"Unetdb.mc"
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
	.type	 Unetdb__VALID_SVC,@function
Unetdb__VALID_SVC:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	jle .L2
	cmpl $3,%edx
	setle %al
	andl $255,%eax
.L2:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Unetdb__VALID_SVC,.Lfe1-Unetdb__VALID_SVC
.globl MM_Unetdb
.data
	.align 4
	.type	 MM_Unetdb,@object
	.size	 MM_Unetdb,232
MM_Unetdb:
	.long MM_Unetdb+76
	.zero	16
	.long MM_Unetdb+60
	.zero	20
	.long Unetdb__VALID_SVC
	.ascii	"VALID_SVC"
	.zero	3
	.long Unetdb__VALID_SVC
	.long MM_Unetdb+48
	.long MI_Unetdb+460
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/unix/linux-libc6/Unetdb.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
