	.file	"Floatt.mc"
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
	.type	 Floatt__TypeOf,@function
Floatt__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl MI_Reel+44,%eax
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl %eax,-4(%ebp)
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L2
	pushl $324
	call _m3_fault
	.align 16
.L2:
	movl 4(%eax),%ecx
	cmpl $1,%ecx
	jle .L3
	movl %eax,%edx
	ja .L5
	pushl $338
	call _m3_fault
	.align 16
.L5:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
.L3:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Floatt__TypeOf,.Lfe1-Floatt__TypeOf
	.align 16
	.type	 Floatt__Check,@function
Floatt__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl $0,-4(%ebp)
	incl 16(%edx)
	movl 20(%ebx),%eax
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
	movl MI_Reel+44,%eax
	movl %eax,-4(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L9
	pushl $532
	call _m3_fault
	.align 16
.L9:
	movl 4(%eax),%ecx
	cmpl $1,%ecx
	jle .L10
	movl %eax,%edx
	ja .L12
	pushl $546
	call _m3_fault
	.align 16
.L12:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_Floatt+76
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L13:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $4,%esp
.L10:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L14
	pushl $644
	call _m3_fault
	.align 16
.L14:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L15
	pushl $642
	call _m3_fault
	.align 16
.L15:
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $8,%esp
	cmpl %eax,MI_Int+44
	je .L16
	cmpl %eax,MI_Reel+44
	je .L16
	cmpl %eax,MI_LReel+44
	je .L16
	cmpl %eax,MI_EReel+44
	je .L16
	pushl $MM_Floatt+144
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L16:
	movl -4(%ebp),%eax
	cmpl %eax,MI_Reel+44
	je .L17
	cmpl %eax,MI_LReel+44
	je .L17
	cmpl %eax,MI_EReel+44
	je .L17
	pushl $MM_Floatt+192
	movl MI_Error+44,%eax
	call *%eax
.L17:
	movl -4(%ebp),%eax
	movl %eax,8(%ebx)
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Floatt__Check,.Lfe2-Floatt__Check
	.align 16
	.type	 Floatt__Prep,@function
Floatt__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L19
	pushl $868
	call _m3_fault
	.align 16
.L19:
	cmpl $0,4(%eax)
	jne .L20
	pushl $866
	call _m3_fault
	.align 16
.L20:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Floatt__Prep,.Lfe3-Floatt__Prep
	.align 16
	.type	 Floatt__Compile,@function
Floatt__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L22
	pushl $948
	call _m3_fault
	.align 16
.L22:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L23
	pushl $946
	call _m3_fault
	.align 16
.L23:
	movl (%edx),%eax
	movl (%eax),%ebx
	pushl %ebx
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edi
	movl MI_Reel+44,%eax
	movl %eax,-4(%ebp)
	movl 20(%esi),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L24
	pushl $1012
	call _m3_fault
	.align 16
.L24:
	movl 4(%eax),%ecx
	cmpl $1,%ecx
	jle .L25
	movl %eax,%edx
	ja .L27
	pushl $1026
	call _m3_fault
	.align 16
.L27:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $12,%esp
.L25:
	pushl %ebx
	movl MI_Expr+204,%eax
	call *%eax
	pushl $0
	pushl %edi
	movl MI_Type+84,%eax
	call *%eax
	movl %eax,%ebx
	pushl $0
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	movl %eax,%edx
	leal -1(%ebx),%eax
	addl $20,%esp
	cmpl $4,%eax
	jbe .L28
	pushl $1089
	call _m3_fault
	.align 16
.L28:
	leal -3(%edx),%eax
	cmpl $2,%eax
	jbe .L29
	pushl $1089
	call _m3_fault
	.align 16
.L29:
	pushl %edx
	pushl %ebx
	movl MI_CG+508,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Floatt__Compile,.Lfe4-Floatt__Compile
	.align 16
	.type	 Floatt__Fold,@function
Floatt__Fold:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L31
	pushl $1188
	call _m3_fault
	.align 16
.L31:
	cmpl $0,4(%eax)
	jne .L32
	pushl $1186
	call _m3_fault
	.align 16
.L32:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L40
	movl MI_Reel+44,%eax
	movl %eax,-4(%ebp)
	movl 20(%esi),%eax
	testl %eax,%eax
	jne .L34
	pushl $1252
	call _m3_fault
	.align 16
.L34:
	movl 4(%eax),%edx
	cmpl $1,%edx
	jle .L35
	movl %eax,%ecx
	ja .L37
	pushl $1266
	call _m3_fault
	.align 16
.L37:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%ecx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L40
.L35:
	leal -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ReelExpr+104,%eax
	call *%eax
	testl %eax,%eax
	je .L40
	movl -8(%ebp),%eax
.L40:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Floatt__Fold,.Lfe5-Floatt__Fold
	.align 16
	.type	 Floatt__Initialize,@function
Floatt__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MM_Floatt+64,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Floatt+60,%eax
	pushl %eax
	movl MM_Floatt+56,%eax
	pushl %eax
	movl MM_Floatt+52,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	movl MM_Floatt+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $2
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Floatt+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Floatt+240
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Floatt__Initialize,.Lfe6-Floatt__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Floatt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_Floatt
.data
	.align 4
	.type	 MM_Floatt,@object
	.size	 MM_Floatt,528
MM_Floatt:
	.long MM_Floatt+380
	.zero	16
	.long MM_Floatt+300
	.zero	4
	.long MM_Floatt+376
	.long MM_Floatt+376
	.zero	12
	.long Floatt__TypeOf
	.long Floatt__Check
	.long Floatt__Prep
	.long Floatt__Compile
	.long Floatt__Fold
	.long Floatt__Initialize
	.long 2
	.long MM_Floatt+84
	.long 53
	.ascii	"FLOAT: second argument must be a floating point type"
	.zero	4
	.long 2
	.long MM_Floatt+152
	.long 33
	.ascii	"FLOAT: wrong first argument type"
	.zero	4
	.long 2
	.long MM_Floatt+200
	.long 34
	.ascii	"FLOAT: wrong second argument type"
	.zero	3
	.long 2
	.long MM_Floatt+248
	.long 6
	.ascii	"FLOAT"
	.zero	3
	.ascii	"Initialize"
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
	.zero	3
	.long Floatt__Initialize
	.long MM_Floatt+256
	.long MI_Floatt+44
	.long Floatt__Fold
	.long MM_Floatt+267
	.zero	4
	.long Floatt__Compile
	.long MM_Floatt+272
	.zero	4
	.long Floatt__Prep
	.long MM_Floatt+280
	.zero	4
	.long Floatt__Check
	.long MM_Floatt+285
	.zero	4
	.long Floatt__TypeOf
	.long MM_Floatt+291
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Floatt.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
