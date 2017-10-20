	.file	"Val.mc"
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
	.type	 Val__TypeOf,@function
Val__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 20(%eax),%edx
	testl %edx,%edx
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
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
	testl %eax,%eax
	jne .L4
	movl MI_Int+44,%eax
	jmp .L5
	.align 16
.L4:
	movl -4(%ebp),%eax
.L5:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Val__TypeOf,.Lfe1-Val__TypeOf
	.align 16
	.type	 Val__Check,@function
Val__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-36(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L7
	pushl $452
	call _m3_fault
	.align 16
.L7:
	movl %eax,%ecx
	cmpl $0,4(%ecx)
	jne .L8
	pushl $450
	call _m3_fault
	.align 16
.L8:
	movl (%ecx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-40(%ebp)
	movl MI_Int+44,%eax
	movl %eax,-36(%ebp)
	pushl %eax
	movl -40(%ebp),%esi
	pushl %esi
	movl MI_Type+120,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L9
	pushl $MM_Val+76
	jmp .L38
	.align 16
.L9:
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L11
	pushl $516
	call _m3_fault
	.align 16
.L11:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L12
	pushl $514
	call _m3_fault
	.align 16
.L12:
	leal -36(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_Val+128
	jmp .L38
	.align 16
.L13:
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_Type+104,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L14
	pushl $MM_Val+176
.L38:
	movl MI_Error+44,%eax
	call *%eax
	jmp .L10
	.align 16
.L14:
	leal -24(%ebp),%edi
	pushl %edi
	leal -32(%ebp),%esi
	movl %esi,-44(%ebp)
	pushl %esi
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	leal -8(%ebp),%esi
	movl %esi,-48(%ebp)
	pushl %esi
	leal -16(%ebp),%ebx
	pushl %ebx
	movl -40(%ebp),%esi
	pushl %esi
	movl MI_Type+112,%eax
	call *%eax
	movl -44(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $32,%esp
	testl %eax,%eax
	je .L15
	movl -48(%ebp),%esi
	pushl %esi
	pushl %edi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L16
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L17
	pushl $692
	call _m3_fault
	.align 16
.L17:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L18
	pushl $690
	call _m3_fault
	.align 16
.L18:
	pushl %edi
	movl -44(%ebp),%esi
	pushl %esi
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_CheckExpr+44,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%esi
	addl $12,%esp
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L19
	pushl $692
	call _m3_fault
	.align 16
.L19:
	cmpl $0,4(%eax)
	jne .L20
	pushl $690
	call _m3_fault
	.align 16
.L20:
	movl (%eax),%edx
	movl %ecx,(%edx)
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L21
	pushl $708
	call _m3_fault
	.align 16
.L21:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L37
	pushl $706
	call _m3_fault
	.align 16
.L16:
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L24
	pushl $740
	call _m3_fault
	.align 16
.L24:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L25
	pushl $738
	call _m3_fault
	.align 16
.L25:
	movl -44(%ebp),%esi
	pushl %esi
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_CheckExpr+48,%eax
	call *%eax
	movl 8(%ebp),%esi
	addl $8,%esp
	movl 20(%esi),%edx
	testl %edx,%edx
	jne .L26
	pushl $740
	call _m3_fault
	.align 16
.L26:
	movl %edx,%ecx
	cmpl $0,4(%ecx)
	jne .L27
	pushl $738
	call _m3_fault
	.align 16
.L27:
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L28
	pushl $756
	call _m3_fault
	.align 16
.L28:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L37
	pushl $754
	call _m3_fault
	.align 16
.L15:
	movl -48(%ebp),%esi
	pushl %esi
	pushl %edi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L10
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L32
	pushl $820
	call _m3_fault
	.align 16
.L32:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L33
	pushl $818
	call _m3_fault
	.align 16
.L33:
	pushl %edi
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_CheckExpr+52,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%esi
	addl $8,%esp
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L34
	pushl $820
	call _m3_fault
	.align 16
.L34:
	cmpl $0,4(%eax)
	jne .L35
	pushl $818
	call _m3_fault
	.align 16
.L35:
	movl (%eax),%edx
	movl %ecx,(%edx)
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L36
	pushl $836
	call _m3_fault
	.align 16
.L36:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L37
	pushl $834
	call _m3_fault
	.align 16
.L37:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
.L10:
	movl -36(%ebp),%eax
	movl 8(%ebp),%esi
	leal -60(%ebp),%esp
	movl %eax,8(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Val__Check,.Lfe2-Val__Check
	.align 16
	.type	 Val__Prep,@function
Val__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L40
	pushl $964
	call _m3_fault
	.align 16
.L40:
	cmpl $0,4(%eax)
	jne .L41
	pushl $962
	call _m3_fault
	.align 16
.L41:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Val__Prep,.Lfe3-Val__Prep
	.align 16
	.type	 Val__Compile,@function
Val__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L43
	pushl $1060
	call _m3_fault
	.align 16
.L43:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L44
	pushl $1058
	call _m3_fault
	.align 16
.L44:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L45
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	addl $4,%esp
.L45:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L46
	pushl $1076
	call _m3_fault
	.align 16
.L46:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L47
	pushl $1074
	call _m3_fault
	.align 16
.L47:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Val__Compile,.Lfe4-Val__Compile
	.align 16
	.type	 Val__Fold,@function
Val__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-28(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L49
	pushl $1172
	call _m3_fault
	.align 16
.L49:
	cmpl $0,4(%eax)
	jne .L50
	pushl $1170
	call _m3_fault
	.align 16
.L50:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L59
	leal -24(%ebp),%esi
	pushl %esi
	pushl %edx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L59
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L52
	pushl $1188
	call _m3_fault
	.align 16
.L52:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L53
	pushl $1186
	call _m3_fault
	.align 16
.L53:
	leal -28(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L59
	leal -8(%ebp),%edi
	pushl %edi
	leal -16(%ebp),%ebx
	pushl %ebx
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jne .L55
	pushl %esi
	pushl %edi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L56
.L55:
	pushl $MM_Val+236
	movl MI_Error+44,%eax
	call *%eax
.L59:
	xorl %eax,%eax
	jmp .L58
	.align 16
.L56:
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-28(%ebp)
	pushl %edx
	movl MI_EnumType+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L57
	pushl %esi
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L60
	.align 16
.L57:
	pushl %esi
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	call *%eax
.L60:
	movl %eax,%edx
.L58:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Val__Fold,.Lfe5-Val__Fold
	.align 16
	.type	 Val__Initialize,@function
Val__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Val+64,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Val+60,%eax
	pushl %eax
	movl MM_Val+56,%eax
	pushl %eax
	movl MM_Val+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MM_Val+48,%eax
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
	movl %eax,MM_Val+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Val+272
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Val__Initialize,.Lfe6-Val__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Val
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_Val
.data
	.align 4
	.type	 MM_Val,@object
	.size	 MM_Val,556
MM_Val:
	.long MM_Val+408
	.zero	16
	.long MM_Val+328
	.zero	4
	.long MM_Val+404
	.long MM_Val+404
	.zero	12
	.long Val__TypeOf
	.long Val__Check
	.long Val__Prep
	.long Val__Compile
	.long Val__Fold
	.long Val__Initialize
	.long 2
	.long MM_Val+84
	.long 39
	.ascii	"VAL: first argument must be an INTEGER"
	.zero	2
	.long 2
	.long MM_Val+136
	.long 36
	.ascii	"VAL: second argument must be a type"
	.zero	1
	.long 2
	.long MM_Val+184
	.long 45
	.ascii	"VAL: second argument must be an ordinal type"
	.zero	4
	.long 2
	.long MM_Val+244
	.long 24
	.ascii	"VAL: value out of range"
	.zero	1
	.long 2
	.long MM_Val+280
	.long 4
	.ascii	"VAL"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	3
	.long Val__Initialize
	.long MM_Val+284
	.long MI_Val+44
	.long Val__Fold
	.long MM_Val+295
	.zero	4
	.long Val__Compile
	.long MM_Val+300
	.zero	4
	.long Val__Prep
	.long MM_Val+308
	.zero	4
	.long Val__Check
	.long MM_Val+313
	.zero	4
	.long Val__TypeOf
	.long MM_Val+319
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Val.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
