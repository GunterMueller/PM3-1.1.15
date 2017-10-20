	.file	"WordModule.mc"
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
	.type	 WordModule__Initialize,@function
WordModule__Initialize:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	leal -8(%ebp),%esi
	pushl %esi
	movl MI_Target+96,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $8,%esp
	testb %al,%al
	jne .L2
	pushl $320
	call _m3_fault
	.align 16
.L2:
	pushl %ebx
	pushl $1
	pushl $MM_WordModule+52
	movl MI_Module+48,%eax
	call *%eax
	movl %eax,MI_WordModule+44
	pushl %eax
	movl MI_Module+84,%eax
	call *%eax
	pushl %eax
	movl MI_Scope+60,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Int+44,%eax
	pushl %eax
	movl MI_NamedType+48,%eax
	call *%eax
	pushl $0
	pushl %eax
	pushl $MM_WordModule+72
	movl MI_Tipe+48,%eax
	call *%eax
	addl $36,%esp
	pushl %esi
	movl MI_IntegerExpr+44,%eax
	call *%eax
	pushl $0
	pushl %eax
	pushl $MM_WordModule+88
	movl MI_Constant+48,%eax
	call *%eax
	movl MI_WordPlus+48,%eax
	call *%eax
	movl MI_WordTimes+44,%eax
	call *%eax
	movl MI_WordMinus+44,%eax
	call *%eax
	movl MI_WordDivide+44,%eax
	call *%eax
	movl MI_WordMod+44,%eax
	call *%eax
	movl MI_WordLT+44,%eax
	call *%eax
	movl MI_WordLE+44,%eax
	call *%eax
	movl MI_WordGT+44,%eax
	call *%eax
	movl MI_WordGE+44,%eax
	call *%eax
	movl MI_WordAnd+44,%eax
	call *%eax
	movl MI_WordOr+44,%eax
	call *%eax
	movl MI_WordXor+44,%eax
	call *%eax
	movl MI_WordNot+44,%eax
	call *%eax
	movl MI_WordShift+44,%eax
	call *%eax
	movl MI_WordRotate+44,%eax
	call *%eax
	movl MI_WordExtract+44,%eax
	call *%eax
	movl MI_WordInsert+44,%eax
	call *%eax
	pushl %ebx
	movl MI_Scope+64,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WordModule__Initialize,.Lfe1-WordModule__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordModule
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe2:
	.size	 _m3_fault,.Lfe2-_m3_fault
.globl MM_WordModule
.data
	.align 4
	.type	 MM_WordModule,@object
	.size	 MM_WordModule,288
MM_WordModule:
	.long MM_WordModule+132
	.zero	16
	.long MM_WordModule+116
	.zero	20
	.long WordModule__Initialize
	.long 2
	.long MM_WordModule+60
	.long 5
	.ascii	"Word"
	.zero	4
	.long 2
	.long MM_WordModule+80
	.long 2
	.ascii	"T"
	.zero	3
	.long 2
	.long MM_WordModule+96
	.long 5
	.ascii	"Size"
	.zero	4
	.ascii	"Initialize"
	.zero	2
	.long WordModule__Initialize
	.long MM_WordModule+104
	.long MI_WordModule+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordModule.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
