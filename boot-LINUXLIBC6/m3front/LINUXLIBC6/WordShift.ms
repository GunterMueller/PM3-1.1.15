	.file	"WordShift.mc"
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
	.type	 WordShift__Check,@function
WordShift__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordShift+56,%eax
	pushl %eax
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Formal+64,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WordShift__Check,.Lfe1-WordShift__Check
	.align 16
	.type	 WordShift__CheckL,@function
WordShift__CheckL:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordShift+60,%eax
	pushl %eax
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Formal+64,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WordShift__CheckL,.Lfe2-WordShift__CheckL
	.align 16
	.type	 WordShift__CheckR,@function
WordShift__CheckR:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MM_WordShift+64,%eax
	pushl %eax
	leal 20(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Formal+64,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WordShift__CheckR,.Lfe3-WordShift__CheckR
	.align 16
	.type	 WordShift__Compile,@function
WordShift__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L5
	pushl $596
	call _m3_fault
	.align 16
.L5:
	cmpl $0,4(%eax)
	jne .L6
	pushl $594
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L7
	pushl $612
	call _m3_fault
	.align 16
.L7:
	cmpl $1,4(%eax)
	ja .L8
	pushl $610
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+588,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WordShift__Compile,.Lfe4-WordShift__Compile
	.align 16
	.type	 WordShift__CompileL,@function
WordShift__CompileL:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	leal -8(%ebp),%ebx
	pushl %ebx
	movl MI_Target+96,%eax
	decl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testb %al,%al
	jne .L10
	pushl $720
	call _m3_fault
	.align 16
.L10:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L11
	pushl $740
	call _m3_fault
	.align 16
.L11:
	cmpl $0,4(%eax)
	jne .L12
	pushl $738
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L13
	pushl $756
	call _m3_fault
	.align 16
.L13:
	cmpl $1,4(%eax)
	ja .L14
	pushl $754
	call _m3_fault
	.align 16
.L14:
	pushl %ebx
	pushl $MI_TInt+44
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_CheckExpr+56,%eax
	call *%eax
	movl MI_CG+592,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 WordShift__CompileL,.Lfe5-WordShift__CompileL
	.align 16
	.type	 WordShift__CompileR,@function
WordShift__CompileR:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	leal -8(%ebp),%ebx
	pushl %ebx
	movl MI_Target+96,%eax
	decl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testb %al,%al
	jne .L16
	pushl $864
	call _m3_fault
	.align 16
.L16:
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L17
	pushl $884
	call _m3_fault
	.align 16
.L17:
	cmpl $0,4(%eax)
	jne .L18
	pushl $882
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L19
	pushl $900
	call _m3_fault
	.align 16
.L19:
	cmpl $1,4(%eax)
	ja .L20
	pushl $898
	call _m3_fault
	.align 16
.L20:
	pushl %ebx
	pushl $MI_TInt+44
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_CheckExpr+56,%eax
	call *%eax
	movl MI_CG+596,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 WordShift__CompileR,.Lfe6-WordShift__CompileR
	.align 16
	.type	 WordShift__Fold,@function
WordShift__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L22
	pushl $1012
	call _m3_fault
	.align 16
.L22:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L23
	pushl $1010
	call _m3_fault
	.align 16
.L23:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%edi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L24
	pushl $1028
	call _m3_fault
	.align 16
.L24:
	cmpl $1,4(%eax)
	ja .L25
	pushl $1026
	call _m3_fault
	.align 16
.L25:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %esi,%esi
	je .L26
	leal -24(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L26
	testl %ebx,%ebx
	je .L26
	leal -16(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L26
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_TWord+96,%eax
	call *%eax
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L27
	.align 16
.L26:
	xorl %eax,%eax
.L27:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 WordShift__Fold,.Lfe7-WordShift__Fold
	.align 16
	.type	 WordShift__FoldL,@function
WordShift__FoldL:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L29
	pushl $1252
	call _m3_fault
	.align 16
.L29:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L30
	pushl $1250
	call _m3_fault
	.align 16
.L30:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%edi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L31
	pushl $1268
	call _m3_fault
	.align 16
.L31:
	cmpl $1,4(%eax)
	ja .L32
	pushl $1266
	call _m3_fault
	.align 16
.L32:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %esi,%esi
	je .L33
	leal -32(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L33
	testl %ebx,%ebx
	je .L33
	leal -24(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L33
	pushl %esi
	pushl $MI_TInt+44
	movl MI_TInt+108,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L33
	leal -16(%ebp),%ebx
	pushl %ebx
	movl MI_Target+96,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L33
	pushl %ebx
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L33
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl MI_TWord+96,%eax
	call *%eax
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L34
	.align 16
.L33:
	xorl %eax,%eax
.L34:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 WordShift__FoldL,.Lfe8-WordShift__FoldL
	.align 16
	.type	 WordShift__FoldR,@function
WordShift__FoldR:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L36
	pushl $1540
	call _m3_fault
	.align 16
.L36:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L37
	pushl $1538
	call _m3_fault
	.align 16
.L37:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl 20(%edi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L38
	pushl $1556
	call _m3_fault
	.align 16
.L38:
	cmpl $1,4(%eax)
	ja .L39
	pushl $1554
	call _m3_fault
	.align 16
.L39:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %esi,%esi
	je .L40
	leal -40(%ebp),%edx
	movl %edx,-44(%ebp)
	pushl %edx
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L40
	testl %ebx,%ebx
	je .L40
	leal -32(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L40
	pushl %esi
	pushl $MI_TInt+44
	movl MI_TInt+108,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L40
	leal -24(%ebp),%ebx
	pushl %ebx
	movl MI_Target+96,%eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L40
	pushl %ebx
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L40
	leal -16(%ebp),%edi
	pushl %edi
	pushl %esi
	pushl $MI_TInt+44
	movl MI_TInt+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L40
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl -44(%ebp),%edx
	pushl %edx
	movl MI_TWord+96,%eax
	call *%eax
	pushl %ebx
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L41
	.align 16
.L40:
	xorl %eax,%eax
.L41:
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 WordShift__FoldR,.Lfe9-WordShift__FoldR
	.align 16
	.type	 WordShift__Initialize,@function
WordShift__Initialize:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	leal -8(%ebp),%ebx
	pushl %ebx
	movl MI_Target+96,%eax
	decl %eax
	pushl %eax
	movl MI_TInt+68,%eax
	call *%eax
	movb %al,-20(%ebp)
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl %ebx
	pushl $MI_TInt+44
	movl MI_SubrangeType+48,%eax
	call *%eax
	movl %eax,-16(%ebp)
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	movl $MM_WordShift+112,%esi
	pushl %esi
	movl MI_Formal+48,%eax
	call *%eax
	movl %eax,%edi
	addl $36,%esp
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	movl $MM_WordShift+128,%ebx
	pushl %ebx
	movl MI_Formal+48,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl %edi
	movl MI_Int+44,%eax
	pushl %eax
	movl MI_ProcType+96,%eax
	call *%eax
	movl %eax,-12(%ebp)
	addl $32,%esp
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl %esi
	movl MI_Formal+48,%eax
	call *%eax
	movl -16(%ebp),%edx
	pushl %edx
	pushl $1
	movl %eax,%edi
	pushl %ebx
	movl MI_Formal+48,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl %edi
	movl MI_Int+44,%eax
	pushl %eax
	movl MI_ProcType+96,%eax
	call *%eax
	movl %eax,%edi
	addl $44,%esp
	movl MI_Int+44,%eax
	pushl %eax
	pushl $0
	pushl %esi
	movl MI_Formal+48,%eax
	call *%eax
	movl -16(%ebp),%edx
	pushl %edx
	pushl $1
	movl %eax,%esi
	pushl %ebx
	movl MI_Formal+48,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl %esi
	movl MI_Int+44,%eax
	pushl %eax
	movl MI_ProcType+96,%eax
	call *%eax
	movl %eax,%ebx
	addl $44,%esp
	cmpb $0,-20(%ebp)
	jne .L43
	pushl $2080
	call _m3_fault
	.align 16
.L43:
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_WordShift+92,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordShift+80,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordShift+68,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $1
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	movl %eax,MM_WordShift+44
	addl $76,%esp
	movl -12(%ebp),%edx
	pushl %edx
	pushl $0
	pushl %eax
	pushl $MM_WordShift+144
	movl MI_Procedure+64,%eax
	call *%eax
	movl -12(%ebp),%edx
	pushl %edx
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordShift+56
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_WordShift+96,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordShift+84,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordShift+72,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $1
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $96,%esp
	movl %eax,MM_WordShift+48
	pushl %edi
	pushl $0
	pushl %eax
	pushl $MM_WordShift+164
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %edi
	movl MI_ProcType+64,%eax
	call *%eax
	movl %eax,MM_WordShift+60
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_WordShift+100,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_WordShift+88,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_WordShift+76,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $1
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $96,%esp
	movl %eax,MM_WordShift+52
	pushl %ebx
	pushl $0
	pushl %eax
	pushl $MM_WordShift+188
	movl MI_Procedure+64,%eax
	call *%eax
	pushl %ebx
	movl MI_ProcType+64,%eax
	call *%eax
	leal -32(%ebp),%esp
	movl %eax,MM_WordShift+64
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 WordShift__Initialize,.Lfe10-WordShift__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WordShift
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_WordShift
.data
	.align 4
	.type	 MM_WordShift,@object
	.size	 MM_WordShift,572
MM_WordShift:
	.long MM_WordShift+417
	.zero	16
	.long MM_WordShift+284
	.zero	4
	.long MM_WordShift+408
	.long MM_WordShift+408
	.zero	32
	.long WordShift__Check
	.long WordShift__CheckL
	.long WordShift__CheckR
	.long WordShift__Compile
	.long WordShift__CompileL
	.long WordShift__CompileR
	.long WordShift__Fold
	.long WordShift__FoldL
	.long WordShift__FoldR
	.long WordShift__Initialize
	.long 2
	.long MM_WordShift+120
	.long 2
	.ascii	"x"
	.zero	3
	.long 2
	.long MM_WordShift+136
	.long 2
	.ascii	"n"
	.zero	3
	.long 2
	.long MM_WordShift+152
	.long 6
	.ascii	"Shift"
	.zero	3
	.long 2
	.long MM_WordShift+172
	.long 10
	.ascii	"LeftShift"
	.zero	3
	.long 2
	.long MM_WordShift+196
	.long 11
	.ascii	"RightShift"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"FoldR"
	.zero	1
	.ascii	"FoldL"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"CompileR"
	.zero	1
	.ascii	"CompileL"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"CheckR"
	.zero	1
	.ascii	"CheckL"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long WordShift__Initialize
	.long MM_WordShift+208
	.long MI_WordShift+44
	.long WordShift__FoldR
	.long MM_WordShift+219
	.zero	4
	.long WordShift__FoldL
	.long MM_WordShift+225
	.zero	4
	.long WordShift__Fold
	.long MM_WordShift+231
	.zero	4
	.long WordShift__CompileR
	.long MM_WordShift+236
	.zero	4
	.long WordShift__CompileL
	.long MM_WordShift+245
	.zero	4
	.long WordShift__Compile
	.long MM_WordShift+254
	.zero	4
	.long WordShift__CheckR
	.long MM_WordShift+262
	.zero	4
	.long WordShift__CheckL
	.long MM_WordShift+269
	.zero	4
	.long WordShift__Check
	.long MM_WordShift+276
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinWord/WordShift.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"