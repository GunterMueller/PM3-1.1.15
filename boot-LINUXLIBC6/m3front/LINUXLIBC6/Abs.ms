	.file	"Abs.mc"
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
	.type	 Abs__TypeOf,@function
Abs__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L2
	pushl $292
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%eax)
	jne .L3
	pushl $290
	call _m3_fault
	.align 16
.L3:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Abs__TypeOf,.Lfe1-Abs__TypeOf
	.align 16
	.type	 Abs__Check,@function
Abs__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call Abs__TypeOf
	movl %eax,8(%ebx)
	addl $4,%esp
	cmpl %eax,MI_Int+44
	jne .L5
	movl 12(%ebp),%eax
	incl 12(%eax)
	jmp .L4
	.align 16
.L5:
	cmpl %eax,MI_Reel+44
	je .L7
	cmpl %eax,MI_LReel+44
	je .L7
	cmpl %eax,MI_EReel+44
	jne .L8
.L7:
	movl 12(%ebp),%eax
	incl 16(%eax)
	jmp .L4
	.align 16
.L8:
	pushl $MM_Abs+72
	movl MI_Error+44,%eax
	call *%eax
.L4:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Abs__Check,.Lfe2-Abs__Check
	.align 16
	.type	 Abs__Compile,@function
Abs__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L10
	pushl $564
	call _m3_fault
	.align 16
.L10:
	cmpl $0,4(%eax)
	jne .L11
	pushl $562
	call _m3_fault
	.align 16
.L11:
	movl (%eax),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	movl %eax,%edx
	leal -1(%edx),%eax
	addl $16,%esp
	cmpl $4,%eax
	jbe .L12
	pushl $609
	call _m3_fault
	.align 16
.L12:
	pushl %edx
	movl MI_CG+480,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Abs__Compile,.Lfe3-Abs__Compile
	.align 16
	.type	 Abs__Fold,@function
Abs__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-20(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L14
	pushl $708
	call _m3_fault
	.align 16
.L14:
	cmpl $0,4(%eax)
	jne .L15
	pushl $706
	call _m3_fault
	.align 16
.L15:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L21
	leal -16(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	movl $MI_TInt+44,%edi
	pushl %edi
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L18
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L21
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%ebx
.L18:
	movl %ebx,%eax
	jmp .L21
	.align 16
.L17:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ReelExpr+84,%eax
	call *%eax
	testl %eax,%eax
	je .L21
	movl -20(%ebp),%eax
.L21:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Abs__Fold,.Lfe4-Abs__Fold
	.align 16
	.type	 Abs__Initialize,@function
Abs__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Abs+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Abs+56,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_Abs+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MM_Abs+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Abs+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Abs+112
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Abs__Initialize,.Lfe5-Abs__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Abs
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_Abs
.data
	.align 4
	.type	 MM_Abs,@object
	.size	 MM_Abs,380
MM_Abs:
	.long MM_Abs+232
	.zero	16
	.long MM_Abs+164
	.zero	4
	.long MM_Abs+228
	.long MM_Abs+228
	.zero	12
	.long Abs__TypeOf
	.long Abs__Check
	.long Abs__Compile
	.long Abs__Fold
	.long Abs__Initialize
	.long 2
	.long MM_Abs+80
	.long 25
	.ascii	"ABS: wrong argument type"
	.zero	4
	.long 2
	.long MM_Abs+120
	.long 4
	.ascii	"ABS"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	4
	.long Abs__Initialize
	.long MM_Abs+124
	.long MI_Abs+44
	.long Abs__Fold
	.long MM_Abs+135
	.zero	4
	.long Abs__Compile
	.long MM_Abs+140
	.zero	4
	.long Abs__Check
	.long MM_Abs+148
	.zero	4
	.long Abs__TypeOf
	.long MM_Abs+154
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Abs.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
