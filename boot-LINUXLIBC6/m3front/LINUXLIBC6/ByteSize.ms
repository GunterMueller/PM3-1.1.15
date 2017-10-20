	.file	"ByteSize.mc"
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
	.type	 ByteSize__Check,@function
ByteSize__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	pushl $MM_ByteSize+72
	movl MI_BitSize+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ByteSize__Check,.Lfe1-ByteSize__Check
	.align 16
	.type	 ByteSize__Prep,@function
ByteSize__Prep:
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
	.size	 ByteSize__Prep,.Lfe2-ByteSize__Prep
	.align 16
	.type	 ByteSize__Compile,@function
ByteSize__Compile:
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
	.size	 ByteSize__Compile,.Lfe3-ByteSize__Compile
	.align 16
	.type	 ByteSize__Fold,@function
ByteSize__Fold:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L9
	pushl $548
	call _m3_fault
	.align 16
.L9:
	cmpl $0,4(%eax)
	jne .L10
	pushl $546
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
	.size	 ByteSize__Fold,.Lfe4-ByteSize__Fold
	.align 16
	.type	 ByteSize__Initialize,@function
ByteSize__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_ByteSize+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_ByteSize+56,%eax
	pushl %eax
	movl MM_ByteSize+52,%eax
	pushl %eax
	movl MM_ByteSize+48,%eax
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
	movl %eax,MM_ByteSize+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_ByteSize+72
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ByteSize__Initialize,.Lfe5-ByteSize__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ByteSize
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_ByteSize
.data
	.align 4
	.type	 MM_ByteSize,@object
	.size	 MM_ByteSize,348
MM_ByteSize:
	.long MM_ByteSize+196
	.zero	16
	.long MM_ByteSize+128
	.zero	4
	.long MM_ByteSize+192
	.long MM_ByteSize+192
	.zero	12
	.long ByteSize__Check
	.long ByteSize__Prep
	.long ByteSize__Compile
	.long ByteSize__Fold
	.long ByteSize__Initialize
	.long 2
	.long MM_ByteSize+80
	.long 9
	.ascii	"BYTESIZE"
	.zero	4
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
	.long ByteSize__Initialize
	.long MM_ByteSize+92
	.long MI_ByteSize+44
	.long ByteSize__Fold
	.long MM_ByteSize+103
	.zero	4
	.long ByteSize__Compile
	.long MM_ByteSize+108
	.zero	4
	.long ByteSize__Prep
	.long MM_ByteSize+116
	.zero	4
	.long ByteSize__Check
	.long MM_ByteSize+121
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/ByteSize.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
