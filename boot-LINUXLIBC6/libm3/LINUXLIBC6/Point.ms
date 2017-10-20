	.file	"Point.mc"
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
	.type	 Point__FromCoords,@function
Point__FromCoords:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	movl %ecx,-8(%ebp)
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Point__FromCoords,.Lfe1-Point__FromCoords
	.align 16
	.type	 Point__FromAxes,@function
Point__FromAxes:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	xorl %eax,%eax
	movb 8(%ebp),%al
	testl %eax,%eax
	jle .L3
	cmpl $1,%eax
	jle .L4
.L3:
	movl %ecx,-8(%ebp)
	movl %edx,-4(%ebp)
	jmp .L5
	.align 16
.L4:
	movl %edx,-8(%ebp)
	movl %ecx,-4(%ebp)
.L5:
	movl 20(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Point__FromAxes,.Lfe2-Point__FromAxes
	.align 16
	.type	 Point__DistSquare,@function
Point__DistSquare:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%ebx
	movl (%ecx),%eax
	movl (%ebx),%edx
	subl %eax,%edx
	movl 4(%ecx),%eax
	movl 4(%ebx),%ebx
	subl %eax,%ebx
	movl %ebx,%eax
	imull %edx,%edx
	imull %eax,%eax
	addl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Point__DistSquare,.Lfe3-Point__DistSquare
	.align 16
	.type	 Point__Minus,@function
Point__Minus:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%ecx
	negl %ecx
	movl %ecx,-8(%ebp)
	movl 4(%eax),%eax
	negl %eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Point__Minus,.Lfe4-Point__Minus
	.align 16
	.type	 Point__Add,@function
Point__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	movl (%eax),%edx
	addl (%ecx),%edx
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
	addl 4(%ecx),%eax
	movl 16(%ebp),%ecx
	movl %eax,-4(%ebp)
	movl %edx,(%ecx)
	movl -4(%ebp),%eax
	movl %eax,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Point__Add,.Lfe5-Point__Add
	.align 16
	.type	 Point__Sub,@function
Point__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%ebx
	movl (%edx),%eax
	movl (%ebx),%ecx
	subl %eax,%ecx
	movl %ecx,-8(%ebp)
	movl 4(%edx),%eax
	movl 4(%ebx),%ebx
	subl %eax,%ebx
	movl 16(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Point__Sub,.Lfe6-Point__Sub
	.align 16
	.type	 Point__Mul,@function
Point__Mul:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl (%edx),%ecx
	imull %eax,%ecx
	movl %ecx,-8(%ebp)
	imull 4(%edx),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Point__Mul,.Lfe7-Point__Mul
	.align 16
	.type	 Point__Div,@function
Point__Div:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
.L13:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	movl %eax,-8(%ebp)
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	movl %eax,-4(%ebp)
	movl 16(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L14:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Point__Div,.Lfe8-Point__Div
	.align 16
	.type	 Point__Mod,@function
Point__Mod:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
.L16:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	call m3_mod
	movl %eax,-8(%ebp)
	addl $8,%esp
	testl %eax,%eax
	jge .L17
	addl %ebx,%eax
	movl %eax,-8(%ebp)
.L17:
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %ebx
	call m3_mod
	movl %eax,-4(%ebp)
	testl %eax,%eax
	jge .L18
	addl %ebx,%eax
	movl %eax,-4(%ebp)
.L18:
	movl 16(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L19:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Point__Mod,.Lfe9-Point__Mod
	.align 16
	.type	 Point__Scale,@function
Point__Scale:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
.L21:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	movl (%eax),%eax
	imull %ebx,%eax
	pushl %eax
	pushl %esi
	call m3_div
	movl %eax,-8(%ebp)
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	imull %ebx,%eax
	pushl %eax
	pushl %esi
	call m3_div
	movl %eax,-4(%ebp)
	movl 20(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L22:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Point__Scale,.Lfe10-Point__Scale
	.align 16
	.type	 Point__Min,@function
Point__Min:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl (%ebx),%ecx
	cmpl %eax,%ecx
	jle .L24
	movl %eax,%ecx
.L24:
	movl %ecx,-8(%ebp)
	movl 4(%edx),%edx
	movl 4(%ebx),%eax
	cmpl %edx,%eax
	jle .L25
	movl %edx,%eax
.L25:
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Point__Min,.Lfe11-Point__Min
	.align 16
	.type	 Point__Max,@function
Point__Max:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 8(%ebp),%eax
	subl $16,%esp
	movl (%eax),%eax
	cmpl %edx,%eax
	jle .L27
	movl %eax,-8(%ebp)
	jmp .L28
	.align 16
.L27:
	movl %edx,-8(%ebp)
.L28:
	movl 12(%ebp),%eax
	movl 4(%eax),%edx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	cmpl %edx,%eax
	jle .L29
	movl %eax,-4(%ebp)
	jmp .L30
	.align 16
.L29:
	movl %edx,-4(%ebp)
.L30:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Point__Max,.Lfe12-Point__Max
	.align 16
	.type	 Point__Move,@function
Point__Move:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	movl (%eax),%edx
	addl (%ecx),%edx
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
	addl 4(%ecx),%eax
	movl 16(%ebp),%ecx
	movl %eax,-4(%ebp)
	movl %edx,(%ecx)
	movl -4(%ebp),%eax
	movl %eax,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Point__Move,.Lfe13-Point__Move
	.align 16
	.type	 Point__MoveH,@function
Point__MoveH:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 16(%ebp),%ecx
	movl (%eax),%edx
	addl 12(%ebp),%edx
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
	movl %eax,-4(%ebp)
	movl %edx,(%ecx)
	movl -4(%ebp),%eax
	movl %eax,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Point__MoveH,.Lfe14-Point__MoveH
	.align 16
	.type	 Point__MoveV,@function
Point__MoveV:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 16(%ebp),%edx
	movl (%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 4(%eax),%eax
	addl 12(%ebp),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Point__MoveV,.Lfe15-Point__MoveV
	.align 16
	.type	 Point__MoveHV,@function
Point__MoveHV:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 20(%ebp),%ecx
	movl (%eax),%edx
	addl 12(%ebp),%edx
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
	addl 16(%ebp),%eax
	movl %eax,-4(%ebp)
	movl %edx,(%ecx)
	movl -4(%ebp),%eax
	movl %eax,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Point__MoveHV,.Lfe16-Point__MoveHV
	.align 16
	.type	 Point__Transpose,@function
Point__Transpose:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	cmpb $0,12(%ebp)
	jne .L36
	movl 8(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	jmp .L35
	.align 16
.L36:
	movl 8(%ebp),%eax
	movl 16(%ebp),%edx
	movl 4(%eax),%ecx
	movl %ecx,-16(%ebp)
	movl (%eax),%eax
	movl %eax,-12(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
.L35:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Point__Transpose,.Lfe17-Point__Transpose
	.align 16
	.type	 Point__Equal,@function
Point__Equal:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl (%ecx),%eax
	cmpl %eax,(%edx)
	jne .L38
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx)
	sete %al
	xorl %ebx,%ebx
	movb %al,%bl
.L38:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Point__Equal,.Lfe18-Point__Equal
	.align 16
	.type	 Point__Less,@function
Point__Less:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl (%ecx),%eax
	cmpl %eax,(%edx)
	jge .L40
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx)
	setl %al
	xorl %ebx,%ebx
	movb %al,%bl
.L40:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Point__Less,.Lfe19-Point__Less
	.align 16
	.type	 Point__LessEq,@function
Point__LessEq:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl (%ecx),%eax
	cmpl %eax,(%edx)
	jg .L42
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx)
	setle %al
	xorl %ebx,%ebx
	movb %al,%bl
.L42:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Point__LessEq,.Lfe20-Point__LessEq
	.align 16
	.type	 Point__Compare,@function
Point__Compare:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl (%ecx),%edx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jl .L47
	jg .L49
	movl 4(%ecx),%edx
	movl 4(%ebx),%eax
	cmpl %eax,%edx
	jne .L46
	xorl %eax,%eax
	jmp .L48
	.align 16
.L46:
	cmpl %eax,%edx
	jl .L47
.L49:
	movl $1,%eax
	jmp .L48
	.align 16
.L47:
	movl $-1,%eax
.L48:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Point__Compare,.Lfe21-Point__Compare
	.align 16
	.type	 Point__Hash,@function
Point__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl (%eax),%edx
	xorl 4(%eax),%edx
	movl %edx,%eax
	ret
.Lfe22:
	.size	 Point__Hash,.Lfe22-Point__Hash
.globl MM_Point
.data
	.align 4
	.type	 MM_Point,@object
	.size	 MM_Point,680
MM_Point:
	.long MM_Point+536
	.zero	16
	.long MM_Point+268
	.zero	20
	.long Point__FromCoords
	.long Point__FromAxes
	.long Point__DistSquare
	.long Point__Minus
	.long Point__Add
	.long Point__Sub
	.long Point__Mul
	.long Point__Div
	.long Point__Mod
	.long Point__Scale
	.long Point__Min
	.long Point__Max
	.long Point__Move
	.long Point__MoveH
	.long Point__MoveV
	.long Point__MoveHV
	.long Point__Transpose
	.long Point__Less
	.long Point__LessEq
	.long Point__Equal
	.long Point__Compare
	.long Point__Hash
	.ascii	"Hash"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"LessEq"
	.zero	1
	.ascii	"Less"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Transpose"
	.zero	1
	.ascii	"MoveHV"
	.zero	1
	.ascii	"MoveV"
	.zero	1
	.ascii	"MoveH"
	.zero	1
	.ascii	"Move"
	.zero	1
	.ascii	"Max"
	.zero	1
	.ascii	"Min"
	.zero	1
	.ascii	"Scale"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Div"
	.zero	1
	.ascii	"Mul"
	.zero	1
	.ascii	"Sub"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"Minus"
	.zero	1
	.ascii	"DistSquare"
	.zero	1
	.ascii	"FromAxes"
	.zero	1
	.ascii	"FromCoords"
	.zero	1
	.long Point__Hash
	.long MM_Point+132
	.long MI_Point+136
	.long Point__Compare
	.long MM_Point+137
	.long MI_Point+132
	.long Point__LessEq
	.long MM_Point+145
	.long MI_Point+124
	.long Point__Less
	.long MM_Point+152
	.long MI_Point+120
	.long Point__Equal
	.long MM_Point+157
	.long MI_Point+128
	.long Point__Transpose
	.long MM_Point+163
	.long MI_Point+116
	.long Point__MoveHV
	.long MM_Point+173
	.long MI_Point+112
	.long Point__MoveV
	.long MM_Point+180
	.long MI_Point+108
	.long Point__MoveH
	.long MM_Point+186
	.long MI_Point+104
	.long Point__Move
	.long MM_Point+192
	.long MI_Point+100
	.long Point__Max
	.long MM_Point+197
	.long MI_Point+96
	.long Point__Min
	.long MM_Point+201
	.long MI_Point+92
	.long Point__Scale
	.long MM_Point+205
	.long MI_Point+88
	.long Point__Mod
	.long MM_Point+211
	.long MI_Point+84
	.long Point__Div
	.long MM_Point+215
	.long MI_Point+80
	.long Point__Mul
	.long MM_Point+219
	.long MI_Point+76
	.long Point__Sub
	.long MM_Point+223
	.long MI_Point+72
	.long Point__Add
	.long MM_Point+227
	.long MI_Point+68
	.long Point__Minus
	.long MM_Point+231
	.long MI_Point+64
	.long Point__DistSquare
	.long MM_Point+237
	.long MI_Point+60
	.long Point__FromAxes
	.long MM_Point+248
	.long MI_Point+56
	.long Point__FromCoords
	.long MM_Point+257
	.long MI_Point+52
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Point.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
