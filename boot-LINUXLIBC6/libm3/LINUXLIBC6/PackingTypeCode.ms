	.file	"PackingTypeCode.mc"
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
	.type	 PackingTypeCode__Equal,@function
PackingTypeCode__Equal:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movl 20(%ebp),%eax
	cmpl %eax,8(%ebp)
	jne .L2
	movl 24(%ebp),%eax
	cmpl %eax,12(%ebp)
	jne .L2
	movl 28(%ebp),%eax
	cmpl %eax,16(%ebp)
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L2:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PackingTypeCode__Equal,.Lfe1-PackingTypeCode__Equal
	.align 16
	.type	 PackingTypeCode__Hash,@function
PackingTypeCode__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	xorl 8(%ebp),%eax
	xorl 16(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PackingTypeCode__Hash,.Lfe2-PackingTypeCode__Hash
	.align 16
	.type	 PackingTypeCode__Compare,@function
PackingTypeCode__Compare:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 20(%ebp),%eax
	cmpl %eax,%edx
	jg .L12
	jl .L10
	movl 12(%ebp),%edx
	movl 24(%ebp),%eax
	cmpl %eax,%edx
	jg .L12
	jl .L10
	movl 16(%ebp),%edx
	movl 28(%ebp),%eax
	cmpl %eax,%edx
	jle .L9
.L12:
	movl $1,%eax
	jmp .L11
	.align 16
.L9:
	cmpl %eax,%edx
	jl .L10
	xorl %eax,%eax
	jmp .L11
	.align 16
.L10:
	movl $-1,%eax
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PackingTypeCode__Compare,.Lfe3-PackingTypeCode__Compare
.globl MM_PackingTypeCode
.data
	.align 4
	.type	 MM_PackingTypeCode,@object
	.size	 MM_PackingTypeCode,268
MM_PackingTypeCode:
	.long MM_PackingTypeCode+116
	.zero	16
	.long MM_PackingTypeCode+76
	.zero	20
	.long PackingTypeCode__Equal
	.long PackingTypeCode__Hash
	.long PackingTypeCode__Compare
	.ascii	"Compare"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	2
	.long PackingTypeCode__Compare
	.long MM_PackingTypeCode+56
	.long MI_PackingTypeCode+52
	.long PackingTypeCode__Hash
	.long MM_PackingTypeCode+64
	.long MI_PackingTypeCode+48
	.long PackingTypeCode__Equal
	.long MM_PackingTypeCode+69
	.long MI_PackingTypeCode+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/pickle/PackingTypeCode.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
