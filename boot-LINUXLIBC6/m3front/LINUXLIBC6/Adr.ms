	.file	"Adr.mc"
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
	.type	 Adr__TypeOf,@function
Adr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Addr+44,%eax
	movl 8(%ebp),%edx
	cmpb $0,MI_Host+91
	je .L2
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L3
	pushl $324
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $322
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %eax
	movl MI_RefType+52,%eax
	call *%eax
.L2:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Adr__TypeOf,.Lfe1-Adr__TypeOf
	.align 16
	.type	 Adr__Check,@function
Adr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L6
	pushl $420
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $418
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl (%eax),%esi
	cmpl $0,8(%ebx)
	jne .L8
	pushl %ebx
	call Adr__TypeOf
	movl %eax,8(%ebx)
	addl $4,%esp
.L8:
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl MI_Module+68,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L9
	pushl $MM_Adr+72
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L9:
	pushl %esi
	movl MI_Expr+168,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L10
	pushl %esi
	movl MI_Expr+184,%eax
	jmp .L12
	.align 16
.L10:
	pushl $MM_Adr+104
	movl MI_Error+44,%eax
.L12:
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Adr__Check,.Lfe2-Adr__Check
	.align 16
	.type	 Adr__Prep,@function
Adr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L14
	pushl $628
	call _m3_fault
	.align 16
.L14:
	cmpl $0,4(%eax)
	jne .L15
	pushl $626
	call _m3_fault
	.align 16
.L15:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Adr__Prep,.Lfe3-Adr__Prep
	.align 16
	.type	 Adr__Compile,@function
Adr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L17
	pushl $708
	call _m3_fault
	.align 16
.L17:
	cmpl $0,4(%eax)
	jne .L18
	pushl $706
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+212,%eax
	call *%eax
	movl MI_CG+704,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Adr__Compile,.Lfe4-Adr__Compile
	.align 16
	.type	 Adr__Initialize,@function
Adr__Initialize:
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
	movl MM_Adr+60,%eax
	pushl %eax
	movl MM_Adr+56,%eax
	pushl %eax
	movl MM_Adr+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MM_Adr+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Adr+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Adr+152
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Adr__Initialize,.Lfe5-Adr__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Adr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_Adr
.data
	.align 4
	.type	 MM_Adr,@object
	.size	 MM_Adr,420
MM_Adr:
	.long MM_Adr+272
	.zero	16
	.long MM_Adr+204
	.zero	4
	.long MM_Adr+268
	.long MM_Adr+268
	.zero	12
	.long Adr__TypeOf
	.long Adr__Check
	.long Adr__Prep
	.long Adr__Compile
	.long Adr__Initialize
	.long 2
	.long MM_Adr+80
	.long 17
	.ascii	"unsafe operation"
	.zero	4
	.long 2
	.long MM_Adr+112
	.long 35
	.ascii	"ADR: argument must be a designator"
	.zero	2
	.long 2
	.long MM_Adr+160
	.long 4
	.ascii	"ADR"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	4
	.long Adr__Initialize
	.long MM_Adr+164
	.long MI_Adr+44
	.long Adr__Compile
	.long MM_Adr+175
	.zero	4
	.long Adr__Prep
	.long MM_Adr+183
	.zero	4
	.long Adr__Check
	.long MM_Adr+188
	.zero	4
	.long Adr__TypeOf
	.long MM_Adr+194
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Adr.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
