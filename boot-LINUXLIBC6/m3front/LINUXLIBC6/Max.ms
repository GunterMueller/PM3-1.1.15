	.file	"Max.mc"
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
	.type	 Max__TypeOf,@function
Max__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L2
	pushl $292
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%eax)
	jne .L3
	pushl $290
	call _m3_fault
	.align 16
.L3:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Max__TypeOf,.Lfe1-Max__TypeOf
	.align 16
	.type	 Max__Check,@function
Max__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Max+76
	call Max__DoCheck
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Max__Check,.Lfe2-Max__Check
	.align 16
	.type	 Max__DoCheck,@function
Max__DoCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 8(%ebp),%edi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L6
	pushl $468
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $466
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	movl 20(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L8
	pushl $484
	call _m3_fault
	.align 16
.L8:
	cmpl $1,4(%eax)
	ja .L9
	pushl $482
	call _m3_fault
	.align 16
.L9:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl $0
	pushl %eax
	pushl %ebx
	movl MI_Type+116,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jne .L10
	pushl $MM_Max+92
	pushl %edi
	movl MI_Error+60,%eax
	call *%eax
	jmp .L11
	.align 16
.L10:
	cmpl %ebx,MI_Int+44
	je .L11
	pushl %ebx
	movl MI_Type+104,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	cmpl %ebx,MI_Reel+44
	je .L11
	cmpl %ebx,MI_LReel+44
	je .L11
	cmpl %ebx,MI_EReel+44
	je .L11
	pushl $MM_Max+132
	pushl %edi
	movl MI_Error+60,%eax
	call *%eax
	movl MI_Int+44,%ebx
.L11:
	leal -12(%ebp),%esp
	movl %ebx,8(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Max__DoCheck,.Lfe3-Max__DoCheck
	.align 16
	.type	 Max__Compile,@function
Max__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L17
	pushl $756
	call _m3_fault
	.align 16
.L17:
	cmpl $0,4(%eax)
	jne .L18
	pushl $754
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L19
	pushl $772
	call _m3_fault
	.align 16
.L19:
	cmpl $1,4(%eax)
	ja .L20
	pushl $770
	call _m3_fault
	.align 16
.L20:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L21
	pushl $788
	call _m3_fault
	.align 16
.L21:
	cmpl $0,4(%eax)
	jne .L22
	pushl $786
	call _m3_fault
	.align 16
.L22:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	addl $16,%esp
	cmpl $5,%eax
	jle .L23
	pushl $785
	call _m3_fault
	.align 16
.L23:
	pushl %eax
	movl MI_CG+484,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Max__Compile,.Lfe4-Max__Compile
	.align 16
	.type	 Max__Fold,@function
Max__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-4(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L25
	pushl $884
	call _m3_fault
	.align 16
.L25:
	cmpl $0,4(%eax)
	jne .L26
	pushl $882
	call _m3_fault
	.align 16
.L26:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L36
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L28
	pushl $916
	call _m3_fault
	.align 16
.L28:
	cmpl $1,4(%eax)
	ja .L29
	pushl $914
	call _m3_fault
	.align 16
.L29:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	je .L36
	leal -20(%ebp),%edx
	movl %edx,-28(%ebp)
	pushl %edx
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L31
	leal -12(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L31
	pushl %edi
	movl -28(%ebp),%edx
	pushl %edx
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	jne .L37
	jmp .L34
	.align 16
.L31:
	leal -4(%ebp),%edi
	pushl %edi
	leal -20(%ebp),%edx
	movl %edx,-32(%ebp)
	pushl %edx
	pushl %ebx
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L33
	pushl %edi
	leal -12(%ebp),%edi
	pushl %edi
	pushl %esi
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L33
	pushl %edi
	movl -32(%ebp),%edx
	pushl %edx
	movl MI_TInt+104,%eax
	call *%eax
	testl %eax,%eax
	je .L34
.L37:
	movl %esi,%eax
	jmp .L36
	.align 16
.L34:
	movl %ebx,%eax
	jmp .L36
	.align 16
.L33:
	leal -24(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	movl MI_ReelExpr+76,%eax
	call *%eax
	testl %eax,%eax
	je .L36
	movl -24(%ebp),%eax
.L36:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Max__Fold,.Lfe5-Max__Fold
	.align 16
	.type	 Max__Initialize,@function
Max__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Max+56,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Max+52,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_Max+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MI_Max+48,%eax
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
	movl %eax,MM_Max+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Max+76
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Max__Initialize,.Lfe6-Max__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Max
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_Max
.data
	.align 4
	.type	 MM_Max,@object
	.size	 MM_Max,440
MM_Max:
	.long MM_Max+292
	.zero	16
	.long MM_Max+212
	.zero	4
	.long MM_Max+288
	.long MM_Max+288
	.zero	12
	.long Max__Check
	.long Max__Compile
	.long Max__Fold
	.long Max__Initialize
	.long Max__TypeOf
	.long Max__DoCheck
	.long 2
	.long MM_Max+84
	.long 4
	.ascii	"MAX"
	.zero	1
	.long 2
	.long MM_Max+100
	.long 28
	.ascii	"incompatible argument types"
	.zero	1
	.long 2
	.long MM_Max+140
	.long 21
	.ascii	"wrong argument types"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"DoCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	4
	.long Max__Initialize
	.long MM_Max+164
	.long MI_Max+44
	.long Max__Fold
	.long MM_Max+175
	.zero	4
	.long Max__Compile
	.long MM_Max+180
	.zero	4
	.long Max__DoCheck
	.long MM_Max+188
	.long MI_Max+52
	.long Max__Check
	.long MM_Max+196
	.zero	4
	.long Max__TypeOf
	.long MM_Max+202
	.long MI_Max+48
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Max.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
