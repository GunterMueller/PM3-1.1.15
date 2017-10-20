	.file	"Ceiling.mc"
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
	.type	 Ceiling__Check,@function
Ceiling__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $MM_Ceiling+72
	call Ceiling__DoCheck
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Ceiling__Check,.Lfe1-Ceiling__Check
	.align 16
	.type	 Ceiling__DoCheck,@function
Ceiling__DoCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 8(%ebp),%esi
	movl 20(%ebx),%eax
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
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	addl $8,%esp
	incl 16(%eax)
	cmpl %edx,MI_Reel+44
	je .L5
	cmpl %edx,MI_LReel+44
	je .L5
	cmpl %edx,MI_EReel+44
	je .L5
	pushl $MM_Ceiling+92
	pushl %esi
	movl MI_Error+60,%eax
	call *%eax
.L5:
	movl MI_Int+44,%eax
	leal -8(%ebp),%esp
	movl %eax,8(%ebx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Ceiling__DoCheck,.Lfe2-Ceiling__DoCheck
	.align 16
	.type	 Ceiling__Compile,@function
Ceiling__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L7
	pushl $532
	call _m3_fault
	.align 16
.L7:
	cmpl $0,4(%eax)
	jne .L8
	pushl $530
	call _m3_fault
	.align 16
.L8:
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
	jbe .L9
	pushl $577
	call _m3_fault
	.align 16
.L9:
	pushl %edx
	movl MI_CG+504,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Ceiling__Compile,.Lfe3-Ceiling__Compile
	.align 16
	.type	 Ceiling__Fold,@function
Ceiling__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl $0,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L11
	pushl $676
	call _m3_fault
	.align 16
.L11:
	cmpl $0,4(%eax)
	jne .L12
	pushl $674
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L15
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ReelExpr+92,%eax
	call *%eax
	testl %eax,%eax
	je .L15
	movl -4(%ebp),%eax
.L15:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Ceiling__Fold,.Lfe4-Ceiling__Fold
	.align 16
	.type	 Ceiling__Initialize,@function
Ceiling__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Ceiling+56,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Ceiling+52,%eax
	pushl %eax
	movl MI_CallExpr+180,%eax
	pushl %eax
	movl MM_Ceiling+48,%eax
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
	movl %eax,MM_Ceiling+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Ceiling+72
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Ceiling__Initialize,.Lfe5-Ceiling__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Ceiling
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_Ceiling
.data
	.align 4
	.type	 MM_Ceiling,@object
	.size	 MM_Ceiling,400
MM_Ceiling:
	.long MM_Ceiling+248
	.zero	16
	.long MM_Ceiling+180
	.zero	4
	.long MM_Ceiling+244
	.long MM_Ceiling+244
	.zero	12
	.long Ceiling__Check
	.long Ceiling__Compile
	.long Ceiling__Fold
	.long Ceiling__Initialize
	.long Ceiling__DoCheck
	.long 2
	.long MM_Ceiling+80
	.long 8
	.ascii	"CEILING"
	.zero	1
	.long 2
	.long MM_Ceiling+100
	.long 40
	.ascii	"argument not REAL, LONGREAL or EXTENDED"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"DoCheck"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Ceiling__Initialize
	.long MM_Ceiling+140
	.long MI_Ceiling+44
	.long Ceiling__Fold
	.long MM_Ceiling+151
	.zero	4
	.long Ceiling__Compile
	.long MM_Ceiling+156
	.zero	4
	.long Ceiling__DoCheck
	.long MM_Ceiling+164
	.long MI_Ceiling+48
	.long Ceiling__Check
	.long MM_Ceiling+172
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Ceiling.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
