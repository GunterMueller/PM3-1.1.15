	.file	"WeakRef.mc"
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
	.type	 WeakRef__FromRef,@function
WeakRef__FromRef:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	movl MI_RTWeakRef+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WeakRef__FromRef,.Lfe1-WeakRef__FromRef
	.align 16
	.type	 WeakRef__ToRef,@function
WeakRef__ToRef:
	pushl %ebp
	movl %esp,%ebp
	leal 8(%ebp),%edx
	pushl %edx
	movl MI_RTWeakRef+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WeakRef__ToRef,.Lfe2-WeakRef__ToRef
.globl MM_WeakRef
.data
	.align 4
	.type	 MM_WeakRef,@object
	.size	 MM_WeakRef,244
MM_WeakRef:
	.long MM_WeakRef+96
	.zero	16
	.long MM_WeakRef+68
	.zero	20
	.long WeakRef__FromRef
	.long WeakRef__ToRef
	.ascii	"ToRef"
	.zero	1
	.ascii	"FromRef"
	.zero	3
	.long WeakRef__ToRef
	.long MM_WeakRef+52
	.long MI_WeakRef+48
	.long WeakRef__FromRef
	.long MM_WeakRef+58
	.long MI_WeakRef+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/weakref/WeakRef.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
