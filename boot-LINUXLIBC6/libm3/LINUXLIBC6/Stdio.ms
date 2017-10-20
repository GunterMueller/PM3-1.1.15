	.file	"Stdio.mc"
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
	.type	 Stdio__ShutDown,@function
Stdio__ShutDown:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	pushl %esi
	pushl %ebx
.L2:
	movl $MM_Stdio+48,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L1
	movl MI_Stdio+48,%ecx
	testl %ecx,%ecx
	je .L4
	movl MM_Stdio+60,%ebx
	movl 24(%ebx),%eax
	cmpb $0,20(%eax,%ecx)
	jne .L4
	movl (%ecx),%edx
	movl 36(%ebx),%eax
	movl 12(%eax,%edx),%eax
	pushl %ecx
	call *%eax
	addl $4,%esp
.L4:
	movl MI_Stdio+52,%ecx
	testl %ecx,%ecx
	je .L6
	movl MM_Stdio+60,%ebx
	movl 24(%ebx),%eax
	cmpb $0,20(%eax,%ecx)
	jne .L6
	movl (%ecx),%edx
	movl 36(%ebx),%eax
	movl 12(%eax,%edx),%eax
	pushl %ecx
	call *%eax
.L6:
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L3:
.L1:
	leal -188(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Stdio__ShutDown,.Lfe1-Stdio__ShutDown
	.align 16
	.type	 _INITM_Stdio,@function
_INITM_Stdio:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -12(%ebp),%eax
	pushl %ebx
	movl $0,MI_Stdio+44
	movl $0,MI_Stdio+48
	movl $0,MI_Stdio+52
	movl $0,MI_Stdio+56
	movl $0,-4(%ebp)
	movl $0,-8(%ebp)
	movl $0,-12(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_Process+176,%eax
	call *%eax
	addl $12,%esp
	cmpl $0,-4(%ebp)
	je .L11
	movl MM_Stdio+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_Stdio+76,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl %eax,%ecx
	movl %ecx,MI_Stdio+44
	addl $12,%esp
.L11:
	cmpl $0,-8(%ebp)
	je .L12
	movl MM_Stdio+84,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_Stdio+92,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	pushl $1
	movl -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl %eax,%ecx
	movl %ecx,MI_Stdio+48
	addl $16,%esp
.L12:
	cmpl $0,-12(%ebp)
	je .L13
	movl MM_Stdio+84,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_Stdio+92,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	pushl $0
	movl -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl %eax,%ecx
	movl %ecx,MI_Stdio+52
	movl MM_Stdio+84,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_Stdio+92,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	pushl $1
	movl -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl %eax,%ecx
	movl %ecx,MI_Stdio+56
	addl $32,%esp
.L13:
	movl MM_Stdio+44,%eax
	pushl %eax
	movl MI_Process+164,%eax
	call *%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 _INITM_Stdio,.Lfe2-_INITM_Stdio
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Stdio
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_Stdio
.data
	.align 4
	.type	 MM_Stdio,@object
	.size	 MM_Stdio,296
MM_Stdio:
	.long MM_Stdio+152
	.zero	4
	.long MM_Stdio+60
	.zero	8
	.long MM_Stdio+124
	.zero	16
	.long _INITM_Stdio
	.long Stdio__ShutDown
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long MM_Stdio+68
	.long -1861675307
	.long MM_Stdio+76
	.long 1045706454
	.long MM_Stdio+84
	.long 1045706453
	.long MM_Stdio+92
	.long -492241990
	.zero	4
	.long -492241991
	.ascii	"_INITM_Stdio"
	.zero	1
	.ascii	"ShutDown"
	.zero	3
	.long _INITM_Stdio
	.long MM_Stdio+100
	.zero	4
	.long Stdio__ShutDown
	.long MM_Stdio+113
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/Stdio.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
