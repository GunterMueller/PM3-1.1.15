	.file	"DivExpr.mc"
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
	.type	 DivExpr__New,@function
DivExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_DivExpr+180,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
	movl MI_Int+44,%eax
	movl %eax,8(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 DivExpr__New,.Lfe1-DivExpr__New
	.align 16
	.type	 DivExpr__Check,@function
DivExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%esi
	incl 20(%eax)
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
	cmpl %ebx,MI_Int+44
	jne .L3
	cmpl %ebx,%eax
	je .L2
.L3:
	pushl %eax
	pushl %ebx
	pushl $MM_DivExpr+192
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
	.size	 DivExpr__Check,.Lfe2-DivExpr__Check
	.align 16
	.type	 DivExpr__Prep,@function
DivExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 DivExpr__Prep,.Lfe3-DivExpr__Prep
	.align 16
	.type	 DivExpr__Compile,@function
DivExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl $0,-16(%ebp)
	movl 16(%ecx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,%edi
	movl 20(%ecx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl $0,-16(%ebp)
	addl $8,%esp
	testl %edi,%edi
	je .L7
	testl %esi,%esi
	je .L9
	leal -16(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
	movl MI_IntegerExpr+68,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L7
	movl -16(%ebp),%eax
	pushl %eax
	jmp .L15
	.align 16
.L7:
	testl %esi,%esi
	je .L9
	leal -12(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L9
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	call DivExpr__SmallPowerOfTwo
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L9
	testl %edi,%edi
	jne .L10
	movl 8(%ebp),%ecx
	movl 16(%ecx),%edi
.L10:
	cmpl $0,-4(%ebp)
	jne .L11
	pushl %edi
.L15:
	movl MI_Expr+204,%eax
	call *%eax
	jmp .L6
	.align 16
.L11:
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	movl -4(%ebp),%edx
	movl MI_Target+96,%eax
	subl %edx,%eax
	pushl %eax
	pushl %edx
	pushl $1
	movl MI_CG+620,%eax
	jmp .L16
	.align 16
.L9:
	testl %edi,%edi
	jne .L13
	movl 8(%ebp),%ecx
	movl 16(%ecx),%edi
.L13:
	testl %esi,%esi
	jne .L14
	movl 8(%ebp),%ecx
	movl 20(%ecx),%esi
.L14:
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %edi
	movl MI_Expr+180,%eax
	call *%eax
	movl %eax,%ebx
	pushl %esi
	movl MI_Expr+180,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	pushl $2
	movl MI_CG+512,%eax
.L16:
	call *%eax
.L6:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 DivExpr__Compile,.Lfe4-DivExpr__Compile
	.align 16
	.type	 DivExpr__Fold,@function
DivExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	movl %edx,%esi
	call *%eax
	movl %eax,%edx
	movl $0,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %esi
	movl MI_IntegerExpr+68,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 DivExpr__Fold,.Lfe5-DivExpr__Fold
	.align 16
	.type	 DivExpr__SmallPowerOfTwo,@function
DivExpr__SmallPowerOfTwo:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L20:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,MM_DivExpr+168
	jg .L21
	movl MI_TInt+52,%eax
	movl %eax,L_1
	movl MI_TInt+56,%eax
	movl %eax,L_1+4
	movl MI_Target+96,%edx
	addl $-2,%edx
	movl $63,%eax
	cmpl %edx,%eax
	jle .L22
	movl %edx,%eax
.L22:
	movl $1,%ebx
	movl %eax,%esi
	jmp .L23
	.align 16
.L24:
	leal -1(%ebx),%edx
	cmpl $63,%edx
	jle .L26
	pushl $1841
	call _m3_fault
	.align 16
.L26:
	cmpl $63,%ebx
	jle .L27
	pushl $1841
	call _m3_fault
	.align 16
.L27:
	leal L_1(,%ebx,8),%eax
	pushl %eax
	leal L_1(,%edx,8),%eax
	pushl %eax
	pushl %eax
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L28
	movl %ebx,MM_DivExpr+168
.L28:
	incl %ebx
.L23:
	cmpl %esi,%ebx
	jle .L24
.L21:
	movl $0,-12(%ebp)
	movl MM_DivExpr+168,%edi
	incl %edi
	jmp .L30
	.align 16
.L31:
	movl -12(%ebp),%eax
	addl %edi,%eax
	movl %eax,%ebx
	sarl $1,%ebx
	cmpl $63,%ebx
	jbe .L32
	pushl $1985
	call _m3_fault
	.align 16
.L32:
	leal L_1(,%ebx,8),%esi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L34
	movl 12(%ebp),%ecx
	movl %ebx,(%ecx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L19
	.align 16
.L34:
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L35
	movl %ebx,%edi
	jmp .L30
	.align 16
.L35:
	incl %ebx
	movl %ebx,-12(%ebp)
.L30:
	cmpl %edi,-12(%ebp)
	jl .L31
	movl 12(%ebp),%ecx
	movl $-1,(%ecx)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L38:
.L19:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 DivExpr__SmallPowerOfTwo,.Lfe6-DivExpr__SmallPowerOfTwo
	.align 16
	.type	 M_DivExpr_t0f9ca7e1_LINK,@function
M_DivExpr_t0f9ca7e1_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_DivExpr+180,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MI_ExprRep+468,%eax
	movl %eax,4(%edx)
	movl MM_DivExpr+148,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_DivExpr+152,%eax
	movl %eax,52(%edx)
	movl MM_DivExpr+156,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MM_DivExpr+160,%eax
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
	.size	 M_DivExpr_t0f9ca7e1_LINK,.Lfe7-M_DivExpr_t0f9ca7e1_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_DivExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_DivExpr
.data
	.align 4
	.type	 MM_DivExpr,@object
	.size	 MM_DivExpr,492
MM_DivExpr:
	.long MM_DivExpr+324
	.long MM_DivExpr+44
	.long MM_DivExpr+180
	.zero	8
	.long MM_DivExpr+248
	.zero	28
	.long 261924833
.byte 28
.byte 115
.byte 173
.byte 20
.byte 253
.byte 212
.byte 49
.byte 27
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_DivExpr+468
	.zero	4
	.long M_DivExpr_t0f9ca7e1_LINK
	.long -765996802
	.zero	12
	.long MM_DivExpr+471
	.long MM_DivExpr+481
	.zero	4
	.long DivExpr__Check
	.long DivExpr__Prep
	.long DivExpr__Compile
	.long DivExpr__Fold
	.long L_1
	.zero	4
	.long DivExpr__New
	.long DivExpr__SmallPowerOfTwo
	.zero	4
	.long 261924833
	.long 2
	.long MM_DivExpr+200
	.long 4
	.ascii	"DIV"
	.zero	1
	.ascii	"SmallPowerOfTwo"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"New"
	.zero	1
	.long DivExpr__SmallPowerOfTwo
	.long MM_DivExpr+204
	.long MI_DivExpr+48
	.long DivExpr__Fold
	.long MM_DivExpr+220
	.zero	4
	.long DivExpr__Compile
	.long MM_DivExpr+225
	.zero	4
	.long DivExpr__Prep
	.long MM_DivExpr+233
	.zero	4
	.long DivExpr__Check
	.long MM_DivExpr+238
	.zero	4
	.long DivExpr__New
	.long MM_DivExpr+244
	.long MI_DivExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/DivExpr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"DivExpr.P"
	.zero	1
	.ascii	"DivExpr.P"
	.zero	2
	.local	L_1
	.comm	L_1,512,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
