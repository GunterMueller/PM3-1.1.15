	.file	"Ord.mc"
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
	.type	 Ord__Check,@function
Ord__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%eax)
	jne .L3
	pushl $306
	call _m3_fault
	.align 16
.L3:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L4
	pushl $MM_Ord+68
	movl MI_Error+44,%eax
	call *%eax
.L4:
	movl MI_Int+44,%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Ord__Check,.Lfe1-Ord__Check
	.align 16
	.type	 Ord__Compile,@function
Ord__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L6
	pushl $452
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $450
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Ord__Compile,.Lfe2-Ord__Compile
	.align 16
	.type	 Ord__Fold,@function
Ord__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
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
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L14
	leal -4(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L13
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L14
.L13:
	pushl %esi
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%ebx
.L14:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Ord__Fold,.Lfe3-Ord__Fold
	.align 16
	.type	 Ord__Initialize,@function
Ord__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Ord+56,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Ord+52,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_Ord+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Ord+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Ord+116
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Ord__Initialize,.Lfe4-Ord__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Ord
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Ord
.data
	.align 4
	.type	 MM_Ord,@object
	.size	 MM_Ord,364
MM_Ord:
	.long MM_Ord+216
	.zero	16
	.long MM_Ord+160
	.zero	4
	.long MM_Ord+212
	.long MM_Ord+212
	.zero	12
	.long Ord__Check
	.long Ord__Compile
	.long Ord__Fold
	.long Ord__Initialize
	.long 2
	.long MM_Ord+76
	.long 33
	.ascii	"ORD: argument must be an ordinal"
	.zero	4
	.long 2
	.long MM_Ord+124
	.long 4
	.ascii	"ORD"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Ord__Initialize
	.long MM_Ord+128
	.long MI_Ord+44
	.long Ord__Fold
	.long MM_Ord+139
	.zero	4
	.long Ord__Compile
	.long MM_Ord+144
	.zero	4
	.long Ord__Check
	.long MM_Ord+152
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Ord.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
