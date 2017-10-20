	.file	"Transform.mc"
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
	.long 0x3f0ccccd
.text
	.align 16
	.type	 Transform__Apply,@function
Transform__Apply:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
.L2:
	flds 8(%ebp)
	fimull 32(%ebp)
	flds .LC0
	faddp %st,%st(1)
	flds 16(%ebp)
	fimull 36(%ebp)
	faddp %st,%st(1)
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	fadds 24(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal 8(%ebp),%ecx
	movl %ecx,-28(%ebp)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	jne .L10
	fld1
	fsubrp %st,%st(1)
.L10:
	fnstcw -32(%ebp)
	movl -32(%ebp),%edx
	movb $12,%dh
	movl %edx,-36(%ebp)
	fldcw -36(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -32(%ebp)
	movl %eax,-8(%ebp)
	movl -28(%ebp),%eax
	flds 4(%eax)
	fimull 32(%ebp)
	flds .LC0
	faddp %st,%st(1)
	flds 12(%eax)
	fimull 36(%ebp)
	faddp %st,%st(1)
	fadds 20(%eax)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	jne .L11
	fld1
	fsubrp %st,%st(1)
.L11:
	fnstcw -32(%ebp)
	movl -32(%ebp),%edx
	movb $12,%dh
	movl %edx,-36(%ebp)
	fldcw -36(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -32(%ebp)
	movl %eax,-4(%ebp)
	movl 40(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Transform__Apply,.Lfe1-Transform__Apply
	.align 16
	.type	 Transform__Identity,@function
Transform__Identity:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	leal -24(%ebp),%esi
	movl %esi,-52(%ebp)
	movl $1065353216,-24(%ebp)
	movl $0,4(%esi)
	movl $0,8(%esi)
	movl $1065353216,12(%esi)
	movl $0,16(%esi)
	movl $0,20(%esi)
	movl 8(%ebp),%edi
	leal -60(%ebp),%esp
	cld
	movl $6,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Transform__Identity,.Lfe2-Transform__Identity
	.align 16
	.type	 Transform__Translate,@function
Transform__Translate:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
.L14:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%edx
	leal -24(%ebp),%edi
	movl 16(%ebp),%esi
	movl %edx,RTThread__handlerStack
	cld
	movl $6,%ecx
	rep
	movsl
	flds -8(%ebp)
	fadds 8(%ebp)
	fstps -8(%ebp)
	flds -4(%ebp)
	fadds 12(%ebp)
	movl 20(%ebp),%edi
	leal -24(%ebp),%esi
	fstps -4(%ebp)
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L15:
	leal -64(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Transform__Translate,.Lfe3-Transform__Translate
	.align 16
	.type	 Transform__Rotate,@function
Transform__Rotate:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %edi
	pushl %esi
.L17:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%edx
	flds 8(%ebp)
	movl %edx,RTThread__handlerStack
	fstpl -68(%ebp)
	pushl -64(%ebp)
	pushl -68(%ebp)
	call cos
	fstps -60(%ebp)
	flds -60(%ebp)
	pushl -64(%ebp)
	pushl -68(%ebp)
	fstpt -80(%ebp)
	call sin
	fstps -60(%ebp)
	flds -60(%ebp)
	movl 12(%ebp),%eax
	fldt -80(%ebp)
	flds (%eax)
	fmul %st(1),%st
	flds 4(%eax)
	fmul %st(3),%st
	fsubrp %st,%st(1)
	fstps -24(%ebp)
	flds (%eax)
	fmul %st(2),%st
	flds 4(%eax)
	fmul %st(2),%st
	faddp %st,%st(1)
	fstps -20(%ebp)
	flds 8(%eax)
	fmul %st(1),%st
	flds 12(%eax)
	fmul %st(3),%st
	fsubrp %st,%st(1)
	fstps -16(%ebp)
	flds 8(%eax)
	fmul %st(2),%st
	flds 12(%eax)
	fmul %st(2),%st
	faddp %st,%st(1)
	fstps -12(%ebp)
	flds 16(%eax)
	fmul %st(1),%st
	flds 20(%eax)
	fmul %st(3),%st
	fsubrp %st,%st(1)
	fstps -8(%ebp)
	fxch %st(1)
	fmuls 16(%eax)
	fxch %st(1)
	fmuls 20(%eax)
	faddp %st,%st(1)
	movl 16(%ebp),%edi
	leal -24(%ebp),%esi
	fstps -4(%ebp)
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L18:
	leal -88(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Transform__Rotate,.Lfe4-Transform__Rotate
	.align 16
	.type	 Transform__Scale,@function
Transform__Scale:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	flds 8(%ebp)
	flds 12(%ebp)
.L20:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%edx
	movl 16(%ebp),%eax
	movl %edx,RTThread__handlerStack
	flds (%eax)
	fmul %st(2),%st
	fstps -24(%ebp)
	flds 8(%eax)
	fmul %st(2),%st
	fstps -16(%ebp)
	flds 16(%eax)
	fmulp %st,%st(2)
	fxch %st(1)
	fstps -8(%ebp)
	flds 4(%eax)
	fmul %st(1),%st
	fstps -20(%ebp)
	flds 12(%eax)
	fmul %st(1),%st
	fstps -12(%ebp)
	flds 20(%eax)
	fmulp %st,%st(1)
	movl 20(%ebp),%edi
	leal -24(%ebp),%esi
	fstps -4(%ebp)
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L21:
	leal -64(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Transform__Scale,.Lfe5-Transform__Scale
	.align 16
	.type	 Transform__FromPoint,@function
Transform__FromPoint:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
.L23:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -24(%ebp),%esi
	movl %esi,-60(%ebp)
	movl $1065353216,-24(%ebp)
	movl $0,4(%esi)
	movl $0,8(%esi)
	movl $1065353216,12(%esi)
	movl 8(%ebp),%eax
	fildl (%eax)
	fstps 16(%esi)
	fildl 4(%eax)
	fstps 20(%esi)
	movl 12(%ebp),%edi
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L24:
	leal -68(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Transform__FromPoint,.Lfe6-Transform__FromPoint
	.align 16
	.type	 Transform__Compose,@function
Transform__Compose:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
.L26:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -24(%ebp),%esi
	movl %esi,-60(%ebp)
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	flds (%edx)
	fmuls (%eax)
	flds 4(%edx)
	fmuls 8(%eax)
	faddp %st,%st(1)
	fstps -24(%ebp)
	flds (%edx)
	fmuls 4(%eax)
	flds 4(%edx)
	fmuls 12(%eax)
	faddp %st,%st(1)
	fstps 4(%esi)
	flds 8(%edx)
	fmuls (%eax)
	flds 12(%edx)
	fmuls 8(%eax)
	faddp %st,%st(1)
	fstps 8(%esi)
	flds 8(%edx)
	fmuls 4(%eax)
	flds 12(%edx)
	fmuls 12(%eax)
	faddp %st,%st(1)
	fstps 12(%esi)
	flds 16(%edx)
	fmuls (%eax)
	flds 20(%edx)
	fmuls 8(%eax)
	faddp %st,%st(1)
	fadds 16(%eax)
	fstps 16(%esi)
	flds 16(%edx)
	fmuls 4(%eax)
	flds 20(%edx)
	fmuls 12(%eax)
	faddp %st,%st(1)
	fadds 20(%eax)
	fstps 20(%esi)
	movl 16(%ebp),%edi
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L27:
	leal -68(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Transform__Compose,.Lfe7-Transform__Compose
	.align 16
	.type	 Transform__RotateAbout,@function
Transform__RotateAbout:
	pushl %ebp
	movl %esp,%ebp
	subl $76,%esp
	pushl %edi
	pushl %esi
.L29:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%edx
	flds 12(%ebp)
	movl %edx,RTThread__handlerStack
	fstpl -76(%ebp)
	pushl -72(%ebp)
	pushl -76(%ebp)
	call cos
	fstps -68(%ebp)
	pushl -72(%ebp)
	pushl -76(%ebp)
	call sin
	fstps -60(%ebp)
	flds -60(%ebp)
	leal -24(%ebp),%esi
	movl %esi,-64(%ebp)
	fld %st(0)
	fchs
	flds -68(%ebp)
	fsts -24(%ebp)
	fxch %st(2)
	fsts 4(%esi)
	fxch %st(1)
	fstps 8(%esi)
	fxch %st(1)
	fsts 12(%esi)
	fld1
	fsubp %st,%st(1)
	movl 8(%ebp),%eax
	fld %st(1)
	fimull 4(%eax)
	fld %st(1)
	fimull (%eax)
	faddp %st,%st(1)
	fstps 16(%esi)
	fimull 4(%eax)
	fxch %st(1)
	fimull (%eax)
	fsubrp %st,%st(1)
	fstps 20(%esi)
	movl 16(%ebp),%edi
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L30:
	leal -84(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Transform__RotateAbout,.Lfe8-Transform__RotateAbout
	.align 16
	.type	 Transform__IsoScale,@function
Transform__IsoScale:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	movl 12(%ebp),%edi
	leal -24(%ebp),%esi
	leal -56(%ebp),%esp
	flds 8(%ebp)
	fsts -24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	fstps -12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cld
	movl $6,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Transform__IsoScale,.Lfe9-Transform__IsoScale
	.align 16
	.type	 Transform__AnIsoScale,@function
Transform__AnIsoScale:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	movl 8(%ebp),%eax
	movl %eax,-24(%ebp)
	movl 12(%ebp),%eax
	movl %eax,-12(%ebp)
	movl 16(%ebp),%edi
	leal -24(%ebp),%esi
	leal -56(%ebp),%esp
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cld
	movl $6,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Transform__AnIsoScale,.Lfe10-Transform__AnIsoScale
	.align 16
	.type	 Transform__Compare,@function
Transform__Compare:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	flds (%edx)
	flds (%ecx)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L52
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L45
	flds 4(%edx)
	flds 4(%ecx)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L52
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L45
	flds 8(%edx)
	flds 8(%ecx)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L52
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L45
	flds 12(%edx)
	flds 12(%ecx)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L51
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L45
	flds 16(%edx)
	flds 16(%ecx)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L52
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L45
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	flds 20(%eax)
	flds 20(%edx)
	fcom %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L44
.L51:
.L52:
	fstp %st(0)
	fstp %st(0)
	movl $-1,%eax
	jmp .L46
	.align 16
.L44:
	fcompp
	fnstsw %ax
	andb $5,%ah
	jne .L45
	xorl %eax,%eax
	jmp .L46
	.align 16
.L45:
	movl $1,%eax
.L46:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Transform__Compare,.Lfe11-Transform__Compare
	.align 16
	.type	 Transform__Equal,@function
Transform__Equal:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	flds (%edx)
	flds (%ecx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L54
	flds 4(%edx)
	flds 4(%ecx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L54
	flds 8(%edx)
	flds 8(%ecx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L54
	flds 12(%edx)
	flds 12(%ecx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L54
	flds 16(%edx)
	flds 16(%ecx)
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L54
	flds 20(%edx)
	flds 20(%ecx)
	fucompp
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	sete %al
	xorl %ebx,%ebx
	movb %al,%bl
.L54:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Transform__Equal,.Lfe12-Transform__Equal
	.align 16
	.type	 Transform__Hash,@function
Transform__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	subl $24,%esp
	flds 4(%eax)
	flds 8(%eax)
	flds 12(%eax)
	flds 16(%eax)
	flds 20(%eax)
	fxch %st(4)
	movl (%eax),%edx
	movl %edx,-4(%ebp)
	movl -4(%ebp),%ecx
	fstps -8(%ebp)
	fxch %st(2)
	xorl -8(%ebp),%ecx
	fstps -12(%ebp)
	movl -12(%ebp),%edx
	fstps -16(%ebp)
	xorl -16(%ebp),%edx
	fstps -20(%ebp)
	movl -20(%ebp),%eax
	fstps -24(%ebp)
	xorl -24(%ebp),%eax
	xorl %eax,%edx
	movl %ecx,%eax
	xorl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Transform__Hash,.Lfe13-Transform__Hash
.globl MM_Transform
.data
	.align 4
	.type	 MM_Transform,@object
	.size	 MM_Transform,512
MM_Transform:
	.long MM_Transform+364
	.zero	16
	.long MM_Transform+204
	.zero	20
	.long Transform__Identity
	.long Transform__Apply
	.long Transform__Translate
	.long Transform__Rotate
	.long Transform__Scale
	.long Transform__FromPoint
	.long Transform__Compose
	.long Transform__RotateAbout
	.long Transform__IsoScale
	.long Transform__AnIsoScale
	.long Transform__Compare
	.long Transform__Equal
	.long Transform__Hash
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"AnIsoScale"
	.zero	1
	.ascii	"IsoScale"
	.zero	1
	.ascii	"RotateAbout"
	.zero	1
	.ascii	"Compose"
	.zero	1
	.ascii	"FromPoint"
	.zero	1
	.ascii	"Scale"
	.zero	1
	.ascii	"Rotate"
	.zero	1
	.ascii	"Translate"
	.zero	1
	.ascii	"Identity"
	.zero	1
	.ascii	"Apply"
	.zero	2
	.long Transform__Hash
	.long MM_Transform+96
	.long MI_Transform+92
	.long Transform__Equal
	.long MM_Transform+101
	.long MI_Transform+88
	.long Transform__Compare
	.long MM_Transform+107
	.long MI_Transform+84
	.long Transform__AnIsoScale
	.long MM_Transform+115
	.long MI_Transform+80
	.long Transform__IsoScale
	.long MM_Transform+126
	.long MI_Transform+76
	.long Transform__RotateAbout
	.long MM_Transform+135
	.long MI_Transform+72
	.long Transform__Compose
	.long MM_Transform+147
	.long MI_Transform+68
	.long Transform__FromPoint
	.long MM_Transform+155
	.long MI_Transform+64
	.long Transform__Scale
	.long MM_Transform+165
	.long MI_Transform+60
	.long Transform__Rotate
	.long MM_Transform+171
	.long MI_Transform+56
	.long Transform__Translate
	.long MM_Transform+178
	.long MI_Transform+52
	.long Transform__Identity
	.long MM_Transform+188
	.long MI_Transform+44
	.long Transform__Apply
	.long MM_Transform+197
	.long MI_Transform+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Transform.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
