	.file	"ModExpr.mc"
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
	.type	 ModExpr__New,@function
ModExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_ModExpr+176,%eax
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
	movl $0,28(%edi)
	movl $0,32(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ModExpr__New,.Lfe1-ModExpr__New
	.align 16
	.type	 ModExpr__Check,@function
ModExpr__Check:
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
	movl %eax,%edx
	addl $32,%esp
	cmpl %ebx,MI_Int+44
	jne .L3
	cmpl %ebx,%eax
	jne .L3
	movb $0,24(%esi)
	movl 12(%ebp),%eax
	incl 20(%eax)
	jmp .L4
	.align 16
.L3:
	cmpl %ebx,MI_Reel+44
	jne .L5
	cmpl %ebx,%edx
	jne .L5
	movb $1,24(%esi)
	jmp .L8
	.align 16
.L5:
	cmpl %ebx,MI_LReel+44
	jne .L6
	cmpl %ebx,%edx
	jne .L6
	movb $2,24(%esi)
	jmp .L8
	.align 16
.L6:
	cmpl %ebx,MI_EReel+44
	jne .L7
	cmpl %ebx,%edx
	jne .L7
	movb $3,24(%esi)
.L8:
	movl 12(%ebp),%eax
	incl 16(%eax)
	jmp .L4
	.align 16
.L7:
	movb $4,24(%esi)
	movl MI_Int+44,%ebx
	pushl %edx
	pushl %ebx
	pushl $MM_ModExpr+188
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,%ebx
.L4:
	leal -8(%ebp),%esp
	movl %ebx,8(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ModExpr__Check,.Lfe2-ModExpr__Check
	.align 16
	.type	 ModExpr__Prep,@function
ModExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $8,%esp
	cmpb $0,24(%edx)
	je .L9
	leal -20(%ebp),%eax
	pushl %eax
	movl 16(%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl -20(%ebp),%edi
	xorl %eax,%eax
	movb 24(%edx),%al
	movl -12(%ebp),%esi
	movb MM_ModExpr+44(%eax),%bl
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $12,%esp
	testl %edi,%edi
	jge .L11
	pushl $1553
	call _m3_fault
	.align 16
.L11:
	testl %esi,%esi
	jge .L12
	pushl $1553
	call _m3_fault
	.align 16
.L12:
	pushl $0
	andl $255,%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_CG+208,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $16,%esp
	movl %eax,28(%edx)
	pushl %ebx
	pushl %esi
	pushl %edi
	pushl $0
	pushl %eax
	movl MI_CG+392,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $24,%esp
	pushl $0
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_CG+208,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $16,%esp
	movl %eax,32(%edx)
	pushl %ebx
	pushl %esi
	pushl %edi
	pushl $0
	pushl %eax
	movl MI_CG+392,%eax
	call *%eax
.L9:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ModExpr__Prep,.Lfe3-ModExpr__Prep
	.align 16
	.type	 ModExpr__Compile,@function
ModExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl %esi,-48(%ebp)
	movl %esi,-24(%ebp)
	cmpb $0,24(%edi)
	jne .L20
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	movl 20(%edi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	movl %edx,%esi
	call *%eax
	movl %eax,%edx
	movl %edx,-48(%ebp)
	movl $0,-24(%ebp)
	addl $8,%esp
	testl %esi,%esi
	je .L21
	testl %edx,%edx
	je .L23
	leal -24(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %esi
	movl MI_IntegerExpr+72,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L21
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	jmp .L19
	.align 16
.L21:
	cmpl $0,-48(%ebp)
	je .L23
	leal -20(%ebp),%ecx
	movl %ecx,-60(%ebp)
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L23
	leal -4(%ebp),%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_DivExpr+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L23
	testl %esi,%esi
	jne .L24
	movl 16(%edi),%esi
.L24:
	cmpl $0,-4(%ebp)
	jne .L25
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+428,%eax
	call *%eax
	jmp .L19
	.align 16
.L25:
	leal -12(%ebp),%ebx
	pushl %ebx
	pushl $MI_TInt+52
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+84,%eax
	call *%eax
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+428,%eax
	call *%eax
	movl MI_CG+576,%eax
	call *%eax
	jmp .L19
	.align 16
.L23:
	testl %esi,%esi
	jne .L27
	movl 16(%edi),%esi
.L27:
	cmpl $0,-48(%ebp)
	jne .L28
	movl 20(%edi),%edi
	movl %edi,-48(%ebp)
.L28:
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_Expr+180,%eax
	call *%eax
	movl %eax,%ebx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+180,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	pushl $2
	movl MI_CG+516,%eax
	call *%eax
	jmp .L19
	.align 16
.L20:
	leal -44(%ebp),%eax
	pushl %eax
	movl 16(%edi),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -44(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-52(%ebp)
	xorl %eax,%eax
	movb 24(%edi),%al
	addl $8,%esp
	movb MM_ModExpr+44(%eax),%al
	cmpl $0,-56(%ebp)
	jge .L30
	pushl $2401
	call _m3_fault
	.align 16
.L30:
	cmpl $0,-52(%ebp)
	jge .L31
	pushl $2401
	call _m3_fault
	.align 16
.L31:
	movl %eax,%esi
	andl $255,%esi
	pushl %esi
	movl -52(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl 28(%edi),%eax
	pushl %eax
	movl MI_CG+364,%eax
	call *%eax
	addl $20,%esp
	pushl %esi
	movl -52(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl 32(%edi),%eax
	pushl %eax
	movl MI_CG+364,%eax
	call *%eax
	leal -3(%esi),%eax
	addl $20,%esp
	cmpl $2,%eax
	jbe .L34
	pushl $2433
	call _m3_fault
	.align 16
.L34:
	pushl %esi
	movl MI_CG+472,%eax
	call *%eax
	addl $4,%esp
	pushl %esi
	movl MI_CG+500,%eax
	call *%eax
	addl $4,%esp
	pushl %esi
	pushl $2
	movl MI_CG+508,%eax
	call *%eax
	addl $8,%esp
	movl %esi,%ebx
	pushl %ebx
	movl -52(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl 32(%edi),%eax
	pushl %eax
	movl MI_CG+364,%eax
	call *%eax
	leal -1(%ebx),%eax
	addl $20,%esp
	cmpl $4,%eax
	jbe .L39
	pushl $2497
	call _m3_fault
	.align 16
.L39:
	pushl %ebx
	movl MI_CG+468,%eax
	call *%eax
	addl $4,%esp
	pushl %esi
	movl -52(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	movl -48(%ebp),%ecx
	pushl %ecx
	movl 28(%edi),%eax
	pushl %eax
	movl MI_CG+364,%eax
	call *%eax
	movl MI_CG+636,%eax
	call *%eax
	addl $20,%esp
	pushl %esi
	movl MI_CG+464,%eax
	call *%eax
	movl 28(%edi),%eax
	pushl %eax
	movl MI_CG+212,%eax
	call *%eax
	movl 32(%edi),%eax
	pushl %eax
	movl MI_CG+212,%eax
	call *%eax
	movl %edi,%edx
	movl -48(%ebp),%ecx
	movl %ecx,28(%edx)
	movl %ecx,32(%edx)
.L19:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ModExpr__Compile,.Lfe4-ModExpr__Compile
	.align 16
	.type	 ModExpr__Fold,@function
ModExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	movl %esi,%edi
	call *%eax
	movl %eax,%esi
	movl $0,-4(%ebp)
	addl $8,%esp
	testl %edi,%edi
	je .L46
	testl %esi,%esi
	je .L46
	leal -4(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_IntegerExpr+72,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L46
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_ReelExpr+68,%eax
	call *%eax
.L46:
	leal -16(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ModExpr__Fold,.Lfe5-ModExpr__Fold
	.align 16
	.type	 M_ModExpr_t4e790279_LINK,@function
M_ModExpr_t4e790279_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ModExpr+176,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MI_ExprRep+468,%eax
	movl %eax,4(%edx)
	movl MM_ModExpr+156,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_ModExpr+160,%eax
	movl %eax,52(%edx)
	movl MM_ModExpr+164,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MM_ModExpr+168,%eax
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
.Lfe6:
	.size	 M_ModExpr_t4e790279_LINK,.Lfe6-M_ModExpr_t4e790279_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ModExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_ModExpr
.data
	.align 4
	.type	 MM_ModExpr,@object
	.size	 MM_ModExpr,476
MM_ModExpr:
	.long MM_ModExpr+292
	.long MM_ModExpr+52
	.long MM_ModExpr+176
	.zero	8
	.long MM_ModExpr+228
	.zero	20
.byte 2
.byte 3
.byte 4
.byte 5
.byte 1
	.zero	11
	.long 1316553337
.byte 236
.byte 220
.byte 239
.byte 94
.byte 149
.byte 222
.byte 150
.byte 16
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ModExpr+436
	.long MM_ModExpr+441
	.long MM_ModExpr+445
	.zero	4
	.long M_ModExpr_t4e790279_LINK
	.long -765996802
	.zero	12
	.long MM_ModExpr+456
	.long MM_ModExpr+466
	.zero	4
	.long ModExpr__Check
	.long ModExpr__Prep
	.long ModExpr__Compile
	.long ModExpr__Fold
	.long ModExpr__New
	.zero	4
	.long 1316553337
	.long 2
	.long MM_ModExpr+196
	.long 4
	.ascii	"MOD"
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
	.long ModExpr__Fold
	.long MM_ModExpr+200
	.zero	4
	.long ModExpr__Compile
	.long MM_ModExpr+205
	.zero	4
	.long ModExpr__Prep
	.long MM_ModExpr+213
	.zero	4
	.long ModExpr__Check
	.long MM_ModExpr+218
	.zero	4
	.long ModExpr__New
	.long MM_ModExpr+224
	.long MI_ModExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/ModExpr.m3"
	.zero	1
.byte 16
.byte 36
.byte 4
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 5
.byte 5
.byte 16
.byte 121
.byte 130
.byte 239
.byte 251
.byte 24
	.ascii	"ModExpr.P"
	.zero	1
	.ascii	"ModExpr.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
