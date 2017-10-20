	.file	"Typecode.mc"
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
	.type	 Typecode__Check,@function
Typecode__Check:
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
	cmpl $0,4(%edx)
	jne .L3
	pushl $306
	call _m3_fault
	.align 16
.L3:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L4
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L9
	pushl %eax
	movl MI_Reff+44,%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L7
	pushl $MM_Typecode+68
	jmp .L13
	.align 16
.L7:
	movl MI_Reff+44,%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L9
	pushl $MM_Typecode+124
	jmp .L13
	.align 16
.L4:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L10
	pushl $452
	call _m3_fault
	.align 16
.L10:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L11
	pushl $450
	call _m3_fault
	.align 16
.L11:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	movl MI_Reff+44,%eax
	pushl %eax
	pushl %edx
	movl MI_Type+120,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L9
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_ObjectType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L9
	pushl $MM_Typecode+180
.L13:
	movl MI_Error+44,%eax
	call *%eax
.L9:
	movl MI_Card+44,%eax
	movl %eax,8(%ebx)
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Typecode__Check,.Lfe1-Typecode__Check
	.align 16
	.type	 Typecode__Prep,@function
Typecode__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L15
	pushl $596
	call _m3_fault
	.align 16
.L15:
	cmpl $0,4(%eax)
	jne .L16
	pushl $594
	call _m3_fault
	.align 16
.L16:
	movl (%eax),%eax
	movl (%eax),%ebx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L14
	pushl %ebx
	movl MI_Expr+200,%eax
	call *%eax
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+224,%eax
	call *%eax
	movl %eax,24(%edi)
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,%ebx
	movl 24(%edi),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl MI_CG+416,%eax
	call *%eax
	pushl %esi
	pushl %esi
	pushl %ebx
	movl MI_CG+332,%eax
	call *%eax
	movl 24(%edi),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl MI_CG+764,%eax
	addl $32,%esp
	call *%eax
	pushl %esi
	pushl $2
	movl MI_CG+656,%eax
	call *%eax
	movl 24(%edi),%eax
	pushl %eax
	movl MI_CG+236,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_CG+316,%eax
	call *%eax
.L14:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Typecode__Prep,.Lfe2-Typecode__Prep
	.align 16
	.type	 Typecode__Compile,@function
Typecode__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-4(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L20
	pushl $948
	call _m3_fault
	.align 16
.L20:
	cmpl $0,4(%eax)
	jne .L21
	pushl $946
	call _m3_fault
	.align 16
.L21:
	movl (%eax),%eax
	movl (%eax),%edx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L22
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	pushl $0
	movl MI_M3RT+172,%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+144,%eax
	call *%eax
	jmp .L19
	.align 16
.L22:
	movl 24(%esi),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	pushl $2
	pushl %ebx
	movl MI_CG+656,%eax
	call *%eax
	movl 24(%esi),%eax
	pushl %eax
	movl MI_CG+232,%eax
	call *%eax
	movl %ebx,24(%esi)
.L19:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Typecode__Compile,.Lfe3-Typecode__Compile
	.align 16
	.type	 Typecode__Initialize,@function
Typecode__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Typecode+56,%eax
	pushl %eax
	movl MM_Typecode+52,%eax
	pushl %eax
	movl MM_Typecode+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Card+44,%eax
	pushl %eax
	pushl $1
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Typecode+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Typecode+244
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Typecode__Initialize,.Lfe4-Typecode__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Typecode
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Typecode
.data
	.align 4
	.type	 MM_Typecode,@object
	.size	 MM_Typecode,504
MM_Typecode:
	.long MM_Typecode+352
	.zero	16
	.long MM_Typecode+296
	.zero	4
	.long MM_Typecode+348
	.long MM_Typecode+348
	.zero	12
	.long Typecode__Check
	.long Typecode__Prep
	.long Typecode__Compile
	.long Typecode__Initialize
	.long 2
	.long MM_Typecode+76
	.long 43
	.ascii	"TYPECODE: T must be a fixed reference type"
	.zero	2
	.long 2
	.long MM_Typecode+132
	.long 44
	.ascii	"TYPECODE: T must be a traced reference type"
	.zero	1
	.long 2
	.long MM_Typecode+188
	.long 49
	.ascii	"TYPECODE: r must be a traced reference or object"
	.zero	4
	.long 2
	.long MM_Typecode+252
	.long 9
	.ascii	"TYPECODE"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Typecode__Initialize
	.long MM_Typecode+264
	.long MI_Typecode+44
	.long Typecode__Compile
	.long MM_Typecode+275
	.zero	4
	.long Typecode__Prep
	.long MM_Typecode+283
	.zero	4
	.long Typecode__Check
	.long MM_Typecode+288
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Typecode.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
