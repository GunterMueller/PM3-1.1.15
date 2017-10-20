	.file	"Mutex.mc"
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
	.type	 Mutex__Initialize,@function
Mutex__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_ObjectRef+44,%eax
	pushl %eax
	pushl $MM_Mutex+52
	movl MI_Tipe+52,%eax
	call *%eax
	movl %eax,MI_Mutex+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Mutex__Initialize,.Lfe1-Mutex__Initialize
.globl MM_Mutex
.data
	.align 4
	.type	 MM_Mutex,@object
	.size	 MM_Mutex,248
MM_Mutex:
	.long MM_Mutex+96
	.zero	16
	.long MM_Mutex+80
	.zero	20
	.long Mutex__Initialize
	.long 2
	.long MM_Mutex+60
	.long 6
	.ascii	"MUTEX"
	.zero	3
	.ascii	"Initialize"
	.zero	2
	.long Mutex__Initialize
	.long MM_Mutex+68
	.long MI_Mutex+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Mutex.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
