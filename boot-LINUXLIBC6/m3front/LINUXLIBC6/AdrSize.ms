	.file	"AdrSize.mc"
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
	.type	 AdrSize__Check,@function
AdrSize__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	pushl $MM_AdrSize+72
	movl MI_BitSize+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 AdrSize__Check,.Lfe1-AdrSize__Check
	.align 16
	.type	 AdrSize__Prep,@function
AdrSize__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L3
	pushl $356
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $354
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_BitSize+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AdrSize__Prep,.Lfe2-AdrSize__Prep
	.align 16
	.type	 AdrSize__Compile,@function
AdrSize__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L6
	pushl $436
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $434
	call _m3_fault
	.align 16
.L7:
	pushl $8
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_BitSize+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 AdrSize__Compile,.Lfe3-AdrSize__Compile
	.align 16
	.type	 AdrSize__Fold,@function
AdrSize__Fold:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L9
	pushl $516
	call _m3_fault
	.align 16
.L9:
	cmpl $0,4(%eax)
	jne .L10
	pushl $514
	call _m3_fault
	.align 16
.L10:
	pushl $8
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_BitSize+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 AdrSize__Fold,.Lfe4-AdrSize__Fold
	.align 16
	.type	 AdrSize__Initialize,@function
AdrSize__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_AdrSize+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_AdrSize+56,%eax
	pushl %eax
	movl MM_AdrSize+52,%eax
	pushl %eax
	movl MM_AdrSize+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Card+44,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_AdrSize+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_AdrSize+72
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 AdrSize__Initialize,.Lfe5-AdrSize__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AdrSize
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_AdrSize
.data
	.align 4
	.type	 MM_AdrSize,@object
	.size	 MM_AdrSize,344
MM_AdrSize:
	.long MM_AdrSize+192
	.zero	16
	.long MM_AdrSize+124
	.zero	4
	.long MM_AdrSize+188
	.long MM_AdrSize+188
	.zero	12
	.long AdrSize__Check
	.long AdrSize__Prep
	.long AdrSize__Compile
	.long AdrSize__Fold
	.long AdrSize__Initialize
	.long 2
	.long MM_AdrSize+80
	.long 8
	.ascii	"ADRSIZE"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	2
	.long AdrSize__Initialize
	.long MM_AdrSize+88
	.long MI_AdrSize+44
	.long AdrSize__Fold
	.long MM_AdrSize+99
	.zero	4
	.long AdrSize__Compile
	.long MM_AdrSize+104
	.zero	4
	.long AdrSize__Prep
	.long MM_AdrSize+112
	.zero	4
	.long AdrSize__Check
	.long MM_AdrSize+117
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/AdrSize.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
