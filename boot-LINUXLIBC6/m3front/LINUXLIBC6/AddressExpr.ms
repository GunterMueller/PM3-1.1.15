	.file	"AddressExpr.mc"
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
	.type	 AddressExpr__New,@function
AddressExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_AddressExpr+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_ExprRep+460,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl %eax,16(%ebx)
	movl 4(%edx),%eax
	movl %eax,20(%ebx)
	movb $1,12(%ebx)
	pushl $MI_TInt+44
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	testl %eax,%eax
	je .L2
	movl MI_Null+44,%eax
	jmp .L4
	.align 16
.L2:
	movl MI_Addr+44,%eax
.L4:
	movl %eax,8(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 AddressExpr__New,.Lfe1-AddressExpr__New
	.align 16
	.type	 AddressExpr__Split,@function
AddressExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L9
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L9
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L9
	movl 12(%ebp),%eax
	movl 16(%ecx),%edx
	movl %edx,(%eax)
	movl 20(%ecx),%edx
	movl %edx,4(%eax)
	movl $1,%eax
	jmp .L12
	.align 16
.L9:
	xorl %eax,%eax
.L12:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AddressExpr__Split,.Lfe2-AddressExpr__Split
	.align 16
	.type	 AddressExpr__Add,@function
AddressExpr__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	leal -16(%ebp),%edi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	pushl %edi
	pushl %eax
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L21
	testl %esi,%esi
	je .L18
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L18
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L18
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	leal 16(%esi),%eax
	pushl %eax
	movl MI_TWord+48,%eax
	call *%eax
	pushl %ebx
	call AddressExpr__New
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	jmp .L21
	.align 16
.L18:
	xorl %eax,%eax
.L21:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 AddressExpr__Add,.Lfe3-AddressExpr__Add
	.align 16
	.type	 AddressExpr__Subtract,@function
AddressExpr__Subtract:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%esi
	testl %ecx,%ecx
	je .L34
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L34
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L34
	movl 16(%ecx),%eax
	movl %eax,-24(%ebp)
	movl 20(%ecx),%eax
	movl %eax,-20(%ebp)
	leal -16(%ebp),%edi
	movl %edi,-28(%ebp)
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L29
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_TWord+52,%eax
	call *%eax
	pushl %ebx
	call AddressExpr__New
	jmp .L38
	.align 16
.L29:
	testl %esi,%esi
	je .L34
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L34
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L34
	leal -8(%ebp),%ebx
	pushl %ebx
	leal 16(%esi),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_TWord+52,%eax
	call *%eax
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
.L38:
	movl 16(%ebp),%edi
	movl %eax,(%edi)
	jmp .L30
	.align 16
.L34:
	xorl %eax,%eax
	jmp .L37
	.align 16
.L30:
	movl $1,%eax
.L37:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 AddressExpr__Subtract,.Lfe4-AddressExpr__Subtract
	.align 16
	.type	 AddressExpr__Compare,@function
AddressExpr__Compare:
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
	call AddressExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L44
	pushl %esi
	pushl %ebx
	movl MI_TWord+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L41
	movl $-1,(%edi)
	jmp .L42
	.align 16
.L41:
	pushl %ebx
	pushl %esi
	movl MI_TWord+72,%eax
	call *%eax
	testl %eax,%eax
	je .L43
	movl $1,(%edi)
	jmp .L42
	.align 16
.L43:
	movl %eax,(%edi)
.L42:
	movl $1,%eax
.L44:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 AddressExpr__Compare,.Lfe5-AddressExpr__Compare
	.align 16
	.type	 AddressExpr__SplitPair,@function
AddressExpr__SplitPair:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L55
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L55
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L55
	movl 16(%ebp),%eax
	movl 16(%ecx),%edx
	movl %edx,(%eax)
	movl 20(%ecx),%edx
	movl %edx,4(%eax)
	testl %ebx,%ebx
	je .L55
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L55
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L55
	movl 20(%ebp),%eax
	movl 16(%ebx),%edx
	movl %edx,(%eax)
	movl 20(%ebx),%edx
	movl %edx,4(%eax)
	jmp .L57
	.align 16
.L55:
	xorl %eax,%eax
	jmp .L58
	.align 16
.L57:
	movl $1,%eax
.L58:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 AddressExpr__SplitPair,.Lfe6-AddressExpr__SplitPair
	.align 16
	.type	 AddressExpr__EqCheck,@function
AddressExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	testl %ecx,%ecx
	je .L63
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_AddressExpr+200
	jg .L63
	movl MM_AddressExpr+196,%eax
	cmpl %edx,4(%eax)
	jl .L63
	movl 16(%ecx),%eax
	cmpl %eax,16(%ebx)
	sete %dl
	movl 20(%ecx),%eax
	cmpl %eax,20(%ebx)
	sete %al
	andl %edx,%eax
	andl $1,%eax
	jmp .L66
	.align 16
.L63:
	xorl %eax,%eax
.L66:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 AddressExpr__EqCheck,.Lfe7-AddressExpr__EqCheck
	.align 16
	.type	 AddressExpr__Compile,@function
AddressExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	addl $16,%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testb %al,%al
	jne .L68
	pushl $2176
	call _m3_fault
	.align 16
.L68:
	movl MI_CG+416,%eax
	call *%eax
	movl -4(%ebp),%eax
	testl %eax,%eax
	je .L67
	sall $3,%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
.L67:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 AddressExpr__Compile,.Lfe8-AddressExpr__Compile
	.align 16
	.type	 AddressExpr__Bounder,@function
AddressExpr__Bounder:
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
.Lfe9:
	.size	 AddressExpr__Bounder,.Lfe9-AddressExpr__Bounder
	.align 16
	.type	 AddressExpr__IsZeroes,@function
AddressExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl 8(%ebp),%edx
	cmpl %edx,MI_Null+48
	je .L72
	pushl $MI_TInt+44
	leal 16(%edx),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L72:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 AddressExpr__IsZeroes,.Lfe10-AddressExpr__IsZeroes
	.align 16
	.type	 AddressExpr__GenFPLiteral,@function
AddressExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl $MM_AddressExpr+208
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
.Lfe11:
	.size	 AddressExpr__GenFPLiteral,.Lfe11-AddressExpr__GenFPLiteral
	.align 16
	.type	 AddressExpr__GenLiteral,@function
AddressExpr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	pushl $MI_TInt+44
	movl 8(%ebp),%ebx
	addl $16,%ebx
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L74
	movl MI_Target+96,%edx
	movl MI_Target+60,%eax
	cmpl %edx,%eax
	jle .L76
	movl %edx,%eax
.L76:
	testl %eax,%eax
	jge .L77
	pushl $2593
	call _m3_fault
	.align 16
.L77:
	pushl %ebx
	pushl %eax
	pushl %esi
	movl MI_CG+252,%eax
	call *%eax
.L74:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 AddressExpr__GenLiteral,.Lfe12-AddressExpr__GenLiteral
	.align 16
	.type	 M_AddressExpr_tefdf32b2_LINK,@function
M_AddressExpr_tefdf32b2_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AddressExpr+196,%eax
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
	movl MM_AddressExpr+156,%edx
	movl %edx,56(%eax)
	movl MI_ExprRep+520,%edx
	movl %edx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+524,%edx
	movl %edx,68(%eax)
	movl %edx,72(%eax)
	movl MI_ExprRep+480,%edx
	movl %edx,16(%eax)
	movl MM_AddressExpr+152,%edx
	movl %edx,12(%eax)
	movl MM_AddressExpr+160,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_AddressExpr+164,%edx
	movl %edx,32(%eax)
	movl MM_AddressExpr+168,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MM_AddressExpr+172,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe13:
	.size	 M_AddressExpr_tefdf32b2_LINK,.Lfe13-M_AddressExpr_tefdf32b2_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AddressExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_AddressExpr
.data
	.align 4
	.type	 MM_AddressExpr,@object
	.size	 MM_AddressExpr,656
MM_AddressExpr:
	.long MM_AddressExpr+472
	.long MM_AddressExpr+44
	.long MM_AddressExpr+196
	.zero	8
	.long MM_AddressExpr+324
	.zero	28
	.long -270585166
.byte 96
.byte 170
.byte 87
.byte 229
.byte 210
.byte 152
.byte 136
.byte 10
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AddressExpr+620
	.zero	4
	.long MM_AddressExpr+625
	.zero	4
	.long M_AddressExpr_tefdf32b2_LINK
	.long -350897909
	.zero	16
	.long MM_AddressExpr+639
	.zero	4
	.long AddressExpr__SplitPair
	.long AddressExpr__EqCheck
	.long AddressExpr__Compile
	.long AddressExpr__Bounder
	.long AddressExpr__IsZeroes
	.long AddressExpr__GenFPLiteral
	.long AddressExpr__GenLiteral
	.long AddressExpr__New
	.long AddressExpr__Split
	.long AddressExpr__Compare
	.long AddressExpr__Add
	.long AddressExpr__Subtract
	.zero	4
	.long -270585166
	.long 2
	.long MM_AddressExpr+216
	.long 6
	.ascii	"ADDR<"
	.zero	3
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"Bounder"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"SplitPair"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"Subtract"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	3
	.long AddressExpr__GenLiteral
	.long MM_AddressExpr+224
	.zero	4
	.long AddressExpr__GenFPLiteral
	.long MM_AddressExpr+235
	.zero	4
	.long AddressExpr__IsZeroes
	.long MM_AddressExpr+248
	.zero	4
	.long AddressExpr__Bounder
	.long MM_AddressExpr+257
	.zero	4
	.long AddressExpr__Compile
	.long MM_AddressExpr+265
	.zero	4
	.long AddressExpr__EqCheck
	.long MM_AddressExpr+273
	.zero	4
	.long AddressExpr__SplitPair
	.long MM_AddressExpr+281
	.zero	4
	.long AddressExpr__Compare
	.long MM_AddressExpr+291
	.long MI_AddressExpr+52
	.long AddressExpr__Subtract
	.long MM_AddressExpr+299
	.long MI_AddressExpr+60
	.long AddressExpr__Add
	.long MM_AddressExpr+308
	.long MI_AddressExpr+56
	.long AddressExpr__Split
	.long MM_AddressExpr+312
	.long MI_AddressExpr+48
	.long AddressExpr__New
	.long MM_AddressExpr+318
	.long MI_AddressExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/AddressExpr.m3"
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
	.ascii	"AddressExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
