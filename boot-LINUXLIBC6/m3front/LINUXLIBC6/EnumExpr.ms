	.file	"EnumExpr.mc"
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
	.type	 EnumExpr__New,@function
EnumExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_EnumExpr+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl 12(%ebp),%edx
	leal -8(%ebp),%esp
	movl (%edx),%eax
	movl %eax,16(%esi)
	movl 4(%edx),%eax
	movl %eax,20(%esi)
	movl %ebx,8(%esi)
	movb $1,12(%esi)
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 EnumExpr__New,.Lfe1-EnumExpr__New
	.align 16
	.type	 EnumExpr__EqCheck,@function
EnumExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	testl %ecx,%ecx
	je .L6
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumExpr+192
	jg .L6
	movl MM_EnumExpr+188,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl 16(%ecx),%eax
	cmpl %eax,16(%ebx)
	sete %dl
	movl 20(%ecx),%eax
	cmpl %eax,20(%ebx)
	sete %al
	andl %edx,%eax
	andl $1,%eax
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
	.size	 EnumExpr__EqCheck,.Lfe2-EnumExpr__EqCheck
	.align 16
	.type	 EnumExpr__Compile,@function
EnumExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	addl $16,%eax
	pushl %eax
	movl MI_CG+428,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 EnumExpr__Compile,.Lfe3-EnumExpr__Compile
	.align 16
	.type	 EnumExpr__Bounder,@function
EnumExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl 16(%edx),%eax
	movl %eax,(%ecx)
	movl 20(%edx),%eax
	movl %eax,4(%ecx)
	movl 16(%ebp),%ecx
	movl 16(%edx),%eax
	movl %ebp,%esp
	movl %eax,(%ecx)
	movl 20(%edx),%eax
	movl %eax,4(%ecx)
	popl %ebp
	ret
.Lfe4:
	.size	 EnumExpr__Bounder,.Lfe4-EnumExpr__Bounder
	.align 16
	.type	 EnumExpr__Compare,@function
EnumExpr__Compare:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	leal -8(%ebp),%esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 16(%ebp),%edi
	pushl %esi
	leal -16(%ebp),%ebx
	pushl %ebx
	pushl %eax
	pushl %edx
	call EnumExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L17
	pushl %esi
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L14
	movl $-1,(%edi)
	jmp .L15
	.align 16
.L14:
	pushl %ebx
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L16
	movl $1,(%edi)
	jmp .L15
	.align 16
.L16:
	movl %eax,(%edi)
.L15:
	movl $1,%eax
.L17:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 EnumExpr__Compare,.Lfe5-EnumExpr__Compare
	.align 16
	.type	 EnumExpr__Split,@function
EnumExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 16(%ebp),%ebx
	testl %ecx,%ecx
	je .L22
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumExpr+192
	jg .L22
	movl MM_EnumExpr+188,%eax
	cmpl %edx,4(%eax)
	jl .L22
	movl 12(%ebp),%edx
	movl 16(%ecx),%eax
	movl %eax,(%edx)
	movl 20(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,(%ebx)
	movl $1,%eax
	jmp .L25
	.align 16
.L22:
	xorl %eax,%eax
.L25:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 EnumExpr__Split,.Lfe6-EnumExpr__Split
	.align 16
	.type	 EnumExpr__SplitPair,@function
EnumExpr__SplitPair:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L36
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumExpr+192
	jg .L36
	movl MM_EnumExpr+188,%eax
	cmpl %edx,4(%eax)
	jl .L36
	movl 16(%ebp),%eax
	movl 16(%ecx),%edx
	movl %edx,(%eax)
	movl 20(%ecx),%edx
	movl %edx,4(%eax)
	testl %ebx,%ebx
	je .L36
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumExpr+192
	jg .L36
	movl MM_EnumExpr+188,%eax
	cmpl %edx,4(%eax)
	jl .L36
	movl 20(%ebp),%eax
	movl 16(%ebx),%edx
	movl %edx,(%eax)
	movl 20(%ebx),%edx
	movl %edx,4(%eax)
	jmp .L38
	.align 16
.L36:
	xorl %eax,%eax
	jmp .L39
	.align 16
.L38:
	movl $1,%eax
.L39:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 EnumExpr__SplitPair,.Lfe7-EnumExpr__SplitPair
	.align 16
	.type	 EnumExpr__IsZeroes,@function
EnumExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	pushl $MI_TInt+44
	movl 8(%ebp),%eax
	addl $16,%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 EnumExpr__IsZeroes,.Lfe8-EnumExpr__IsZeroes
	.align 16
	.type	 EnumExpr__GenFPLiteral,@function
EnumExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl $MM_EnumExpr+200
	pushl %esi
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $16,%ebx
	pushl %ebx
	pushl %esi
	movl MI_M3Buf+60,%eax
	call *%eax
	pushl $62
	pushl %esi
	movl MI_M3Buf+48,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 EnumExpr__GenFPLiteral,.Lfe9-EnumExpr__GenFPLiteral
	.align 16
	.type	 EnumExpr__GenLiteral,@function
EnumExpr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	leal -20(%ebp),%edx
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%eax
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %edx
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jge .L43
	pushl $1921
	call _m3_fault
	.align 16
.L43:
	movl 8(%ebp),%eax
	addl $16,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	movl MI_CG+252,%eax
	call *%eax
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 EnumExpr__GenLiteral,.Lfe10-EnumExpr__GenLiteral
	.align 16
	.type	 M_EnumExpr_t50a9fe52_LINK,@function
M_EnumExpr_t50a9fe52_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_EnumExpr+188,%eax
	movl MI_ExprRep+468,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MI_ExprRep+472,%edx
	movl %edx,8(%eax)
	movl MI_ExprRep+464,%edx
	movl %edx,36(%eax)
	movl MI_ExprRep+512,%edx
	movl %edx,52(%eax)
	movl MM_EnumExpr+152,%edx
	movl %edx,56(%eax)
	movl MI_ExprRep+520,%edx
	movl %edx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MI_ExprRep+480,%edx
	movl %edx,16(%eax)
	movl MM_EnumExpr+148,%edx
	movl %edx,12(%eax)
	movl MM_EnumExpr+156,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_EnumExpr+160,%edx
	movl %edx,32(%eax)
	movl MM_EnumExpr+164,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MM_EnumExpr+168,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe11:
	.size	 M_EnumExpr_t50a9fe52_LINK,.Lfe11-M_EnumExpr_t50a9fe52_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_EnumExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_EnumExpr
.data
	.align 4
	.type	 MM_EnumExpr,@object
	.size	 MM_EnumExpr,616
MM_EnumExpr:
	.long MM_EnumExpr+428
	.long MM_EnumExpr+44
	.long MM_EnumExpr+188
	.zero	8
	.long MM_EnumExpr+304
	.zero	28
	.long 1353317970
.byte 183
.byte 83
.byte 138
.byte 85
.byte 229
.byte 173
.byte 35
.byte 5
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_EnumExpr+573
	.zero	4
	.long MM_EnumExpr+578
	.zero	4
	.long M_EnumExpr_t50a9fe52_LINK
	.long -350897909
	.zero	12
	.long MM_EnumExpr+592
	.long MM_EnumExpr+603
	.zero	4
	.long EnumExpr__EqCheck
	.long EnumExpr__Compile
	.long EnumExpr__Bounder
	.long EnumExpr__IsZeroes
	.long EnumExpr__GenFPLiteral
	.long EnumExpr__GenLiteral
	.long EnumExpr__New
	.long EnumExpr__Split
	.long EnumExpr__SplitPair
	.long EnumExpr__Compare
	.zero	4
	.long 1353317970
	.long 2
	.long MM_EnumExpr+208
	.long 6
	.ascii	"ENUM<"
	.zero	3
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"SplitPair"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"Bounder"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"New"
	.zero	4
	.long EnumExpr__GenLiteral
	.long MM_EnumExpr+216
	.zero	4
	.long EnumExpr__GenFPLiteral
	.long MM_EnumExpr+227
	.zero	4
	.long EnumExpr__IsZeroes
	.long MM_EnumExpr+240
	.zero	4
	.long EnumExpr__SplitPair
	.long MM_EnumExpr+249
	.long MI_EnumExpr+52
	.long EnumExpr__Split
	.long MM_EnumExpr+259
	.long MI_EnumExpr+48
	.long EnumExpr__Compare
	.long MM_EnumExpr+265
	.long MI_EnumExpr+56
	.long EnumExpr__Bounder
	.long MM_EnumExpr+273
	.zero	4
	.long EnumExpr__Compile
	.long MM_EnumExpr+281
	.zero	4
	.long EnumExpr__EqCheck
	.long MM_EnumExpr+289
	.zero	4
	.long EnumExpr__New
	.long MM_EnumExpr+297
	.long MI_EnumExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/EnumExpr.m3"
	.zero	1
.byte 1
.byte 17
.byte 26
.byte 4
.byte 0
.byte 5
.byte 10
.byte 1
.byte 15
.byte 1
.byte 1
.byte 4
.byte 12
.byte 16
.byte 19
.byte 0
.byte 66
.byte 255
.byte 255
	.ascii	"EnumExpr.T"
	.zero	1
	.ascii	"EnumExpr.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
