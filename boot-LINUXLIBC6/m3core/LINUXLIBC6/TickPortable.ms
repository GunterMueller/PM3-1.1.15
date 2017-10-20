	.file	"TickPortable.mc"
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
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x41f00000
	.align 4
.LC1:
	.long 0x0,0x41e00000
	.align 4
.LC2:
	.long 0x0,0x80000000,0x401f
.text
	.align 16
	.type	 Tick__Now,@function
Tick__Now:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl MI_Time+44,%eax
	movl %ecx,RTThread__handlerStack
	call *%eax
	fldl MM_TickPortable+44
	fdivrp %st,%st(1)
	fldt .LC2
	fxch %st(1)
	subl $8,%esp
	fstpl (%esp)
	popl %ecx
	popl %ebx
	movl %ecx,-24(%ebp)
	movl %ebx,-20(%ebp)
	fldl -24(%ebp)
	fld %st(0)
	fdivp %st,%st(2)
	fldl .LC0
	fxch %st(2)
	subl $8,%esp
	fstpl (%esp)
	popl %ecx
	popl %ebx
	movl %ecx,-24(%ebp)
	movl %ebx,-20(%ebp)
	fldl -24(%ebp)
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -12(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L3
	fstp %st(0)
	fxch %st(1)
	pushl %edx
	fimull (%esp)
	addl $4,%esp
	jmp .L9
	.align 16
.L3:
	pushl %edx
	fildl (%esp)
	addl $4,%esp
	fucom %st(1)
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	fstp %st(1)
	je .L5
	fstp %st(0)
	fxch %st(1)
	leal -1(%edx),%eax
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	jmp .L9
	.align 16
.L5:
	fmulp %st,%st(2)
	fxch %st(1)
.L9:
	fsubrp %st,%st(1)
	fldl .LC1
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L7
	fstp %st(0)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -12(%ebp)
	movl %edx,%eax
	jmp .L1
	.align 16
.L7:
	fsubrp %st,%st(1)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fnstcw -12(%ebp)
	movl -12(%ebp),%edx
	movb $12,%dh
	movl %edx,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -12(%ebp)
	addl $-2147483648,%eax
.L8:
.L1:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Tick__Now,.Lfe1-Tick__Now
.section	.rodata
	.align 4
.LC3:
	.long 0x0,0x41e00000
.text
	.align 16
	.type	 Tick__ToSeconds,@function
Tick__ToSeconds:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
.L11:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $2147483647,%eax
	ja .L12
	movl %edx,RTThread__handlerStack
	fldl MM_TickPortable+44
	pushl %eax
	fimull (%esp)
	addl $4,%esp
	jmp .L10
	.align 16
.L12:
	movl %edx,RTThread__handlerStack
	addl $-2147483648,%eax
	xorl %edx,%edx
	pushl %edx
	pushl %eax
	fildll (%esp)
	addl $8,%esp
	fldl .LC3
	faddp %st,%st(1)
	fmull MM_TickPortable+44
.L13:
.L10:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Tick__ToSeconds,.Lfe2-Tick__ToSeconds
.section	.rodata
	.align 4
.LC4:
	.long 0x0,0x41e00000
	.align 4
.LC5:
	.long 0x0,0x41f00000
.text
	.align 16
	.type	 Tick__FromSeconds,@function
Tick__FromSeconds:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %ebx
.L15:
	fldl 8(%ebp)
	fldl MM_TickPortable+44
	fdivrp %st,%st(1)
	movl $MM_TickPortable+64,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	fldl .LC4
	fxch %st(1)
	subl $8,%esp
	fstpl (%esp)
	popl %ecx
	popl %ebx
	movl %ecx,-28(%ebp)
	movl %ebx,-24(%ebp)
	fldl -28(%ebp)
	fld %st(0)
	fcom %st(2)
	fnstsw %ax
	andb $5,%ah
	je .L19
	fstp %st(1)
	fstp %st(1)
	movl %edx,RTThread__handlerStack
	fnstcw -16(%ebp)
	movl -16(%ebp),%eax
	movb $12,%ah
	movl %eax,-20(%ebp)
	fldcw -20(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -16(%ebp)
	movl %edx,%eax
	jmp .L14
	.align 16
.L19:
	fstp %st(0)
	fldl .LC5
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L20
	fsubp %st,%st(1)
	movl %edx,RTThread__handlerStack
	fnstcw -16(%ebp)
	movl -16(%ebp),%edx
	movb $12,%dh
	movl %edx,-20(%ebp)
	fldcw -20(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -16(%ebp)
	addl $-2147483648,%eax
	jmp .L14
	.align 16
.L20:
	fstp %st(0)
	fstp %st(0)
	pushl $0
	pushl $MI_Tick+52
	movl MI_RTHooks+52,%eax
	call *%eax
.L18:
.L14:
	movl -32(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Tick__FromSeconds,.Lfe3-Tick__FromSeconds
	.align 16
	.type	 _INITM_TickPortable,@function
_INITM_TickPortable:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Time+48,%eax
	movl MI_Time+52,%edx
	movl %eax,MM_TickPortable+44
	movl %edx,MM_TickPortable+48
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 _INITM_TickPortable,.Lfe4-_INITM_TickPortable
.globl MM_TickPortable
.data
	.align 4
	.type	 MM_TickPortable,@object
	.size	 MM_TickPortable,328
MM_TickPortable:
	.long MM_TickPortable+172
	.zero	16
	.long MM_TickPortable+120
	.zero	16
	.long _INITM_TickPortable
	.zero	8
	.long Tick__Now
	.long Tick__ToSeconds
	.long Tick__FromSeconds
	.long MI_Tick+52
	.zero	4
	.ascii	"_INITM_TickPortable"
	.zero	1
	.ascii	"FromSeconds"
	.zero	1
	.ascii	"ToSeconds"
	.zero	1
	.ascii	"Now"
	.zero	3
	.long _INITM_TickPortable
	.long MM_TickPortable+72
	.zero	4
	.long Tick__FromSeconds
	.long MM_TickPortable+92
	.long MI_Tick+72
	.long Tick__ToSeconds
	.long MM_TickPortable+104
	.long MI_Tick+48
	.long Tick__Now
	.long MM_TickPortable+114
	.long MI_Tick+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/time/Portable/TickPortable.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
