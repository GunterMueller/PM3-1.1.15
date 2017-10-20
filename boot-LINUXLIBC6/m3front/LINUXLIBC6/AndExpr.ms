	.file	"AndExpr.mc"
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
	.type	 AndExpr__New,@function
AndExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_AndExpr+172,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
	movl MI_Bool+44,%eax
	movl %eax,8(%edi)
	movl $0,24(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 AndExpr__New,.Lfe1-AndExpr__New
	.align 16
	.type	 AndExpr__Check,@function
AndExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $32,%esp
	cmpl %ebx,MI_Bool+44
	jne .L3
	cmpl %ebx,%eax
	je .L2
.L3:
	pushl %eax
	pushl %ebx
	pushl $MM_AndExpr+184
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,8(%esi)
.L2:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AndExpr__Check,.Lfe2-AndExpr__Check
	.align 16
	.type	 AndExpr__Prep,@function
AndExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,%esi
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	call *%eax
	movl MI_CG+224,%eax
	call *%eax
	movl %eax,24(%ebx)
	pushl $50
	pushl %esi
	pushl $-1
	pushl %ebx
	call AndExpr__PrepBR
	pushl $MI_TInt+52
	movl MI_CG+428,%eax
	call *%eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+236,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl %esi
	movl MI_CG+316,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 AndExpr__Prep,.Lfe3-AndExpr__Prep
	.align 16
	.type	 AndExpr__Compile,@function
AndExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+232,%eax
	call *%eax
	movl $0,24(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 AndExpr__Compile,.Lfe4-AndExpr__Compile
	.align 16
	.type	 AndExpr__PrepBR,@function
AndExpr__PrepBR:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%esi
	movb 20(%ebp),%bl
	cmpl $-1,12(%ebp)
	jne .L8
	andl $255,%ebx
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	addl $32,%esp
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	jmp .L7
	.align 16
.L8:
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	movl %ebx,%esi
	andl $255,%esi
	movl $100,%ebx
	subl %esi,%ebx
	pushl %ebx
	movl %eax,%edi
	pushl %edi
	pushl $-1
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl %ebx
	pushl %edi
	pushl $-1
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	addl $36,%esp
	pushl %esi
	pushl $-1
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl %esi
	pushl $-1
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl %edi
	movl MI_CG+316,%eax
	call *%eax
.L7:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 AndExpr__PrepBR,.Lfe5-AndExpr__PrepBR
	.align 16
	.type	 AndExpr__Fold,@function
AndExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edi
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	movl %edi,%esi
	call *%eax
	movl %eax,%edi
	addl $8,%esp
	testl %esi,%esi
	je .L11
	testl %edi,%edi
	je .L11
	leal -16(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%ecx
	movl %ecx,-36(%ebp)
	pushl %ecx
	pushl %esi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L11
	leal -12(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L11
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	cmpl %edi,MI_Bool+44
	jne .L11
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $4,%esp
	cmpl %eax,MI_Bool+44
	jne .L11
	leal -8(%ebp),%eax
	pushl %eax
	movl -36(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L11
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+72,%eax
	call *%eax
	testl %eax,%eax
	jne .L12
.L11:
	xorl %eax,%eax
	jmp .L14
	.align 16
.L12:
	xorl %edx,%edx
	cmpl $1,-8(%ebp)
	jne .L13
	cmpl $1,-4(%ebp)
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L13:
	movl $MI_Bool+56,%eax
	movl (%eax,%edx,4),%eax
.L14:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 AndExpr__Fold,.Lfe6-AndExpr__Fold
	.align 16
	.type	 M_AndExpr_tf60e9685_LINK,@function
M_AndExpr_tf60e9685_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AndExpr+172,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MI_ExprRep+468,%eax
	movl %eax,4(%edx)
	movl MM_AndExpr+148,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_AndExpr+152,%eax
	movl %eax,52(%edx)
	movl MM_AndExpr+156,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MM_AndExpr+160,%eax
	movl %eax,68(%edx)
	movl MI_ExprRep+532,%eax
	movl %eax,72(%edx)
	movl MM_AndExpr+164,%eax
	movl %eax,16(%edx)
	movl MI_ExprRep+544,%eax
	movl %eax,12(%edx)
	movl MI_ExprRep+484,%eax
	movl %eax,20(%edx)
	movl MI_ExprRep+488,%eax
	movl %eax,24(%edx)
	movl %eax,28(%edx)
	movl %eax,32(%edx)
	movl MI_ExprRep+500,%eax
	movl %eax,40(%edx)
	movl MI_ExprRep+504,%eax
	movl %eax,44(%edx)
	movl MI_ExprRep+508,%eax
	movl %eax,48(%edx)
	movl MI_ExprRep+536,%eax
	movl %eax,76(%edx)
	popl %ebp
	ret
.Lfe7:
	.size	 M_AndExpr_tf60e9685_LINK,.Lfe7-M_AndExpr_tf60e9685_LINK
.globl MM_AndExpr
.data
	.align 4
	.type	 MM_AndExpr,@object
	.size	 MM_AndExpr,484
MM_AndExpr:
	.long MM_AndExpr+308
	.long MM_AndExpr+44
	.long MM_AndExpr+172
	.zero	8
	.long MM_AndExpr+232
	.zero	28
	.long -166816123
.byte 32
.byte 50
.byte 159
.byte 239
.byte 165
.byte 164
.byte 145
.byte 25
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AndExpr+452
	.long MM_AndExpr+454
	.long MM_AndExpr+456
	.zero	4
	.long M_AndExpr_tf60e9685_LINK
	.long -765996802
	.zero	12
	.long MM_AndExpr+464
	.long MM_AndExpr+474
	.zero	4
	.long AndExpr__Check
	.long AndExpr__Prep
	.long AndExpr__Compile
	.long AndExpr__PrepBR
	.long AndExpr__Fold
	.long AndExpr__New
	.zero	4
	.long -166816123
	.long 2
	.long MM_AndExpr+192
	.long 4
	.ascii	"AND"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"PrepBR"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"New"
	.zero	2
	.long AndExpr__Fold
	.long MM_AndExpr+196
	.zero	4
	.long AndExpr__PrepBR
	.long MM_AndExpr+201
	.zero	4
	.long AndExpr__Compile
	.long MM_AndExpr+208
	.zero	4
	.long AndExpr__Prep
	.long MM_AndExpr+216
	.zero	4
	.long AndExpr__Check
	.long MM_AndExpr+221
	.zero	4
	.long AndExpr__New
	.long MM_AndExpr+227
	.long MI_AndExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/AndExpr.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 194
.byte 223
.byte 210
.byte 77
	.ascii	"AndExpr.P"
	.zero	1
	.ascii	"AndExpr.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"