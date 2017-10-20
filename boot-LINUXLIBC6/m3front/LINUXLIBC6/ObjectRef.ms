	.file	"ObjectRef.mc"
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
	.type	 ObjectRef__Initialize,@function
ObjectRef__Initialize:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %eax,%eax
	pushl %eax
	pushl %eax
	pushl %eax
	pushl %eax
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Scope+48,%eax
	call *%eax
	movl $0,MI_ObjectRef+44
	pushl %ebx
	pushl %ebx
	pushl $0
	pushl $1
	pushl $0
	movl MI_ObjectType+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $36,%esp
	movl %ebx,MI_ObjectRef+44
	pushl $1
	pushl %ebx
	pushl $MM_ObjectRef+52
	movl MI_Tipe+48,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ObjectRef__Initialize,.Lfe1-ObjectRef__Initialize
.globl MM_ObjectRef
.data
	.align 4
	.type	 MM_ObjectRef,@object
	.size	 MM_ObjectRef,252
MM_ObjectRef:
	.long MM_ObjectRef+96
	.zero	16
	.long MM_ObjectRef+80
	.zero	20
	.long ObjectRef__Initialize
	.long 2
	.long MM_ObjectRef+60
	.long 5
	.ascii	"ROOT"
	.zero	4
	.ascii	"Initialize"
	.zero	2
	.long ObjectRef__Initialize
	.long MM_ObjectRef+68
	.long MI_ObjectRef+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/ObjectRef.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
