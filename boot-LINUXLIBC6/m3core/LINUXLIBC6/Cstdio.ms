	.file	"Cstdio.mc"
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
	.type	 _INITM_Cstdio,@function
_INITM_Cstdio:
	pushl %ebp
	movl %esp,%ebp
	movl $_IO_stdin_,MI_Cstdio+148
	movl $_IO_stdout_,MI_Cstdio+152
	movl $_IO_stderr_,MI_Cstdio+156
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_Cstdio,.Lfe1-_INITM_Cstdio
.globl MM_Cstdio
.data
	.align 4
	.type	 MM_Cstdio,@object
	.size	 MM_Cstdio,228
MM_Cstdio:
	.long MM_Cstdio+76
	.zero	16
	.long MM_Cstdio+60
	.zero	16
	.long _INITM_Cstdio
	.ascii	"_INITM_Cstdio"
	.zero	3
	.long _INITM_Cstdio
	.long MM_Cstdio+44
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/C/LINUXLIBC6/Cstdio.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
