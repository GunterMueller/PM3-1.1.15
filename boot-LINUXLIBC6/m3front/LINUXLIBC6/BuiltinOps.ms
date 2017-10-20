	.file	"BuiltinOps.mc"
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
	.type	 BuiltinOps__Initialize,@function
BuiltinOps__Initialize:
	pushl %ebp
	movl MI_Abs+44,%eax
	movl %esp,%ebp
	call *%eax
	movl MI_Adr+44,%eax
	call *%eax
	movl MI_AdrSize+44,%eax
	call *%eax
	movl MI_BitSize+44,%eax
	call *%eax
	movl MI_ByteSize+44,%eax
	call *%eax
	movl MI_Ceiling+44,%eax
	call *%eax
	movl MI_Dec+44,%eax
	call *%eax
	movl MI_Dispose+44,%eax
	call *%eax
	movl MI_First+44,%eax
	call *%eax
	movl MI_Floatt+44,%eax
	call *%eax
	movl MI_Floor+44,%eax
	call *%eax
	movl MI_Inc+44,%eax
	call *%eax
	movl MI_IsType+44,%eax
	call *%eax
	movl MI_Last+44,%eax
	call *%eax
	movl MI_Loophole+44,%eax
	call *%eax
	movl MI_Max+44,%eax
	call *%eax
	movl MI_Min+44,%eax
	call *%eax
	movl MI_Narrow+44,%eax
	call *%eax
	movl MI_New+44,%eax
	call *%eax
	movl MI_Number+44,%eax
	call *%eax
	movl MI_Ord+44,%eax
	call *%eax
	movl MI_Round+44,%eax
	call *%eax
	movl MI_Subarray+44,%eax
	call *%eax
	movl MI_Trunc+44,%eax
	call *%eax
	movl MI_Typecode+44,%eax
	call *%eax
	movl MI_Val+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 BuiltinOps__Initialize,.Lfe1-BuiltinOps__Initialize
.globl MM_BuiltinOps
.data
	.align 4
	.type	 MM_BuiltinOps,@object
	.size	 MM_BuiltinOps,228
MM_BuiltinOps:
	.long MM_BuiltinOps+76
	.zero	16
	.long MM_BuiltinOps+60
	.zero	20
	.long BuiltinOps__Initialize
	.ascii	"Initialize"
	.zero	2
	.long BuiltinOps__Initialize
	.long MM_BuiltinOps+48
	.long MI_BuiltinOps+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/BuiltinOps.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
