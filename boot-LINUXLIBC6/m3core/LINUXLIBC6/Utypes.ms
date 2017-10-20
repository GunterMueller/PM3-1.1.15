	.file	"Utypes.mc"
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
	.type	 Utypes__major,@function
Utypes__major:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 9(%ebp),%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Utypes__major,.Lfe1-Utypes__major
	.align 16
	.type	 Utypes__minor,@function
Utypes__minor:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Utypes__minor,.Lfe2-Utypes__minor
	.align 16
	.type	 Utypes__makedev,@function
Utypes__makedev:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	sall $8,%eax
	orl 12(%ebp),%eax
	movl %eax,-16(%ebp)
	movl 16(%ebp),%edx
	movl $0,-12(%ebp)
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Utypes__makedev,.Lfe3-Utypes__makedev
	.align 16
	.type	 Utypes__howmany,@function
Utypes__howmany:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
.L17:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	leal -1(%edx,%ecx),%eax
	pushl %eax
	pushl %edx
	call m3_div
.L18:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Utypes__howmany,.Lfe4-Utypes__howmany
	.align 16
	.type	 Utypes__FD_SET,@function
Utypes__FD_SET:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
.L20:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %edx,%edx
	jne .L21
	pushl $564
	call _m3_fault
	.align 16
.L21:
	movl %ecx,%eax
	sarl $5,%eax
	cmpl $1,%eax
	jbe .L22
	pushl $561
	call _m3_fault
	.align 16
.L22:
	leal (%edx,%eax,4),%ebx
	andl $31,%ecx
	movl $1,%eax
	movl (%ebx),%edx
	testl %ecx,%ecx
	jl .L23
	cmpl $31,%ecx
	jg .L27
	sall %cl,%eax
	jmp .L30
	.align 16
.L23:
	negl %ecx
	cmpl $31,%ecx
	jg .L27
	shrl %cl,%eax
.L30:
	orl %eax,%edx
.L27:
	movl %edx,(%ebx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl (%ebx),%eax
.L29:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Utypes__FD_SET,.Lfe5-Utypes__FD_SET
	.align 16
	.type	 Utypes__FD_CLEAR,@function
Utypes__FD_CLEAR:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
.L32:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	testl %edx,%edx
	jne .L33
	pushl $676
	call _m3_fault
	.align 16
.L33:
	movl %ecx,%eax
	sarl $5,%eax
	cmpl $1,%eax
	jbe .L34
	pushl $673
	call _m3_fault
	.align 16
.L34:
	leal (%edx,%eax,4),%ebx
	andl $31,%ecx
	movl $1,%eax
	movl (%ebx),%edx
	testl %ecx,%ecx
	jl .L35
	cmpl $31,%ecx
	jg .L39
	sall %cl,%eax
	jmp .L42
	.align 16
.L35:
	negl %ecx
	cmpl $31,%ecx
	jg .L39
	shrl %cl,%eax
.L42:
	notl %eax
	andl %eax,%edx
.L39:
	movl %edx,(%ebx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl (%ebx),%eax
.L41:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Utypes__FD_CLEAR,.Lfe6-Utypes__FD_CLEAR
	.align 16
	.type	 Utypes__FD_ISSET,@function
Utypes__FD_ISSET:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%esi
.L44:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %esi,%esi
	jne .L45
	pushl $788
	call _m3_fault
	.align 16
.L45:
	movl %ecx,%eax
	sarl $5,%eax
	cmpl $1,%eax
	jbe .L46
	pushl $785
	call _m3_fault
	.align 16
.L46:
	movl %edx,RTThread__handlerStack
	andl $31,%ecx
	movl $1,%ebx
	movl (%esi,%eax,4),%edx
	testl %ecx,%ecx
	jl .L47
	cmpl $31,%ecx
	jg .L49
	movl %ebx,%eax
	sall %cl,%eax
	andl %edx,%eax
	jmp .L53
	.align 16
.L49:
	xorl %eax,%eax
	jmp .L53
	.align 16
.L47:
	negl %ecx
	cmpl $31,%ecx
	jg .L51
	movl %ebx,%eax
	shrl %cl,%eax
	andl %edx,%eax
	jmp .L53
	.align 16
.L51:
	xorl %eax,%eax
.L53:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Utypes__FD_ISSET,.Lfe7-Utypes__FD_ISSET
	.align 16
	.type	 Utypes__FD_ZERO,@function
Utypes__FD_ZERO:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L55
	pushl $884
	call _m3_fault
	.align 16
.L55:
	movl %eax,-4(%ebp)
	xorl %edx,%edx
.L56:
	movl -4(%ebp),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
	cmpl $1,%edx
	jle .L56
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Utypes__FD_ZERO,.Lfe8-Utypes__FD_ZERO
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Utypes
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_Utypes
.data
	.align 4
	.type	 MM_Utypes,@object
	.size	 MM_Utypes,396
MM_Utypes:
	.long MM_Utypes+240
	.zero	16
	.long MM_Utypes+140
	.zero	20
	.long Utypes__major
	.long Utypes__minor
	.long Utypes__makedev
	.long Utypes__howmany
	.long Utypes__FD_SET
	.long Utypes__FD_CLEAR
	.long Utypes__FD_ISSET
	.long Utypes__FD_ZERO
	.ascii	"FD_ZERO"
	.zero	1
	.ascii	"FD_ISSET"
	.zero	1
	.ascii	"FD_CLEAR"
	.zero	1
	.ascii	"FD_SET"
	.zero	1
	.ascii	"howmany"
	.zero	1
	.ascii	"makedev"
	.zero	1
	.ascii	"minor"
	.zero	1
	.ascii	"major"
	.zero	4
	.long Utypes__FD_ZERO
	.long MM_Utypes+76
	.long MI_Utypes+280
	.long Utypes__FD_ISSET
	.long MM_Utypes+84
	.long MI_Utypes+276
	.long Utypes__FD_CLEAR
	.long MM_Utypes+93
	.long MI_Utypes+272
	.long Utypes__FD_SET
	.long MM_Utypes+102
	.long MI_Utypes+268
	.long Utypes__howmany
	.long MM_Utypes+109
	.long MI_Utypes+160
	.long Utypes__makedev
	.long MM_Utypes+117
	.long MI_Utypes+52
	.long Utypes__minor
	.long MM_Utypes+125
	.long MI_Utypes+48
	.long Utypes__major
	.long MM_Utypes+131
	.long MI_Utypes+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/unix/linux-libc6/Utypes.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
