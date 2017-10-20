	.file	"IntegerExpr.mc"
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
	.type	 IntegerExpr__New,@function
IntegerExpr__New:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L2
	movl -4(%ebp),%eax
	cmpl $-7,%eax
	jl .L2
	cmpl $64,%eax
	jg .L2
	addl $7,%eax
	cmpl $71,%eax
	jbe .L3
	pushl $721
	call _m3_fault
	.align 16
.L3:
	movl L_1(,%eax,4),%ebx
	testl %ebx,%ebx
	jne .L5
.L2:
	movl MM_IntegerExpr+216,%eax
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
	movl MI_Int+44,%eax
	movl %eax,8(%ebx)
	movb $1,12(%ebx)
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L5
	movl -4(%ebp),%eax
	cmpl $-7,%eax
	jl .L5
	cmpl $64,%eax
	jg .L5
	addl $7,%eax
	cmpl $71,%eax
	jbe .L6
	pushl $881
	call _m3_fault
	.align 16
.L6:
	movl %ebx,L_1(,%eax,4)
.L5:
	movl %ebx,%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IntegerExpr__New,.Lfe1-IntegerExpr__New
	.align 16
	.type	 IntegerExpr__EqCheck,@function
IntegerExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L12
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_IntegerExpr+220
	jg .L12
	movl MM_IntegerExpr+216,%eax
	cmpl %ecx,4(%eax)
	jl .L12
	leal 16(%edx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	addl $16,%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	jmp .L15
	.align 16
.L12:
	xorl %eax,%eax
.L15:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 IntegerExpr__EqCheck,.Lfe2-IntegerExpr__EqCheck
	.align 16
	.type	 IntegerExpr__Compile,@function
IntegerExpr__Compile:
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
	.size	 IntegerExpr__Compile,.Lfe3-IntegerExpr__Compile
	.align 16
	.type	 IntegerExpr__Bounder,@function
IntegerExpr__Bounder:
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
	.size	 IntegerExpr__Bounder,.Lfe4-IntegerExpr__Bounder
	.align 16
	.type	 IntegerExpr__Compare,@function
IntegerExpr__Compare:
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
	call IntegerExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L23
	pushl %esi
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L20
	movl $-1,(%edi)
	jmp .L21
	.align 16
.L20:
	pushl %ebx
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L22
	movl $1,(%edi)
	jmp .L21
	.align 16
.L22:
	movl %eax,(%edi)
.L21:
	movl $1,%eax
.L23:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 IntegerExpr__Compare,.Lfe5-IntegerExpr__Compare
	.align 16
	.type	 IntegerExpr__Add,@function
IntegerExpr__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal -16(%ebp),%edi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %edi
	leal -24(%ebp),%esi
	pushl %esi
	pushl %eax
	pushl %edx
	call IntegerExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L27
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L26
	pushl %ebx
	call IntegerExpr__New
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl $1,%eax
.L26:
.L27:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 IntegerExpr__Add,.Lfe6-IntegerExpr__Add
	.align 16
	.type	 IntegerExpr__Subtract,@function
IntegerExpr__Subtract:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal -16(%ebp),%edi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %edi
	leal -24(%ebp),%esi
	pushl %esi
	pushl %eax
	pushl %edx
	call IntegerExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L31
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L30
	pushl %ebx
	call IntegerExpr__New
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl $1,%eax
.L30:
.L31:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 IntegerExpr__Subtract,.Lfe7-IntegerExpr__Subtract
	.align 16
	.type	 IntegerExpr__Multiply,@function
IntegerExpr__Multiply:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal -16(%ebp),%edi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %edi
	leal -24(%ebp),%esi
	pushl %esi
	pushl %eax
	pushl %edx
	call IntegerExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L35
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TInt+88,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L34
	pushl %ebx
	call IntegerExpr__New
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl $1,%eax
.L34:
.L35:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 IntegerExpr__Multiply,.Lfe8-IntegerExpr__Multiply
	.align 16
	.type	 IntegerExpr__Div,@function
IntegerExpr__Div:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	leal -16(%ebp),%ebx
	pushl %ebx
	leal -24(%ebp),%edi
	pushl %edi
	pushl %eax
	pushl %edx
	call IntegerExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L40
	pushl $MI_TInt+44
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L38
	pushl $MM_IntegerExpr+228
	movl MI_Error+44,%eax
	call *%eax
	xorl %eax,%eax
	jmp .L40
	.align 16
.L38:
	leal -8(%ebp),%esi
	pushl %esi
	pushl %ebx
	pushl %edi
	movl MI_TInt+92,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L39
	pushl %esi
	call IntegerExpr__New
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl $1,%eax
.L39:
.L40:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 IntegerExpr__Div,.Lfe9-IntegerExpr__Div
	.align 16
	.type	 IntegerExpr__Mod,@function
IntegerExpr__Mod:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	leal -16(%ebp),%ebx
	pushl %ebx
	leal -24(%ebp),%edi
	pushl %edi
	pushl %eax
	pushl %edx
	call IntegerExpr__SplitPair
	addl $16,%esp
	testl %eax,%eax
	je .L45
	pushl $MI_TInt+44
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L43
	pushl $MM_IntegerExpr+260
	movl MI_Error+44,%eax
	call *%eax
	xorl %eax,%eax
	jmp .L45
	.align 16
.L43:
	leal -8(%ebp),%esi
	pushl %esi
	pushl %ebx
	pushl %edi
	movl MI_TInt+96,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L44
	pushl %esi
	call IntegerExpr__New
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl $1,%eax
.L44:
.L45:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 IntegerExpr__Mod,.Lfe10-IntegerExpr__Mod
	.align 16
	.type	 IntegerExpr__Negate,@function
IntegerExpr__Negate:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%esi
	testl %edx,%edx
	je .L50
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_IntegerExpr+220
	jg .L50
	movl MM_IntegerExpr+216,%eax
	cmpl %ecx,4(%eax)
	jl .L50
	leal -8(%ebp),%ebx
	pushl %ebx
	leal 16(%edx),%eax
	pushl %eax
	pushl $MI_TInt+44
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L54
	pushl %ebx
	call IntegerExpr__New
	movl %eax,(%esi)
	movl $1,%eax
	jmp .L54
	.align 16
.L50:
	xorl %eax,%eax
.L54:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 IntegerExpr__Negate,.Lfe11-IntegerExpr__Negate
	.align 16
	.type	 IntegerExpr__SplitPair,@function
IntegerExpr__SplitPair:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L65
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_IntegerExpr+220
	jg .L65
	movl MM_IntegerExpr+216,%eax
	cmpl %edx,4(%eax)
	jl .L65
	movl 16(%ebp),%eax
	movl 16(%ecx),%edx
	movl %edx,(%eax)
	movl 20(%ecx),%edx
	movl %edx,4(%eax)
	testl %ebx,%ebx
	je .L65
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_IntegerExpr+220
	jg .L65
	movl MM_IntegerExpr+216,%eax
	cmpl %edx,4(%eax)
	jl .L65
	movl 20(%ebp),%eax
	movl 16(%ebx),%edx
	movl %edx,(%eax)
	movl 20(%ebx),%edx
	movl %edx,4(%eax)
	movl $1,%eax
	jmp .L68
	.align 16
.L65:
	xorl %eax,%eax
.L68:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 IntegerExpr__SplitPair,.Lfe12-IntegerExpr__SplitPair
	.align 16
	.type	 IntegerExpr__Split,@function
IntegerExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L73
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_IntegerExpr+220
	jg .L73
	movl MM_IntegerExpr+216,%eax
	cmpl %edx,4(%eax)
	jl .L73
	movl 12(%ebp),%eax
	movl 16(%ecx),%edx
	movl %edx,(%eax)
	movl 20(%ecx),%edx
	movl %edx,4(%eax)
	movl $1,%eax
	jmp .L76
	.align 16
.L73:
	xorl %eax,%eax
.L76:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 IntegerExpr__Split,.Lfe13-IntegerExpr__Split
	.align 16
	.type	 IntegerExpr__IsZeroes,@function
IntegerExpr__IsZeroes:
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
.Lfe14:
	.size	 IntegerExpr__IsZeroes,.Lfe14-IntegerExpr__IsZeroes
	.align 16
	.type	 IntegerExpr__GenFPLiteral,@function
IntegerExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl $MM_IntegerExpr+292
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
.Lfe15:
	.size	 IntegerExpr__GenFPLiteral,.Lfe15-IntegerExpr__GenFPLiteral
	.align 16
	.type	 IntegerExpr__GenLiteral,@function
IntegerExpr__GenLiteral:
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
	jge .L80
	pushl $3137
	call _m3_fault
	.align 16
.L80:
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
.Lfe16:
	.size	 IntegerExpr__GenLiteral,.Lfe16-IntegerExpr__GenLiteral
	.align 16
	.type	 M_IntegerExpr_t497a5302_LINK,@function
M_IntegerExpr_t497a5302_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_IntegerExpr+216,%eax
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
	movl MM_IntegerExpr+156,%edx
	movl %edx,56(%eax)
	movl MI_ExprRep+520,%edx
	movl %edx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+524,%edx
	movl %edx,68(%eax)
	movl %edx,72(%eax)
	movl MI_ExprRep+480,%edx
	movl %edx,16(%eax)
	movl MM_IntegerExpr+152,%edx
	movl %edx,12(%eax)
	movl MM_IntegerExpr+160,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_IntegerExpr+168,%edx
	movl %edx,32(%eax)
	movl MM_IntegerExpr+172,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MM_IntegerExpr+176,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe17:
	.size	 M_IntegerExpr_t497a5302_LINK,.Lfe17-M_IntegerExpr_t497a5302_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_IntegerExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe18:
	.size	 _m3_fault,.Lfe18-_m3_fault
.globl MM_IntegerExpr
.data
	.align 4
	.type	 MM_IntegerExpr,@object
	.size	 MM_IntegerExpr,832
MM_IntegerExpr:
	.long MM_IntegerExpr+637
	.long MM_IntegerExpr+44
	.long MM_IntegerExpr+216
	.zero	8
	.long MM_IntegerExpr+432
	.zero	4
	.long MM_IntegerExpr+628
	.long MM_IntegerExpr+628
	.zero	16
	.long 1232753410
.byte 159
.byte 196
.byte 122
.byte 82
.byte 157
.byte 151
.byte 0
.byte 27
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_IntegerExpr+785
	.zero	4
	.long MM_IntegerExpr+790
	.zero	4
	.long M_IntegerExpr_t497a5302_LINK
	.long -350897909
	.zero	12
	.long MM_IntegerExpr+804
	.long MM_IntegerExpr+818
	.zero	4
	.long L_1
	.long IntegerExpr__EqCheck
	.long IntegerExpr__Compile
	.long IntegerExpr__Bounder
	.long IntegerExpr__SplitPair
	.long IntegerExpr__IsZeroes
	.long IntegerExpr__GenFPLiteral
	.long IntegerExpr__GenLiteral
	.long IntegerExpr__New
	.long IntegerExpr__Split
	.long IntegerExpr__Compare
	.long IntegerExpr__Add
	.long IntegerExpr__Subtract
	.long IntegerExpr__Multiply
	.long IntegerExpr__Div
	.long IntegerExpr__Mod
	.long IntegerExpr__Negate
	.zero	4
	.long 1232753410
	.long 2
	.long MM_IntegerExpr+236
	.long 20
	.ascii	"attempt to DIV by 0"
	.zero	1
	.long 2
	.long MM_IntegerExpr+268
	.long 20
	.ascii	"attempt to MOD by 0"
	.zero	1
	.long 2
	.long MM_IntegerExpr+300
	.long 5
	.ascii	"INT<"
	.zero	4
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"SplitPair"
	.zero	1
	.ascii	"Negate"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Div"
	.zero	1
	.ascii	"Multiply"
	.zero	1
	.ascii	"Subtract"
	.zero	1
	.ascii	"Add"
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
	.zero	3
	.long IntegerExpr__GenLiteral
	.long MM_IntegerExpr+308
	.zero	4
	.long IntegerExpr__GenFPLiteral
	.long MM_IntegerExpr+319
	.zero	4
	.long IntegerExpr__IsZeroes
	.long MM_IntegerExpr+332
	.zero	4
	.long IntegerExpr__Split
	.long MM_IntegerExpr+341
	.long MI_IntegerExpr+48
	.long IntegerExpr__SplitPair
	.long MM_IntegerExpr+347
	.zero	4
	.long IntegerExpr__Negate
	.long MM_IntegerExpr+357
	.long MI_IntegerExpr+76
	.long IntegerExpr__Mod
	.long MM_IntegerExpr+364
	.long MI_IntegerExpr+72
	.long IntegerExpr__Div
	.long MM_IntegerExpr+368
	.long MI_IntegerExpr+68
	.long IntegerExpr__Multiply
	.long MM_IntegerExpr+372
	.long MI_IntegerExpr+64
	.long IntegerExpr__Subtract
	.long MM_IntegerExpr+381
	.long MI_IntegerExpr+60
	.long IntegerExpr__Add
	.long MM_IntegerExpr+390
	.long MI_IntegerExpr+56
	.long IntegerExpr__Compare
	.long MM_IntegerExpr+394
	.long MI_IntegerExpr+52
	.long IntegerExpr__Bounder
	.long MM_IntegerExpr+402
	.zero	4
	.long IntegerExpr__Compile
	.long MM_IntegerExpr+410
	.zero	4
	.long IntegerExpr__EqCheck
	.long MM_IntegerExpr+418
	.zero	4
	.long IntegerExpr__New
	.long MM_IntegerExpr+426
	.long MI_IntegerExpr+44
	.zero	4
.byte 42
.byte 148
.byte 2
.byte 1
.byte 4
.byte 26
.byte 72
.byte 3
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/IntegerExpr.m3"
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
	.ascii	"IntegerExpr.T"
	.zero	1
	.ascii	"IntegerExpr.P"
	.zero	1
	.local	L_1
	.comm	L_1,288,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
