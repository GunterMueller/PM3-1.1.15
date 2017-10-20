	.file	"PathnamePosix.mc"
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
	.type	 PathnamePosix__Valid__Ignore.0,@function
PathnamePosix__Valid__Ignore.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl %ecx,-4(%ebp)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PathnamePosix__Valid__Ignore.0,.Lfe1-PathnamePosix__Valid__Ignore.0
	.align 16
	.type	 Pathname__Valid,@function
Pathname__Valid:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
.L3:
	movl $MM_PathnamePosix+168,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L4
	movl $PathnamePosix__Valid__Ignore.0,-188(%ebp)
	movl $-1,-192(%ebp)
	movl %ebp,-184(%ebp)
	leal -192(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call PathnamePosix__ParsePosixPathname
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L5
	.align 16
.L4:
	xorl %eax,%eax
	jmp .L7
	.align 16
.L5:
	movl $1,%eax
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Pathname__Valid,.Lfe2-Pathname__Valid
	.align 16
	.type	 PathnamePosix__Decompose__Add.1,@function
PathnamePosix__Decompose__Add.1:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%edx
	movl -4(%ebp),%ebx
	movl 12(%ebp),%eax
	subl %edx,%eax
	jns .L10
	pushl $545
	call _m3_fault
	.align 16
.L10:
	pushl %eax
	pushl %edx
	movl -4(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%ecx
	movl -8(%ebx),%eax
	movl (%eax),%eax
	movl 12(%eax),%edx
	movl %ecx,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl -8(%ebx),%eax
	pushl %eax
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PathnamePosix__Decompose__Add.1,.Lfe3-PathnamePosix__Decompose__Add.1
	.align 16
	.type	 Pathname__Decompose,@function
Pathname__Decompose:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl %esi,-4(%ebp)
	xorl %ebx,%ebx
	movl %ebx,-8(%ebp)
	movl MM_PathnamePosix+176,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $5
	pushl %edx
	call *%eax
	movl %eax,%ecx
	movl %ecx,-8(%ebp)
	movl $PathnamePosix__Decompose__Add.1,-16(%ebp)
	movl $-1,-20(%ebp)
	movl %ebp,-12(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call PathnamePosix__ParsePosixPathname
	addl $20,%esp
	testb %al,%al
	je .L11
	movl -8(%ebp),%eax
	movl (%eax),%edx
	movl 16(%edx),%ecx
	movl $MM_PathnamePosix+188,-24(%ebp)
	leal -24(%ebp),%edx
	jmp .L13
	.align 16
.L11:
	movl -8(%ebp),%eax
	movl (%eax),%edx
	movl 16(%edx),%ecx
	movl %ebx,-28(%ebp)
	leal -28(%ebp),%edx
.L13:
	pushl %edx
	pushl %eax
	call *%ecx
	leal -36(%ebp),%esp
	movl -8(%ebp),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Pathname__Decompose,.Lfe4-Pathname__Decompose
	.align 16
	.type	 Pathname__Compose,@function
Pathname__Compose:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl (%edx),%eax
	xorl %esi,%esi
	movl 32(%eax),%ebx
	pushl %edx
	call *%ebx
	movl %eax,-4(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L15
	pushl %esi
	pushl $MI_Pathname+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L15:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 40(%eax),%ebx
	pushl %edx
	call *%ebx
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	je .L16
	pushl $MM_PathnamePosix+188
	pushl %esi
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L18
	pushl %eax
	pushl $MI_Pathname+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
	jmp .L18
	.align 16
.L16:
	movl $MM_PathnamePosix+204,%esi
.L18:
	movl $1,%edi
	movl -4(%ebp),%edx
	decl %edx
	movl %edx,-8(%ebp)
	jmp .L19
	.align 16
.L20:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 44(%eax),%eax
	pushl %edi
	pushl %edx
	call *%eax
	movl %eax,%ebx
	movl %ebx,-12(%ebp)
	addl $8,%esp
	testl %ebx,%ebx
	jne .L21
	pushl %ebx
	pushl $MI_Pathname+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L21:
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	xorl %ebx,%ebx
	decl %eax
	movl %eax,-16(%ebp)
	addl $4,%esp
	jmp .L22
	.align 16
.L23:
	pushl %ebx
	movl -12(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	pushl $MM_PathnamePosix+44
	pushl %eax
	call set_member
	addl $16,%esp
	testl %eax,%eax
	jne .L24
	pushl %eax
	pushl $MI_Pathname+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L24:
	incl %ebx
.L22:
	cmpl %ebx,-16(%ebp)
	jge .L23
	movl -12(%ebp),%edx
	pushl %edx
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	movl -4(%ebp),%eax
	decl %eax
	addl $8,%esp
	cmpl %edi,%eax
	je .L26
	pushl $MM_PathnamePosix+188
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
.L26:
	incl %edi
.L19:
	cmpl %edi,-8(%ebp)
	jge .L20
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Pathname__Compose,.Lfe5-Pathname__Compose
	.align 16
	.type	 Pathname__Absolute,@function
Pathname__Absolute:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Text+56,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jle .L29
	pushl %ebx
	pushl %esi
	movl MI_Text+52,%eax
	call *%eax
	cmpl $47,%eax
	sete %al
	xorl %ebx,%ebx
	movb %al,%bl
.L29:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Pathname__Absolute,.Lfe6-Pathname__Absolute
	.align 16
	.type	 Pathname__Prefix,@function
Pathname__Prefix:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call PathnamePosix__NameSections
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	jne .L31
	movl $MM_PathnamePosix+204,%eax
	jmp .L34
	.align 16
.L31:
	cmpl $1,%eax
	jne .L32
	movl $MM_PathnamePosix+188,%eax
	jmp .L34
	.align 16
.L32:
	decl %eax
	jns .L33
	pushl $1185
	call _m3_fault
	.align 16
.L33:
	pushl %eax
	pushl $0
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
.L34:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Pathname__Prefix,.Lfe7-Pathname__Prefix
	.align 16
	.type	 Pathname__Last,@function
Pathname__Last:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call PathnamePosix__NameSections
	movl -12(%ebp),%edx
	movl -4(%ebp),%eax
	subl %edx,%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L36
	pushl $1297
	call _m3_fault
	.align 16
.L36:
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Pathname__Last,.Lfe8-Pathname__Last
	.align 16
	.type	 Pathname__Base,@function
Pathname__Base:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call PathnamePosix__NameSections
	movl -8(%ebp),%edx
	leal 1(%edx),%eax
	addl $16,%esp
	cmpl %eax,-4(%ebp)
	je .L38
	pushl %edx
	pushl $0
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	jmp .L39
	.align 16
.L38:
	movl %ebx,%eax
.L39:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Pathname__Base,.Lfe9-Pathname__Base
	.align 16
	.type	 Pathname__Join,@function
Pathname__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%edi
.L41:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	je .L42
	pushl %esi
	call Pathname__Absolute
	addl $4,%esp
	testl %eax,%eax
	je .L43
	pushl $0
	pushl $MM_PathnamePosix+76
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L43:
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L42
	decl %eax
	jns .L45
	pushl $1617
	call _m3_fault
	.align 16
.L45:
	pushl %eax
	pushl %ebx
	movl MI_Text+52,%eax
	call *%eax
	addl $8,%esp
	cmpl $47,%eax
	je .L46
	pushl $MM_PathnamePosix+188
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
.L46:
	pushl %esi
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
.L42:
	testl %edi,%edi
	je .L47
	pushl $MM_PathnamePosix+220
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %edi
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
.L47:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L48:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Pathname__Join,.Lfe10-Pathname__Join
	.align 16
	.type	 Pathname__LastBase,@function
Pathname__LastBase:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call PathnamePosix__NameSections
	movl -8(%ebp),%ecx
	leal 1(%ecx),%eax
	addl $16,%esp
	cmpl %eax,-4(%ebp)
	jne .L50
	movl -12(%ebp),%edx
	subl %edx,%eax
	jns .L52
	pushl $1857
	call _m3_fault
	.align 16
.L50:
	movl -12(%ebp),%edx
	movl %ecx,%eax
	subl %edx,%eax
	jns .L52
	pushl $1889
	call _m3_fault
	.align 16
.L52:
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Pathname__LastBase,.Lfe11-Pathname__LastBase
	.align 16
	.type	 Pathname__LastExt,@function
Pathname__LastExt:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call PathnamePosix__NameSections
	movl -4(%ebp),%eax
	movl -8(%ebp),%edx
	addl $16,%esp
	cmpl %edx,%eax
	je .L55
	decl %eax
	subl %edx,%eax
	jns .L56
	pushl $2017
	call _m3_fault
	.align 16
.L56:
	pushl %eax
	leal 1(%edx),%eax
	pushl %eax
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	jmp .L57
	.align 16
.L55:
	movl $MM_PathnamePosix+204,%eax
.L57:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Pathname__LastExt,.Lfe12-Pathname__LastExt
	.align 16
	.type	 Pathname__ReplaceExt,@function
Pathname__ReplaceExt:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call PathnamePosix__NameSections
	movl -4(%ebp),%eax
	addl $16,%esp
	cmpl %eax,-12(%ebp)
	je .L59
	movl -8(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	pushl $MM_PathnamePosix+220
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %esi
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	jmp .L60
	.align 16
.L59:
	movl %ebx,%eax
.L60:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Pathname__ReplaceExt,.Lfe13-Pathname__ReplaceExt
	.align 16
	.type	 PathnamePosix__ParsePosixPathname,@function
PathnamePosix__ParsePosixPathname:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	xorl %esi,%esi
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %edi,%edi
	je .L62
	pushl %esi
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	addl $8,%esp
	cmpl $47,%eax
	jne .L62
	movb $1,-4(%ebp)
	movl $1,%esi
	jmp .L63
	.align 16
.L62:
	movb $0,-4(%ebp)
	xorl %esi,%esi
.L63:
	movl %esi,%ebx
	jmp .L64
	.align 16
.L65:
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+52,%eax
	call *%eax
	andl $255,%eax
	addl $8,%esp
	cmpl $47,%eax
	jne .L66
	movl 12(%ebp),%eax
	testl %eax,%eax
	je .L67
	cmpl $-1,(%eax)
	jne .L67
	movl 8(%eax),%edx
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
.L67:
	pushl %ebx
	pushl %esi
	movl -8(%ebp),%ecx
	call *%eax
	leal 1(%ebx),%esi
	jmp .L76
	.align 16
.L66:
	pushl $MM_PathnamePosix+44
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L69
	pushl %eax
	pushl $MI_Pathname+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L76:
	addl $8,%esp
.L69:
	incl %ebx
.L64:
	cmpl %edi,%ebx
	jl .L65
	cmpb $0,-4(%ebp)
	je .L72
	cmpl $1,%edi
	je .L73
.L72:
	movl 12(%ebp),%eax
	testl %eax,%eax
	je .L74
	cmpl $-1,(%eax)
	jne .L74
	movl 8(%eax),%edx
	movl %edx,-12(%ebp)
	movl 4(%eax),%eax
.L74:
	pushl %ebx
	pushl %esi
	movl -12(%ebp),%ecx
	call *%eax
.L73:
	leal -24(%ebp),%esp
	xorl %eax,%eax
	movb -4(%ebp),%al
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 PathnamePosix__ParsePosixPathname,.Lfe14-PathnamePosix__ParsePosixPathname
	.align 16
	.type	 PathnamePosix__NameSections,@function
PathnamePosix__NameSections:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 16(%ebp),%esi
	movl 20(%ebp),%ebx
	movb $0,-4(%ebp)
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,(%ebx)
	movl %eax,%ebx
	movl %ebx,(%esi)
	addl $4,%esp
.L78:
	testl %ebx,%ebx
	jle .L79
	leal -1(%ebx),%eax
	testl %eax,%eax
	jge .L80
	pushl $3041
	call _m3_fault
	.align 16
.L80:
	movl %eax,%ebx
	pushl %ebx
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	andl $255,%eax
	addl $8,%esp
	cmpl $47,%eax
	jne .L81
	movl 12(%ebp),%edx
	incl %ebx
	movl %ebx,(%edx)
	jmp .L77
	.align 16
.L81:
	cmpl $46,%eax
	jne .L78
	cmpb $0,-4(%ebp)
	jne .L78
	movl %ebx,(%esi)
	movb $1,-4(%ebp)
	jmp .L78
	.align 16
.L79:
	movl 12(%ebp),%edx
	movl $0,(%edx)
.L77:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 PathnamePosix__NameSections,.Lfe15-PathnamePosix__NameSections
	.align 16
	.type	 _INITM_PathnamePosix,@function
_INITM_PathnamePosix:
	pushl %ebp
	movl %esp,%ebp
	movl $MM_PathnamePosix+236,MI_Pathname+112
	movl $MM_PathnamePosix+220,MI_Pathname+116
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 _INITM_PathnamePosix,.Lfe16-_INITM_PathnamePosix
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_PathnamePosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe17:
	.size	 _m3_fault,.Lfe17-_m3_fault
.globl MM_PathnamePosix
.data
	.align 4
	.type	 MM_PathnamePosix,@object
	.size	 MM_PathnamePosix,760
MM_PathnamePosix:
	.long MM_PathnamePosix+608
	.zero	4
	.long MM_PathnamePosix+176
	.zero	8
	.long MM_PathnamePosix+412
	.zero	16
	.long _INITM_PathnamePosix
	.long -2
	.long -32769
	.long -1
	.long -1
	.zero	16
	.long MM_PathnamePosix+80
	.ascii	"PathnamePosix.CheckedRuntimeError"
	.zero	3
	.long PathnamePosix__ParsePosixPathname
	.long PathnamePosix__NameSections
	.long Pathname__Valid
	.long Pathname__Decompose
	.long Pathname__Compose
	.long Pathname__Absolute
	.long Pathname__Prefix
	.long Pathname__Last
	.long Pathname__Base
	.long Pathname__Join
	.long Pathname__LastBase
	.long Pathname__LastExt
	.long Pathname__ReplaceExt
	.long MI_Pathname+44
	.zero	8
	.long -2012935793
	.long 2
	.long MM_PathnamePosix+196
	.long 2
	.ascii	"/"
	.zero	3
	.long 2
	.long MM_PathnamePosix+212
	.long 1
	.zero	4
	.long 2
	.long MM_PathnamePosix+228
	.long 2
	.ascii	"."
	.zero	3
	.long 2
	.long MM_PathnamePosix+244
	.long 3
	.ascii	".."
	.zero	2
	.ascii	"_INITM_PathnamePosix"
	.zero	1
	.ascii	"NameSections"
	.zero	1
	.ascii	"ParsePosixPathname"
	.zero	1
	.ascii	"ReplaceExt"
	.zero	1
	.ascii	"LastExt"
	.zero	1
	.ascii	"LastBase"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"Base"
	.zero	1
	.ascii	"Last"
	.zero	1
	.ascii	"Prefix"
	.zero	1
	.ascii	"Absolute"
	.zero	1
	.ascii	"Compose"
	.zero	1
	.ascii	"Decompose"
	.zero	1
	.ascii	"Decompose.Add"
	.zero	1
	.ascii	"Valid"
	.zero	1
	.ascii	"Valid.Ignore"
	.zero	2
	.long _INITM_PathnamePosix
	.long MM_PathnamePosix+248
	.zero	4
	.long PathnamePosix__NameSections
	.long MM_PathnamePosix+269
	.zero	4
	.long PathnamePosix__ParsePosixPathname
	.long MM_PathnamePosix+282
	.zero	4
	.long Pathname__ReplaceExt
	.long MM_PathnamePosix+301
	.long MI_Pathname+108
	.long Pathname__LastExt
	.long MM_PathnamePosix+312
	.long MI_Pathname+104
	.long Pathname__LastBase
	.long MM_PathnamePosix+320
	.long MI_Pathname+100
	.long Pathname__Join
	.long MM_PathnamePosix+329
	.long MI_Pathname+96
	.long Pathname__Base
	.long MM_PathnamePosix+334
	.long MI_Pathname+92
	.long Pathname__Last
	.long MM_PathnamePosix+339
	.long MI_Pathname+88
	.long Pathname__Prefix
	.long MM_PathnamePosix+344
	.long MI_Pathname+84
	.long Pathname__Absolute
	.long MM_PathnamePosix+351
	.long MI_Pathname+80
	.long Pathname__Compose
	.long MM_PathnamePosix+360
	.long MI_Pathname+76
	.long Pathname__Decompose
	.long MM_PathnamePosix+368
	.long MI_Pathname+72
	.long PathnamePosix__Decompose__Add.1
	.long MM_PathnamePosix+378
	.zero	4
	.long Pathname__Valid
	.long MM_PathnamePosix+392
	.long MI_Pathname+68
	.long PathnamePosix__Valid__Ignore.0
	.long MM_PathnamePosix+398
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/POSIX/PathnamePosix.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
