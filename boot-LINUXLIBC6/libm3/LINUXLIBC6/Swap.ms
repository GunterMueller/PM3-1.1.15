	.file	"Swap.mc"
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
	.type	 Swap__Swap4,@function
Swap__Swap4:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl %edx,%ecx
	shrl $24,%ecx
	movl %edx,%eax
	andl $16711680,%eax
	shrl $8,%eax
	orl %eax,%ecx
	movl %edx,%eax
	andl $65280,%eax
	sall $8,%eax
	sall $24,%edx
	orl %edx,%eax
	orl %ecx,%eax
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Swap__Swap4,.Lfe1-Swap__Swap4
	.align 16
	.type	 Swap__Swap2,@function
Swap__Swap2:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movswl 8(%ebp),%ebx
	movl %ebx,%eax
	sall $24,%eax
	movl %eax,%esi
	shrl $31,%esi
	cmpl $1,%esi
	jbe .L8
	pushl $849
	call _m3_fault
	.align 16
.L8:
	movl $MM_Swap+72,%ecx
	movl %ebx,%edx
	andl $65280,%edx
	shrl $8,%edx
	movl %ebx,%eax
	andl $255,%eax
	sall $8,%eax
	orl %eax,%edx
	orl (%ecx,%esi,4),%edx
	leal 32768(%edx),%eax
	cmpl $65535,%eax
	jbe .L9
	pushl $849
	call _m3_fault
	.align 16
.L9:
	leal -8(%ebp),%esp
	movl %edx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Swap__Swap2,.Lfe2-Swap__Swap2
	.align 16
	.type	 Swap__Swap2U,@function
Swap__Swap2U:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movw 8(%ebp),%ax
	movl %eax,%edx
	shrl $8,%edx
	andl $255,%eax
	sall $8,%eax
	orl %edx,%eax
	cmpl $65535,%eax
	jbe .L11
	pushl $961
	call _m3_fault
	.align 16
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Swap__Swap2U,.Lfe3-Swap__Swap2U
	.align 16
	.type	 Swap__Swap8,@function
Swap__Swap8:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
.L13:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movl 4(%eax),%eax
	pushl %eax
	call Swap__Swap4
	movl %eax,-24(%ebp)
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	call Swap__Swap4
	movl %eax,-20(%ebp)
	movl 12(%ebp),%edx
	movl -24(%ebp),%eax
	movl %eax,(%edx)
	movl -20(%ebp),%eax
	movl %eax,4(%edx)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Swap__Swap8,.Lfe4-Swap__Swap8
	.align 16
	.type	 Swap__SwapInt,@function
Swap__SwapInt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L18:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl %edx,%ecx
	shrl $24,%ecx
	movl %edx,%eax
	andl $16711680,%eax
	shrl $8,%eax
	orl %eax,%ecx
	movl %edx,%eax
	andl $65280,%eax
	sall $8,%eax
	sall $24,%edx
	orl %edx,%eax
	orl %ecx,%eax
.L33:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Swap__SwapInt,.Lfe5-Swap__SwapInt
	.align 16
	.type	 Swap__FindByteOrder,@function
Swap__FindByteOrder:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L35:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl $16909060,-16(%ebp)
	movl $16909060,-4(%ebp)
	cmpb $4,-4(%ebp)
	jne .L36
	cmpb $3,-3(%ebp)
	jne .L36
	cmpb $2,-2(%ebp)
	jne .L36
	cmpb $1,-1(%ebp)
	jne .L36
	movb $1,MI_Swap+44
	jmp .L40
	.align 16
.L36:
	cmpb $4,-1(%ebp)
	jne .L38
	cmpb $3,-2(%ebp)
	jne .L38
	cmpb $2,-3(%ebp)
	jne .L38
	cmpb $1,-4(%ebp)
	jne .L38
	movb $0,MI_Swap+44
	jmp .L40
	.align 16
.L38:
	pushl $0
	pushl $MM_Swap+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L40:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Swap__FindByteOrder,.Lfe6-Swap__FindByteOrder
	.align 16
	.type	 _INITM_Swap,@function
_INITM_Swap:
	pushl %ebp
	movl %esp,%ebp
	call Swap__FindByteOrder
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 _INITM_Swap,.Lfe7-_INITM_Swap
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Swap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_Swap
.data
	.align 4
	.type	 MM_Swap,@object
	.size	 MM_Swap,396
MM_Swap:
	.long MM_Swap+252
	.zero	16
	.long MM_Swap+164
	.zero	16
	.long _INITM_Swap
	.long MM_Swap+48
	.ascii	"Swap.Failure"
	.zero	4
	.long 0
	.zero	4
	.long 0
	.long -65536
	.long Swap__FindByteOrder
	.long Swap__Swap4
	.long Swap__Swap2
	.long Swap__Swap2U
	.long Swap__Swap8
	.long Swap__SwapInt
	.ascii	"_INITM_Swap"
	.zero	1
	.ascii	"FindByteOrder"
	.zero	1
	.ascii	"SwapInt"
	.zero	1
	.ascii	"Swap8"
	.zero	1
	.ascii	"Swap2U"
	.zero	1
	.ascii	"Swap2"
	.zero	1
	.ascii	"Swap4"
	.zero	2
	.long _INITM_Swap
	.long MM_Swap+104
	.zero	4
	.long Swap__FindByteOrder
	.long MM_Swap+116
	.zero	4
	.long Swap__SwapInt
	.long MM_Swap+130
	.long MI_Swap+64
	.long Swap__Swap8
	.long MM_Swap+138
	.long MI_Swap+60
	.long Swap__Swap2U
	.long MM_Swap+144
	.long MI_Swap+56
	.long Swap__Swap2
	.long MM_Swap+151
	.long MI_Swap+52
	.long Swap__Swap4
	.long MM_Swap+157
	.long MI_Swap+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/uid/Common/Swap.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
