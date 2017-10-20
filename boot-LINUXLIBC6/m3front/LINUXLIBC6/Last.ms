	.file	"Last.mc"
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
	.type	 Last__Check,@function
Last__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Last+76
	movl MI_First+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Last__Check,.Lfe1-Last__Check
	.align 16
	.type	 Last__Prep,@function
Last__Prep:
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
	jne .L3
	pushl $388
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $386
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%ebx
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L5
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-12(%ebp)
	addl $4,%esp
.L5:
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
	je .L6
	movl -8(%ebp),%eax
	movl %eax,-12(%ebp)
.L6:
	cmpl $0,-12(%ebp)
	jne .L2
	pushl %ebx
	movl MI_Expr+200,%eax
	call *%eax
.L2:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Last__Prep,.Lfe2-Last__Prep
	.align 16
	.type	 Last__Compile,@function
Last__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L9
	pushl $612
	call _m3_fault
	.align 16
.L9:
	cmpl $0,4(%eax)
	jne .L10
	pushl $610
	call _m3_fault
	.align 16
.L10:
	movl (%eax),%eax
	movl (%eax),%esi
	leal -28(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L11
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-28(%ebp)
	addl $4,%esp
.L11:
	leal -20(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L12
	movl -24(%ebp),%eax
	movl %eax,-28(%ebp)
.L12:
	movl -28(%ebp),%ebx
	testl %ebx,%ebx
	jne .L13
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+772,%eax
	call *%eax
	pushl $MI_TInt+52
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
	jmp .L8
	.align 16
.L13:
	leal -8(%ebp),%esi
	pushl %esi
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+112,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L15
	pushl %esi
	movl MI_CG+428,%eax
	call *%eax
	jmp .L8
	.align 16
.L15:
	pushl %eax
	movl MI_Reel+44,%eax
	pushl %eax
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L16
	pushl $MI_Target+160
	jmp .L19
	.align 16
.L16:
	pushl %eax
	movl MI_LReel+44,%eax
	pushl %eax
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L17
	pushl $MI_Target+208
	jmp .L19
	.align 16
.L17:
	pushl %eax
	movl MI_EReel+44,%eax
	pushl %eax
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L18
	pushl $MI_Target+256
.L19:
	movl MI_CG+432,%eax
	call *%eax
	jmp .L8
	.align 16
.L18:
	pushl $944
	call _m3_fault
	.align 16
.L8:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Last__Compile,.Lfe3-Last__Compile
	.align 16
	.type	 Last__Fold,@function
Last__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L21
	pushl $1060
	call _m3_fault
	.align 16
.L21:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L22
	pushl $1058
	call _m3_fault
	.align 16
.L22:
	movl (%edx),%eax
	movl (%eax),%ebx
	leal -28(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L25
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-28(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L28
	cmpl $0,-24(%ebp)
	jne .L25
	pushl %ebx
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L28
	leal -8(%ebp),%ebx
	pushl %ebx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ArrayExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L28
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L29
	.align 16
.L25:
	movl -28(%ebp),%eax
	pushl %eax
	call Last__LastOfType
.L29:
	movl %eax,%edx
.L28:
	movl -32(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Last__Fold,.Lfe4-Last__Fold
	.align 16
	.type	 Last__LastOfType,@function
Last__LastOfType:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	leal -4(%ebp),%eax
	pushl %ebx
	movl $0,-4(%ebp)
	pushl %eax
	leal 8(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L31
	cmpl $0,8(%ebp)
	jne .L31
	movl %ebx,%eax
	jmp .L37
	.align 16
.L31:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -12(%ebp),%esi
	pushl %esi
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L32
	cmpl %ebx,MI_Int+44
	jne .L33
	pushl %esi
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L38
	.align 16
.L33:
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	jmp .L39
	.align 16
.L32:
	cmpl %ebx,MI_Reel+44
	jne .L34
	pushl %eax
	pushl $MI_Target+160
	jmp .L40
	.align 16
.L34:
	cmpl %ebx,MI_LReel+44
	jne .L35
	pushl $1
	pushl $MI_Target+208
	jmp .L40
	.align 16
.L35:
	cmpl %ebx,MI_EReel+44
	jne .L37
	pushl $2
	pushl $MI_Target+256
.L40:
	movl MI_ReelExpr+44,%eax
.L39:
	call *%eax
.L38:
	movl %eax,%ebx
.L37:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Last__LastOfType,.Lfe5-Last__LastOfType
	.align 16
	.type	 Last__Initialize,@function
Last__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Last+60,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Last+56,%eax
	pushl %eax
	movl MM_Last+52,%eax
	pushl %eax
	movl MM_Last+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MI_First+48,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Last+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Last+76
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Last__Initialize,.Lfe6-Last__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Last
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_Last
.data
	.align 4
	.type	 MM_Last,@object
	.size	 MM_Last,368
MM_Last:
	.long MM_Last+220
	.zero	16
	.long MM_Last+140
	.zero	4
	.long MM_Last+216
	.long MM_Last+216
	.zero	12
	.long Last__Check
	.long Last__Prep
	.long Last__Compile
	.long Last__Fold
	.long Last__LastOfType
	.long Last__Initialize
	.long 2
	.long MM_Last+84
	.long 5
	.ascii	"LAST"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"LastOfType"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Last__Initialize
	.long MM_Last+92
	.long MI_Last+44
	.long Last__LastOfType
	.long MM_Last+103
	.zero	4
	.long Last__Fold
	.long MM_Last+114
	.zero	4
	.long Last__Compile
	.long MM_Last+119
	.zero	4
	.long Last__Prep
	.long MM_Last+127
	.zero	4
	.long Last__Check
	.long MM_Last+132
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Last.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
