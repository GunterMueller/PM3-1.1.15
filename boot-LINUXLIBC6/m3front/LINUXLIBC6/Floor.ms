	.file	"Floor.mc"
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
	.type	 Floor__Check,@function
Floor__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	pushl $MM_Floor+68
	movl MI_Ceiling+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Floor__Check,.Lfe1-Floor__Check
	.align 16
	.type	 Floor__Compile,@function
Floor__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L3
	pushl $340
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $338
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	movl %eax,%edx
	leal -3(%edx),%eax
	addl $16,%esp
	cmpl $2,%eax
	jbe .L5
	pushl $385
	call _m3_fault
	.align 16
.L5:
	pushl %edx
	movl MI_CG+500,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Floor__Compile,.Lfe2-Floor__Compile
	.align 16
	.type	 Floor__Fold,@function
Floor__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L7
	pushl $484
	call _m3_fault
	.align 16
.L7:
	cmpl $0,4(%eax)
	jne .L8
	pushl $482
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L11
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ReelExpr+88,%eax
	call *%eax
	testl %eax,%eax
	je .L11
	movl -4(%ebp),%eax
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Floor__Fold,.Lfe3-Floor__Fold
	.align 16
	.type	 Floor__Initialize,@function
Floor__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Floor+56,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Floor+52,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_Floor+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	movl MI_Int+44,%eax
	pushl %eax
	pushl $1
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Floor+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Floor+68
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Floor__Initialize,.Lfe4-Floor__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Floor
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Floor
.data
	.align 4
	.type	 MM_Floor,@object
	.size	 MM_Floor,320
MM_Floor:
	.long MM_Floor+172
	.zero	16
	.long MM_Floor+116
	.zero	4
	.long MM_Floor+168
	.long MM_Floor+168
	.zero	12
	.long Floor__Check
	.long Floor__Compile
	.long Floor__Fold
	.long Floor__Initialize
	.long 2
	.long MM_Floor+76
	.long 6
	.ascii	"FLOOR"
	.zero	3
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Floor__Initialize
	.long MM_Floor+84
	.long MI_Floor+44
	.long Floor__Fold
	.long MM_Floor+95
	.zero	4
	.long Floor__Compile
	.long MM_Floor+100
	.zero	4
	.long Floor__Check
	.long MM_Floor+108
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Floor.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
