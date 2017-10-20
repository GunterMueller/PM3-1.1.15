	.file	"AtomListSort.mc"
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
	.type	 AtomListSort__Sort,@function
AtomListSort__Sort:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl %eax
	call AtomListSort__Copy
	pushl %ebx
	pushl %eax
	call AtomListSort__SortD
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 AtomListSort__Sort,.Lfe1-AtomListSort__Sort
	.align 16
	.type	 AtomListSort__SortD,@function
AtomListSort__SortD:
	pushl %ebp
	movl %esp,%ebp
	subl $140,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $112
	xorl %ebx,%ebx
	pushl %ebx
	leal -112(%ebp),%eax
	pushl %eax
	call memset
	movl %ebx,-116(%ebp)
	movl MM_AtomListSort+56,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-124(%ebp)
	addl $16,%esp
.L3:
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L5
	movl 8(%ebx),%edi
	testl %edi,%edi
	je .L5
	movl 8(%edi),%esi
	movl %esi,8(%ebp)
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L7
	cmpl $-1,(%edx)
	jne .L7
	movl 8(%edx),%esi
	movl %esi,-128(%ebp)
	movl 4(%edx),%edx
.L7:
	movl 4(%edi),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl -128(%ebp),%ecx
	call *%edx
	addl $8,%esp
	cmpl $-1,%eax
	jne .L9
	movl %edi,8(%ebx)
	movl $0,8(%edi)
	jmp .L10
	.align 16
.L9:
	movl %ebx,8(%edi)
	movl $0,8(%ebx)
	movl %edi,%ebx
.L10:
	movl $0,-120(%ebp)
.L11:
	cmpl $27,-120(%ebp)
	jle .L12
	pushl $705
	call _m3_fault
	.align 16
.L12:
	movl -120(%ebp),%esi
	movl -112(%ebp,%esi,4),%edi
	testl %edi,%edi
	jne .L16
	movl %ebx,-112(%ebp,%esi,4)
	jmp .L3
	.align 16
.L16:
	movl -120(%ebp),%esi
	movl $0,-112(%ebp,%esi,4)
	movl -124(%ebp),%esi
	movl %esi,-140(%ebp)
.L17:
	testl %ebx,%ebx
	je .L18
.L48:
	testl %edi,%edi
	jne .L19
.L18:
	pushl $848
	call _m3_fault
	.align 16
.L19:
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L20
	cmpl $-1,(%edx)
	jne .L20
	movl 8(%edx),%esi
	movl %esi,-132(%ebp)
	movl 4(%edx),%edx
.L20:
	movl 4(%edi),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl -132(%ebp),%ecx
	call *%edx
	addl $8,%esp
	cmpl $-1,%eax
	jne .L22
	movl -140(%ebp),%esi
	movl %ebx,8(%esi)
	movl %ebx,-140(%ebp)
	movl 8(%ebx),%ebx
	testl %ebx,%ebx
	jne .L48
	movl -140(%ebp),%esi
	movl %edi,8(%esi)
	jmp .L24
	.align 16
.L22:
	movl -140(%ebp),%esi
	movl %edi,8(%esi)
	movl %edi,-140(%ebp)
	movl 8(%edi),%edi
	testl %edi,%edi
	jne .L17
	movl -140(%ebp),%esi
	movl %ebx,8(%esi)
.L24:
	movl -124(%ebp),%esi
	movl 8(%esi),%ebx
	incl -120(%ebp)
	movl -116(%ebp),%esi
	cmpl %esi,-120(%ebp)
	jle .L11
	movl -120(%ebp),%esi
	movl %esi,-116(%ebp)
	jmp .L11
	.align 16
.L5:
	movl $0,-120(%ebp)
	testl %ebx,%ebx
	jne .L35
	jmp .L29
	.align 16
.L30:
	incl -120(%ebp)
.L29:
	cmpl $27,-120(%ebp)
	jle .L31
	pushl $1153
	call _m3_fault
	.align 16
.L31:
	movl -120(%ebp),%esi
	movl -112(%ebp,%esi,4),%eax
	testl %eax,%eax
	jne .L34
	movl -116(%ebp),%esi
	cmpl %esi,-120(%ebp)
	jne .L30
.L34:
	movl %eax,%ebx
	jmp .L38
	.align 16
.L36:
	cmpl $27,-120(%ebp)
	jle .L37
	pushl $1265
	call _m3_fault
	.align 16
.L37:
	movl -120(%ebp),%esi
	movl -112(%ebp,%esi,4),%edi
	testl %edi,%edi
	je .L38
	movl -124(%ebp),%esi
	movl %esi,-140(%ebp)
.L39:
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L40
	cmpl $-1,(%edx)
	jne .L40
	movl 8(%edx),%esi
	movl %esi,-136(%ebp)
	movl 4(%edx),%edx
.L40:
	movl 4(%edi),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl -136(%ebp),%ecx
	call *%edx
	addl $8,%esp
	cmpl $-1,%eax
	jne .L42
	movl -140(%ebp),%esi
	movl %ebx,8(%esi)
	movl %ebx,-140(%ebp)
	movl 8(%ebx),%ebx
	testl %ebx,%ebx
	jne .L39
	movl -140(%ebp),%esi
	movl %edi,8(%esi)
	jmp .L44
	.align 16
.L42:
	movl -140(%ebp),%esi
	movl %edi,8(%esi)
	movl %edi,-140(%ebp)
	movl 8(%edi),%edi
	testl %edi,%edi
	jne .L39
	movl -140(%ebp),%esi
	movl %ebx,8(%esi)
.L44:
	movl -124(%ebp),%esi
	movl 8(%esi),%ebx
.L38:
	incl -120(%ebp)
.L35:
	movl -116(%ebp),%esi
	cmpl %esi,-120(%ebp)
	jle .L36
	leal -152(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AtomListSort__SortD,.Lfe2-AtomListSort__SortD
	.align 16
	.type	 AtomListSort__Copy,@function
AtomListSort__Copy:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L55
	movl MM_AtomListSort+56,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	addl $4,%esp
	movl %eax,4(%edx)
	movl %esi,8(%edx)
	movl %edx,%esi
	movl %esi,%edi
	jmp .L56
	.align 16
.L52:
	movl MM_AtomListSort+56,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	addl $4,%esp
	movl %eax,4(%edx)
	movl $0,8(%edx)
	movl %edx,8(%edi)
	movl %edx,%edi
.L56:
	movl 8(%ebx),%ebx
	testl %ebx,%ebx
	jne .L52
.L55:
	movl %esi,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 AtomListSort__Copy,.Lfe3-AtomListSort__Copy
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AtomListSort
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_AtomListSort
.data
	.align 4
	.type	 MM_AtomListSort,@object
	.size	 MM_AtomListSort,284
MM_AtomListSort:
	.long MM_AtomListSort+120
	.zero	4
	.long MM_AtomListSort+56
	.zero	8
	.long MM_AtomListSort+80
	.zero	20
	.long AtomListSort__Copy
	.long AtomListSort__Sort
	.long AtomListSort__SortD
	.zero	4
	.long -1388739978
	.ascii	"Copy"
	.zero	1
	.ascii	"SortD"
	.zero	1
	.ascii	"Sort"
	.zero	1
	.long AtomListSort__Copy
	.long MM_AtomListSort+64
	.zero	4
	.long AtomListSort__SortD
	.long MM_AtomListSort+69
	.long MI_AtomListSort+48
	.long AtomListSort__Sort
	.long MM_AtomListSort+75
	.long MI_AtomListSort+44
	.zero	4
	.ascii	"AtomListSort.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language"
	.ascii	"/modula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/bo"
	.ascii	"ot-LINUXLIBC6/libm3/src/list/ListSort.mg"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
