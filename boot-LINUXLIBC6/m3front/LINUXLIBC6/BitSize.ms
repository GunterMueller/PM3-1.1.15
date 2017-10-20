	.file	"BitSize.mc"
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
	.type	 BitSize__Check,@function
BitSize__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $MM_BitSize+88
	call BitSize__DoCheck
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 BitSize__Check,.Lfe1-BitSize__Check
	.align 16
	.type	 BitSize__Prep,@function
BitSize__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L3
	pushl $372
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $370
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	call BitSize__DoPrep
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 BitSize__Prep,.Lfe2-BitSize__Prep
	.align 16
	.type	 BitSize__Compile,@function
BitSize__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L6
	pushl $452
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $450
	call _m3_fault
	.align 16
.L7:
	pushl $1
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	call BitSize__DoCompile
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 BitSize__Compile,.Lfe3-BitSize__Compile
	.align 16
	.type	 BitSize__Fold,@function
BitSize__Fold:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L9
	pushl $532
	call _m3_fault
	.align 16
.L9:
	cmpl $0,4(%eax)
	jne .L10
	pushl $530
	call _m3_fault
	.align 16
.L10:
	pushl $1
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	call BitSize__DoFold
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 BitSize__Fold,.Lfe4-BitSize__Fold
	.align 16
	.type	 BitSize__DoCheck,@function
BitSize__DoCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L12
	pushl $596
	call _m3_fault
	.align 16
.L12:
	cmpl $0,4(%eax)
	jne .L13
	pushl $594
	call _m3_fault
	.align 16
.L13:
	movl (%eax),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L14
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,-24(%ebp)
	cmpb $10,-2(%ebp)
	jne .L16
	movl 16(%ebp),%eax
	incl 12(%eax)
	jmp .L16
	.align 16
.L14:
	leal -24(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_OpenArrayType+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L16
	pushl $MM_BitSize+108
	jmp .L19
	.align 16
.L17:
	pushl $MM_BitSize+160
.L19:
	pushl %esi
	movl MI_Error+60,%eax
	call *%eax
.L16:
	movl MI_Card+44,%eax
	leal -36(%ebp),%esp
	movl %eax,8(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 BitSize__DoCheck,.Lfe5-BitSize__DoCheck
	.align 16
	.type	 BitSize__DoPrep,@function
BitSize__DoPrep:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	leal -24(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L20
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,-24(%ebp)
	addl $12,%esp
	cmpb $10,-2(%ebp)
	jne .L20
	pushl %ebx
	movl MI_Expr+200,%eax
	call *%eax
.L20:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 BitSize__DoPrep,.Lfe6-BitSize__DoPrep
	.align 16
	.type	 BitSize__DoCompile,@function
BitSize__DoCompile:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
.L24:
	movl $5,-28(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-32(%ebp)
	leal -32(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-24(%ebp)
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl %eax,-36(%ebp)
	addl $8,%esp
	testl %eax,%eax
	je .L25
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
.L34:
	movl -20(%ebp),%eax
	addl %edi,%eax
	decl %eax
	pushl %eax
	pushl %edi
	call m3_div
	pushl %eax
	movl MI_CG+424,%eax
	call *%eax
	jmp .L33
	.align 16
.L25:
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,-24(%ebp)
	addl $12,%esp
	cmpb $10,-2(%ebp)
	jne .L34
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%ebx
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_OpenArrayType+64,%eax
	call *%eax
	movl -36(%ebp),%esi
	decl %eax
	movl %eax,-40(%ebp)
	addl $8,%esp
	jmp .L27
	.align 16
.L28:
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	pushl %esi
	movl MI_CG+772,%eax
	call *%eax
	addl $8,%esp
	testl %esi,%esi
	je .L29
	pushl $2
	movl MI_CG+468,%eax
	call *%eax
	addl $4,%esp
.L29:
	incl %esi
.L27:
	cmpl %esi,-40(%ebp)
	jge .L28
	pushl %ebx
	movl MI_CG+232,%eax
	call *%eax
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_OpenArrayType+56,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	pushl %edi
	call m3_mod
	addl $16,%esp
	testl %eax,%eax
	jne .L31
	pushl %ebx
	pushl %edi
	call m3_div
	pushl %eax
	movl MI_CG+424,%eax
	call *%eax
	pushl $2
	movl MI_CG+468,%eax
	call *%eax
	jmp .L33
	.align 16
.L31:
	pushl %ebx
	movl MI_CG+424,%eax
	call *%eax
	pushl $2
	movl MI_CG+468,%eax
	call *%eax
	leal -1(%edi),%eax
	pushl %eax
	movl MI_CG+424,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	pushl %edi
	movl MI_CG+424,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $2
	movl MI_CG+512,%eax
	call *%eax
.L33:
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 BitSize__DoCompile,.Lfe7-BitSize__DoCompile
	.align 16
	.type	 BitSize__DoFold,@function
BitSize__DoFold:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	leal -64(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-64(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	pushl %esi
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L36
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,-64(%ebp)
	addl $12,%esp
	cmpb $10,-2(%ebp)
	je .L38
.L36:
	leal -20(%ebp),%eax
	pushl %eax
	movl -64(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,-64(%ebp)
	leal -60(%ebp),%ecx
	movl %ecx,-68(%ebp)
	pushl %ecx
	movl -20(%ebp),%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	je .L38
	leal -52(%ebp),%edi
	pushl %edi
	movl 12(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L38
	leal -44(%ebp),%ebx
	pushl %ebx
	movl 12(%ebp),%eax
	decl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L38
	leal -36(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl -68(%ebp),%ecx
	pushl %ecx
	movl MI_TInt+80,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L38
	leal -28(%ebp),%ebx
	pushl %ebx
	pushl %edi
	pushl %esi
	movl MI_TInt+92,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L38
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L39
	.align 16
.L38:
	xorl %eax,%eax
.L39:
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 BitSize__DoFold,.Lfe8-BitSize__DoFold
	.align 16
	.type	 BitSize__Initialize,@function
BitSize__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_BitSize+60,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_BitSize+56,%eax
	pushl %eax
	movl MM_BitSize+52,%eax
	pushl %eax
	movl MM_BitSize+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Card+44,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_BitSize+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_BitSize+88
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 BitSize__Initialize,.Lfe9-BitSize__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_BitSize
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_BitSize
.data
	.align 4
	.type	 MM_BitSize,@object
	.size	 MM_BitSize,544
MM_BitSize:
	.long MM_BitSize+392
	.zero	16
	.long MM_BitSize+276
	.zero	4
	.long MM_BitSize+388
	.long MM_BitSize+388
	.zero	12
	.long BitSize__Check
	.long BitSize__Prep
	.long BitSize__Compile
	.long BitSize__Fold
	.long BitSize__Initialize
	.long BitSize__DoCheck
	.long BitSize__DoPrep
	.long BitSize__DoCompile
	.long BitSize__DoFold
	.long 2
	.long MM_BitSize+96
	.long 8
	.ascii	"BITSIZE"
	.zero	1
	.long 2
	.long MM_BitSize+116
	.long 38
	.ascii	"argument cannot be an open array type"
	.zero	3
	.long 2
	.long MM_BitSize+168
	.long 38
	.ascii	"argument must be a designator or type"
	.zero	3
	.ascii	"Initialize"
	.zero	1
	.ascii	"DoFold"
	.zero	1
	.ascii	"DoCompile"
	.zero	1
	.ascii	"DoPrep"
	.zero	1
	.ascii	"DoCheck"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	2
	.long BitSize__Initialize
	.long MM_BitSize+208
	.long MI_BitSize+44
	.long BitSize__DoFold
	.long MM_BitSize+219
	.long MI_BitSize+60
	.long BitSize__DoCompile
	.long MM_BitSize+226
	.long MI_BitSize+56
	.long BitSize__DoPrep
	.long MM_BitSize+236
	.long MI_BitSize+52
	.long BitSize__DoCheck
	.long MM_BitSize+243
	.long MI_BitSize+48
	.long BitSize__Fold
	.long MM_BitSize+251
	.zero	4
	.long BitSize__Compile
	.long MM_BitSize+256
	.zero	4
	.long BitSize__Prep
	.long MM_BitSize+264
	.zero	4
	.long BitSize__Check
	.long MM_BitSize+269
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/BitSize.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
