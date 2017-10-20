	.file	"UnsafeHash.mc"
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
	.type	 Text__Hash,@function
Text__Hash:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L2
	pushl $3860
	call _m3_fault
	.align 16
.L2:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L3
	pushl $3858
	call _m3_fault
	.align 16
.L3:
	movl (%edx),%ebx
	decl %eax
	movl %eax,-8(%ebp)
	leal (%eax,%ebx),%ecx
	movl %ecx,-4(%ebp)
	movl %ebx,%edi
	andl $3,%edi
	movl %edi,-20(%ebp)
	je .L21
	movl $4,%eax
	subl -8(%ebp),%eax
	subl %edi,%eax
	movl $0,-12(%ebp)
	testl %eax,%eax
	jle .L6
	movl %eax,-12(%ebp)
.L6:
	movl %ebx,%eax
	subl -20(%ebp),%eax
	jne .L8
	pushl $4004
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%esi
	movl -12(%ebp),%edx
	addl -20(%ebp),%edx
	movl MM_UnsafeHash+52,%eax
	imull %eax,%edx
	negl %eax
	imull -20(%ebp),%eax
	movl %eax,-16(%ebp)
	testl %eax,%eax
	jl .L9
	xorl %eax,%eax
	cmpl $31,-16(%ebp)
	jg .L10
	movl %esi,%eax
	movl -16(%ebp),%ecx
	sall %cl,%eax
	jmp .L10
	.align 16
.L9:
	movl -16(%ebp),%eax
	negl %eax
	cmpl $31,%eax
	jg .L13
	movl %eax,%ecx
	shrl %cl,%esi
	movl %esi,%eax
	jmp .L10
	.align 16
.L13:
	xorl %eax,%eax
.L10:
	testl %edx,%edx
	jl .L15
	xorl %esi,%esi
	cmpl $31,%edx
	jg .L16
	movl %eax,%esi
	movl %edx,%ecx
	sall %cl,%esi
	jmp .L16
	.align 16
.L15:
	negl %edx
	xorl %esi,%esi
	cmpl $31,%edx
	jg .L16
	movl %eax,%esi
	movl %edx,%ecx
	shrl %cl,%esi
.L16:
	movl $4,%eax
	subl -12(%ebp),%eax
	subl -20(%ebp),%eax
	addl %eax,%ebx
	jmp .L21
	.align 16
.L22:
	testl %ebx,%ebx
	jne .L23
	pushl $4100
	call _m3_fault
	.align 16
.L23:
	xorl (%ebx),%esi
	movl %eax,%ebx
.L21:
	leal 4(%ebx),%eax
	cmpl %eax,-4(%ebp)
	ja .L22
	cmpb $0,MM_UnsafeHash+44
	je .L25
	cmpl %ebx,-4(%ebp)
	je .L26
	movl -4(%ebp),%edx
	subl %ebx,%edx
	movl $4,%eax
	subl %edx,%eax
	movl %eax,-20(%ebp)
	movl %ebx,%eax
	testl %eax,%eax
	jne .L27
	pushl $4196
	call _m3_fault
	.align 16
.L27:
	movl MM_UnsafeHash+56,%edx
	testl %edx,%edx
	jl .L28
	movl $0,-16(%ebp)
	cmpl $31,%edx
	jg .L29
	movl -20(%ebp),%edi
	movl %edx,%ecx
	sall %cl,%edi
	jmp .L88
	.align 16
.L28:
	negl %edx
	movl $0,-16(%ebp)
	cmpl $31,%edx
	jg .L29
	movl -20(%ebp),%edi
	movl %edx,%ecx
	shrl %cl,%edi
.L88:
	movl %edi,-16(%ebp)
.L29:
	movl (%eax),%ebx
	cmpl $0,-16(%ebp)
	jl .L34
	xorl %edx,%edx
	cmpl $31,-16(%ebp)
	jg .L35
	movl %ebx,%edx
	movl -16(%ebp),%ecx
	sall %cl,%edx
	jmp .L35
	.align 16
.L34:
	movl -16(%ebp),%eax
	negl %eax
	xorl %edx,%edx
	cmpl $31,%eax
	jg .L35
	movl %ebx,%edx
	movl %eax,%ecx
	shrl %cl,%edx
.L35:
	movl MM_UnsafeHash+56,%ebx
	testl %ebx,%ebx
	jl .L40
	xorl %eax,%eax
	cmpl $31,%ebx
	jg .L41
	movl -20(%ebp),%eax
	movl %ebx,%ecx
	sall %cl,%eax
	jmp .L41
	.align 16
.L40:
	negl %ebx
	xorl %eax,%eax
	cmpl $31,%ebx
	jg .L41
	movl -20(%ebp),%eax
	movl %ebx,%ecx
	shrl %cl,%eax
.L41:
	testl %eax,%eax
	jl .L46
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	roll %cl,%eax
	jmp .L89
	.align 16
.L46:
	negl %eax
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	rorl %cl,%eax
.L89:
	movl %eax,%esi
	xorl %edx,%esi
.L26:
	movl MM_UnsafeHash+56,%edx
	testl %edx,%edx
	jl .L48
	xorl %eax,%eax
	cmpl $31,%edx
	jg .L49
	movl -8(%ebp),%eax
	movl %edx,%ecx
	sall %cl,%eax
	jmp .L49
	.align 16
.L48:
	negl %edx
	xorl %eax,%eax
	cmpl $31,%edx
	jg .L49
	movl -8(%ebp),%eax
	movl %edx,%ecx
	shrl %cl,%eax
.L49:
	testl %eax,%eax
	jl .L84
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	roll %cl,%eax
	jmp .L90
	.align 16
.L25:
	cmpl %ebx,-4(%ebp)
	je .L56
	movl -4(%ebp),%edx
	subl %ebx,%edx
	movl $4,%eax
	subl %edx,%eax
	movl %eax,-20(%ebp)
	movl %ebx,%edx
	testl %edx,%edx
	jne .L57
	pushl $4340
	call _m3_fault
	.align 16
.L57:
	movl MM_UnsafeHash+56,%eax
	testl %eax,%eax
	jl .L58
	cmpl $31,%eax
	jg .L62
	movl -20(%ebp),%edi
	movl %eax,%ecx
	sall %cl,%edi
	jmp .L91
	.align 16
.L58:
	negl %eax
	cmpl $31,%eax
	jg .L62
	movl -20(%ebp),%edi
	movl %eax,%ecx
	shrl %cl,%edi
.L91:
	movl %edi,%eax
	movl %eax,%ebx
	negl %ebx
	jmp .L59
	.align 16
.L62:
	xorl %ebx,%ebx
.L59:
	movl (%edx),%eax
	testl %ebx,%ebx
	jl .L64
	xorl %edx,%edx
	cmpl $31,%ebx
	jg .L65
	movl %eax,%edx
	movl %ebx,%ecx
	sall %cl,%edx
	jmp .L65
	.align 16
.L64:
	negl %ebx
	xorl %edx,%edx
	cmpl $31,%ebx
	jg .L65
	movl %eax,%edx
	movl %ebx,%ecx
	shrl %cl,%edx
.L65:
	movl MM_UnsafeHash+56,%eax
	testl %eax,%eax
	jl .L70
	cmpl $31,%eax
	jg .L72
	movl -20(%ebp),%edi
	movl %eax,%ecx
	sall %cl,%edi
	jmp .L92
	.align 16
.L72:
	xorl %eax,%eax
	jmp .L87
	.align 16
.L70:
	negl %eax
	cmpl $31,%eax
	jg .L74
	movl -20(%ebp),%edi
	movl %eax,%ecx
	shrl %cl,%edi
.L92:
	movl %edi,%eax
	negl %eax
	jmp .L71
	.align 16
.L74:
	xorl %eax,%eax
.L71:
	testl %eax,%eax
	jl .L76
.L87:
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	roll %cl,%eax
	jmp .L93
	.align 16
.L76:
	negl %eax
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	rorl %cl,%eax
.L93:
	movl %eax,%esi
	xorl %edx,%esi
.L56:
	movl MM_UnsafeHash+56,%eax
	testl %eax,%eax
	jl .L78
	cmpl $31,%eax
	jg .L80
	movl -8(%ebp),%edi
	movl %eax,%ecx
	sall %cl,%edi
	jmp .L94
	.align 16
.L80:
	xorl %eax,%eax
	jmp .L95
	.align 16
.L78:
	negl %eax
	cmpl $31,%eax
	jg .L82
	movl -8(%ebp),%edi
	movl %eax,%ecx
	shrl %cl,%edi
.L94:
	movl %edi,%eax
	negl %eax
	jmp .L79
	.align 16
.L82:
	xorl %eax,%eax
.L79:
	testl %eax,%eax
	jl .L84
.L95:
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	roll %cl,%eax
	jmp .L90
	.align 16
.L84:
	negl %eax
	movl %eax,%ecx
	andl $31,%ecx
	movl %esi,%eax
	rorl %cl,%eax
.L90:
	addl -8(%ebp),%eax
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Text__Hash,.Lfe1-Text__Hash
	.align 16
	.type	 _INITM_UnsafeHash,@function
_INITM_UnsafeHash:
	pushl %ebp
	movl %esp,%ebp
	movl MM_UnsafeHash+168,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,MM_UnsafeHash+48
	addl $4,%esp
	testl %eax,%eax
	jne .L97
	pushl $4740
	call _m3_fault
	.align 16
.L97:
	movl $1,(%eax)
	movl MM_UnsafeHash+48,%eax
	testl %eax,%eax
	jne .L98
	pushl $4756
	call _m3_fault
	.align 16
.L98:
	cmpb $1,(%eax)
	sete %al
	movb %al,MM_UnsafeHash+44
	testb %al,%al
	je .L99
	movl $8,MM_UnsafeHash+52
	jmp .L100
	.align 16
.L99:
	movl $-8,MM_UnsafeHash+52
.L100:
	movl $0,MM_UnsafeHash+56
	movl $1,%edx
	jmp .L101
	.align 16
.L102:
	incl MM_UnsafeHash+56
	addl %edx,%edx
.L101:
	movl MM_UnsafeHash+52,%eax
	testl %eax,%eax
	jge .L103
	negl %eax
.L103:
	cmpl %edx,%eax
	jne .L102
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 _INITM_UnsafeHash,.Lfe2-_INITM_UnsafeHash
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_UnsafeHash
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_UnsafeHash
.data
	.align 4
	.type	 MM_UnsafeHash,@object
	.size	 MM_UnsafeHash,376
MM_UnsafeHash:
	.long MM_UnsafeHash+228
	.long MM_UnsafeHash+60
	.long MM_UnsafeHash+168
	.zero	8
	.long MM_UnsafeHash+200
	.zero	16
	.long _INITM_UnsafeHash
	.zero	24
	.long -1134569227
.byte 72
.byte 118
.byte 69
.byte 179
.byte 189
.byte 174
.byte 26
.byte 15
	.zero	8
	.long 1
	.long 1
	.zero	20
	.long MM_UnsafeHash+373
	.zero	44
	.long Text__Hash
	.zero	4
	.long 1786662552
	.ascii	"_INITM_UnsafeHash"
	.zero	1
	.ascii	"Hash"
	.zero	2
	.long _INITM_UnsafeHash
	.long MM_UnsafeHash+176
	.zero	4
	.long Text__Hash
	.long MM_UnsafeHash+194
	.long MI_Text+80
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/text/UnsafeHash.m3"
	.zero	1
.byte 16
.byte 0
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
