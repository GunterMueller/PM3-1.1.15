	.file	"Textt.mc"
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
	.type	 Textt__Initialize,@function
Textt__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Reff+44,%eax
	pushl %eax
	pushl $MM_Textt+52
	movl MI_Tipe+52,%eax
	call *%eax
	movl %eax,MI_Textt+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Textt__Initialize,.Lfe1-Textt__Initialize
.globl MM_Textt
.data
	.align 4
	.type	 MM_Textt,@object
	.size	 MM_Textt,248
MM_Textt:
	.long MM_Textt+96
	.zero	16
	.long MM_Textt+80
	.zero	20
	.long Textt__Initialize
	.long 2
	.long MM_Textt+60
	.long 5
	.ascii	"TEXT"
	.zero	4
	.ascii	"Initialize"
	.zero	2
	.long Textt__Initialize
	.long MM_Textt+68
	.long MI_Textt+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Textt.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
