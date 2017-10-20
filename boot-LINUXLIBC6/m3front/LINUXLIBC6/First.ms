	.file	"First.mc"
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
	.type	 First__TypeOf,@function
First__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L2
	pushl $324
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%eax)
	jne .L3
	pushl $322
	call _m3_fault
	.align 16
.L3:
	movl (%eax),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-12(%ebp)
	movl $0,-8(%ebp)
	leal -4(%ebp),%edi
	pushl %edi
	leal -8(%ebp),%esi
	pushl %esi
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L4
	cmpl $0,-8(%ebp)
	jne .L9
	movl MI_Int+44,%eax
	jmp .L10
	.align 16
.L4:
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L6
	pushl %edi
	pushl %esi
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L6
	movl -12(%ebp),%eax
.L10:
	movl %eax,-8(%ebp)
.L6:
	cmpl $0,-8(%ebp)
	jne .L9
	movl MI_Int+44,%eax
	movl %eax,-8(%ebp)
.L9:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 First__TypeOf,.Lfe1-First__TypeOf
	.align 16
	.type	 First__Check,@function
First__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_First+84
	call First__DoCheck
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 First__Check,.Lfe2-First__Check
	.align 16
	.type	 First__DoCheck,@function
First__DoCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl 12(%ebp),%edx
	movl %ebx,-4(%ebp)
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L13
	pushl $644
	call _m3_fault
	.align 16
.L13:
	cmpl $0,4(%eax)
	jne .L14
	pushl $642
	call _m3_fault
	.align 16
.L14:
	movl (%eax),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-12(%ebp)
	leal -4(%ebp),%edi
	pushl %edi
	leal -8(%ebp),%esi
	pushl %esi
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L15
	cmpl $0,-8(%ebp)
	jne .L17
	movl MI_Int+44,%eax
	movl %eax,-8(%ebp)
	jmp .L17
	.align 16
.L15:
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L18
	pushl %edi
	pushl %esi
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L19
	cmpl $0,-8(%ebp)
	jne .L17
	pushl $MM_First+104
	jmp .L29
	.align 16
.L19:
	movl -12(%ebp),%eax
	movl %eax,-8(%ebp)
	jmp .L17
	.align 16
.L18:
	pushl $MM_First+156
.L29:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Error+60,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,-8(%ebp)
	addl $8,%esp
.L17:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_EnumType+52,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L22
	leal -20(%ebp),%ebx
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	pushl $MI_TInt+52
	pushl %ebx
	movl MI_TInt+104,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L24
	pushl $MM_First+204
	jmp .L30
	.align 16
.L22:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+104,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L24
	pushl %eax
	movl MI_Reel+44,%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L24
	pushl %eax
	movl MI_LReel+44,%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L24
	pushl %eax
	movl MI_EReel+44,%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L24
	pushl $MM_First+240
.L30:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Error+60,%eax
	call *%eax
	addl $8,%esp
.L24:
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl 12(%ebp),%edx
	leal -32(%ebp),%esp
	movl %eax,8(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 First__DoCheck,.Lfe3-First__DoCheck
	.align 16
	.type	 First__Prep,@function
First__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 First__Prep,.Lfe4-First__Prep
	.align 16
	.type	 First__Compile,@function
First__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L33
	pushl $1252
	call _m3_fault
	.align 16
.L33:
	cmpl $0,4(%eax)
	jne .L34
	pushl $1250
	call _m3_fault
	.align 16
.L34:
	movl (%eax),%eax
	movl (%eax),%ebx
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L35
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-12(%ebp)
	addl $4,%esp
.L35:
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L36
	movl -8(%ebp),%eax
	movl %eax,-12(%ebp)
.L36:
	movl -12(%ebp),%edx
	testl %edx,%edx
	jne .L37
	pushl $MI_TInt+44
	jmp .L43
	.align 16
.L37:
	leal -20(%ebp),%eax
	pushl %eax
	leal -28(%ebp),%ebx
	pushl %ebx
	pushl %edx
	movl MI_Type+112,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L39
	pushl %ebx
.L43:
	movl MI_CG+428,%eax
	call *%eax
	jmp .L32
	.align 16
.L39:
	pushl %eax
	movl MI_Reel+44,%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L40
	pushl $MI_Target+144
	jmp .L44
	.align 16
.L40:
	pushl %eax
	movl MI_LReel+44,%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L41
	pushl $MI_Target+192
	jmp .L44
	.align 16
.L41:
	pushl %eax
	movl MI_EReel+44,%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L42
	pushl $MI_Target+240
.L44:
	movl MI_CG+432,%eax
	call *%eax
	jmp .L32
	.align 16
.L42:
	pushl $1552
	call _m3_fault
	.align 16
.L32:
	movl -32(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 First__Compile,.Lfe5-First__Compile
	.align 16
	.type	 First__Fold,@function
First__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L46
	pushl $1668
	call _m3_fault
	.align 16
.L46:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L47
	pushl $1666
	call _m3_fault
	.align 16
.L47:
	movl (%edx),%eax
	movl (%eax),%ebx
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L51
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-12(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L49
.L51:
	movl -12(%ebp),%eax
	pushl %eax
	call First__FirstOfType
	movl %eax,%edx
.L49:
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 First__Fold,.Lfe6-First__Fold
	.align 16
	.type	 First__FirstOfType,@function
First__FirstOfType:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	leal -4(%ebp),%eax
	pushl %ebx
	movl $0,-4(%ebp)
	pushl %eax
	leal 8(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L53
	cmpl $0,8(%ebp)
	jne .L53
	pushl $MI_TInt+44
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L60
	.align 16
.L53:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -12(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Type+112,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	je .L54
	cmpl %ebx,MI_Int+44
	jne .L55
	pushl %esi
	movl MI_IntegerExpr+44,%eax
	call *%eax
	jmp .L60
	.align 16
.L55:
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	jmp .L61
	.align 16
.L54:
	cmpl %ebx,MI_Reel+44
	jne .L56
	pushl %eax
	pushl $MI_Target+144
	jmp .L62
	.align 16
.L56:
	cmpl %ebx,MI_LReel+44
	jne .L57
	pushl $1
	pushl $MI_Target+192
	jmp .L62
	.align 16
.L57:
	cmpl %ebx,MI_EReel+44
	jne .L59
	pushl $2
	pushl $MI_Target+240
.L62:
	movl MI_ReelExpr+44,%eax
.L61:
	call *%eax
.L60:
	movl %eax,%ebx
.L59:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 First__FirstOfType,.Lfe7-First__FirstOfType
	.align 16
	.type	 First__Initialize,@function
First__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_First+60,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_First+56,%eax
	pushl %eax
	movl MM_First+52,%eax
	pushl %eax
	movl MM_First+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MI_First+48,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_First+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_First+84
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 First__Initialize,.Lfe8-First__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_First
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_First
.data
	.align 4
	.type	 MM_First,@object
	.size	 MM_First,636
MM_First:
	.long MM_First+488
	.zero	16
	.long MM_First+384
	.zero	4
	.long MM_First+484
	.long MM_First+484
	.zero	12
	.long First__Check
	.long First__Prep
	.long First__Compile
	.long First__Fold
	.long First__FirstOfType
	.long First__Initialize
	.long First__TypeOf
	.long First__DoCheck
	.long 2
	.long MM_First+92
	.long 6
	.ascii	"FIRST"
	.zero	3
	.long 2
	.long MM_First+112
	.long 38
	.ascii	"argument cannot be an open array type"
	.zero	3
	.long 2
	.long MM_First+164
	.long 33
	.ascii	"argument must be a type or array"
	.zero	4
	.long 2
	.long MM_First+212
	.long 23
	.ascii	"empty enumeration type"
	.zero	2
	.long 2
	.long MM_First+248
	.long 69
	.ascii	"argument must be an ordinal type, floating type, array type "
	.ascii	"or array"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"FirstOfType"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"DoCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	3
	.long First__Initialize
	.long MM_First+320
	.long MI_First+44
	.long First__FirstOfType
	.long MM_First+331
	.zero	4
	.long First__Fold
	.long MM_First+343
	.zero	4
	.long First__Compile
	.long MM_First+348
	.zero	4
	.long First__Prep
	.long MM_First+356
	.zero	4
	.long First__DoCheck
	.long MM_First+361
	.long MI_First+52
	.long First__Check
	.long MM_First+369
	.zero	4
	.long First__TypeOf
	.long MM_First+375
	.long MI_First+48
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/First.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
