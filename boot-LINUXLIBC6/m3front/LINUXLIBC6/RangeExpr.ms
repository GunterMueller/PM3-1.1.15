	.file	"RangeExpr.mc"
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
	.type	 RangeExpr__New,@function
RangeExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_RangeExpr+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%edi)
	movl %esi,20(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RangeExpr__New,.Lfe1-RangeExpr__New
	.align 16
	.type	 RangeExpr__Split,@function
RangeExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %edx,%edx
	je .L6
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_RangeExpr+192
	jg .L6
	movl MM_RangeExpr+188,%eax
	cmpl %ecx,4(%eax)
	jl .L6
	movl 16(%edx),%eax
	movl %eax,(%ebx)
	movl 20(%edx),%eax
	movl %eax,(%esi)
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RangeExpr__Split,.Lfe2-RangeExpr__Split
	.align 16
	.type	 RangeExpr__TypeOf,@function
RangeExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RangeExpr__TypeOf,.Lfe3-RangeExpr__TypeOf
	.align 16
	.type	 RangeExpr__Check,@function
RangeExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
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
	movl %eax,%ebx
	pushl %ebx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%edi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $32,%esp
	cmpl %esi,MI_Int+44
	jne .L12
	cmpl %esi,%ebx
	je .L13
.L12:
	pushl %esi
	movl MI_EnumType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L14
	pushl $0
	pushl %ebx
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L13
.L14:
	pushl $MM_RangeExpr+200
	movl MI_Error+44,%eax
	call *%eax
.L13:
	leal -12(%ebp),%esp
	movl %esi,8(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RangeExpr__Check,.Lfe4-RangeExpr__Check
	.align 16
	.type	 RangeExpr__Prep,@function
RangeExpr__Prep:
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
.Lfe5:
	.size	 RangeExpr__Prep,.Lfe5-RangeExpr__Prep
	.align 16
	.type	 RangeExpr__Compile,@function
RangeExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RangeExpr+240
	movl MI_Error+44,%eax
	call *%eax
	pushl $1344
	call _m3_fault
	.align 16
.Lfe6:
	.size	 RangeExpr__Compile,.Lfe6-RangeExpr__Compile
	.align 16
	.type	 RangeExpr__Bounder,@function
RangeExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%edi),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	je .L19
	leal -12(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L26
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L19
.L26:
	movl 12(%ebp),%eax
	movl -12(%ebp),%edx
	movl %edx,(%eax)
	movl -8(%ebp),%edx
	movl %edx,4(%eax)
.L19:
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L17
	leal -12(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L27
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	movl MI_EnumExpr+48,%eax
	call *%eax
	testl %eax,%eax
	je .L17
.L27:
	movl 16(%ebp),%eax
	movl -12(%ebp),%edx
	movl %edx,(%eax)
	movl -8(%ebp),%edx
	movl %edx,4(%eax)
.L17:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RangeExpr__Bounder,.Lfe7-RangeExpr__Bounder
	.align 16
	.type	 RangeExpr__Fold,@function
RangeExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %eax,%eax
	je .L32
	movl 20(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %eax,%eax
	je .L32
	cmpl %esi,16(%ebx)
	jne .L31
	cmpl %eax,20(%ebx)
	jne .L31
	movl %ebx,%eax
	jmp .L32
	.align 16
.L31:
	pushl %edx
	pushl %esi
	call RangeExpr__New
.L32:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RangeExpr__Fold,.Lfe8-RangeExpr__Fold
	.align 16
	.type	 RangeExpr__GenFPLiteral,@function
RangeExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl $MM_RangeExpr+304
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	pushl %ebx
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
	pushl $44
	pushl %ebx
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl %ebx
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
	addl $32,%esp
	pushl $62
	pushl %ebx
	movl MI_M3Buf+48,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RangeExpr__GenFPLiteral,.Lfe9-RangeExpr__GenFPLiteral
	.align 16
	.type	 RangeExpr__IsZeroes,@function
RangeExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+176,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L35
	movl 20(%esi),%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L35:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RangeExpr__IsZeroes,.Lfe10-RangeExpr__IsZeroes
	.align 16
	.type	 M_RangeExpr_t857ebe8a_LINK,@function
M_RangeExpr_t857ebe8a_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RangeExpr+188,%eax
	movl MM_RangeExpr+148,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_RangeExpr+152,%edx
	movl %edx,8(%eax)
	movl MI_ExprRep+464,%edx
	movl %edx,36(%eax)
	movl MM_RangeExpr+156,%edx
	movl %edx,52(%eax)
	movl MM_RangeExpr+160,%edx
	movl %edx,56(%eax)
	movl MI_ExprRep+520,%edx
	movl %edx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+524,%edx
	movl %edx,68(%eax)
	movl %edx,72(%eax)
	movl MM_RangeExpr+168,%edx
	movl %edx,16(%eax)
	movl MI_ExprRep+544,%edx
	movl %edx,12(%eax)
	movl MM_RangeExpr+164,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_RangeExpr+176,%edx
	movl %edx,32(%eax)
	movl MM_RangeExpr+172,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe11:
	.size	 M_RangeExpr_t857ebe8a_LINK,.Lfe11-M_RangeExpr_t857ebe8a_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RangeExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_RangeExpr
.data
	.align 4
	.type	 MM_RangeExpr,@object
	.size	 MM_RangeExpr,692
MM_RangeExpr:
	.long MM_RangeExpr+516
	.long MM_RangeExpr+44
	.long MM_RangeExpr+188
	.zero	8
	.long MM_RangeExpr+392
	.zero	28
	.long -2055291254
.byte 37
.byte 57
.byte 243
.byte 147
.byte 175
.byte 135
.byte 141
.byte 22
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RangeExpr+662
	.zero	4
	.long M_RangeExpr_t857ebe8a_LINK
	.long -765996802
	.zero	12
	.long MM_RangeExpr+665
	.long MM_RangeExpr+677
	.zero	4
	.long RangeExpr__TypeOf
	.long RangeExpr__Check
	.long RangeExpr__Prep
	.long RangeExpr__Compile
	.long RangeExpr__Bounder
	.long RangeExpr__Fold
	.long RangeExpr__GenFPLiteral
	.long RangeExpr__IsZeroes
	.long RangeExpr__New
	.long RangeExpr__Split
	.zero	4
	.long -2055291254
	.long 2
	.long MM_RangeExpr+208
	.long 28
	.ascii	"incompatible types for '..'"
	.zero	1
	.long 2
	.long MM_RangeExpr+248
	.long 50
	.ascii	"INTERNAL ERROR: cannot compile a range expression"
	.zero	3
	.long 2
	.long MM_RangeExpr+312
	.long 7
	.ascii	"RANGE<"
	.zero	2
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Bounder"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	2
	.long RangeExpr__IsZeroes
	.long MM_RangeExpr+320
	.zero	4
	.long RangeExpr__GenFPLiteral
	.long MM_RangeExpr+329
	.zero	4
	.long RangeExpr__Fold
	.long MM_RangeExpr+342
	.zero	4
	.long RangeExpr__Bounder
	.long MM_RangeExpr+347
	.zero	4
	.long RangeExpr__Compile
	.long MM_RangeExpr+355
	.zero	4
	.long RangeExpr__Prep
	.long MM_RangeExpr+363
	.zero	4
	.long RangeExpr__Check
	.long MM_RangeExpr+368
	.zero	4
	.long RangeExpr__TypeOf
	.long MM_RangeExpr+374
	.zero	4
	.long RangeExpr__Split
	.long MM_RangeExpr+381
	.long MI_RangeExpr+48
	.long RangeExpr__New
	.long MM_RangeExpr+387
	.long MI_RangeExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/RangeExpr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"RangeExpr.P"
	.zero	1
	.ascii	"RangeExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
