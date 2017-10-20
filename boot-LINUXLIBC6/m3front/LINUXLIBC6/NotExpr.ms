	.file	"NotExpr.mc"
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
	.type	 NotExpr__New,@function
NotExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_NotExpr+172,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%esi)
	movl MI_Bool+44,%eax
	movl %eax,8(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 NotExpr__New,.Lfe1-NotExpr__New
	.align 16
	.type	 NotExpr__Check,@function
NotExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $16,%esp
	cmpl %eax,MI_Bool+44
	je .L2
	pushl $0
	pushl %eax
	pushl $MM_NotExpr+184
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,8(%ebx)
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NotExpr__Check,.Lfe2-NotExpr__Check
	.align 16
	.type	 NotExpr__Prep,@function
NotExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NotExpr__Prep,.Lfe3-NotExpr__Prep
	.align 16
	.type	 NotExpr__Compile,@function
NotExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+436,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 NotExpr__Compile,.Lfe4-NotExpr__Compile
	.align 16
	.type	 NotExpr__PrepBR,@function
NotExpr__PrepBR:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	xorl %eax,%eax
	movb 20(%ebp),%al
	movl $100,%ebx
	subl %eax,%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	pushl %edi
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 NotExpr__PrepBR,.Lfe5-NotExpr__PrepBR
	.align 16
	.type	 NotExpr__Fold,@function
NotExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl %ebx,-4(%ebp)
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L8
	leal -4(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%esi
	pushl %esi
	pushl %edx
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L8
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	cmpl %edx,MI_Bool+44
	jne .L8
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_TInt+72,%eax
	call *%eax
	testl %eax,%eax
	je .L8
	movl $MI_Bool+56,%eax
	cmpl $0,-8(%ebp)
	jne .L9
	movl $MI_Bool+60,%eax
.L9:
	movl (%eax),%ebx
.L8:
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 NotExpr__Fold,.Lfe6-NotExpr__Fold
	.align 16
	.type	 M_NotExpr_t73c30eeb_LINK,@function
M_NotExpr_t73c30eeb_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_NotExpr+172,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MI_ExprRep+468,%eax
	movl %eax,4(%edx)
	movl MM_NotExpr+148,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_NotExpr+152,%eax
	movl %eax,52(%edx)
	movl MM_NotExpr+156,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MM_NotExpr+160,%eax
	movl %eax,68(%edx)
	movl MI_ExprRep+532,%eax
	movl %eax,72(%edx)
	movl MM_NotExpr+164,%eax
	movl %eax,16(%edx)
	movl MI_ExprRep+540,%eax
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
	.size	 M_NotExpr_t73c30eeb_LINK,.Lfe7-M_NotExpr_t73c30eeb_LINK
.globl MM_NotExpr
.data
	.align 4
	.type	 MM_NotExpr,@object
	.size	 MM_NotExpr,476
MM_NotExpr:
	.long MM_NotExpr+308
	.long MM_NotExpr+44
	.long MM_NotExpr+172
	.zero	8
	.long MM_NotExpr+232
	.zero	28
	.long 1942163179
.byte 144
.byte 217
.byte 57
.byte 113
.byte 123
.byte 215
.byte 250
.byte 2
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_NotExpr+452
	.zero	4
	.long M_NotExpr_t73c30eeb_LINK
	.long 508464328
	.zero	12
	.long MM_NotExpr+455
	.long MM_NotExpr+465
	.zero	4
	.long NotExpr__Check
	.long NotExpr__Prep
	.long NotExpr__Compile
	.long NotExpr__PrepBR
	.long NotExpr__Fold
	.long NotExpr__New
	.zero	4
	.long 1942163179
	.long 2
	.long MM_NotExpr+192
	.long 4
	.ascii	"NOT"
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
	.long NotExpr__Fold
	.long MM_NotExpr+196
	.zero	4
	.long NotExpr__PrepBR
	.long MM_NotExpr+201
	.zero	4
	.long NotExpr__Compile
	.long MM_NotExpr+208
	.zero	4
	.long NotExpr__Prep
	.long MM_NotExpr+216
	.zero	4
	.long NotExpr__Check
	.long MM_NotExpr+221
	.zero	4
	.long NotExpr__New
	.long MM_NotExpr+227
	.long MI_NotExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/NotExpr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"NotExpr.P"
	.zero	1
	.ascii	"NotExpr.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
