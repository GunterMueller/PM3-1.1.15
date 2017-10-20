	.file	"TInt.mc"
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
	.type	 TInt__FromInt,@function
TInt__FromInt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	xorl %edx,%edx
	movzbl MI_Target+52,%esi
	jmp .L3
	.align 16
.L4:
	movl %ebx,%ecx
	andl $65535,%ecx
	cmpl $65535,%ecx
	jbe .L5
	pushl $465
	call _m3_fault
	.align 16
.L5:
	movl 12(%ebp),%eax
	sarl $16,%ebx
	movw %cx,(%eax,%edx,2)
	incl %edx
.L3:
	cmpl %esi,%edx
	jle .L4
	movl $1,%edx
	testl %ebx,%ebx
	je .L7
	cmpl $-1,%ebx
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L7:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L8:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TInt__FromInt,.Lfe1-TInt__FromInt
	.align 16
	.type	 TInt__ToInt,@function
TInt__ToInt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
.L10:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	xorl %ebx,%ebx
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	movl $1,%eax
	movl %ecx,%edx
	cmpl %eax,%ecx
	jle .L11
	movl %eax,%edx
.L11:
	cmpl $3,%edx
	jbe .L12
	pushl $641
	call _m3_fault
	.align 16
.L12:
	movl 8(%ebp),%eax
	cmpw $0,(%eax,%edx,2)
	jge .L13
	movl $65535,%ebx
.L13:
	movl $2,%edx
	jmp .L14
	.align 16
.L15:
	movl 8(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	cmpl %ebx,%eax
	je .L16
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L9
	.align 16
.L16:
	incl %edx
.L14:
	cmpl %ecx,%edx
	jle .L15
	testl %ebx,%ebx
	jne .L18
	movl %ebx,(%esi)
	jmp .L19
	.align 16
.L18:
	movl $-1,(%esi)
.L19:
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	jmp .L20
	.align 16
.L21:
	movl (%esi),%eax
	movl 8(%ebp),%edx
	sall $16,%eax
	movw (%edx,%ecx,2),%dx
	andl $65535,%edx
	orl %edx,%eax
	movl %eax,(%esi)
	decl %ecx
.L20:
	testl %ecx,%ecx
	jge .L21
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L23:
.L9:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TInt__ToInt,.Lfe2-TInt__ToInt
	.align 16
	.type	 TInt__New,@function
TInt__New:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $MI_TInt+44,%ebx
	movl MI_TInt+44,%ecx
	movl %ecx,-8(%ebp)
	movl 12(%ebp),%edx
	movl 4(%ebx),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L25
	.align 16
.L26:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L27
	pushl $1042
	call _m3_fault
	.align 16
.L27:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	addl $-48,%eax
	cmpl $65535,%eax
	jbe .L28
	pushl $1041
	call _m3_fault
	.align 16
.L28:
	movw %ax,-8(%ebp)
	leal -16(%ebp),%esi
	pushl %esi
	pushl $MM_TInt+56
	movl 12(%ebp),%eax
	pushl %eax
	call TInt__Multiply
	addl $12,%esp
	testl %eax,%eax
	je .L32
	movl 12(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	call TInt__Add
	addl $12,%esp
	testl %eax,%eax
	je .L32
	incl %ebx
.L25:
	cmpl %edi,%ebx
	jle .L26
	movl $1,%eax
.L32:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TInt__New,.Lfe3-TInt__New
	.align 16
	.type	 TInt__Add,@function
TInt__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 8(%ebp),%eax
	movl %ebx,%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%edi
	andl $32768,%edi
	movl 12(%ebp),%eax
	movl %edx,%esi
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	andl $32768,%eax
	movl %eax,-4(%ebp)
	jmp .L34
	.align 16
.L35:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	andl $65535,%eax
	movw (%edx,%ecx,2),%dx
	andl $65535,%edx
	addl %edx,%eax
	addl %eax,%ebx
	movl %ebx,%edx
	andl $65535,%edx
	cmpl $65535,%edx
	jbe .L36
	pushl $1297
	call _m3_fault
	.align 16
.L36:
	movl 16(%ebp),%eax
	shrl $16,%ebx
	movw %dx,(%eax,%ecx,2)
	incl %ecx
.L34:
	cmpl %esi,%ecx
	jle .L35
	xorl %eax,%eax
	movb MI_Target+52,%al
	movl 16(%ebp),%edx
	movw (%edx,%eax,2),%ax
	andl $65535,%eax
	movl %eax,%edx
	andl $32768,%edx
	movl $1,%eax
	cmpl %edi,-4(%ebp)
	jne .L38
	cmpl %edx,%edi
	sete %al
	andl $255,%eax
.L38:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TInt__Add,.Lfe4-TInt__Add
	.align 16
	.type	 TInt__Subtract,@function
TInt__Subtract:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 8(%ebp),%eax
	movl %ebx,%ecx
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%edi
	andl $32768,%edi
	movl 12(%ebp),%eax
	movl %edx,%esi
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	andl $32768,%eax
	movl %eax,-4(%ebp)
	jmp .L40
	.align 16
.L41:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	andl $65535,%eax
	movw (%edx,%ecx,2),%dx
	andl $65535,%edx
	subl %edx,%eax
	subl %ebx,%eax
	movl %eax,%ebx
	movl %ebx,%edx
	andl $65535,%edx
	cmpl $65535,%edx
	jbe .L42
	pushl $1553
	call _m3_fault
	.align 16
.L42:
	movl 16(%ebp),%eax
	movw %dx,(%eax,%ecx,2)
	movl %ebx,%eax
	shrl $16,%eax
	movl %eax,%ebx
	andl $1,%ebx
	incl %ecx
.L40:
	cmpl %esi,%ecx
	jle .L41
	xorl %eax,%eax
	movb MI_Target+52,%al
	movl 16(%ebp),%edx
	movw (%edx,%eax,2),%ax
	andl $65535,%eax
	movl %eax,%edx
	andl $32768,%edx
	movl $1,%eax
	cmpl %edi,-4(%ebp)
	je .L44
	cmpl %edx,%edi
	sete %al
	andl $255,%eax
.L44:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TInt__Subtract,.Lfe5-TInt__Subtract
	.align 16
	.type	 TInt__Multiply,@function
TInt__Multiply:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $16
	pushl $0
	leal -16(%ebp),%eax
	pushl %eax
	call memset
	xorl %edi,%edi
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	movl %ebx,-28(%ebp)
	addl $12,%esp
	jmp .L46
	.align 16
.L47:
	xorl %esi,%esi
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	movl %ebx,-32(%ebp)
	jmp .L48
	.align 16
.L49:
	leal (%esi,%edi),%ebx
	movl 8(%ebp),%eax
	movl %ebx,-36(%ebp)
	xorl %edx,%edx
	movw (%eax,%edi,2),%dx
	movl 12(%ebp),%eax
	movl %edx,%ecx
	movw (%eax,%esi,2),%ax
	andl $65535,%eax
	imull %eax,%ecx
	jmp .L50
	.align 16
.L51:
	cmpl $7,-36(%ebp)
	jbe .L52
	pushl $1841
	call _m3_fault
	.align 16
.L52:
	movl -36(%ebp),%ebx
	xorl %eax,%eax
	movw -16(%ebp,%ebx,2),%ax
	addl %eax,%ecx
	movl %ecx,%eax
	andl $65535,%eax
	cmpl $65535,%eax
	jbe .L54
	pushl $1857
	call _m3_fault
	.align 16
.L54:
	movl -36(%ebp),%ebx
	shrl $16,%ecx
	movw %ax,-16(%ebp,%ebx,2)
	incl %ebx
	movl %ebx,-36(%ebp)
.L50:
	testl %ecx,%ecx
	jne .L51
	incl %esi
.L48:
	cmpl %esi,-32(%ebp)
	jge .L49
	incl %edi
.L46:
	cmpl %edi,-28(%ebp)
	jge .L47
	xorl %ecx,%ecx
	movzbl MI_Target+52,%esi
	jmp .L58
	.align 16
.L59:
	movl 16(%ebp),%edx
	movw -16(%ebp,%ecx,2),%ax
	movw %ax,(%edx,%ecx,2)
	incl %ecx
.L58:
	cmpl %esi,%ecx
	jle .L59
	xorl %edx,%edx
	xorl %ecx,%ecx
	movb MI_Target+52,%cl
	jmp .L61
	.align 16
.L62:
	xorl %eax,%eax
	movb MI_Target+52,%al
	addl %edx,%eax
	movw -14(%ebp,%eax,2),%ax
	movw %ax,-24(%ebp,%edx,2)
	incl %edx
.L61:
	cmpl %ecx,%edx
	jle .L62
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 8(%ebp),%eax
	cmpw $0,(%eax,%edx,2)
	jge .L64
	leal -24(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call TInt__Subtract
	addl $12,%esp
.L64:
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 12(%ebp),%eax
	cmpw $0,(%eax,%edx,2)
	jge .L65
	leal -24(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	pushl %edx
	call TInt__Subtract
.L65:
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 16(%ebp),%eax
	cmpw $0,(%eax,%edx,2)
	setl %al
	andl $255,%eax
	negl %eax
	movl %eax,%ecx
	andl $65535,%ecx
	xorl %esi,%esi
	jmp .L67
	.align 16
.L68:
	xorl %eax,%eax
	movw -24(%ebp,%esi,2),%ax
	cmpl %ecx,%eax
	je .L69
	xorl %eax,%eax
	jmp .L71
	.align 16
.L69:
	incl %esi
.L67:
	cmpl %edx,%esi
	jle .L68
	movl $1,%eax
.L71:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TInt__Multiply,.Lfe6-TInt__Multiply
	.align 16
	.type	 TInt__Div,@function
TInt__Div:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	leal -8(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TInt__DivMod
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TInt__Div,.Lfe7-TInt__Div
	.align 16
	.type	 TInt__Mod,@function
TInt__Mod:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 16(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TInt__DivMod
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TInt__Mod,.Lfe8-TInt__Mod
	.align 16
	.type	 TInt__DivMod,@function
TInt__DivMod:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl $MI_TInt+44,%ebx
	movl (%edx),%eax
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl 12(%ebp),%edx
	movl %eax,-12(%ebp)
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	pushl %ebx
	pushl %edx
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	jne .L87
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	je .L76
	movl 16(%ebp),%eax
	movl MI_TInt+44,%edx
	movl %edx,(%eax)
	movl 4(%ebx),%edx
	movl %edx,4(%eax)
	jmp .L82
	.align 16
.L76:
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 8(%ebp),%ecx
	xorl %eax,%eax
	movw (%ecx,%edx,2),%ax
	shrl $15,%eax
	movb %al,-20(%ebp)
	movl 12(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%ebx
	shrl $15,%ebx
	cmpb $0,-20(%ebp)
	je .L78
	testb %bl,%bl
	je .L77
	pushl $MI_Target+112
	pushl %ecx
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	je .L77
	pushl $MI_TInt+60
	movl 12(%ebp),%eax
	pushl %eax
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	je .L77
.L87:
	xorl %eax,%eax
	jmp .L86
	.align 16
.L77:
	cmpb $0,-20(%ebp)
	je .L78
	leal -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+44
	call TInt__Subtract
	addl $12,%esp
.L78:
	testb %bl,%bl
	je .L79
	leal -8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+44
	call TInt__Subtract
	addl $12,%esp
.L79:
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%edi
	pushl %edi
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_TWord+68,%eax
	call *%eax
	movl $MI_TInt+44,%esi
	pushl %esi
	movl 20(%ebp),%eax
	pushl %eax
	call TInt__EQ
	addl $24,%esp
	testl %eax,%eax
	je .L80
	xorl %edx,%edx
	movb -20(%ebp),%dl
	xorl %eax,%eax
	movb %bl,%al
	cmpl %eax,%edx
	je .L82
	movl 16(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %esi
	jmp .L88
	.align 16
.L80:
	cmpb $0,-20(%ebp)
	je .L84
	testb %bl,%bl
	je .L83
	movl 20(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %esi
	jmp .L88
	.align 16
.L83:
	movl 16(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %esi
	call TInt__Subtract
	movl 16(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+52
	pushl %eax
	call TInt__Subtract
	movl 20(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %edi
	jmp .L88
	.align 16
.L84:
	testb %bl,%bl
	je .L82
	movl 16(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %esi
	call TInt__Subtract
	movl 16(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+52
	pushl %eax
	call TInt__Subtract
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edi
	pushl %eax
.L88:
	call TInt__Subtract
.L82:
	movl $1,%eax
.L86:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TInt__DivMod,.Lfe9-TInt__DivMod
	.align 16
	.type	 TInt__EQ,@function
TInt__EQ:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	pushl %ebx
	xorl %ebx,%ebx
	movb MI_Target+52,%bl
	jmp .L90
	.align 16
.L91:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movw (%eax,%ecx,2),%ax
	cmpw %ax,(%edx,%ecx,2)
	je .L92
	xorl %eax,%eax
	jmp .L94
	.align 16
.L92:
	incl %ecx
.L90:
	cmpl %ebx,%ecx
	jle .L91
	movl $1,%eax
.L94:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TInt__EQ,.Lfe10-TInt__EQ
	.align 16
	.type	 TInt__LT,@function
TInt__LT:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movb MI_Target+52,%dl
	movl 8(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	movl %eax,%ecx
	andl $32768,%ecx
	movl 12(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	andl $32768,%eax
	cmpl %eax,%ecx
	je .L97
	testl %ecx,%ecx
	setne %al
	andl $255,%eax
	jmp .L102
	.align 16
.L98:
	movl 8(%ebp),%eax
	xorl %ecx,%ecx
	movw (%eax,%edx,2),%cx
	movl 12(%ebp),%eax
	movw (%eax,%edx,2),%ax
	andl $65535,%eax
	cmpl %eax,%ecx
	jge .L99
	movl $1,%eax
	jmp .L102
	.align 16
.L99:
	cmpl %eax,%ecx
	jg .L103
	decl %edx
.L97:
	testl %edx,%edx
	jge .L98
.L103:
	xorl %eax,%eax
.L102:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TInt__LT,.Lfe11-TInt__LT
	.align 16
	.type	 TInt__LE,@function
TInt__LE:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl $1,%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	jne .L105
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TInt__LT
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L105:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TInt__LE,.Lfe12-TInt__LE
	.align 16
	.type	 TInt__ToChars,@function
TInt__ToChars:
	pushl %ebp
	movl %esp,%ebp
	subl $100,%esp
	pushl %esi
	movl $MI_TInt+44,%esi
	pushl %ebx
	movb $0,-100(%ebp)
	movb -100(%ebp),%dl
	movl 8(%ebp),%eax
	movb %dl,-96(%ebp)
	movl (%eax),%edx
	movl %edx,-24(%ebp)
	movl 4(%eax),%edx
	movl %edx,-20(%ebp)
	pushl %esi
	xorl %ebx,%ebx
	pushl %eax
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	je .L107
	movb $48,-92(%ebp)
	movl $1,%ebx
	jmp .L108
	.align 16
.L107:
	xorl %eax,%eax
	movb MI_Target+52,%al
	movl 8(%ebp),%ecx
	cmpw $0,(%ecx,%eax,2)
	jge .L111
	pushl $MI_Target+112
	pushl %ecx
	call TInt__EQ
	addl $8,%esp
	testl %eax,%eax
	je .L110
	movb $1,-96(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+52
	pushl %eax
	call TInt__Add
	addl $12,%esp
.L110:
	movb $1,-100(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %esi
	call TInt__Subtract
	addl $12,%esp
	jmp .L111
	.align 16
.L112:
	leal -8(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl $MM_TInt+56
	pushl %esi
	movl MI_TWord+68,%eax
	call *%eax
	addl $16,%esp
	cmpl $64,%ebx
	jbe .L113
	pushl $4465
	call _m3_fault
	.align 16
.L113:
	xorl %eax,%eax
	movw -8(%ebp),%ax
	cmpl $9,%eax
	jle .L114
	pushl $4465
	call _m3_fault
	.align 16
.L114:
	movb MM_TInt+44(%eax),%al
	movb %al,-92(%ebx,%ebp)
	movl -16(%ebp),%eax
	movl %eax,-24(%ebp)
	movl -12(%ebp),%eax
	movl %eax,-20(%ebp)
	incl %ebx
.L111:
	leal -24(%ebp),%esi
	pushl %esi
	pushl $MI_TInt+44
	call TInt__LT
	addl $8,%esp
	testl %eax,%eax
	jne .L112
	cmpb $0,-96(%ebp)
	je .L108
	cmpl $64,%ebx
	jbe .L117
	pushl $4577
	call _m3_fault
	.align 16
.L117:
	movb $48,-92(%ebx,%ebp)
	movl %eax,%ecx
.L118:
	cmpl $64,%ecx
	jbe .L119
	pushl $4625
	call _m3_fault
	.align 16
.L119:
	xorl %eax,%eax
	movb -92(%ecx,%ebp),%al
	addl $-47,%eax
	cmpl $9,%eax
	jg .L124
	jbe .L122
	pushl $4673
	call _m3_fault
	.align 16
.L122:
	movb MM_TInt+44(%eax),%al
	movb %al,-92(%ecx,%ebp)
	jmp .L123
	.align 16
.L124:
	movb $48,-92(%ecx,%ebp)
	incl %ecx
	jmp .L118
	.align 16
.L123:
	leal 1(%ecx),%eax
	cmpl %ebx,%eax
	jle .L108
	movl %eax,%ebx
.L108:
	movl %ebx,%ecx
	cmpb $0,-100(%ebp)
	je .L127
	incl %ecx
.L127:
	movl 12(%ebp),%eax
	movl 4(%eax),%esi
	cmpl %ecx,%esi
	jge .L128
	movl $-1,%eax
	jmp .L136
	.align 16
.L128:
	xorl %ecx,%ecx
	cmpb $0,-100(%ebp)
	je .L129
	testl %esi,%esi
	jne .L130
	pushl $4962
	call _m3_fault
	.align 16
.L130:
	movl (%eax),%eax
	movl $1,%ecx
	movb $45,(%eax)
.L129:
	decl %ebx
	jmp .L131
	.align 16
.L132:
	movl 12(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L133
	pushl $5010
	call _m3_fault
	.align 16
.L133:
	cmpl $64,%ebx
	jle .L134
	pushl $5009
	call _m3_fault
	.align 16
.L134:
	movl (%eax),%edx
	movb -92(%ebx,%ebp),%al
	decl %ebx
	movb %al,(%ecx,%edx)
	incl %ecx
.L131:
	testl %ebx,%ebx
	jge .L132
	movl %ecx,%eax
.L136:
	leal -108(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 TInt__ToChars,.Lfe13-TInt__ToChars
	.align 16
	.type	 TInt__ToBytes,@function
TInt__ToBytes:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl %edx,%ebx
	movzbl MI_Target+52,%edi
	jmp .L138
	.align 16
.L139:
	movl 8(%ebp),%eax
	xorl %esi,%esi
	movw (%eax,%ebx,2),%si
	cmpl $7,%edx
	jbe .L140
	pushl $5201
	call _m3_fault
	.align 16
.L140:
	movl %esi,%ecx
	andl $255,%ecx
	cmpl $255,%ecx
	jbe .L141
	pushl $5201
	call _m3_fault
	.align 16
.L141:
	movl 12(%ebp),%eax
	movb %cl,(%edx,%eax)
	incl %edx
	cmpl $7,%edx
	jbe .L142
	pushl $5217
	call _m3_fault
	.align 16
.L142:
	movl %esi,%ecx
	shrl $8,%ecx
	cmpl $255,%ecx
	jbe .L143
	pushl $5217
	call _m3_fault
	.align 16
.L143:
	movl 12(%ebp),%eax
	incl %ebx
	movb %cl,(%edx,%eax)
	incl %edx
.L138:
	cmpl %edi,%ebx
	jle .L139
	decl %edx
	cmpl $7,%edx
	jbe .L145
	pushl $5297
	call _m3_fault
	.align 16
.L145:
	movl 12(%ebp),%eax
	movb (%edx,%eax),%al
	testb %al,%al
	jne .L154
	jmp .L147
	.align 16
.L148:
	movl %ecx,%edx
.L147:
	testl %edx,%edx
	jle .L153
	cmpl $7,%edx
	jbe .L150
	pushl $5313
	call _m3_fault
	.align 16
.L150:
	movl 12(%ebp),%eax
	cmpb $0,(%edx,%eax)
	jne .L153
	leal -1(%edx),%ecx
	cmpl $7,%ecx
	jbe .L151
	pushl $5313
	call _m3_fault
	.align 16
.L151:
	movb (%ecx,%eax),%al
	andl $255,%eax
	cmpl $127,%eax
	jle .L148
	jmp .L153
	.align 16
.L154:
	cmpb $255,%al
	jne .L153
	jmp .L156
	.align 16
.L157:
	movl %ecx,%edx
.L156:
	testl %edx,%edx
	jle .L153
	cmpl $7,%edx
	jbe .L159
	pushl $5345
	call _m3_fault
	.align 16
.L159:
	movl 12(%ebp),%eax
	cmpb $255,(%edx,%eax)
	jne .L153
	leal -1(%edx),%ecx
	cmpl $7,%ecx
	jbe .L160
	pushl $5345
	call _m3_fault
	.align 16
.L160:
	movb (%ecx,%eax),%al
	andl $255,%eax
	cmpl $127,%eax
	jg .L157
.L153:
	incl %edx
	leal -12(%ebp),%esp
	movl %edx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 TInt__ToBytes,.Lfe14-TInt__ToBytes
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TInt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_TInt
.data
	.align 4
	.type	 MM_TInt,@object
	.size	 MM_TInt,508
MM_TInt:
	.long MM_TInt+372
	.zero	16
	.long MM_TInt+200
	.zero	20
.byte 48
.byte 49
.byte 50
.byte 51
.byte 52
.byte 53
.byte 54
.byte 55
.byte 56
.byte 57
	.zero	2
	.value 10
	.zero	6
	.long TInt__DivMod
	.long TInt__FromInt
	.long TInt__ToInt
	.long TInt__New
	.long TInt__Add
	.long TInt__Subtract
	.long TInt__Multiply
	.long TInt__Div
	.long TInt__Mod
	.long TInt__EQ
	.long TInt__LT
	.long TInt__LE
	.long TInt__ToChars
	.long TInt__ToBytes
	.ascii	"ToBytes"
	.zero	1
	.ascii	"ToChars"
	.zero	1
	.ascii	"LE"
	.zero	1
	.ascii	"LT"
	.zero	1
	.ascii	"EQ"
	.zero	1
	.ascii	"DivMod"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Div"
	.zero	1
	.ascii	"Multiply"
	.zero	1
	.ascii	"Subtract"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"ToInt"
	.zero	1
	.ascii	"FromInt"
	.zero	1
	.long TInt__ToBytes
	.long MM_TInt+120
	.long MI_TInt+116
	.long TInt__ToChars
	.long MM_TInt+128
	.long MI_TInt+112
	.long TInt__LE
	.long MM_TInt+136
	.long MI_TInt+108
	.long TInt__LT
	.long MM_TInt+139
	.long MI_TInt+104
	.long TInt__EQ
	.long MM_TInt+142
	.long MI_TInt+100
	.long TInt__DivMod
	.long MM_TInt+145
	.zero	4
	.long TInt__Mod
	.long MM_TInt+152
	.long MI_TInt+96
	.long TInt__Div
	.long MM_TInt+156
	.long MI_TInt+92
	.long TInt__Multiply
	.long MM_TInt+160
	.long MI_TInt+88
	.long TInt__Subtract
	.long MM_TInt+169
	.long MI_TInt+84
	.long TInt__Add
	.long MM_TInt+178
	.long MI_TInt+80
	.long TInt__New
	.long MM_TInt+182
	.long MI_TInt+76
	.long TInt__ToInt
	.long MM_TInt+186
	.long MI_TInt+72
	.long TInt__FromInt
	.long MM_TInt+192
	.long MI_TInt+68
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/TInt.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
