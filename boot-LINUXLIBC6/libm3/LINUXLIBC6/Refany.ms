	.file	"Refany.mc"
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
	.type	 Refany__Equal,@function
Refany__Equal:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Refany__Equal,.Lfe1-Refany__Equal
	.align 16
	.type	 Refany__Hash,@function
Refany__Hash:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L3:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_Refany+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L4:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Refany__Hash,.Lfe2-Refany__Hash
	.align 16
	.type	 Refany__Compare,@function
Refany__Compare:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L6:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_Refany+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Refany__Compare,.Lfe3-Refany__Compare
.globl MM_Refany
.data
	.align 4
	.type	 MM_Refany,@object
	.size	 MM_Refany,280
MM_Refany:
	.long MM_Refany+136
	.zero	16
	.long MM_Refany+96
	.zero	20
	.long MM_Refany+48
	.ascii	"Refany.Error"
	.zero	4
	.long Refany__Equal
	.long Refany__Hash
	.long Refany__Compare
	.ascii	"Compare"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	2
	.long Refany__Compare
	.long MM_Refany+76
	.long MI_Refany+156
	.long Refany__Hash
	.long MM_Refany+84
	.long MI_Refany+152
	.long Refany__Equal
	.long MM_Refany+89
	.long MI_Refany+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/Refany.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
