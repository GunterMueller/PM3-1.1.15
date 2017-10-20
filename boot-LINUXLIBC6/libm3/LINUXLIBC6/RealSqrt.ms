	.file	"RealSqrt.mc"
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
	.long 0x40000000
.text
	.align 16
	.type	 RealSqrt__Sqrt,@function
RealSqrt__Sqrt:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %ebx
.L2:
	movl $MM_RealSqrt+560,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl 8(%ebp)
	movl MI_RealFloat+88,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L3
	cmpl $1,%eax
	jle .L8
	cmpl $2,%eax
	jle .L5
	cmpl $3,%eax
	jle .L10
	cmpl $4,%eax
	jle .L10
	cmpl $5,%eax
	jle .L8
.L3:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fld1
	fadds 8(%ebp)
	jmp .L1
	.align 16
.L5:
	fldz
	fcomps 8(%ebp)
	fnstsw %ax
	andb $5,%ah
	je .L35
.L8:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds 8(%ebp)
	jmp .L1
	.align 16
.L10:
	fldz
	fcomps 8(%ebp)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L12
.L35:
	movl MI_RealFloatExtras+152,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L1
	.align 16
.L12:
	pushl 8(%ebp)
	movl MI_RealFloat+52,%eax
	call *%eax
	movl %eax,%ebx
	negl %eax
	addl $5,%eax
	pushl %eax
	pushl 8(%ebp)
	movl MI_RealFloat+44,%eax
	call *%eax
	fnstcw -16(%ebp)
	movl -16(%ebp),%edx
	movb $12,%dh
	movl %edx,-20(%ebp)
	fldcw -20(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -16(%ebp)
	leal -32(%eax),%edx
	addl $12,%esp
	cmpl $31,%edx
	jbe .L13
	pushl $2033
	call _m3_fault
	.align 16
.L13:
	movl %ebx,%eax
	andl $1,%eax
	cmpl $1,%eax
	jbe .L14
	pushl $2033
	call _m3_fault
	.align 16
.L14:
	sall $3,%eax
	sall $4,%edx
	addl %edx,%eax
	fldl MM_RealSqrt+44(%eax)
	fstps -32(%ebp)
	movl %ebx,%eax
	sarl $1,%eax
	addl $-2,%eax
	pushl %eax
	pushl -32(%ebp)
	movl MI_RealFloat+44,%eax
	call *%eax
	movl MI_FloatMode+72,%eax
	fstps -32(%ebp)
	call *%eax
	movb %al,-28(%ebp)
	addl $8,%esp
	testb %al,%al
	je .L15
	pushl $0
	movl MI_FloatMode+68,%eax
	call *%eax
	addl $4,%esp
.L15:
	flds 8(%ebp)
	fdivs -32(%ebp)
	fadds -32(%ebp)
	fdivs .LC0
	fstps -32(%ebp)
	flds 8(%ebp)
	fdivs -32(%ebp)
	fadds -32(%ebp)
	fdivs .LC0
	fstps -32(%ebp)
	pushl $3
	movl MI_FloatMode+68,%eax
	call *%eax
	pushl $1
	movl MI_FloatMode+84,%eax
	call *%eax
	flds 8(%ebp)
	fdivs -32(%ebp)
	movl MI_FloatMode+76,%eax
	fstpt -44(%ebp)
	call *%eax
	shrl $1,%eax
	movb %al,%bl
	andb $1,%bl
	addl $8,%esp
	fldt -44(%ebp)
	testb %bl,%bl
	je .L19
	xorl %eax,%eax
	movb -28(%ebp),%al
	testl %eax,%eax
	jle .L20
	cmpl $1,%eax
	jle .L21
	cmpl $2,%eax
	jle .L22
	cmpl $3,%eax
	jg .L38
.L21:
	fadds -32(%ebp)
	fdivs .LC0
.L43:
	fstps -32(%ebp)
	jmp .L25
	.align 16
.L22:
	fadds -32(%ebp)
	fdivs .LC0
	fstps -32(%ebp)
	pushl $0x7f7fffff
	pushl -32(%ebp)
	movl MI_RealFloat+56,%eax
	call *%eax
	jmp .L36
	.align 16
.L20:
	pushl $0x7f7fffff
	subl $4,%esp
	fstps (%esp)
	movl MI_RealFloat+56,%eax
	call *%eax
	fadds -32(%ebp)
	fdivs .LC0
.L36:
	addl $8,%esp
	jmp .L43
	.align 16
.L38:
	fstp %st(0)
	pushl $3463
	call _m3_fault
	.align 16
.L19:
	flds -32(%ebp)
	fucomp %st(1)
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	je .L41
	movb $1,%bl
	cmpb $2,-28(%ebp)
	jne .L27
	flds -32(%ebp)
	fxch %st(1)
	fsts -32(%ebp)
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L40
	jmp .L43
	.align 16
.L27:
	flds -32(%ebp)
	fxch %st(1)
	fsts -32(%ebp)
	fcomp %st(1)
	fnstsw %ax
	andb $5,%ah
	je .L43
.L40:
.L41:
	fstp %st(0)
.L25:
	xorl %eax,%eax
	movb -28(%ebp),%al
	pushl %eax
	movl MI_FloatMode+68,%eax
	call *%eax
	addl $4,%esp
	testb %bl,%bl
	je .L18
	pushl $1
	movl MI_RealFloatExtras+172,%eax
	call *%eax
.L18:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -32(%ebp)
.L34:
.L1:
	movl -48(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RealSqrt__Sqrt,.Lfe1-RealSqrt__Sqrt
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RealSqrt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe2:
	.size	 _m3_fault,.Lfe2-_m3_fault
.globl MM_RealSqrt
.data
	.align 4
	.type	 MM_RealSqrt,@object
	.size	 MM_RealSqrt,748
MM_RealSqrt:
	.long MM_RealSqrt+592
	.zero	16
	.long MM_RealSqrt+576
	.zero	20
	.long 0x15df6556,0x40101fc1
	.long 0x65e02ea9,0x4016cd86
	.long 0x92ab68cf,0x40105ec8
	.long 0xc560c7c1,0x401726a9
	.long 0x3f4a98ab,0x40109ce1
	.long 0xfa722186,0x40177e7a
	.long 0xcec41dd2,0x4010da14
	.long 0x70110a13,0x4017d508
	.long 0x7a56de33,0x4011166d
	.long 0xc7e6b3ff,0x40182a5f
	.long 0xa57eaa2a,0x401151f3
	.long 0xda48b652,0x40187e8d
	.long 0xf6d33094,0x40118caf
	.long 0x731d2e0e,0x4018d19e
	.long 0x87ca644,0x4011c6aa
	.long 0x94f69caa,0x4019239c
	.long 0x74a3400c,0x4011ffe9
	.long 0x7913e814,0x40197492
	.long 0xc1b9735,0x40123875
	.long 0xd27c3937,0x4019c489
	.long 0x19828805,0x40127053
	.long 0x5436b8fa,0x401a138c
	.long 0x2a90cd42,0x4012a78a
	.long 0xdb877ab3,0x401a61a1
	.long 0x3a57eaa3,0x4012de1f
	.long 0xf062d41,0x401aaed3
	.long 0x5058dde8,0x40131418
	.long 0x45bf26f2,0x401afb27
	.long 0x67a52ac7,0x4013497a
	.long 0xd6bebe16,0x401b46a5
	.long 0x38327675,0x40137e4a
	.long 0xd5f56a7b,0x401b9155
	.long 0x36da87a0,0x4013b28c
	.long 0x8e000863,0x401bdb3d
	.long 0x5eaee200,0x4013e645
	.long 0x65f9592,0x401c2463
	.long 0x1819d239,0x40141979
	.long 0x46950fc7,0x401c6ccc
	.long 0xd7f51efb,0x40144c2b
	.long 0xcfe9b7bf,0x401cb47e
	.long 0x6ab14ec,0x40147e61
	.long 0x23a6ce36,0x401cfb80
	.long 0x92ddbdb6,0x4014b01c
	.long 0x3cddd6e0,0x401d41d5
	.long 0x5ebfa8f8,0x4014e161
	.long 0x90689870,0x401d8782
	.long 0x15d701da,0x40151233
	.long 0x1958969a,0x401dcc8d
	.long 0xdd72367e,0x40154294
	.long 0x96bb98c,0x401e10f9
	.long 0x54a7f801,0x40157289
	.long 0x925fe975,0x401e54ca
	.long 0xa0c6b485,0x4015a213
	.long 0xa2d72ffd,0x401e9805
	.long 0x1dc93ea3,0x4015d136
	.long 0x6c8f7553,0x401edaae
	.long 0xade225fa,0x4015fff3
	.long 0x57f3061c,0x401f1cc8
	.long 0xad0c3d25,0x40162e4e
	.long 0x10880d80,0x401f5e57
	.long 0xba5e353f,0x40165c49
	.long 0xbb9cf9a0,0x401f9f5d
	.long 0xeeb70260,0x401689e6
	.long 0xc19c1722,0x401fdfdf
	.long RealSqrt__Sqrt
	.long MI_FloatMode+88
	.zero	4
	.ascii	"Sqrt"
	.zero	4
	.long RealSqrt__Sqrt
	.long MM_RealSqrt+568
	.long MI_RealSqrt+44
	.zero	4
	.ascii	"RealSqrt.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/mod"
	.ascii	"ula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-L"
	.ascii	"INUXLIBC6/libm3/src/sqrt/Sqrt.mg"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
