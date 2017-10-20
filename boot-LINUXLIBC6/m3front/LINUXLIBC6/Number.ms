	.file	"Number.mc"
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
	.type	 Number__Check,@function
Number__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl 8(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl 20(%edx),%eax
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
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-12(%ebp)
	leal -4(%ebp),%edi
	pushl %edi
	leal -8(%ebp),%esi
	pushl %esi
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L4
	cmpl $0,-8(%ebp)
	jne .L6
	movl MI_Int+44,%eax
	movl %eax,-8(%ebp)
	jmp .L6
	.align 16
.L4:
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L7
	pushl %edi
	pushl %esi
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L8
	cmpl $0,-8(%ebp)
	jne .L6
	pushl $MM_Number+72
	jmp .L15
	.align 16
.L8:
	movl -12(%ebp),%eax
	movl %eax,-8(%ebp)
	jmp .L6
	.align 16
.L7:
	pushl $MM_Number+132
.L15:
	movl MI_Error+44,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,-8(%ebp)
	addl $4,%esp
.L6:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_EnumType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L11
	leal -20(%ebp),%ebx
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	pushl %ebx
	pushl $MI_TInt+44
	movl MI_TInt+104,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_Number+188
	jmp .L16
	.align 16
.L11:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+104,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_Number+232
.L16:
	movl MI_Error+44,%eax
	call *%eax
.L13:
	movl MI_Card+44,%eax
	movl 8(%ebp),%edx
	leal -32(%ebp),%esp
	movl %eax,8(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Number__Check,.Lfe1-Number__Check
	.align 16
	.type	 Number__Prep,@function
Number__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L18
	pushl $804
	call _m3_fault
	.align 16
.L18:
	cmpl $0,4(%eax)
	jne .L19
	pushl $802
	call _m3_fault
	.align 16
.L19:
	movl (%eax),%eax
	movl (%eax),%ebx
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L20
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-12(%ebp)
	addl $4,%esp
.L20:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L21
	movl -8(%ebp),%eax
	movl %eax,-12(%ebp)
.L21:
	cmpl $0,-12(%ebp)
	jne .L17
	pushl %ebx
	movl MI_Expr+200,%eax
	call *%eax
.L17:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Number__Prep,.Lfe2-Number__Prep
	.align 16
	.type	 Number__Compile,@function
Number__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L24
	pushl $1028
	call _m3_fault
	.align 16
.L24:
	cmpl $0,4(%eax)
	jne .L25
	pushl $1026
	call _m3_fault
	.align 16
.L25:
	movl (%eax),%eax
	movl (%eax),%esi
	leal -44(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L26
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-44(%ebp)
	addl $4,%esp
.L26:
	leal -36(%ebp),%eax
	pushl %eax
	leal -40(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L27
	movl -40(%ebp),%eax
	movl %eax,-44(%ebp)
.L27:
	movl -44(%ebp),%ebx
	testl %ebx,%ebx
	jne .L28
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+772,%eax
	jmp .L33
	.align 16
.L28:
	leal -24(%ebp),%edi
	pushl %edi
	leal -32(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_Type+112,%eax
	call *%eax
	pushl %esi
	pushl %edi
	movl MI_TInt+104,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L30
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	jmp .L33
	.align 16
.L30:
	leal -16(%ebp),%edx
	movl %edx,-48(%ebp)
	pushl %edx
	pushl %esi
	pushl %edi
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L32
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl $MI_TInt+52
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L32
	pushl %ebx
	movl MI_CG+428,%eax
	jmp .L33
	.align 16
.L32:
	pushl $MM_Number+308
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	pushl $MI_Target+120
	movl MI_CG+428,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+688,%eax
.L33:
	call *%eax
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Number__Compile,.Lfe3-Number__Compile
	.align 16
	.type	 Number__Fold,@function
Number__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L35
	pushl $1476
	call _m3_fault
	.align 16
.L35:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L36
	pushl $1474
	call _m3_fault
	.align 16
.L36:
	movl (%edx),%eax
	movl (%eax),%ebx
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L37
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L46
	cmpl $0,-8(%ebp)
	jne .L37
	pushl %ebx
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L46
	leal -36(%ebp),%esi
	pushl %esi
	leal -44(%ebp),%ebx
	pushl %ebx
	pushl %edx
	movl MI_ArrayExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L45
	leal -28(%ebp),%edi
	pushl %edi
	pushl %ebx
	pushl %esi
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L45
	leal -20(%ebp),%ebx
	pushl %ebx
	pushl $MI_TInt+52
	pushl %edi
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L47
	jmp .L45
	.align 16
.L37:
	leal -4(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L42
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L46
.L42:
	leal -36(%ebp),%esi
	pushl %esi
	leal -44(%ebp),%ebx
	pushl %ebx
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L46
	pushl %ebx
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L44
	pushl $MI_TInt+44
	jmp .L48
	.align 16
.L44:
	leal -28(%ebp),%edi
	pushl %edi
	pushl %ebx
	pushl %esi
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L45
	leal -20(%ebp),%ebx
	pushl %ebx
	pushl $MI_TInt+52
	pushl %edi
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L45
.L47:
	pushl %ebx
.L48:
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%edx
	jmp .L46
	.align 16
.L45:
	xorl %eax,%eax
.L46:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Number__Fold,.Lfe4-Number__Fold
	.align 16
	.type	 Number__Initialize,@function
Number__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Number+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Number+56,%eax
	pushl %eax
	movl MM_Number+52,%eax
	pushl %eax
	movl MM_Number+48,%eax
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
	movl %eax,MM_Number+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Number+348
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Number__Initialize,.Lfe5-Number__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Number
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_Number
.data
	.align 4
	.type	 MM_Number,@object
	.size	 MM_Number,616
MM_Number:
	.long MM_Number+468
	.zero	16
	.long MM_Number+400
	.zero	4
	.long MM_Number+464
	.long MM_Number+464
	.zero	12
	.long Number__Check
	.long Number__Prep
	.long Number__Compile
	.long Number__Fold
	.long Number__Initialize
	.long 2
	.long MM_Number+80
	.long 46
	.ascii	"NUMBER: argument cannot be an open array type"
	.zero	3
	.long 2
	.long MM_Number+140
	.long 41
	.ascii	"NUMBER: argument must be a type or array"
	.zero	4
	.long 2
	.long MM_Number+196
	.long 31
	.ascii	"NUMBER: empty enumeration type"
	.zero	2
	.long 2
	.long MM_Number+240
	.long 62
	.ascii	"NUMBER: argument must be an ordinal type, array type or arra"
	.ascii	"y"
	.zero	3
	.long 2
	.long MM_Number+316
	.long 27
	.ascii	"result of NUMBER too large"
	.zero	2
	.long 2
	.long MM_Number+356
	.long 7
	.ascii	"NUMBER"
	.zero	2
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
	.long Number__Initialize
	.long MM_Number+364
	.long MI_Number+44
	.long Number__Fold
	.long MM_Number+375
	.zero	4
	.long Number__Compile
	.long MM_Number+380
	.zero	4
	.long Number__Prep
	.long MM_Number+388
	.zero	4
	.long Number__Check
	.long MM_Number+393
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Number.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
