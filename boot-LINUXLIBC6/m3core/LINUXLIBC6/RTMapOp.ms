	.file	"RTMapOp.mc"
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
	.type	 RTMapOp__GetInt,@function
RTMapOp__GetInt:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl (%edi),%edx
	testl %edx,%edx
	jne .L2
	pushl $228
	call _m3_fault
	.align 16
.L2:
	movzbl (%edx),%esi
	xorl %eax,%eax
	movb 12(%ebp),%al
	leal -1(%eax),%ebx
	movl $8,%ecx
	incl %edx
	jmp .L3
	.align 16
.L4:
	testl %edx,%edx
	jne .L5
	pushl $324
	call _m3_fault
	.align 16
.L5:
	cmpl $31,%ecx
	jle .L11
	pushl $321
	call _m3_fault
	.align 16
.L11:
	xorl %eax,%eax
	movb (%edx),%al
	sall %cl,%eax
	orl %eax,%esi
	incl %edx
	addl $8,%ecx
	leal -1(%ebx),%eax
	testl %eax,%eax
	jge .L9
	pushl $369
	call _m3_fault
	.align 16
.L9:
	movl %eax,%ebx
.L3:
	testl %ebx,%ebx
	jg .L4
	movl %edx,(%edi)
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTMapOp__GetInt,.Lfe1-RTMapOp__GetInt
	.align 16
	.type	 RTMapOp__Push,@function
RTMapOp__Push:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 16(%ebp),%ebx
	movl (%edx),%eax
	cmpl $127,%eax
	jbe .L13
	pushl $497
	call _m3_fault
	.align 16
.L13:
	leal 4(%edx,%eax,8),%eax
	movl %eax,-4(%ebp)
	movl %ecx,(%eax)
	movl -4(%ebp),%eax
	movl %ebx,4(%eax)
	movl 8(%ebp),%eax
	incl (%eax)
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTMapOp__Push,.Lfe2-RTMapOp__Push
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTMapOp
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_RTMapOp
.data
	.align 4
	.type	 MM_RTMapOp,@object
	.size	 MM_RTMapOp,244
MM_RTMapOp:
	.long MM_RTMapOp+92
	.zero	16
	.long MM_RTMapOp+64
	.zero	20
	.long RTMapOp__GetInt
	.long RTMapOp__Push
	.ascii	"Push"
	.zero	1
	.ascii	"GetInt"
	.zero	1
	.long RTMapOp__Push
	.long MM_RTMapOp+52
	.long MI_RTMapOp+708
	.long RTMapOp__GetInt
	.long MM_RTMapOp+57
	.long MI_RTMapOp+704
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTMapOp.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
