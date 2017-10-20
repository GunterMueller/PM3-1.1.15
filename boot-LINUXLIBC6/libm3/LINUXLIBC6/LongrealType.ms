	.file	"LongrealType.mc"
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
	.type	 LongrealType__Equal,@function
LongrealType__Equal:
	pushl %ebp
	movl %esp,%ebp
	fldl 8(%ebp)
	fldl 16(%ebp)
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 LongrealType__Equal,.Lfe1-LongrealType__Equal
	.align 16
	.type	 LongrealType__Hash,@function
LongrealType__Hash:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl %eax,-8(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-4(%ebp)
	movl %esi,%ebx
.L3:
	movl -8(%ebp,%ebx,4),%eax
	pushl %eax
	movl MI_Int32+48,%eax
	call *%eax
	xorl %eax,%esi
	incl %ebx
	addl $4,%esp
	cmpl $1,%ebx
	jle .L3
	leal -16(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LongrealType__Hash,.Lfe2-LongrealType__Hash
	.align 16
	.type	 LongrealType__Compare,@function
LongrealType__Compare:
	pushl %ebp
	movl %esp,%ebp
	fldl 8(%ebp)
	fldl 16(%ebp)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L7
	fstp %st(0)
	fstp %st(0)
	movl $-1,%eax
	jmp .L9
	.align 16
.L7:
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L8
	xorl %eax,%eax
	jmp .L9
	.align 16
.L8:
	movl $1,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 LongrealType__Compare,.Lfe3-LongrealType__Compare
.globl MM_LongrealType
.data
	.align 4
	.type	 MM_LongrealType,@object
	.size	 MM_LongrealType,264
MM_LongrealType:
	.long MM_LongrealType+116
	.zero	16
	.long MM_LongrealType+76
	.zero	20
	.long LongrealType__Equal
	.long LongrealType__Hash
	.long LongrealType__Compare
	.ascii	"Compare"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	2
	.long LongrealType__Compare
	.long MM_LongrealType+56
	.long MI_LongrealType+52
	.long LongrealType__Hash
	.long MM_LongrealType+64
	.long MI_LongrealType+48
	.long LongrealType__Equal
	.long MM_LongrealType+69
	.long MI_LongrealType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/LongrealType.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
