	.file	"Stmt.mc"
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
.section	.rodata
	.align 4
	.type	 L_1.0,@object
	.size	 L_1.0,412
L_1.0:
	.long .L4
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L4
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L5
	.long .L5
	.long .L6
	.long .L5
	.long .L5
	.long .L3
	.long .L5
	.long .L5
	.long .L3
	.long .L3
	.long .L4
	.long .L3
	.long .L5
	.long .L3
	.long .L3
	.long .L3
	.long .L7
	.long .L5
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L8
	.long .L3
	.long .L5
	.long .L9
	.long .L3
	.long .L3
	.long .L10
	.long .L3
	.long .L3
	.long .L11
	.long .L3
	.long .L3
	.long .L3
	.long .L12
	.long .L13
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L5
	.long .L14
	.long .L3
	.long .L3
	.long .L4
	.long .L3
	.long .L15
	.long .L16
	.long .L5
	.long .L3
	.long .L3
	.long .L3
	.long .L17
	.long .L5
	.long .L18
	.long .L3
	.long .L3
	.long .L3
	.long .L3
	.long .L5
	.long .L19
	.long .L20
.text
	.align 16
	.type	 Stmt__Parse,@function
Stmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	movl %esi,%edi
	pushl %ebx
.L2:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	decl %eax
	js .L30
	jmp *L_1.0(,%eax,4)
	.align 16
.L5:
	pushl $1
	movl MI_BlockStmt+44,%eax
	call *%eax
	addl $4,%esp
	jmp .L21
	.align 16
.L4:
	movl MI_AssignStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L6:
	movl MI_AssertStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L7:
	movl MI_CaseStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L9:
	movl MI_ExitStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L8:
	movl MI_EvalStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L10:
	movl MI_ForStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L11:
	movl MI_IfStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L12:
	movl MI_LockStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L13:
	movl MI_LoopStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L14:
	movl MI_RaiseStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L15:
	movl MI_RepeatStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L16:
	movl MI_ReturnStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L17:
	movl MI_TryStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L18:
	movl MI_TypeCaseStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L19:
	movl MI_WhileStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L20:
	movl MI_WithStmt+44,%eax
	call *%eax
	jmp .L21
	.align 16
.L3:
	jmp .L30
	.align 16
.L21:
	testl %esi,%esi
	jne .L22
	movl %eax,%esi
	jmp .L23
	.align 16
.L22:
	movl %eax,8(%edi)
.L23:
	movl %eax,%edi
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $16,%eax
	jne .L24
	movl MI_Scanner+104,%eax
	call *%eax
	movl $-1,%ebx
	jmp .L25
	.align 16
.L26:
	cmpl %ebx,MI_Scanner+88
	je .L27
	pushl $MM_Stmt+68
	movl MI_Error+44,%eax
	call *%eax
	movl MI_Scanner+88,%ebx
	addl $4,%esp
.L27:
	movl MI_Scanner+104,%eax
	call *%eax
.L25:
	cmpb $16,MI_Scanner+44
	je .L26
	jmp .L2
	.align 16
.L24:
	pushl $MI_Token+108
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L30
	xorl %edx,%edx
	movb MI_Scanner+44,%dl
	movl MI_Token+124,%eax
	movl (%eax,%edx,4),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_Stmt+96
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Stmt+132
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Error+44,%eax
	call *%eax
	addl $24,%esp
	jmp .L2
	.align 16
.L30:
	movl %esi,%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Stmt__Parse,.Lfe1-Stmt__Parse
	.align 16
	.type	 StmtRep__Init,@function
StmtRep__Init:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl %ebp,%esp
	movl $0,8(%edx)
	movl MI_Scanner+88,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe2:
	.size	 StmtRep__Init,.Lfe2-StmtRep__Init
	.align 16
	.type	 Stmt__TypeCheck,@function
Stmt__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L35
	.align 16
.L36:
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	movl MI_Coverage+44,%eax
	call *%eax
	movl (%ebx),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl 8(%ebx),%ebx
	addl $8,%esp
.L35:
	testl %ebx,%ebx
	jne .L36
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Stmt__TypeCheck,.Lfe3-Stmt__TypeCheck
	.align 16
	.type	 Stmt__Compile,@function
Stmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	movl $1,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L39
	.align 16
.L40:
	movl MI_CG+216,%eax
	call *%eax
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_CG+72,%eax
	call *%eax
	movl MI_Coverage+56,%eax
	call *%eax
	movl MI_Tracer+160,%eax
	call *%eax
	movl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %ebx
	call *%eax
	orl %eax,%esi
	movl %eax,%edi
	andl $1,%edi
	addl $8,%esp
	testl %edi,%edi
	je .L41
	movl 8(%ebx),%ebx
	jmp .L39
	.align 16
.L41:
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L43
	movl 4(%eax),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_Stmt+156
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L43:
	movl %edi,%ebx
	andl $-2,%esi
.L39:
	testl %ebx,%ebx
	jne .L40
	movl MI_Tracer+160,%eax
	call *%eax
	movl MI_CG+216,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Stmt__Compile,.Lfe4-Stmt__Compile
	.align 16
	.type	 Stmt__GetOutcome,@function
Stmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	movl $1,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L46
	.align 16
.L47:
	movl (%ebx),%eax
	movl 12(%eax),%eax
	pushl %ebx
	call *%eax
	orl %eax,%esi
	andl $1,%eax
	addl $4,%esp
	testl %eax,%eax
	je .L48
	movl 8(%ebx),%ebx
	jmp .L46
	.align 16
.L48:
	movl %eax,%ebx
	andl $-2,%esi
.L46:
	testl %ebx,%ebx
	jne .L47
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Stmt__GetOutcome,.Lfe5-Stmt__GetOutcome
.globl MM_Stmt
.data
	.align 4
	.type	 MM_Stmt,@object
	.size	 MM_Stmt,436
MM_Stmt:
	.long MM_Stmt+292
	.zero	16
	.long MM_Stmt+228
	.zero	20
	.long StmtRep__Init
	.long Stmt__Parse
	.long Stmt__TypeCheck
	.long Stmt__Compile
	.long Stmt__GetOutcome
	.long 2
	.long MM_Stmt+76
	.long 16
	.ascii	"empty statement"
	.zero	1
	.long 2
	.long MM_Stmt+104
	.long 21
	.ascii	"expected \";\", found "
	.zero	4
	.long 2
	.long MM_Stmt+140
	.long 9
	.ascii	" instead"
	.zero	4
	.long 2
	.long MM_Stmt+164
	.long 22
	.ascii	"unreachable statement"
	.zero	3
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"TypeCheck"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.long Stmt__GetOutcome
	.long MM_Stmt+188
	.long MI_Stmt+56
	.long Stmt__Compile
	.long MM_Stmt+199
	.long MI_Stmt+52
	.long Stmt__TypeCheck
	.long MM_Stmt+207
	.long MI_Stmt+48
	.long StmtRep__Init
	.long MM_Stmt+217
	.long MI_StmtRep+148
	.long Stmt__Parse
	.long MM_Stmt+222
	.long MI_Stmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/Stmt.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
