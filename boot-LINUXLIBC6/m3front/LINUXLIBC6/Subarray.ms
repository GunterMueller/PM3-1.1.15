	.file	"Subarray.mc"
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
	.type	 Subarray__TypeOf,@function
Subarray__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%eax)
	jne .L3
	pushl $306
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
	pushl %eax
	movl MI_ArrayType+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Subarray__TypeOf,.Lfe1-Subarray__TypeOf
	.align 16
	.type	 Subarray__Check,@function
Subarray__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L5:
	movl $5,-32(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-36(%ebp)
	leal -36(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %esi,%esi
	movl %esi,-28(%ebp)
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L6
	pushl $404
	call _m3_fault
	.align 16
.L6:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L7
	pushl $402
	call _m3_fault
	.align 16
.L7:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movl 20(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L8
	pushl $420
	call _m3_fault
	.align 16
.L8:
	movl %eax,%ebx
	cmpl $1,4(%ebx)
	ja .L9
	pushl $418
	call _m3_fault
	.align 16
.L9:
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-40(%ebp)
	movl 20(%edi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L10
	pushl $436
	call _m3_fault
	.align 16
.L10:
	movl %eax,%edx
	cmpl $2,4(%edx)
	ja .L11
	pushl $434
	call _m3_fault
	.align 16
.L11:
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%ebx
	leal -24(%ebp),%eax
	pushl %eax
	leal -28(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L12
	pushl $MM_Subarray+104
	jmp .L28
	.align 16
.L12:
	movl -40(%ebp),%ecx
	pushl %ecx
	movl MI_Card+44,%eax
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L14
	pushl $MM_Subarray+160
	jmp .L28
	.align 16
.L14:
	pushl %ebx
	movl MI_Card+44,%eax
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L15
	pushl $MM_Subarray+232
.L28:
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L13
	.align 16
.L15:
	leal -20(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-24(%ebp)
	addl $8,%esp
	cmpb $10,-2(%ebp)
	je .L16
	testb $7,-20(%ebp)
	je .L16
	pushl $MM_Subarray+300
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L16:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L17
	pushl $644
	call _m3_fault
	.align 16
.L17:
	movl %eax,%ebx
	cmpl $1,4(%ebx)
	ja .L18
	pushl $642
	call _m3_fault
	.align 16
.L18:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %eax
	call Subarray__CheckPositive
	movl %eax,%edx
	movl 20(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L19
	pushl $644
	call _m3_fault
	.align 16
.L19:
	movl %eax,%ebx
	cmpl $1,4(%ebx)
	ja .L20
	pushl $642
	call _m3_fault
	.align 16
.L20:
	movl (%ebx),%eax
	movl %edx,4(%eax)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L21
	pushl $660
	call _m3_fault
	.align 16
.L21:
	movl %eax,%edx
	cmpl $2,4(%edx)
	ja .L22
	pushl $658
	call _m3_fault
	.align 16
.L22:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Subarray__CheckPositive
	movl %eax,%ebx
	movl 20(%edi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L23
	pushl $660
	call _m3_fault
	.align 16
.L23:
	movl %eax,%edx
	cmpl $2,4(%edx)
	ja .L24
	pushl $658
	call _m3_fault
	.align 16
.L24:
	movl (%edx),%eax
	movl %ebx,8(%eax)
.L13:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L25
	pushl $692
	call _m3_fault
	.align 16
.L25:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L26
	pushl $690
	call _m3_fault
	.align 16
.L26:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+184,%eax
	call *%eax
	pushl %esi
	movl MI_ArrayType+64,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,8(%edi)
	movl 12(%ebp),%edx
	incl 12(%edx)
.L27:
	movl -36(%ebp),%eax
	leal -52(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Subarray__Check,.Lfe2-Subarray__Check
	.align 16
	.type	 Subarray__CheckPositive,@function
Subarray__CheckPositive:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L32
	leal -8(%ebp),%edi
	pushl %edi
	leal -16(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_Expr+164,%eax
	call *%eax
	pushl $MI_TInt+44
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jne .L31
	pushl %esi
	pushl %edi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L32
.L31:
	pushl $MI_TInt+44
	pushl %ebx
	movl MI_CheckExpr+48,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Expr+156,%eax
	call *%eax
.L32:
	movl %ebx,%eax
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Subarray__CheckPositive,.Lfe3-Subarray__CheckPositive
	.align 16
	.type	 Subarray__NeedsAddress,@function
Subarray__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Subarray__NeedsAddress,.Lfe4-Subarray__NeedsAddress
.section	.rodata
	.align 4
	.type	 L_2.0,@object
	.size	 L_2.0,32
L_2.0:
	.long .L50
	.long .L51
	.long .L52
	.long .L53
	.long .L54
	.long .L55
	.long .L56
	.long .L57
.text
	.align 16
	.type	 Subarray__Prep,@function
Subarray__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $104,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-48(%ebp)
	movl $0,-44(%ebp)
	movl 8(%ebp),%ecx
	movb $0,-52(%ebp)
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L36
	pushl $1076
	call _m3_fault
	.align 16
.L36:
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L37
	pushl $1074
	call _m3_fault
	.align 16
.L37:
	movl (%eax),%eax
	movl (%eax),%ecx
	movl %ecx,-80(%ebp)
	cmpl $1,%edx
	ja .L39
	pushl $1090
	call _m3_fault
	.align 16
.L39:
	movl 4(%eax),%ecx
	movl %ecx,-76(%ebp)
	cmpl $2,%edx
	ja .L41
	pushl $1106
	call _m3_fault
	.align 16
.L41:
	movl 8(%eax),%edi
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-72(%ebp)
	pushl %esi
	movl MI_ArrayType+64,%eax
	call *%eax
	movl %eax,%esi
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_OpenArrayType+64,%eax
	call *%eax
	movl %eax,-68(%ebp)
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+56,%eax
	call *%eax
	movl %eax,-64(%ebp)
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_Type+140,%eax
	call *%eax
	pushl %esi
	movl MI_Type+140,%eax
	call *%eax
	leal -44(%ebp),%eax
	pushl %eax
	leal -48(%ebp),%eax
	pushl %eax
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+52,%eax
	call *%eax
	addl $40,%esp
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+208,%eax
	call *%eax
	addl $4,%esp
	cmpl $0,-68(%ebp)
	je .L42
	movb $4,-52(%ebp)
	jmp .L43
	.align 16
.L42:
	leal -32(%ebp),%eax
	pushl %eax
	movl -48(%ebp),%eax
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	addl $8,%esp
.L43:
	leal -16(%ebp),%eax
	pushl %eax
	leal -40(%ebp),%eax
	pushl %eax
	movl -76(%ebp),%ecx
	pushl %ecx
	call Subarray__GetCard
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L44
	xorl %eax,%eax
	movb -52(%ebp),%al
	addl $2,%eax
	cmpl $7,%eax
	jle .L45
	pushl $1521
	call _m3_fault
	.align 16
.L45:
	movb %al,-52(%ebp)
	jmp .L46
	.align 16
.L44:
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+200,%eax
	call *%eax
	addl $4,%esp
.L46:
	leal -24(%ebp),%eax
	pushl %eax
	leal -36(%ebp),%eax
	pushl %eax
	pushl %edi
	call Subarray__GetCard
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L47
	xorl %eax,%eax
	movb -52(%ebp),%al
	incl %eax
	cmpl $7,%eax
	jle .L48
	pushl $1585
	call _m3_fault
	.align 16
.L48:
	movb %al,-52(%ebp)
	jmp .L49
	.align 16
.L47:
	pushl %edi
	movl MI_Expr+200,%eax
	call *%eax
	addl $4,%esp
.L49:
	pushl %esi
	movl MI_OpenArrayType+72,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-60(%ebp)
	xorl %eax,%eax
	movb -52(%ebp),%al
	addl $4,%esp
	jmp *L_2.0(,%eax,4)
	.align 16
.L50:
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	addl $12,%esp
	cmpb $0,MI_Host+84
	je .L91
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+380,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_CG+688,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	addl $32,%esp
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %esi
	movl MI_CG+232,%eax
	jmp .L89
	.align 16
.L51:
	leal -24(%ebp),%edi
	pushl %edi
	movl MI_CG+428,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	addl $12,%esp
	cmpb $0,MI_Host+84
	jne .L61
.L91:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
.L89:
	call *%eax
	addl $8,%esp
	jmp .L62
	.align 16
.L61:
	leal -8(%ebp),%esi
	pushl %esi
	leal -32(%ebp),%ecx
	pushl %edi
	movl %ecx,-84(%ebp)
	pushl %ecx
	movl MI_TInt+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jne .L63
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %edi
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	movl -84(%ebp),%ecx
	pushl %ecx
	movl MI_CG+688,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	addl $32,%esp
	pushl %esi
	movl MI_CG+232,%eax
	call *%eax
	addl $4,%esp
	jmp .L62
	.align 16
.L63:
	pushl $MI_TInt+44
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L64
	pushl $MM_Subarray+360
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_CG+688,%eax
	call *%eax
	addl $20,%esp
	jmp .L62
	.align 16
.L64:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_CG+688,%eax
	call *%eax
	addl $12,%esp
.L62:
	movl -64(%ebp),%ecx
	pushl %ecx
	movl MI_CG+712,%eax
	call *%eax
	movl MI_M3RT+292,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+412,%eax
	call *%eax
	addl $12,%esp
	jmp .L60
	.align 16
.L52:
	cmpb $0,MI_Host+84
	jne .L65
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	addl $12,%esp
	jmp .L70
	.align 16
.L65:
	leal -8(%ebp),%esi
	pushl %esi
	leal -16(%ebp),%ecx
	movl %ecx,-88(%ebp)
	pushl %ecx
	leal -32(%ebp),%ecx
	movl %ecx,-92(%ebp)
	pushl %ecx
	movl MI_TInt+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jne .L67
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+380,%eax
	call *%eax
	movl -88(%ebp),%ecx
	pushl %ecx
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	movl -92(%ebp),%ecx
	pushl %ecx
	movl MI_CG+688,%eax
	call *%eax
	addl $32,%esp
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $4,%esp
	jmp .L70
	.align 16
.L67:
	pushl $MI_TInt+44
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L68
	pushl $MM_Subarray+404
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_CG+688,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	addl $24,%esp
	jmp .L70
	.align 16
.L68:
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_CG+688,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	addl $16,%esp
	jmp .L70
	.align 16
.L53:
	leal -24(%ebp),%ecx
	movl %ecx,-96(%ebp)
	pushl %ecx
	movl MI_CG+428,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	addl $12,%esp
	cmpb $0,MI_Host+84
	je .L70
	leal -8(%ebp),%edi
	pushl %edi
	movl -96(%ebp),%ecx
	pushl %ecx
	leal -16(%ebp),%esi
	pushl %esi
	movl MI_TInt+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jne .L71
	pushl %esi
	movl MI_CG+428,%eax
	call *%eax
	movl -96(%ebp),%ecx
	pushl %ecx
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	leal -32(%ebp),%eax
	pushl %eax
	jmp .L90
	.align 16
.L71:
	pushl %edi
	leal -32(%ebp),%esi
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L70
	pushl $MM_Subarray+452
	pushl $2
	movl MI_Error+64,%eax
	call *%eax
	pushl %edi
	movl MI_CG+428,%eax
	call *%eax
	pushl %esi
.L90:
	movl MI_CG+688,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $20,%esp
.L70:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl -64(%ebp),%eax
	imull -40(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl MI_M3RT+292,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+412,%eax
	call *%eax
	addl $16,%esp
	jmp .L60
	.align 16
.L54:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-56(%ebp)
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	call Subarray__CopyDopeVector
	addl $32,%esp
	cmpb $0,MI_Host+84
	je .L73
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+380,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+772,%eax
	call *%eax
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+688,%eax
	call *%eax
	addl $32,%esp
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $4,%esp
.L73:
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+228,%eax
	call *%eax
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+60,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L76
	pushl $4065
	call _m3_fault
	.align 16
.L55:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-56(%ebp)
	movl -76(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	leal -24(%ebp),%ebx
	pushl %ebx
	movl MI_CG+428,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	call Subarray__CopyDopeVector
	addl $32,%esp
	cmpb $0,MI_Host+84
	je .L75
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+772,%eax
	call *%eax
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+688,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $32,%esp
.L75:
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+228,%eax
	call *%eax
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+60,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L76
	pushl $4545
	call _m3_fault
	.align 16
.L76:
	pushl %eax
	movl MI_CG+768,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl -64(%ebp),%ecx
	pushl %ecx
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%ecx
	pushl %ecx
	call Subarray__ComputeOffset
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+232,%eax
	call *%eax
	pushl %esi
	movl MI_CG+232,%eax
	call *%eax
	addl $28,%esp
	jmp .L60
	.align 16
.L56:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-56(%ebp)
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call Subarray__CopyDopeVector
	addl $28,%esp
	cmpb $0,MI_Host+84
	je .L77
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+380,%eax
	call *%eax
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+772,%eax
	call *%eax
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+688,%eax
	call *%eax
	addl $32,%esp
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $4,%esp
.L77:
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+60,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L78
	pushl $5009
	call _m3_fault
	.align 16
.L78:
	pushl %eax
	movl MI_CG+768,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,-68(%ebp)
	jle .L92
	jmp .L85
	.align 16
.L57:
	movl -80(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+216,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-56(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,-100(%ebp)
	pushl %ecx
	movl MI_CG+428,%eax
	call *%eax
	movl MI_M3RT+300,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+408,%eax
	call *%eax
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call Subarray__CopyDopeVector
	addl $28,%esp
	cmpb $0,MI_Host+84
	je .L82
	leal -8(%ebp),%ecx
	movl %ecx,-104(%ebp)
	pushl %ecx
	movl -100(%ebp),%ecx
	pushl %ecx
	leal -16(%ebp),%edi
	pushl %edi
	movl MI_TInt+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L83
	movl -104(%ebp),%ecx
	pushl %ecx
	movl MI_CG+428,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl $0
	movl MI_CG+772,%eax
	call *%eax
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+688,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $24,%esp
	jmp .L82
	.align 16
.L83:
	pushl %edi
	movl MI_CG+428,%eax
	call *%eax
	movl -100(%ebp),%ecx
	pushl %ecx
	movl MI_CG+428,%eax
	call *%eax
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+772,%eax
	call *%eax
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
	pushl $MI_TInt+44
	movl MI_CG+688,%eax
	call *%eax
	pushl $2
	movl MI_CG+640,%eax
	call *%eax
	addl $32,%esp
.L82:
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+228,%eax
	call *%eax
	movl -72(%ebp),%ecx
	pushl %ecx
	movl MI_ArrayType+60,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jge .L84
	pushl $5681
	call _m3_fault
	.align 16
.L84:
	pushl %eax
	movl MI_CG+768,%eax
	call *%eax
	addl $4,%esp
	cmpl $1,-68(%ebp)
	jg .L85
.L92:
	movl -64(%ebp),%eax
	imull -40(%ebp),%eax
	pushl %eax
	movl MI_CG+708,%eax
	call *%eax
	movl MI_M3RT+292,%eax
	pushl %eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+412,%eax
	call *%eax
	addl $12,%esp
	jmp .L86
	.align 16
.L85:
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_CG+428,%eax
	call *%eax
	movl -64(%ebp),%ecx
	pushl %ecx
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -60(%ebp),%ecx
	pushl %ecx
	call Subarray__ComputeOffset
	addl $16,%esp
.L86:
	movl -56(%ebp),%ecx
	pushl %ecx
	movl MI_CG+232,%eax
	call *%eax
	addl $4,%esp
.L60:
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_CG+372,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	movl 8(%ebp),%ecx
	leal -116(%ebp),%esp
	movl %esi,24(%ecx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Subarray__Prep,.Lfe5-Subarray__Prep
	.align 16
	.type	 Subarray__GetCard,@function
Subarray__GetCard:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %eax,%eax
	je .L96
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_IntegerExpr+48,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L95
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	movl MI_TInt+72,%eax
	call *%eax
	testl %eax,%eax
	je .L95
	movl 12(%ebp),%eax
	movl (%eax),%eax
	notl %eax
	movl %eax,%ebx
	shrl $31,%ebx
.L95:
	movl %ebx,%eax
.L96:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Subarray__GetCard,.Lfe6-Subarray__GetCard
	.align 16
	.type	 Subarray__CopyDopeVector,@function
Subarray__CopyDopeVector:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl $1,%ebx
	movl 16(%ebp),%esi
	decl %esi
	jmp .L98
	.align 16
.L99:
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_CG+228,%eax
	call *%eax
	pushl %ebx
	movl MI_CG+772,%eax
	call *%eax
	movl %ebx,%eax
	imull MI_Target+104,%eax
	addl MI_M3RT+296,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+408,%eax
	call *%eax
	incl %ebx
	addl $16,%esp
.L98:
	cmpl %esi,%ebx
	jle .L99
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Subarray__CopyDopeVector,.Lfe7-Subarray__CopyDopeVector
	.align 16
	.type	 Subarray__ComputeOffset,@function
Subarray__ComputeOffset:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $1,%ebx
	movl 12(%ebp),%esi
	decl %esi
	jmp .L102
	.align 16
.L103:
	movl %ebx,%eax
	imull MI_Target+104,%eax
	addl MI_M3RT+296,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+380,%eax
	call *%eax
	pushl $2
	movl MI_CG+468,%eax
	call *%eax
	incl %ebx
	addl $12,%esp
.L102:
	cmpl %esi,%ebx
	jle .L103
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_CG+712,%eax
	call *%eax
	movl MI_M3RT+292,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+412,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Subarray__ComputeOffset,.Lfe8-Subarray__ComputeOffset
	.align 16
	.type	 Subarray__Compile,@function
Subarray__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_CG+228,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_CG+720,%eax
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
.Lfe9:
	.size	 Subarray__Compile,.Lfe9-Subarray__Compile
	.align 16
	.type	 Subarray__IsWritable,@function
Subarray__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L107
	pushl $6612
	call _m3_fault
	.align 16
.L107:
	cmpl $0,4(%eax)
	jne .L108
	pushl $6610
	call _m3_fault
	.align 16
.L108:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+172,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Subarray__IsWritable,.Lfe10-Subarray__IsWritable
	.align 16
	.type	 Subarray__IsDesignator,@function
Subarray__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L110
	pushl $6692
	call _m3_fault
	.align 16
.L110:
	cmpl $0,4(%eax)
	jne .L111
	pushl $6690
	call _m3_fault
	.align 16
.L111:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Subarray__IsDesignator,.Lfe11-Subarray__IsDesignator
	.align 16
	.type	 Subarray__NoteWrites,@function
Subarray__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L113
	pushl $6772
	call _m3_fault
	.align 16
.L113:
	cmpl $0,4(%eax)
	jne .L114
	pushl $6770
	call _m3_fault
	.align 16
.L114:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Subarray__NoteWrites,.Lfe12-Subarray__NoteWrites
	.align 16
	.type	 Subarray__Initialize,@function
Subarray__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Subarray+92,%eax
	pushl %eax
	movl MM_Subarray+88,%eax
	pushl %eax
	movl MM_Subarray+84,%eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MM_Subarray+80,%edx
	pushl %edx
	movl MM_Subarray+64,%eax
	pushl %eax
	pushl %edx
	pushl %eax
	movl MM_Subarray+52,%eax
	pushl %eax
	movl MM_Subarray+60,%eax
	pushl %eax
	movl MM_Subarray+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $3
	pushl $3
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Subarray+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Subarray+500
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Subarray__Initialize,.Lfe13-Subarray__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Subarray
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_Subarray
.data
	.align 4
	.type	 MM_Subarray,@object
	.size	 MM_Subarray,972
MM_Subarray:
	.long MM_Subarray+820
	.zero	16
	.long MM_Subarray+656
	.zero	4
	.long MM_Subarray+816
	.long MM_Subarray+816
	.zero	12
	.long Subarray__TypeOf
	.long Subarray__Check
	.long Subarray__CheckPositive
	.long Subarray__NeedsAddress
	.long Subarray__Prep
	.long Subarray__GetCard
	.long Subarray__CopyDopeVector
	.long Subarray__ComputeOffset
	.long Subarray__Compile
	.long Subarray__IsWritable
	.long Subarray__IsDesignator
	.long Subarray__NoteWrites
	.long Subarray__Initialize
	.long 2
	.long MM_Subarray+112
	.long 42
	.ascii	"SUBARRAY: first argument must be an array"
	.zero	3
	.long 2
	.long MM_Subarray+168
	.long 57
	.ascii	"SUBARRAY: second argrment must be assignable to CARDINAL"
	.zero	4
	.long 2
	.long MM_Subarray+240
	.long 56
	.ascii	"SUBARRAY: third argument must be assignable to CARDINAL"
	.zero	1
	.long 2
	.long MM_Subarray+308
	.long 47
	.ascii	"SUBARRAY: array elements are not byte-aligned."
	.zero	2
	.long 2
	.long MM_Subarray+368
	.long 29
	.ascii	"SUBARRAY length out of range"
	.zero	4
	.long 2
	.long MM_Subarray+412
	.long 36
	.ascii	"SUBARRAY initial index out of range"
	.zero	1
	.long 2
	.long MM_Subarray+460
	.long 35
	.ascii	"SUBARRAY start+length out of range"
	.zero	2
	.long 2
	.long MM_Subarray+508
	.long 9
	.ascii	"SUBARRAY"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"ComputeOffset"
	.zero	1
	.ascii	"CopyDopeVector"
	.zero	1
	.ascii	"GetCard"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"CheckPositive"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.long Subarray__Initialize
	.long MM_Subarray+520
	.long MI_Subarray+44
	.long Subarray__NoteWrites
	.long MM_Subarray+531
	.zero	4
	.long Subarray__IsDesignator
	.long MM_Subarray+542
	.zero	4
	.long Subarray__IsWritable
	.long MM_Subarray+555
	.zero	4
	.long Subarray__Compile
	.long MM_Subarray+566
	.zero	4
	.long Subarray__ComputeOffset
	.long MM_Subarray+574
	.zero	4
	.long Subarray__CopyDopeVector
	.long MM_Subarray+588
	.zero	4
	.long Subarray__GetCard
	.long MM_Subarray+603
	.zero	4
	.long Subarray__Prep
	.long MM_Subarray+611
	.zero	4
	.long Subarray__NeedsAddress
	.long MM_Subarray+616
	.zero	4
	.long Subarray__CheckPositive
	.long MM_Subarray+629
	.zero	4
	.long Subarray__Check
	.long MM_Subarray+643
	.zero	4
	.long Subarray__TypeOf
	.long MM_Subarray+649
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Subarray.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"