	.file	"Interval.mc"
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
	.type	 Interval__FromBounds,@function
Interval__FromBounds:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	cmpl %edx,%eax
	jge .L2
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	jmp .L3
	.align 16
.L2:
	movl MI_Interval+44,%eax
	movl %eax,-8(%ebp)
	movl MI_Interval+48,%eax
	movl %eax,-4(%ebp)
.L3:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Interval__FromBounds,.Lfe1-Interval__FromBounds
	.align 16
	.type	 Interval__FromAbsBounds,@function
Interval__FromAbsBounds:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	cmpl %eax,%edx
	jge .L5
	movl %edx,-8(%ebp)
	jmp .L8
	.align 16
.L5:
	cmpl %edx,%eax
	jge .L7
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	jmp .L6
	.align 16
.L7:
	movl MI_Interval+44,%eax
	movl %eax,-8(%ebp)
	movl MI_Interval+48,%eax
.L8:
	movl %eax,-4(%ebp)
.L6:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Interval__FromAbsBounds,.Lfe2-Interval__FromAbsBounds
	.align 16
	.type	 Interval__FromBound,@function
Interval__FromBound:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L10
	movl 16(%ebp),%eax
	movl MI_Interval+44,%edx
	movl %edx,(%eax)
	movl MI_Interval+48,%edx
	movl %edx,4(%eax)
	jmp .L9
	.align 16
.L10:
	addl %eax,%edx
	movl %edx,-4(%ebp)
	movl 16(%ebp),%edx
	movl %eax,-8(%ebp)
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Interval__FromBound,.Lfe3-Interval__FromBound
	.align 16
	.type	 Interval__FromSize,@function
Interval__FromSize:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl $0,-8(%ebp)
	movl 12(%ebp),%edx
	movl %eax,-4(%ebp)
	movl $0,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Interval__FromSize,.Lfe4-Interval__FromSize
	.align 16
	.type	 Interval__Center,@function
Interval__Center:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %esi
	pushl %ebx
.L13:
	movl $5,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%esi
	movl 8(%ebp),%ebx
	movl %esi,RTThread__handlerStack
	movl (%ebx),%edx
	movl 4(%ebx),%eax
	cmpl %eax,%edx
	jne .L14
	movl 16(%ebp),%eax
	movl %edx,(%eax)
	movl 4(%ebx),%edx
	movl %edx,4(%eax)
	jmp .L16
	.align 16
.L14:
	addl %edx,%eax
	sarl $1,%eax
	movl 12(%ebp),%esi
	subl %eax,%esi
	movl %esi,%eax
	leal (%eax,%edx),%ecx
	movl %ecx,-8(%ebp)
	addl 4(%ebx),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L16:
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L15:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Interval__Center,.Lfe5-Interval__Center
	.align 16
	.type	 Interval__Size,@function
Interval__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 4(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jge .L18
	pushl $1057
	call _m3_fault
	.align 16
.L18:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Interval__Size,.Lfe6-Interval__Size
	.align 16
	.type	 Interval__PickBound,@function
Interval__PickBound:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Interval__Middle
	cmpl %eax,%ebx
	jle .L20
	movl $1,%eax
	jmp .L21
	.align 16
.L20:
	xorl %eax,%eax
.L21:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Interval__PickBound,.Lfe7-Interval__PickBound
	.align 16
	.type	 Interval__Project,@function
Interval__Project:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L23
	pushl $MM_Interval+180
	call Interval__FAIL
.L23:
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	movl 4(%ecx),%edx
	decl %edx
	cmpl %edx,%eax
	jle .L24
	movl %edx,%eax
.L24:
	movl (%ecx),%edx
	cmpl %eax,%edx
	jle .L25
	movl %edx,%eax
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Interval__Project,.Lfe8-Interval__Project
	.align 16
	.type	 Interval__Middle,@function
Interval__Middle:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L28:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl 8(%ebp),%edx
	movl %eax,RTThread__handlerStack
	movl 4(%edx),%eax
	addl (%edx),%eax
	sarl $1,%eax
.L29:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Interval__Middle,.Lfe9-Interval__Middle
	.align 16
	.type	 Interval__Move,@function
Interval__Move:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L31
	movl 16(%ebp),%eax
	movl MI_Interval+44,%edx
	movl %edx,(%eax)
	movl MI_Interval+48,%edx
	movl %edx,4(%eax)
	jmp .L30
	.align 16
.L31:
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	addl 4(%edx),%ecx
	movl 16(%ebp),%edx
	movl %ecx,-4(%ebp)
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L30:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Interval__Move,.Lfe10-Interval__Move
	.align 16
	.type	 Interval__Inset,@function
Interval__Inset:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl (%eax),%edx
	cmpl %edx,4(%eax)
	jle .L35
	leal (%ebx,%edx),%ecx
	movl %ecx,-8(%ebp)
	movl 4(%eax),%eax
	subl %ebx,%eax
	movl %eax,-4(%ebp)
	cmpl %eax,%ecx
	jl .L34
.L35:
	movl 16(%ebp),%eax
	movl MI_Interval+44,%edx
	movl %edx,(%eax)
	movl MI_Interval+48,%edx
	movl %edx,4(%eax)
	jmp .L32
	.align 16
.L34:
	movl 16(%ebp),%edx
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L32:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Interval__Inset,.Lfe11-Interval__Inset
	.align 16
	.type	 Interval__Change,@function
Interval__Change:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%ebx
	movl (%eax),%edx
	cmpl %edx,4(%eax)
	jle .L39
	movl %edx,%ecx
	addl 12(%ebp),%ecx
	movl %ecx,-8(%ebp)
	movl 4(%eax),%eax
	addl %ebx,%eax
	movl %eax,-4(%ebp)
	cmpl %eax,%ecx
	jl .L38
.L39:
	movl 20(%ebp),%eax
	movl MI_Interval+44,%edx
	movl %edx,(%eax)
	movl MI_Interval+48,%edx
	movl %edx,4(%eax)
	jmp .L36
	.align 16
.L38:
	movl 20(%ebp),%edx
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L36:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Interval__Change,.Lfe12-Interval__Change
	.align 16
	.type	 Interval__MoveBound,@function
Interval__MoveBound:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%eax
	movl 16(%ebp),%ecx
	movl (%eax),%edx
	cmpl %edx,4(%eax)
	jle .L45
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
	movl %eax,-4(%ebp)
	cmpb $0,8(%ebp)
	jne .L42
	addl %ecx,%edx
	movl %edx,-8(%ebp)
	jmp .L43
	.align 16
.L42:
	addl %ecx,%eax
	movl %eax,-4(%ebp)
.L43:
	movl -8(%ebp),%eax
	cmpl %eax,-4(%ebp)
	jg .L44
.L45:
	movl 20(%ebp),%eax
	movl MI_Interval+44,%edx
	movl %edx,(%eax)
	movl MI_Interval+48,%edx
	movl %edx,4(%eax)
	jmp .L40
	.align 16
.L44:
	movl 20(%ebp),%edx
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L40:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Interval__MoveBound,.Lfe13-Interval__MoveBound
	.align 16
	.type	 Interval__Join,@function
Interval__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%ecx
	cmpl %ecx,4(%ebx)
	jg .L47
	movl 12(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	jmp .L46
	.align 16
.L47:
	movl 12(%ebp),%edx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L48
	movl 16(%ebp),%edx
	movl %ecx,(%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	jmp .L46
	.align 16
.L48:
	cmpl %ecx,%eax
	jle .L49
	movl %ecx,%eax
.L49:
	movl %eax,-8(%ebp)
	movl 4(%edx),%edx
	movl 4(%ebx),%eax
	cmpl %edx,%eax
	jle .L50
	movl %eax,-4(%ebp)
	jmp .L51
	.align 16
.L50:
	movl %edx,-4(%ebp)
.L51:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L46:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Interval__Join,.Lfe14-Interval__Join
	.align 16
	.type	 Interval__Meet,@function
Interval__Meet:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 8(%ebp),%eax
	subl $16,%esp
	movl (%eax),%eax
	cmpl %edx,%eax
	jle .L53
	movl %eax,-8(%ebp)
	jmp .L54
	.align 16
.L53:
	movl %edx,-8(%ebp)
.L54:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 4(%eax),%ecx
	movl 4(%edx),%eax
	cmpl %ecx,%eax
	jle .L55
	movl %ecx,%eax
.L55:
	movl %eax,-4(%ebp)
	movl -8(%ebp),%ecx
	cmpl %eax,%ecx
	jl .L56
	movl 16(%ebp),%eax
	movl MI_Interval+44,%edx
	movl %edx,(%eax)
	movl MI_Interval+48,%edx
	movl %edx,4(%eax)
	jmp .L52
	.align 16
.L56:
	movl 16(%ebp),%edx
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
.L52:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Interval__Meet,.Lfe15-Interval__Meet
	.align 16
	.type	 Interval__Chop,@function
Interval__Chop:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%ecx
	cmpl %edx,%ecx
	jl .L58
	movl 16(%ebp),%edx
	movl MI_Interval+44,%eax
	movl %eax,(%edx)
	movl MI_Interval+48,%eax
	movl %eax,4(%edx)
	movl 8(%ebp),%edx
	movl 20(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	jmp .L57
	.align 16
.L58:
	cmpl %edx,4(%eax)
	jg .L60
	movl 16(%ebp),%edx
	movl %ecx,(%edx)
	movl 4(%eax),%eax
	movl %eax,4(%edx)
	movl 20(%ebp),%edx
	movl MI_Interval+44,%eax
	movl %eax,(%edx)
	movl MI_Interval+48,%eax
	jmp .L61
	.align 16
.L60:
	movl 16(%ebp),%eax
	movl %ecx,(%eax)
	movl 16(%ebp),%eax
	movl %edx,4(%eax)
	movl 20(%ebp),%eax
	movl %edx,(%eax)
	movl 8(%ebp),%eax
	movl 20(%ebp),%edx
	movl 4(%eax),%eax
.L61:
	movl %eax,4(%edx)
.L57:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Interval__Chop,.Lfe16-Interval__Chop
	.align 16
	.type	 Interval__Factor,@function
Interval__Factor:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	leal -8(%ebp),%esi
	pushl %ebx
	cmpl $0,20(%ebp)
	setg %al
	addb %al,%al
	xorl %ebx,%ebx
	movb %al,%bl
	leal 0(,%ebx,8),%eax
	pushl %esi
	addl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Interval__Chop
	movl $2,%eax
	subl %ebx,%eax
	movl 16(%ebp),%edx
	leal (%edx,%eax,8),%eax
	pushl %eax
	addl $8,%edx
	pushl %edx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %esi
	call Interval__Chop
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Interval__Factor,.Lfe17-Interval__Factor
	.align 16
	.type	 Interval__Mod,@function
Interval__Mod:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L66:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl %ebx,RTThread__handlerStack
	movl 4(%edx),%eax
	cmpl %eax,(%edx)
	jl .L67
	pushl $MM_Interval+228
	call Interval__FAIL
	addl $4,%esp
.L67:
	movl 12(%ebp),%ecx
	movl 8(%ebp),%eax
	movl (%ecx),%edx
	subl %edx,%eax
	pushl %eax
	movl 4(%ecx),%eax
	subl %edx,%eax
	pushl %eax
	call m3_mod
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 12(%ebp),%eax
	movl (%eax),%eax
	addl %edx,%eax
.L68:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Interval__Mod,.Lfe18-Interval__Mod
	.align 16
	.type	 Interval__Equal,@function
Interval__Equal:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	cmpl %eax,(%ecx)
	sete %bl
	movl 4(%edx),%eax
	cmpl %eax,4(%ecx)
	sete %al
	andl %ebx,%eax
	andl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Interval__Equal,.Lfe19-Interval__Equal
	.align 16
	.type	 Interval__IsEmpty,@function
Interval__IsEmpty:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 4(%eax),%edx
	cmpl %edx,(%eax)
	setge %al
	andl $255,%eax
	ret
.Lfe20:
	.size	 Interval__IsEmpty,.Lfe20-Interval__IsEmpty
	.align 16
	.type	 Interval__Member,@function
Interval__Member:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	cmpl %ecx,(%edx)
	jg .L72
	cmpl %ecx,4(%edx)
	setg %al
	andl $255,%eax
.L72:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Interval__Member,.Lfe21-Interval__Member
	.align 16
	.type	 Interval__Overlap,@function
Interval__Overlap:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	movl 4(%edx),%ebx
	movl 4(%eax),%ecx
	movl (%edx),%edx
	movl (%eax),%eax
	cmpl %edx,%eax
	jge .L74
	movl %edx,%eax
.L74:
	movl %ebx,%edx
	cmpl %ecx,%edx
	jle .L75
	movl %ecx,%edx
.L75:
	cmpl %edx,%eax
	setl %al
	andl $255,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Interval__Overlap,.Lfe22-Interval__Overlap
	.align 16
	.type	 Interval__Subset,@function
Interval__Subset:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $1,%ebx
	movl (%eax),%edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jge .L77
	movl 12(%ebp),%eax
	cmpl %edx,(%eax)
	jg .L78
	cmpl %ecx,4(%eax)
	jge .L77
.L78:
	xorl %ebx,%ebx
.L77:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Interval__Subset,.Lfe23-Interval__Subset
	.align 16
	.type	 Interval__Compare,@function
Interval__Compare:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl (%ecx),%edx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jl .L83
	jg .L85
	movl 4(%ecx),%edx
	movl 4(%ebx),%eax
	cmpl %eax,%edx
	jne .L82
	xorl %eax,%eax
	jmp .L84
	.align 16
.L82:
	cmpl %eax,%edx
	jl .L83
.L85:
	movl $1,%eax
	jmp .L84
	.align 16
.L83:
	movl $-1,%eax
.L84:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Interval__Compare,.Lfe24-Interval__Compare
	.align 16
	.type	 Interval__Hash,@function
Interval__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl (%eax),%edx
	xorl 4(%eax),%edx
	movl %edx,%eax
	ret
.Lfe25:
	.size	 Interval__Hash,.Lfe25-Interval__Hash
	.align 16
	.type	 Interval__FAIL,@function
Interval__FAIL:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L88:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	pushl $MM_Interval+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L89:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Interval__FAIL,.Lfe26-Interval__FAIL
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Interval
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe27:
	.size	 _m3_fault,.Lfe27-_m3_fault
.globl MM_Interval
.data
	.align 4
	.type	 MM_Interval,@object
	.size	 MM_Interval,920
MM_Interval:
	.long MM_Interval+772
	.zero	16
	.long MM_Interval+456
	.zero	20
	.long MM_Interval+48
	.ascii	"Interval.ASSERT_FAILED"
	.zero	2
	.long Interval__FAIL
	.long Interval__FromBounds
	.long Interval__FromAbsBounds
	.long Interval__FromBound
	.long Interval__FromSize
	.long Interval__Center
	.long Interval__Size
	.long Interval__Middle
	.long Interval__PickBound
	.long Interval__Project
	.long Interval__Move
	.long Interval__Inset
	.long Interval__Change
	.long Interval__MoveBound
	.long Interval__Join
	.long Interval__Meet
	.long Interval__Chop
	.long Interval__Factor
	.long Interval__Mod
	.long Interval__Equal
	.long Interval__IsEmpty
	.long Interval__Member
	.long Interval__Overlap
	.long Interval__Subset
	.long Interval__Compare
	.long Interval__Hash
	.long 2
	.long MM_Interval+188
	.long 33
	.ascii	"Interval.Project: empty interval"
	.zero	4
	.long 2
	.long MM_Interval+236
	.long 26
	.ascii	"Interval.Mod: a is empty!"
	.zero	3
	.ascii	"FAIL"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"Subset"
	.zero	1
	.ascii	"Overlap"
	.zero	1
	.ascii	"Member"
	.zero	1
	.ascii	"IsEmpty"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Factor"
	.zero	1
	.ascii	"Chop"
	.zero	1
	.ascii	"Meet"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"MoveBound"
	.zero	1
	.ascii	"Change"
	.zero	1
	.ascii	"Inset"
	.zero	1
	.ascii	"Move"
	.zero	1
	.ascii	"Middle"
	.zero	1
	.ascii	"Project"
	.zero	1
	.ascii	"PickBound"
	.zero	1
	.ascii	"Size"
	.zero	1
	.ascii	"Center"
	.zero	1
	.ascii	"FromSize"
	.zero	1
	.ascii	"FromBound"
	.zero	1
	.ascii	"FromAbsBounds"
	.zero	1
	.ascii	"FromBounds"
	.zero	4
	.long Interval__FAIL
	.long MM_Interval+264
	.zero	4
	.long Interval__Hash
	.long MM_Interval+269
	.long MI_Interval+156
	.long Interval__Compare
	.long MM_Interval+274
	.long MI_Interval+152
	.long Interval__Subset
	.long MM_Interval+282
	.long MI_Interval+148
	.long Interval__Overlap
	.long MM_Interval+289
	.long MI_Interval+144
	.long Interval__Member
	.long MM_Interval+297
	.long MI_Interval+140
	.long Interval__IsEmpty
	.long MM_Interval+304
	.long MI_Interval+136
	.long Interval__Equal
	.long MM_Interval+312
	.long MI_Interval+132
	.long Interval__Mod
	.long MM_Interval+318
	.long MI_Interval+128
	.long Interval__Factor
	.long MM_Interval+322
	.long MI_Interval+124
	.long Interval__Chop
	.long MM_Interval+329
	.long MI_Interval+120
	.long Interval__Meet
	.long MM_Interval+334
	.long MI_Interval+116
	.long Interval__Join
	.long MM_Interval+339
	.long MI_Interval+112
	.long Interval__MoveBound
	.long MM_Interval+344
	.long MI_Interval+108
	.long Interval__Change
	.long MM_Interval+354
	.long MI_Interval+104
	.long Interval__Inset
	.long MM_Interval+361
	.long MI_Interval+100
	.long Interval__Move
	.long MM_Interval+367
	.long MI_Interval+96
	.long Interval__Middle
	.long MM_Interval+372
	.long MI_Interval+84
	.long Interval__Project
	.long MM_Interval+379
	.long MI_Interval+92
	.long Interval__PickBound
	.long MM_Interval+387
	.long MI_Interval+88
	.long Interval__Size
	.long MM_Interval+397
	.long MI_Interval+80
	.long Interval__Center
	.long MM_Interval+402
	.long MI_Interval+76
	.long Interval__FromSize
	.long MM_Interval+409
	.long MI_Interval+72
	.long Interval__FromBound
	.long MM_Interval+418
	.long MI_Interval+68
	.long Interval__FromAbsBounds
	.long MM_Interval+428
	.long MI_Interval+64
	.long Interval__FromBounds
	.long MM_Interval+442
	.long MI_Interval+60
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Interval.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
