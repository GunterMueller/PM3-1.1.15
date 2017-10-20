	.file	"ObjectAdr.mc"
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
	.type	 ObjectAdr__Initialize,@function
ObjectAdr__Initialize:
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
	movl $0,MI_ObjectAdr+44
	pushl %ebx
	pushl %ebx
	pushl $0
	pushl $0
	pushl $0
	movl MI_ObjectType+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $36,%esp
	movl %ebx,MI_ObjectAdr+44
	pushl $0
	pushl %ebx
	pushl $MM_ObjectAdr+52
	movl MI_Tipe+48,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ObjectAdr__Initialize,.Lfe1-ObjectAdr__Initialize
.globl MM_ObjectAdr
.data
	.align 4
	.type	 MM_ObjectAdr,@object
	.size	 MM_ObjectAdr,260
MM_ObjectAdr:
	.long MM_ObjectAdr+104
	.zero	16
	.long MM_ObjectAdr+88
	.zero	20
	.long ObjectAdr__Initialize
	.long 2
	.long MM_ObjectAdr+60
	.long 15
	.ascii	"_UNTRACED_ROOT"
	.zero	2
	.ascii	"Initialize"
	.zero	2
	.long ObjectAdr__Initialize
	.long MM_ObjectAdr+76
	.long MI_ObjectAdr+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/ObjectAdr.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
