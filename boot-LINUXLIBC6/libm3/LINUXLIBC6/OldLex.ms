	.file	"OldLex.mc"
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
	.type	 OldLex__Scan,@function
OldLex__Scan:
	pushl %ebp
	movl %esp,%ebp
	subl $280,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L2:
	movl $MM_OldLex+76,-260(%ebp)
	movl $4,-264(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-268(%ebp)
	leal -268(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $MM_OldLex+88,%esi
	xorl %ebx,%ebx
.L3:
	pushl %edi
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	pushl %edi
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-280(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -280(%ebp),%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	je .L6
	cmpl $256,%ebx
	jne .L7
	leal -256(%ebp),%ecx
	movl %ecx,-276(%ebp)
	movl %ebx,-272(%ebp)
	leal -276(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	xorl %ebx,%ebx
	addl $12,%esp
.L7:
	cmpl $255,%ebx
	jbe .L8
	pushl $449
	call _m3_fault
	.align 16
.L8:
	movb -280(%ebp),%cl
	movb %cl,-256(%ebx,%ebp)
	incl %ebx
	jmp .L3
	.align 16
.L6:
	pushl %edi
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L5:
	testl %ebx,%ebx
	jge .L10
	pushl $545
	call _m3_fault
	.align 16
.L10:
	cmpl $256,%ebx
	jle .L11
	pushl $545
	call _m3_fault
	.align 16
.L11:
	movl %ebx,-272(%ebp)
	leal -256(%ebp),%ecx
	movl %ecx,-276(%ebp)
	leal -276(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl -268(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L12:
	leal -292(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 OldLex__Scan,.Lfe1-OldLex__Scan
	.align 16
	.type	 OldLex__Skip,@function
OldLex__Skip:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L14:
	movl $MM_OldLex+76,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
.L15:
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L19
	pushl %ebx
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,%dl
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %dl,%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	jne .L15
	pushl %ebx
	movl MI_Rd+88,%eax
	call *%eax
.L19:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 OldLex__Skip,.Lfe2-OldLex__Skip
	.align 16
	.type	 OldLex__Match,@function
OldLex__Match:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%edx
.L21:
	movl $MM_OldLex+100,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	movl MI_TextRd+148,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
.L22:
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L27
	pushl %edi
	movl MI_Rd+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L25
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L25:
	pushl %edi
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,%ebx
	je .L22
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
	jmp .L22
	.align 16
.L27:
	movl -12(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 OldLex__Match,.Lfe3-OldLex__Match
	.align 16
	.type	 OldLex__Bool,@function
OldLex__Bool:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L29:
	movl $MM_OldLex+100,-12(%ebp)
	movl $4,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %esi,%esi
.L30:
	pushl %edi
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L32
	pushl %edi
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,%bl
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	je .L33
	cmpl $5,%esi
	jg .L30
	jbe .L35
	pushl $1185
	call _m3_fault
	.align 16
.L35:
	movb %bl,-8(%esi,%ebp)
	incl %esi
	jmp .L30
	.align 16
.L33:
	pushl %edi
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L32:
	xorl %eax,%eax
	movb -8(%ebp),%al
	cmpl $84,%eax
	je .L37
	cmpl $116,%eax
	jne .L38
.L37:
	cmpl $1,%esi
	je .L66
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L38:
	xorl %eax,%eax
	movb -8(%ebp),%al
	cmpl $70,%eax
	je .L40
	cmpl $102,%eax
	jne .L41
.L40:
	cmpl $1,%esi
	je .L67
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L41:
	movl $4,-24(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl $3,%edx
.L44:
	movl -28(%ebp),%eax
	addl %edx,%eax
	movb (%eax),%al
	cmpb %al,MM_OldLex+112(%edx)
	jne .L43
	decl %edx
	jns .L44
	jmp .L46
	.align 16
.L43:
	movl $4,-32(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $3,%edx
.L48:
	movl -36(%ebp),%eax
	addl %edx,%eax
	movb (%eax),%al
	cmpb %al,MM_OldLex+116(%edx)
	jne .L47
	decl %edx
	jns .L48
	jmp .L46
	.align 16
.L47:
	movl $4,-40(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $3,%edx
.L51:
	movl -44(%ebp),%eax
	addl %edx,%eax
	movb (%eax),%al
	cmpb %al,MM_OldLex+120(%edx)
	jne .L50
	decl %edx
	jns .L51
.L46:
	cmpl $4,%esi
	jne .L53
.L66:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L28
	.align 16
.L53:
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L50:
	movl $5,-40(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $4,%edx
.L55:
	movl -44(%ebp),%eax
	addl %edx,%eax
	movb (%eax),%al
	cmpb %al,MM_OldLex+124(%edx)
	jne .L54
	decl %edx
	jns .L55
	jmp .L57
	.align 16
.L54:
	movl $5,-32(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $4,%edx
.L59:
	movl -36(%ebp),%eax
	addl %edx,%eax
	movb (%eax),%al
	cmpb %al,MM_OldLex+129(%edx)
	jne .L58
	decl %edx
	jns .L59
	jmp .L57
	.align 16
.L58:
	movl $5,-24(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl $4,%edx
.L62:
	movl -28(%ebp),%eax
	addl %edx,%eax
	movb (%eax),%al
	cmpb %al,MM_OldLex+134(%edx)
	jne .L61
	decl %edx
	jns .L62
.L57:
	cmpl $5,%esi
	jne .L64
.L67:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L28
	.align 16
.L64:
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L61:
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L65:
.L28:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 OldLex__Bool,.Lfe4-OldLex__Bool
	.align 16
	.type	 OldLex__Int,@function
OldLex__Int:
	pushl %ebp
	movl %esp,%ebp
	subl $284,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L69:
	movl $MM_OldLex+100,-264(%ebp)
	movl $4,-268(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-272(%ebp)
	leal -272(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %ebx,%ebx
.L70:
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L72
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-284(%ebp)
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -284(%ebp),%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	je .L73
	cmpl $255,%ebx
	jg .L70
	jbe .L75
	pushl $1873
	call _m3_fault
	.align 16
.L75:
	movb -284(%ebp),%dl
	movb %dl,-256(%ebx,%ebp)
	incl %ebx
	jmp .L70
	.align 16
.L73:
	pushl %esi
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L72:
	testl %ebx,%ebx
	jge .L77
	pushl $1985
	call _m3_fault
	.align 16
.L77:
	cmpl $256,%ebx
	jle .L78
	pushl $1985
	call _m3_fault
	.align 16
.L78:
	movl %ebx,-276(%ebp)
	leal -256(%ebp),%edx
	movl %edx,-280(%ebp)
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	leal -260(%ebp),%eax
	pushl %eax
	leal -280(%ebp),%eax
	pushl %eax
	movl MI_Convert+84,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	cmpl %ebx,-260(%ebp)
	je .L79
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L79:
	movl -272(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L80:
	leal -292(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 OldLex__Int,.Lfe5-OldLex__Int
	.align 16
	.type	 OldLex__Unsigned,@function
OldLex__Unsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $284,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L82:
	movl $MM_OldLex+100,-264(%ebp)
	movl $4,-268(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-272(%ebp)
	leal -272(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %ebx,%ebx
.L83:
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L85
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-284(%ebp)
	movl 16(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -284(%ebp),%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	je .L86
	cmpl $255,%ebx
	jg .L83
	jbe .L88
	pushl $2273
	call _m3_fault
	.align 16
.L88:
	movb -284(%ebp),%dl
	movb %dl,-256(%ebx,%ebp)
	incl %ebx
	jmp .L83
	.align 16
.L86:
	pushl %esi
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L85:
	testl %ebx,%ebx
	jge .L90
	pushl $2385
	call _m3_fault
	.align 16
.L90:
	cmpl $256,%ebx
	jle .L91
	pushl $2385
	call _m3_fault
	.align 16
.L91:
	movl %ebx,-276(%ebp)
	leal -256(%ebp),%edx
	movl %edx,-280(%ebp)
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	leal -260(%ebp),%eax
	pushl %eax
	leal -280(%ebp),%eax
	pushl %eax
	movl MI_Convert+88,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	cmpl %ebx,-260(%ebp)
	je .L92
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L92:
	movl -272(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L93:
	leal -292(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 OldLex__Unsigned,.Lfe6-OldLex__Unsigned
	.align 16
	.type	 OldLex__Real,@function
OldLex__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $288,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L95:
	movl $MM_OldLex+140,-264(%ebp)
	movl $4,-268(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-272(%ebp)
	leal -272(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %ebx,%ebx
.L96:
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L98
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-288(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -288(%ebp),%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	je .L99
	cmpl $255,%ebx
	jg .L96
	jbe .L101
	pushl $2657
	call _m3_fault
	.align 16
.L101:
	movb -288(%ebp),%dl
	movb %dl,-256(%ebx,%ebp)
	incl %ebx
	jmp .L96
	.align 16
.L99:
	pushl %esi
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L98:
	testl %ebx,%ebx
	jge .L103
	pushl $2769
	call _m3_fault
	.align 16
.L103:
	cmpl $256,%ebx
	jle .L104
	pushl $2769
	call _m3_fault
	.align 16
.L104:
	movl %ebx,-276(%ebp)
	leal -256(%ebp),%edx
	movl %edx,-280(%ebp)
	leal -260(%ebp),%eax
	pushl %eax
	leal -280(%ebp),%eax
	pushl %eax
	movl MI_Convert+92,%eax
	call *%eax
	fstps -284(%ebp)
	addl $8,%esp
	cmpl %ebx,-260(%ebp)
	je .L105
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L105:
	movl -272(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -284(%ebp)
.L106:
	leal -296(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 OldLex__Real,.Lfe7-OldLex__Real
	.align 16
	.type	 OldLex__LongReal,@function
OldLex__LongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $292,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L108:
	movl $MM_OldLex+140,-264(%ebp)
	movl $4,-268(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-272(%ebp)
	leal -272(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %ebx,%ebx
.L109:
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L111
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	movb %al,-292(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	xorl %eax,%eax
	movb -292(%ebp),%al
	pushl %eax
	call set_member
	addl $12,%esp
	testl %eax,%eax
	je .L112
	cmpl $255,%ebx
	jg .L109
	jbe .L114
	pushl $3041
	call _m3_fault
	.align 16
.L114:
	movb -292(%ebp),%dl
	movb %dl,-256(%ebx,%ebp)
	incl %ebx
	jmp .L109
	.align 16
.L112:
	pushl %esi
	movl MI_Rd+88,%eax
	call *%eax
	addl $4,%esp
.L111:
	testl %ebx,%ebx
	jge .L116
	pushl $3153
	call _m3_fault
	.align 16
.L116:
	cmpl $256,%ebx
	jle .L117
	pushl $3153
	call _m3_fault
	.align 16
.L117:
	movl %ebx,-276(%ebp)
	leal -256(%ebp),%edx
	movl %edx,-280(%ebp)
	leal -260(%ebp),%eax
	pushl %eax
	leal -280(%ebp),%eax
	pushl %eax
	movl MI_Convert+96,%eax
	call *%eax
	fstpl -288(%ebp)
	addl $8,%esp
	cmpl %ebx,-260(%ebp)
	je .L118
	pushl $0
	pushl $MI_OldLex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L118:
	movl -272(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -288(%ebp)
.L119:
	leal -300(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 OldLex__LongReal,.Lfe8-OldLex__LongReal
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_OldLex
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_OldLex
.data
	.align 4
	.type	 MM_OldLex,@object
	.size	 MM_OldLex,448
MM_OldLex:
	.long MM_OldLex+304
	.zero	16
	.long MM_OldLex+204
	.zero	20
	.long OldLex__Scan
	.long OldLex__Skip
	.long OldLex__Match
	.long OldLex__Bool
	.long OldLex__Int
	.long OldLex__Unsigned
	.long OldLex__Real
	.long OldLex__LongReal
	.long MI_Rd+64
	.zero	4
	.long 2
	.long MM_OldLex+96
	.long 1
	.zero	4
	.long MI_OldLex+44
	.long MI_Rd+64
	.zero	4
.byte 84
.byte 82
.byte 85
.byte 69
.byte 84
.byte 114
.byte 117
.byte 101
.byte 116
.byte 114
.byte 117
.byte 101
.byte 70
.byte 65
.byte 76
.byte 83
.byte 69
.byte 70
.byte 97
.byte 108
.byte 115
.byte 101
.byte 102
.byte 97
.byte 108
.byte 115
.byte 101
	.zero	1
	.long MI_Convert+44
	.long MI_OldLex+44
	.long MI_Rd+64
	.zero	4
	.ascii	"LongReal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"Unsigned"
	.zero	1
	.ascii	"Int"
	.zero	1
	.ascii	"Bool"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"Skip"
	.zero	1
	.ascii	"Scan"
	.zero	1
	.long OldLex__LongReal
	.long MM_OldLex+156
	.long MI_OldLex+316
	.long OldLex__Real
	.long MM_OldLex+165
	.long MI_OldLex+312
	.long OldLex__Unsigned
	.long MM_OldLex+170
	.long MI_OldLex+308
	.long OldLex__Int
	.long MM_OldLex+179
	.long MI_OldLex+304
	.long OldLex__Bool
	.long MM_OldLex+183
	.long MI_OldLex+300
	.long OldLex__Match
	.long MM_OldLex+188
	.long MI_OldLex+296
	.long OldLex__Skip
	.long MM_OldLex+194
	.long MI_OldLex+292
	.long OldLex__Scan
	.long MM_OldLex+199
	.long MI_OldLex+288
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/fmtlex/OldLex.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
