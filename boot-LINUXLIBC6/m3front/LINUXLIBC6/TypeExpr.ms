	.file	"TypeExpr.mc"
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
	.type	 TypeExpr__New,@function
TypeExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_TypeExpr+172,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%esi)
	movl $0,8(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TypeExpr__New,.Lfe1-TypeExpr__New
	.align 16
	.type	 TypeExpr__Split,@function
TypeExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl $0,-8(%ebp)
	testl %ebx,%ebx
	je .L9
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_TypeExpr+176
	jg .L6
	movl MM_TypeExpr+172,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl 16(%ebx),%eax
	jmp .L12
	.align 16
.L6:
	leal -8(%ebp),%esi
	pushl %esi
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_NamedExpr+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L8
	pushl %esi
	pushl %ebx
	movl MI_QualifyExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L9
.L8:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $2,%eax
	jne .L9
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Value+100,%eax
	call *%eax
.L12:
	movl %eax,(%edi)
	movl $1,%eax
	jmp .L11
	.align 16
.L9:
	xorl %eax,%eax
.L11:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TypeExpr__Split,.Lfe2-TypeExpr__Split
	.align 16
	.type	 TypeExpr__TypeOf,@function
TypeExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TypeExpr__TypeOf,.Lfe3-TypeExpr__TypeOf
	.align 16
	.type	 TypeExpr__Check,@function
TypeExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,16(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TypeExpr__Check,.Lfe4-TypeExpr__Check
	.align 16
	.type	 TypeExpr__EqCheck,@function
TypeExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	testl %edx,%edx
	je .L19
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_TypeExpr+176
	jg .L19
	movl MM_TypeExpr+172,%eax
	cmpl %ecx,4(%eax)
	jl .L19
	pushl %ebx
	movl 16(%edx),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	jmp .L22
	.align 16
.L19:
	xorl %eax,%eax
.L22:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TypeExpr__EqCheck,.Lfe5-TypeExpr__EqCheck
	.align 16
	.type	 TypeExpr__Compile,@function
TypeExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl $1328
	call _m3_fault
	.align 16
.Lfe6:
	.size	 TypeExpr__Compile,.Lfe6-TypeExpr__Compile
	.align 16
	.type	 M_TypeExpr_tc8acba7a_LINK,@function
M_TypeExpr_tc8acba7a_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_TypeExpr+172,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_TypeExpr+148,%eax
	movl %eax,4(%edx)
	movl MM_TypeExpr+152,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_TypeExpr+160,%eax
	movl %eax,52(%edx)
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MI_ExprRep+480,%eax
	movl %eax,16(%edx)
	movl MM_TypeExpr+156,%eax
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
	.size	 M_TypeExpr_tc8acba7a_LINK,.Lfe7-M_TypeExpr_tc8acba7a_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TypeExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_TypeExpr
.data
	.align 4
	.type	 MM_TypeExpr,@object
	.size	 MM_TypeExpr,476
MM_TypeExpr:
	.long MM_TypeExpr+296
	.long MM_TypeExpr+44
	.long MM_TypeExpr+172
	.zero	8
	.long MM_TypeExpr+220
	.zero	28
	.long -928204166
.byte 200
.byte 30
.byte 1
.byte 209
.byte 178
.byte 164
.byte 173
.byte 25
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_TypeExpr+441
	.long MM_TypeExpr+443
	.long MM_TypeExpr+445
	.zero	4
	.long M_TypeExpr_tc8acba7a_LINK
	.long -350897909
	.zero	12
	.long MM_TypeExpr+453
	.long MM_TypeExpr+464
	.zero	4
	.long TypeExpr__TypeOf
	.long TypeExpr__Check
	.long TypeExpr__EqCheck
	.long TypeExpr__Compile
	.long TypeExpr__New
	.long TypeExpr__Split
	.zero	4
	.long -928204166
	.ascii	"Compile"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	2
	.long TypeExpr__Compile
	.long MM_TypeExpr+180
	.zero	4
	.long TypeExpr__EqCheck
	.long MM_TypeExpr+188
	.zero	4
	.long TypeExpr__Check
	.long MM_TypeExpr+196
	.zero	4
	.long TypeExpr__TypeOf
	.long MM_TypeExpr+202
	.zero	4
	.long TypeExpr__Split
	.long MM_TypeExpr+209
	.long MI_TypeExpr+48
	.long TypeExpr__New
	.long MM_TypeExpr+215
	.long MI_TypeExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/TypeExpr.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
	.ascii	"TypeExpr.P"
	.zero	1
	.ascii	"TypeExpr.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
