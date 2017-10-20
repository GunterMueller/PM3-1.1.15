	.file	"RTPacking.mc"
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
	.type	 RTPacking__Local,@function
RTPacking__Local:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %ebx
	movl $1,-4(%ebp)
	movb MM_RTPacking+60,%bl
	testb %bl,%bl
	jne .L2
	pushl $4
	call RTPacking__SizeOf
	movl %eax,MM_RTPacking+64
	pushl $4
	call RTPacking__SizeOf
	movl %eax,MM_RTPacking+68
	pushl $1
	call RTPacking__SizeOf
	movl %eax,MM_RTPacking+72
	cmpb $1,-4(%ebp)
	sete %al
	movb %al,MM_RTPacking+77
	movb %bl,MM_RTPacking+76
	movb $1,MM_RTPacking+60
.L2:
	movl 8(%ebp),%ecx
	movl $MM_RTPacking+64,%edx
	movl MM_RTPacking+64,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	movl -40(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTPacking__Local,.Lfe1-RTPacking__Local
	.align 16
	.type	 RTPacking__SizeOf,@function
RTPacking__SizeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L7:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	sall $3,%edx
	xorl %eax,%eax
.L8:
	cmpl %edx,MM_RTPacking+44(,%eax,4)
	jne .L9
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	testl %edx,%edx
	jge .L10
	pushl $721
	call _m3_fault
	.align 16
.L10:
	movl %edx,%eax
	jmp .L6
	.align 16
.L9:
	incl %eax
	cmpl $3,%eax
	jle .L8
	pushl $752
	call _m3_fault
	.align 16
.L13:
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTPacking__SizeOf,.Lfe2-RTPacking__SizeOf
	.align 16
	.type	 RTPacking__Encode,@function
RTPacking__Encode:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	call RTPacking__BitSize
	movl %eax,%edx
	addl $4,%esp
	movl 8(%ebp),%eax
	movl %edx,%ebx
	movl 4(%eax),%eax
	pushl %eax
	call RTPacking__BitSize
	movl %eax,%edx
	movl $2,%esi
	movl %ebx,%eax
	movl %esi,%ecx
	sall %cl,%eax
	movl %eax,%ebx
	orl %edx,%ebx
	movl 8(%ebp),%eax
	addl $4,%esp
	movl 8(%eax),%eax
	pushl %eax
	call RTPacking__BitSize
	movl %eax,%edx
	movl %ebx,%eax
	movl %esi,%ecx
	sall %cl,%eax
	movl %eax,%ebx
	orl %edx,%ebx
	movl 8(%ebp),%ecx
	movl %ebx,%eax
	addl %ebx,%eax
	movl %eax,%ebx
	leal -8(%ebp),%esp
	xorl %edx,%edx
	movb 13(%ecx),%dl
	orl %edx,%ebx
	xorl %edx,%edx
	movb 12(%ecx),%dl
	movl %ebx,%eax
	movl %esi,%ecx
	sall %cl,%eax
	movl %eax,%ebx
	orl %edx,%ebx
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTPacking__Encode,.Lfe3-RTPacking__Encode
	.align 16
	.type	 RTPacking__Decode,@function
RTPacking__Decode:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl %eax,%edx
	andl $3,%edx
	cmpl $2,%edx
	jbe .L46
	pushl $1025
	call _m3_fault
	.align 16
.L46:
	movb %dl,-4(%ebp)
	movl $2,%ebx
	movl %ebx,%ecx
	shrl %cl,%eax
	movl %eax,%edx
	andl $1,%edx
	cmpl $1,%edx
	jbe .L53
	pushl $1041
	call _m3_fault
	.align 16
.L53:
	movb %dl,-3(%ebp)
	shrl $1,%eax
	movl %eax,%edx
	andl $3,%edx
	cmpl $3,%edx
	jbe .L60
	pushl $1057
	call _m3_fault
	.align 16
.L60:
	movl $MM_RTPacking+44,%esi
	movl (%esi,%edx,4),%edx
	testl %edx,%edx
	jge .L61
	pushl $1057
	call _m3_fault
	.align 16
.L61:
	movl %edx,-8(%ebp)
	movl %ebx,%ecx
	shrl %cl,%eax
	movl %eax,%edx
	andl $3,%edx
	cmpl $3,%edx
	jbe .L68
	pushl $1073
	call _m3_fault
	.align 16
.L68:
	movl (%esi,%edx,4),%edx
	testl %edx,%edx
	jge .L69
	pushl $1073
	call _m3_fault
	.align 16
.L69:
	movl %edx,-12(%ebp)
	movl %ebx,%ecx
	shrl %cl,%eax
	movl %eax,%edx
	andl $3,%edx
	cmpl $3,%edx
	jbe .L76
	pushl $1089
	call _m3_fault
	.align 16
.L76:
	movl (%esi,%edx,4),%esi
	testl %esi,%esi
	jge .L77
	pushl $1089
	call _m3_fault
	.align 16
.L77:
	movl %esi,-16(%ebp)
	movl %ebx,%ecx
	shrl %cl,%eax
	testl %eax,%eax
	je .L84
	pushl $1104
	call _m3_fault
	.align 16
.L84:
	movl 12(%ebp),%edx
	leal -40(%ebp),%esp
	movl %esi,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTPacking__Decode,.Lfe4-RTPacking__Decode
	.align 16
	.type	 RTPacking__BitSize,@function
RTPacking__BitSize:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
.L86:
	cmpl %edx,MM_RTPacking+44(,%eax,4)
	je .L90
	incl %eax
	cmpl $3,%eax
	jle .L86
	pushl $1248
	call _m3_fault
	.align 16
.L90:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTPacking__BitSize,.Lfe5-RTPacking__BitSize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTPacking
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_RTPacking
.data
	.align 4
	.type	 MM_RTPacking,@object
	.size	 MM_RTPacking,356
MM_RTPacking:
	.long MM_RTPacking+200
	.zero	16
	.long MM_RTPacking+136
	.zero	20
	.long 8
	.long 16
	.long 32
	.long 64
	.zero	20
	.long RTPacking__SizeOf
	.long RTPacking__BitSize
	.long RTPacking__Local
	.long RTPacking__Encode
	.long RTPacking__Decode
	.ascii	"BitSize"
	.zero	1
	.ascii	"Decode"
	.zero	1
	.ascii	"Encode"
	.zero	1
	.ascii	"SizeOf"
	.zero	1
	.ascii	"Local"
	.zero	2
	.long RTPacking__BitSize
	.long MM_RTPacking+100
	.zero	4
	.long RTPacking__Decode
	.long MM_RTPacking+108
	.long MI_RTPacking+52
	.long RTPacking__Encode
	.long MM_RTPacking+115
	.long MI_RTPacking+48
	.long RTPacking__SizeOf
	.long MM_RTPacking+122
	.zero	4
	.long RTPacking__Local
	.long MM_RTPacking+129
	.long MI_RTPacking+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTPacking.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
