	.file	"Uerror.mc"
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
	.type	 Uerror__GetFrom_sys_errlist,@function
Uerror__GetFrom_sys_errlist:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	jl .L2
	cmpl $122,%edx
	jle .L3
.L2:
	pushl $224
	call _m3_fault
	.align 16
.L3:
	cmpl $122,%edx
	jbe .L4
	pushl $241
	call _m3_fault
	.align 16
.L4:
	movl $sys_errlist,%eax
	movl %ebp,%esp
	popl %ebp
	movl (%eax,%edx,4),%eax
	ret
.Lfe1:
	.size	 Uerror__GetFrom_sys_errlist,.Lfe1-Uerror__GetFrom_sys_errlist
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Uerror
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe2:
	.size	 _m3_fault,.Lfe2-_m3_fault
.globl MM_Uerror
.data
	.align 4
	.type	 MM_Uerror,@object
	.size	 MM_Uerror,240
MM_Uerror:
	.long MM_Uerror+84
	.zero	16
	.long MM_Uerror+68
	.zero	20
	.long Uerror__GetFrom_sys_errlist
	.ascii	"GetFrom_sys_errlist"
	.zero	1
	.long Uerror__GetFrom_sys_errlist
	.long MM_Uerror+48
	.long MI_Uerror+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/unix/linux-libc6/Uerror.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
