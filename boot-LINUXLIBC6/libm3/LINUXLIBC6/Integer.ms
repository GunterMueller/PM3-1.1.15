	.file	"Integer.mc"
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
	.type	 Integer__Equal,@function
Integer__Equal:
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
	.size	 Integer__Equal,.Lfe1-Integer__Equal
	.align 16
	.type	 Integer__Hash,@function
Integer__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Integer__Hash,.Lfe2-Integer__Hash
	.align 16
	.type	 Integer__Compare,@function
Integer__Compare:
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
	.size	 Integer__Compare,.Lfe3-Integer__Compare
.globl MM_Integer
.data
	.align 4
	.type	 MM_Integer,@object
	.size	 MM_Integer,260
MM_Integer:
	.long MM_Integer+116
	.zero	16
	.long MM_Integer+76
	.zero	20
	.long Integer__Equal
	.long Integer__Hash
	.long Integer__Compare
	.ascii	"Compare"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	2
	.long Integer__Compare
	.long MM_Integer+56
	.long MI_Integer+52
	.long Integer__Hash
	.long MM_Integer+64
	.long MI_Integer+48
	.long Integer__Equal
	.long MM_Integer+69
	.long MI_Integer+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/Integer.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
