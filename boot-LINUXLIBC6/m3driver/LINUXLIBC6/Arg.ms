	.file	"Arg.mc"
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
	.type	 Arg__NewList,@function
Arg__NewList:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Arg+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Arg__NewList,.Lfe1-Arg__NewList
	.align 16
	.type	 Arg__Append,@function
Arg__Append:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl MM_Arg+76,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%esp
	movl $0,4(%ecx)
	movl %ebx,(%eax)
	movl %eax,%ebx
	testl %esi,%esi
	jne .L3
	pushl $276
	call _m3_fault
	.align 16
.L3:
	cmpl $0,(%esi)
	jne .L7
	movl %ecx,(%esi)
	jmp .L6
	.align 16
.L7:
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L8
	pushl $308
	call _m3_fault
	.align 16
.L8:
	movl %ecx,4(%edx)
.L6:
	testl %esi,%esi
	jne .L9
	pushl $340
	call _m3_fault
	.align 16
.L9:
	movl %esi,%eax
	leal -8(%ebp),%esp
	movl %ebx,4(%eax)
	incl 8(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Arg__Append,.Lfe2-Arg__Append
	.align 16
	.type	 Arg__Prepend,@function
Arg__Prepend:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_Arg+76,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L12
	pushl $420
	call _m3_fault
	.align 16
.L12:
	movl (%ebx),%eax
	movl %eax,4(%edx)
	movl %esi,(%edx)
	cmpl $0,4(%ebx)
	jne .L16
	movl %edx,4(%ebx)
.L16:
	movl %ebx,%eax
	leal -8(%ebp),%esp
	movl %edx,(%eax)
	incl 8(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Arg__Prepend,.Lfe3-Arg__Prepend
	.align 16
	.type	 Arg__AppendL,@function
Arg__AppendL:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L19
	pushl $548
	call _m3_fault
	.align 16
.L19:
	movl (%eax),%ebx
	jmp .L20
	.align 16
.L21:
	movl (%ebx),%eax
	pushl %eax
	pushl %esi
	call Arg__Append
	addl $8,%esp
	movl 4(%ebx),%ebx
.L20:
	testl %ebx,%ebx
	jne .L21
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Arg__AppendL,.Lfe4-Arg__AppendL
	.align 16
	.type	 Arg__Pop,@function
Arg__Pop:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L36
	cmpl $0,8(%ecx)
	jle .L36
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L30
	pushl $740
	call _m3_fault
	.align 16
.L30:
	movl (%eax),%edx
	movl 4(%eax),%eax
	movl %eax,(%ecx)
	decl 8(%ecx)
.L36:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Arg__Pop,.Lfe5-Arg__Pop
	.align 16
	.type	 Arg__Flatten,@function
Arg__Flatten:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	xorl %ebx,%ebx
	testl %esi,%esi
	je .L38
	movl 8(%esi),%eax
	testl %eax,%eax
	jle .L38
	movl %eax,%ebx
.L38:
	testl %edi,%edi
	je .L41
	incl %ebx
.L41:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,-4(%ebp)
	pushl %eax
	movl MM_Arg+84,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	xorl %ebx,%ebx
	addl $8,%esp
	testl %esi,%esi
	je .L42
	movl (%esi),%esi
	jmp .L44
	.align 16
.L45:
	testl %ecx,%ecx
	jne .L46
	pushl $996
	call _m3_fault
	.align 16
.L46:
	cmpl %ebx,4(%ecx)
	ja .L47
	pushl $994
	call _m3_fault
	.align 16
.L47:
	movl (%ecx),%edx
	movl (%esi),%eax
	movl %eax,(%edx,%ebx,4)
	incl %ebx
	movl 4(%esi),%esi
.L44:
	testl %esi,%esi
	jne .L45
.L42:
	testl %edi,%edi
	je .L51
	testl %ecx,%ecx
	jne .L52
	pushl $1076
	call _m3_fault
	.align 16
.L52:
	cmpl %ebx,4(%ecx)
	ja .L53
	pushl $1074
	call _m3_fault
	.align 16
.L53:
	movl (%ecx),%eax
	movl %edi,(%eax,%ebx,4)
.L51:
	leal -24(%ebp),%esp
	movl %ecx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Arg__Flatten,.Lfe6-Arg__Flatten
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Arg
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_Arg
.data
	.align 4
	.type	 MM_Arg,@object
	.size	 MM_Arg,348
MM_Arg:
	.long MM_Arg+212
	.zero	4
	.long MM_Arg+68
	.zero	8
	.long MM_Arg+136
	.zero	20
	.long Arg__NewList
	.long Arg__Append
	.long Arg__Prepend
	.long Arg__AppendL
	.long Arg__Pop
	.long Arg__Flatten
	.long MM_Arg+76
	.long -1678288446
	.long MM_Arg+84
	.long -751886824
	.zero	4
	.long -244065135
	.ascii	"Flatten"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"AppendL"
	.zero	1
	.ascii	"Prepend"
	.zero	1
	.ascii	"Append"
	.zero	1
	.ascii	"NewList"
	.zero	2
	.long Arg__Flatten
	.long MM_Arg+92
	.long MI_Arg+376
	.long Arg__Pop
	.long MM_Arg+100
	.long MI_Arg+268
	.long Arg__AppendL
	.long MM_Arg+104
	.long MI_Arg+264
	.long Arg__Prepend
	.long MM_Arg+112
	.long MI_Arg+260
	.long Arg__Append
	.long MM_Arg+120
	.long MI_Arg+256
	.long Arg__NewList
	.long MM_Arg+127
	.long MI_Arg+252
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3dri"
	.ascii	"ver/src/Arg.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
