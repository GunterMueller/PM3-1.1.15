	.file	"ProcExpr.mc"
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
	.type	 ProcExpr__New,@function
ProcExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ProcExpr+184,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	pushl %ebx
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,16(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ProcExpr__New,.Lfe1-ProcExpr__New
	.align 16
	.type	 ProcExpr__Split,@function
ProcExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	testl %edx,%edx
	je .L6
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_ProcExpr+188
	jg .L6
	movl MM_ProcExpr+184,%eax
	cmpl %ecx,4(%eax)
	jl .L6
	movl 16(%edx),%eax
	movl %eax,(%ebx)
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ProcExpr__Split,.Lfe2-ProcExpr__Split
	.align 16
	.type	 ProcExpr__Compare,@function
ProcExpr__Compare:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %ecx,%ecx
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	testl %esi,%esi
	je .L20
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ProcExpr+188
	jg .L20
	movl MM_ProcExpr+184,%eax
	cmpl %edx,4(%eax)
	jl .L20
	movl 16(%esi),%ecx
	testl %ebx,%ebx
	je .L20
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ProcExpr+188
	jg .L20
	movl MM_ProcExpr+184,%eax
	cmpl %edx,4(%eax)
	jl .L20
	movl 16(%ebx),%eax
	jmp .L22
	.align 16
.L20:
	xorl %eax,%eax
	jmp .L25
	.align 16
.L22:
	cmpl %eax,%ecx
	jne .L23
	movl $0,(%edi)
	jmp .L24
	.align 16
.L23:
	movl $-3,(%edi)
.L24:
	movl $1,%eax
.L25:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ProcExpr__Compare,.Lfe3-ProcExpr__Compare
	.align 16
	.type	 ProcExpr__TypeOf,@function
ProcExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ProcExpr__TypeOf,.Lfe4-ProcExpr__TypeOf
	.align 16
	.type	 ProcExpr__Check,@function
ProcExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Value+44,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Value+48,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ProcExpr__Check,.Lfe5-ProcExpr__Check
	.align 16
	.type	 ProcExpr__EqCheck,@function
ProcExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L32
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_ProcExpr+188
	jg .L32
	movl MM_ProcExpr+184,%eax
	cmpl %ecx,4(%eax)
	jl .L32
	movl 16(%edx),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Procedure+72,%eax
	call *%eax
	jmp .L35
	.align 16
.L32:
	xorl %eax,%eax
.L35:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ProcExpr__EqCheck,.Lfe6-ProcExpr__EqCheck
	.align 16
	.type	 ProcExpr__Compile,@function
ProcExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Value+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ProcExpr__Compile,.Lfe7-ProcExpr__Compile
	.align 16
	.type	 ProcExpr__GenFPLiteral,@function
ProcExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	subl $404,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl $0,-404(%ebp)
	pushl $1
	pushl $1
	pushl $1
	leal -404(%ebp),%ebx
	pushl %ebx
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Scope+120,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl MI_Scope+124,%eax
	call *%eax
	leal -412(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ProcExpr__GenFPLiteral,.Lfe8-ProcExpr__GenFPLiteral
	.align 16
	.type	 ProcExpr__GenLiteral,@function
ProcExpr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 16(%eax),%ecx
	testl %ecx,%ecx
	je .L39
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ProcExpr+196
	jg .L40
	movl MM_ProcExpr+192,%eax
	cmpl %edx,4(%eax)
	jge .L39
.L40:
	pushl $1765
	call _m3_fault
	.align 16
.L39:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	movl MI_Procedure+80,%eax
	call *%eax
	addl $16,%esp
	movl -12(%ebp),%eax
	testl %eax,%eax
	je .L41
	pushl %eax
	pushl %ebx
	movl MI_CG+260,%eax
	call *%eax
	jmp .L38
	.align 16
.L41:
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ProcBody+160,%eax
	call *%eax
.L38:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ProcExpr__GenLiteral,.Lfe9-ProcExpr__GenLiteral
	.align 16
	.type	 M_ProcExpr_tf4fc682c_LINK,@function
M_ProcExpr_tf4fc682c_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ProcExpr+184,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ProcExpr+148,%eax
	movl %eax,4(%edx)
	movl MM_ProcExpr+152,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MI_ExprRep+512,%eax
	movl %eax,52(%edx)
	movl MM_ProcExpr+160,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MI_ExprRep+480,%eax
	movl %eax,16(%edx)
	movl MM_ProcExpr+156,%eax
	movl %eax,12(%edx)
	movl MI_ExprRep+484,%eax
	movl %eax,20(%edx)
	movl MI_ExprRep+488,%eax
	movl %eax,24(%edx)
	movl %eax,28(%edx)
	movl %eax,32(%edx)
	movl MM_ProcExpr+164,%eax
	movl %eax,40(%edx)
	movl MI_ExprRep+504,%eax
	movl %eax,44(%edx)
	movl MM_ProcExpr+168,%eax
	movl %eax,48(%edx)
	movl MI_ExprRep+536,%eax
	movl %eax,76(%edx)
	popl %ebp
	ret
.Lfe10:
	.size	 M_ProcExpr_tf4fc682c_LINK,.Lfe10-M_ProcExpr_tf4fc682c_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ProcExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_ProcExpr
.data
	.align 4
	.type	 MM_ProcExpr,@object
	.size	 MM_ProcExpr,552
MM_ProcExpr:
	.long MM_ProcExpr+384
	.long MM_ProcExpr+44
	.long MM_ProcExpr+184
	.zero	8
	.long MM_ProcExpr+272
	.zero	28
	.long -184784852
.byte 5
.byte 127
.byte 47
.byte 226
.byte 41
.byte 23
.byte 211
.byte 22
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ProcExpr+529
	.long MM_ProcExpr+531
	.long MM_ProcExpr+533
	.zero	4
	.long M_ProcExpr_tf4fc682c_LINK
	.long -350897909
	.zero	16
	.long MM_ProcExpr+541
	.zero	4
	.long ProcExpr__TypeOf
	.long ProcExpr__Check
	.long ProcExpr__EqCheck
	.long ProcExpr__Compile
	.long ProcExpr__GenFPLiteral
	.long ProcExpr__GenLiteral
	.long ProcExpr__New
	.long ProcExpr__Split
	.long ProcExpr__Compare
	.long MM_ProcExpr+192
	.long -184784852
	.zero	4
	.long -712670126
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	2
	.long ProcExpr__GenLiteral
	.long MM_ProcExpr+200
	.zero	4
	.long ProcExpr__GenFPLiteral
	.long MM_ProcExpr+211
	.zero	4
	.long ProcExpr__Compile
	.long MM_ProcExpr+224
	.zero	4
	.long ProcExpr__EqCheck
	.long MM_ProcExpr+232
	.zero	4
	.long ProcExpr__Check
	.long MM_ProcExpr+240
	.zero	4
	.long ProcExpr__TypeOf
	.long MM_ProcExpr+246
	.zero	4
	.long ProcExpr__Compare
	.long MM_ProcExpr+253
	.long MI_ProcExpr+52
	.long ProcExpr__Split
	.long MM_ProcExpr+261
	.long MI_ProcExpr+48
	.long ProcExpr__New
	.long MM_ProcExpr+267
	.long MI_ProcExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/ProcExpr.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
	.ascii	"ProcExpr.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
