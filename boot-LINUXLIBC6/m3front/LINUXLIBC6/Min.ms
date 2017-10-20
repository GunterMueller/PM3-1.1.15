	.file	"Min.mc"
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
	.type	 Min__Check,@function
Min__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Min+68
	movl MI_Max+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Min__Check,.Lfe1-Min__Check
	.align 16
	.type	 Min__Compile,@function
Min__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L3
	pushl $372
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $370
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	pushl $388
	call _m3_fault
	.align 16
.L5:
	cmpl $1,4(%eax)
	ja .L6
	pushl $386
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L7
	pushl $404
	call _m3_fault
	.align 16
.L7:
	cmpl $0,4(%eax)
	jne .L8
	pushl $402
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	addl $16,%esp
	cmpl $5,%eax
	jle .L9
	pushl $401
	call _m3_fault
	.align 16
.L9:
	pushl %eax
	movl MI_CG+488,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Min__Compile,.Lfe2-Min__Compile
	.align 16
	.type	 Min__Fold,@function
Min__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-4(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L11
	pushl $500
	call _m3_fault
	.align 16
.L11:
	cmpl $0,4(%eax)
	jne .L12
	pushl $498
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L22
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L14
	pushl $532
	call _m3_fault
	.align 16
.L14:
	cmpl $1,4(%eax)
	ja .L15
	pushl $530
	call _m3_fault
	.align 16
.L15:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	je .L22
	leal -20(%ebp),%edx
	movl %edx,-28(%ebp)
	pushl %edx
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	leal -12(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	pushl %edi
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	jne .L23
	jmp .L20
	.align 16
.L17:
	leal -4(%ebp),%edi
	pushl %edi
	leal -20(%ebp),%edx
	movl %edx,-32(%ebp)
	pushl %edx
	pushl %ebx
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L19
	pushl %edi
	leal -12(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L19
	pushl %edi
	movl -32(%ebp),%edx
	pushl %edx
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L20
.L23:
	movl %ebx,%eax
	jmp .L22
	.align 16
.L20:
	movl %esi,%eax
	jmp .L22
	.align 16
.L19:
	leal -24(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	movl MI_ReelExpr+72,%eax
	call *%eax
	testl %eax,%eax
	je .L22
	movl -24(%ebp),%eax
.L22:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Min__Fold,.Lfe3-Min__Fold
	.align 16
	.type	 Min__Initialize,@function
Min__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Min+56,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Min+52,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_Min+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MI_Max+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Min+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Min+68
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Min__Initialize,.Lfe4-Min__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Min
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Min
.data
	.align 4
	.type	 MM_Min,@object
	.size	 MM_Min,316
MM_Min:
	.long MM_Min+168
	.zero	16
	.long MM_Min+112
	.zero	4
	.long MM_Min+164
	.long MM_Min+164
	.zero	12
	.long Min__Check
	.long Min__Compile
	.long Min__Fold
	.long Min__Initialize
	.long 2
	.long MM_Min+76
	.long 4
	.ascii	"MIN"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Min__Initialize
	.long MM_Min+80
	.long MI_Min+44
	.long Min__Fold
	.long MM_Min+91
	.zero	4
	.long Min__Compile
	.long MM_Min+96
	.zero	4
	.long Min__Check
	.long MM_Min+104
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Min.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
