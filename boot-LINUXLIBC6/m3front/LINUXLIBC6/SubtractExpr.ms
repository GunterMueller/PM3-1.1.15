	.file	"SubtractExpr.mc"
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
	.type	 SubtractExpr__New,@function
SubtractExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_SubtractExpr+184,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
	movb 16(%ebp),%dl
	movb %dl,24(%edi)
	movl $0,28(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 SubtractExpr__New,.Lfe1-SubtractExpr__New
	.align 16
	.type	 SubtractExpr__TypeOf,@function
SubtractExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	cmpb $0,24(%esi)
	jne .L6
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L4
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %edx
	movl MI_Type+120,%eax
	call *%eax
	testl %eax,%eax
	je .L4
.L6:
	movl MI_Int+44,%ebx
.L4:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 SubtractExpr__TypeOf,.Lfe2-SubtractExpr__TypeOf
	.align 16
	.type	 SubtractExpr__Check,@function
SubtractExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%edi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	movl 20(%edi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%esi
	addl $32,%esp
	cmpl %ebx,MI_Int+44
	jne .L8
	cmpl %ebx,%eax
	jne .L8
	movb $0,25(%edi)
	movl 12(%ebp),%eax
	incl 12(%eax)
	jmp .L9
	.align 16
.L8:
	cmpl %ebx,MI_Reel+44
	jne .L10
	cmpl %ebx,%esi
	jne .L10
	movb $1,25(%edi)
	jmp .L25
	.align 16
.L10:
	cmpl %ebx,MI_LReel+44
	jne .L11
	cmpl %ebx,%esi
	jne .L11
	movb $2,25(%edi)
	jmp .L25
	.align 16
.L11:
	cmpl %ebx,MI_EReel+44
	jne .L12
	cmpl %ebx,%esi
	jne .L12
	movb $3,25(%edi)
.L25:
	movl 12(%ebp),%eax
	incl 16(%eax)
	jmp .L9
	.align 16
.L12:
	movl MI_ErrType+44,%eax
	cmpl %eax,%ebx
	je .L13
	cmpl %eax,%esi
	jne .L14
.L13:
	movb $0,25(%edi)
	movl MI_ErrType+44,%ebx
	jmp .L9
	.align 16
.L14:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_SetType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L15
	pushl %ebx
	movl MI_EnumType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L17
	movb $6,25(%edi)
	cmpb $0,24(%edi)
	je .L18
	cmpl %esi,MI_Int+44
	jne .L18
	movl %esi,%ebx
	jmp .L9
	.align 16
.L15:
	movb $5,25(%edi)
	pushl $0
	pushl %esi
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L9
.L18:
	pushl %esi
	pushl %ebx
	pushl $MM_SubtractExpr+196
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L9
	.align 16
.L17:
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L20
	movb $4,25(%edi)
	cmpl %esi,MI_Int+44
	jne .L21
	movl MI_Addr+44,%ebx
	jmp .L22
	.align 16
.L21:
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L23
	movl MI_Int+44,%ebx
	jmp .L22
	.align 16
.L23:
	pushl %esi
	pushl %ebx
	pushl $MM_SubtractExpr+196
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
.L22:
	movl MI_Module+68,%eax
	call *%eax
	testl %eax,%eax
	je .L9
	pushl $MM_SubtractExpr+212
	movl MI_Error+44,%eax
	call *%eax
	jmp .L9
	.align 16
.L20:
	pushl %esi
	pushl %ebx
	pushl $MM_SubtractExpr+196
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,%ebx
	movb $0,25(%edi)
.L9:
	leal -16(%ebp),%esp
	movl %ebx,8(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 SubtractExpr__Check,.Lfe3-SubtractExpr__Check
	.align 16
	.type	 SubtractExpr__Prep,@function
SubtractExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	addl $8,%esp
	cmpb $5,25(%ebx)
	jne .L26
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%edx
	addl $8,%esp
	cmpl %edx,MI_Target+96
	jge .L26
	testl %edx,%edx
	jge .L29
	pushl $2033
	call _m3_fault
	.align 16
.L29:
	pushl $1
	pushl $14
	movl MI_Target+100,%eax
	pushl %eax
	pushl %edx
	movl MI_CG+208,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,28(%ebx)
	movl MI_Target+100,%eax
	pushl %eax
	pushl $0
	pushl %edx
	movl MI_CG+368,%eax
	call *%eax
	movl MI_CG+240,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $32,%esp
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl -20(%ebp),%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L30
	pushl $2129
	call _m3_fault
	.align 16
.L30:
	pushl %eax
	movl MI_CG+524,%eax
	call *%eax
.L26:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 SubtractExpr__Prep,.Lfe4-SubtractExpr__Prep
	.align 16
	.type	 SubtractExpr__Compile,@function
SubtractExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	xorl %eax,%eax
	movb 25(%esi),%al
	cmpl $3,%eax
	jle .L32
	cmpl $4,%eax
	jle .L33
	cmpl $5,%eax
	jg .L32
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%esi),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%ebx
	addl $8,%esp
	cmpl %ebx,MI_Target+96
	jge .L35
	movl MI_Target+100,%eax
	pushl %eax
	pushl $0
	movl 28(%esi),%eax
	pushl %eax
	movl MI_CG+372,%eax
	call *%eax
	movl $0,28(%esi)
	jmp .L31
	.align 16
.L35:
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jge .L37
	pushl $2433
	call _m3_fault
	.align 16
.L37:
	pushl %ebx
	movl MI_CG+524,%eax
	jmp .L42
	.align 16
.L33:
	movl MI_Addr+44,%eax
	cmpl %eax,8(%esi)
	jne .L39
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl $-8
	movl MI_CG+712,%eax
	jmp .L42
	.align 16
.L39:
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl $2
	pushl $0
	movl MI_CG+656,%eax
	call *%eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl $2
	pushl $0
	movl MI_CG+656,%eax
	call *%eax
	pushl $1
	jmp .L43
	.align 16
.L32:
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	xorl %eax,%eax
	movb 25(%esi),%al
	addl $8,%esp
	xorl %edx,%edx
	movb MM_SubtractExpr+44(%eax),%dl
	leal -1(%edx),%eax
	cmpl $4,%eax
	jbe .L41
	pushl $2705
	call _m3_fault
	.align 16
.L41:
	pushl %edx
.L43:
	movl MI_CG+464,%eax
.L42:
	call *%eax
.L31:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 SubtractExpr__Compile,.Lfe5-SubtractExpr__Compile
	.align 16
	.type	 SubtractExpr__Fold,@function
SubtractExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %esi,-32(%ebp)
	movl %esi,-4(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,-36(%ebp)
	movl $0,-32(%ebp)
	addl $8,%esp
	testl %esi,%esi
	je .L47
	cmpl $0,-36(%ebp)
	je .L47
	leal -32(%ebp),%eax
	pushl %eax
	movl -36(%ebp),%edx
	pushl %edx
	pushl %esi
	movl MI_IntegerExpr+60,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L47
	cmpb $0,24(%ebx)
	je .L49
	leal -4(%ebp),%eax
	pushl %eax
	leal -28(%ebp),%edx
	movl %edx,-40(%ebp)
	pushl %edx
	pushl %esi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L49
	leal -20(%ebp),%edi
	pushl %edi
	movl -36(%ebp),%edx
	pushl %edx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L49
	leal -12(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl -40(%ebp),%edx
	pushl %edx
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L49
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,-32(%ebp)
	jmp .L47
	.align 16
.L49:
	leal -32(%ebp),%ebx
	pushl %ebx
	movl -36(%ebp),%edx
	pushl %edx
	pushl %esi
	movl MI_ReelExpr+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L47
	pushl %ebx
	movl -36(%ebp),%edx
	pushl %edx
	pushl %esi
	movl MI_AddressExpr+60,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L47
	pushl %ebx
	movl -36(%ebp),%edx
	pushl %edx
	pushl %esi
	movl MI_SetExpr+64,%eax
	call *%eax
.L47:
	leal -52(%ebp),%esp
	movl -32(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 SubtractExpr__Fold,.Lfe6-SubtractExpr__Fold
	.align 16
	.type	 SubtractExpr__GetBounds,@function
SubtractExpr__GetBounds:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	leal -32(%ebp),%eax
	pushl %eax
	leal -40(%ebp),%edi
	pushl %edi
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	leal -16(%ebp),%esi
	pushl %esi
	leal -24(%ebp),%eax
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	addl $36,%esp
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L54
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L54
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L54:
	leal -8(%ebp),%ebx
	pushl %ebx
	leal -24(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L53
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L53
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L53:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 SubtractExpr__GetBounds,.Lfe7-SubtractExpr__GetBounds
	.align 16
	.type	 M_SubtractExpr_t50ca81e3_LINK,@function
M_SubtractExpr_t50ca81e3_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_SubtractExpr+184,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_SubtractExpr+156,%eax
	movl %eax,4(%edx)
	movl MM_SubtractExpr+160,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_SubtractExpr+164,%eax
	movl %eax,52(%edx)
	movl MM_SubtractExpr+168,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+528,%eax
	movl %eax,68(%edx)
	movl MI_ExprRep+532,%eax
	movl %eax,72(%edx)
	movl MM_SubtractExpr+172,%eax
	movl %eax,16(%edx)
	movl MI_ExprRep+544,%eax
	movl %eax,12(%edx)
	movl MM_SubtractExpr+176,%eax
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
	.size	 M_SubtractExpr_t50ca81e3_LINK,.Lfe8-M_SubtractExpr_t50ca81e3_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_SubtractExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_SubtractExpr
.data
	.align 4
	.type	 MM_SubtractExpr,@object
	.size	 MM_SubtractExpr,568
MM_SubtractExpr:
	.long MM_SubtractExpr+368
	.long MM_SubtractExpr+52
	.long MM_SubtractExpr+184
	.zero	8
	.long MM_SubtractExpr+280
	.zero	20
.byte 2
.byte 3
.byte 4
.byte 5
.byte 1
.byte 0
.byte 2
	.zero	9
	.long 1355448803
.byte 95
.byte 208
.byte 166
.byte 67
.byte 188
.byte 81
.byte 108
.byte 19
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_SubtractExpr+517
	.long MM_SubtractExpr+522
	.long MM_SubtractExpr+525
	.zero	4
	.long M_SubtractExpr_t50ca81e3_LINK
	.long -765996802
	.zero	12
	.long MM_SubtractExpr+536
	.long MM_SubtractExpr+551
	.zero	4
	.long SubtractExpr__TypeOf
	.long SubtractExpr__Check
	.long SubtractExpr__Prep
	.long SubtractExpr__Compile
	.long SubtractExpr__Fold
	.long SubtractExpr__GetBounds
	.long SubtractExpr__New
	.zero	4
	.long 1355448803
	.long 2
	.long MM_SubtractExpr+204
	.long 4
	.ascii	"'-'"
	.zero	1
	.long 2
	.long MM_SubtractExpr+220
	.long 11
	.ascii	"unsafe '-'"
	.zero	2
	.ascii	"GetBounds"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"New"
	.zero	4
	.long SubtractExpr__GetBounds
	.long MM_SubtractExpr+232
	.zero	4
	.long SubtractExpr__Fold
	.long MM_SubtractExpr+242
	.zero	4
	.long SubtractExpr__Compile
	.long MM_SubtractExpr+247
	.zero	4
	.long SubtractExpr__Prep
	.long MM_SubtractExpr+255
	.zero	4
	.long SubtractExpr__Check
	.long MM_SubtractExpr+260
	.zero	4
	.long SubtractExpr__TypeOf
	.long MM_SubtractExpr+266
	.zero	4
	.long SubtractExpr__New
	.long MM_SubtractExpr+273
	.long MI_SubtractExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/SubtractExpr.m3"
	.zero	1
.byte 16
.byte 16
.byte 35
.byte 4
.byte 0
.byte 37
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 2
.byte 5
.byte 7
.byte 16
.byte 121
.byte 130
.byte 239
.byte 251
	.ascii	"SubtractExpr.P"
	.zero	1
	.ascii	"SubtractExpr.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
