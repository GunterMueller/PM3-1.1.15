	.file	"Axis.mc"
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
	.type	 Axis__Compare,@function
Axis__Compare:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	xorl %edx,%edx
	movb 12(%ebp),%dl
	subl %edx,%eax
	movl %eax,%edx
	leal 1(%edx),%eax
	cmpl $2,%eax
	jbe .L2
	pushl $257
	call _m3_fault
	.align 16
.L2:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Axis__Compare,.Lfe1-Axis__Compare
	.align 16
	.type	 Axis__Equal,@function
Axis__Equal:
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
	.size	 Axis__Equal,.Lfe2-Axis__Equal
	.align 16
	.type	 Axis__Hash,@function
Axis__Hash:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Axis__Hash,.Lfe3-Axis__Hash
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Axis
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_Axis
.data
	.align 4
	.type	 MM_Axis,@object
	.size	 MM_Axis,260
MM_Axis:
	.long MM_Axis+116
	.zero	16
	.long MM_Axis+76
	.zero	20
	.long Axis__Compare
	.long Axis__Equal
	.long Axis__Hash
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Compare"
	.zero	2
	.long Axis__Hash
	.long MM_Axis+56
	.long MI_Axis+56
	.long Axis__Equal
	.long MM_Axis+61
	.long MI_Axis+52
	.long Axis__Compare
	.long MM_Axis+67
	.long MI_Axis+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Axis.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
