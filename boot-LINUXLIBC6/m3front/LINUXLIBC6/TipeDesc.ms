	.file	"TipeDesc.mc"
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
	.type	 TipeDesc__Start,@function
TipeDesc__Start:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	cmpb $0,MM_TipeDesc+148
	je .L2
	pushl $400
	call _m3_fault
	.align 16
.L2:
	movb $1,MM_TipeDesc+148
	cmpl $0,MM_TipeDesc+152
	jne .L3
	leal -12(%ebp),%esi
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $200,-4(%ebp)
	pushl %esi
	movl MM_TipeDesc+232,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_TipeDesc+152
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %esi
	movl MM_TipeDesc+240,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_TipeDesc+160
.L3:
	movl $0,MM_TipeDesc+156
	leal -20(%ebp),%esp
	movl $0,MM_TipeDesc+164
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TipeDesc__Start,.Lfe1-TipeDesc__Start
	.align 16
	.type	 TipeDesc__Finish,@function
TipeDesc__Finish:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%ebx
	movl MM_TipeDesc+156,%eax
	testl %eax,%eax
	jne .L5
	movb $0,MM_TipeDesc+148
	movl $-1,%eax
	jmp .L16
	.align 16
.L5:
	movl %eax,-4(%ebp)
	movl MM_TipeDesc+164,%eax
	pushl %eax
	call TipeDesc__AddI
	pushl $0
	pushl $MM_TipeDesc+252
	movl MI_Target+280,%eax
	pushl %eax
	movl MM_TipeDesc+156,%eax
	imull MI_Target+276,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	movl %eax,%edi
	pushl %edi
	movl MI_CG+788,%eax
	call *%eax
	movl %edi,%esi
	movl -4(%ebp),%ebx
	movl MM_TipeDesc+156,%edx
	decl %edx
	movl %edx,-8(%ebp)
	addl $40,%esp
	jmp .L6
	.align 16
.L7:
	movl MM_TipeDesc+152,%eax
	testl %eax,%eax
	jne .L8
	pushl $836
	call _m3_fault
	.align 16
.L8:
	cmpl %ebx,4(%eax)
	ja .L9
	pushl $834
	call _m3_fault
	.align 16
.L9:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Target+276,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+276,%esi
	incl %ebx
	addl $12,%esp
.L6:
	cmpl %ebx,-8(%ebp)
	jge .L7
	xorl %ebx,%ebx
	movl -4(%ebp),%edx
	decl %edx
	movl %edx,-12(%ebp)
	jmp .L11
	.align 16
.L12:
	movl MM_TipeDesc+152,%eax
	testl %eax,%eax
	jne .L13
	pushl $932
	call _m3_fault
	.align 16
.L13:
	cmpl %ebx,4(%eax)
	ja .L14
	pushl $930
	call _m3_fault
	.align 16
.L14:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Target+276,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+276,%esi
	incl %ebx
	addl $12,%esp
.L11:
	cmpl %ebx,-12(%ebp)
	jge .L12
	movb $0,MM_TipeDesc+148
	movl %edi,%eax
.L16:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TipeDesc__Finish,.Lfe2-TipeDesc__Finish
	.align 16
	.type	 TipeDesc__AddO,@function
TipeDesc__AddO:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	xorl %ebx,%ebx
	movl MM_TipeDesc+164,%esi
	decl %esi
	jmp .L18
	.align 16
.L19:
	movl MM_TipeDesc+160,%eax
	testl %eax,%eax
	jne .L20
	pushl $1140
	call _m3_fault
	.align 16
.L20:
	cmpl %ebx,4(%eax)
	ja .L21
	pushl $1138
	call _m3_fault
	.align 16
.L21:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	testl %eax,%eax
	je .L22
	pushl $0
	pushl %edi
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L22
	cmpl $233,%ebx
	jg .L23
	leal 22(%ebx),%eax
	pushl %eax
	call TipeDesc__Stuff
	addl $4,%esp
	jmp .L24
	.align 16
.L23:
	pushl $21
	call TipeDesc__Stuff
	pushl %ebx
	call TipeDesc__AddI
	addl $8,%esp
.L24:
	movl MM_TipeDesc+160,%edx
	testl %edx,%edx
	jne .L25
	pushl $1236
	call _m3_fault
	.align 16
.L25:
	movl MM_TipeDesc+164,%eax
	cmpl %eax,4(%edx)
	jg .L26
	call TipeDesc__ExpandTypes
.L26:
	movl MM_TipeDesc+160,%eax
	testl %eax,%eax
	jne .L27
	pushl $1252
	call _m3_fault
	.align 16
.L27:
	movl MM_TipeDesc+164,%edx
	cmpl %edx,4(%eax)
	ja .L28
	pushl $1250
	call _m3_fault
	.align 16
.L28:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl MM_TipeDesc+164
	xorl %eax,%eax
	jmp .L34
	.align 16
.L22:
	incl %ebx
.L18:
	cmpl %esi,%ebx
	jle .L19
	movl MM_TipeDesc+160,%edx
	testl %edx,%edx
	jne .L30
	pushl $1316
	call _m3_fault
	.align 16
.L30:
	movl MM_TipeDesc+164,%eax
	cmpl %eax,4(%edx)
	jg .L31
	call TipeDesc__ExpandTypes
.L31:
	movl MM_TipeDesc+160,%eax
	testl %eax,%eax
	jne .L32
	pushl $1332
	call _m3_fault
	.align 16
.L32:
	movl MM_TipeDesc+164,%edx
	cmpl %edx,4(%eax)
	ja .L33
	pushl $1330
	call _m3_fault
	.align 16
.L33:
	movl (%eax),%eax
	movl %edi,(%eax,%edx,4)
	incl MM_TipeDesc+164
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	call TipeDesc__Stuff
	movl $1,%eax
.L34:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TipeDesc__AddO,.Lfe3-TipeDesc__AddO
	.align 16
	.type	 TipeDesc__AddU,@function
TipeDesc__AddU:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,%eax
	andl $255,%eax
	pushl %eax
	call TipeDesc__Stuff
	shrl $8,%ebx
	movl %ebx,%eax
	andl $255,%eax
	pushl %eax
	call TipeDesc__Stuff
	shrl $8,%ebx
	movl %ebx,%eax
	andl $255,%eax
	pushl %eax
	call TipeDesc__Stuff
	shrl $8,%ebx
	pushl %ebx
	call TipeDesc__Stuff
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TipeDesc__AddU,.Lfe4-TipeDesc__AddU
	.align 16
	.type	 TipeDesc__AddI,@function
TipeDesc__AddI:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jl .L37
	cmpl $63,%ebx
	jle .L49
	cmpl $255,%ebx
	jg .L40
	pushl $65
	jmp .L50
	.align 16
.L40:
	cmpl $2147483647,%ebx
	jne .L48
	pushl $126
	call TipeDesc__Stuff
	jmp .L36
	.align 16
.L37:
	cmpl $-63,%ebx
	jl .L44
	movl $128,%eax
	subl %ebx,%eax
	pushl %eax
	call TipeDesc__Stuff
	jmp .L36
	.align 16
.L44:
	cmpl $-255,%ebx
	jl .L46
	pushl $193
.L50:
	call TipeDesc__Stuff
.L49:
	pushl %ebx
	call TipeDesc__Stuff
	jmp .L36
	.align 16
.L46:
	cmpl $-2147483648,%ebx
	jne .L48
	pushl $254
	call TipeDesc__Stuff
	jmp .L36
	.align 16
.L48:
	pushl %ebx
	call TipeDesc__AddBigInt
.L36:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TipeDesc__AddI,.Lfe5-TipeDesc__AddI
	.align 16
	.type	 TipeDesc__AddBigInt,@function
TipeDesc__AddBigInt:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	movl $MM_TipeDesc+216,%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jge .L52
	movl $MM_TipeDesc+220,%eax
.L52:
	movl (%eax),%edx
	testl %ebx,%ebx
	jge .L54
	negl %ebx
.L54:
	xorl %esi,%esi
	jmp .L55
	.align 16
.L56:
	cmpl $3,%esi
	jbe .L57
	pushl $2001
	call _m3_fault
	.align 16
.L57:
	movl %ebx,%eax
	andl $255,%eax
	movl %eax,-16(%ebp,%esi,4)
	incl %esi
	shrl $8,%ebx
.L55:
	testl %ebx,%ebx
	jne .L56
	leal (%esi,%edx),%eax
	pushl %eax
	call TipeDesc__Stuff
	decl %esi
	jmp .L63
	.align 16
.L60:
	cmpl $3,%ebx
	jle .L61
	pushl $2097
	call _m3_fault
	.align 16
.L61:
	movl -16(%ebp,%ebx,4),%eax
	pushl %eax
	call TipeDesc__Stuff
	incl %ebx
.L63:
	addl $4,%esp
	cmpl %esi,%ebx
	jle .L60
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TipeDesc__AddBigInt,.Lfe6-TipeDesc__AddBigInt
	.align 16
	.type	 TipeDesc__AddX,@function
TipeDesc__AddX:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L65
	movl -4(%ebp),%eax
	pushl %eax
	call TipeDesc__AddI
	jmp .L64
	.align 16
.L65:
	pushl $MI_Target+372
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L67
	pushl $126
	call TipeDesc__Stuff
	jmp .L64
	.align 16
.L67:
	pushl $MI_Target+364
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L68
	pushl $254
	call TipeDesc__Stuff
	jmp .L64
	.align 16
.L68:
	pushl $MI_Target+408
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L69
	pushl $127
	call TipeDesc__Stuff
	jmp .L64
	.align 16
.L69:
	pushl $MI_Target+400
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L70
	pushl $255
	call TipeDesc__Stuff
	jmp .L64
	.align 16
.L70:
	movl 8(%ebp),%eax
	pushl %eax
	call TipeDesc__AddBigX
.L64:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TipeDesc__AddX,.Lfe7-TipeDesc__AddX
	.align 16
	.type	 TipeDesc__AddBigX,@function
TipeDesc__AddBigX:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl $MI_TInt+44,%edi
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	pushl %edi
	leal -8(%ebp),%ebx
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	movl MM_TipeDesc+224(,%eax,4),%esi
	addl $8,%esp
	cmpl $64,%esi
	je .L72
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_TWord+52,%eax
	call *%eax
	addl $12,%esp
.L72:
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+116,%eax
	call *%eax
	movl %eax,%ebx
	leal (%ebx,%esi),%eax
	pushl %eax
	call TipeDesc__Stuff
	xorl %esi,%esi
	decl %ebx
	addl $12,%esp
	jmp .L73
	.align 16
.L74:
	cmpl $7,%esi
	jle .L75
	pushl $2529
	call _m3_fault
	.align 16
.L75:
	xorl %eax,%eax
	movb -16(%esi,%ebp),%al
	pushl %eax
	call TipeDesc__Stuff
	incl %esi
	addl $4,%esp
.L73:
	cmpl %ebx,%esi
	jle .L74
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TipeDesc__AddBigX,.Lfe8-TipeDesc__AddBigX
	.align 16
	.type	 TipeDesc__Stuff,@function
TipeDesc__Stuff:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,MM_TipeDesc+148
	jne .L78
	pushl $2608
	call _m3_fault
	.align 16
.L78:
	movl MM_TipeDesc+152,%edx
	testl %edx,%edx
	jne .L79
	pushl $2628
	call _m3_fault
	.align 16
.L79:
	movl MM_TipeDesc+156,%eax
	cmpl %eax,4(%edx)
	jg .L80
	call TipeDesc__ExpandBytes
.L80:
	movl MM_TipeDesc+152,%eax
	testl %eax,%eax
	jne .L81
	pushl $2644
	call _m3_fault
	.align 16
.L81:
	movl MM_TipeDesc+156,%ecx
	cmpl %ecx,4(%eax)
	ja .L82
	pushl $2642
	call _m3_fault
	.align 16
.L82:
	movl 8(%ebp),%edx
	andl $255,%edx
	cmpl $255,%edx
	jbe .L83
	pushl $2641
	call _m3_fault
	.align 16
.L83:
	movl (%eax),%eax
	movl %ebp,%esp
	movb %dl,(%ecx,%eax)
	incl MM_TipeDesc+156
	popl %ebp
	ret
.Lfe9:
	.size	 TipeDesc__Stuff,.Lfe9-TipeDesc__Stuff
	.align 16
	.type	 TipeDesc__ExpandBytes,@function
TipeDesc__ExpandBytes:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_TipeDesc+152,%eax
	testl %eax,%eax
	jne .L85
	pushl $2708
	call _m3_fault
	.align 16
.L85:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_TipeDesc+232,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L86
	pushl $2740
	call _m3_fault
	.align 16
.L86:
	movl MM_TipeDesc+152,%ecx
	testl %ecx,%ecx
	jne .L87
	pushl $2740
	call _m3_fault
	.align 16
.L87:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L88
	pushl $2737
	call _m3_fault
	.align 16
.L88:
	movl (%ebx),%esi
	movl %esi,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L90
	pushl $2739
	call _m3_fault
	.align 16
.L90:
	pushl %edx
	movl (%ecx),%eax
	pushl %eax
	pushl %esi
	call memmove
	leal -32(%ebp),%esp
	movl %ebx,MM_TipeDesc+152
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TipeDesc__ExpandBytes,.Lfe10-TipeDesc__ExpandBytes
	.align 16
	.type	 TipeDesc__ExpandTypes,@function
TipeDesc__ExpandTypes:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_TipeDesc+160,%eax
	testl %eax,%eax
	jne .L92
	pushl $2820
	call _m3_fault
	.align 16
.L92:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_TipeDesc+240,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L93
	pushl $2852
	call _m3_fault
	.align 16
.L93:
	movl MM_TipeDesc+160,%ecx
	testl %ecx,%ecx
	jne .L94
	pushl $2852
	call _m3_fault
	.align 16
.L94:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L95
	pushl $2849
	call _m3_fault
	.align 16
.L95:
	movl (%ebx),%esi
	movl %esi,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L97
	pushl $2851
	call _m3_fault
	.align 16
.L97:
	leal 0(,%edx,4),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	pushl %esi
	call memmove
	leal -32(%ebp),%esp
	movl %ebx,MM_TipeDesc+160
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TipeDesc__ExpandTypes,.Lfe11-TipeDesc__ExpandTypes
	.align 16
	.type	 TipeDesc__Reset,@function
TipeDesc__Reset:
	pushl %ebp
	movl %esp,%ebp
	movb $0,MM_TipeDesc+148
	movl $0,MM_TipeDesc+156
	movl $0,MM_TipeDesc+164
	movl MM_TipeDesc+160,%eax
	testl %eax,%eax
	je .L98
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L101
	.align 16
.L102:
	movl MM_TipeDesc+160,%eax
	testl %eax,%eax
	jne .L103
	pushl $3012
	call _m3_fault
	.align 16
.L103:
	cmpl %edx,4(%eax)
	ja .L104
	pushl $3010
	call _m3_fault
	.align 16
.L104:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L101:
	cmpl %ecx,%edx
	jle .L102
.L98:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TipeDesc__Reset,.Lfe12-TipeDesc__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TipeDesc
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_TipeDesc
.data
	.align 4
	.type	 MM_TipeDesc,@object
	.size	 MM_TipeDesc,688
MM_TipeDesc:
	.long MM_TipeDesc+514
	.long MM_TipeDesc+44
	.long MM_TipeDesc+232
	.zero	8
	.long MM_TipeDesc+360
	.zero	4
	.long MM_TipeDesc+508
	.long MM_TipeDesc+508
	.zero	16
	.long -861351064
.byte 229
.byte 42
.byte 237
.byte 223
.byte 141
.byte 249
.byte 69
.byte 19
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_TipeDesc+658
	.zero	4
	.long MM_TipeDesc+663
	.zero	28
	.long MM_TipeDesc+670
	.zero	24
	.long TipeDesc__AddBigInt
	.long TipeDesc__AddBigX
	.long TipeDesc__Stuff
	.long TipeDesc__ExpandBytes
	.long TipeDesc__ExpandTypes
	.long TipeDesc__Start
	.long TipeDesc__Finish
	.long TipeDesc__AddO
	.long TipeDesc__AddU
	.long TipeDesc__AddI
	.long TipeDesc__AddX
	.long TipeDesc__Reset
	.long 64
	.long 192
	.long 64
	.long 192
	.long MM_TipeDesc+240
	.long -861351064
	.zero	4
	.long 1942183804
	.long 2
	.long MM_TipeDesc+260
	.long 10
	.ascii	"type_desc"
	.zero	3
	.ascii	"Reset"
	.zero	1
	.ascii	"ExpandTypes"
	.zero	1
	.ascii	"ExpandBytes"
	.zero	1
	.ascii	"Stuff"
	.zero	1
	.ascii	"AddBigX"
	.zero	1
	.ascii	"AddX"
	.zero	1
	.ascii	"AddBigInt"
	.zero	1
	.ascii	"AddI"
	.zero	1
	.ascii	"AddU"
	.zero	1
	.ascii	"AddO"
	.zero	1
	.ascii	"Finish"
	.zero	1
	.ascii	"Start"
	.zero	2
	.long TipeDesc__Reset
	.long MM_TipeDesc+272
	.long MI_TipeDesc+68
	.long TipeDesc__ExpandTypes
	.long MM_TipeDesc+278
	.zero	4
	.long TipeDesc__ExpandBytes
	.long MM_TipeDesc+290
	.zero	4
	.long TipeDesc__Stuff
	.long MM_TipeDesc+302
	.zero	4
	.long TipeDesc__AddBigX
	.long MM_TipeDesc+308
	.zero	4
	.long TipeDesc__AddX
	.long MM_TipeDesc+316
	.long MI_TipeDesc+64
	.long TipeDesc__AddBigInt
	.long MM_TipeDesc+321
	.zero	4
	.long TipeDesc__AddI
	.long MM_TipeDesc+331
	.long MI_TipeDesc+60
	.long TipeDesc__AddU
	.long MM_TipeDesc+336
	.long MI_TipeDesc+56
	.long TipeDesc__AddO
	.long MM_TipeDesc+341
	.long MI_TipeDesc+52
	.long TipeDesc__Finish
	.long MM_TipeDesc+346
	.long MI_TipeDesc+48
	.long TipeDesc__Start
	.long MM_TipeDesc+353
	.long MI_TipeDesc+44
	.zero	4
.byte 42
.byte 152
.byte 4
.byte 37
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/TipeDesc.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 0
.byte 65
.byte 255
	.ascii	"TipeDesc.ByteList"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
