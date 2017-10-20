	.file	"RTModule.mc"
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
	.type	 RTModule__Count,@function
RTModule__Count:
	pushl %ebp
	movl %esp,%ebp
	movl MI_RT0u+44,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTModule__Count,.Lfe1-RTModule__Count
	.align 16
	.type	 RTModule__Get,@function
RTModule__Get:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MI_RT0u+152,%esi
	cmpl %ebx,MI_RT0u+44
	jg .L3
	pushl %ebx
	pushl $MM_RTModule+56
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
.L3:
	leal (%esi,%ebx,4),%eax
	testl %eax,%eax
	jne .L4
	pushl $388
	call _m3_fault
	.align 16
.L4:
	leal -8(%ebp),%esp
	movl (%eax),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTModule__Get,.Lfe2-RTModule__Get
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTModule
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_RTModule
.data
	.align 4
	.type	 MM_RTModule,@object
	.size	 MM_RTModule,284
MM_RTModule:
	.long MM_RTModule+128
	.zero	16
	.long MM_RTModule+100
	.zero	20
	.long RTModule__Count
	.long RTModule__Get
	.long 2
	.long MM_RTModule+64
	.long 24
	.ascii	"improper module index: "
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Count"
	.zero	3
	.long RTModule__Get
	.long MM_RTModule+88
	.long MI_RTModule+48
	.long RTModule__Count
	.long MM_RTModule+92
	.long MI_RTModule+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTModule.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
