	.file	"PlusExpr.mc"
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
	.type	 PlusExpr__New,@function
PlusExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_PlusExpr+176,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PlusExpr__New,.Lfe1-PlusExpr__New
	.align 16
	.type	 PlusExpr__TypeOf,@function
PlusExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PlusExpr__TypeOf,.Lfe2-PlusExpr__TypeOf
	.align 16
	.type	 PlusExpr__Check,@function
PlusExpr__Check:
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
	movl %eax,8(%ebx)
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $16,%esp
	cmpl %eax,MI_Int+44
	je .L3
	cmpl %eax,MI_Reel+44
	je .L3
	cmpl %eax,MI_LReel+44
	je .L3
	cmpl %eax,MI_EReel+44
	je .L3
	pushl $0
	pushl %eax
	pushl $MM_PlusExpr+188
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,8(%ebx)
.L3:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PlusExpr__Check,.Lfe3-PlusExpr__Check
	.align 16
	.type	 PlusExpr__EqCheck,@function
PlusExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	testl %edx,%edx
	je .L10
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_PlusExpr+180
	jg .L9
	movl MM_PlusExpr+176,%eax
	cmpl %ecx,4(%eax)
	jge .L8
	jmp .L9
	.align 16
.L10:
	movl %edx,%eax
	jmp .L12
	.align 16
.L8:
	pushl %ebx
	movl 16(%edx),%eax
	pushl %eax
	jmp .L13
	.align 16
.L9:
	pushl %ebx
	pushl %edx
.L13:
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+232,%eax
	call *%eax
.L12:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PlusExpr__EqCheck,.Lfe4-PlusExpr__EqCheck
	.align 16
	.type	 PlusExpr__Prep,@function
PlusExpr__Prep:
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
.Lfe5:
	.size	 PlusExpr__Prep,.Lfe5-PlusExpr__Prep
	.align 16
	.type	 PlusExpr__Compile,@function
PlusExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 PlusExpr__Compile,.Lfe6-PlusExpr__Compile
	.align 16
	.type	 PlusExpr__Fold,@function
PlusExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 PlusExpr__Fold,.Lfe7-PlusExpr__Fold
	.align 16
	.type	 M_PlusExpr_t923c2321_LINK,@function
M_PlusExpr_t923c2321_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_PlusExpr+176,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_PlusExpr+148,%eax
	movl %eax,4(%edx)
	movl MM_PlusExpr+152,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_PlusExpr+160,%eax
	movl %eax,52(%edx)
	movl MM_PlusExpr+164,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MM_PlusExpr+168,%eax
	movl %eax,16(%edx)
	movl MM_PlusExpr+156,%eax
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
.Lfe8:
	.size	 M_PlusExpr_t923c2321_LINK,.Lfe8-M_PlusExpr_t923c2321_LINK
.globl MM_PlusExpr
.data
	.align 4
	.type	 MM_PlusExpr,@object
	.size	 MM_PlusExpr,512
MM_PlusExpr:
	.long MM_PlusExpr+340
	.long MM_PlusExpr+44
	.long MM_PlusExpr+176
	.zero	8
	.long MM_PlusExpr+252
	.zero	28
	.long -1841552607
.byte 82
.byte 134
.byte 253
.byte 145
.byte 115
.byte 165
.byte 193
.byte 3
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_PlusExpr+485
	.zero	4
	.long M_PlusExpr_t923c2321_LINK
	.long 508464328
	.zero	12
	.long MM_PlusExpr+488
	.long MM_PlusExpr+499
	.zero	4
	.long PlusExpr__TypeOf
	.long PlusExpr__Check
	.long PlusExpr__EqCheck
	.long PlusExpr__Prep
	.long PlusExpr__Compile
	.long PlusExpr__Fold
	.long PlusExpr__New
	.zero	4
	.long -1841552607
	.long 2
	.long MM_PlusExpr+196
	.long 10
	.ascii	"unary '+'"
	.zero	3
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"New"
	.zero	2
	.long PlusExpr__Fold
	.long MM_PlusExpr+208
	.zero	4
	.long PlusExpr__Compile
	.long MM_PlusExpr+213
	.zero	4
	.long PlusExpr__Prep
	.long MM_PlusExpr+221
	.zero	4
	.long PlusExpr__EqCheck
	.long MM_PlusExpr+226
	.zero	4
	.long PlusExpr__Check
	.long MM_PlusExpr+234
	.zero	4
	.long PlusExpr__TypeOf
	.long MM_PlusExpr+240
	.zero	4
	.long PlusExpr__New
	.long MM_PlusExpr+247
	.long MI_PlusExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/PlusExpr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"PlusExpr.P"
	.zero	1
	.ascii	"PlusExpr.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
