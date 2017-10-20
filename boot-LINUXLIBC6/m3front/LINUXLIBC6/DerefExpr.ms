	.file	"DerefExpr.mc"
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
	.type	 DerefExpr__New,@function
DerefExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_DerefExpr+184,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_ExprRep+460,%eax
	call *%eax
	pushl %ebx
	movl MI_NilChkExpr+44,%eax
	call *%eax
	movl %eax,16(%esi)
	movl 4(%eax),%eax
	movl %eax,4(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 DerefExpr__New,.Lfe1-DerefExpr__New
	.align 16
	.type	 DerefExpr__SetOffset,@function
DerefExpr__SetOffset:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L2
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_DerefExpr+188
	jg .L2
	movl MM_DerefExpr+184,%eax
	cmpl %edx,4(%eax)
	jl .L2
	pushl %ebx
	movl 16(%ecx),%eax
	pushl %eax
	movl MI_NilChkExpr+48,%eax
	call *%eax
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 DerefExpr__SetOffset,.Lfe2-DerefExpr__SetOffset
	.align 16
	.type	 DerefExpr__TypeOf,@function
DerefExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RefType+64,%eax
	call *%eax
	testl %eax,%eax
	jne .L10
	movl MI_ErrType+44,%eax
	jmp .L11
	.align 16
.L10:
	movl -4(%ebp),%eax
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 DerefExpr__TypeOf,.Lfe3-DerefExpr__TypeOf
	.align 16
	.type	 DerefExpr__Check,@function
DerefExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
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
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl $0,-4(%ebp)
	addl $16,%esp
	cmpl %edx,MI_ErrType+44
	jne .L13
	movl %edx,-4(%ebp)
	jmp .L14
	.align 16
.L13:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RefType+64,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L15
	pushl $MM_DerefExpr+196
	jmp .L17
	.align 16
.L15:
	cmpl $0,-4(%ebp)
	jne .L14
	pushl $MM_DerefExpr+244
.L17:
	movl MI_Error+44,%eax
	call *%eax
	movl MI_ErrType+44,%eax
	movl %eax,-4(%ebp)
.L14:
	movl -4(%ebp),%eax
	movl %eax,8(%ebx)
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 DerefExpr__Check,.Lfe4-DerefExpr__Check
	.align 16
	.type	 DerefExpr__NeedsAddress,@function
DerefExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 DerefExpr__NeedsAddress,.Lfe5-DerefExpr__NeedsAddress
	.align 16
	.type	 DerefExpr__Prep,@function
DerefExpr__Prep:
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
.Lfe6:
	.size	 DerefExpr__Prep,.Lfe6-DerefExpr__Prep
	.align 16
	.type	 DerefExpr__Compile,@function
DerefExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 8(%eax),%ebx
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	movl MI_CG+240,%eax
	call *%eax
	movl -12(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L21
	pushl $1633
	call _m3_fault
	.align 16
.L21:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	pushl %ebx
	movl MI_Type+92,%eax
	call *%eax
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 DerefExpr__Compile,.Lfe7-DerefExpr__Compile
	.align 16
	.type	 DerefExpr__CompileLV,@function
DerefExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl MI_CG+240,%eax
	call *%eax
	movl -12(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L23
	pushl $1793
	call _m3_fault
	.align 16
.L23:
	pushl %eax
	movl MI_CG+720,%eax
	call *%eax
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 DerefExpr__CompileLV,.Lfe8-DerefExpr__CompileLV
	.align 16
	.type	 DerefExpr__NoteWrites,@function
DerefExpr__NoteWrites:
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
	.size	 DerefExpr__NoteWrites,.Lfe9-DerefExpr__NoteWrites
	.align 16
	.type	 M_DerefExpr_tefa3c544_LINK,@function
M_DerefExpr_tefa3c544_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_DerefExpr+184,%eax
	movl MM_DerefExpr+148,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_DerefExpr+152,%edx
	movl %edx,8(%eax)
	movl MM_DerefExpr+156,%edx
	movl %edx,36(%eax)
	movl MM_DerefExpr+160,%ecx
	movl %ecx,52(%eax)
	movl MM_DerefExpr+164,%edx
	movl %edx,56(%eax)
	movl %ecx,60(%eax)
	movl MM_DerefExpr+168,%edx
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MI_ExprRep+476,%edx
	movl %edx,16(%eax)
	movl MI_ExprRep+540,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+492,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MM_DerefExpr+172,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe10:
	.size	 M_DerefExpr_tefa3c544_LINK,.Lfe10-M_DerefExpr_tefa3c544_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_DerefExpr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_DerefExpr
.data
	.align 4
	.type	 MM_DerefExpr,@object
	.size	 MM_DerefExpr,660
MM_DerefExpr:
	.long MM_DerefExpr+484
	.long MM_DerefExpr+44
	.long MM_DerefExpr+184
	.zero	8
	.long MM_DerefExpr+372
	.zero	28
	.long -274479804
.byte 156
.byte 61
.byte 55
.byte 236
.byte 216
.byte 248
.byte 148
.byte 3
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_DerefExpr+630
	.zero	4
	.long M_DerefExpr_tefa3c544_LINK
	.long 508464328
	.zero	12
	.long MM_DerefExpr+633
	.long MM_DerefExpr+645
	.zero	4
	.long DerefExpr__TypeOf
	.long DerefExpr__Check
	.long DerefExpr__NeedsAddress
	.long DerefExpr__Prep
	.long DerefExpr__Compile
	.long DerefExpr__CompileLV
	.long DerefExpr__NoteWrites
	.long DerefExpr__New
	.long DerefExpr__SetOffset
	.zero	4
	.long -274479804
	.long 2
	.long MM_DerefExpr+204
	.long 35
	.ascii	"cannot dereference a non-REF value"
	.zero	2
	.long 2
	.long MM_DerefExpr+252
	.long 44
	.ascii	"cannot dereference REFANY, ADDRESS, or NULL"
	.zero	1
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"SetOffset"
	.zero	1
	.ascii	"New"
	.zero	3
	.long DerefExpr__NoteWrites
	.long MM_DerefExpr+296
	.zero	4
	.long DerefExpr__CompileLV
	.long MM_DerefExpr+307
	.zero	4
	.long DerefExpr__Compile
	.long MM_DerefExpr+317
	.zero	4
	.long DerefExpr__Prep
	.long MM_DerefExpr+325
	.zero	4
	.long DerefExpr__NeedsAddress
	.long MM_DerefExpr+330
	.zero	4
	.long DerefExpr__Check
	.long MM_DerefExpr+343
	.zero	4
	.long DerefExpr__TypeOf
	.long MM_DerefExpr+349
	.zero	4
	.long DerefExpr__SetOffset
	.long MM_DerefExpr+356
	.long MI_DerefExpr+48
	.long DerefExpr__New
	.long MM_DerefExpr+366
	.long MI_DerefExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/DerefExpr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"DerefExpr.P"
	.zero	1
	.ascii	"DerefExpr.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
