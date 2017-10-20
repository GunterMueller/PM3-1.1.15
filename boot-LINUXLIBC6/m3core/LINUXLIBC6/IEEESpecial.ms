	.file	"IEEESpecial.mc"
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
	.type	 _INITM_IEEESpecial,@function
_INITM_IEEESpecial:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RealRep+44,%eax
	movl %eax,MI_IEEESpecial+44
	movl MI_RealRep+48,%eax
	movl %eax,MI_IEEESpecial+48
	movl MI_RealRep+52,%eax
	movl %eax,MI_IEEESpecial+52
	movl MI_LongRealRep+44,%edi
	movl %edi,MI_IEEESpecial+56
	movl MI_LongRealRep+48,%esi
	movl %esi,MI_IEEESpecial+60
	movl MI_LongRealRep+52,%ebx
	movl %ebx,MI_IEEESpecial+64
	movl MI_LongRealRep+56,%ecx
	movl %ecx,MI_IEEESpecial+68
	movl MI_LongRealRep+60,%edx
	movl %edx,MI_IEEESpecial+72
	movl MI_LongRealRep+64,%eax
	movl %eax,MI_IEEESpecial+76
	movl %edi,MI_IEEESpecial+80
	movl %esi,MI_IEEESpecial+84
	movl %ebx,MI_IEEESpecial+88
	movl %ecx,MI_IEEESpecial+92
	movl %edx,MI_IEEESpecial+96
	leal -12(%ebp),%esp
	movl %eax,MI_IEEESpecial+100
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_IEEESpecial,.Lfe1-_INITM_IEEESpecial
.globl MM_IEEESpecial
.data
	.align 4
	.type	 MM_IEEESpecial,@object
	.size	 MM_IEEESpecial,236
MM_IEEESpecial:
	.long MM_IEEESpecial+80
	.zero	16
	.long MM_IEEESpecial+64
	.zero	16
	.long _INITM_IEEESpecial
	.ascii	"_INITM_IEEESpecial"
	.zero	2
	.long _INITM_IEEESpecial
	.long MM_IEEESpecial+44
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/float/Common/IEEESpecial.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
