	.file	"PolyRegion.mc"
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
	.type	 PolyRegion__JoinRect,@function
PolyRegion__JoinRect:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Rect+244,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L1
	movl 8(%ebp),%eax
	cmpl $0,16(%eax)
	jne .L3
	pushl %eax
	movl MI_Rect+244,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L4
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L1
	.align 16
.L4:
	leal -32(%ebp),%eax
	leal -24(%ebp),%ebx
	movl %ebx,-32(%ebp)
	movl $1,-28(%ebp)
	movl $1,-24(%ebp)
	pushl %eax
	movl MM_PolyRegion+212,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%esi
	movl %esi,%eax
	addl $8,%esp
	movl %edx,16(%esi)
	testl %edx,%edx
	jne .L5
	pushl $500
	call _m3_fault
	.align 16
.L5:
	cmpl $0,4(%edx)
	jne .L6
	pushl $498
	call _m3_fault
	.align 16
.L6:
	movl (%edx),%edx
	pushl %edx
	pushl %eax
	movl MI_Region+84,%eax
	call *%eax
	addl $8,%esp
.L3:
	movl 8(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Rect+216,%eax
	call *%eax
	movl 8(%ebp),%eax
	addl $12,%esp
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L7
	pushl $548
	call _m3_fault
	.align 16
.L7:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L8
	pushl $546
	call _m3_fault
	.align 16
.L8:
	movl (%edx),%esi
	movl %esi,-36(%ebp)
	pushl %esi
	pushl %esi
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Region+236,%eax
	call *%eax
	movl -36(%ebp),%esi
	addl $12,%esp
	movl 20(%esi),%eax
	decl %eax
	movl %eax,20(%esi)
	jne .L1
	leal -20(%ebp),%edi
	movl $8,20(%esi)
	cld
	movl $5,%ecx
	rep
	movsl
	movl -36(%ebp),%edi
	movl $MI_Region+44,%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L10
	pushl $676
	call _m3_fault
	.align 16
.L10:
	movl $1,-44(%ebp)
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-40(%ebp)
	jmp .L11
	.align 16
.L12:
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L13
	pushl $692
	call _m3_fault
	.align 16
.L13:
	movl %eax,%esi
	movl -44(%ebp),%ebx
	cmpl %ebx,4(%esi)
	ja .L14
	pushl $690
	call _m3_fault
	.align 16
.L14:
	movl -44(%ebp),%ebx
	leal (%ebx,%ebx,2),%edx
	movl (%esi),%eax
	leal (%eax,%edx,8),%edx
	movl %edx,-36(%ebp)
	pushl %edx
	pushl %edx
	leal -20(%ebp),%edi
	pushl %edi
	movl MI_Region+232,%eax
	call *%eax
	movl -36(%ebp),%edx
	addl $12,%esp
	movl 20(%edx),%eax
	decl %eax
	movl %eax,20(%edx)
	jne .L1
	movl %edx,%esi
	movl $8,20(%edx)
	cld
	movl $5,%ecx
	rep
	movsl
	movl -36(%ebp),%edi
	movl $MI_Region+44,%esi
	incl %ebx
	cld
	movl $5,%ecx
	rep
	movsl
	movl %ebx,-44(%ebp)
.L11:
	movl -40(%ebp),%ebx
	cmpl %ebx,-44(%ebp)
	jle .L12
	leal -32(%ebp),%edx
	leal -24(%ebp),%ebx
	movl %ebx,-32(%ebp)
	movl 8(%ebp),%eax
	movl $1,-28(%ebp)
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L17
	pushl $836
	call _m3_fault
	.align 16
.L17:
	movl 4(%eax),%eax
	incl %eax
	movl %eax,-24(%ebp)
	pushl %edx
	movl MM_PolyRegion+212,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%esi
	movl %esi,%eax
	addl $8,%esp
	movl %edx,16(%esi)
	testl %edx,%edx
	jne .L18
	pushl $852
	call _m3_fault
	.align 16
.L18:
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L19
	pushl $852
	call _m3_fault
	.align 16
.L19:
	movl 4(%eax),%eax
	decl %eax
	cmpl %eax,4(%edx)
	ja .L20
	pushl $850
	call _m3_fault
	.align 16
.L20:
	leal (%eax,%eax,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,8),%edx
	movl %edx,%edi
	leal -20(%ebp),%esi
	movl %edx,-36(%ebp)
	cld
	movl $5,%ecx
	rep
	movsl
	movl -36(%ebp),%edx
	decl 20(%edx)
.L1:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PolyRegion__JoinRect,.Lfe1-PolyRegion__JoinRect
	.align 16
	.type	 PolyRegion__JoinRgn,@function
PolyRegion__JoinRgn:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Region+376,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L21
	movl 8(%ebp),%eax
	cmpl $0,16(%eax)
	jne .L23
	pushl %eax
	movl MI_Rect+244,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L24
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Region+380,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L24
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L21
	.align 16
.L24:
	leal -32(%ebp),%eax
	leal -24(%ebp),%ebx
	movl %ebx,-32(%ebp)
	movl $1,-28(%ebp)
	movl $1,-24(%ebp)
	pushl %eax
	movl MM_PolyRegion+212,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%edx
	movl %edx,%eax
	addl $8,%esp
	movl %ecx,16(%edx)
	testl %ecx,%ecx
	jne .L25
	pushl $1108
	call _m3_fault
	.align 16
.L25:
	movl %ecx,%edx
	cmpl $0,4(%edx)
	jne .L26
	pushl $1106
	call _m3_fault
	.align 16
.L26:
	movl (%edx),%ecx
	pushl %ecx
	pushl %eax
	movl MI_Region+84,%eax
	call *%eax
	addl $8,%esp
.L23:
	movl 8(%ebp),%ecx
	pushl %ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	movl MI_Rect+216,%eax
	call *%eax
	leal -20(%ebp),%edi
	movl 12(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl 8(%ebp),%eax
	addl $12,%esp
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L27
	pushl $1172
	call _m3_fault
	.align 16
.L27:
	movl $0,-44(%ebp)
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-40(%ebp)
	jmp .L28
	.align 16
.L29:
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L30
	pushl $1188
	call _m3_fault
	.align 16
.L30:
	movl %eax,%ecx
	movl -44(%ebp),%ebx
	cmpl %ebx,4(%ecx)
	ja .L31
	pushl $1186
	call _m3_fault
	.align 16
.L31:
	movl -44(%ebp),%ebx
	leal (%ebx,%ebx,2),%edx
	movl (%ecx),%eax
	leal (%eax,%edx,8),%edx
	movl %edx,-36(%ebp)
	pushl %edx
	pushl %edx
	leal -20(%ebp),%edi
	pushl %edi
	movl MI_Region+232,%eax
	call *%eax
	movl -36(%ebp),%edx
	addl $12,%esp
	movl 20(%edx),%eax
	decl %eax
	movl %eax,20(%edx)
	jne .L21
	movl %edx,%esi
	movl $8,20(%edx)
	cld
	movl $5,%ecx
	rep
	movsl
	movl -36(%ebp),%edi
	movl $MI_Region+44,%esi
	incl %ebx
	cld
	movl $5,%ecx
	rep
	movsl
	movl %ebx,-44(%ebp)
.L28:
	movl -40(%ebp),%ebx
	cmpl %ebx,-44(%ebp)
	jle .L29
	leal -32(%ebp),%edx
	leal -24(%ebp),%ebx
	movl %ebx,-32(%ebp)
	movl 8(%ebp),%eax
	movl $1,-28(%ebp)
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L34
	pushl $1332
	call _m3_fault
	.align 16
.L34:
	movl 4(%eax),%eax
	incl %eax
	movl %eax,-24(%ebp)
	pushl %edx
	movl MM_PolyRegion+212,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%ecx
	movl %ecx,%eax
	addl $8,%esp
	movl %edx,16(%ecx)
	testl %edx,%edx
	jne .L35
	pushl $1348
	call _m3_fault
	.align 16
.L35:
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L36
	pushl $1348
	call _m3_fault
	.align 16
.L36:
	movl 4(%eax),%eax
	decl %eax
	cmpl %eax,4(%edx)
	ja .L37
	pushl $1346
	call _m3_fault
	.align 16
.L37:
	leal (%eax,%eax,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,8),%edx
	movl %edx,%edi
	leal -20(%ebp),%esi
	movl %edx,-36(%ebp)
	cld
	movl $5,%ecx
	rep
	movsl
	movl -36(%ebp),%edx
	decl 20(%edx)
.L21:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PolyRegion__JoinRgn,.Lfe2-PolyRegion__JoinRgn
	.align 16
	.type	 PolyRegion__ToRegion,@function
PolyRegion__ToRegion:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L40
	movl (%edx),%eax
	movl %eax,-20(%ebp)
	movl 4(%edx),%eax
	movl %eax,-16(%ebp)
	movl 8(%edx),%eax
	movl %eax,-12(%ebp)
	movl 12(%edx),%eax
	movl 12(%ebp),%edi
	leal -20(%ebp),%esi
	movl %eax,-8(%ebp)
	jmp .L46
	.align 16
.L40:
	xorl %esi,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L41
	.align 16
.L42:
	movl 8(%ebp),%eax
	movl 16(%eax),%edx
	testl %edx,%edx
	jne .L43
	pushl $1524
	call _m3_fault
	.align 16
.L43:
	cmpl %esi,4(%edx)
	ja .L44
	pushl $1522
	call _m3_fault
	.align 16
.L44:
	leal -20(%ebp),%ecx
	pushl %ecx
	leal (%esi,%esi,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,8),%eax
	pushl %eax
	pushl %ecx
	movl MI_Region+232,%eax
	call *%eax
	incl %esi
	addl $12,%esp
.L41:
	cmpl %edi,%esi
	jle .L42
	movl 12(%ebp),%edi
	leal -20(%ebp),%esi
.L46:
	cld
	movl $5,%ecx
	rep
	movsl
	leal -48(%ebp),%esp
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PolyRegion__ToRegion,.Lfe3-PolyRegion__ToRegion
	.align 16
	.type	 PolyRegion__OverlapRect,@function
PolyRegion__OverlapRect:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	cmpl $0,16(%edx)
	jne .L48
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Rect+252,%eax
	call *%eax
	jmp .L57
	.align 16
.L48:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Rect+252,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L57
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L50
	pushl $1668
	call _m3_fault
	.align 16
.L50:
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L51
	.align 16
.L52:
	movl 8(%ebp),%eax
	movl 16(%eax),%edx
	testl %edx,%edx
	jne .L53
	pushl $1684
	call _m3_fault
	.align 16
.L53:
	cmpl %ebx,4(%edx)
	ja .L54
	pushl $1682
	call _m3_fault
	.align 16
.L54:
	leal (%ebx,%ebx,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,8),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Region+396,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L55
	movl $1,%eax
	jmp .L57
	.align 16
.L55:
	incl %ebx
.L51:
	cmpl %esi,%ebx
	jle .L52
	xorl %eax,%eax
.L57:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PolyRegion__OverlapRect,.Lfe4-PolyRegion__OverlapRect
	.align 16
	.type	 PolyRegion__Complement,@function
PolyRegion__Complement:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	leal -20(%ebp),%edi
	pushl %ebx
	movl 12(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L60
	leal -60(%ebp),%ebx
	pushl %ebx
	pushl %edx
	movl MI_Region+84,%eax
	call *%eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Region+356,%eax
	call *%eax
	jmp .L58
	.align 16
.L60:
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	decl %esi
	jmp .L61
	.align 16
.L62:
	movl 8(%ebp),%eax
	movl 16(%eax),%edx
	testl %edx,%edx
	jne .L63
	pushl $1876
	call _m3_fault
	.align 16
.L63:
	cmpl %ebx,4(%edx)
	ja .L64
	pushl $1874
	call _m3_fault
	.align 16
.L64:
	leal -20(%ebp),%ecx
	pushl %ecx
	leal (%ebx,%ebx,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,8),%eax
	pushl %eax
	pushl %ecx
	movl MI_Region+356,%eax
	call *%eax
	incl %ebx
	addl $12,%esp
.L61:
	cmpl %esi,%ebx
	jle .L62
	movl 16(%ebp),%edi
	leal -20(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
.L58:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 PolyRegion__Complement,.Lfe5-PolyRegion__Complement
	.align 16
	.type	 PolyRegion__Meet,@function
PolyRegion__Meet:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L68
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Region+352,%eax
	call *%eax
	jmp .L66
	.align 16
.L68:
	xorl %esi,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L69
	.align 16
.L70:
	movl 8(%ebp),%eax
	movl 16(%eax),%edx
	testl %edx,%edx
	jne .L71
	pushl $2036
	call _m3_fault
	.align 16
.L71:
	cmpl %esi,4(%edx)
	ja .L72
	pushl $2034
	call _m3_fault
	.align 16
.L72:
	leal -60(%ebp),%ebx
	pushl %ebx
	leal (%esi,%esi,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,8),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Region+348,%eax
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %eax
	movl MI_Region+232,%eax
	call *%eax
	incl %esi
	addl $24,%esp
.L69:
	cmpl %edi,%esi
	jle .L70
	movl 16(%ebp),%edi
	leal -20(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
.L66:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 PolyRegion__Meet,.Lfe6-PolyRegion__Meet
	.align 16
	.type	 PolyRegion__Factor,@function
PolyRegion__Factor:
	pushl %ebp
	movl %esp,%ebp
	subl $100,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L75:
	movl $5,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-92(%ebp)
	movl -92(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl 16(%ebp),%eax
	movl %ecx,-84(%ebp)
	cmpl $0,(%eax)
	setle %cl
	movb %cl,-68(%ebp)
	cmpl $0,4(%eax)
	setle %cl
	movb %cl,-64(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Rect+252,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L162
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	movl %eax,-72(%ebp)
	testl %eax,%eax
	jne .L77
	movl 20(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	je .L78
	cmpl $0,4(%eax)
	jne .L80
.L78:
	leal -60(%ebp),%eax
	leal -52(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl $1,-56(%ebp)
	movl $1,-52(%ebp)
	pushl %eax
	movl MM_PolyRegion+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl 20(%ebp),%eax
	addl $8,%esp
	movl %ebx,(%eax)
.L80:
	movl 20(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L81
	pushl $2356
	call _m3_fault
	.align 16
.L81:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L82
	pushl $2354
	call _m3_fault
	.align 16
.L82:
	movl (%ebx),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Rect+220,%eax
	call *%eax
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L74
	.align 16
.L77:
	movl 12(%ebp),%edx
	movl 8(%edx),%eax
	movl %eax,-32(%ebp)
	movl 12(%edx),%eax
	movl %eax,-28(%ebp)
	movl (%edx),%eax
	movl %eax,-24(%ebp)
	movl 4(%edx),%eax
	movl %eax,-20(%ebp)
	cmpb $0,-64(%ebp)
	je .L83
	movl -72(%ebp),%ecx
	movl -92(%ebp),%edi
	movl 4(%ecx),%esi
	jmp .L85
	.align 16
.L86:
	leal (%esi,%edi),%eax
	movl %eax,%ebx
	sarl $1,%ebx
	movl %ebx,-40(%ebp)
	cmpl $0,-72(%ebp)
	jne .L87
	pushl $2548
	call _m3_fault
	.align 16
.L87:
	movl -72(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L88
	pushl $2546
	call _m3_fault
	.align 16
.L88:
	leal (%ebx,%ebx,2),%eax
	movl -72(%ebp),%ecx
	sall $2,%eax
	addl (%ecx),%eax
	movl -32(%ebp),%edx
	cmpl %edx,4(%eax)
	jle .L89
	movl %ebx,%esi
	jmp .L85
	.align 16
.L89:
	leal 1(%ebx),%edi
.L85:
	cmpl %esi,%edi
	jne .L86
	jmp .L92
	.align 16
.L83:
	movl -72(%ebp),%ecx
	movl $-1,%edi
	movl 4(%ecx),%esi
	decl %esi
	jmp .L94
	.align 16
.L95:
	leal 1(%esi,%edi),%eax
	movl %eax,%ebx
	sarl $1,%ebx
	movl %ebx,-40(%ebp)
	cmpl $0,-72(%ebp)
	jne .L96
	pushl $2660
	call _m3_fault
	.align 16
.L96:
	movl -72(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L97
	pushl $2658
	call _m3_fault
	.align 16
.L97:
	movl -72(%ebp),%ecx
	leal (%ebx,%ebx,2),%edx
	movl (%ecx),%ecx
	movl -28(%ebp),%eax
	cmpl %eax,(%ecx,%edx,4)
	jge .L98
	movl %ebx,%edi
	jmp .L94
	.align 16
.L98:
	leal -1(%ebx),%esi
.L94:
	cmpl %esi,%edi
	jne .L95
.L92:
	movl %edi,-36(%ebp)
	jmp .L101
	.align 16
.L102:
	movl -72(%ebp),%ecx
	movl -36(%ebp),%edx
	cmpl %edx,4(%ecx)
	ja .L104
	pushl $2738
	call _m3_fault
	.align 16
.L104:
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl -72(%ebp),%ecx
	leal (%edx,%edx,2),%eax
	movl (%ecx),%edx
	leal (%edx,%eax,4),%eax
	pushl %eax
	movl MI_Interval+116,%eax
	call *%eax
	addl $12,%esp
	movl -72(%ebp),%ecx
	movl -36(%ebp),%eax
	cmpl %eax,4(%ecx)
	ja .L106
	pushl $2754
	call _m3_fault
	.align 16
.L106:
	leal (%eax,%eax,2),%eax
	movl -72(%ebp),%ecx
	sall $2,%eax
	addl (%ecx),%eax
	movl 8(%eax),%eax
	movl %eax,-76(%ebp)
	cmpb $0,-68(%ebp)
	je .L107
	xorl %edi,%edi
	testl %eax,%eax
	jne .L108
	pushl $2804
	call _m3_fault
	.align 16
.L108:
	movl -76(%ebp),%ecx
	movl 4(%ecx),%esi
	jmp .L109
	.align 16
.L110:
	leal (%esi,%edi),%eax
	movl %eax,%ebx
	sarl $1,%ebx
	movl %ebx,-40(%ebp)
	cmpl $0,-76(%ebp)
	jne .L111
	pushl $2852
	call _m3_fault
	.align 16
.L111:
	movl -76(%ebp),%edx
	cmpl %ebx,4(%edx)
	ja .L112
	pushl $2850
	call _m3_fault
	.align 16
.L112:
	movl (%edx),%edx
	movl -24(%ebp),%eax
	cmpl %eax,4(%edx,%ebx,8)
	jle .L113
	movl %ebx,%esi
	jmp .L109
	.align 16
.L113:
	leal 1(%ebx),%edi
.L109:
	cmpl %esi,%edi
	jne .L110
	jmp .L116
	.align 16
.L107:
	movl $-1,%edi
	cmpl $0,-76(%ebp)
	jne .L117
	pushl $2916
	call _m3_fault
	.align 16
.L117:
	movl -76(%ebp),%ecx
	movl 4(%ecx),%esi
	decl %esi
	jmp .L118
	.align 16
.L119:
	leal 1(%esi,%edi),%eax
	movl %eax,%ebx
	sarl $1,%ebx
	movl %ebx,-40(%ebp)
	cmpl $0,-76(%ebp)
	jne .L120
	pushl $2964
	call _m3_fault
	.align 16
.L120:
	movl -76(%ebp),%edx
	cmpl %ebx,4(%edx)
	ja .L121
	pushl $2962
	call _m3_fault
	.align 16
.L121:
	movl (%edx),%edx
	movl -20(%ebp),%eax
	cmpl %eax,(%edx,%ebx,8)
	jge .L122
	movl %ebx,%edi
	jmp .L118
	.align 16
.L122:
	leal -1(%ebx),%esi
.L118:
	cmpl %esi,%edi
	jne .L119
.L116:
	movl %edi,-40(%ebp)
	jmp .L125
	.align 16
.L126:
	movl %ebx,%edx
	movl -40(%ebp),%ebx
	cmpl %ebx,4(%edx)
	ja .L128
	pushl $3042
	call _m3_fault
	.align 16
.L128:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl (%edx),%eax
	leal (%eax,%ebx,8),%eax
	pushl %eax
	movl MI_Interval+116,%eax
	call *%eax
	movl 20(%ebp),%edx
	addl $12,%esp
	movl (%edx),%eax
	testl %eax,%eax
	je .L129
	movl -92(%ebp),%ecx
	cmpl %ecx,4(%eax)
	jne .L131
.L129:
	pushl %edx
	call PolyRegion__Extend
	addl $4,%esp
.L131:
	movl 20(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L132
	pushl $3076
	call _m3_fault
	.align 16
.L132:
	movl %eax,%edx
	movl -92(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L133
	pushl $3074
	call _m3_fault
	.align 16
.L133:
	movl -92(%ebp),%eax
	sall $4,%eax
	movl (%edx),%ebx
	addl %eax,%ebx
	pushl %ebx
	leal -16(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Rect+104,%eax
	call *%eax
	incl -92(%ebp)
	xorl %eax,%eax
	movb -68(%ebp),%al
	pushl %eax
	leal -40(%ebp),%eax
	pushl %eax
	call PolyRegion__Advance
	addl $20,%esp
.L125:
	movl -40(%ebp),%edx
	testl %edx,%edx
	jl .L138
	cmpl $0,-76(%ebp)
	jne .L135
	pushl $3028
	call _m3_fault
	.align 16
.L135:
	movl -76(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %edx,%eax
	jle .L138
	movl -76(%ebp),%ebx
	cmpl %eax,%edx
	jb .L137
	pushl $3026
	call _m3_fault
	.align 16
.L137:
	xorl %eax,%eax
	movb -68(%ebp),%al
	pushl %eax
	movl (%ebx),%eax
	leal (%eax,%edx,8),%eax
	pushl %eax
	leal -24(%ebp),%esi
	pushl %esi
	call PolyRegion__Overlaps
	addl $12,%esp
	testl %eax,%eax
	jne .L126
.L138:
	movl -84(%ebp),%ecx
	cmpl %ecx,-92(%ebp)
	je .L139
	movl -92(%ebp),%edx
	subl %ecx,%edx
	movl %ecx,%eax
	subl -88(%ebp),%eax
	cmpl %eax,%edx
	jne .L139
	xorl %eax,%eax
	movb -64(%ebp),%al
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call PolyRegion__TrailEdge
	addl $8,%esp
	cmpl %eax,-80(%ebp)
	jne .L139
	movl -88(%ebp),%edi
	movl -84(%ebp),%ecx
	movl %ecx,-40(%ebp)
	jmp .L140
	.align 16
.L141:
	movl -96(%ebp),%ecx
	incl %ecx
	movl %ecx,-40(%ebp)
	incl %edi
.L140:
	cmpl %edi,-84(%ebp)
	je .L164
	movl 20(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L143
	pushl $3204
	call _m3_fault
	.align 16
.L143:
	movl %eax,%ebx
	movl 4(%ebx),%eax
	cmpl %eax,%edi
	jb .L145
	pushl $3202
	call _m3_fault
	.align 16
.L145:
	movl %ebx,%edx
	movl -40(%ebp),%ecx
	movl %ecx,-96(%ebp)
	cmpl %eax,%ecx
	jb .L146
	pushl $3202
	call _m3_fault
	.align 16
.L146:
	movl (%edx),%edx
	movl %edi,%ebx
	movl -96(%ebp),%esi
	sall $4,%esi
	sall $4,%ebx
	movl (%edx,%esi),%eax
	cmpl %eax,(%edx,%ebx)
	jne .L151
	movl 4(%edx,%esi),%eax
	cmpl %eax,4(%edx,%ebx)
	je .L141
.L151:
	cmpl %edi,-84(%ebp)
	jne .L139
.L164:
	movl -88(%ebp),%ebx
	movl -84(%ebp),%esi
	decl %esi
	jmp .L153
	.align 16
.L154:
	movl 20(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L155
	pushl $3300
	call _m3_fault
	.align 16
.L155:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L156
	pushl $3298
	call _m3_fault
	.align 16
.L156:
	xorl %eax,%eax
	movb -64(%ebp),%al
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	movl %ebx,%eax
	sall $4,%eax
	addl (%edx),%eax
	pushl %eax
	call PolyRegion__Merge
	incl %ebx
	addl $12,%esp
.L153:
	cmpl %esi,%ebx
	jle .L154
	movl -84(%ebp),%ecx
	movl %ecx,-92(%ebp)
	movl -88(%ebp),%ecx
	movl %ecx,-84(%ebp)
.L139:
	movl -84(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl -92(%ebp),%ecx
	movl %ecx,-84(%ebp)
	xorl %ebx,%ebx
	movb -64(%ebp),%bl
	pushl %ebx
	leal -16(%ebp),%eax
	pushl %eax
	call PolyRegion__LeadEdge
	movl %eax,-80(%ebp)
	pushl %ebx
	leal -36(%ebp),%eax
	pushl %eax
	call PolyRegion__Advance
	addl $16,%esp
.L101:
	movl -36(%ebp),%ebx
	testl %ebx,%ebx
	jl .L162
	cmpl $0,-72(%ebp)
	jne .L159
	pushl $2724
	call _m3_fault
	.align 16
.L159:
	movl -72(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %ebx,%eax
	jle .L162
	movl -72(%ebp),%edx
	cmpl %eax,%ebx
	jb .L161
	pushl $2722
	call _m3_fault
	.align 16
.L161:
	xorl %eax,%eax
	movb -64(%ebp),%al
	pushl %eax
	leal (%ebx,%ebx,2),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	pushl %eax
	leal -32(%ebp),%ebx
	pushl %ebx
	call PolyRegion__Overlaps
	addl $12,%esp
	testl %eax,%eax
	jne .L102
.L162:
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -92(%ebp),%eax
.L163:
.L74:
	leal -112(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 PolyRegion__Factor,.Lfe7-PolyRegion__Factor
	.align 16
	.type	 PolyRegion__Extend,@function
PolyRegion__Extend:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl (%esi),%eax
	testl %eax,%eax
	je .L166
	cmpl $0,4(%eax)
	jne .L168
.L166:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $4,-4(%ebp)
	pushl %eax
	movl MM_PolyRegion+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl 8(%ebp),%esi
	movl %eax,(%esi)
	jmp .L165
	.align 16
.L168:
	leal -12(%ebp),%edx
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl 8(%ebp),%esi
	movl $1,-8(%ebp)
	movl (%esi),%eax
	testl %eax,%eax
	jne .L170
	pushl $3604
	call _m3_fault
	.align 16
.L170:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_PolyRegion+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl 8(%ebp),%edi
	addl $8,%esp
	movl (%edi),%eax
	testl %eax,%eax
	jne .L171
	pushl $3620
	call _m3_fault
	.align 16
.L171:
	movl $0,-24(%ebp)
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-16(%ebp)
	jmp .L172
	.align 16
.L173:
	cmpl $0,-20(%ebp)
	jne .L174
	pushl $3636
	call _m3_fault
	.align 16
.L174:
	movl -20(%ebp),%esi
	movl -24(%ebp),%edi
	cmpl %edi,4(%esi)
	ja .L175
	pushl $3634
	call _m3_fault
	.align 16
.L175:
	movl 8(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	jne .L176
	pushl $3636
	call _m3_fault
	.align 16
.L176:
	movl -24(%ebp),%edi
	cmpl %edi,4(%edx)
	ja .L177
	pushl $3634
	call _m3_fault
	.align 16
.L177:
	movl -20(%ebp),%esi
	movl -24(%ebp),%eax
	sall $4,%eax
	movl (%edx),%ecx
	movl (%esi),%ebx
	movl (%ecx,%eax),%edx
	movl %edx,(%ebx,%eax)
	movl 4(%ecx,%eax),%edx
	movl %edx,4(%ebx,%eax)
	movl 8(%ecx,%eax),%edx
	movl %edx,8(%ebx,%eax)
	movl 12(%ecx,%eax),%edx
	movl %edx,12(%ebx,%eax)
	incl -24(%ebp)
.L172:
	movl -16(%ebp),%edi
	cmpl %edi,-24(%ebp)
	jle .L173
	movl -20(%ebp),%edi
	movl 8(%ebp),%esi
	movl %edi,(%esi)
.L165:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 PolyRegion__Extend,.Lfe8-PolyRegion__Extend
	.align 16
	.type	 PolyRegion__Overlaps,@function
PolyRegion__Overlaps:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,16(%ebp)
	jne .L180
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	jmp .L182
	.align 16
.L180:
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
.L182:
	movl (%eax),%eax
	cmpl %eax,4(%edx)
	setg %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 PolyRegion__Overlaps,.Lfe9-PolyRegion__Overlaps
	.align 16
	.type	 PolyRegion__LeadEdge,@function
PolyRegion__LeadEdge:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,12(%ebp)
	jne .L184
	movl 8(%ebp),%eax
	movl (%eax),%eax
	jmp .L185
	.align 16
.L184:
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
.L185:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 PolyRegion__LeadEdge,.Lfe10-PolyRegion__LeadEdge
	.align 16
	.type	 PolyRegion__TrailEdge,@function
PolyRegion__TrailEdge:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,12(%ebp)
	jne .L187
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	jmp .L188
	.align 16
.L187:
	movl 8(%ebp),%eax
	movl (%eax),%eax
.L188:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 PolyRegion__TrailEdge,.Lfe11-PolyRegion__TrailEdge
	.align 16
	.type	 PolyRegion__Advance,@function
PolyRegion__Advance:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,12(%ebp)
	je .L190
	incl (%eax)
	jmp .L189
	.align 16
.L190:
	decl (%eax)
.L189:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 PolyRegion__Advance,.Lfe12-PolyRegion__Advance
	.align 16
	.type	 PolyRegion__Merge,@function
PolyRegion__Merge:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,16(%ebp)
	je .L193
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	movl 4(%edx),%edx
	movl %edx,12(%eax)
	jmp .L192
	.align 16
.L193:
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	movl (%edx),%edx
	movl %edx,8(%eax)
.L192:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 PolyRegion__Merge,.Lfe13-PolyRegion__Merge
	.align 16
	.type	 M_PolyRegion_t8c7998f4_INIT,@function
M_PolyRegion_t8c7998f4_INIT:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movl 4(%eax),%ebx
	movl (%eax),%ecx
	jmp .L196
	.align 16
.L197:
	leal (%edx,%edx,2),%eax
	incl %edx
	movl $8,20(%ecx,%eax,8)
.L196:
	cmpl %ebx,%edx
	jl .L197
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 M_PolyRegion_t8c7998f4_INIT,.Lfe14-M_PolyRegion_t8c7998f4_INIT
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_PolyRegion
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_PolyRegion
.data
	.align 4
	.type	 MM_PolyRegion,@object
	.size	 MM_PolyRegion,728
MM_PolyRegion:
	.long MM_PolyRegion+500
	.long MM_PolyRegion+44
	.long MM_PolyRegion+212
	.long MM_PolyRegion+200
	.zero	4
	.long MM_PolyRegion+340
	.zero	28
	.long -1938188044
.byte 220
.byte 98
.byte 116
.byte 142
.byte 40
.byte 250
.byte 13
.byte 2
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 24
	.zero	4
	.long MM_PolyRegion+648
	.long MM_PolyRegion+658
	.long MM_PolyRegion+666
	.long M_PolyRegion_t8c7998f4_INIT
	.zero	20
	.long MM_PolyRegion+685
	.long MM_PolyRegion+709
	.zero	4
	.long PolyRegion__Extend
	.long PolyRegion__Overlaps
	.long PolyRegion__LeadEdge
	.long PolyRegion__TrailEdge
	.long PolyRegion__Advance
	.long PolyRegion__Merge
	.long PolyRegion__JoinRect
	.long PolyRegion__JoinRgn
	.long PolyRegion__ToRegion
	.long PolyRegion__OverlapRect
	.long PolyRegion__Complement
	.long PolyRegion__Meet
	.long PolyRegion__Factor
	.long 17819363
	.long -1938188044
	.zero	4
	.long MM_PolyRegion+220
	.long 17819363
	.zero	4
	.long 947368816
	.ascii	"Merge"
	.zero	1
	.ascii	"Advance"
	.zero	1
	.ascii	"TrailEdge"
	.zero	1
	.ascii	"LeadEdge"
	.zero	1
	.ascii	"Overlaps"
	.zero	1
	.ascii	"Extend"
	.zero	1
	.ascii	"Factor"
	.zero	1
	.ascii	"Meet"
	.zero	1
	.ascii	"Complement"
	.zero	1
	.ascii	"OverlapRect"
	.zero	1
	.ascii	"ToRegion"
	.zero	1
	.ascii	"JoinRgn"
	.zero	1
	.ascii	"JoinRect"
	.zero	3
	.long PolyRegion__Merge
	.long MM_PolyRegion+228
	.zero	4
	.long PolyRegion__Advance
	.long MM_PolyRegion+234
	.zero	4
	.long PolyRegion__TrailEdge
	.long MM_PolyRegion+242
	.zero	4
	.long PolyRegion__LeadEdge
	.long MM_PolyRegion+252
	.zero	4
	.long PolyRegion__Overlaps
	.long MM_PolyRegion+261
	.zero	4
	.long PolyRegion__Extend
	.long MM_PolyRegion+270
	.zero	4
	.long PolyRegion__Factor
	.long MM_PolyRegion+277
	.long MI_PolyRegion+88
	.long PolyRegion__Meet
	.long MM_PolyRegion+284
	.long MI_PolyRegion+64
	.long PolyRegion__Complement
	.long MM_PolyRegion+289
	.long MI_PolyRegion+60
	.long PolyRegion__OverlapRect
	.long MM_PolyRegion+300
	.long MI_PolyRegion+56
	.long PolyRegion__ToRegion
	.long MM_PolyRegion+312
	.long MI_PolyRegion+52
	.long PolyRegion__JoinRgn
	.long MM_PolyRegion+321
	.long MI_PolyRegion+48
	.long PolyRegion__JoinRect
	.long MM_PolyRegion+329
	.long MI_PolyRegion+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/PolyRegion.m3"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 14
.byte 14
.byte 14
.byte 4
.byte 14
.byte 0
.byte 0
.byte 24
.byte 1
.byte 42
.byte 16
.byte 4
.byte 37
.byte 0
.byte 0
.byte 10
.byte 11
.byte 1
.byte 15
.byte 2
.byte 15
.byte 2
.byte 15
.byte 4
.byte 7
.byte 26
.byte 26
.byte 26
.byte 16
.byte 140
.byte 220
.byte 156
.byte 2
.byte 26
	.ascii	"PolyRegion_^%#%^__0001M"
	.zero	1
	.ascii	"PolyRegion.Private"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
