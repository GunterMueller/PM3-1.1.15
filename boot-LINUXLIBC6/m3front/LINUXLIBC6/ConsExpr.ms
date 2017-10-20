	.file	"ConsExpr.mc"
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
	.type	 ConsExpr__New,@function
ConsExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_ConsExpr+196,%eax
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
	movb $0,32(%edi)
	movb $1,13(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ConsExpr__New,.Lfe1-ConsExpr__New
	.align 16
	.type	 ConsExpr__Is,@function
ConsExpr__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L9
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ConsExpr+200
	jg .L6
	movl MM_ConsExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ConsExpr__Is,.Lfe2-ConsExpr__Is
	.align 16
	.type	 ConsExpr__Base,@function
ConsExpr__Base:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L14
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_ConsExpr+200
	jg .L14
	movl MM_ConsExpr+196,%eax
	cmpl %ecx,4(%eax)
	jl .L14
	movl 28(%edx),%eax
	jmp .L17
	.align 16
.L14:
	xorl %eax,%eax
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ConsExpr__Base,.Lfe3-ConsExpr__Base
	.align 16
	.type	 ConsExpr__TypeOf,@function
ConsExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L19
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	jmp .L20
	.align 16
.L19:
	movl -4(%ebp),%eax
.L20:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ConsExpr__TypeOf,.Lfe4-ConsExpr__TypeOf
	.align 16
	.type	 ConsExpr__Seal,@function
ConsExpr__Seal:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpl $0,28(%ebx)
	jne .L21
	leal -24(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L21
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-24(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-24(%ebp)
	addl $12,%esp
	testl %edx,%edx
	je .L21
	xorl %eax,%eax
	movb -2(%ebp),%al
	cmpl $13,%eax
	jne .L26
	movl 20(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_RecordExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,28(%ebx)
	movb $1,32(%ebx)
	jmp .L21
	.align 16
.L26:
	cmpl $15,%eax
	jne .L27
	movl 20(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_SetExpr+44,%eax
	call *%eax
	movl %eax,28(%ebx)
	movb $2,32(%ebx)
	jmp .L21
	.align 16
.L27:
	cmpl $6,%eax
	je .L28
	cmpl $10,%eax
	jne .L21
.L28:
	xorl %eax,%eax
	movb 24(%ebx),%al
	pushl %eax
	movl 20(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_ArrayExpr+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,28(%ebx)
	movb $3,32(%ebx)
.L21:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ConsExpr__Seal,.Lfe5-ConsExpr__Seal
	.align 16
	.type	 ConsExpr__Check,@function
ConsExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	call ConsExpr__Seal
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	pushl %esi
	call ConsExpr__TypeOf
	movl %eax,8(%esi)
	addl $16,%esp
	movb 32(%esi),%al
	testb %al,%al
	jne .L31
	pushl $MM_ConsExpr+208
	jmp .L40
	.align 16
.L31:
	cmpb $0,24(%esi)
	je .L32
	cmpb $3,%al
	je .L32
	pushl $MM_ConsExpr+272
.L40:
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L32:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L34
	pushl $1908
	call _m3_fault
	.align 16
.L34:
	xorl %ebx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L35
	.align 16
.L36:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L37
	pushl $1908
	call _m3_fault
	.align 16
.L37:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L38
	pushl $1906
	call _m3_fault
	.align 16
.L38:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	incl %ebx
	addl $8,%esp
.L35:
	cmpl %edi,%ebx
	jle .L36
	movl 12(%ebp),%eax
	pushl %eax
	movl 28(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ConsExpr__Check,.Lfe6-ConsExpr__Check
	.align 16
	.type	 ConsExpr__EqCheck,@function
ConsExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	pushl %esi
	call ConsExpr__Seal
	addl $4,%esp
	testl %ebx,%ebx
	je .L46
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ConsExpr+200
	jg .L45
	movl MM_ConsExpr+196,%eax
	cmpl %edx,4(%eax)
	jge .L44
	jmp .L45
	.align 16
.L46:
	movl %ebx,%eax
	jmp .L48
	.align 16
.L44:
	pushl %ebx
	call ConsExpr__Seal
	pushl %edi
	movl 28(%ebx),%eax
	pushl %eax
	jmp .L49
	.align 16
.L45:
	pushl %edi
	pushl %ebx
.L49:
	movl 28(%esi),%eax
	pushl %eax
	movl MI_Expr+232,%eax
	call *%eax
.L48:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ConsExpr__EqCheck,.Lfe7-ConsExpr__EqCheck
	.align 16
	.type	 ConsExpr__NeedsAddress,@function
ConsExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call ConsExpr__Seal
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_Expr+184,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ConsExpr__NeedsAddress,.Lfe8-ConsExpr__NeedsAddress
	.align 16
	.type	 ConsExpr__Prep,@function
ConsExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	pushl %ebx
	call ConsExpr__Seal
	leal -4(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L52
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	addl $4,%esp
.L52:
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ConsExpr__Prep,.Lfe9-ConsExpr__Prep
	.align 16
	.type	 ConsExpr__Compile,@function
ConsExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 28(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 ConsExpr__Compile,.Lfe10-ConsExpr__Compile
	.align 16
	.type	 ConsExpr__Fold,@function
ConsExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call ConsExpr__Seal
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 ConsExpr__Fold,.Lfe11-ConsExpr__Fold
	.align 16
	.type	 ConsExpr__IsZeroes,@function
ConsExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call ConsExpr__Seal
	movl 28(%ebx),%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 ConsExpr__IsZeroes,.Lfe12-ConsExpr__IsZeroes
	.align 16
	.type	 M_ConsExpr_t1c6e87a8_LINK,@function
M_ConsExpr_t1c6e87a8_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ConsExpr+196,%eax
	movl MM_ConsExpr+148,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_ConsExpr+156,%edx
	movl %edx,8(%eax)
	movl MM_ConsExpr+164,%edx
	movl %edx,36(%eax)
	movl MM_ConsExpr+168,%edx
	movl %edx,52(%eax)
	movl MM_ConsExpr+172,%edx
	movl %edx,56(%eax)
	movl MI_ExprRep+520,%edx
	movl %edx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+524,%edx
	movl %edx,68(%eax)
	movl %edx,72(%eax)
	movl MM_ConsExpr+176,%edx
	movl %edx,16(%eax)
	movl MM_ConsExpr+160,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_ConsExpr+180,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe13:
	.size	 M_ConsExpr_t1c6e87a8_LINK,.Lfe13-M_ConsExpr_t1c6e87a8_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ConsExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_ConsExpr
.data
	.align 4
	.type	 MM_ConsExpr,@object
	.size	 MM_ConsExpr,744
MM_ConsExpr:
	.long MM_ConsExpr+548
	.long MM_ConsExpr+44
	.long MM_ConsExpr+196
	.zero	8
	.long MM_ConsExpr+400
	.zero	28
	.long 477005736
.byte 5
.byte 170
.byte 204
.byte 16
.byte 173
.byte 45
.byte 162
.byte 12
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ConsExpr+693
	.long MM_ConsExpr+700
	.long MM_ConsExpr+705
	.zero	4
	.long M_ConsExpr_t1c6e87a8_LINK
	.long -350897909
	.zero	12
	.long MM_ConsExpr+722
	.long MM_ConsExpr+733
	.zero	4
	.long ConsExpr__TypeOf
	.long ConsExpr__Seal
	.long ConsExpr__Check
	.long ConsExpr__EqCheck
	.long ConsExpr__NeedsAddress
	.long ConsExpr__Prep
	.long ConsExpr__Compile
	.long ConsExpr__Fold
	.long ConsExpr__IsZeroes
	.long ConsExpr__New
	.long ConsExpr__Is
	.long ConsExpr__Base
	.zero	4
	.long 477005736
	.long 2
	.long MM_ConsExpr+216
	.long 52
	.ascii	"constructor type must be array, record, or set type"
	.zero	1
	.long 2
	.long MM_ConsExpr+280
	.long 38
	.ascii	"trailing '..' in constructor, ignored"
	.zero	3
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Seal"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Base"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"New"
	.zero	3
	.long ConsExpr__IsZeroes
	.long MM_ConsExpr+320
	.zero	4
	.long ConsExpr__Fold
	.long MM_ConsExpr+329
	.zero	4
	.long ConsExpr__Compile
	.long MM_ConsExpr+334
	.zero	4
	.long ConsExpr__Prep
	.long MM_ConsExpr+342
	.zero	4
	.long ConsExpr__NeedsAddress
	.long MM_ConsExpr+347
	.zero	4
	.long ConsExpr__EqCheck
	.long MM_ConsExpr+360
	.zero	4
	.long ConsExpr__Check
	.long MM_ConsExpr+368
	.zero	4
	.long ConsExpr__Seal
	.long MM_ConsExpr+374
	.zero	4
	.long ConsExpr__TypeOf
	.long MM_ConsExpr+379
	.zero	4
	.long ConsExpr__Base
	.long MM_ConsExpr+386
	.long MI_ConsExpr+52
	.long ConsExpr__Is
	.long MM_ConsExpr+391
	.long MI_ConsExpr+48
	.long ConsExpr__New
	.long MM_ConsExpr+394
	.long MI_ConsExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/ConsExpr.m3"
	.zero	1
.byte 4
.byte 4
.byte 16
.byte 36
.byte 4
.byte 16
.byte 0
.byte 4
.byte 4
.byte 37
.byte 4
.byte 0
.byte 6
.byte 10
.byte 5
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 16
.byte 144
.byte 218
.byte 98
.byte 13
.byte 2
.byte 23
.byte 5
.byte 4
	.ascii	"ConsExpr.P"
	.zero	1
	.ascii	"ConsExpr.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
