	.file	"RTThreadStk.mc"
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
	.type	 RTThread__GetStack,@function
RTThread__GetStack:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	movl $-1,%esi
	pushl %ebx
	movl 8(%ebp),%edi
	sall $2,%edi
	movl %edi,-12(%ebp)
	movl MM_RTThreadStk+48,%edx
	jmp .L9
	.align 16
.L3:
	cmpl $49,%edx
	jle .L4
	pushl $385
	call _m3_fault
	.align 16
.L4:
	leal (%edx,%edx,2),%eax
	leal 0(,%eax,4),%ebx
	movl %ebx,%ecx
	addl $L_1,%ecx
	movl %ecx,-4(%ebp)
	movl 4(%ecx),%eax
	movl 8(%ecx),%edi
	subl %eax,%edi
	movl %edi,%eax
	cmpl %eax,-12(%ebp)
	jne .L5
	movl MM_RTThreadStk+48,%eax
	decl %eax
	jns .L6
	pushl $449
	call _m3_fault
	.align 16
.L6:
	movl %eax,MM_RTThreadStk+48
	movl 12(%ebp),%edx
	movl L_1(%ebx),%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl MM_RTThreadStk+48,%eax
	cmpl $49,%eax
	jle .L7
	pushl $481
	call _m3_fault
	.align 16
.L7:
	movl $L_1,%ecx
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl -4(%ebp),%ebx
	movl (%ecx,%eax),%edx
	movl %edx,(%ebx)
	movl 4(%ecx,%eax),%edx
	movl %edx,4(%ebx)
	movl 8(%ecx,%eax),%eax
	movl %eax,8(%ebx)
	movl MM_RTThreadStk+48,%eax
	cmpl $49,%eax
	jle .L8
	pushl $497
	call _m3_fault
	.align 16
.L8:
	leal (%eax,%eax,2),%eax
	movl $0,L_1(,%eax,4)
	jmp .L1
	.align 16
.L5:
	cmpl %eax,-12(%ebp)
	jg .L9
	testl %esi,%esi
	jl .L10
	cmpl %eax,-8(%ebp)
	jle .L9
.L10:
	movl %edx,%esi
	movl %eax,-8(%ebp)
.L9:
	decl %edx
	jns .L3
	testl %esi,%esi
	jl .L12
	movl MM_RTThreadStk+48,%eax
	decl %eax
	jns .L13
	pushl $657
	call _m3_fault
	.align 16
.L13:
	movl %eax,MM_RTThreadStk+48
	cmpl $49,%esi
	jbe .L14
	pushl $673
	call _m3_fault
	.align 16
.L14:
	movl $L_1,%ebx
	leal (%esi,%esi,2),%eax
	leal 0(,%eax,4),%ecx
	movl 12(%ebp),%edx
	movl (%ebx,%ecx),%eax
	movl %eax,(%edx)
	movl 4(%ebx,%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ebx,%ecx),%eax
	movl %eax,8(%edx)
	movl MM_RTThreadStk+48,%eax
	cmpl $49,%eax
	jle .L16
	pushl $689
	call _m3_fault
	.align 16
.L16:
	leal (%eax,%eax,2),%edx
	sall $2,%edx
	movl (%ebx,%edx),%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%ebx,%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%ebx,%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl $0,L_1(%edx)
	jmp .L1
	.align 16
.L12:
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edi
	pushl %edi
	movl MI_RTThread+160,%eax
	call *%eax
.L1:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTThread__GetStack,.Lfe1-RTThread__GetStack
	.align 16
	.type	 RTThread__FreeStack,@function
RTThread__FreeStack:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl MM_RTThreadStk+48,%esi
	cmpl $49,%esi
	jg .L19
	movl $L_1,%ebx
	leal (%esi,%esi,2),%edx
	sall $2,%edx
	movl 8(%ebp),%ecx
	incl %esi
	movl (%ecx),%eax
	movl %eax,(%ebx,%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%ebx,%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%ebx,%edx)
	movl %esi,MM_RTThreadStk+48
	movl $0,(%ecx)
	movl 8(%ebp),%eax
	movl $0,4(%eax)
	movl $0,8(%eax)
	jmp .L18
	.align 16
.L19:
	cmpl %esi,MM_RTThreadStk+52
	jl .L22
	movl $0,MM_RTThreadStk+52
.L22:
	movl MM_RTThreadStk+52,%eax
	cmpl $49,%eax
	jle .L23
	pushl $1009
	call _m3_fault
	.align 16
.L23:
	leal (%eax,%eax,2),%eax
	leal L_1(,%eax,4),%eax
	pushl %eax
	movl MI_RTThread+164,%eax
	call *%eax
	movl MM_RTThreadStk+52,%esi
	addl $4,%esp
	cmpl $49,%esi
	jle .L24
	pushl $1025
	call _m3_fault
	.align 16
.L24:
	movl $L_1,%ebx
	leal (%esi,%esi,2),%ecx
	sall $2,%ecx
	movl 8(%ebp),%edx
	incl %esi
	movl (%edx),%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl %esi,MM_RTThreadStk+52
.L18:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTThread__FreeStack,.Lfe2-RTThread__FreeStack
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTThreadStk
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_RTThreadStk
.data
	.align 4
	.type	 MM_RTThreadStk,@object
	.size	 MM_RTThreadStk,268
MM_RTThreadStk:
	.long MM_RTThreadStk+112
	.zero	16
	.long MM_RTThreadStk+84
	.zero	20
	.long L_1
	.zero	8
	.long RTThread__GetStack
	.long RTThread__FreeStack
	.ascii	"FreeStack"
	.zero	1
	.ascii	"GetStack"
	.zero	2
	.long RTThread__FreeStack
	.long MM_RTThreadStk+64
	.long MI_RTThread+156
	.long RTThread__GetStack
	.long MM_RTThreadStk+74
	.long MI_RTThread+152
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/POSIX/RTThreadStk.m3"
	.zero	2
	.local	L_1
	.comm	L_1,600,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
