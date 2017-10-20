	.file	"Params.mc"
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
	.type	 Params__Get,@function
Params__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl %ebx,MI_Params+44
	jg .L3
	pushl $0
	pushl $MM_Params+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L3:
	pushl %ebx
	movl MI_RTArgs+48,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L4:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Params__Get,.Lfe1-Params__Get
	.align 16
	.type	 _INITM_Params,@function
_INITM_Params:
	pushl %ebp
	movl MI_RTArgs+44,%eax
	movl %esp,%ebp
	call *%eax
	movl %eax,MI_Params+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 _INITM_Params,.Lfe2-_INITM_Params
.globl MM_Params
.data
	.align 4
	.type	 MM_Params,@object
	.size	 MM_Params,264
MM_Params:
	.long MM_Params+120
	.zero	16
	.long MM_Params+92
	.zero	16
	.long _INITM_Params
	.long MM_Params+48
	.ascii	"Params.FatalError"
	.zero	3
	.long Params__Get
	.ascii	"_INITM_Params"
	.zero	1
	.ascii	"Get"
	.zero	3
	.long _INITM_Params
	.long MM_Params+72
	.zero	4
	.long Params__Get
	.long MM_Params+86
	.long MI_Params+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/params/Params.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
