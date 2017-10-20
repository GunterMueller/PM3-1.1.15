	.file	"Stat.mc"
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
	.type	 Stat__Init,@function
Stat__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	movl $0,(%eax)
	movl $0,4(%eax)
	movl -4(%ebp),%eax
	movl %ebp,%esp
	movl $0,24(%eax)
	movl $0,28(%eax)
	movl $0,8(%eax)
	movl $0,12(%eax)
	movl $0,16(%eax)
	movl $0,20(%eax)
	popl %ebp
	ret
.Lfe1:
	.size	 Stat__Init,.Lfe1-Stat__Init
	.align 16
	.type	 Stat__Accum,@function
Stat__Accum:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	flds 12(%ebp)
.L3:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%edx
	movl %edx,-12(%ebp)
	fldz
	fldl (%edx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L4
	fsts 24(%edx)
	jmp .L9
	.align 16
.L4:
	fcoms 24(%edx)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L6
	fsts 24(%edx)
	jmp .L5
	.align 16
.L6:
	fcoms 28(%edx)
	fnstsw %ax
	andb $5,%ah
	je .L5
.L9:
	fsts 28(%edx)
.L5:
	movl -12(%ebp),%eax
	fld1
	fldl (%eax)
	fadd %st,%st(1)
	fxch %st(1)
	fstpl (%eax)
	movl -12(%ebp),%eax
	fldl 8(%eax)
	fsubr %st,%st(2)
	fldl (%eax)
	fld %st(3)
	fdivp %st,%st(1)
	fxch %st(3)
	fmul %st(0),%st
	fxch %st(3)
	subl $8,%esp
	fstpl (%esp)
	popl %ecx
	popl %ebx
	movl %ecx,-20(%ebp)
	movl %ebx,-16(%ebp)
	fldl -20(%ebp)
	faddp %st,%st(1)
	fldl (%eax)
	fdivr %st,%st(3)
	fxch %st(1)
	fstpl 8(%eax)
	fxch %st(2)
	subl $8,%esp
	fstpl (%esp)
	popl %ecx
	popl %ebx
	movl %ecx,-20(%ebp)
	movl %ebx,-16(%ebp)
	fldl -20(%ebp)
	faddl 16(%eax)
	fmulp %st,%st(1)
	fdivp %st,%st(1)
	fstpl 16(%eax)
.L8:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Stat__Accum,.Lfe2-Stat__Accum
	.align 16
	.type	 Stat__Combine,@function
Stat__Combine:
	pushl %ebp
	movl %esp,%ebp
	subl $84,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L11:
	movl $5,-68(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-72(%ebp)
	leal -72(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -32(%ebp),%edx
	movl 12(%ebp),%eax
	movl %edx,-76(%ebp)
	flds 24(%eax)
	movl 8(%ebp),%eax
	flds 24(%eax)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L17
	fstp %st(0)
	jmp .L19
	.align 16
.L17:
	fstp %st(1)
.L19:
	fstps 24(%edx)
	movl 12(%ebp),%eax
	flds 28(%eax)
	movl 8(%ebp),%eax
	movl -76(%ebp),%edx
	flds 28(%eax)
	fcom %st(1)
	fnstsw %ax
	andb $5,%ah
	jne .L18
	fstp %st(0)
	jmp .L20
	.align 16
.L18:
	fstp %st(1)
.L20:
	fstps 28(%edx)
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	fldl (%edx)
	faddl (%eax)
	movl -76(%ebp),%ecx
	fstpl (%ecx)
	movl 8(%ebp),%eax
	fldl 8(%eax)
	fmull (%eax)
	movl 12(%ebp),%edx
	fldl 8(%edx)
	fmull (%edx)
	faddp %st,%st(1)
	movl -76(%ebp),%ecx
	fldl (%ecx)
	fdivrp %st,%st(1)
	fstpl 8(%ecx)
	fldl 8(%eax)
	fsubl 8(%edx)
	fldl (%eax)
	fldl 16(%eax)
	fmul %st(1),%st
	fldl (%edx)
	fldl 16(%edx)
	fmul %st(1),%st
	fxch %st(4)
	fmul %st(0),%st
	fmulp %st,%st(3)
	fmulp %st,%st(2)
	faddp %st,%st(2)
	fldl (%ecx)
	fdivr %st,%st(1)
	fxch %st(1)
	subl $8,%esp
	fstpl (%esp)
	popl %ebx
	popl %esi
	movl %ebx,-84(%ebp)
	movl %esi,-80(%ebp)
	fldl -84(%ebp)
	faddp %st,%st(2)
	fdivrp %st,%st(1)
	leal -32(%ebp),%eax
	movl %eax,%esi
	fstpl 16(%ecx)
	movl 16(%ebp),%edi
	cld
	movl $8,%ecx
	rep
	movsl
	movl -72(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L16:
	leal -96(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Stat__Combine,.Lfe3-Stat__Combine
	.align 16
	.type	 Stat__Num,@function
Stat__Num:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L22:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	fldl (%eax)
	fstps -12(%ebp)
	flds -12(%ebp)
.L23:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Stat__Num,.Lfe4-Stat__Num
	.align 16
	.type	 Stat__Max,@function
Stat__Max:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	flds 24(%eax)
	ret
.Lfe5:
	.size	 Stat__Max,.Lfe5-Stat__Max
	.align 16
	.type	 Stat__Min,@function
Stat__Min:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	flds 28(%eax)
	ret
.Lfe6:
	.size	 Stat__Min,.Lfe6-Stat__Min
	.align 16
	.type	 Stat__Mean,@function
Stat__Mean:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L27:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	fldl 8(%eax)
	fstps -12(%ebp)
	flds -12(%ebp)
.L28:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Stat__Mean,.Lfe7-Stat__Mean
	.align 16
	.type	 Stat__Var,@function
Stat__Var:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
.L30:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	fldl 16(%eax)
	fstps -12(%ebp)
	flds -12(%ebp)
.L31:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Stat__Var,.Lfe8-Stat__Var
	.align 16
	.type	 Stat__SDev,@function
Stat__SDev:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
.L33:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%ecx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%edx
	fldz
	fldl (%edx)
	fucom %st(1)
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	fstp %st(1)
	jne .L34
	fstp %st(0)
	movl %ecx,RTThread__handlerStack
	fldz
	jmp .L32
	.align 16
.L34:
	fldl 16(%edx)
	fmul %st(1),%st
	fld1
	fsubrp %st,%st(2)
	fdivp %st,%st(1)
	subl $8,%esp
	fstpl (%esp)
	popl %eax
	popl %edx
	pushl %edx
	pushl %eax
	call sqrt
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fstps -12(%ebp)
	flds -12(%ebp)
.L35:
.L32:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Stat__SDev,.Lfe9-Stat__SDev
	.align 16
	.type	 Stat__RMS,@function
Stat__RMS:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
.L37:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%ecx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%edx
	fldz
	fldl (%edx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L38
	movl %ecx,RTThread__handlerStack
	fldz
	jmp .L36
	.align 16
.L38:
	fldl 8(%edx)
	fmul %st(0),%st
	faddl 16(%edx)
	subl $8,%esp
	fstpl (%esp)
	call sqrt
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fstps -12(%ebp)
	flds -12(%ebp)
.L39:
.L36:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Stat__RMS,.Lfe10-Stat__RMS
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x40000000
.text
	.align 16
	.type	 Stat__Print,@function
Stat__Print:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L41:
	movl $MM_Stat+88,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl %eax,-16(%ebp)
	pushl $10
	fldl (%eax)
	fnstcw -20(%ebp)
	movl -20(%ebp),%edx
	movb $12,%dh
	movl %edx,-24(%ebp)
	fldcw -24(%ebp)
	fistpl -28(%ebp)
	fldcw -20(%ebp)
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl $MM_Stat+104
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $24,%esp
	movl -16(%ebp),%eax
	fldz
	fcompl (%eax)
	fnstsw %ax
	andb $5,%ah
	je .L44
	movl 12(%ebp),%eax
	pushl %eax
	call Stat__Min
	pushl $0
	pushl $8
	pushl $2
	subl $4,%esp
	fstps (%esp)
	movl MI_Fmt+60,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl $MM_Stat+124
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Stat+140
	movl %eax,%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $36,%esp
	movl 12(%ebp),%eax
	pushl %eax
	call Stat__Max
	pushl $0
	pushl $8
	pushl $2
	subl $4,%esp
	fstps (%esp)
	movl MI_Fmt+60,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Stat+156
	movl %eax,%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $36,%esp
	movl 12(%ebp),%eax
	pushl %eax
	call Stat__Mean
	pushl $0
	pushl $8
	pushl $2
	subl $4,%esp
	fstps (%esp)
	movl MI_Fmt+60,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	addl $36,%esp
	movl -16(%ebp),%eax
	fldl .LC0
	fcompl (%eax)
	fnstsw %ax
	andb $69,%ah
	je .L44
	movl 12(%ebp),%eax
	pushl %eax
	call Stat__SDev
	pushl $0
	pushl $8
	pushl $2
	subl $4,%esp
	fstps (%esp)
	movl MI_Fmt+60,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl $MM_Stat+180
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
.L44:
	movl -12(%ebp),%eax
	leal -36(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Stat__Print,.Lfe11-Stat__Print
.globl MM_Stat
.data
	.align 4
	.type	 MM_Stat,@object
	.size	 MM_Stat,536
MM_Stat:
	.long MM_Stat+392
	.zero	16
	.long MM_Stat+256
	.zero	20
	.long Stat__Init
	.long Stat__Accum
	.long Stat__Combine
	.long Stat__Num
	.long Stat__Max
	.long Stat__Min
	.long Stat__Mean
	.long Stat__Var
	.long Stat__SDev
	.long Stat__RMS
	.long Stat__Print
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long 2
	.long MM_Stat+112
	.long 7
	.ascii	"num = "
	.zero	2
	.long 2
	.long MM_Stat+132
	.long 4
	.ascii	" [ "
	.zero	1
	.long 2
	.long MM_Stat+148
	.long 4
	.ascii	" _ "
	.zero	1
	.long 2
	.long MM_Stat+164
	.long 11
	.ascii	" ] mean = "
	.zero	2
	.long 2
	.long MM_Stat+188
	.long 9
	.ascii	"  dev = "
	.zero	4
	.ascii	"Print"
	.zero	1
	.ascii	"RMS"
	.zero	1
	.ascii	"SDev"
	.zero	1
	.ascii	"Var"
	.zero	1
	.ascii	"Mean"
	.zero	1
	.ascii	"Min"
	.zero	1
	.ascii	"Max"
	.zero	1
	.ascii	"Num"
	.zero	1
	.ascii	"Combine"
	.zero	1
	.ascii	"Accum"
	.zero	1
	.ascii	"Init"
	.zero	2
	.long Stat__Print
	.long MM_Stat+200
	.long MI_Stat+84
	.long Stat__RMS
	.long MM_Stat+206
	.long MI_Stat+80
	.long Stat__SDev
	.long MM_Stat+210
	.long MI_Stat+76
	.long Stat__Var
	.long MM_Stat+215
	.long MI_Stat+72
	.long Stat__Mean
	.long MM_Stat+219
	.long MI_Stat+68
	.long Stat__Min
	.long MM_Stat+224
	.long MI_Stat+64
	.long Stat__Max
	.long MM_Stat+228
	.long MI_Stat+60
	.long Stat__Num
	.long MM_Stat+232
	.long MI_Stat+56
	.long Stat__Combine
	.long MM_Stat+236
	.long MI_Stat+52
	.long Stat__Accum
	.long MM_Stat+244
	.long MI_Stat+48
	.long Stat__Init
	.long MM_Stat+250
	.long MI_Stat+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/statistics/Stat.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
