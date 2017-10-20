	.file	"TextExpr.mc"
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
	.type	 TextExpr__Reset,@function
TextExpr__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_TextExpr+148
	movl $0,MM_TextExpr+156
	movl MM_TextExpr+152,%eax
	testl %eax,%eax
	je .L1
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L4
	.align 16
.L5:
	movl MM_TextExpr+152,%eax
	testl %eax,%eax
	jne .L6
	pushl $836
	call _m3_fault
	.align 16
.L6:
	cmpl %edx,4(%eax)
	ja .L7
	pushl $834
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl $0,(%eax,%edx,4)
	incl %edx
.L4:
	cmpl %ecx,%edx
	jle .L5
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TextExpr__Reset,.Lfe1-TextExpr__Reset
	.align 16
	.type	 TextExpr__New,@function
TextExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_TextExpr+208,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,16(%esi)
	movl MI_Textt+44,%eax
	movl %eax,8(%esi)
	movb $1,12(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TextExpr__New,.Lfe2-TextExpr__New
	.align 16
	.type	 TextExpr__EqCheck,@function
TextExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L14
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_TextExpr+212
	jg .L14
	movl MM_TextExpr+208,%eax
	cmpl %ecx,4(%eax)
	jl .L14
	movl 16(%edx),%eax
	cmpl %eax,16(%ebx)
	sete %al
	andl $255,%eax
	jmp .L17
	.align 16
.L14:
	xorl %eax,%eax
.L17:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TextExpr__EqCheck,.Lfe3-TextExpr__EqCheck
	.align 16
	.type	 TextExpr__SetUID,@function
TextExpr__SetUID:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_Target+68,%edx
	movl %edx,-12(%ebp)
	addl %edx,%edx
	movl %edx,-8(%ebp)
	movl %edx,%ebx
	movl 8(%ebp),%edx
	addl MI_Target+104,%ebx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_M3String+72,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	testl %edi,%edi
	jge .L19
	movl MM_TextExpr+148,%edi
	leal 1(%edi),%edx
	movl %edx,MM_TextExpr+148
	pushl %edi
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_M3String+76,%eax
	call *%eax
	addl $8,%esp
.L19:
	movl MM_TextExpr+152,%eax
	testl %eax,%eax
	je .L20
	movl 4(%eax),%eax
	decl %eax
	cmpl %edi,%eax
	jge .L22
.L20:
	call TextExpr__ExpandLiterals
.L22:
	movl MM_TextExpr+152,%eax
	testl %eax,%eax
	jne .L23
	pushl $1524
	call _m3_fault
	.align 16
.L23:
	cmpl %edi,4(%eax)
	ja .L24
	pushl $1522
	call _m3_fault
	.align 16
.L24:
	movl (%eax),%eax
	movl (%eax,%edi,4),%esi
	testl %esi,%esi
	jne .L30
	cmpl $0,MM_TextExpr+156
	jne .L26
	pushl %esi
	movl MI_Module+112,%eax
	call *%eax
	movl %eax,MM_TextExpr+156
	addl $4,%esp
.L26:
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_M3String+68,%eax
	call *%eax
	incl %eax
	movl %eax,-4(%ebp)
	pushl %esi
	pushl $MM_TextExpr+220
	movl MI_Target+64,%eax
	pushl %eax
	movl -4(%ebp),%eax
	imull MI_Target+600,%eax
	addl %ebx,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,%esi
	movl MM_TextExpr+152,%eax
	addl $20,%esp
	testl %eax,%eax
	jne .L27
	pushl $1716
	call _m3_fault
	.align 16
.L27:
	cmpl %edi,4(%eax)
	ja .L28
	pushl $1714
	call _m3_fault
	.align 16
.L28:
	movl (%eax),%eax
	movl %esi,(%eax,%edi,4)
	pushl $1
	movl %esi,%eax
	pushl $20
	incl %eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl %esi,%ebx
	pushl %ebx
	movl MM_TextExpr+156,%eax
	pushl %eax
	movl -12(%ebp),%edx
	leal (%edx,%esi),%eax
	pushl %eax
	movl MI_CG+268,%eax
	call *%eax
	movl -4(%ebp),%edx
	pushl %edx
	movl MI_Target+96,%eax
	pushl %eax
	movl -8(%ebp),%edx
	leal (%edx,%esi),%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $36,%esp
	movl 16(%edx),%eax
	pushl %eax
	pushl %ebx
	movl MI_M3String+64,%eax
	call *%eax
.L30:
	movl %edi,%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TextExpr__SetUID,.Lfe4-TextExpr__SetUID
	.align 16
	.type	 TextExpr__ExpandLiterals,@function
TextExpr__ExpandLiterals:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_TextExpr+152,%edx
	testl %edx,%edx
	jne .L32
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $200,-4(%ebp)
	pushl %eax
	movl MM_TextExpr+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L33
	.align 16
.L32:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 4(%edx),%edx
	addl %edx,%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_TextExpr+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L35
	pushl $2020
	call _m3_fault
	.align 16
.L35:
	movl MM_TextExpr+152,%ecx
	testl %ecx,%ecx
	jne .L36
	pushl $2020
	call _m3_fault
	.align 16
.L36:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L37
	pushl $2017
	call _m3_fault
	.align 16
.L37:
	movl (%ebx),%esi
	movl %esi,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L39
	pushl $2019
	call _m3_fault
	.align 16
.L39:
	leal 0(,%edx,4),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	pushl %esi
	call memmove
.L33:
	leal -32(%ebp),%esp
	movl %ebx,MM_TextExpr+152
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TextExpr__ExpandLiterals,.Lfe5-TextExpr__ExpandLiterals
	.align 16
	.type	 TextExpr__Compile,@function
TextExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call TextExpr__SetUID
	movl %eax,%ecx
	movl MM_TextExpr+152,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L41
	pushl $2148
	call _m3_fault
	.align 16
.L41:
	cmpl %eax,4(%edx)
	ja .L42
	pushl $2146
	call _m3_fault
	.align 16
.L42:
	movl MI_Target+64,%eax
	pushl %eax
	movl (%edx),%edx
	movl MI_Target+68,%eax
	addl (%edx,%ecx,4),%eax
	pushl %eax
	movl MM_TextExpr+156,%eax
	pushl %eax
	movl MI_CG+368,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TextExpr__Compile,.Lfe6-TextExpr__Compile
	.align 16
	.type	 TextExpr__Split,@function
TextExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	testl %edx,%edx
	je .L47
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_TextExpr+212
	jg .L47
	movl MM_TextExpr+208,%eax
	cmpl %ecx,4(%eax)
	jl .L47
	movl 16(%edx),%eax
	movl %eax,(%ebx)
	movl $1,%eax
	jmp .L50
	.align 16
.L47:
	xorl %eax,%eax
.L50:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TextExpr__Split,.Lfe7-TextExpr__Split
	.align 16
	.type	 TextExpr__Cat,@function
TextExpr__Cat:
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
	je .L61
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_TextExpr+212
	jg .L61
	movl MM_TextExpr+208,%eax
	cmpl %edx,4(%eax)
	jl .L61
	movl 16(%esi),%ecx
	testl %ebx,%ebx
	je .L61
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_TextExpr+212
	jg .L61
	movl MM_TextExpr+208,%eax
	cmpl %edx,4(%eax)
	jl .L61
	movl 16(%ebx),%eax
	jmp .L63
	.align 16
.L61:
	xorl %eax,%eax
	jmp .L64
	.align 16
.L63:
	pushl %eax
	pushl %ecx
	movl MI_M3String+52,%eax
	call *%eax
	pushl %eax
	call TextExpr__New
	movl %eax,(%edi)
	movl $1,%eax
.L64:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TextExpr__Cat,.Lfe8-TextExpr__Cat
	.align 16
	.type	 TextExpr__IsZeroes,@function
TextExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TextExpr__IsZeroes,.Lfe9-TextExpr__IsZeroes
	.align 16
	.type	 TextExpr__GenFPLiteral,@function
TextExpr__GenFPLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl $MM_TextExpr+256
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_M3String+68,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	movl MI_M3Buf+56,%eax
	call *%eax
	pushl $44
	pushl %ebx
	movl MI_M3Buf+48,%eax
	call *%eax
	movl 16(%esi),%eax
	pushl %eax
	pushl %ebx
	movl MI_M3String+60,%eax
	call *%eax
	addl $36,%esp
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
.Lfe10:
	.size	 TextExpr__GenFPLiteral,.Lfe10-TextExpr__GenFPLiteral
	.align 16
	.type	 TextExpr__PrepLiteral,@function
TextExpr__PrepLiteral:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call TextExpr__SetUID
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 TextExpr__PrepLiteral,.Lfe11-TextExpr__PrepLiteral
	.align 16
	.type	 TextExpr__GenLiteral,@function
TextExpr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl %eax
	call TextExpr__SetUID
	movl %eax,%ecx
	movl MM_TextExpr+152,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L69
	pushl $2980
	call _m3_fault
	.align 16
.L69:
	cmpl %eax,4(%edx)
	ja .L70
	pushl $2978
	call _m3_fault
	.align 16
.L70:
	movl (%edx),%edx
	movl MI_Target+68,%eax
	addl (%edx,%ecx,4),%eax
	pushl %eax
	movl MM_TextExpr+156,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+268,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 TextExpr__GenLiteral,.Lfe12-TextExpr__GenLiteral
	.align 16
	.type	 M_TextExpr_tf5042a4f_LINK,@function
M_TextExpr_tf5042a4f_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_TextExpr+208,%eax
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
	movl MM_TextExpr+172,%edx
	movl %edx,56(%eax)
	movl MI_ExprRep+520,%edx
	movl %edx,60(%eax)
	movl %edx,64(%eax)
	movl MI_ExprRep+524,%edx
	movl %edx,68(%eax)
	movl %edx,72(%eax)
	movl MI_ExprRep+480,%edx
	movl %edx,16(%eax)
	movl MM_TextExpr+160,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MM_TextExpr+176,%edx
	movl %edx,32(%eax)
	movl MM_TextExpr+180,%edx
	movl %edx,40(%eax)
	movl MM_TextExpr+184,%edx
	movl %edx,44(%eax)
	movl MM_TextExpr+188,%edx
	movl %edx,48(%eax)
	movl MI_ExprRep+536,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe13:
	.size	 M_TextExpr_tf5042a4f_LINK,.Lfe13-M_TextExpr_tf5042a4f_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_TextExpr
.data
	.align 4
	.type	 MM_TextExpr,@object
	.size	 MM_TextExpr,700
MM_TextExpr:
	.long MM_TextExpr+529
	.long MM_TextExpr+44
	.long MM_TextExpr+208
	.zero	8
	.long MM_TextExpr+376
	.zero	4
	.long MM_TextExpr+524
	.long MM_TextExpr+524
	.zero	16
	.long -184276401
.byte 137
.byte 171
.byte 202
.byte 225
.byte 198
.byte 129
.byte 206
.byte 20
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_TextExpr+674
	.long MM_TextExpr+676
	.long MM_TextExpr+678
	.zero	4
	.long M_TextExpr_tf5042a4f_LINK
	.long -350897909
	.zero	16
	.long MM_TextExpr+686
	.zero	16
	.long TextExpr__EqCheck
	.long TextExpr__SetUID
	.long TextExpr__ExpandLiterals
	.long TextExpr__Compile
	.long TextExpr__IsZeroes
	.long TextExpr__GenFPLiteral
	.long TextExpr__PrepLiteral
	.long TextExpr__GenLiteral
	.long TextExpr__New
	.long TextExpr__Cat
	.long TextExpr__Split
	.long TextExpr__Reset
	.long MM_TextExpr+244
	.long -184276401
	.long 2
	.long MM_TextExpr+228
	.long 15
	.ascii	"*TEXT literal*"
	.zero	6
	.long 562018850
	.long 2
	.long MM_TextExpr+264
	.long 6
	.ascii	"TEXT<"
	.zero	3
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"PrepLiteral"
	.zero	1
	.ascii	"GenFPLiteral"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"Cat"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"ExpandLiterals"
	.zero	1
	.ascii	"SetUID"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Reset"
	.zero	2
	.long TextExpr__GenLiteral
	.long MM_TextExpr+272
	.zero	4
	.long TextExpr__PrepLiteral
	.long MM_TextExpr+283
	.zero	4
	.long TextExpr__GenFPLiteral
	.long MM_TextExpr+295
	.zero	4
	.long TextExpr__IsZeroes
	.long MM_TextExpr+308
	.zero	4
	.long TextExpr__Cat
	.long MM_TextExpr+317
	.long MI_TextExpr+48
	.long TextExpr__Split
	.long MM_TextExpr+321
	.long MI_TextExpr+52
	.long TextExpr__Compile
	.long MM_TextExpr+327
	.zero	4
	.long TextExpr__ExpandLiterals
	.long MM_TextExpr+335
	.zero	4
	.long TextExpr__SetUID
	.long MM_TextExpr+350
	.zero	4
	.long TextExpr__EqCheck
	.long MM_TextExpr+357
	.zero	4
	.long TextExpr__New
	.long MM_TextExpr+365
	.long MI_TextExpr+44
	.long TextExpr__Reset
	.long MM_TextExpr+369
	.long MI_TextExpr+56
	.zero	4
.byte 42
.byte 152
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/TextExpr.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 73
.byte 155
.byte 79
.byte 129
	.ascii	"TextExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
