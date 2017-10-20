	.file	"FmtBuf.mc"
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
	.type	 FmtBuf__Int,@function
FmtBuf__Int:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 12(%ebp),%edx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $0
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Convert+64,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $16,%esp
	testl %edx,%edx
	jge .L3
	pushl $257
	call _m3_fault
	.align 16
.L3:
	movl %edx,%eax
.L4:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 FmtBuf__Int,.Lfe1-FmtBuf__Int
	.align 16
	.type	 FmtBuf__Unsigned,@function
FmtBuf__Unsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 12(%ebp),%edx
.L6:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $0
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Convert+68,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $16,%esp
	testl %edx,%edx
	jge .L7
	pushl $353
	call _m3_fault
	.align 16
.L7:
	movl %edx,%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FmtBuf__Unsigned,.Lfe2-FmtBuf__Unsigned
	.align 16
	.type	 FmtBuf__Real,@function
FmtBuf__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %esi
	leal -40(%ebp),%eax
	pushl %ebx
	movb 16(%ebp),%bl
	movl 20(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_RealFloat+96,%eax
	call *%eax
	xorl %eax,%eax
	movb -40(%ebp),%al
	addl $8,%esp
	movb MI_FmtBufF+44(%eax),%dl
	movb %dl,-20(%ebp)
	movb $0,-19(%ebp)
	movl $2,-16(%ebp)
	movb -39(%ebp),%al
	movb %al,-18(%ebp)
	cmpb $2,%dl
	jne .L10
	xorl %eax,%eax
	movb -38(%ebp),%al
	movl %eax,-12(%ebp)
	movl -28(%ebp),%eax
	movl %eax,-8(%ebp)
	movb -24(%ebp),%al
	movb %al,-4(%ebp)
.L10:
	movb %bl,-52(%ebp)
	movl %esi,-48(%ebp)
	movb 24(%ebp),%cl
	movb %cl,-44(%ebp)
	leal -37(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl $9,-56(%ebp)
	leal -52(%ebp),%eax
	pushl %eax
	leal -60(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBufF__Float
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 FmtBuf__Real,.Lfe3-FmtBuf__Real
	.align 16
	.type	 FmtBuf__LongReal,@function
FmtBuf__LongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %esi
	leal -48(%ebp),%eax
	pushl %ebx
	movb 20(%ebp),%bl
	movl 24(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_LongFloat+96,%eax
	call *%eax
	xorl %eax,%eax
	movb -48(%ebp),%al
	addl $12,%esp
	movb MI_FmtBufF+50(%eax),%dl
	movb %dl,-20(%ebp)
	movb $1,-19(%ebp)
	movl $3,-16(%ebp)
	movb -47(%ebp),%al
	movb %al,-18(%ebp)
	cmpb $2,%dl
	jne .L12
	xorl %eax,%eax
	movb -46(%ebp),%al
	movl %eax,-12(%ebp)
	movl -28(%ebp),%eax
	movl %eax,-8(%ebp)
	movb -24(%ebp),%al
	movb %al,-4(%ebp)
.L12:
	movb %bl,-60(%ebp)
	movl %esi,-56(%ebp)
	movb 28(%ebp),%cl
	movb %cl,-52(%ebp)
	leal -45(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl $17,-64(%ebp)
	leal -60(%ebp),%eax
	pushl %eax
	leal -68(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBufF__Float
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 FmtBuf__LongReal,.Lfe4-FmtBuf__LongReal
	.align 16
	.type	 FmtBuf__Extended,@function
FmtBuf__Extended:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %esi
	leal -48(%ebp),%eax
	pushl %ebx
	movb 20(%ebp),%bl
	movl 24(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl 16(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_ExtendedFloat+96,%eax
	call *%eax
	xorl %eax,%eax
	movb -48(%ebp),%al
	addl $12,%esp
	movb MI_FmtBufF+56(%eax),%dl
	movb %dl,-20(%ebp)
	movb $2,-19(%ebp)
	movl $3,-16(%ebp)
	movb -47(%ebp),%al
	movb %al,-18(%ebp)
	cmpb $2,%dl
	jne .L14
	xorl %eax,%eax
	movb -46(%ebp),%al
	movl %eax,-12(%ebp)
	movl -28(%ebp),%eax
	movl %eax,-8(%ebp)
	movb -24(%ebp),%al
	movb %al,-4(%ebp)
.L14:
	movb %bl,-60(%ebp)
	movl %esi,-56(%ebp)
	movb 28(%ebp),%cl
	movb %cl,-52(%ebp)
	leal -45(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl $17,-64(%ebp)
	leal -60(%ebp),%eax
	pushl %eax
	leal -68(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBufF__Float
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FmtBuf__Extended,.Lfe5-FmtBuf__Extended
	.align 16
	.type	 FmtBufF__Float,@function
FmtBufF__Float:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	xorl %eax,%eax
	movb (%edx),%al
	testl %eax,%eax
	jle .L16
	cmpl $1,%eax
	jle .L17
	cmpl $2,%eax
	jle .L18
	cmpl $3,%eax
	jle .L19
.L16:
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__NaN
	jmp .L22
	.align 16
.L17:
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__Inf
	jmp .L22
	.align 16
.L19:
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__Zero
	jmp .L22
	.align 16
.L18:
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__Number
.L22:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FmtBufF__Float,.Lfe6-FmtBufF__Float
	.align 16
	.type	 FmtBuf__SciWidth,@function
FmtBuf__SciWidth:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 4(%ebx),%eax
	movl %eax,%ecx
	addl 12(%ebp),%ecx
	leal 5(%ecx),%edx
	testl %eax,%eax
	jne .L24
	cmpb $0,8(%ebx)
	je .L25
	leal 6(%ecx),%edx
	jmp .L24
	.align 16
.L25:
	leal 4(%ecx),%eax
	testl %eax,%eax
	jge .L27
	pushl $2017
	call _m3_fault
	.align 16
.L27:
	movl %eax,%edx
.L24:
	movl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 FmtBuf__SciWidth,.Lfe7-FmtBuf__SciWidth
	.align 16
	.type	 FmtBuf__NaN,@function
FmtBuf__NaN:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%eax
	cmpb $0,8(%eax)
	je .L29
	movl 12(%ebp),%eax
	movb 1(%eax),%al
	andl $255,%eax
	movl MM_FmtBuf+48(,%eax,4),%eax
	jmp .L30
	.align 16
.L29:
	movl $MM_FmtBuf+536,%eax
.L30:
	pushl $0
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__Special
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 FmtBuf__NaN,.Lfe8-FmtBuf__NaN
	.align 16
	.type	 FmtBuf__Inf,@function
FmtBuf__Inf:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%eax
	xorb %cl,%cl
	cmpb $0,8(%eax)
	je .L32
	movl 12(%ebp),%eax
	movb 1(%eax),%al
	andl $255,%eax
	movl MM_FmtBuf+60(,%eax,4),%edx
	jmp .L33
	.align 16
.L32:
	movl $MM_FmtBuf+552,%edx
	movb $1,%cl
.L33:
	xorl %eax,%eax
	movb %cl,%al
	pushl %eax
	pushl %edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__Special
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 FmtBuf__Inf,.Lfe9-FmtBuf__Inf
	.align 16
	.type	 FmtBuf__Special__AppendBlanks.0,@function
FmtBuf__Special__AppendBlanks.0:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	testl %esi,%esi
	jg .L37
	pushl $2992
	call _m3_fault
	.align 16
.L37:
	movl $20,%eax
	cmpl %esi,%eax
	jle .L38
	movl %esi,%eax
.L38:
	testl %eax,%eax
	jge .L39
	pushl $3025
	call _m3_fault
	.align 16
.L39:
	movl %eax,%ebx
	movl (%edi),%ecx
	movl %ebx,-8(%ebp)
	movl 8(%ebp),%edx
	leal (%ebx,%ecx),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L40
	pushl $3041
	call _m3_fault
	.align 16
.L40:
	movl (%edx),%edx
	addl %ecx,%edx
	movl %edx,-12(%ebp)
	cmpl $20,%ebx
	jle .L41
	pushl $3041
	call _m3_fault
	.align 16
.L41:
	movl %ebx,-16(%ebp)
	movl $MM_FmtBuf+132,%eax
	movl %eax,-20(%ebp)
	pushl %ebx
	pushl %eax
	pushl %edx
	call memmove
	movl %esi,%eax
	subl %ebx,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L43
	pushl $3057
	call _m3_fault
	.align 16
.L43:
	movl %eax,%esi
	addl %ebx,(%edi)
	testl %esi,%esi
	jne .L37
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 FmtBuf__Special__AppendBlanks.0,.Lfe10-FmtBuf__Special__AppendBlanks.0
	.align 16
	.type	 FmtBuf__Special,@function
FmtBuf__Special:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 20(%ebp),%edi
	movl 16(%ebp),%eax
	movl $0,-4(%ebp)
	cmpb $0,(%eax)
	je .L45
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%eax
	addl $4,%esp
	movb 2(%eax),%al
	andl $255,%eax
	movl %eax,-4(%ebp)
	cmpl $1,%eax
	jne .L47
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L48
	pushl $3218
	call _m3_fault
	.align 16
.L48:
	movl (%eax),%eax
	movb $45,(%eax)
.L47:
	movl %ebx,-8(%ebp)
	movl -4(%ebp),%ecx
	movl 8(%ebp),%edx
	leal (%ebx,%ecx),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L49
	pushl $3233
	call _m3_fault
	.align 16
.L49:
	movl (%edx),%edx
	leal (%ecx,%edx),%esi
	movl %esi,-12(%ebp)
	testl %edi,%edi
	jne .L50
	pushl $3236
	call _m3_fault
	.align 16
.L50:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L51
	pushl $3233
	call _m3_fault
	.align 16
.L51:
	movl (%edi),%eax
	movl %eax,-20(%ebp)
	pushl %ebx
	pushl %eax
	leal (%ecx,%edx),%eax
	pushl %eax
	call memmove
	addl %ebx,-4(%ebp)
	jmp .L53
	.align 16
.L45:
	movl 12(%ebp),%eax
	cmpb $0,2(%eax)
	jne .L54
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L55
	pushl $3314
	call _m3_fault
	.align 16
.L55:
	movl (%eax),%eax
	movb $32,(%eax)
	jmp .L56
	.align 16
.L54:
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L57
	pushl $3330
	call _m3_fault
	.align 16
.L57:
	movl (%eax),%eax
	movb $45,(%eax)
.L56:
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-44(%ebp)
	movl 12(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	call FmtBuf__SciWidth
	movl %eax,-40(%ebp)
	addl $12,%esp
	cmpl %eax,-44(%ebp)
	jl .L58
	cmpb $0,24(%ebp)
	je .L58
	pushl $3
	pushl %ebx
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	movl %eax,%edx
	movl $3,%ebx
	addl $12,%esp
	jmp .L59
	.align 16
.L58:
	movl %edi,%edx
	movl -44(%ebp),%ebx
.L59:
	movl %ebx,-24(%ebp)
	movl 8(%ebp),%ecx
	movl %ebx,%esi
	movl 4(%ecx),%eax
	decl %eax
	subl %eax,%esi
	movl %esi,%eax
	testl %eax,%eax
	jle .L60
	pushl $3505
	call _m3_fault
	.align 16
.L60:
	movl (%ecx),%ecx
	leal 1(%ecx),%esi
	movl %esi,-28(%ebp)
	testl %edx,%edx
	jne .L61
	pushl $3508
	call _m3_fault
	.align 16
.L61:
	movl %ebx,-32(%ebp)
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L62
	pushl $3505
	call _m3_fault
	.align 16
.L62:
	movl (%edx),%eax
	movl %eax,-36(%ebp)
	pushl %ebx
	pushl %eax
	leal 1(%ecx),%eax
	pushl %eax
	call memmove
	leal 1(%ebx),%esi
	movl %esi,-4(%ebp)
	leal 1(%ebx),%eax
	movl -40(%ebp),%esi
	subl %eax,%esi
	movl %esi,%eax
	addl $12,%esp
	testl %eax,%eax
	jle .L53
	pushl %eax
	leal -4(%ebp),%eax
	movl %ebp,%ecx
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__Special__AppendBlanks.0
.L53:
	leal -56(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 FmtBuf__Special,.Lfe11-FmtBuf__Special
	.align 16
	.type	 FmtBuf__AppendZeros,@function
FmtBuf__AppendZeros:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	testl %esi,%esi
	jg .L69
	pushl $3904
	call _m3_fault
	.align 16
.L69:
	movl $20,%eax
	cmpl %esi,%eax
	jle .L70
	movl %esi,%eax
.L70:
	testl %eax,%eax
	jge .L71
	pushl $3937
	call _m3_fault
	.align 16
.L71:
	movl %eax,%ebx
	movl (%edi),%ecx
	movl %ebx,-4(%ebp)
	movl 8(%ebp),%edx
	leal (%ebx,%ecx),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L72
	pushl $3953
	call _m3_fault
	.align 16
.L72:
	movl (%edx),%edx
	addl %ecx,%edx
	movl %edx,-8(%ebp)
	cmpl $20,%ebx
	jle .L73
	pushl $3953
	call _m3_fault
	.align 16
.L73:
	movl %ebx,-12(%ebp)
	movl $MM_FmtBuf+152,%eax
	movl %eax,-16(%ebp)
	pushl %ebx
	pushl %eax
	pushl %edx
	call memmove
	movl %esi,%eax
	subl %ebx,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L75
	pushl $3969
	call _m3_fault
	.align 16
.L75:
	movl %eax,%esi
	addl %ebx,(%edi)
	testl %esi,%esi
	jne .L69
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 FmtBuf__AppendZeros,.Lfe12-FmtBuf__AppendZeros
	.align 16
	.type	 FmtBuf__Zero,@function
FmtBuf__Zero:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %ebx
	movl 16(%ebp),%eax
	movl $0,-4(%ebp)
	cmpl $0,4(%eax)
	jne .L78
	cmpb $0,8(%eax)
	je .L78
	movl $1,%ecx
	jmp .L79
	.align 16
.L78:
	movl 16(%ebp),%eax
	movl 4(%eax),%ecx
.L79:
	movl 16(%ebp),%edx
	xorl %eax,%eax
	movb (%edx),%al
	testl %eax,%eax
	jle .L80
	cmpl $1,%eax
	jle .L81
	cmpl $2,%eax
	jle .L82
.L80:
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L83
	pushl $4178
	call _m3_fault
	.align 16
.L83:
	movl (%eax),%edx
	movl 12(%ebp),%eax
	movb 2(%eax),%al
	andl $255,%eax
	movb MM_FmtBuf+84(%eax),%al
	movb %al,(%edx)
	movl 8(%ebp),%eax
	cmpl $1,4(%eax)
	ja .L84
	pushl $4178
	call _m3_fault
	.align 16
.L84:
	movl (%eax),%eax
	movb $48,1(%eax)
	movl $2,-4(%ebp)
	testl %ecx,%ecx
	jle .L85
	movl 8(%ebp),%eax
	movl $2,%edx
	cmpl %edx,4(%eax)
	ja .L86
	pushl $4210
	call _m3_fault
	.align 16
.L86:
	movl (%eax),%eax
	movb $46,(%edx,%eax)
	incl -4(%ebp)
	pushl %ecx
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__AppendZeros
	addl $12,%esp
.L85:
	movl 16(%ebp),%eax
	cmpb $0,8(%eax)
	je .L87
	movl 12(%ebp),%eax
	movb 1(%eax),%al
	testb %al,%al
	je .L87
	movl 8(%ebp),%edx
	movl -4(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L88
	pushl $4274
	call _m3_fault
	.align 16
.L88:
	andl $255,%eax
	movl (%edx),%edx
	movb MM_FmtBuf+86(%eax),%al
	movb %al,(%ecx,%edx)
	movl -4(%ebp),%ecx
	movl 8(%ebp),%edx
	leal 1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L89
	pushl $4274
	call _m3_fault
	.align 16
.L89:
	movl (%edx),%eax
	movb $48,1(%ecx,%eax)
	addl $2,-4(%ebp)
.L87:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	call FmtBuf__SciWidth
	movl -4(%ebp),%edx
	movl %eax,%ebx
	subl %edx,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jg .L91
	pushl $4352
	call _m3_fault
	.align 16
.L91:
	movl %ebx,-8(%ebp)
	movl 8(%ebp),%ecx
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L92
	pushl $4417
	call _m3_fault
	.align 16
.L92:
	addl (%ecx),%edx
	movl %edx,-12(%ebp)
	cmpl $5,%ebx
	jle .L94
	pushl $4417
	call _m3_fault
	.align 16
.L94:
	movl %ebx,-16(%ebp)
	movl $MM_FmtBuf+569,%eax
	movl %eax,-20(%ebp)
	pushl %ebx
	pushl %eax
	pushl %edx
	call memmove
	movl -4(%ebp),%eax
	addl %ebx,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L96
	pushl $4433
	call _m3_fault
	.align 16
.L96:
	movl %eax,-4(%ebp)
	jmp .L97
	.align 16
.L81:
	movl 12(%ebp),%eax
	cmpb $1,2(%eax)
	jne .L98
	movl 8(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L99
	pushl $4482
	call _m3_fault
	.align 16
.L99:
	movl (%eax),%eax
	movb $45,(%eax)
.L98:
	movl 12(%ebp),%eax
	xorl %edx,%edx
	movb 2(%eax),%dl
	movl 8(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L100
	pushl $4498
	call _m3_fault
	.align 16
.L100:
	movl (%eax),%eax
	movb $48,(%edx,%eax)
	movl 12(%ebp),%eax
	movb 2(%eax),%al
	andl $255,%eax
	leal 1(%eax),%edx
	movl %edx,-4(%ebp)
	testl %ecx,%ecx
	jle .L101
	movl 8(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L102
	pushl $4530
	call _m3_fault
	.align 16
.L102:
	movl (%eax),%eax
	movb $46,(%edx,%eax)
	incl -4(%ebp)
	pushl %ecx
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call FmtBuf__AppendZeros
	addl $12,%esp
.L101:
	movl 16(%ebp),%eax
	cmpb $0,8(%eax)
	je .L97
	movl 12(%ebp),%eax
	movb 1(%eax),%al
	testb %al,%al
	je .L97
	movl 8(%ebp),%edx
	movl -4(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L104
	pushl $4594
	call _m3_fault
	.align 16
.L104:
	andl $255,%eax
	movl (%edx),%edx
	movb MM_FmtBuf+86(%eax),%al
	movb %al,(%ecx,%edx)
	movl -4(%ebp),%ecx
	movl 8(%ebp),%edx
	leal 1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L105
	pushl $4594
	call _m3_fault
	.align 16
.L105:
	movl (%edx),%eax
	movb $48,1(%ecx,%eax)
	addl $2,-4(%ebp)
	jmp .L97
	.align 16
.L82:
	cmpb $0,8(%edx)
	je .L106
	movl 12(%ebp),%eax
	xorl %edx,%edx
	movb 2(%eax),%dl
	movb 1(%eax),%al
	andl $255,%eax
	leal (%edx,%edx,2),%edx
	sall $2,%edx
	movl MM_FmtBuf+576(%edx,%eax,4),%ebx
	jmp .L107
	.align 16
.L106:
	movl 12(%ebp),%eax
	movb 2(%eax),%al
	andl $255,%eax
	movl MM_FmtBuf+600(,%eax,4),%ebx
.L107:
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	movl %edx,-24(%ebp)
	movl 8(%ebp),%ecx
	addl $4,%esp
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L108
	pushl $4833
	call _m3_fault
	.align 16
.L108:
	movl (%ecx),%ecx
	movl %ecx,-28(%ebp)
	testl %ebx,%ebx
	jne .L109
	pushl $4836
	call _m3_fault
	.align 16
.L109:
	movl %edx,-32(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L110
	pushl $4833
	call _m3_fault
	.align 16
.L110:
	movl (%ebx),%eax
	movl %eax,-36(%ebp)
	pushl %edx
	pushl %eax
	pushl %ecx
	call memmove
.L97:
	movl -4(%ebp),%eax
	movl -40(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 FmtBuf__Zero,.Lfe13-FmtBuf__Zero
	.align 16
	.type	 FmtBuf__Number__FmtNum.1,@function
FmtBuf__Number__FmtNum.1:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	movl $0,-8(%ebp)
	movl 12(%ebp),%edi
	movl %edi,-32(%ebp)
	cmpl $0,16(%ebp)
	jg .L115
	movl -12(%esi),%eax
	movl (%eax),%eax
	movl -8(%esi),%edx
	cmpl %edx,4(%eax)
	ja .L116
	pushl $5458
	call _m3_fault
	.align 16
.L116:
	movl (%eax),%eax
	movb $48,(%edx,%eax)
	incl -8(%esi)
	jmp .L117
	.align 16
.L115:
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	cmpl %edi,%eax
	jle .L118
	movl 16(%ebp),%eax
.L118:
	testl %eax,%eax
	jge .L119
	pushl $5489
	call _m3_fault
	.align 16
.L119:
	movl %eax,-8(%ebp)
	xorl %ecx,%ecx
	movl %eax,%edi
	decl %edi
	movl %edi,-12(%ebp)
	jmp .L120
	.align 16
.L121:
	movl -12(%esi),%eax
	movl -8(%esi),%edi
	movl (%eax),%ebx
	movl %edi,-16(%ebp)
	cmpl %edi,4(%ebx)
	ja .L122
	pushl $5538
	call _m3_fault
	.align 16
.L122:
	movl 8(%eax),%eax
	cmpl %ecx,4(%eax)
	ja .L123
	pushl $5538
	call _m3_fault
	.align 16
.L123:
	movl (%eax),%eax
	movb (%ecx,%eax),%al
	andl $255,%eax
	leal 48(%eax),%edx
	cmpl $255,%edx
	jbe .L124
	pushl $5537
	call _m3_fault
	.align 16
.L124:
	movl (%ebx),%eax
	movl -16(%ebp),%edi
	incl %ecx
	movb %dl,(%edi,%eax)
	incl -8(%esi)
.L120:
	cmpl %ecx,-12(%ebp)
	jge .L121
	movl 16(%ebp),%edi
	cmpl %edi,8(%ebp)
	jge .L117
	movl %edi,%eax
	subl 8(%ebp),%eax
	jns .L127
	pushl $5585
	call _m3_fault
	.align 16
.L127:
	pushl %eax
	leal -8(%esi),%eax
	pushl %eax
	movl -12(%esi),%eax
	movl (%eax),%eax
	pushl %eax
	call FmtBuf__AppendZeros
	addl $12,%esp
.L117:
	cmpl $0,12(%ebp)
	jne .L128
	movl -12(%esi),%edx
	movl 12(%edx),%eax
	cmpb $0,8(%eax)
	je .L114
	movl (%edx),%eax
	movl -8(%esi),%edx
	cmpl %edx,4(%eax)
	ja .L130
	pushl $5666
	call _m3_fault
	.align 16
.L130:
	movl (%eax),%eax
	movb $46,(%edx,%eax)
	movl -12(%esi),%eax
	movl -8(%esi),%ecx
	movl (%eax),%eax
	leal 1(%ecx),%edx
	cmpl %edx,4(%eax)
	ja .L131
	pushl $5666
	call _m3_fault
	.align 16
.L131:
	movl (%eax),%eax
	movb $48,1(%ecx,%eax)
	addl $2,-8(%esi)
	jmp .L114
	.align 16
.L128:
	movl -12(%esi),%eax
	movl (%eax),%eax
	movl -8(%esi),%edx
	cmpl %edx,4(%eax)
	ja .L132
	pushl $5746
	call _m3_fault
	.align 16
.L132:
	movl (%eax),%eax
	movb $46,(%edx,%eax)
	incl -8(%esi)
	cmpl $0,16(%ebp)
	jg .L150
	movl 16(%ebp),%eax
	testl %eax,%eax
	jge .L134
	negl %eax
.L134:
	movl -32(%ebp),%ebx
	cmpl %eax,%ebx
	jle .L135
	movl %eax,%ebx
.L135:
	testl %ebx,%ebx
	jle .L133
	pushl %ebx
	leal -8(%esi),%eax
	pushl %eax
	movl -12(%esi),%eax
	movl (%eax),%eax
	pushl %eax
	call FmtBuf__AppendZeros
	movl -32(%ebp),%eax
	subl %ebx,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L138
	pushl $5825
	call _m3_fault
	.align 16
.L138:
	movl %eax,-32(%ebp)
.L133:
	cmpl $0,16(%ebp)
	jle .L139
.L150:
	movl 8(%ebp),%edi
	cmpl %edi,16(%ebp)
	jge .L140
.L139:
	movl 8(%ebp),%eax
	subl -8(%ebp),%eax
	movl -32(%ebp),%ebx
	cmpl %eax,%ebx
	jle .L141
	movl %eax,%ebx
.L141:
	movl %ebx,-20(%ebp)
	movl -8(%ebp),%ecx
	leal -1(%ebx,%ecx),%edi
	movl %edi,-24(%ebp)
	jmp .L142
	.align 16
.L143:
	movl -12(%esi),%eax
	movl -8(%esi),%edi
	movl (%eax),%ebx
	movl %edi,-28(%ebp)
	cmpl %edi,4(%ebx)
	ja .L144
	pushl $5938
	call _m3_fault
	.align 16
.L144:
	movl 8(%eax),%eax
	cmpl %ecx,4(%eax)
	ja .L145
	pushl $5938
	call _m3_fault
	.align 16
.L145:
	movl (%eax),%eax
	movb (%ecx,%eax),%al
	andl $255,%eax
	leal 48(%eax),%edx
	cmpl $255,%edx
	jbe .L146
	pushl $5937
	call _m3_fault
	.align 16
.L146:
	movl (%ebx),%eax
	movl -28(%ebp),%edi
	incl %ecx
	movb %dl,(%edi,%eax)
	incl -8(%esi)
.L142:
	cmpl %ecx,-24(%ebp)
	jge .L143
	movl -32(%ebp),%eax
	subl -20(%ebp),%eax
	jns .L148
	pushl $5969
	call _m3_fault
	.align 16
.L148:
	movl %eax,-32(%ebp)
.L140:
	cmpl $0,-32(%ebp)
	jle .L114
	movl -32(%ebp),%edi
	pushl %edi
	leal -8(%esi),%eax
	pushl %eax
	movl -12(%esi),%eax
	movl (%eax),%eax
	pushl %eax
	call FmtBuf__AppendZeros
.L114:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 FmtBuf__Number__FmtNum.1,.Lfe14-FmtBuf__Number__FmtNum.1
	.align 16
	.type	 FmtBuf__Number__DelTrailingZeros.2,@function
FmtBuf__Number__DelTrailingZeros.2:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ecx
.L152:
	movl -8(%ecx),%ebx
	leal -1(%ebx),%edx
	testl %edx,%edx
	jge .L153
	pushl $6113
	call _m3_fault
	.align 16
.L153:
	movl -12(%ecx),%esi
	movl %edx,-8(%ecx)
	movl (%esi),%eax
	cmpl %edx,4(%eax)
	ja .L154
	pushl $6114
	call _m3_fault
	.align 16
.L154:
	movl (%eax),%eax
	movb (%edx,%eax),%al
	andl $255,%eax
	cmpl $48,%eax
	je .L152
	cmpl $46,%eax
	jne .L157
	movl 12(%esi),%eax
	cmpb $0,8(%eax)
	je .L158
	movl -12(%ecx),%eax
	movl %ebx,-8(%ecx)
	movl (%eax),%eax
	cmpl %ebx,4(%eax)
	ja .L159
	pushl $6162
	call _m3_fault
	.align 16
.L159:
	movl (%eax),%eax
	movb $48,(%ebx,%eax)
	jmp .L157
	.align 16
.L158:
	leal -2(%ebx),%eax
	testl %eax,%eax
	jge .L161
	pushl $6177
	call _m3_fault
	.align 16
.L161:
	movl %eax,-8(%ecx)
.L157:
	leal -12(%ebp),%esp
	incl -8(%ecx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 FmtBuf__Number__DelTrailingZeros.2,.Lfe15-FmtBuf__Number__DelTrailingZeros.2
	.align 16
	.type	 FmtBuf__Number__FmtExp.3,@function
FmtBuf__Number__FmtExp.3:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
	movl -12(%esi),%ecx
	movl 12(%ecx),%eax
	cmpb $0,8(%eax)
	je .L163
	movl (%ecx),%eax
	movl -8(%esi),%ebx
	cmpl %ebx,4(%eax)
	ja .L164
	pushl $6466
	call _m3_fault
	.align 16
.L164:
	movl (%eax),%edx
	movl 4(%ecx),%eax
	movb 1(%eax),%al
	andl $255,%eax
	movb MM_FmtBuf+86(%eax),%al
	movb %al,(%ebx,%edx)
	jmp .L165
	.align 16
.L163:
	movl (%ecx),%eax
	movl -8(%esi),%edx
	cmpl %edx,4(%eax)
	ja .L166
	pushl $6482
	call _m3_fault
	.align 16
.L166:
	movl (%eax),%eax
	movb $101,(%edx,%eax)
.L165:
	incl -8(%esi)
	leal -8(%ebp),%edi
	movl %edi,-16(%ebp)
	movl $3,-12(%ebp)
	pushl $10
	movl 8(%ebp),%eax
	testl %eax,%eax
	jge .L167
	negl %eax
.L167:
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call FmtBuf__Unsigned
	movl %eax,-36(%ebp)
	addl $12,%esp
	cmpb $0,12(%ebp)
	je .L168
	cmpl $0,8(%ebp)
	jge .L171
	movl -12(%esi),%eax
	movl (%eax),%eax
	movl -8(%esi),%edx
	cmpl %edx,4(%eax)
	ja .L170
	pushl $6562
	call _m3_fault
	.align 16
.L170:
	movl (%eax),%eax
	movb $45,(%edx,%eax)
	incl -8(%esi)
	jmp .L171
	.align 16
.L168:
	movl -12(%esi),%eax
	movl (%eax),%eax
	movl -8(%esi),%ebx
	cmpl %ebx,4(%eax)
	ja .L172
	pushl $6594
	call _m3_fault
	.align 16
.L172:
	movl 8(%ebp),%ecx
	shrl $31,%ecx
	cmpl $1,%ecx
	jbe .L173
	pushl $6593
	call _m3_fault
	.align 16
.L173:
	movl (%eax),%edx
	movb MM_FmtBuf+172(%ecx),%al
	movb %al,(%ebx,%edx)
	movl -12(%esi),%eax
	incl -8(%esi)
	movl 4(%eax),%eax
	movl 4(%eax),%ebx
	subl -36(%ebp),%ebx
	testl %ebx,%ebx
	jle .L171
	movl %ebx,-12(%ebp)
	movl -12(%esi),%edx
	movl -8(%esi),%ecx
	movl (%edx),%edx
	leal (%ebx,%ecx),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L176
	pushl $6689
	call _m3_fault
	.align 16
.L176:
	movl (%edx),%edx
	addl %ecx,%edx
	movl %edx,-16(%ebp)
	cmpl $3,%ebx
	jle .L178
	pushl $6689
	call _m3_fault
	.align 16
.L178:
	movl %ebx,-20(%ebp)
	movl $MM_FmtBuf+755,%eax
	movl %eax,-24(%ebp)
	pushl %ebx
	pushl %eax
	pushl %edx
	call memmove
	movl -8(%esi),%eax
	addl %ebx,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L180
	pushl $6705
	call _m3_fault
	.align 16
.L180:
	movl %eax,-8(%esi)
.L171:
	movl -36(%ebp),%edi
	movl %edi,-12(%ebp)
	movl -12(%esi),%edx
	movl -8(%esi),%ecx
	movl (%edx),%edx
	leal (%edi,%ecx),%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L181
	pushl $6769
	call _m3_fault
	.align 16
.L181:
	movl (%edx),%edx
	addl %ecx,%edx
	movl %edx,-16(%ebp)
	cmpl $3,-36(%ebp)
	jle .L182
	pushl $6769
	call _m3_fault
	.align 16
.L182:
	movl -36(%ebp),%edi
	movl %edi,-28(%ebp)
	leal -8(%ebp),%eax
	movl %eax,-32(%ebp)
	pushl %edi
	pushl %eax
	pushl %edx
	call memmove
	leal -48(%ebp),%esp
	addl %edi,-8(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 FmtBuf__Number__FmtExp.3,.Lfe16-FmtBuf__Number__FmtExp.3
	.align 16
	.type	 FmtBuf__Number,@function
FmtBuf__Number:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
	movl $0,-8(%ebp)
	movl 12(%ebp),%ecx
	movl 20(%ebp),%edx
	movl 12(%ecx),%ebx
	xorl %eax,%eax
	movb (%edx),%al
	testl %eax,%eax
	jle .L184
	cmpl $1,%eax
	jle .L185
	cmpl $2,%eax
	jle .L186
.L184:
	movl 4(%edx),%edx
	incl %edx
	movl %edx,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ecx
	call FmtBuf__Round
	addl $12,%esp
	testb %al,%al
	je .L187
	incl %ebx
.L187:
	movl 8(%ebp),%eax
	movl -8(%ebp),%edx
	cmpl %edx,4(%eax)
	ja .L188
	pushl $6946
	call _m3_fault
	.align 16
.L188:
	addl (%eax),%edx
	movl 12(%ebp),%eax
	movb 2(%eax),%al
	andl $255,%eax
	movb MM_FmtBuf+84(%eax),%al
	movb %al,(%edx)
	incl -8(%ebp)
	movl -4(%ebp),%edx
	testl %edx,%edx
	jge .L189
	pushl $6961
	call _m3_fault
	.align 16
.L189:
	pushl $1
	movl 20(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %edx
	call FmtBuf__Number__FmtNum.1
	pushl $0
	jmp .L217
	.align 16
.L185:
	leal 1(%ebx),%esi
	movl 4(%edx),%edx
	addl %esi,%edx
	movl %edx,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ecx
	call FmtBuf__Round
	addl $12,%esp
	testb %al,%al
	je .L191
	movl -4(%ebp),%eax
	testl %eax,%eax
	jle .L192
	xorl %eax,%eax
.L192:
	testl %eax,%eax
	jge .L193
	negl %eax
.L193:
	leal (%esi,%eax),%ebx
.L191:
	movl 12(%ebp),%eax
	cmpb $1,2(%eax)
	jne .L194
	movl 8(%ebp),%eax
	movl -8(%ebp),%edx
	cmpl %edx,4(%eax)
	ja .L195
	pushl $7058
	call _m3_fault
	.align 16
.L195:
	movl (%eax),%eax
	addl %edx,%eax
	movb $45,(%eax)
	incl -8(%ebp)
.L194:
	movl -4(%ebp),%edx
	testl %edx,%edx
	jge .L196
	pushl $7073
	call _m3_fault
	.align 16
.L196:
	leal 1(%ebx),%eax
	pushl %eax
	movl 20(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %edx
	call FmtBuf__Number__FmtNum.1
	movl 20(%ebp),%eax
	addl $12,%esp
	cmpb $0,8(%eax)
	je .L190
	movl 12(%ebp),%eax
	movb 1(%eax),%al
	testb %al,%al
	je .L190
	movl 8(%ebp),%edx
	movl -8(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L198
	pushl $7106
	call _m3_fault
	.align 16
.L198:
	movl (%edx),%edx
	andl $255,%eax
	addl %ecx,%edx
	movb MM_FmtBuf+86(%eax),%al
	movb %al,(%edx)
	movl -8(%ebp),%ecx
	movl 8(%ebp),%edx
	leal 1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L215
	pushl $7106
	call _m3_fault
	.align 16
.L186:
	movl 4(%edx),%edx
	incl %edx
	movl %edx,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ecx
	call FmtBuf__Round
	addl $12,%esp
	testb %al,%al
	je .L200
	incl %ebx
.L200:
	movl 12(%ebp),%eax
	cmpb $1,2(%eax)
	jne .L201
	movl 8(%ebp),%eax
	movl -8(%ebp),%edx
	cmpl %edx,4(%eax)
	ja .L202
	pushl $7202
	call _m3_fault
	.align 16
.L202:
	movl (%eax),%eax
	addl %edx,%eax
	movb $45,(%eax)
	incl -8(%ebp)
.L201:
	movl %ebx,%eax
	testl %ebx,%ebx
	jge .L204
	negl %eax
.L204:
	cmpl $5,%eax
	jle .L203
	movl -4(%ebp),%edx
	testl %edx,%edx
	jge .L205
	pushl $7233
	call _m3_fault
	.align 16
.L205:
	pushl $1
	movl 20(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl %ebp,%ecx
	pushl %edx
	call FmtBuf__Number__FmtNum.1
	movl 20(%ebp),%eax
	addl $12,%esp
	cmpl $0,4(%eax)
	jle .L206
	movl %ebp,%ecx
	call FmtBuf__Number__DelTrailingZeros.2
.L206:
	pushl $1
.L217:
	movl %ebp,%ecx
	pushl %ebx
	call FmtBuf__Number__FmtExp.3
	jmp .L190
	.align 16
.L203:
	incl %ebx
	movl %ebx,%ecx
	movl -4(%ebp),%edx
	movl 20(%ebp),%eax
	movl %edx,%edi
	subl %ebx,%edi
	movl %edi,%ebx
	movl 4(%eax),%eax
	cmpl %ebx,%eax
	jle .L208
	movl %eax,%ebx
.L208:
	testl %edx,%edx
	jge .L210
	pushl $7313
	call _m3_fault
	.align 16
.L210:
	testl %ebx,%ebx
	jge .L211
	pushl $7313
	call _m3_fault
	.align 16
.L211:
	pushl %ecx
	pushl %ebx
	movl %ebp,%ecx
	pushl %edx
	call FmtBuf__Number__FmtNum.1
	addl $12,%esp
	testl %ebx,%ebx
	jle .L212
	movl %ebp,%ecx
	call FmtBuf__Number__DelTrailingZeros.2
.L212:
	movl 20(%ebp),%eax
	cmpb $0,8(%eax)
	je .L190
	movl 12(%ebp),%eax
	movb 1(%eax),%al
	testb %al,%al
	je .L190
	movl 8(%ebp),%edx
	movl -8(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L214
	pushl $7378
	call _m3_fault
	.align 16
.L214:
	movl (%edx),%edx
	andl $255,%eax
	addl %ecx,%edx
	movb MM_FmtBuf+86(%eax),%al
	movb %al,(%edx)
	movl -8(%ebp),%ecx
	movl 8(%ebp),%edx
	leal 1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L215
	pushl $7378
	call _m3_fault
	.align 16
.L215:
	movl (%edx),%eax
	addl %ecx,%eax
	movb $48,1(%eax)
	addl $2,-8(%ebp)
.L190:
	leal -24(%ebp),%esp
	movl -8(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 FmtBuf__Number,.Lfe17-FmtBuf__Number
	.align 16
	.type	 FmtBuf__Round__NearestInc.4,@function
FmtBuf__Round__NearestInc.4:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -12(%ebx),%edx
	movl 8(%edx),%eax
	movl (%eax),%ecx
	testl %ecx,%ecx
	jl .L234
	movl (%edx),%eax
	movl 8(%eax),%eax
	cmpl %eax,%ecx
	jge .L222
	testl %eax,%eax
	jg .L223
.L222:
	pushl $8320
	call _m3_fault
	.align 16
.L223:
	movl 4(%edx),%eax
	cmpl %ecx,4(%eax)
	ja .L224
	pushl $8338
	call _m3_fault
	.align 16
.L224:
	movl (%eax),%eax
	movb (%ecx,%eax),%al
	andl $255,%eax
	cmpl $4,%eax
	jle .L234
	cmpl $5,%eax
	jg .L236
	leal 1(%ecx),%edx
	jmp .L228
	.align 16
.L229:
	incl %edx
.L228:
	movl -12(%ebx),%eax
	movl (%eax),%ecx
	cmpl %edx,8(%ecx)
	jle .L233
	movl 4(%eax),%eax
	cmpl %edx,4(%eax)
	ja .L231
	pushl $8434
	call _m3_fault
	.align 16
.L231:
	movl (%eax),%eax
	cmpb $0,(%edx,%eax)
	je .L229
	jmp .L236
	.align 16
.L233:
	movsbl 16(%ecx),%eax
	cmpl $-1,%eax
	jle .L234
	testl %eax,%eax
	jle .L235
	cmpl $1,%eax
	jle .L236
.L234:
	xorl %eax,%eax
	jmp .L239
	.align 16
.L235:
	xorl %eax,%eax
	movb 8(%ebp),%al
	jmp .L239
	.align 16
.L236:
	movl $1,%eax
.L239:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 FmtBuf__Round__NearestInc.4,.Lfe18-FmtBuf__Round__NearestInc.4
	.align 16
	.type	 FmtBuf__Round__Increment.5,@function
FmtBuf__Round__Increment.5:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%esi
.L242:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl -12(%esi),%ebx
	movl 8(%ebx),%edi
	movl (%edi),%ecx
	testl %ecx,%ecx
	jg .L243
	movl 4(%ebx),%ecx
	cmpl $0,4(%ecx)
	jne .L244
	pushl $8706
	call _m3_fault
	.align 16
.L244:
	movl (%ecx),%eax
	movb $1,(%eax)
	jmp .L258
	.align 16
.L243:
	movl %ecx,%ebx
.L245:
	movl -12(%esi),%eax
	movl 4(%eax),%ecx
	decl %ebx
	cmpl %ebx,4(%ecx)
	ja .L247
	pushl $8786
	call _m3_fault
	.align 16
.L247:
	movl (%ecx),%ecx
	movl %ecx,-16(%ebp)
	movl $10,%edi
	xorl %eax,%eax
	movb (%ebx,%ecx),%al
	incl %eax
	movl %eax,-20(%ebp)
	cltd
	idivl %edi
	movl %edx,%ecx
	cmpl $9,%ecx
	jbe .L249
	pushl $8785
	call _m3_fault
	.align 16
.L249:
	movl -12(%esi),%eax
	movl 4(%eax),%eax
	movl (%eax),%eax
	movb %cl,(%ebx,%eax)
	testl %ebx,%ebx
	je .L257
	movl -12(%esi),%eax
	movl 4(%eax),%ecx
	cmpl %ebx,4(%ecx)
	ja .L251
	pushl $8802
	call _m3_fault
	.align 16
.L251:
	movl (%ecx),%eax
	cmpb $0,(%ebx,%eax)
	je .L245
	testl %ebx,%ebx
	jne .L253
.L257:
	movl -12(%esi),%eax
	movl 4(%eax),%ecx
	movl 4(%ecx),%esi
	cmpl %esi,%ebx
	jb .L254
	pushl $8818
	call _m3_fault
	.align 16
.L254:
	movl (%ecx),%ecx
	cmpb $0,(%ebx,%ecx)
	jne .L253
	testl %esi,%esi
	jne .L255
	pushl $8818
	call _m3_fault
	.align 16
.L255:
	movb $1,(%ecx)
.L258:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L241
	.align 16
.L253:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L256:
.L241:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 FmtBuf__Round__Increment.5,.Lfe19-FmtBuf__Round__Increment.5
.section	.rodata
	.align 4
	.type	 L_7.6,@object
	.size	 L_7.6,28
L_7.6:
	.long .L263
	.long .L264
	.long .L265
	.long .L266
	.long .L267
	.long .L268
	.long .L268
.text
	.align 16
	.type	 FmtBuf__Round,@function
FmtBuf__Round:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
.L219:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%eax
	xorb %bl,%bl
	movl 8(%eax),%eax
	testl %eax,%eax
	jg .L259
	pushl $8992
	call _m3_fault
	.align 16
.L259:
	movl 16(%ebp),%edx
	cmpl %eax,(%edx)
	jl .L260
	movl %eax,(%edx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L218
	.align 16
.L260:
	cmpb $0,MI_FmtBufTest+44
	je .L261
	movl MI_FloatMode+72,%eax
	call *%eax
	movb %al,%dl
	jmp .L262
	.align 16
.L261:
	movb MI_FmtBufTest+45,%dl
.L262:
	xorl %eax,%eax
	movb %dl,%al
	jmp *L_7.6(,%eax,4)
	.align 16
.L266:
	xorb %bl,%bl
	jmp .L269
	.align 16
.L264:
	movl 8(%ebp),%eax
	cmpb $1,2(%eax)
	sete %bl
	jmp .L269
	.align 16
.L265:
	movl 8(%ebp),%eax
	cmpb $0,2(%eax)
	sete %bl
	jmp .L269
	.align 16
.L263:
	movl 16(%ebp),%eax
	xorl %ebx,%ebx
	movl (%eax),%edx
	testl %edx,%edx
	jle .L270
	movl 12(%ebp),%ecx
	leal -1(%edx),%eax
	cmpl %eax,4(%ecx)
	ja .L271
	pushl $9170
	call _m3_fault
	.align 16
.L271:
	movl (%ecx),%eax
	addl %edx,%eax
	movb -1(%eax),%al
	andl $255,%eax
	andl $1,%eax
	cmpl $1,%eax
	jne .L270
	movl %eax,%ebx
.L270:
	pushl %ebx
	jmp .L279
	.align 16
.L267:
	pushl $1
.L279:
	movl %ebp,%ecx
	call FmtBuf__Round__NearestInc.4
	movb %al,%bl
	addl $4,%esp
	jmp .L269
	.align 16
.L268:
	xorl %eax,%eax
	movb %dl,%al
	movl MM_FmtBuf+176(,%eax,4),%eax
	pushl %eax
	pushl $MM_FmtBuf+764
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_FmtBuf+816
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Process+160,%eax
	call *%eax
	addl $20,%esp
.L269:
	xorb %dl,%dl
	testb %bl,%bl
	je .L274
	movl %ebp,%ecx
	call FmtBuf__Round__Increment.5
	movb %al,%dl
.L274:
	movl 16(%ebp),%esi
	movl 8(%ebp),%eax
	xorl %ecx,%ecx
	movb %dl,%cl
	movl %ecx,%edx
	movl 8(%eax),%ebx
	movl (%esi),%eax
	cmpl %ecx,%eax
	jle .L275
	movl %eax,%edx
.L275:
	movl %ebx,%eax
	cmpl %edx,%eax
	jle .L277
	movl %edx,%eax
.L277:
	movl %eax,(%esi)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ecx,%eax
.L278:
.L218:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 FmtBuf__Round,.Lfe20-FmtBuf__Round
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FmtBuf
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe21:
	.size	 _m3_fault,.Lfe21-_m3_fault
.globl MM_FmtBuf
.data
	.align 4
	.type	 MM_FmtBuf,@object
	.size	 MM_FmtBuf,1420
MM_FmtBuf:
	.long MM_FmtBuf+1276
	.zero	16
	.long MM_FmtBuf+1032
	.zero	20
	.long FmtBuf__SciWidth
	.long MM_FmtBuf+400
	.long MM_FmtBuf+420
	.long MM_FmtBuf+444
	.long MM_FmtBuf+468
	.long MM_FmtBuf+488
	.long MM_FmtBuf+512
	.long FmtBuf__NaN
	.long FmtBuf__Inf
	.long FmtBuf__Special
.byte 32
.byte 45
.byte 101
.byte 100
.byte 120
	.zero	3
	.long FmtBuf__AppendZeros
	.long FmtBuf__Zero
	.long FmtBuf__Number
	.long FmtBuf__Round
	.long FmtBufF__Float
	.long FmtBuf__Int
	.long FmtBuf__Unsigned
	.long FmtBuf__Real
	.long FmtBuf__LongReal
	.long FmtBuf__Extended
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 48
.byte 43
.byte 45
	.zero	2
	.long MM_FmtBuf+208
	.long MM_FmtBuf+236
	.long MM_FmtBuf+268
	.long MM_FmtBuf+300
	.long MM_FmtBuf+324
	.long MM_FmtBuf+360
	.long MM_FmtBuf+380
	.long 2
	.long MM_FmtBuf+216
	.long 16
	.ascii	"NearestElseEven"
	.zero	1
	.long 2
	.long MM_FmtBuf+244
	.long 20
	.ascii	"TowardMinusInfinity"
	.zero	1
	.long 2
	.long MM_FmtBuf+276
	.long 19
	.ascii	"TowardPlusInfinity"
	.zero	2
	.long 2
	.long MM_FmtBuf+308
	.long 11
	.ascii	"TowardZero"
	.zero	2
	.long 2
	.long MM_FmtBuf+332
	.long 24
	.ascii	"NearestElseAwayFromZero"
	.zero	1
	.long 2
	.long MM_FmtBuf+368
	.long 7
	.ascii	"IBM370"
	.zero	2
	.long 2
	.long MM_FmtBuf+388
	.long 6
	.ascii	"Other"
	.zero	3
	.long 2
	.long MM_FmtBuf+408
	.long 8
	.ascii	"0.0/0.0"
	.zero	1
	.long 2
	.long MM_FmtBuf+428
	.long 12
	.ascii	"0.0d0/0.0d0"
	.zero	1
	.long 2
	.long MM_FmtBuf+452
	.long 12
	.ascii	"0.0x0/0.0x0"
	.zero	1
	.long 2
	.long MM_FmtBuf+476
	.long 8
	.ascii	"1.0/0.0"
	.zero	1
	.long 2
	.long MM_FmtBuf+496
	.long 12
	.ascii	"1.0d0/0.0d0"
	.zero	1
	.long 2
	.long MM_FmtBuf+520
	.long 12
	.ascii	"1.0x0/0.0x0"
	.zero	1
	.long 2
	.long MM_FmtBuf+544
	.long 4
	.ascii	"NaN"
	.zero	1
	.long 2
	.long MM_FmtBuf+560
	.long 9
	.ascii	"Infinity"
	.zero	1
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
	.zero	2
	.long MM_FmtBuf+612
	.long MM_FmtBuf+628
	.long MM_FmtBuf+648
	.long MM_FmtBuf+668
	.long MM_FmtBuf+688
	.long MM_FmtBuf+708
	.long MM_FmtBuf+728
	.long MM_FmtBuf+744
	.long 2
	.long MM_FmtBuf+620
	.long 4
	.ascii	"0.0"
	.zero	1
	.long 2
	.long MM_FmtBuf+636
	.long 6
	.ascii	"0.0d0"
	.zero	3
	.long 2
	.long MM_FmtBuf+656
	.long 6
	.ascii	"0.0x0"
	.zero	3
	.long 2
	.long MM_FmtBuf+676
	.long 5
	.ascii	"-0.0"
	.zero	4
	.long 2
	.long MM_FmtBuf+696
	.long 7
	.ascii	"-0.0d0"
	.zero	2
	.long 2
	.long MM_FmtBuf+716
	.long 7
	.ascii	"-0.0x0"
	.zero	2
	.long 2
	.long MM_FmtBuf+736
	.long 2
	.ascii	"0"
	.zero	3
	.long 2
	.long MM_FmtBuf+752
	.long 3
	.ascii	"-0"
	.zero	1
.byte 48
.byte 48
.byte 48
	.zero	2
	.long 2
	.long MM_FmtBuf+772
	.long 39
	.ascii	"FmtBuf: Unimplemented rounding mode: \""
	.zero	2
	.long 2
	.long MM_FmtBuf+824
	.long 3
	.ascii	"\"."
	.zero	2
	.ascii	"Round"
	.zero	1
	.ascii	"Round.Increment"
	.zero	1
	.ascii	"Round.NearestInc"
	.zero	1
	.ascii	"Number"
	.zero	1
	.ascii	"Number.FmtExp"
	.zero	1
	.ascii	"Number.DelTrailingZeros"
	.zero	1
	.ascii	"Number.FmtNum"
	.zero	1
	.ascii	"Zero"
	.zero	1
	.ascii	"AppendZeros"
	.zero	1
	.ascii	"Special"
	.zero	1
	.ascii	"Special.AppendBlanks"
	.zero	1
	.ascii	"Inf"
	.zero	1
	.ascii	"NaN"
	.zero	1
	.ascii	"SciWidth"
	.zero	1
	.ascii	"Float"
	.zero	1
	.ascii	"Extended"
	.zero	1
	.ascii	"LongReal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"Unsigned"
	.zero	1
	.ascii	"Int"
	.zero	2
	.long FmtBuf__Round
	.long MM_FmtBuf+828
	.zero	4
	.long FmtBuf__Round__Increment.5
	.long MM_FmtBuf+834
	.zero	4
	.long FmtBuf__Round__NearestInc.4
	.long MM_FmtBuf+850
	.zero	4
	.long FmtBuf__Number
	.long MM_FmtBuf+867
	.zero	4
	.long FmtBuf__Number__FmtExp.3
	.long MM_FmtBuf+874
	.zero	4
	.long FmtBuf__Number__DelTrailingZeros.2
	.long MM_FmtBuf+888
	.zero	4
	.long FmtBuf__Number__FmtNum.1
	.long MM_FmtBuf+912
	.zero	4
	.long FmtBuf__Zero
	.long MM_FmtBuf+926
	.zero	4
	.long FmtBuf__AppendZeros
	.long MM_FmtBuf+931
	.zero	4
	.long FmtBuf__Special
	.long MM_FmtBuf+943
	.zero	4
	.long FmtBuf__Special__AppendBlanks.0
	.long MM_FmtBuf+951
	.zero	4
	.long FmtBuf__Inf
	.long MM_FmtBuf+972
	.zero	4
	.long FmtBuf__NaN
	.long MM_FmtBuf+976
	.zero	4
	.long FmtBuf__SciWidth
	.long MM_FmtBuf+980
	.zero	4
	.long FmtBufF__Float
	.long MM_FmtBuf+989
	.long MI_FmtBufF+64
	.long FmtBuf__Extended
	.long MM_FmtBuf+995
	.long MI_FmtBuf+60
	.long FmtBuf__LongReal
	.long MM_FmtBuf+1004
	.long MI_FmtBuf+56
	.long FmtBuf__Real
	.long MM_FmtBuf+1013
	.long MI_FmtBuf+52
	.long FmtBuf__Unsigned
	.long MM_FmtBuf+1018
	.long MI_FmtBuf+48
	.long FmtBuf__Int
	.long MM_FmtBuf+1027
	.long MI_FmtBuf+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/fmtlex/FmtBuf.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
