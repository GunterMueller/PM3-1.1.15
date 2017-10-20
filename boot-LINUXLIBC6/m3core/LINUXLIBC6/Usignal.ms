	.file	"Usignal.mc"
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
	.type	 Usignal__sigmask,@function
Usignal__sigmask:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%edx
	movl 8(%ebp),%ecx
	decl %ecx
	js .L2
	xorl %eax,%eax
	cmpl $31,%ecx
	jg .L3
	movl %edx,%eax
	sall %cl,%eax
	jmp .L3
	.align 16
.L2:
	negl %ecx
	xorl %eax,%eax
	cmpl $31,%ecx
	jg .L3
	movl %edx,%eax
	shrl %cl,%eax
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Usignal__sigmask,.Lfe1-Usignal__sigmask
	.align 16
	.type	 _INITM_Usignal,@function
_INITM_Usignal:
	pushl %ebp
	movl %esp,%ebp
	movl $-1,MI_Usignal+508
	movl $-1,MI_Usignal+512
	movl $0,MI_Usignal+516
	movl $1,MI_Usignal+520
	movl $3,MI_Usignal+524
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 _INITM_Usignal,.Lfe2-_INITM_Usignal
.globl MM_Usignal
.data
	.align 4
	.type	 MM_Usignal,@object
	.size	 MM_Usignal,256
MM_Usignal:
	.long MM_Usignal+100
	.zero	16
	.long MM_Usignal+72
	.zero	16
	.long _INITM_Usignal
	.long Usignal__sigmask
	.ascii	"_INITM_Usignal"
	.zero	1
	.ascii	"sigmask"
	.zero	2
	.long _INITM_Usignal
	.long MM_Usignal+48
	.zero	4
	.long Usignal__sigmask
	.long MM_Usignal+63
	.long MI_Usignal+528
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/unix/linux-libc6/Usignal.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
