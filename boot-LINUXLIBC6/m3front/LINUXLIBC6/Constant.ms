	.file	"Constant.mc"
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
	.type	 Constant__ParseDecl,@function
Constant__ParseDecl:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $0,5(%eax)
	je .L2
	pushl $MM_Constant+196
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L2:
	movl 8(%ebp),%eax
	cmpb $0,4(%eax)
	je .L3
	pushl $MM_Constant+236
	jmp .L10
	.align 16
.L3:
	cmpl $0,8(%eax)
	je .L4
	pushl $MM_Constant+280
.L10:
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L4:
	pushl $53
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	jmp .L6
	.align 16
.L7:
	movl MI_Scanner+112,%eax
	call *%eax
	pushl %eax
	call Constant__Create
	movl %eax,%ebx
	movl 8(%ebp),%eax
	addl $4,%esp
	xorl %edx,%edx
	movb 30(%ebx),%dl
	andb $247,%dl
	movb 6(%eax),%al
	andl $255,%eax
	andl $1,%eax
	sall $3,%eax
	orl %eax,%edx
	movb %dl,30(%ebx)
	movl 8(%ebp),%eax
	andl $239,%edx
	movb 7(%eax),%al
	andl $255,%eax
	andl $1,%eax
	sall $4,%eax
	orb %dl,%al
	movb %al,30(%ebx)
	cmpb $28,MI_Scanner+44
	jne .L8
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,36(%ebx)
.L8:
	pushl $21
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,40(%ebx)
	pushl %ebx
	movl MI_Scope+72,%eax
	call *%eax
	pushl $16
	movl MI_Scanner+108,%eax
	call *%eax
	addl $12,%esp
.L6:
	cmpb $1,MI_Scanner+44
	je .L7
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Constant__ParseDecl,.Lfe1-Constant__ParseDecl
	.align 16
	.type	 Constant__Create,@function
Constant__Create:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Constant+336,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl %eax,%esi
	pushl %esi
	movl MI_ValueRep+148,%eax
	call *%eax
	orb $2,30(%esi)
	movl $0,36(%esi)
	movl $0,40(%esi)
	movl $0,44(%esi)
	movb $0,48(%esi)
	movb $0,49(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Constant__Create,.Lfe2-Constant__Create
	.align 16
	.type	 Constant__Declare,@function
Constant__Declare:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	call Constant__Create
	movl %eax,%esi
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,36(%esi)
	movl %ebx,40(%esi)
	pushl %esi
	movl MI_Scope+72,%eax
	call *%eax
	addl $20,%esp
	cmpb $0,16(%ebp)
	je .L12
	pushl %esi
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Scanner+120,%eax
	call *%eax
.L12:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Constant__Declare,.Lfe3-Constant__Declare
	.align 16
	.type	 Constant__TypeOf,@function
Constant__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,36(%ebx)
	jne .L15
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,36(%ebx)
.L15:
	movl 36(%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Constant__TypeOf,.Lfe4-Constant__TypeOf
	.align 16
	.type	 Constant__Check,@function
Constant__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-16(%ebp)
	leal -4(%ebp),%ebx
	pushl %ebx
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 40(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	pushl %esi
	call Constant__TypeOf
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,36(%esi)
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	addl $32,%esp
	movl 36(%esi),%eax
	pushl %eax
	movl MI_ProcType+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L17
	leal -16(%ebp),%eax
	pushl %eax
	movl 40(%esi),%eax
	pushl %eax
	movl MI_UserProc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	movl -16(%ebp),%eax
	testl %eax,%eax
	je .L18
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Constant+348
	jg .L19
	movl MM_Constant+344,%eax
	cmpl %edx,4(%eax)
	jge .L18
.L19:
	pushl $1685
	call _m3_fault
	.align 16
.L18:
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_Procedure+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L17
	pushl $MM_Constant+356
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L17:
	movl 36(%esi),%edx
	cmpl %edx,MI_ErrType+44
	jne .L20
	movb $0,48(%esi)
	movl -12(%ebp),%eax
	cmpl %eax,-8(%ebp)
	jg .L16
	pushl $MM_Constant+404
	movl MI_Error+44,%eax
	call *%eax
	jmp .L16
	.align 16
.L20:
	movl 12(%ebp),%eax
	pushl %eax
	movl 40(%esi),%eax
	pushl %eax
	pushl %edx
	movl MI_AssignStmt+48,%eax
	call *%eax
	movl 40(%esi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	addl $16,%esp
	cmpl $0,40(%esi)
	je .L23
	testl %eax,%eax
	jne .L23
	pushl $MM_Constant+452
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L24
	.align 16
.L23:
	movl %eax,40(%esi)
.L24:
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+88,%eax
	call *%eax
	movb %al,48(%esi)
.L16:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Constant__Check,.Lfe5-Constant__Check
	.align 16
	.type	 Constant__SetGlobals,@function
Constant__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpl $0,44(%esi)
	jne .L25
	cmpb $0,48(%esi)
	je .L25
	leal -20(%ebp),%eax
	pushl %eax
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%edi
	movl -12(%ebp),%ebx
	movl 36(%esi),%eax
	pushl %eax
	movl MI_OpenArrayType+64,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jle .L28
	imull MI_Target+104,%eax
	movl %eax,%edi
	addl MI_Target+68,%edi
	movl MI_Target+64,%eax
	movl MI_Target+100,%ebx
	cmpl %ebx,%eax
	jle .L28
	movl %eax,%ebx
.L28:
	movl 12(%esi),%eax
	pushl %eax
	pushl $MM_Constant+488
	pushl %ebx
	pushl %edi
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,44(%esi)
.L25:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Constant__SetGlobals,.Lfe6-Constant__SetGlobals
	.align 16
	.type	 Constant__Load,@function
Constant__Load:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpb $0,48(%ebx)
	je .L32
	pushl %ebx
	call Constant__SetGlobals
	pushl %ebx
	movl MI_Scope+116,%eax
	call *%eax
	movl %eax,%edx
	movl MI_CG+44,%eax
	pushl %eax
	movl 44(%ebx),%eax
	pushl %eax
	pushl %edx
	movl MI_CG+368,%eax
	call *%eax
	jmp .L31
	.align 16
.L32:
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
.L31:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Constant__Load,.Lfe7-Constant__Load
	.align 16
	.type	 Constant__Declarer,@function
Constant__Declarer:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testb $16,31(%esi)
	je .L35
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	addl $4,%esp
.L35:
	cmpb $0,48(%esi)
	je .L39
	leal -20(%ebp),%eax
	pushl %eax
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%edi
	movl -20(%ebp),%ebx
	movl 36(%esi),%eax
	pushl %eax
	movl MI_OpenArrayType+64,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jle .L37
	imull MI_Target+104,%eax
	movl %eax,%ebx
	addl MI_Target+68,%ebx
.L37:
	testb $8,31(%esi)
	je .L38
	pushl %esi
	movl MI_Scope+116,%eax
	call *%eax
	jmp .L39
	.align 16
.L38:
	pushl %esi
	call Constant__SetGlobals
	addl $4,%esp
	testl %ebx,%ebx
	jge .L40
	pushl $2977
	call _m3_fault
	.align 16
.L40:
	pushl %edi
	pushl %ebx
	movl 44(%esi),%eax
	pushl %eax
	movl 12(%esi),%eax
	pushl %eax
	movl MI_CG+108,%eax
	call *%eax
	movb $1,49(%esi)
.L39:
	movl $1,%eax
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Constant__Declarer,.Lfe8-Constant__Declarer
	.align 16
	.type	 Constant__ConstInit,@function
Constant__ConstInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpb $0,49(%ebx)
	je .L42
	movb $0,49(%ebx)
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_Constant+488
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_CG+788,%eax
	call *%eax
	movl 36(%ebx),%eax
	pushl %eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Expr+236,%eax
	call *%eax
	addl $32,%esp
	movl 36(%ebx),%eax
	pushl %eax
	movl 44(%ebx),%eax
	pushl %eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Expr+240,%eax
	call *%eax
.L42:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Constant__ConstInit,.Lfe9-Constant__ConstInit
	.align 16
	.type	 Constant__ToExpr,@function
Constant__ToExpr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 40(%eax),%eax
	ret
.Lfe10:
	.size	 Constant__ToExpr,.Lfe10-Constant__ToExpr
	.align 16
	.type	 Constant__AddFPTag,@function
Constant__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $1
	movl 44(%ebx),%eax
	pushl %eax
	pushl $MM_Constant+512
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+152,%eax
	call *%eax
	pushl $MM_Constant+532
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 40(%ebx),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
	movl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Constant__AddFPTag,.Lfe11-Constant__AddFPTag
	.align 16
	.type	 M_Constant_te637e81e_LINK,@function
M_Constant_te637e81e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Constant+336,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Constant+156,%eax
	movl %eax,4(%edx)
	movl MM_Constant+160,%eax
	movl %eax,8(%edx)
	movl MM_Constant+164,%eax
	movl %eax,12(%edx)
	movl MM_Constant+168,%eax
	movl %eax,16(%edx)
	movl MM_Constant+172,%eax
	movl %eax,20(%edx)
	movl MI_ValueRep+168,%eax
	movl %eax,24(%edx)
	movl MI_ValueRep+172,%eax
	movl %eax,28(%edx)
	movl %eax,32(%edx)
	movl MM_Constant+176,%eax
	movl %eax,36(%edx)
	movl MI_ValueRep+160,%eax
	movl %eax,40(%edx)
	movl MM_Constant+152,%ecx
	movl %ecx,44(%edx)
	movl MI_ValueRep+184,%eax
	movl %eax,48(%edx)
	movl MM_Constant+180,%eax
	movl %eax,52(%edx)
	movl %ecx,56(%edx)
	popl %ebp
	ret
.Lfe12:
	.size	 M_Constant_te637e81e_LINK,.Lfe12-M_Constant_te637e81e_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Constant
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_Constant
.data
	.align 4
	.type	 MM_Constant,@object
	.size	 MM_Constant,968
MM_Constant:
	.long MM_Constant+772
	.long MM_Constant+44
	.long MM_Constant+336
	.zero	8
	.long MM_Constant+636
	.zero	28
	.long -432543714
.byte 191
.byte 45
.byte 168
.byte 236
.byte 161
.byte 197
.byte 159
.byte 10
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Constant+918
	.long MM_Constant+924
	.long MM_Constant+927
	.zero	4
	.long M_Constant_te637e81e_LINK
	.long -105857942
	.zero	12
	.long MM_Constant+943
	.long MM_Constant+954
	.zero	4
	.long Constant__Create
	.long Constant__TypeOf
	.long Constant__Check
	.long Constant__SetGlobals
	.long Constant__Load
	.long Constant__Declarer
	.long Constant__ConstInit
	.long Constant__ToExpr
	.long Constant__AddFPTag
	.long Constant__ParseDecl
	.long Constant__Declare
	.long 2
	.long MM_Constant+204
	.long 28
	.ascii	"a constant cannot be inline"
	.zero	1
	.long 2
	.long MM_Constant+244
	.long 30
	.ascii	"a constant cannot be external"
	.zero	3
	.long 2
	.long MM_Constant+288
	.long 46
	.ascii	"a constant does not have a calling convention"
	.zero	3
	.long MM_Constant+344
	.long -432543714
	.zero	4
	.long -712670126
	.long 2
	.long MM_Constant+364
	.long 36
	.ascii	"nested procedures are not constants"
	.zero	1
	.long 2
	.long MM_Constant+412
	.long 35
	.ascii	"value is not a constant expression"
	.zero	2
	.long 2
	.long MM_Constant+460
	.long 22
	.ascii	"value is not constant"
	.zero	3
	.long 2
	.long MM_Constant+496
	.long 10
	.ascii	"constant "
	.zero	3
	.long 2
	.long MM_Constant+520
	.long 7
	.ascii	"CONST "
	.zero	2
	.long 2
	.long MM_Constant+540
	.long 4
	.ascii	" = "
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"ToExpr"
	.zero	1
	.ascii	"ConstInit"
	.zero	1
	.ascii	"Declarer"
	.zero	1
	.ascii	"Load"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Declare"
	.zero	1
	.ascii	"Create"
	.zero	1
	.ascii	"ParseDecl"
	.zero	4
	.long Constant__AddFPTag
	.long MM_Constant+544
	.zero	4
	.long Constant__ToExpr
	.long MM_Constant+553
	.zero	4
	.long Constant__ConstInit
	.long MM_Constant+560
	.zero	4
	.long Constant__Declarer
	.long MM_Constant+570
	.zero	4
	.long Constant__Load
	.long MM_Constant+579
	.zero	4
	.long Constant__SetGlobals
	.long MM_Constant+584
	.zero	4
	.long Constant__Check
	.long MM_Constant+595
	.zero	4
	.long Constant__TypeOf
	.long MM_Constant+601
	.zero	4
	.long Constant__Declare
	.long MM_Constant+608
	.long MI_Constant+48
	.long Constant__Create
	.long MM_Constant+616
	.zero	4
	.long Constant__ParseDecl
	.long MM_Constant+623
	.long MI_Constant+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Constant.m3"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 16
.byte 16
.byte 0
.byte 4
.byte 4
.byte 0
.byte 6
.byte 10
.byte 5
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 7
.byte 2
.byte 26
	.ascii	"Constant.T"
	.zero	1
	.ascii	"Constant.T"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
