	.file	"IfStmt.mc"
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
	.type	 IfStmt__Parse,@function
IfStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_IfStmt+268,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $68
	movl MI_Scanner+108,%eax
	call *%eax
	movl MM_IfStmt+276,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	xorl %esi,%esi
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $16,%esp
	testl %edx,%edx
	jne .L2
	pushl $644
	call _m3_fault
	.align 16
.L2:
	movl MI_Scanner+88,%eax
	movl %eax,(%edx)
	movl %esi,4(%edx)
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,8(%ebx)
	pushl $92
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,12(%ebx)
	movl %ebx,12(%edi)
	movl %esi,16(%edi)
	jmp .L15
	.align 16
.L7:
	movl MI_Scanner+104,%eax
	call *%eax
	movl MM_IfStmt+276,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	addl $4,%esp
	testl %edx,%edx
	jne .L8
	pushl $836
	call _m3_fault
	.align 16
.L8:
	movl MI_Scanner+88,%eax
	movl %eax,(%edx)
	movl $0,4(%edx)
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,8(%ebx)
	pushl $92
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	addl $4,%esp
	movl %eax,12(%ebx)
	testl %esi,%esi
	jne .L12
	pushl $916
	call _m3_fault
	.align 16
.L12:
	movl %ebx,4(%esi)
.L15:
	movl %ebx,%esi
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $57,%eax
	je .L7
	cmpl $56,%eax
	jne .L14
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,16(%edi)
.L14:
	pushl $58
	movl MI_Scanner+108,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IfStmt__Parse,.Lfe1-IfStmt__Parse
	.align 16
	.type	 IfStmt__Check,@function
IfStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%edi),%ebx
	jmp .L17
	.align 16
.L18:
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	addl $8,%esp
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Type+80,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,MI_Bool+44
	je .L21
	cmpl %esi,MI_ErrType+44
	je .L21
	movl (%ebx),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_IfStmt+288
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L21:
	testl %ebx,%ebx
	jne .L23
	pushl $1300
	call _m3_fault
	.align 16
.L23:
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
	addl $8,%esp
	movl 4(%ebx),%ebx
.L17:
	testl %ebx,%ebx
	jne .L18
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 IfStmt__Check,.Lfe2-IfStmt__Check
	.align 16
	.type	 IfStmt__Compile,@function
IfStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb $0,-4(%ebp)
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,-8(%ebp)
	movl 8(%ebp),%edx
	xorl %esi,%esi
	addl $4,%esp
	movl 12(%edx),%ebx
	jmp .L27
	.align 16
.L28:
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
	movl (%ebx),%eax
	movl %eax,MI_Scanner+88
	pushl %eax
	movl MI_CG+72,%eax
	call *%eax
	addl $4,%esp
	pushl $20
	pushl %edi
	pushl $-1
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	addl $16,%esp
	pushl $20
	pushl %edi
	pushl $-1
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	addl $16,%esp
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	orl %eax,%esi
	addl $4,%esp
	testb $1,%al
	je .L33
	cmpl $0,4(%ebx)
	jne .L35
	movl 8(%ebp),%edx
	cmpl $0,16(%edx)
	je .L33
.L35:
	movl -8(%ebp),%edx
	pushl %edx
	movl MI_CG+320,%eax
	call *%eax
	movb $1,-4(%ebp)
	addl $4,%esp
.L33:
	pushl $0
	pushl %edi
	movl MI_CG+316,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L36
	pushl $1812
	call _m3_fault
	.align 16
.L36:
	movl 4(%ebx),%ebx
.L27:
	testl %ebx,%ebx
	jne .L28
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L38
	orl $1,%esi
	jmp .L39
	.align 16
.L38:
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	orl %eax,%esi
	addl $4,%esp
.L39:
	cmpb $0,-4(%ebp)
	je .L40
	pushl $0
	movl -8(%ebp),%edx
	pushl %edx
	movl MI_CG+316,%eax
	call *%eax
.L40:
	leal -20(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 IfStmt__Compile,.Lfe3-IfStmt__Compile
	.align 16
	.type	 IfStmt__GetOutcome,@function
IfStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	movl 12(%edi),%esi
	jmp .L42
	.align 16
.L43:
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Stmt+56,%eax
	call *%eax
	orl %eax,%ebx
	addl $4,%esp
	movl 4(%esi),%esi
.L42:
	testl %esi,%esi
	jne .L43
	movl 16(%edi),%eax
	testl %eax,%eax
	jne .L47
	orb $1,%bl
	jmp .L48
	.align 16
.L47:
	pushl %eax
	movl MI_Stmt+56,%eax
	call *%eax
	orl %eax,%ebx
.L48:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 IfStmt__GetOutcome,.Lfe4-IfStmt__GetOutcome
	.align 16
	.type	 M_IfStmt_tdf00c0b4_LINK,@function
M_IfStmt_tdf00c0b4_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_IfStmt+268,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_IfStmt+252,%eax
	movl %eax,4(%edx)
	movl MM_IfStmt+256,%eax
	movl %eax,8(%edx)
	movl MM_IfStmt+260,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_IfStmt_tdf00c0b4_LINK,.Lfe5-M_IfStmt_tdf00c0b4_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_IfStmt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_IfStmt
.data
	.align 4
	.type	 MM_IfStmt,@object
	.size	 MM_IfStmt,628
MM_IfStmt:
	.long MM_IfStmt+412
	.long MM_IfStmt+44
	.long MM_IfStmt+268
	.zero	8
	.long MM_IfStmt+360
	.zero	28
	.long -553598796
.byte 162
.byte 81
.byte 195
.byte 199
.byte 22
.byte 145
.byte 195
.byte 24
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_IfStmt+598
	.long MM_IfStmt+601
	.long MM_IfStmt+604
	.zero	4
	.long M_IfStmt_tdf00c0b4_LINK
	.long 1595657850
	.zero	16
	.long MM_IfStmt+617
	.long MM_IfStmt+148
	.zero	8
	.long -497317916
.byte 183
.byte 140
.byte 99
.byte 241
.byte 83
.byte 11
.byte 56
.byte 19
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_IfStmt+555
	.long MM_IfStmt+560
	.long MM_IfStmt+565
	.zero	28
	.long MM_IfStmt+584
	.zero	4
	.long IfStmt__Check
	.long IfStmt__Compile
	.long IfStmt__GetOutcome
	.long IfStmt__Parse
	.long MM_IfStmt+276
	.long -553598796
	.zero	4
	.long -497317916
	.long 2
	.long MM_IfStmt+296
	.long 31
	.ascii	"IF condition must be a BOOLEAN"
	.zero	2
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long IfStmt__GetOutcome
	.long MM_IfStmt+328
	.zero	4
	.long IfStmt__Compile
	.long MM_IfStmt+339
	.zero	4
	.long IfStmt__Check
	.long MM_IfStmt+347
	.zero	4
	.long IfStmt__Parse
	.long MM_IfStmt+353
	.long MI_IfStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/IfStmt.m3"
	.zero	1
.byte 14
.byte 4
.byte 4
.byte 4
.byte 0
.byte 37
.byte 4
.byte 4
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 7
.byte 16
.byte 228
.byte 135
.byte 91
.byte 226
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
	.ascii	"IfStmt.Clause"
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
.byte 228
.byte 135
.byte 91
.byte 226
.byte 16
.byte 122
.byte 206
.byte 27
.byte 95
	.ascii	"IfStmt.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
