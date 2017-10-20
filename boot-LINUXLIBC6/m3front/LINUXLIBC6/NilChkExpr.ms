	.file	"NilChkExpr.mc"
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
	.type	 NilChkExpr__New,@function
NilChkExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	cmpb $0,MI_Host+89
	je .L2
	movl %esi,%eax
	testl %esi,%esi
	je .L3
	movl -4(%esi),%eax
	sall $11,%eax
	shrl $12,%eax
.L3:
	cmpl %eax,MM_NilChkExpr+188
	jne .L4
.L2:
	movl %esi,%eax
	jmp .L5
	.align 16
.L4:
	movl MM_NilChkExpr+184,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_ExprRep+460,%eax
	call *%eax
	movl 4(%esi),%eax
	movl %eax,4(%ebx)
	movl %esi,16(%ebx)
	movl $2147483647,20(%ebx)
	movl %ebx,%eax
.L5:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 NilChkExpr__New,.Lfe1-NilChkExpr__New
	.align 16
	.type	 NilChkExpr__SetOffset,@function
NilChkExpr__SetOffset:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L6
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_NilChkExpr+188
	jg .L6
	movl MM_NilChkExpr+184,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl 20(%ecx),%edx
	movl 12(%ebp),%eax
	cmpl %edx,%eax
	jle .L13
	movl %edx,%eax
.L13:
	movl %eax,20(%ecx)
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NilChkExpr__SetOffset,.Lfe2-NilChkExpr__SetOffset
	.align 16
	.type	 NilChkExpr__TypeOf,@function
NilChkExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NilChkExpr__TypeOf,.Lfe3-NilChkExpr__TypeOf
	.align 16
	.type	 NilChkExpr__Check,@function
NilChkExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,8(%ebx)
	leal -24(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RefType+64,%eax
	call *%eax
	addl $24,%esp
	testl %eax,%eax
	je .L15
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_OpenArrayType+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L17
	movl MI_M3RT+292,%edx
	movl MI_M3RT+300,%eax
	cmpl %edx,%eax
	jle .L19
	movl %edx,%eax
	jmp .L19
	.align 16
.L17:
	leal -20(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -20(%ebp),%eax
.L19:
	movl 20(%ebx),%edx
	cmpl %edx,%eax
	jle .L20
	movl %edx,%eax
.L20:
	movl %eax,20(%ebx)
.L15:
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 NilChkExpr__Check,.Lfe4-NilChkExpr__Check
	.align 16
	.type	 NilChkExpr__Prep,@function
NilChkExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 NilChkExpr__Prep,.Lfe5-NilChkExpr__Prep
	.align 16
	.type	 NilChkExpr__Compile,@function
NilChkExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MI_Target+784,%ebx
	imull MI_Target+600,%ebx
	testl %ebx,%ebx
	jge .L23
	pushl $1361
	call _m3_fault
	.align 16
.L23:
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jl .L24
	cmpl %ebx,%eax
	jl .L22
.L24:
	movl MI_CG+680,%eax
	call *%eax
.L22:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 NilChkExpr__Compile,.Lfe6-NilChkExpr__Compile
	.align 16
	.type	 NilChkExpr__Fold,@function
NilChkExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %eax,%eax
	je .L30
	leal -8(%ebp),%ebx
	pushl %ebx
	pushl %eax
	movl MI_AddressExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L30
	pushl $MI_TInt+44
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	testl %eax,%eax
	jne .L29
	movl %esi,%eax
	jmp .L30
	.align 16
.L29:
	xorl %eax,%eax
.L30:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 NilChkExpr__Fold,.Lfe7-NilChkExpr__Fold
	.align 16
	.type	 NilChkExpr__Bounder,@function
NilChkExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 NilChkExpr__Bounder,.Lfe8-NilChkExpr__Bounder
	.align 16
	.type	 NilChkExpr__NoteWrites,@function
NilChkExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 NilChkExpr__NoteWrites,.Lfe9-NilChkExpr__NoteWrites
	.align 16
	.type	 M_NilChkExpr_t2fd711b6_LINK,@function
M_NilChkExpr_t2fd711b6_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_NilChkExpr+184,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_NilChkExpr+148,%eax
	movl %eax,4(%edx)
	movl MM_NilChkExpr+152,%eax
	movl %eax,8(%edx)
	movl MI_ExprRep+464,%eax
	movl %eax,36(%edx)
	movl MM_NilChkExpr+156,%eax
	movl %eax,52(%edx)
	movl MM_NilChkExpr+160,%eax
	movl %eax,56(%edx)
	movl MI_ExprRep+520,%eax
	movl %eax,60(%edx)
	movl %eax,64(%edx)
	movl MI_ExprRep+524,%eax
	movl %eax,68(%edx)
	movl %eax,72(%edx)
	movl MM_NilChkExpr+164,%eax
	movl %eax,16(%edx)
	movl MI_ExprRep+540,%eax
	movl %eax,12(%edx)
	movl MM_NilChkExpr+168,%eax
	movl %eax,20(%edx)
	movl MI_ExprRep+488,%eax
	movl %eax,24(%edx)
	movl %eax,28(%edx)
	movl %eax,32(%edx)
	movl MI_ExprRep+500,%eax
	movl %eax,40(%edx)
	movl MI_ExprRep+504,%eax
	movl %eax,44(%edx)
	movl MI_ExprRep+508,%eax
	movl %eax,48(%edx)
	movl MM_NilChkExpr+172,%eax
	movl %eax,76(%edx)
	popl %ebp
	ret
.Lfe10:
	.size	 M_NilChkExpr_t2fd711b6_LINK,.Lfe10-M_NilChkExpr_t2fd711b6_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_NilChkExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_NilChkExpr
.data
	.align 4
	.type	 MM_NilChkExpr,@object
	.size	 MM_NilChkExpr,548
MM_NilChkExpr:
	.long MM_NilChkExpr+368
	.long MM_NilChkExpr+44
	.long MM_NilChkExpr+184
	.zero	8
	.long MM_NilChkExpr+256
	.zero	28
	.long 802623926
.byte 116
.byte 115
.byte 89
.byte 58
.byte 194
.byte 98
.byte 142
.byte 21
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_NilChkExpr+515
	.zero	4
	.long MM_NilChkExpr+517
	.zero	4
	.long M_NilChkExpr_t2fd711b6_LINK
	.long 508464328
	.zero	12
	.long MM_NilChkExpr+521
	.long MM_NilChkExpr+534
	.zero	4
	.long NilChkExpr__TypeOf
	.long NilChkExpr__Check
	.long NilChkExpr__Prep
	.long NilChkExpr__Compile
	.long NilChkExpr__Fold
	.long NilChkExpr__Bounder
	.long NilChkExpr__NoteWrites
	.long NilChkExpr__New
	.long NilChkExpr__SetOffset
	.zero	4
	.long 802623926
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"Bounder"
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
	.zero	1
	.ascii	"SetOffset"
	.zero	1
	.ascii	"New"
	.zero	1
	.long NilChkExpr__NoteWrites
	.long MM_NilChkExpr+192
	.zero	4
	.long NilChkExpr__Bounder
	.long MM_NilChkExpr+203
	.zero	4
	.long NilChkExpr__Fold
	.long MM_NilChkExpr+211
	.zero	4
	.long NilChkExpr__Compile
	.long MM_NilChkExpr+216
	.zero	4
	.long NilChkExpr__Prep
	.long MM_NilChkExpr+224
	.zero	4
	.long NilChkExpr__Check
	.long MM_NilChkExpr+229
	.zero	4
	.long NilChkExpr__TypeOf
	.long MM_NilChkExpr+235
	.zero	4
	.long NilChkExpr__SetOffset
	.long MM_NilChkExpr+242
	.long MI_NilChkExpr+48
	.long NilChkExpr__New
	.long MM_NilChkExpr+252
	.long MI_NilChkExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/NilChkExpr.m3"
	.zero	1
.byte 14
.byte 0
.byte 2
.byte 10
.byte 1
.byte 7
	.ascii	"NilChkExpr.P"
	.zero	1
	.ascii	"NilChkExpr.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
