	.file	"ErrType.mc"
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
	.type	 ErrType__Check,@function
ErrType__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl $0,16(%eax)
	movl $0,20(%eax)
	movl $1,24(%eax)
	movb $0,33(%eax)
	movb $0,32(%eax)
	movb $0,34(%eax)
	movb 35(%eax),%dl
	andb $252,%dl
	andl $255,%edx
	orb $4,%dl
	movb %dl,35(%eax)
	movl $4,28(%eax)
	popl %ebp
	ret
.Lfe1:
	.size	 ErrType__Check,.Lfe1-ErrType__Check
	.align 16
	.type	 ErrType__Compiler,@function
ErrType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ErrType__Compiler,.Lfe2-ErrType__Compiler
	.align 16
	.type	 ErrType__InitCoster,@function
ErrType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ErrType__InitCoster,.Lfe3-ErrType__InitCoster
	.align 16
	.type	 ErrType__FPrinter,@function
ErrType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl $MM_ErrType+180,(%eax)
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movl $0,8(%eax)
	popl %ebp
	ret
.Lfe4:
	.size	 ErrType__FPrinter,.Lfe4-ErrType__FPrinter
	.align 16
	.type	 ErrType__GenMap,@function
ErrType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ErrType__GenMap,.Lfe5-ErrType__GenMap
	.align 16
	.type	 ErrType__GenDesc,@function
ErrType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ErrType__GenDesc,.Lfe6-ErrType__GenDesc
	.align 16
	.type	 ErrType__Initialize,@function
ErrType__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ErrType+200,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_ErrType+44
	pushl $0
	pushl %eax
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $0
	movl MI_ErrType+44,%eax
	pushl %eax
	pushl $MM_ErrType+212
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ErrType__Initialize,.Lfe7-ErrType__Initialize
	.align 16
	.type	 M_ErrType_t7a9b846a_LINK,@function
M_ErrType_t7a9b846a_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ErrType+200,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ErrType+148,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MI_TypeRep+152,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_ErrType+152,%eax
	movl %eax,20(%edx)
	movl MM_ErrType+156,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_ErrType+164,%eax
	movl %eax,32(%edx)
	movl MM_ErrType+168,%eax
	movl %eax,36(%edx)
	movl MM_ErrType+160,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_ErrType_t7a9b846a_LINK,.Lfe8-M_ErrType_t7a9b846a_LINK
.globl MM_ErrType
.data
	.align 4
	.type	 MM_ErrType,@object
	.size	 MM_ErrType,556
MM_ErrType:
	.long MM_ErrType+380
	.long MM_ErrType+44
	.long MM_ErrType+200
	.zero	8
	.long MM_ErrType+292
	.zero	28
	.long 2057012330
.byte 6
.byte 87
.byte 250
.byte 115
.byte 108
.byte 211
.byte 97
.byte 9
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_ErrType+531
	.zero	4
	.long M_ErrType_t7a9b846a_LINK
	.long -2121051098
	.zero	12
	.long MM_ErrType+534
	.long MM_ErrType+544
	.zero	4
	.long ErrType__Check
	.long ErrType__Compiler
	.long ErrType__InitCoster
	.long ErrType__FPrinter
	.long ErrType__GenMap
	.long ErrType__GenDesc
	.long ErrType__Initialize
	.long 2
	.long MM_ErrType+188
	.long 9
	.ascii	"$ErrType"
	.zero	8
	.long 2057012330
	.long 2
	.long MM_ErrType+220
	.long 7
	.ascii	"_ERROR"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"FPrinter"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"Check"
	.zero	4
	.long ErrType__Initialize
	.long MM_ErrType+228
	.long MI_ErrType+48
	.long ErrType__GenDesc
	.long MM_ErrType+239
	.zero	4
	.long ErrType__GenMap
	.long MM_ErrType+247
	.zero	4
	.long ErrType__FPrinter
	.long MM_ErrType+254
	.zero	4
	.long ErrType__InitCoster
	.long MM_ErrType+263
	.zero	4
	.long ErrType__Compiler
	.long MM_ErrType+274
	.zero	4
	.long ErrType__Check
	.long MM_ErrType+283
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/ErrType.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"ErrType.T"
	.zero	1
	.ascii	"ErrType.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
