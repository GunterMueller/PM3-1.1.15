	.file	"Dec.mc"
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
	.type	 Dec__Check,@function
Dec__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $MM_Dec+72
	call Dec__DoCheck
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Dec__Check,.Lfe1-Dec__Check
	.align 16
	.type	 Dec__DoCheck,@function
Dec__DoCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edi
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L3
	pushl $388
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $386
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Type+104,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L5
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L6
	movl MI_Module+68,%eax
	call *%eax
	testl %eax,%eax
	je .L9
	pushl $MM_Dec+88
	jmp .L18
	.align 16
.L6:
	pushl $MM_Dec+120
	jmp .L18
	.align 16
.L5:
	pushl %ebx
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L10
	pushl $MM_Dec+176
	jmp .L18
	.align 16
.L10:
	pushl %ebx
	movl MI_Expr+172,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	pushl $MM_Dec+224
.L18:
	pushl %edi
	movl MI_Error+60,%eax
	call *%eax
	addl $8,%esp
	jmp .L9
	.align 16
.L11:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_NamedExpr+56,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L9
	pushl %ebx
	movl MI_Expr+184,%eax
	call *%eax
	addl $4,%esp
.L9:
	movl 12(%ebp),%ecx
	movl 20(%ecx),%eax
	testl %eax,%eax
	jne .L13
	pushl $676
	call _m3_fault
	.align 16
.L13:
	movl 4(%eax),%edx
	cmpl $1,%edx
	jle .L14
	ja .L16
	pushl $690
	call _m3_fault
	.align 16
.L16:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,MI_Int+44
	je .L14
	pushl $MM_Dec+268
	pushl %edi
	movl MI_Error+60,%eax
	call *%eax
.L14:
	movl 12(%ebp),%ecx
	movl $0,8(%ecx)
	movl 16(%ebp),%eax
	leal -16(%ebp),%esp
	incl 12(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Dec__DoCheck,.Lfe2-Dec__DoCheck
	.align 16
	.type	 Dec__Prep,@function
Dec__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L20
	pushl $868
	call _m3_fault
	.align 16
.L20:
	cmpl $0,4(%eax)
	jne .L21
	pushl $866
	call _m3_fault
	.align 16
.L21:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L22
	pushl $884
	call _m3_fault
	.align 16
.L22:
	movl 4(%eax),%edx
	cmpl $1,%edx
	jle .L19
	ja .L25
	pushl $882
	call _m3_fault
	.align 16
.L25:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
.L19:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Dec__Prep,.Lfe3-Dec__Prep
	.align 16
	.type	 Dec__Compile,@function
Dec__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-52(%ebp)
	movl $0,-48(%ebp)
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L27
	pushl $964
	call _m3_fault
	.align 16
.L27:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L28
	pushl $962
	call _m3_fault
	.align 16
.L28:
	movl (%edx),%eax
	movl (%eax),%eax
	movl %eax,-60(%ebp)
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movb $0,-56(%ebp)
	leal -52(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L29
	pushl $1108
	call _m3_fault
	.align 16
.L29:
	movl 4(%eax),%ebx
	cmpl $1,%ebx
	jle .L30
	movl %eax,%edx
	ja .L32
	pushl $1122
	call _m3_fault
	.align 16
.L32:
	movl (%edx),%eax
	movl 4(%eax),%edi
	jmp .L33
	.align 16
.L30:
	pushl $MI_TInt+52
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_Expr+200,%eax
	call *%eax
	addl $8,%esp
.L33:
	leal -24(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%ebx
	pushl %ebx
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+164,%eax
	call *%eax
	leal -8(%ebp),%esi
	pushl %esi
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_Expr+164,%eax
	call *%eax
	addl $24,%esp
	cmpb $0,MI_Host+84
	je .L34
	pushl $MI_Target+112
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L35
	pushl %esi
	pushl $MI_TInt+44
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L35
	xorl %eax,%eax
	movb -56(%ebp),%al
	incl %eax
	cmpl $3,%eax
	jle .L36
	pushl $1249
	call _m3_fault
	.align 16
.L36:
	movb %al,-56(%ebp)
.L35:
	pushl $MI_Target+120
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L34
	pushl $MI_TInt+44
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L34
	xorl %eax,%eax
	movb -56(%ebp),%al
	addl $2,%eax
	cmpl $3,%eax
	jle .L38
	pushl $1281
	call _m3_fault
	.align 16
.L38:
	movb %al,-56(%ebp)
.L34:
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+212,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl -52(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L39
	pushl $1409
	call _m3_fault
	.align 16
.L39:
	pushl %eax
	pushl $0
	xorl %eax,%eax
	movb -36(%ebp),%al
	pushl %eax
	movl MI_CG+376,%eax
	call *%eax
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	addl $16,%esp
	movb -36(%ebp),%bl
	testb %bl,%bl
	jne .L40
	pushl $-8
	movl MI_CG+712,%eax
	call *%eax
	movb %bl,-56(%ebp)
	jmp .L49
	.align 16
.L40:
	pushl $2
	movl MI_CG+464,%eax
	call *%eax
.L49:
	addl $4,%esp
	xorl %eax,%eax
	movb -56(%ebp),%al
	testl %eax,%eax
	jle .L46
	cmpl $1,%eax
	jle .L43
	cmpl $2,%eax
	jle .L44
	cmpl $3,%eax
	jle .L45
	jmp .L46
	.align 16
.L43:
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_CG+684,%eax
	jmp .L50
	.align 16
.L44:
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_CG+688,%eax
.L50:
	call *%eax
	addl $4,%esp
	jmp .L46
	.align 16
.L45:
	leal -24(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_CG+692,%eax
	call *%eax
	addl $8,%esp
.L46:
	movl -52(%ebp),%eax
	testl %eax,%eax
	jge .L48
	pushl $1649
	call _m3_fault
	.align 16
.L48:
	pushl %eax
	pushl $0
	xorl %eax,%eax
	movb -36(%ebp),%al
	pushl %eax
	movl MI_CG+400,%eax
	call *%eax
	pushl %esi
	movl MI_CG+232,%eax
	call *%eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+228,%eax
	call *%eax
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Dec__Compile,.Lfe4-Dec__Compile
	.align 16
	.type	 Dec__Initialize,@function
Dec__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Dec+56,%eax
	pushl %eax
	movl MM_Dec+52,%eax
	pushl %eax
	movl MM_Dec+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $1
	pushl $0
	pushl $0
	pushl $2
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Dec+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Dec+72
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Dec__Initialize,.Lfe5-Dec__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Dec
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_Dec
.data
	.align 4
	.type	 MM_Dec,@object
	.size	 MM_Dec,568
MM_Dec:
	.long MM_Dec+420
	.zero	16
	.long MM_Dec+352
	.zero	4
	.long MM_Dec+416
	.long MM_Dec+416
	.zero	12
	.long Dec__Check
	.long Dec__Prep
	.long Dec__Compile
	.long Dec__Initialize
	.long Dec__DoCheck
	.long 2
	.long MM_Dec+80
	.long 4
	.ascii	"DEC"
	.zero	1
	.long 2
	.long MM_Dec+96
	.long 17
	.ascii	"unsafe operation"
	.zero	4
	.long 2
	.long MM_Dec+128
	.long 42
	.ascii	"first argument must be of an ordinal type"
	.zero	3
	.long 2
	.long MM_Dec+184
	.long 34
	.ascii	"first argument must be a variable"
	.zero	3
	.long 2
	.long MM_Dec+232
	.long 32
	.ascii	"first argument must be writable"
	.zero	1
	.long 2
	.long MM_Dec+276
	.long 35
	.ascii	"second argument must be an integer"
	.zero	2
	.ascii	"Initialize"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"DoCheck"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Dec__Initialize
	.long MM_Dec+312
	.long MI_Dec+44
	.long Dec__Compile
	.long MM_Dec+323
	.zero	4
	.long Dec__Prep
	.long MM_Dec+331
	.zero	4
	.long Dec__DoCheck
	.long MM_Dec+336
	.long MI_Dec+48
	.long Dec__Check
	.long MM_Dec+344
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Dec.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
