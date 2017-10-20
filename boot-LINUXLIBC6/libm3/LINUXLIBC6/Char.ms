	.file	"Char.mc"
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
	.type	 Char__Compare,@function
Char__Compare:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movb 8(%ebp),%dl
	xorl %eax,%eax
	movb 12(%ebp),%al
	cmpl %eax,%edx
	jge .L2
	movl $-1,%eax
	jmp .L4
	.align 16
.L2:
	cmpl %eax,%edx
	jg .L3
	xorl %eax,%eax
	jmp .L4
	.align 16
.L3:
	movl $1,%eax
.L4:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Char__Compare,.Lfe1-Char__Compare
	.align 16
	.type	 Char__Equal,@function
Char__Equal:
	pushl %ebp
	movl %esp,%ebp
	movb 8(%ebp),%al
	cmpb %al,12(%ebp)
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Char__Equal,.Lfe2-Char__Equal
	.align 16
	.type	 Char__Hash,@function
Char__Hash:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Char__Hash,.Lfe3-Char__Hash
.globl MM_Char
.data
	.align 4
	.type	 MM_Char,@object
	.size	 MM_Char,256
MM_Char:
	.long MM_Char+116
	.zero	16
	.long MM_Char+76
	.zero	20
	.long Char__Compare
	.long Char__Equal
	.long Char__Hash
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Compare"
	.zero	2
	.long Char__Hash
	.long MM_Char+56
	.long MI_Char+52
	.long Char__Equal
	.long MM_Char+61
	.long MI_Char+48
	.long Char__Compare
	.long MM_Char+67
	.long MI_Char+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/Char.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
