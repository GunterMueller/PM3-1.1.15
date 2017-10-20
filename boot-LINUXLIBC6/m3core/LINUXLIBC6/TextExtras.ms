	.file	"TextExtras.mc"
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
	.type	 TextExtras__FindChar,@function
TextExtras__FindChar:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 16(%ebp),%edx
	movl %eax,-8(%ebp)
	movl (%edx),%ebx
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	cmpl %esi,%ebx
	jl .L5
	je .L11
	pushl $0
	pushl $MM_TextExtras+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L5:
	testl %edi,%edi
	jne .L6
	pushl $628
	call _m3_fault
	.align 16
.L6:
	cmpl %ebx,4(%edi)
	ja .L7
	pushl $626
	call _m3_fault
	.align 16
.L7:
	movl (%edi),%eax
	movb 12(%ebp),%dl
	cmpb %dl,(%ebx,%eax)
	jne .L8
	movl 16(%ebp),%edx
	movl %ebx,(%edx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L1
	.align 16
.L8:
	incl %ebx
	cmpl %esi,%ebx
	jne .L5
	movl 16(%ebp),%edx
	movl %ebx,(%edx)
.L11:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L10:
.L1:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TextExtras__FindChar,.Lfe1-TextExtras__FindChar
	.align 16
	.type	 TextExtras__FindCharSet,@function
TextExtras__FindCharSet:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L13:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 16(%ebp),%ecx
	movl %eax,-8(%ebp)
	movl (%ecx),%ebx
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	cmpl %esi,%ebx
	jl .L16
	je .L22
	pushl $0
	pushl $MM_TextExtras+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L16:
	testl %edi,%edi
	jne .L17
	pushl $1012
	call _m3_fault
	.align 16
.L17:
	cmpl %ebx,4(%edi)
	ja .L18
	pushl $1010
	call _m3_fault
	.align 16
.L18:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%edi),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L19
	movl 16(%ebp),%ecx
	movl %ebx,(%ecx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L12
	.align 16
.L19:
	incl %ebx
	cmpl %esi,%ebx
	jne .L16
	movl 16(%ebp),%ecx
	movl %ebx,(%ecx)
.L22:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L21:
.L12:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TextExtras__FindCharSet,.Lfe2-TextExtras__FindCharSet
	.align 16
	.type	 TextExtras__FindSub,@function
TextExtras__FindSub:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L24:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 16(%ebp),%edx
	movl %eax,-8(%ebp)
	movl (%edx),%esi
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edi
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-12(%ebp)
	addl $8,%esp
	cmpl %edi,%esi
	jle .L25
	pushl $0
	pushl $MM_TextExtras+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L25:
	cmpl $0,-12(%ebp)
	je .L46
	cmpl %edi,-12(%ebp)
	jg .L27
	movl %edi,%edx
	subl -12(%ebp),%edx
	movl %edx,-16(%ebp)
	cmpl $0,12(%ebp)
	jne .L28
	pushl $1348
	call _m3_fault
	.align 16
.L28:
	movl 12(%ebp),%edx
	cmpl $0,4(%edx)
	jne .L29
	pushl $1346
	call _m3_fault
	.align 16
.L29:
	movl 12(%ebp),%edx
	movl (%edx),%eax
	movb (%eax),%al
	movb %al,-20(%ebp)
	jmp .L30
	.align 16
.L31:
	cmpl $0,8(%ebp)
	jne .L32
	pushl $1396
	call _m3_fault
	.align 16
.L32:
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L33
	pushl $1394
	call _m3_fault
	.align 16
.L33:
	movl (%eax),%eax
	movb -20(%ebp),%dl
	cmpb %dl,(%esi,%eax)
	jne .L34
	movl $1,%ecx
.L35:
	cmpl %ecx,-12(%ebp)
	jne .L36
	movl 16(%ebp),%edx
	movl %esi,(%edx)
.L46:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L23
	.align 16
.L36:
	leal (%ecx,%esi),%ebx
	cmpl %edi,%ebx
	jge .L34
	cmpl $0,8(%ebp)
	jne .L38
	pushl $1524
	call _m3_fault
	.align 16
.L38:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L39
	pushl $1522
	call _m3_fault
	.align 16
.L39:
	cmpl $0,12(%ebp)
	jne .L40
	pushl $1524
	call _m3_fault
	.align 16
.L40:
	movl 12(%ebp),%edx
	cmpl %ecx,4(%edx)
	ja .L41
	pushl $1522
	call _m3_fault
	.align 16
.L41:
	movl 12(%ebp),%edx
	movl (%eax),%eax
	movl (%edx),%edx
	movb (%ebx,%eax),%al
	cmpb %al,(%ecx,%edx)
	jne .L34
	incl %ecx
	jmp .L35
	.align 16
.L34:
	incl %esi
.L30:
	cmpl %esi,-16(%ebp)
	jge .L31
.L27:
	movl 16(%ebp),%edx
	movl %edi,(%edx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L45:
.L23:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TextExtras__FindSub,.Lfe3-TextExtras__FindSub
	.align 16
	.type	 TextExtras__Extract,@function
TextExtras__Extract:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	subl %edx,%eax
	jns .L48
	pushl $1841
	call _m3_fault
	.align 16
.L48:
	pushl %eax
	pushl %edx
	pushl %ecx
	movl MI_Text+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TextExtras__Extract,.Lfe4-TextExtras__Extract
	.align 16
	.type	 TextExtras__Join,@function
TextExtras__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 16(%ebp),%ebx
	movl 20(%ebp),%esi
	movl 24(%ebp),%edi
.L50:
	movl $5,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl %edx,-20(%ebp)
	movl 12(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %edi,-4(%ebp)
	movl $4,%ebx
.L51:
	cmpl $4,%ebx
	jbe .L52
	pushl $2049
	call _m3_fault
	.align 16
.L52:
	cmpl $0,-20(%ebp,%ebx,4)
	je .L53
	leal 1(%ebx),%eax
	testl %eax,%eax
	jge .L54
	pushl $2065
	call _m3_fault
	.align 16
.L54:
	cmpl $5,%eax
	jle .L55
	pushl $2065
	call _m3_fault
	.align 16
.L55:
	movl %eax,-32(%ebp)
	leal -20(%ebp),%ecx
	movl %ecx,-36(%ebp)
	leal -36(%ebp),%eax
	pushl %eax
	call TextExtras__JoinN
	movl %eax,%edx
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L49
	.align 16
.L53:
	testl %ebx,%ebx
	jne .L56
	pushl %ebx
	pushl $MM_TextExtras+68
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L56:
	decl %ebx
	jmp .L51
	.align 16
.L58:
.L49:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TextExtras__Join,.Lfe5-TextExtras__Join
	.align 16
	.type	 TextExtras__JoinN,@function
TextExtras__JoinN:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L60:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	movl %eax,-28(%ebp)
	testl %eax,%eax
	jne .L61
	pushl %ebx
	pushl $MM_TextExtras+68
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L61:
	movl %ebx,%esi
	movl -28(%ebp),%edi
	decl %edi
	jmp .L62
	.align 16
.L63:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L64
	pushl $2386
	call _m3_fault
	.align 16
.L64:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	addl %eax,%esi
	incl %ebx
	addl $4,%esp
.L62:
	cmpl %edi,%ebx
	jle .L63
	testl %esi,%esi
	jge .L66
	pushl $2401
	call _m3_fault
	.align 16
.L66:
	pushl %esi
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,%ebx
	xorl %esi,%esi
	movl %esi,%edi
	movl -28(%ebp),%edx
	decl %edx
	movl %edx,-32(%ebp)
	addl $4,%esp
	jmp .L67
	.align 16
.L68:
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L69
	pushl $2514
	call _m3_fault
	.align 16
.L69:
	movl (%eax),%eax
	leal (%eax,%edi,4),%eax
	movl %eax,-36(%ebp)
	movl (%eax),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%esp
	testl %ecx,%ecx
	jle .L70
	testl %ebx,%ebx
	jne .L71
	pushl $2548
	call _m3_fault
	.align 16
.L71:
	testl %esi,%esi
	jge .L72
	pushl $2545
	call _m3_fault
	.align 16
.L72:
	movl %ecx,-12(%ebp)
	leal (%ecx,%esi),%edx
	movl %edx,-40(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L73
	pushl $2545
	call _m3_fault
	.align 16
.L73:
	addl (%ebx),%esi
	movl -36(%ebp),%edx
	movl %esi,-16(%ebp)
	movl (%edx),%edx
	movl %edx,-44(%ebp)
	testl %edx,%edx
	jne .L74
	pushl $2548
	call _m3_fault
	.align 16
.L74:
	movl %ecx,-20(%ebp)
	movl -44(%ebp),%edx
	movl %ecx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L75
	pushl $2545
	call _m3_fault
	.align 16
.L75:
	movl -44(%ebp),%edx
	movl (%edx),%eax
	movl %eax,-24(%ebp)
	pushl %ecx
	pushl %eax
	pushl %esi
	call memmove
	movl -40(%ebp),%esi
	addl $12,%esp
.L70:
	incl %edi
.L67:
	cmpl %edi,-32(%ebp)
	jge .L68
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L78:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TextExtras__JoinN,.Lfe6-TextExtras__JoinN
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextExtras
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_TextExtras
.data
	.align 4
	.type	 MM_TextExtras,@object
	.size	 MM_TextExtras,392
MM_TextExtras:
	.long MM_TextExtras+244
	.zero	16
	.long MM_TextExtras+168
	.zero	20
	.long MM_TextExtras+48
	.ascii	"TextExtras.BadFind"
	.zero	2
	.long MM_TextExtras+72
	.ascii	"TextExtras.JoinFailed"
	.zero	3
	.long TextExtras__FindChar
	.long TextExtras__FindCharSet
	.long TextExtras__FindSub
	.long TextExtras__Extract
	.long TextExtras__Join
	.long TextExtras__JoinN
	.ascii	"JoinN"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"Extract"
	.zero	1
	.ascii	"FindSub"
	.zero	1
	.ascii	"FindCharSet"
	.zero	1
	.ascii	"FindChar"
	.zero	1
	.long TextExtras__JoinN
	.long MM_TextExtras+120
	.long MI_TextExtras+64
	.long TextExtras__Join
	.long MM_TextExtras+126
	.long MI_TextExtras+60
	.long TextExtras__Extract
	.long MM_TextExtras+131
	.long MI_TextExtras+56
	.long TextExtras__FindSub
	.long MM_TextExtras+139
	.long MI_TextExtras+52
	.long TextExtras__FindCharSet
	.long MM_TextExtras+147
	.long MI_TextExtras+48
	.long TextExtras__FindChar
	.long MM_TextExtras+159
	.long MI_TextExtras+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/text/TextExtras.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
