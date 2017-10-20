	.file	"WhileStmt.mc"
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
	.type	 WhileStmt__Parse,@function
WhileStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_WhileStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $102
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,12(%ebx)
	pushl $55
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	movl %eax,16(%ebx)
	pushl $58
	movl MI_Scanner+108,%eax
	call *%eax
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WhileStmt__Parse,.Lfe1-WhileStmt__Parse
	.align 16
	.type	 WhileStmt__Check,@function
WhileStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_Type+80,%eax
	call *%eax
	addl $16,%esp
	cmpl %eax,MI_Bool+44
	je .L3
	cmpl %ebx,MI_ErrType+44
	je .L3
	pushl $MM_WhileStmt+176
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L3:
	pushl $-1
	movl MI_Marker+76,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
	movl MI_Marker+44,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WhileStmt__Check,.Lfe2-WhileStmt__Check
	.align 16
	.type	 WhileStmt__Compile,@function
WhileStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $3
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,%edi
	leal 2(%edi),%edx
	movl %edx,-4(%ebp)
	pushl %edx
	movl MI_Marker+76,%eax
	call *%eax
	leal 1(%edi),%esi
	pushl %esi
	movl MI_CG+320,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_CG+316,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %eax,%ebx
	movl 4(%edx),%eax
	pushl %eax
	movl MI_CG+72,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_CG+316,%eax
	call *%eax
	addl $36,%esp
	pushl $80
	pushl $-1
	pushl %edi
	movl 8(%ebp),%edx
	movl 12(%edx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl $80
	pushl $-1
	pushl %edi
	movl 8(%ebp),%edx
	movl 12(%edx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	movl -4(%ebp),%edx
	pushl %edx
	movl MI_CG+316,%eax
	call *%eax
	movl MI_Marker+44,%eax
	call *%eax
	movl %ebx,%eax
	orb $1,%al
	leal -16(%ebp),%esp
	andb $253,%al
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WhileStmt__Compile,.Lfe3-WhileStmt__Compile
	.align 16
	.type	 WhileStmt__GetOutcome,@function
WhileStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Stmt+56,%eax
	call *%eax
	orb $1,%al
	andb $253,%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WhileStmt__GetOutcome,.Lfe4-WhileStmt__GetOutcome
	.align 16
	.type	 M_WhileStmt_tb6e6dd6c_LINK,@function
M_WhileStmt_tb6e6dd6c_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_WhileStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_WhileStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_WhileStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_WhileStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_WhileStmt_tb6e6dd6c_LINK,.Lfe5-M_WhileStmt_tb6e6dd6c_LINK
.globl MM_WhileStmt
.data
	.align 4
	.type	 MM_WhileStmt,@object
	.size	 MM_WhileStmt,484
MM_WhileStmt:
	.long MM_WhileStmt+304
	.long MM_WhileStmt+44
	.long MM_WhileStmt+164
	.zero	8
	.long MM_WhileStmt+252
	.zero	28
	.long -1226384020
.byte 157
.byte 31
.byte 59
.byte 183
.byte 241
.byte 194
.byte 221
.byte 1
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_WhileStmt+450
	.long MM_WhileStmt+453
	.long MM_WhileStmt+456
	.zero	4
	.long M_WhileStmt_tb6e6dd6c_LINK
	.long 1595657850
	.zero	16
	.long MM_WhileStmt+469
	.zero	4
	.long WhileStmt__Check
	.long WhileStmt__Compile
	.long WhileStmt__GetOutcome
	.long WhileStmt__Parse
	.zero	4
	.long -1226384020
	.long 2
	.long MM_WhileStmt+184
	.long 34
	.ascii	"WHILE condition must be a BOOLEAN"
	.zero	3
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long WhileStmt__GetOutcome
	.long MM_WhileStmt+220
	.zero	4
	.long WhileStmt__Compile
	.long MM_WhileStmt+231
	.zero	4
	.long WhileStmt__Check
	.long MM_WhileStmt+239
	.zero	4
	.long WhileStmt__Parse
	.long MM_WhileStmt+245
	.long MI_WhileStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/WhileStmt.m3"
	.zero	1
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 16
.byte 122
.byte 206
.byte 27
.byte 95
	.ascii	"WhileStmt.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
