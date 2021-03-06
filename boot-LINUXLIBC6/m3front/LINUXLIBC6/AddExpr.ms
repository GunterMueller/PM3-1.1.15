	.file	"AddExpr.mc"
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
	.type	 AddExpr__New,@function
AddExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_AddExpr+184,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
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
	.size	 AddExpr__New,.Lfe1-AddExpr__New
	.align 16
	.type	 AddExpr__TypeOf,@function
AddExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L3
	movl MI_Addr+44,%ebx
.L3:
	pushl %ebx
	movl MI_Type+80,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AddExpr__TypeOf,.Lfe2-AddExpr__TypeOf
	.align 16
	.type	 AddExpr__Check,@function
AddExpr__Check:
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
	jne .L5
	cmpl %ebx,%eax
	jne .L5
	movb $0,24(%edi)
	movl 12(%ebp),%eax
	incl 12(%eax)
	jmp .L6
	.align 16
.L5:
	cmpl %ebx,MI_Reel+44
	jne .L7
	cmpl %ebx,%esi
	jne .L7
	movb $1,24(%edi)
	jmp .L16
	.align 16
.L7:
	cmpl %ebx,MI_LReel+44
	jne .L8
	cmpl %ebx,%esi
	jne .L8
	movb $2,24(%edi)
	jmp .L16
	.align 16
.L8:
	cmpl %ebx,MI_EReel+44
	jne .L9
	cmpl %ebx,%esi
	jne .L9
	movb $3,24(%edi)
.L16:
	movl 12(%ebp),%eax
	incl 16(%eax)
	jmp .L6
	.align 16
.L9:
	movl MI_ErrType+44,%eax
	cmpl %eax,%ebx
	je .L10
	cmpl %eax,%esi
	jne .L11
.L10:
	movb $0,24(%edi)
	movl MI_ErrType+44,%ebx
	jmp .L6
	.align 16
.L11:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_SetType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L12
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L14
	cmpl %esi,MI_Int+44
	jne .L14
	movb $4,24(%edi)
	movl MI_Module+68,%eax
	movl MI_Addr+44,%ebx
	call *%eax
	testl %eax,%eax
	je .L6
	pushl $MM_AddExpr+212
	movl MI_Error+44,%eax
	call *%eax
	jmp .L6
	.align 16
.L12:
	movb $5,24(%edi)
	pushl $0
	pushl %esi
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L6
.L14:
	pushl %esi
	pushl %ebx
	pushl $MM_AddExpr+196
	movl MI_Expr+248,%eax
	call *%eax
	movl %eax,%ebx
.L6:
	leal -16(%ebp),%esp
	movl %ebx,8(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 AddExpr__Check,.Lfe3-AddExpr__Check
	.align 16
	.type	 AddExpr__Prep,@function
AddExpr__Prep:
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
	cmpb $5,24(%ebx)
	jne .L17
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%edx
	addl $8,%esp
	cmpl %edx,MI_Target+96
	jge .L17
	testl %edx,%edx
	jge .L20
	pushl $1745
	call _m3_fault
	.align 16
.L20:
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
	jge .L21
	pushl $1841
	call _m3_fault
	.align 16
.L21:
	pushl %eax
	movl MI_CG+520,%eax
	call *%eax
.L17:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 AddExpr__Prep,.Lfe4-AddExpr__Prep
	.align 16
	.type	 AddExpr__Compile,@function
AddExpr__Compile:
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
	xorl %eax,%eax
	movb 24(%ebx),%al
	cmpl $5,%eax
	jne .L23
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl MI_Target+96,%eax
	addl $8,%esp
	cmpl %eax,-20(%ebp)
	jle .L24
	movl MI_Target+100,%eax
	pushl %eax
	pushl $0
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_CG+372,%eax
	call *%eax
	movl $0,28(%ebx)
	jmp .L22
	.align 16
.L24:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl -20(%ebp),%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L26
	pushl $2097
	call _m3_fault
	.align 16
.L26:
	pushl %eax
	movl MI_CG+520,%eax
	jmp .L29
	.align 16
.L23:
	cmpl $4,%eax
	jne .L28
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	pushl $8
	movl MI_CG+712,%eax
	jmp .L29
	.align 16
.L28:
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	xorl %eax,%eax
	movb 24(%ebx),%al
	movb MM_AddExpr+44(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_CG+460,%eax
.L29:
	call *%eax
.L22:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 AddExpr__Compile,.Lfe5-AddExpr__Compile
	.align 16
	.type	 AddExpr__Fold,@function
AddExpr__Fold:
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
	je .L33
	testl %esi,%esi
	je .L33
	leal -4(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_IntegerExpr+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L33
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_ReelExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L33
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_AddressExpr+56,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L33
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_SetExpr+56,%eax
	call *%eax
.L33:
	leal -16(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 AddExpr__Fold,.Lfe6-AddExpr__Fold
	.align 16
	.type	 AddExpr__GetBounds,@function
AddExpr__GetBounds:
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
	leal -16(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%esi
	pushl %esi
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	addl $36,%esp
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L39
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L39
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L39:
	leal -8(%ebp),%ebx
	pushl %ebx
	leal -16(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L38
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L38
	movl 16(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
.L38:
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 AddExpr__GetBounds,.Lfe7-AddExpr__GetBounds
	.align 16
	.type	 M_AddExpr_tabfb6dc3_LINK,@function
M_AddExpr_tabfb6dc3_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AddExpr+184,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_AddExpr+156,%eax
	movl %eax,4(%edx)
	movl MM_AddExpr+160,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_AddExpr+164,%eax
	movl %eax,52(%edx)
	movl MM_AddExpr+168,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MM_AddExpr+172,%eax
	movl %eax,16(%edx)
	movl MI_ExprRep+544,%eax
	movl %eax,12(%edx)
	movl MM_AddExpr+176,%eax
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
	.size	 M_AddExpr_tabfb6dc3_LINK,.Lfe8-M_AddExpr_tabfb6dc3_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AddExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_AddExpr
.data
	.align 4
	.type	 MM_AddExpr,@object
	.size	 MM_AddExpr,552
MM_AddExpr:
	.long MM_AddExpr+368
	.long MM_AddExpr+52
	.long MM_AddExpr+184
	.zero	8
	.long MM_AddExpr+280
	.zero	20
.byte 2
.byte 3
.byte 4
.byte 5
.byte 1
.byte 1
	.zero	10
	.long -1409585725
.byte 209
.byte 244
.byte 77
.byte 160
.byte 18
.byte 153
.byte 182
.byte 11
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AddExpr+512
	.long MM_AddExpr+516
	.long MM_AddExpr+519
	.zero	4
	.long M_AddExpr_tabfb6dc3_LINK
	.long -765996802
	.zero	12
	.long MM_AddExpr+529
	.long MM_AddExpr+539
	.zero	4
	.long AddExpr__TypeOf
	.long AddExpr__Check
	.long AddExpr__Prep
	.long AddExpr__Compile
	.long AddExpr__Fold
	.long AddExpr__GetBounds
	.long AddExpr__New
	.zero	4
	.long -1409585725
	.long 2
	.long MM_AddExpr+204
	.long 4
	.ascii	"'+'"
	.zero	1
	.long 2
	.long MM_AddExpr+220
	.long 11
	.ascii	"unsafe '+'"
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
	.long AddExpr__GetBounds
	.long MM_AddExpr+232
	.zero	4
	.long AddExpr__Fold
	.long MM_AddExpr+242
	.zero	4
	.long AddExpr__Compile
	.long MM_AddExpr+247
	.zero	4
	.long AddExpr__Prep
	.long MM_AddExpr+255
	.zero	4
	.long AddExpr__Check
	.long MM_AddExpr+260
	.zero	4
	.long AddExpr__TypeOf
	.long MM_AddExpr+266
	.zero	4
	.long AddExpr__New
	.long MM_AddExpr+273
	.long MI_AddExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/AddExpr.m3"
	.zero	1
.byte 16
.byte 36
.byte 4
.byte 0
.byte 37
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 5
.byte 6
.byte 16
.byte 121
.byte 130
.byte 239
.byte 251
	.ascii	"AddExpr.P"
	.zero	1
	.ascii	"AddExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
