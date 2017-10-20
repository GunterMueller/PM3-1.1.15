	.file	"RealType.mc"
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
	.type	 RealType__Equal,@function
RealType__Equal:
	pushl %ebp
	movl %esp,%ebp
	flds 8(%ebp)
	flds 12(%ebp)
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
	.size	 RealType__Equal,.Lfe1-RealType__Equal
	.align 16
	.type	 RealType__Hash,@function
RealType__Hash:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	movl %esi,%ebx
.L3:
	movl -4(%ebp,%ebx,4),%eax
	pushl %eax
	movl MI_Int32+48,%eax
	call *%eax
	xorl %eax,%esi
	incl %ebx
	addl $4,%esp
	testl %ebx,%ebx
	jle .L3
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RealType__Hash,.Lfe2-RealType__Hash
	.align 16
	.type	 RealType__Compare,@function
RealType__Compare:
	pushl %ebp
	movl %esp,%ebp
	flds 8(%ebp)
	flds 12(%ebp)
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
	.size	 RealType__Compare,.Lfe3-RealType__Compare
.globl MM_RealType
.data
	.align 4
	.type	 MM_RealType,@object
	.size	 MM_RealType,260
MM_RealType:
	.long MM_RealType+116
	.zero	16
	.long MM_RealType+76
	.zero	20
	.long RealType__Equal
	.long RealType__Hash
	.long RealType__Compare
	.ascii	"Compare"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	2
	.long RealType__Compare
	.long MM_RealType+56
	.long MI_RealType+52
	.long RealType__Hash
	.long MM_RealType+64
	.long MI_RealType+48
	.long RealType__Equal
	.long MM_RealType+69
	.long MI_RealType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/RealType.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
