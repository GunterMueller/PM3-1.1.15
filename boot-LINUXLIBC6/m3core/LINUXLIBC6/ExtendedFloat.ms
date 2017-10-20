	.file	"ExtendedFloat.mc"
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
	.type	 ExtendedFloat__Scalb,@function
ExtendedFloat__Scalb:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 16(%ebp),%edx
.L2:
	movl $MM_ExtendedFloat+100,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+44,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ExtendedFloat__Scalb,.Lfe1-ExtendedFloat__Scalb
	.align 16
	.type	 ExtendedFloat__Logb,@function
ExtendedFloat__Logb:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L5:
	movl $MM_ExtendedFloat+100,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_LongFloat+48,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ExtendedFloat__Logb,.Lfe2-ExtendedFloat__Logb
	.align 16
	.type	 ExtendedFloat__ILogb,@function
ExtendedFloat__ILogb:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L8:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+52,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ExtendedFloat__ILogb,.Lfe3-ExtendedFloat__ILogb
	.align 16
	.type	 ExtendedFloat__NextAfter,@function
ExtendedFloat__NextAfter:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L11:
	movl $MM_ExtendedFloat+100,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_LongFloat+56,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L12:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ExtendedFloat__NextAfter,.Lfe4-ExtendedFloat__NextAfter
	.align 16
	.type	 ExtendedFloat__CopySign,@function
ExtendedFloat__CopySign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L14:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_LongFloat+60,%eax
	call *%eax
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L15:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ExtendedFloat__CopySign,.Lfe5-ExtendedFloat__CopySign
	.align 16
	.type	 ExtendedFloat__Finite,@function
ExtendedFloat__Finite:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L17:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+64,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L18:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ExtendedFloat__Finite,.Lfe6-ExtendedFloat__Finite
	.align 16
	.type	 ExtendedFloat__IsNaN,@function
ExtendedFloat__IsNaN:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L20:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+68,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L21:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ExtendedFloat__IsNaN,.Lfe7-ExtendedFloat__IsNaN
	.align 16
	.type	 ExtendedFloat__Sign,@function
ExtendedFloat__Sign:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L23:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+72,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L24:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ExtendedFloat__Sign,.Lfe8-ExtendedFloat__Sign
	.align 16
	.type	 ExtendedFloat__Differs,@function
ExtendedFloat__Differs:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L26:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 20(%ebp),%eax
	movl 16(%ebp),%edx
	pushl %eax
	pushl %edx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+76,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L27:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ExtendedFloat__Differs,.Lfe9-ExtendedFloat__Differs
	.align 16
	.type	 ExtendedFloat__Unordered,@function
ExtendedFloat__Unordered:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L29:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 20(%ebp),%eax
	movl 16(%ebp),%edx
	pushl %eax
	pushl %edx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+80,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L30:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 ExtendedFloat__Unordered,.Lfe10-ExtendedFloat__Unordered
	.align 16
	.type	 ExtendedFloat__Sqrt,@function
ExtendedFloat__Sqrt:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L32:
	movl $MM_ExtendedFloat+100,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_LongFloat+84,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L33:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 ExtendedFloat__Sqrt,.Lfe11-ExtendedFloat__Sqrt
	.align 16
	.type	 ExtendedFloat__Class,@function
ExtendedFloat__Class:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L35:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+88,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L36:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 ExtendedFloat__Class,.Lfe12-ExtendedFloat__Class
	.align 16
	.type	 ExtendedFloat__FromDecimal,@function
ExtendedFloat__FromDecimal:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	movl 16(%ebp),%edx
.L38:
	movl $MM_ExtendedFloat+100,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	movl MI_LongFloat+92,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L39:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 ExtendedFloat__FromDecimal,.Lfe13-ExtendedFloat__FromDecimal
	.align 16
	.type	 ExtendedFloat__ToDecimal,@function
ExtendedFloat__ToDecimal:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
.L41:
	movl $5,-32(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-36(%ebp)
	leal -36(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_LongFloat+96,%eax
	call *%eax
	movl -36(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L42:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 ExtendedFloat__ToDecimal,.Lfe14-ExtendedFloat__ToDecimal
.globl MM_ExtendedFloat
.data
	.align 4
	.type	 MM_ExtendedFloat,@object
	.size	 MM_ExtendedFloat,544
MM_ExtendedFloat:
	.long MM_ExtendedFloat+388
	.zero	16
	.long MM_ExtendedFloat+216
	.zero	20
	.long ExtendedFloat__Scalb
	.long ExtendedFloat__Logb
	.long ExtendedFloat__ILogb
	.long ExtendedFloat__NextAfter
	.long ExtendedFloat__CopySign
	.long ExtendedFloat__Finite
	.long ExtendedFloat__IsNaN
	.long ExtendedFloat__Sign
	.long ExtendedFloat__Differs
	.long ExtendedFloat__Unordered
	.long ExtendedFloat__Sqrt
	.long ExtendedFloat__Class
	.long ExtendedFloat__FromDecimal
	.long ExtendedFloat__ToDecimal
	.long MI_FloatMode+88
	.zero	4
	.ascii	"ToDecimal"
	.zero	1
	.ascii	"FromDecimal"
	.zero	1
	.ascii	"Class"
	.zero	1
	.ascii	"Sqrt"
	.zero	1
	.ascii	"Unordered"
	.zero	1
	.ascii	"Differs"
	.zero	1
	.ascii	"Sign"
	.zero	1
	.ascii	"IsNaN"
	.zero	1
	.ascii	"Finite"
	.zero	1
	.ascii	"CopySign"
	.zero	1
	.ascii	"NextAfter"
	.zero	1
	.ascii	"ILogb"
	.zero	1
	.ascii	"Logb"
	.zero	1
	.ascii	"Scalb"
	.zero	4
	.long ExtendedFloat__ToDecimal
	.long MM_ExtendedFloat+108
	.long MI_ExtendedFloat+96
	.long ExtendedFloat__FromDecimal
	.long MM_ExtendedFloat+118
	.long MI_ExtendedFloat+92
	.long ExtendedFloat__Class
	.long MM_ExtendedFloat+130
	.long MI_ExtendedFloat+88
	.long ExtendedFloat__Sqrt
	.long MM_ExtendedFloat+136
	.long MI_ExtendedFloat+84
	.long ExtendedFloat__Unordered
	.long MM_ExtendedFloat+141
	.long MI_ExtendedFloat+80
	.long ExtendedFloat__Differs
	.long MM_ExtendedFloat+151
	.long MI_ExtendedFloat+76
	.long ExtendedFloat__Sign
	.long MM_ExtendedFloat+159
	.long MI_ExtendedFloat+72
	.long ExtendedFloat__IsNaN
	.long MM_ExtendedFloat+164
	.long MI_ExtendedFloat+68
	.long ExtendedFloat__Finite
	.long MM_ExtendedFloat+170
	.long MI_ExtendedFloat+64
	.long ExtendedFloat__CopySign
	.long MM_ExtendedFloat+177
	.long MI_ExtendedFloat+60
	.long ExtendedFloat__NextAfter
	.long MM_ExtendedFloat+186
	.long MI_ExtendedFloat+56
	.long ExtendedFloat__ILogb
	.long MM_ExtendedFloat+196
	.long MI_ExtendedFloat+52
	.long ExtendedFloat__Logb
	.long MM_ExtendedFloat+202
	.long MI_ExtendedFloat+48
	.long ExtendedFloat__Scalb
	.long MM_ExtendedFloat+207
	.long MI_ExtendedFloat+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/float/IEEE/ExtendedFloat.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
