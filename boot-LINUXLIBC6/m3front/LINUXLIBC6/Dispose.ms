	.file	"Dispose.mc"
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
	.type	 Dispose__Check,@function
Dispose__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	cmpl $0,4(%eax)
	jne .L3
	pushl $306
	call _m3_fault
	.align 16
.L3:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%ebx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%ebx
	movl MI_Module+68,%eax
	movl %ebx,%esi
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L4
	pushl $MM_Dispose+72
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L4:
	movl MI_Reff+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L5
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L5
	pushl $MM_Dispose+112
	movl MI_Error+44,%eax
	jmp .L15
	.align 16
.L5:
	pushl $0
	movl MI_Reff+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L7
	pushl %eax
	movl MI_Addr+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L7
	pushl %eax
	movl MI_ObjectRef+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L7
	pushl %eax
	movl MI_ObjectAdr+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L8
.L7:
	pushl $MM_Dispose+172
	movl MI_Error+44,%eax
	jmp .L15
	.align 16
.L8:
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L9
	pushl $484
	call _m3_fault
	.align 16
.L9:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L10
	pushl $482
	call _m3_fault
	.align 16
.L10:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+172,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	pushl $MM_Dispose+236
	movl MI_Error+44,%eax
	jmp .L15
	.align 16
.L11:
	testb $1,-1(%ebp)
	jne .L6
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L13
	pushl $532
	call _m3_fault
	.align 16
.L13:
	movl %eax,%ebx
	cmpl $0,4(%ebx)
	jne .L14
	pushl $530
	call _m3_fault
	.align 16
.L14:
	movl (%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+184,%eax
.L15:
	call *%eax
.L6:
	leal -32(%ebp),%esp
	movl $0,8(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Dispose__Check,.Lfe1-Dispose__Check
	.align 16
	.type	 Dispose__Prep,@function
Dispose__Prep:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl %esi,-20(%ebp)
	movl %esi,-16(%ebp)
	movl %esi,-12(%ebp)
	movl %esi,-8(%ebp)
	movl %esi,-4(%ebp)
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L17
	pushl $676
	call _m3_fault
	.align 16
.L17:
	cmpl $0,4(%eax)
	jne .L18
	pushl $674
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax),%edi
	pushl %edi
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %edi
	movl MI_Expr+208,%eax
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,%ebx
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $1,%eax
	movl %eax,-24(%ebp)
	addl $20,%esp
	testl %eax,%eax
	je .L19
	pushl %edi
	movl MI_Expr+212,%eax
	call *%eax
	movl MI_CG+416,%eax
	call *%eax
	movl MI_Target+60,%eax
	pushl %eax
	pushl %esi
	pushl %esi
	movl MI_CG+400,%eax
	call *%eax
	addl $16,%esp
	jmp .L20
	.align 16
.L19:
	movl MI_ObjectAdr+44,%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	movb MM_Dispose+64(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_Procedure+92,%eax
	call *%eax
	pushl %edi
	movl MI_Expr+216,%eax
	call *%eax
	movl -24(%ebp),%edx
	pushl %edx
	movl MI_CG+744,%eax
	call *%eax
	pushl %ebx
	movl MI_Procedure+96,%eax
	call *%eax
	addl $28,%esp
.L20:
	pushl %edi
	movl MI_Expr+228,%eax
	call *%eax
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Dispose__Prep,.Lfe2-Dispose__Prep
	.align 16
	.type	 Dispose__Compile,@function
Dispose__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Dispose__Compile,.Lfe3-Dispose__Compile
	.align 16
	.type	 Dispose__Initialize,@function
Dispose__Initialize:
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
	movl MM_Dispose+56,%eax
	pushl %eax
	movl MM_Dispose+52,%eax
	pushl %eax
	movl MM_Dispose+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $1
	pushl $0
	pushl $0
	pushl $1
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Dispose+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Dispose+300
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Dispose__Initialize,.Lfe4-Dispose__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Dispose
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Dispose
.data
	.align 4
	.type	 MM_Dispose,@object
	.size	 MM_Dispose,556
MM_Dispose:
	.long MM_Dispose+404
	.zero	16
	.long MM_Dispose+348
	.zero	4
	.long MM_Dispose+400
	.long MM_Dispose+400
	.zero	12
	.long Dispose__Check
	.long Dispose__Prep
	.long Dispose__Compile
	.long Dispose__Initialize
.byte 12
.byte 13
	.zero	2
	.long 2
	.long MM_Dispose+80
	.long 26
	.ascii	"DISPOSE: unsafe operation"
	.zero	3
	.long 2
	.long MM_Dispose+120
	.long 45
	.ascii	"DISPOSE: must be applied to a reference type"
	.zero	4
	.long 2
	.long MM_Dispose+180
	.long 51
	.ascii	"DISPOSE: must be applied to a fixed reference type"
	.zero	2
	.long 2
	.long MM_Dispose+244
	.long 50
	.ascii	"DISPOSE: must be applied to a writable designator"
	.zero	3
	.long 2
	.long MM_Dispose+308
	.long 8
	.ascii	"DISPOSE"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Dispose__Initialize
	.long MM_Dispose+316
	.long MI_Dispose+44
	.long Dispose__Compile
	.long MM_Dispose+327
	.zero	4
	.long Dispose__Prep
	.long MM_Dispose+335
	.zero	4
	.long Dispose__Check
	.long MM_Dispose+340
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Dispose.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
