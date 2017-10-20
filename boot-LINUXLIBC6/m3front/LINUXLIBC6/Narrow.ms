	.file	"Narrow.mc"
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
	.type	 Narrow__TypeOf,@function
Narrow__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L3
	pushl $306
	call _m3_fault
	.align 16
.L3:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L4
	movl -4(%ebp),%eax
	jmp .L7
	.align 16
.L4:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L5
	pushl $340
	call _m3_fault
	.align 16
.L5:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L6
	pushl $338
	call _m3_fault
	.align 16
.L6:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
.L7:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Narrow__TypeOf,.Lfe1-Narrow__TypeOf
	.align 16
	.type	 Narrow__Check,@function
Narrow__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-4(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L9
	pushl $420
	call _m3_fault
	.align 16
.L9:
	cmpl $0,4(%eax)
	jne .L10
	pushl $418
	call _m3_fault
	.align 16
.L10:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	pushl $452
	call _m3_fault
	.align 16
.L11:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L12
	pushl $450
	call _m3_fault
	.align 16
.L12:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_Narrow+88
	movl MI_Error+44,%eax
	call *%eax
	movl %ebx,-4(%ebp)
	addl $4,%esp
.L13:
	pushl %ebx
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L14
	pushl $MM_Narrow+140
	jmp .L18
	.align 16
.L14:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L15
	movl MI_Reff+44,%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L15
	pushl $MM_Narrow+188
.L18:
	movl MI_Error+44,%eax
	call *%eax
.L15:
	movl -4(%ebp),%eax
	leal -12(%ebp),%esp
	movl %eax,8(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Narrow__Check,.Lfe2-Narrow__Check
	.align 16
	.type	 Narrow__Prep,@function
Narrow__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L20
	pushl $756
	call _m3_fault
	.align 16
.L20:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L21
	pushl $754
	call _m3_fault
	.align 16
.L21:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L22
	pushl $788
	call _m3_fault
	.align 16
.L22:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L23
	pushl $786
	call _m3_fault
	.align 16
.L23:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L24
	pushl $804
	call _m3_fault
	.align 16
.L24:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L25
	pushl $802
	call _m3_fault
	.align 16
.L25:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L26
	pushl $820
	call _m3_fault
	.align 16
.L26:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L27
	pushl $818
	call _m3_fault
	.align 16
.L27:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	call Narrow__EmitCore
	movl %eax,24(%ebx)
	addl $12,%esp
	testl %eax,%eax
	jne .L19
	movl MI_CG+224,%eax
	call *%eax
	movl %eax,24(%ebx)
.L19:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Narrow__Prep,.Lfe3-Narrow__Prep
	.align 16
	.type	 Narrow__Compile,@function
Narrow__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+232,%eax
	call *%eax
	movl $0,24(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Narrow__Compile,.Lfe4-Narrow__Compile
	.align 16
	.type	 Narrow__Emit,@function
Narrow__Emit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call Narrow__EmitCore
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L30
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+232,%eax
	call *%eax
.L30:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Narrow__Emit,.Lfe5-Narrow__Emit
	.align 16
	.type	 Narrow__EmitCore,@function
Narrow__EmitCore:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl %esi,-44(%ebp)
	movl %esi,-40(%ebp)
	movl %esi,-36(%ebp)
	movl %esi,-32(%ebp)
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_ObjectType+52,%eax
	call *%eax
	movl %eax,%edi
	leal -40(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Type+68,%eax
	movl %edi,%ebx
	call *%eax
	movl %eax,8(%ebp)
	addl $12,%esp
	testb %bl,%bl
	je .L33
	pushl %eax
	movl MI_ObjectType+72,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jge .L37
	pushl $1409
	call _m3_fault
	.align 16
.L33:
	leal -44(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_RefType+64,%eax
	call *%eax
	movl %eax,%edi
	addl $8,%esp
	testl %edi,%edi
	je .L35
	leal -20(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,-44(%ebp)
	movl -12(%ebp),%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L37
	pushl $1473
	call _m3_fault
	.align 16
.L37:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	addl $4,%esp
.L35:
	movl 8(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_Type+120,%eax
	call *%eax
	movl %eax,%edi
	addl $8,%esp
	testl %edi,%edi
	jne .L44
	testb %bl,%bl
	jne .L39
	testb $1,-21(%ebp)
	jne .L39
.L44:
	xorl %eax,%eax
	jmp .L43
	.align 16
.L39:
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl $2
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,-48(%ebp)
	movl MI_CG+416,%eax
	call *%eax
	pushl $50
	pushl $0
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_CG+332,%eax
	call *%eax
	pushl $0
	movl MI_Null+44,%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	movl %eax,%edi
	addl $32,%esp
	testl %edi,%edi
	jne .L41
	testb %bl,%bl
	jne .L42
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl MI_CG+764,%eax
	call *%eax
	pushl %edi
	movl MI_M3RT+172,%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Type+144,%eax
	call *%eax
	pushl $100
	pushl $2
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_CG+332,%eax
	call *%eax
	addl $28,%esp
	jmp .L41
	.align 16
.L42:
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl MI_CG+764,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	pushl %edi
	movl MI_M3RT+172,%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Type+144,%eax
	call *%eax
	pushl %edi
	pushl $2
	movl -48(%ebp),%edx
	incl %edx
	movl %edx,-52(%ebp)
	pushl %edx
	movl MI_CG+348,%eax
	call *%eax
	addl $32,%esp
	pushl %ebx
	movl MI_CG+228,%eax
	call *%eax
	pushl %edi
	movl MI_M3RT+176,%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Type+144,%eax
	call *%eax
	pushl $100
	pushl $2
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_CG+352,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+232,%eax
	call *%eax
	addl $32,%esp
	pushl %edi
	movl -52(%ebp),%edx
	pushl %edx
	movl MI_CG+316,%eax
	call *%eax
	addl $8,%esp
.L41:
	movl MI_CG+664,%eax
	call *%eax
	pushl $0
	movl -48(%ebp),%edx
	pushl %edx
	movl MI_CG+316,%eax
	call *%eax
	movl %esi,%eax
.L43:
	leal -64(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Narrow__EmitCore,.Lfe6-Narrow__EmitCore
	.align 16
	.type	 Narrow__Fold,@function
Narrow__Fold:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L46
	pushl $2212
	call _m3_fault
	.align 16
.L46:
	cmpl $0,4(%eax)
	jne .L47
	pushl $2210
	call _m3_fault
	.align 16
.L47:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Narrow__Fold,.Lfe7-Narrow__Fold
	.align 16
	.type	 Narrow__NoteWrites,@function
Narrow__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L49
	pushl $2292
	call _m3_fault
	.align 16
.L49:
	cmpl $0,4(%eax)
	jne .L50
	pushl $2290
	call _m3_fault
	.align 16
.L50:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Narrow__NoteWrites,.Lfe8-Narrow__NoteWrites
	.align 16
	.type	 Narrow__Initialize,@function
Narrow__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Narrow+72,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Narrow+68,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Narrow+60,%eax
	pushl %eax
	movl MM_Narrow+56,%eax
	pushl %eax
	movl MM_Narrow+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MM_Narrow+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Narrow+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Narrow+252
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Narrow__Initialize,.Lfe9-Narrow__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Narrow
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_Narrow
.data
	.align 4
	.type	 MM_Narrow,@object
	.size	 MM_Narrow,600
MM_Narrow:
	.long MM_Narrow+452
	.zero	16
	.long MM_Narrow+336
	.zero	4
	.long MM_Narrow+448
	.long MM_Narrow+448
	.zero	12
	.long Narrow__TypeOf
	.long Narrow__Check
	.long Narrow__Prep
	.long Narrow__Compile
	.long Narrow__EmitCore
	.long Narrow__Fold
	.long Narrow__NoteWrites
	.long Narrow__Initialize
	.long Narrow__Emit
	.long 2
	.long MM_Narrow+96
	.long 39
	.ascii	"NARROW: second argument must be a type"
	.zero	2
	.long 2
	.long MM_Narrow+148
	.long 33
	.ascii	"NARROW: types must be assignable"
	.zero	4
	.long 2
	.long MM_Narrow+196
	.long 50
	.ascii	"NARROW: must be a traced reference or object type"
	.zero	3
	.long 2
	.long MM_Narrow+260
	.long 7
	.ascii	"NARROW"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"EmitCore"
	.zero	1
	.ascii	"Emit"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	2
	.long Narrow__Initialize
	.long MM_Narrow+268
	.long MI_Narrow+44
	.long Narrow__NoteWrites
	.long MM_Narrow+279
	.zero	4
	.long Narrow__Fold
	.long MM_Narrow+290
	.zero	4
	.long Narrow__EmitCore
	.long MM_Narrow+295
	.zero	4
	.long Narrow__Emit
	.long MM_Narrow+304
	.long MI_Narrow+48
	.long Narrow__Compile
	.long MM_Narrow+309
	.zero	4
	.long Narrow__Prep
	.long MM_Narrow+317
	.zero	4
	.long Narrow__Check
	.long MM_Narrow+322
	.zero	4
	.long Narrow__TypeOf
	.long MM_Narrow+328
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Narrow.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
