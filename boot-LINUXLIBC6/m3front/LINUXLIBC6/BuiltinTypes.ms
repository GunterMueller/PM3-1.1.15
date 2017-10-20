	.file	"BuiltinTypes.mc"
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
	.type	 BuiltinTypes__Initialize,@function
BuiltinTypes__Initialize:
	pushl %ebp
	movl MI_ErrType+48,%eax
	movl %esp,%ebp
	call *%eax
	movl MI_Int+48,%eax
	call *%eax
	movl MI_Card+48,%eax
	call *%eax
	movl MI_Bool+64,%eax
	call *%eax
	movl MI_Reel+48,%eax
	call *%eax
	movl MI_LReel+48,%eax
	call *%eax
	movl MI_EReel+48,%eax
	call *%eax
	movl MI_CChar+48,%eax
	call *%eax
	movl MI_Null+52,%eax
	call *%eax
	movl MI_Addr+48,%eax
	call *%eax
	movl MI_Reff+48,%eax
	call *%eax
	movl MI_ObjectRef+48,%eax
	call *%eax
	movl MI_ObjectAdr+48,%eax
	call *%eax
	movl MI_Textt+48,%eax
	call *%eax
	movl MI_Mutex+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 BuiltinTypes__Initialize,.Lfe1-BuiltinTypes__Initialize
.globl MM_BuiltinTypes
.data
	.align 4
	.type	 MM_BuiltinTypes,@object
	.size	 MM_BuiltinTypes,232
MM_BuiltinTypes:
	.long MM_BuiltinTypes+76
	.zero	16
	.long MM_BuiltinTypes+60
	.zero	20
	.long BuiltinTypes__Initialize
	.ascii	"Initialize"
	.zero	2
	.long BuiltinTypes__Initialize
	.long MM_BuiltinTypes+48
	.long MI_BuiltinTypes+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/BuiltinTypes.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
