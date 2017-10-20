	.file	"Bundle.mc"
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
	.type	 Bundle__Get,@function
Bundle__Get:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%ebp),%edx
	movl 4(%eax),%eax
	pushl %edx
	pushl %ecx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Bundle__Get,.Lfe1-Bundle__Get
	.align 16
	.type	 Bundle__Elts,@function
Bundle__Elts:
	pushl %ebp
	movl %esp,%ebp
	pushl $256
	call _m3_fault
	.align 16
.Lfe2:
	.size	 Bundle__Elts,.Lfe2-Bundle__Elts
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Bundle
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_Bundle
.data
	.align 4
	.type	 MM_Bundle,@object
	.size	 MM_Bundle,240
MM_Bundle:
	.long MM_Bundle+92
	.zero	16
	.long MM_Bundle+64
	.zero	20
	.long Bundle__Get
	.long Bundle__Elts
	.ascii	"Elts"
	.zero	1
	.ascii	"Get"
	.zero	4
	.long Bundle__Elts
	.long MM_Bundle+52
	.long MI_Bundle+152
	.long Bundle__Get
	.long MM_Bundle+57
	.long MI_Bundle+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/bundleintf/Bundle.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
