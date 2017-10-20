	.file	"Rect.mc"
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
	.type	 Rect__FromEdges,@function
Rect__FromEdges:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 16(%ebp),%ecx
	movl 20(%ebp),%ebx
	cmpl %edx,%eax
	jge .L2
	cmpl %ebx,%ecx
	jl .L3
.L2:
	movl 24(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L1
	.align 16
.L3:
	movl %eax,-16(%ebp)
	movl %edx,-12(%ebp)
	movl %ecx,-8(%ebp)
	movl 24(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L1:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Rect__FromEdges,.Lfe1-Rect__FromEdges
	.align 16
	.type	 Rect__FromAbsEdges,@function
Rect__FromAbsEdges:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 16(%ebp),%ebx
	movl 20(%ebp),%ecx
	cmpl %eax,%edx
	je .L5
	cmpl %ecx,%ebx
	jne .L6
.L5:
	movl 24(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L4
	.align 16
.L6:
	cmpl %eax,%edx
	jge .L7
	movl %edx,-16(%ebp)
	movl %eax,-12(%ebp)
	jmp .L8
	.align 16
.L7:
	movl %eax,-16(%ebp)
	movl %edx,-12(%ebp)
.L8:
	cmpl %ecx,%ebx
	jge .L9
	movl %ebx,-8(%ebp)
	movl %ecx,-4(%ebp)
	jmp .L10
	.align 16
.L9:
	movl %ecx,-8(%ebp)
	movl %ebx,-4(%ebp)
.L10:
	movl 24(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L4:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Rect__FromAbsEdges,.Lfe2-Rect__FromAbsEdges
	.align 16
	.type	 Rect__FromPoint,@function
Rect__FromPoint:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	movl 4(%ecx),%edx
	leal 1(%edx),%eax
	pushl %eax
	pushl %edx
	movl (%ecx),%edx
	leal 1(%edx),%eax
	pushl %eax
	pushl %edx
	call Rect__FromEdges
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Rect__FromPoint,.Lfe3-Rect__FromPoint
	.align 16
	.type	 Rect__FromCorners,@function
Rect__FromCorners:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call Rect__FromAbsEdges
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Rect__FromCorners,.Lfe4-Rect__FromCorners
	.align 16
	.type	 Rect__FromCorner,@function
Rect__FromCorner:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%ebx
	testl %eax,%eax
	je .L14
	testl %ebx,%ebx
	jne .L15
.L14:
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L13
	.align 16
.L15:
	movl 8(%ebp),%edx
	movl (%edx),%ecx
	movl %ecx,-16(%ebp)
	addl (%edx),%eax
	movl %eax,-12(%ebp)
	movl 4(%edx),%eax
	movl %eax,-8(%ebp)
	addl 4(%edx),%ebx
	movl 20(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L13:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Rect__FromCorner,.Lfe5-Rect__FromCorner
	.align 16
	.type	 Rect__FromSize,@function
Rect__FromSize:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %eax,%eax
	je .L17
	testl %edx,%edx
	jne .L18
.L17:
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L16
	.align 16
.L18:
	movl $0,-16(%ebp)
	movl %eax,-12(%ebp)
	movl %edx,-4(%ebp)
	movl 16(%ebp),%edx
	movl $0,-8(%ebp)
	movl $0,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Rect__FromSize,.Lfe6-Rect__FromSize
	.align 16
	.type	 Rect__Center,@function
Rect__Center:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L20:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%edi
	movl 8(%ebp),%esi
	movl %edi,RTThread__handlerStack
	movl (%esi),%ecx
	movl 4(%esi),%eax
	cmpl %eax,%ecx
	jl .L21
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L23
	.align 16
.L21:
	movl 12(%ebp),%edx
	addl %ecx,%eax
	sarl $1,%eax
	movl (%edx),%ebx
	subl %eax,%ebx
	movl 12(%esi),%eax
	addl 8(%esi),%eax
	sarl $1,%eax
	movl 4(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	addl %ebx,%ecx
	movl %ecx,-16(%ebp)
	addl 4(%esi),%ebx
	movl %ebx,-12(%ebp)
	movl 8(%esi),%edi
	addl %eax,%edi
	movl %edi,-8(%ebp)
	addl 12(%esi),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L23:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L22:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Rect__Center,.Lfe7-Rect__Center
	.align 16
	.type	 Rect__FromIntervals,@function
Rect__FromIntervals:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl (%ecx),%ebx
	cmpl %ebx,4(%ecx)
	je .L25
	movl 12(%ebp),%edx
	movl 4(%edx),%eax
	cmpl %eax,(%edx)
	jne .L26
.L25:
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L24
	.align 16
.L26:
	movl %ebx,-16(%ebp)
	movl 4(%ecx),%eax
	movl %eax,-12(%ebp)
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ebx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L24:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Rect__FromIntervals,.Lfe8-Rect__FromIntervals
	.align 16
	.type	 Rect__FromAxes,@function
Rect__FromAxes:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 12(%ebp),%ecx
	movl (%ecx),%ebx
	cmpl %ebx,4(%ecx)
	je .L28
	movl 16(%ebp),%edx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jne .L29
.L28:
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L27
	.align 16
.L29:
	cmpb $0,8(%ebp)
	jne .L30
	movl %ebx,-16(%ebp)
	movl 4(%ecx),%eax
	movl %eax,-12(%ebp)
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	jmp .L32
	.align 16
.L30:
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl (%ecx),%eax
	movl %eax,-8(%ebp)
	movl 4(%ecx),%eax
.L32:
	movl %eax,-4(%ebp)
	movl 20(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L27:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Rect__FromAxes,.Lfe9-Rect__FromAxes
	.align 16
	.type	 Rect__NorthWest,@function
Rect__NorthWest:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 8(%eax),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Rect__NorthWest,.Lfe10-Rect__NorthWest
	.align 16
	.type	 Rect__NorthEast,@function
Rect__NorthEast:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 4(%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 8(%eax),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Rect__NorthEast,.Lfe11-Rect__NorthEast
	.align 16
	.type	 Rect__SouthWest,@function
Rect__SouthWest:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 12(%eax),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Rect__SouthWest,.Lfe12-Rect__SouthWest
	.align 16
	.type	 Rect__SouthEast,@function
Rect__SouthEast:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 4(%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 12(%eax),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Rect__SouthEast,.Lfe13-Rect__SouthEast
	.align 16
	.type	 Rect__GetVertex,@function
Rect__GetVertex:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	subl $8,%esp
	movl 4(%edx),%eax
	cmpl %eax,(%edx)
	jl .L38
	movl 16(%ebp),%eax
	movl MI_Point+44,%edx
	movl %edx,(%eax)
	movl MI_Point+48,%edx
	movl %edx,4(%eax)
	jmp .L37
	.align 16
.L38:
	xorl %eax,%eax
	movb 8(%ebp),%al
	testl %eax,%eax
	jle .L39
	cmpl $1,%eax
	jle .L40
	cmpl $2,%eax
	jle .L41
	cmpl $3,%eax
	jle .L42
.L39:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	call Rect__NorthWest
	jmp .L37
	.align 16
.L40:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	call Rect__NorthEast
	jmp .L37
	.align 16
.L41:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	call Rect__SouthWest
	jmp .L37
	.align 16
.L42:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	call Rect__SouthEast
.L37:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Rect__GetVertex,.Lfe14-Rect__GetVertex
	.align 16
	.type	 Rect__HorSize,@function
Rect__HorSize:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 4(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jge .L46
	pushl $2721
	call _m3_fault
	.align 16
.L46:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Rect__HorSize,.Lfe15-Rect__HorSize
	.align 16
	.type	 Rect__VerSize,@function
Rect__VerSize:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	movl 12(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jge .L48
	pushl $2801
	call _m3_fault
	.align 16
.L48:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Rect__VerSize,.Lfe16-Rect__VerSize
	.align 16
	.type	 Rect__Size,@function
Rect__Size:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	testl %eax,%eax
	jle .L50
	cmpl $1,%eax
	jle .L51
.L50:
	movl 12(%ebp),%eax
	pushl %eax
	call Rect__HorSize
	jmp .L54
	.align 16
.L51:
	movl 12(%ebp),%eax
	pushl %eax
	call Rect__VerSize
.L54:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Rect__Size,.Lfe17-Rect__Size
	.align 16
	.type	 Rect__DiagSizeSquare,@function
Rect__DiagSizeSquare:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Rect__HorSize
	movl %eax,%ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Rect__VerSize
	movl %ebx,%edx
	imull %ebx,%edx
	imull %eax,%eax
	addl %edx,%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L56
	pushl $3057
	call _m3_fault
	.align 16
.L56:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Rect__DiagSizeSquare,.Lfe18-Rect__DiagSizeSquare
	.align 16
	.type	 Rect__Middle,@function
Rect__Middle:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
.L58:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ebx
	movl 8(%ebp),%ecx
	movl %ebx,RTThread__handlerStack
	movl 4(%ecx),%edx
	addl (%ecx),%edx
	sarl $1,%edx
	movl %edx,-24(%ebp)
	movl 12(%ecx),%eax
	addl 8(%ecx),%eax
	sarl $1,%eax
	movl 12(%ebp),%ecx
	movl %eax,-20(%ebp)
	movl %edx,(%ecx)
	movl -20(%ebp),%eax
	movl %eax,4(%ecx)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L59:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Rect__Middle,.Lfe19-Rect__Middle
	.align 16
	.type	 Rect__PickEdge,@function
Rect__PickEdge:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	leal -24(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Rect__Middle
	leal -32(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call Rect__SouthEast
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	movl MI_Point+72,%eax
	call *%eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Point+72,%eax
	call *%eax
	movl -12(%ebp),%eax
	imull -8(%ebp),%eax
	movl -16(%ebp),%edx
	imull -4(%ebp),%edx
	cmpl %edx,%eax
	jl .L61
	negl %eax
	cmpl %edx,%eax
	jl .L62
	movl $2,%eax
	jmp .L64
	.align 16
.L62:
	movl $1,%eax
	jmp .L64
	.align 16
.L61:
	negl %eax
	cmpl %edx,%eax
	jge .L63
	movl $3,%eax
	jmp .L64
	.align 16
.L63:
	xorl %eax,%eax
.L64:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Rect__PickEdge,.Lfe20-Rect__PickEdge
	.align 16
	.type	 Rect__PickVertex,@function
Rect__PickVertex:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	leal -16(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Rect__Middle
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Point+72,%eax
	call *%eax
	cmpl $0,-8(%ebp)
	jle .L66
	cmpl $0,-4(%ebp)
	jle .L67
	movl $3,%eax
	jmp .L69
	.align 16
.L67:
	movl $1,%eax
	jmp .L69
	.align 16
.L66:
	cmpl $0,-4(%ebp)
	jg .L68
	xorl %eax,%eax
	jmp .L69
	.align 16
.L68:
	movl $2,%eax
.L69:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Rect__PickVertex,.Lfe21-Rect__PickVertex
	.align 16
	.type	 Rect__Project,@function
Rect__Project:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%eax),%ecx
	cmpl %ecx,%edx
	jg .L71
	pushl $3648
	call _m3_fault
	.align 16
.L71:
	movl 12(%ebp),%eax
	decl %edx
	movl (%eax),%eax
	cmpl %eax,%edx
	jle .L72
	movl %eax,%edx
.L72:
	cmpl %ecx,%edx
	jle .L73
	movl %edx,-8(%ebp)
	jmp .L74
	.align 16
.L73:
	movl %ecx,-8(%ebp)
.L74:
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 8(%edx),%ebx
	movl 4(%eax),%ecx
	movl 12(%edx),%eax
	decl %eax
	cmpl %ecx,%eax
	jle .L75
	movl %ecx,%eax
.L75:
	cmpl %ebx,%eax
	jle .L76
	movl %eax,-4(%ebp)
	jmp .L77
	.align 16
.L76:
	movl %ebx,-4(%ebp)
.L77:
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Rect__Project,.Lfe22-Rect__Project
	.align 16
	.type	 Rect__Add,@function
Rect__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%eax
	cmpl %eax,4(%ebx)
	jg .L79
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L78
	.align 16
.L79:
	movl 12(%ebp),%edx
	movl %eax,%ecx
	addl (%edx),%ecx
	movl %ecx,-16(%ebp)
	movl (%edx),%eax
	addl 4(%ebx),%eax
	movl %eax,-12(%ebp)
	movl 4(%edx),%eax
	addl 8(%ebx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	addl 12(%ebx),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L78:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Rect__Add,.Lfe23-Rect__Add
	.align 16
	.type	 Rect__Sub,@function
Rect__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%eax
	cmpl %eax,4(%ebx)
	jg .L81
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L80
	.align 16
.L81:
	movl 12(%ebp),%edx
	movl %eax,%ecx
	subl (%edx),%ecx
	movl %ecx,-16(%ebp)
	movl (%edx),%eax
	movl 4(%ebx),%esi
	subl %eax,%esi
	movl %esi,-12(%ebp)
	movl 4(%edx),%eax
	movl 8(%ebx),%esi
	subl %eax,%esi
	movl %esi,-8(%ebp)
	movl 4(%edx),%eax
	movl 12(%ebx),%ebx
	subl %eax,%ebx
	movl 16(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L80:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Rect__Sub,.Lfe24-Rect__Sub
	.align 16
	.type	 Rect__Move,@function
Rect__Move:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%eax
	cmpl %eax,4(%ebx)
	jg .L83
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L82
	.align 16
.L83:
	movl 12(%ebp),%edx
	movl %eax,%ecx
	addl (%edx),%ecx
	movl %ecx,-16(%ebp)
	movl (%edx),%eax
	addl 4(%ebx),%eax
	movl %eax,-12(%ebp)
	movl 4(%edx),%eax
	addl 8(%ebx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	addl 12(%ebx),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L82:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Rect__Move,.Lfe25-Rect__Move
	.align 16
	.type	 Rect__MoveH,@function
Rect__MoveH:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L85
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L84
	.align 16
.L85:
	leal (%ebx,%eax),%ecx
	movl %ecx,-16(%ebp)
	addl 4(%edx),%ebx
	movl %ebx,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl 16(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L84:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Rect__MoveH,.Lfe26-Rect__MoveH
	.align 16
	.type	 Rect__MoveV,@function
Rect__MoveV:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%ecx
	cmpl %ecx,4(%edx)
	jg .L87
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L86
	.align 16
.L87:
	movl %ecx,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%esi
	addl %ebx,%esi
	movl %esi,-8(%ebp)
	addl 12(%edx),%ebx
	movl 16(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L86:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Rect__MoveV,.Lfe27-Rect__MoveV
	.align 16
	.type	 Rect__MoveHV,@function
Rect__MoveHV:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 16(%ebp),%ebx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L89
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L88
	.align 16
.L89:
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	addl 4(%edx),%ecx
	movl %ecx,-12(%ebp)
	movl 8(%edx),%esi
	addl %ebx,%esi
	movl %esi,-8(%ebp)
	addl 12(%edx),%ebx
	movl 20(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L88:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Rect__MoveHV,.Lfe28-Rect__MoveHV
	.align 16
	.type	 Rect__Scale,@function
Rect__Scale:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
.L91:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%edi
	movl 8(%ebp),%edx
	movl %edi,RTThread__handlerStack
	movl 4(%edx),%eax
	cmpl %eax,(%edx)
	jl .L92
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L96
	.align 16
.L92:
	movl 8(%edx),%eax
	imull %ebx,%eax
	pushl %eax
	pushl %esi
	call m3_div
	movl %eax,-8(%ebp)
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	imull %ebx,%eax
	pushl %eax
	pushl %esi
	call m3_div
	movl %eax,-4(%ebp)
	addl $16,%esp
	cmpl %eax,-8(%ebp)
	jl .L93
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L96
	.align 16
.L93:
	movl 8(%ebp),%eax
	movl (%eax),%eax
	imull %ebx,%eax
	pushl %eax
	pushl %esi
	call m3_div
	movl %eax,-16(%ebp)
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	imull %ebx,%eax
	pushl %eax
	pushl %esi
	call m3_div
	movl %eax,-12(%ebp)
	movl -16(%ebp),%ecx
	cmpl %eax,%ecx
	jl .L94
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L96
	.align 16
.L94:
	movl 20(%ebp),%edx
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L96:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L95:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Rect__Scale,.Lfe29-Rect__Scale
	.align 16
	.type	 Rect__Inset,@function
Rect__Inset:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%esi
	movl (%edx),%ecx
	cmpl %ecx,4(%edx)
	jle .L100
	movl 12(%edx),%eax
	cmpl %eax,8(%edx)
	jge .L100
	addl %esi,%ecx
	movl %ecx,-16(%ebp)
	movl 4(%edx),%eax
	subl %esi,%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%ebx
	addl %esi,%ebx
	movl %ebx,-8(%ebp)
	movl 12(%edx),%edx
	subl %esi,%edx
	movl %edx,-4(%ebp)
	cmpl %eax,%ecx
	jge .L100
	cmpl %edx,%ebx
	jl .L101
.L100:
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L97
	.align 16
.L101:
	movl 16(%ebp),%edx
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L97:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Rect__Inset,.Lfe30-Rect__Inset
	.align 16
	.type	 Rect__Change,@function
Rect__Change:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl 20(%ebp),%esi
	movl 8(%ebp),%edx
	movl 24(%ebp),%edi
	movl (%edx),%ecx
	cmpl %ecx,4(%edx)
	jle .L105
	movl 12(%edx),%eax
	cmpl %eax,8(%edx)
	jge .L105
	addl 12(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl 4(%edx),%eax
	addl %ebx,%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%ebx
	addl %esi,%ebx
	movl %ebx,-8(%ebp)
	movl 12(%edx),%edx
	addl %edi,%edx
	movl %edx,-4(%ebp)
	cmpl %eax,%ecx
	jge .L105
	cmpl %edx,%ebx
	jl .L106
.L105:
	movl 28(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L102
	.align 16
.L106:
	movl 28(%ebp),%edx
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L102:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 Rect__Change,.Lfe31-Rect__Change
	.align 16
	.type	 Rect__MoveEdge,@function
Rect__MoveEdge:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	movl 8(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jle .L115
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movb 12(%ebp),%al
	testl %eax,%eax
	jle .L109
	cmpl $1,%eax
	jle .L110
	cmpl $2,%eax
	jle .L111
	cmpl $3,%eax
	jle .L112
.L109:
	addl (%edx),%ecx
	movl %ecx,-16(%ebp)
	jmp .L113
	.align 16
.L110:
	addl 4(%edx),%ecx
	movl %ecx,-12(%ebp)
	jmp .L113
	.align 16
.L111:
	addl 8(%edx),%ecx
	movl %ecx,-8(%ebp)
	jmp .L113
	.align 16
.L112:
	addl 12(%edx),%ecx
	movl %ecx,-4(%ebp)
.L113:
	movl -16(%ebp),%ecx
	cmpl %ecx,-12(%ebp)
	jle .L115
	movl -4(%ebp),%eax
	cmpl %eax,-8(%ebp)
	jl .L116
.L115:
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L107
	.align 16
.L116:
	movl 20(%ebp),%edx
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L107:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 Rect__MoveEdge,.Lfe32-Rect__MoveEdge
	.align 16
	.type	 Rect__MoveVertex,@function
Rect__MoveVertex:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	subl $32,%esp
	movl (%ecx),%eax
	cmpl %eax,4(%ecx)
	jle .L125
	movl %eax,-16(%ebp)
	movl 4(%ecx),%eax
	movl %eax,-12(%ebp)
	movl 8(%ecx),%eax
	movl %eax,-8(%ebp)
	movl 12(%ecx),%eax
	movl %eax,-4(%ebp)
	xorl %eax,%eax
	movb 12(%ebp),%al
	testl %eax,%eax
	jle .L119
	cmpl $1,%eax
	jle .L120
	cmpl $2,%eax
	jle .L121
	cmpl $3,%eax
	jle .L122
.L119:
	movl 16(%ebp),%eax
	movl (%eax),%edx
	addl (%ecx),%edx
	movl %edx,-16(%ebp)
	jmp .L127
	.align 16
.L120:
	movl 16(%ebp),%eax
	movl (%eax),%edx
	addl 4(%ecx),%edx
	movl %edx,-12(%ebp)
.L127:
	movl 4(%eax),%eax
	addl 8(%ecx),%eax
	movl %eax,-8(%ebp)
	jmp .L123
	.align 16
.L121:
	movl 16(%ebp),%eax
	movl (%eax),%edx
	addl (%ecx),%edx
	movl %edx,-16(%ebp)
	jmp .L128
	.align 16
.L122:
	movl 16(%ebp),%eax
	movl (%eax),%edx
	addl 4(%ecx),%edx
	movl %edx,-12(%ebp)
.L128:
	movl 4(%eax),%eax
	addl 12(%ecx),%eax
	movl %eax,-4(%ebp)
.L123:
	movl -16(%ebp),%ecx
	cmpl %ecx,-12(%ebp)
	jle .L125
	movl -4(%ebp),%eax
	cmpl %eax,-8(%ebp)
	jl .L126
.L125:
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L117
	.align 16
.L126:
	movl 20(%ebp),%edx
	movl %ecx,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L117:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 Rect__MoveVertex,.Lfe33-Rect__MoveVertex
	.align 16
	.type	 Rect__Stretch,@function
Rect__Stretch:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 16(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 20(%ebp),%ebx
	movl 4(%edx),%eax
	cmpl %eax,(%edx)
	jge .L130
	cmpl %ebx,%ecx
	jl .L131
.L130:
	movl 24(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L129
	.align 16
.L131:
	cmpb $0,12(%ebp)
	jne .L132
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	movl %ecx,-16(%ebp)
	movl %ebx,-12(%ebp)
	jmp .L133
	.align 16
.L132:
	movl %ecx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
.L133:
	movl 24(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L129:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 Rect__Stretch,.Lfe34-Rect__Stretch
	.align 16
	.type	 Rect__Join,@function
Rect__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl (%ebx),%ecx
	cmpl %ecx,4(%ebx)
	jg .L135
	movl 12(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L134
	.align 16
.L135:
	movl 12(%ebp),%edx
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L136
	movl 16(%ebp),%edx
	movl %ecx,(%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	movl 8(%ebx),%eax
	movl %eax,8(%edx)
	movl 12(%ebx),%eax
	jmp .L143
	.align 16
.L136:
	cmpl %ecx,%eax
	jle .L137
	movl %ecx,%eax
.L137:
	movl %eax,-16(%ebp)
	movl 4(%edx),%edx
	movl 4(%ebx),%eax
	cmpl %edx,%eax
	jle .L138
	movl %eax,-12(%ebp)
	jmp .L139
	.align 16
.L138:
	movl %edx,-12(%ebp)
.L139:
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 8(%ecx),%edx
	movl 8(%ebx),%eax
	cmpl %edx,%eax
	jle .L140
	movl %edx,%eax
.L140:
	movl %eax,-8(%ebp)
	movl 12(%ebx),%edx
	movl 12(%ecx),%eax
	cmpl %edx,%eax
	jle .L141
	movl %eax,-4(%ebp)
	jmp .L142
	.align 16
.L141:
	movl %edx,-4(%ebp)
.L142:
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
.L143:
	movl %eax,12(%edx)
.L134:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 Rect__Join,.Lfe35-Rect__Join
	.align 16
	.type	 Rect__Meet,@function
Rect__Meet:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
	jle .L145
	movl %eax,-16(%ebp)
	jmp .L146
	.align 16
.L145:
	movl %edx,-16(%ebp)
.L146:
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 4(%ecx),%edx
	movl 4(%ebx),%eax
	cmpl %edx,%eax
	jle .L147
	movl %edx,%eax
.L147:
	movl %eax,-12(%ebp)
	cmpl %eax,-16(%ebp)
	jge .L153
	movl 8(%ebx),%edx
	movl 8(%ecx),%eax
	cmpl %edx,%eax
	jle .L149
	movl %eax,-8(%ebp)
	jmp .L150
	.align 16
.L149:
	movl %edx,-8(%ebp)
.L150:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 12(%eax),%ecx
	movl 12(%edx),%eax
	cmpl %ecx,%eax
	jle .L151
	movl %ecx,%eax
.L151:
	movl %eax,-4(%ebp)
	cmpl %eax,-8(%ebp)
	jl .L152
.L153:
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L144
	.align 16
.L152:
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L144:
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 Rect__Meet,.Lfe36-Rect__Meet
	.align 16
	.type	 Rect__Extend,@function
Rect__Extend:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	leal -32(%ebp),%ebx
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	call Rect__FromPoint
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Rect__Join
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 Rect__Extend,.Lfe37-Rect__Extend
	.align 16
	.type	 Rect__Chop,@function
Rect__Chop:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%esi
	cmpb $0,8(%ebp)
	jne .L156
	movl 12(%ebp),%ebx
	movl (%ebx),%eax
	cmpl %esi,%eax
	jl .L157
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	movl 12(%ebp),%edx
	movl 24(%ebp),%ecx
	movl (%edx),%eax
	jmp .L164
	.align 16
.L157:
	cmpl %esi,4(%ebx)
	jg .L159
	movl 20(%ebp),%edx
	movl %eax,(%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	movl 8(%ebx),%eax
	movl %eax,8(%edx)
	movl 12(%ebx),%eax
	jmp .L165
	.align 16
.L159:
	movl 20(%ebp),%ecx
	movl 8(%ebx),%eax
	movl %eax,8(%ecx)
	movl 12(%ebx),%eax
	movl %eax,12(%ecx)
	movl 24(%ebp),%edx
	movl 8(%ebx),%eax
	movl %eax,8(%edx)
	movl 12(%ebx),%eax
	movl %eax,12(%edx)
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl 20(%ebp),%eax
	movl %esi,4(%eax)
	movl 24(%ebp),%eax
	movl %esi,(%eax)
	movl 12(%ebp),%eax
	movl 24(%ebp),%edx
	movl 4(%eax),%eax
	movl %eax,4(%edx)
	jmp .L155
	.align 16
.L156:
	movl 12(%ebp),%ecx
	cmpl %esi,8(%ecx)
	jl .L161
	movl 20(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	movl 12(%ebp),%edx
	movl 24(%ebp),%ecx
	movl (%edx),%eax
	jmp .L164
	.align 16
.L161:
	cmpl %esi,12(%ecx)
	jg .L163
	movl 20(%ebp),%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl 12(%ecx),%eax
.L165:
	movl %eax,12(%edx)
	movl 24(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
.L164:
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L155
	.align 16
.L163:
	movl 20(%ebp),%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl 12(%ebp),%ecx
	movl 20(%ebp),%edx
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 24(%ebp),%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl 12(%ebp),%edx
	movl 24(%ebp),%ebx
	movl 4(%edx),%eax
	movl %eax,4(%ebx)
	movl 20(%ebp),%ecx
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl %esi,12(%ecx)
	movl %esi,8(%ebx)
	movl 12(%edx),%eax
	movl %eax,12(%ebx)
.L155:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 Rect__Chop,.Lfe38-Rect__Chop
	.align 16
	.type	 Rect__Factor,@function
Rect__Factor:
	pushl %ebp
	movl %esp,%ebp
	subl $88,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	movl (%eax),%edi
	movl %edi,-36(%ebp)
	movl 4(%eax),%edi
	movl %edi,-32(%ebp)
	movl 8(%eax),%edi
	movl %edi,-28(%ebp)
	movl 12(%eax),%eax
	movl %eax,-24(%ebp)
	movl (%ecx),%edi
	movl %edi,-48(%ebp)
	movl 4(%ecx),%edi
	movl %edi,-88(%ebp)
	movl 8(%ecx),%edi
	movl %edi,-44(%ebp)
	movl 12(%ecx),%edi
	movl %edi,-40(%ebp)
	movl -32(%ebp),%edi
	cmpl %edi,-36(%ebp)
	jge .L167
	movl -88(%ebp),%edi
	cmpl %edi,-48(%ebp)
	jl .L168
.L167:
	movl 16(%ebp),%edx
	movl -48(%ebp),%edi
	movl $1,%esi
	movl %edi,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl 12(%ecx),%eax
	movl %eax,12(%edx)
.L169:
	movl 16(%ebp),%ebx
	movl %esi,%ecx
	sall $4,%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	incl %esi
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ebx,%ecx)
	cmpl $4,%esi
	jle .L169
	jmp .L166
	.align 16
.L168:
	cmpl $0,24(%ebp)
	setg %al
	andl $255,%eax
	leal 0(,%eax,4),%esi
	movl -28(%ebp),%edi
	cmpl %edi,-44(%ebp)
	jge .L174
	cmpl $4,%esi
	jbe .L175
	pushl $7793
	call _m3_fault
	.align 16
.L175:
	movl %esi,%edx
	sall $4,%edx
	movl 16(%ebp),%ebx
	addl %edx,%ebx
	movl %ebx,-20(%ebp)
	movl -48(%ebp),%edi
	movl %edi,(%ebx)
	movl -20(%ebp),%eax
	movl -88(%ebp),%edi
	movl %edi,4(%eax)
	movl -44(%ebp),%edi
	movl %edi,8(%eax)
	movl -40(%ebp),%edi
	cmpl %edi,-28(%ebp)
	jge .L183
	movl 16(%ebp),%ebx
	movl -28(%ebp),%edi
	leal -16(%ebp),%eax
	movl %edi,12(%ebx,%edx)
	movl %eax,-20(%ebp)
	movl -48(%ebp),%edi
	movl %edi,-16(%ebp)
	movl -88(%ebp),%edi
	movl %edi,4(%eax)
	movl -28(%ebp),%edi
	movl %edi,8(%eax)
	movl -40(%ebp),%edi
	cmpl %edi,-24(%ebp)
	jge .L178
	movl -24(%ebp),%edi
	movl %edi,-4(%ebp)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L189
	pushl $7889
	call _m3_fault
	.align 16
.L178:
	movl -40(%ebp),%edi
	movl %edi,-4(%ebp)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L181
	pushl $8017
	call _m3_fault
	.align 16
.L181:
	movl %eax,%ecx
	sall $4,%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ebx,%ecx)
	jmp .L185
	.align 16
.L183:
	movl 16(%ebp),%ecx
	movl -40(%ebp),%edi
	movl $MI_Rect+44,%eax
	movl %edi,12(%ecx,%edx)
	movl MI_Rect+44,%edi
	movl %edi,-52(%ebp)
	movl %edi,-16(%ebp)
	movl 4(%eax),%edi
	movl %edi,-88(%ebp)
	movl %edi,-12(%ebp)
	movl 8(%eax),%ebx
	movl %ebx,-8(%ebp)
	movl 12(%eax),%edx
	movl %edx,-4(%ebp)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L184
	pushl $8097
	call _m3_fault
	.align 16
.L184:
	sall $4,%eax
	movl -52(%ebp),%edi
	movl %edi,(%ecx,%eax)
	movl -88(%ebp),%edi
	movl %edi,4(%ecx,%eax)
	movl %ebx,8(%ecx,%eax)
	movl %edx,12(%ecx,%eax)
	jmp .L185
	.align 16
.L174:
	cmpl $4,%esi
	jbe .L186
	pushl $8145
	call _m3_fault
	.align 16
.L186:
	movl 16(%ebp),%ebx
	movl %esi,%edx
	sall $4,%edx
	movl $MI_Rect+44,%eax
	movl MI_Rect+44,%edi
	movl %edi,-56(%ebp)
	movl %edi,(%ebx,%edx)
	movl 4(%eax),%edi
	movl %edi,-60(%ebp)
	movl %edi,4(%ebx,%edx)
	movl 8(%eax),%edi
	movl %edi,-64(%ebp)
	movl %edi,8(%ebx,%edx)
	movl 12(%eax),%eax
	movl %eax,-68(%ebp)
	movl %eax,12(%ebx,%edx)
	movl -24(%ebp),%edi
	cmpl %edi,-44(%ebp)
	jge .L187
	leal -16(%ebp),%eax
	movl %eax,-20(%ebp)
	movl -48(%ebp),%edi
	movl %edi,-16(%ebp)
	movl -88(%ebp),%edi
	movl %edi,4(%eax)
	movl -44(%ebp),%edi
	movl %edi,8(%eax)
	movl -40(%ebp),%edi
	cmpl %edi,-24(%ebp)
	jge .L188
	movl -24(%ebp),%edi
	movl %edi,-4(%ebp)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L189
	pushl $8225
	call _m3_fault
	.align 16
.L189:
	sall $4,%eax
	addl %eax,%ebx
	movl %ebx,-20(%ebp)
	movl -48(%ebp),%edi
	movl %edi,(%ebx)
	movl -20(%ebp),%eax
	movl -88(%ebp),%edi
	movl %edi,4(%eax)
	movl -24(%ebp),%edi
	movl %edi,8(%eax)
	movl -40(%ebp),%edi
	movl %edi,12(%eax)
	jmp .L185
	.align 16
.L188:
	movl -40(%ebp),%edi
	movl %edi,-4(%ebp)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L191
	pushl $8353
	call _m3_fault
	.align 16
.L191:
	sall $4,%eax
	movl -56(%ebp),%edi
	movl %edi,(%ebx,%eax)
	movl -60(%ebp),%edi
	movl %edi,4(%ebx,%eax)
	movl -64(%ebp),%edi
	movl %edi,8(%ebx,%eax)
	movl -68(%ebp),%edi
	movl %edi,12(%ebx,%eax)
	jmp .L185
	.align 16
.L187:
	movl -56(%ebp),%edi
	movl %edi,-16(%ebp)
	movl -60(%ebp),%edi
	movl %edi,-12(%ebp)
	movl -64(%ebp),%edi
	movl %edi,-8(%ebp)
	movl -68(%ebp),%edi
	movl %edi,-4(%ebp)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L193
	pushl $8417
	call _m3_fault
	.align 16
.L193:
	movl %eax,%edx
	sall $4,%edx
	movl (%ecx),%eax
	movl %eax,(%ebx,%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%ebx,%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%ebx,%edx)
	movl 12(%ecx),%eax
	movl %eax,12(%ebx,%edx)
.L185:
	movl -16(%ebp),%edi
	movl %edi,-48(%ebp)
	movl -12(%ebp),%edi
	movl %edi,-88(%ebp)
	movl -8(%ebp),%edi
	movl %edi,-44(%ebp)
	movl -4(%ebp),%edi
	movl %edi,-40(%ebp)
	movl -88(%ebp),%edi
	cmpl %edi,-48(%ebp)
	jl .L194
	movl $1,%esi
.L195:
	movl 16(%ebp),%ebx
	movl %esi,%ecx
	sall $4,%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	incl %esi
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ebx,%ecx)
	cmpl $3,%esi
	jle .L195
	jmp .L166
	.align 16
.L194:
	movl $1,%esi
	cmpl $0,20(%ebp)
	jle .L198
	movl $3,%esi
.L198:
	movl -36(%ebp),%edi
	cmpl %edi,-48(%ebp)
	jge .L200
	cmpl $4,%esi
	jbe .L201
	pushl $8625
	call _m3_fault
	.align 16
.L201:
	movl %esi,%edx
	sall $4,%edx
	movl 16(%ebp),%ebx
	addl %edx,%ebx
	movl %ebx,-20(%ebp)
	movl -44(%ebp),%edi
	movl %edi,8(%ebx)
	movl -40(%ebp),%edi
	movl %edi,12(%ebx)
	movl -48(%ebp),%edi
	movl %edi,(%ebx)
	movl -88(%ebp),%edi
	cmpl %edi,-36(%ebp)
	jge .L209
	movl 16(%ebp),%eax
	movl -36(%ebp),%edi
	movl %eax,%ebx
	movl %edi,4(%eax,%edx)
	leal 32(%ebx),%eax
	movl %eax,-20(%ebp)
	movl -44(%ebp),%edi
	movl %edi,8(%eax)
	movl -40(%ebp),%edi
	movl %edi,12(%eax)
	movl -36(%ebp),%edi
	movl %edi,32(%ebx)
	movl -88(%ebp),%edi
	cmpl %edi,-32(%ebp)
	jge .L204
	movl -32(%ebp),%edi
	movl %edi,36(%ebx)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L215
	pushl $8721
	call _m3_fault
	.align 16
.L204:
	movl -88(%ebp),%edi
	movl %edi,36(%ebx)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L207
	pushl $8849
	call _m3_fault
	.align 16
.L207:
	movl %eax,%ecx
	sall $4,%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ebx,%ecx)
	jmp .L166
	.align 16
.L209:
	movl 16(%ebp),%ebx
	movl -88(%ebp),%edi
	movl $MI_Rect+44,%eax
	movl %edi,4(%ebx,%edx)
	movl MI_Rect+44,%edi
	movl %edi,-72(%ebp)
	movl %edi,32(%ebx)
	movl 4(%eax),%edi
	movl %edi,-88(%ebp)
	movl %edi,36(%ebx)
	movl 8(%eax),%ecx
	movl %ecx,40(%ebx)
	movl 12(%eax),%edx
	movl %edx,44(%ebx)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L210
	pushl $8929
	call _m3_fault
	.align 16
.L210:
	sall $4,%eax
	movl -72(%ebp),%edi
	movl %edi,(%ebx,%eax)
	movl -88(%ebp),%edi
	movl %edi,4(%ebx,%eax)
	movl %ecx,8(%ebx,%eax)
	movl %edx,12(%ebx,%eax)
	jmp .L166
	.align 16
.L200:
	cmpl $4,%esi
	jbe .L212
	pushl $8977
	call _m3_fault
	.align 16
.L212:
	movl 16(%ebp),%ebx
	movl %esi,%edx
	sall $4,%edx
	movl $MI_Rect+44,%eax
	movl MI_Rect+44,%ecx
	movl %ecx,(%ebx,%edx)
	movl 4(%eax),%edi
	movl %edi,-76(%ebp)
	movl %edi,4(%ebx,%edx)
	movl 8(%eax),%edi
	movl %edi,-80(%ebp)
	movl %edi,8(%ebx,%edx)
	movl 12(%eax),%eax
	movl %eax,-84(%ebp)
	movl %eax,12(%ebx,%edx)
	movl -32(%ebp),%edi
	cmpl %edi,-48(%ebp)
	jge .L213
	leal 32(%ebx),%eax
	movl %eax,-20(%ebp)
	movl -44(%ebp),%edi
	movl %edi,8(%eax)
	movl -40(%ebp),%edi
	movl %edi,12(%eax)
	movl -48(%ebp),%edi
	movl %edi,32(%ebx)
	movl -88(%ebp),%edi
	cmpl %edi,-32(%ebp)
	jge .L214
	movl -32(%ebp),%edi
	movl %edi,36(%ebx)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L215
	pushl $9057
	call _m3_fault
	.align 16
.L215:
	sall $4,%eax
	addl %eax,%ebx
	movl %ebx,-20(%ebp)
	movl -44(%ebp),%edi
	movl %edi,8(%ebx)
	movl -40(%ebp),%edi
	movl %edi,12(%ebx)
	movl -32(%ebp),%edi
	movl %edi,(%ebx)
	movl -20(%ebp),%eax
	movl -88(%ebp),%edi
	movl %edi,4(%eax)
	jmp .L166
	.align 16
.L214:
	movl -88(%ebp),%edi
	movl %edi,36(%ebx)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L217
	pushl $9185
	call _m3_fault
	.align 16
.L217:
	sall $4,%eax
	movl %ecx,(%ebx,%eax)
	movl -76(%ebp),%edi
	movl %edi,4(%ebx,%eax)
	movl -80(%ebp),%edi
	movl %edi,8(%ebx,%eax)
	movl -84(%ebp),%edi
	jmp .L220
	.align 16
.L213:
	movl %ecx,32(%ebx)
	movl -76(%ebp),%edi
	movl %edi,36(%ebx)
	movl -80(%ebp),%edi
	movl %edi,40(%ebx)
	movl -84(%ebp),%edi
	movl %edi,44(%ebx)
	movl $4,%eax
	subl %esi,%eax
	cmpl $4,%eax
	jbe .L219
	pushl $9249
	call _m3_fault
	.align 16
.L219:
	sall $4,%eax
	movl -48(%ebp),%edi
	movl %edi,(%ebx,%eax)
	movl -88(%ebp),%edi
	movl %edi,4(%ebx,%eax)
	movl -44(%ebp),%edi
	movl %edi,8(%ebx,%eax)
	movl -40(%ebp),%edi
.L220:
	movl %edi,12(%ebx,%eax)
.L166:
	leal -100(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 Rect__Factor,.Lfe39-Rect__Factor
	.align 16
	.type	 Rect__Mod,@function
Rect__Mod:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	subl $32,%esp
	movl (%edx),%eax
	cmpl %eax,4(%edx)
	jg .L222
	pushl $9376
	call _m3_fault
	.align 16
.L222:
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Interval+128,%eax
	call *%eax
	movl %eax,-24(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Interval+128,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl 16(%ebp),%edx
	movl -24(%ebp),%eax
	movl %eax,(%edx)
	movl -20(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 Rect__Mod,.Lfe40-Rect__Mod
	.align 16
	.type	 Rect__Equal,@function
Rect__Equal:
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
	andl %eax,%ebx
	movl 8(%edx),%eax
	cmpl %eax,8(%ecx)
	sete %al
	andl %eax,%ebx
	movl 12(%edx),%eax
	cmpl %eax,12(%ecx)
	sete %al
	andl %ebx,%eax
	andl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 Rect__Equal,.Lfe41-Rect__Equal
	.align 16
	.type	 Rect__IsEmpty,@function
Rect__IsEmpty:
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
.Lfe42:
	.size	 Rect__IsEmpty,.Lfe42-Rect__IsEmpty
	.align 16
	.type	 Rect__Member,@function
Rect__Member:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%ecx
	cmpl %ecx,(%edx)
	jg .L226
	cmpl %ecx,4(%edx)
	jle .L226
	movl 4(%eax),%ecx
	cmpl %ecx,8(%edx)
	jg .L226
	cmpl %ecx,12(%edx)
	setg %al
	xorl %ebx,%ebx
	movb %al,%bl
.L226:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 Rect__Member,.Lfe43-Rect__Member
	.align 16
	.type	 Rect__Overlap,@function
Rect__Overlap:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-4(%ebp)
	movl 12(%ebp),%ebx
	movl 8(%ebp),%eax
	movl 4(%ebx),%edi
	movl 4(%eax),%esi
	movl (%ebx),%edx
	movl (%eax),%ecx
	cmpl %edx,%ecx
	jge .L229
	movl %edx,%ecx
.L229:
	movl %edi,%edx
	cmpl %esi,%edx
	jle .L230
	movl %esi,%edx
.L230:
	cmpl %edx,%ecx
	jge .L228
	movl 12(%ebx),%edi
	movl 12(%eax),%esi
	movl 8(%ebx),%edx
	movl 8(%eax),%ecx
	cmpl %edx,%ecx
	jge .L231
	movl %edx,%ecx
.L231:
	movl %edi,%edx
	cmpl %esi,%edx
	jle .L232
	movl %esi,%edx
.L232:
	cmpl %edx,%ecx
	jge .L228
	movl $1,-4(%ebp)
.L228:
	leal -16(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 Rect__Overlap,.Lfe44-Rect__Overlap
	.align 16
	.type	 Rect__Subset,@function
Rect__Subset:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl $1,%esi
	movl (%ecx),%eax
	movl 4(%ecx),%ebx
	cmpl %ebx,%eax
	jge .L234
	movl 12(%ebp),%edx
	cmpl %eax,(%edx)
	jg .L235
	cmpl %ebx,4(%edx)
	jl .L235
	movl 8(%edx),%eax
	cmpl %eax,8(%ecx)
	jl .L235
	movl 12(%edx),%eax
	cmpl %eax,12(%ecx)
	jle .L234
.L235:
	xorl %esi,%esi
.L234:
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe45:
	.size	 Rect__Subset,.Lfe45-Rect__Subset
	.align 16
	.type	 Rect__Congruent,@function
Rect__Congruent:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl (%ebx),%eax
	movl 4(%ebx),%edx
	subl %eax,%edx
	movl (%ecx),%eax
	movl 4(%ecx),%edi
	subl %eax,%edi
	movl %edi,%eax
	cmpl %eax,%edx
	jne .L237
	movl 8(%ebx),%eax
	movl 12(%ebx),%edx
	subl %eax,%edx
	movl 8(%ecx),%eax
	movl 12(%ecx),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	cmpl %eax,%edx
	sete %al
	movl %eax,%esi
	andl $255,%esi
.L237:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 Rect__Congruent,.Lfe46-Rect__Congruent
	.align 16
	.type	 Rect__Transpose,@function
Rect__Transpose:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	cmpb $0,12(%ebp)
	jne .L239
	movl 8(%ebp),%edx
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L238
	.align 16
.L239:
	movl 8(%ebp),%edx
	movl 8(%edx),%ecx
	movl %ecx,-32(%ebp)
	movl 12(%edx),%eax
	movl %eax,-28(%ebp)
	movl (%edx),%eax
	movl %eax,-24(%ebp)
	movl 4(%edx),%eax
	movl 16(%ebp),%edx
	movl %eax,-20(%ebp)
	movl %ecx,(%edx)
	movl -28(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%eax
	movl %eax,8(%edx)
	movl -20(%ebp),%eax
	movl %eax,12(%edx)
.L238:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 Rect__Transpose,.Lfe47-Rect__Transpose
	.align 16
	.type	 Rect__GlobToLoc,@function
Rect__GlobToLoc:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl (%ebx),%ecx
	subl %eax,%ecx
	movl %ecx,-8(%ebp)
	movl 8(%edx),%eax
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
.Lfe48:
	.size	 Rect__GlobToLoc,.Lfe48-Rect__GlobToLoc
	.align 16
	.type	 Rect__LocToGlob,@function
Rect__LocToGlob:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%ecx
	movl (%eax),%edx
	addl (%ecx),%edx
	movl %edx,-8(%ebp)
	movl 8(%eax),%eax
	addl 4(%ecx),%eax
	movl 16(%ebp),%ecx
	movl %eax,-4(%ebp)
	movl %edx,(%ecx)
	movl -4(%ebp),%eax
	movl %eax,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe49:
	.size	 Rect__LocToGlob,.Lfe49-Rect__LocToGlob
	.align 16
	.type	 Rect__Compare,@function
Rect__Compare:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl (%ecx),%edx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jl .L252
	jg .L250
	movl 4(%ecx),%edx
	movl 4(%ebx),%eax
	cmpl %eax,%edx
	jl .L252
	jg .L250
	movl 8(%ecx),%edx
	movl 8(%ebx),%eax
	cmpl %eax,%edx
	jl .L252
	jg .L250
	movl 12(%ecx),%edx
	movl 12(%ebx),%eax
	cmpl %eax,%edx
	jge .L249
.L252:
	movl $-1,%eax
	jmp .L251
	.align 16
.L249:
	cmpl %eax,%edx
	jg .L250
	xorl %eax,%eax
	jmp .L251
	.align 16
.L250:
	movl $1,%eax
.L251:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe50:
	.size	 Rect__Compare,.Lfe50-Rect__Compare
	.align 16
	.type	 Rect__Hash,@function
Rect__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl (%eax),%edx
	xorl 4(%eax),%edx
	movl 8(%eax),%ecx
	xorl 12(%eax),%ecx
	movl %ecx,%eax
	xorl %edx,%eax
	ret
.Lfe51:
	.size	 Rect__Hash,.Lfe51-Rect__Hash
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Rect
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe52:
	.size	 _m3_fault,.Lfe52-_m3_fault
.globl MM_Rect
.data
	.align 4
	.type	 MM_Rect,@object
	.size	 MM_Rect,1428
MM_Rect:
	.long MM_Rect+1284
	.zero	16
	.long MM_Rect+668
	.zero	20
	.long Rect__FromEdges
	.long Rect__FromAbsEdges
	.long Rect__FromPoint
	.long Rect__FromCorners
	.long Rect__FromCorner
	.long Rect__FromSize
	.long Rect__Center
	.long Rect__FromIntervals
	.long Rect__FromAxes
	.long Rect__NorthWest
	.long Rect__NorthEast
	.long Rect__SouthWest
	.long Rect__SouthEast
	.long Rect__GetVertex
	.long Rect__HorSize
	.long Rect__VerSize
	.long Rect__Size
	.long Rect__DiagSizeSquare
	.long Rect__Middle
	.long Rect__PickEdge
	.long Rect__PickVertex
	.long Rect__Project
	.long Rect__Add
	.long Rect__Sub
	.long Rect__Move
	.long Rect__MoveH
	.long Rect__MoveV
	.long Rect__MoveHV
	.long Rect__Scale
	.long Rect__Change
	.long Rect__Inset
	.long Rect__Transpose
	.long Rect__MoveEdge
	.long Rect__MoveVertex
	.long Rect__Stretch
	.long Rect__Join
	.long Rect__Meet
	.long Rect__Extend
	.long Rect__Chop
	.long Rect__Factor
	.long Rect__Mod
	.long Rect__Equal
	.long Rect__IsEmpty
	.long Rect__Member
	.long Rect__Overlap
	.long Rect__Subset
	.long Rect__Congruent
	.long Rect__GlobToLoc
	.long Rect__LocToGlob
	.long Rect__Compare
	.long Rect__Hash
	.ascii	"Hash"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"LocToGlob"
	.zero	1
	.ascii	"GlobToLoc"
	.zero	1
	.ascii	"Transpose"
	.zero	1
	.ascii	"Congruent"
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
	.ascii	"Extend"
	.zero	1
	.ascii	"Meet"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"Stretch"
	.zero	1
	.ascii	"MoveVertex"
	.zero	1
	.ascii	"MoveEdge"
	.zero	1
	.ascii	"Change"
	.zero	1
	.ascii	"Inset"
	.zero	1
	.ascii	"Scale"
	.zero	1
	.ascii	"MoveHV"
	.zero	1
	.ascii	"MoveV"
	.zero	1
	.ascii	"MoveH"
	.zero	1
	.ascii	"Move"
	.zero	1
	.ascii	"Sub"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"Project"
	.zero	1
	.ascii	"PickVertex"
	.zero	1
	.ascii	"PickEdge"
	.zero	1
	.ascii	"Middle"
	.zero	1
	.ascii	"DiagSizeSquare"
	.zero	1
	.ascii	"Size"
	.zero	1
	.ascii	"VerSize"
	.zero	1
	.ascii	"HorSize"
	.zero	1
	.ascii	"GetVertex"
	.zero	1
	.ascii	"SouthEast"
	.zero	1
	.ascii	"SouthWest"
	.zero	1
	.ascii	"NorthEast"
	.zero	1
	.ascii	"NorthWest"
	.zero	1
	.ascii	"FromAxes"
	.zero	1
	.ascii	"FromIntervals"
	.zero	1
	.ascii	"Center"
	.zero	1
	.ascii	"FromSize"
	.zero	1
	.ascii	"FromCorner"
	.zero	1
	.ascii	"FromCorners"
	.zero	1
	.ascii	"FromPoint"
	.zero	1
	.ascii	"FromAbsEdges"
	.zero	1
	.ascii	"FromEdges"
	.zero	4
	.long Rect__Hash
	.long MM_Rect+248
	.long MI_Rect+276
	.long Rect__Compare
	.long MM_Rect+253
	.long MI_Rect+272
	.long Rect__LocToGlob
	.long MM_Rect+261
	.long MI_Rect+268
	.long Rect__GlobToLoc
	.long MM_Rect+271
	.long MI_Rect+264
	.long Rect__Transpose
	.long MM_Rect+281
	.long MI_Rect+200
	.long Rect__Congruent
	.long MM_Rect+291
	.long MI_Rect+260
	.long Rect__Subset
	.long MM_Rect+301
	.long MI_Rect+256
	.long Rect__Overlap
	.long MM_Rect+308
	.long MI_Rect+252
	.long Rect__Member
	.long MM_Rect+316
	.long MI_Rect+248
	.long Rect__IsEmpty
	.long MM_Rect+323
	.long MI_Rect+244
	.long Rect__Equal
	.long MM_Rect+331
	.long MI_Rect+240
	.long Rect__Mod
	.long MM_Rect+337
	.long MI_Rect+236
	.long Rect__Factor
	.long MM_Rect+341
	.long MI_Rect+232
	.long Rect__Chop
	.long MM_Rect+348
	.long MI_Rect+228
	.long Rect__Extend
	.long MM_Rect+353
	.long MI_Rect+224
	.long Rect__Meet
	.long MM_Rect+360
	.long MI_Rect+220
	.long Rect__Join
	.long MM_Rect+365
	.long MI_Rect+216
	.long Rect__Stretch
	.long MM_Rect+370
	.long MI_Rect+212
	.long Rect__MoveVertex
	.long MM_Rect+378
	.long MI_Rect+208
	.long Rect__MoveEdge
	.long MM_Rect+389
	.long MI_Rect+204
	.long Rect__Change
	.long MM_Rect+398
	.long MI_Rect+192
	.long Rect__Inset
	.long MM_Rect+405
	.long MI_Rect+196
	.long Rect__Scale
	.long MM_Rect+411
	.long MI_Rect+188
	.long Rect__MoveHV
	.long MM_Rect+417
	.long MI_Rect+184
	.long Rect__MoveV
	.long MM_Rect+424
	.long MI_Rect+180
	.long Rect__MoveH
	.long MM_Rect+430
	.long MI_Rect+176
	.long Rect__Move
	.long MM_Rect+436
	.long MI_Rect+172
	.long Rect__Sub
	.long MM_Rect+441
	.long MI_Rect+168
	.long Rect__Add
	.long MM_Rect+445
	.long MI_Rect+164
	.long Rect__Project
	.long MM_Rect+449
	.long MI_Rect+160
	.long Rect__PickVertex
	.long MM_Rect+457
	.long MI_Rect+156
	.long Rect__PickEdge
	.long MM_Rect+468
	.long MI_Rect+152
	.long Rect__Middle
	.long MM_Rect+477
	.long MI_Rect+148
	.long Rect__DiagSizeSquare
	.long MM_Rect+484
	.long MI_Rect+144
	.long Rect__Size
	.long MM_Rect+499
	.long MI_Rect+140
	.long Rect__VerSize
	.long MM_Rect+504
	.long MI_Rect+136
	.long Rect__HorSize
	.long MM_Rect+512
	.long MI_Rect+132
	.long Rect__GetVertex
	.long MM_Rect+520
	.long MI_Rect+128
	.long Rect__SouthEast
	.long MM_Rect+530
	.long MI_Rect+124
	.long Rect__SouthWest
	.long MM_Rect+540
	.long MI_Rect+120
	.long Rect__NorthEast
	.long MM_Rect+550
	.long MI_Rect+116
	.long Rect__NorthWest
	.long MM_Rect+560
	.long MI_Rect+112
	.long Rect__FromAxes
	.long MM_Rect+570
	.long MI_Rect+108
	.long Rect__FromIntervals
	.long MM_Rect+579
	.long MI_Rect+104
	.long Rect__Center
	.long MM_Rect+593
	.long MI_Rect+100
	.long Rect__FromSize
	.long MM_Rect+600
	.long MI_Rect+96
	.long Rect__FromCorner
	.long MM_Rect+609
	.long MI_Rect+92
	.long Rect__FromCorners
	.long MM_Rect+620
	.long MI_Rect+88
	.long Rect__FromPoint
	.long MM_Rect+632
	.long MI_Rect+84
	.long Rect__FromAbsEdges
	.long MM_Rect+642
	.long MI_Rect+80
	.long Rect__FromEdges
	.long MM_Rect+655
	.long MI_Rect+76
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Rect.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
