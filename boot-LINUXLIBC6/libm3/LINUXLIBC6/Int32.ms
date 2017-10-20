	.file	"Int32.mc"
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
	.type	 Int32__Equal,@function
Int32__Equal:
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
	.size	 Int32__Equal,.Lfe1-Int32__Equal
	.align 16
	.type	 Int32__Hash,@function
Int32__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Int32__Hash,.Lfe2-Int32__Hash
	.align 16
	.type	 Int32__Compare,@function
Int32__Compare:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	cmpl %eax,%edx
	jge .L4
	movl $-1,%eax
	jmp .L6
	.align 16
.L4:
	cmpl %eax,%edx
	je .L5
	movl $1,%eax
	jmp .L6
	.align 16
.L5:
	xorl %eax,%eax
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Int32__Compare,.Lfe3-Int32__Compare
.globl MM_Int32
.data
	.align 4
	.type	 MM_Int32,@object
	.size	 MM_Int32,256
MM_Int32:
	.long MM_Int32+116
	.zero	16
	.long MM_Int32+76
	.zero	20
	.long Int32__Equal
	.long Int32__Hash
	.long Int32__Compare
	.ascii	"Compare"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	2
	.long Int32__Compare
	.long MM_Int32+56
	.long MI_Int32+52
	.long Int32__Hash
	.long MM_Int32+64
	.long MI_Int32+48
	.long Int32__Equal
	.long MM_Int32+69
	.long MI_Int32+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/Int32.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
