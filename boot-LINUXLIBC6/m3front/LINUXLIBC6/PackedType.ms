	.file	"PackedType.mc"
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
	.type	 PackedType__Parse,@function
PackedType__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	pushl $0
	pushl $-1
	call PackedType__New
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	je .L2
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_PackedType+216
	jg .L3
	movl MM_PackedType+212,%eax
	cmpl %ecx,4(%eax)
	jge .L2
.L3:
	pushl $597
	call _m3_fault
	.align 16
.L2:
	pushl $49
	movl MI_Scanner+108,%eax
	movl %edx,%ebx
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,56(%ebx)
	pushl $65
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,64(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PackedType__Parse,.Lfe1-PackedType__Parse
	.align 16
	.type	 PackedType__New,@function
PackedType__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_PackedType+212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $11
	movl %eax,%edi
	pushl %edi
	movl MI_TypeRep+148,%eax
	call *%eax
	movl $0,56(%edi)
	movl %ebx,60(%edi)
	movl %esi,64(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PackedType__New,.Lfe2-PackedType__New
	.align 16
	.type	 PackedType__Reduce,@function
PackedType__Reduce:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L9
	cmpb $1,34(%edx)
	jne .L7
	pushl %edx
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
.L7:
	cmpb $11,34(%edx)
	je .L8
	xorl %eax,%eax
	jmp .L11
	.align 16
.L8:
	testl %edx,%edx
	je .L9
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_PackedType+216
	jg .L10
	movl MM_PackedType+212,%eax
	cmpl %ecx,4(%eax)
	jge .L9
.L10:
	pushl $997
	call _m3_fault
	.align 16
.L9:
	movl %edx,%eax
.L11:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PackedType__Reduce,.Lfe3-PackedType__Reduce
	.align 16
	.type	 PackedType__GetSize,@function
PackedType__GetSize:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	cmpl $-1,60(%edi)
	jne .L13
	movl 56(%edi),%eax
	testl %eax,%eax
	je .L13
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L14
	leal -8(%ebp),%esi
	pushl %esi
	pushl %ebx
	movl MI_IntegerExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L14
	leal -12(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_TInt+72,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L15
.L14:
	pushl $MM_PackedType+224
	movl MI_Error+44,%eax
	call *%eax
	jmp .L13
	.align 16
.L15:
	movl %ebx,56(%edi)
	movl -12(%ebp),%eax
	movl %eax,60(%edi)
.L13:
	leal -24(%ebp),%esp
	movl 60(%edi),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PackedType__GetSize,.Lfe4-PackedType__GetSize
	.align 16
	.type	 PackedType__Split,@function
PackedType__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl %eax
	call PackedType__Reduce
	movl %eax,%edi
	pushl %edi
	call PackedType__GetSize
	movl %eax,(%ebx)
	leal -12(%ebp),%esp
	movl 64(%edi),%eax
	movl %eax,(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 PackedType__Split,.Lfe5-PackedType__Split
	.align 16
	.type	 PackedType__Base,@function
PackedType__Base:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L19
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_PackedType+216
	jg .L20
	movl MM_PackedType+212,%eax
	cmpl %edx,4(%eax)
	jge .L19
.L20:
	pushl $1397
	call _m3_fault
	.align 16
.L19:
	movl 64(%ecx),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 PackedType__Base,.Lfe6-PackedType__Base
	.align 16
	.type	 PackedType__Check,@function
PackedType__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	leal -20(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	pushl %eax
	movl 64(%esi),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,64(%esi)
	movl -16(%ebp),%edi
	movl -20(%ebp),%ebx
	addl $8,%esp
	movl 56(%esi),%edx
	testl %edx,%edx
	je .L22
	leal -44(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Expr+156,%eax
	call *%eax
	pushl %esi
	call PackedType__GetSize
	movl %eax,%ebx
	addl $12,%esp
	cmpl $-1,%ebx
	jne .L22
	movl -20(%ebp),%ebx
.L22:
	cmpl %edi,%ebx
	jge .L24
	pushl $MM_PackedType+280
	pushl %edi
	movl MI_Error+48,%eax
	call *%eax
.L24:
	movl %ebx,16(%esi)
	movl %ebx,20(%esi)
	movl -12(%ebp),%eax
	movl %eax,24(%esi)
	movb -3(%ebp),%al
	movb %al,33(%esi)
	movb -4(%ebp),%al
	movb %al,32(%esi)
	movb $11,34(%esi)
	xorl %edx,%edx
	movb 35(%esi),%dl
	andb $254,%dl
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $1,%eax
	orl %eax,%edx
	movb %dl,35(%esi)
	andl $253,%edx
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $2,%eax
	orl %eax,%edx
	movb %dl,35(%esi)
	andl $251,%edx
	movb -1(%ebp),%al
	andb $4,%al
	orb %dl,%al
	movb %al,35(%esi)
	movl -8(%ebp),%edx
	movl %edx,%eax
	sall $4,%eax
	subl %edx,%eax
	leal (%edx,%eax,4),%eax
	addl %ebx,%eax
	leal -56(%ebp),%esp
	movl %eax,28(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 PackedType__Check,.Lfe7-PackedType__Check
	.align 16
	.type	 PackedType__CheckAlign,@function
PackedType__CheckAlign:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
.L26:
	movl $5,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl 64(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	pushl %ebx
	call PackedType__GetSize
	movl %eax,%esi
	addl $12,%esp
	cmpl %esi,-20(%ebp)
	je .L30
	movl 64(%ebx),%eax
	pushl %eax
	movl MI_Type+88,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L28
.L30:
	pushl %edi
	movl 64(%ebx),%eax
	pushl %eax
	movl MI_Type+72,%eax
	call *%eax
	movl %eax,%edx
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L25
	.align 16
.L28:
	pushl %edi
	movl MI_Target+100,%eax
	pushl %eax
	call m3_div
	movl %eax,%edx
	imull MI_Target+100,%edx
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal (%esi,%edi),%eax
	addl MI_Target+96,%edx
	cmpl %edx,%eax
	setle %al
	andl $255,%eax
.L29:
.L25:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 PackedType__CheckAlign,.Lfe8-PackedType__CheckAlign
	.align 16
	.type	 PackedType__Compiler,@function
PackedType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 64(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%esi
	movl 64(%ebx),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl 60(%ebx),%edx
	addl $12,%esp
	testl %edx,%edx
	jge .L32
	pushl $2289
	call _m3_fault
	.align 16
.L32:
	pushl %eax
	pushl %edx
	pushl %esi
	movl MI_CG+96,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 PackedType__Compiler,.Lfe9-PackedType__Compiler
	.align 16
	.type	 PackedType__EqualChk,@function
PackedType__EqualChk:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	testl %edi,%edi
	je .L34
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_PackedType+216
	jg .L35
	movl MM_PackedType+212,%eax
	cmpl %ebx,4(%eax)
	jge .L34
.L35:
	pushl $2373
	call _m3_fault
	.align 16
.L34:
	xorl %ebx,%ebx
	movl 8(%ebp),%edx
	pushl %edx
	call PackedType__GetSize
	movl %eax,%esi
	pushl %edi
	call PackedType__GetSize
	addl $8,%esp
	cmpl %eax,%esi
	jne .L36
	movl 16(%ebp),%edx
	pushl %edx
	movl 64(%edi),%eax
	pushl %eax
	movl 8(%ebp),%edx
	movl 64(%edx),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L36:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 PackedType__EqualChk,.Lfe10-PackedType__EqualChk
	.align 16
	.type	 PackedType__Subtyper,@function
PackedType__Subtyper:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl $0
	movl 64(%eax),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 PackedType__Subtyper,.Lfe11-PackedType__Subtyper
	.align 16
	.type	 PackedType__InitCoster,@function
PackedType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 64(%edx),%eax
	pushl %eax
	movl MI_Type+156,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 PackedType__InitCoster,.Lfe12-PackedType__InitCoster
	.align 16
	.type	 PackedType__GenInit,@function
PackedType__GenInit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 64(%edx),%eax
	pushl %eax
	movl MI_Type+148,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 PackedType__GenInit,.Lfe13-PackedType__GenInit
	.align 16
	.type	 PackedType__GenMap,@function
PackedType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edx
	cmpl %edx,60(%ecx)
	jge .L41
	pushl $2736
	call _m3_fault
	.align 16
.L41:
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edx
	pushl %ebx
	movl 64(%ecx),%eax
	pushl %eax
	movl MI_Type+160,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 PackedType__GenMap,.Lfe14-PackedType__GenMap
	.align 16
	.type	 PackedType__GenDesc,@function
PackedType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	pushl $12
	movl MI_TipeDesc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L42
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_TipeDesc+60,%eax
	call *%eax
	movl 64(%ebx),%eax
	pushl %eax
	movl MI_Type+164,%eax
	call *%eax
.L42:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 PackedType__GenDesc,.Lfe15-PackedType__GenDesc
	.align 16
	.type	 PackedType__FPrinter,@function
PackedType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $MM_PackedType+336
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 60(%ebx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+56,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl $1,8(%edx)
	movl 64(%ebx),%eax
	movl %eax,12(%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 PackedType__FPrinter,.Lfe16-PackedType__FPrinter
	.align 16
	.type	 M_PackedType_t3ea2875b_LINK,@function
M_PackedType_t3ea2875b_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_PackedType+212,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_PackedType+156,%eax
	movl %eax,4(%edx)
	movl MM_PackedType+160,%eax
	movl %eax,8(%edx)
	movl MM_PackedType+168,%eax
	movl %eax,12(%edx)
	movl MM_PackedType+172,%eax
	movl %eax,16(%edx)
	movl MM_PackedType+164,%eax
	movl %eax,20(%edx)
	movl MM_PackedType+176,%eax
	movl %eax,24(%edx)
	movl MM_PackedType+180,%eax
	movl %eax,28(%edx)
	movl MM_PackedType+184,%eax
	movl %eax,32(%edx)
	movl MM_PackedType+188,%eax
	movl %eax,36(%edx)
	movl MM_PackedType+192,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe17:
	.size	 M_PackedType_t3ea2875b_LINK,.Lfe17-M_PackedType_t3ea2875b_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_PackedType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe18:
	.size	 _m3_fault,.Lfe18-_m3_fault
.globl MM_PackedType
.data
	.align 4
	.type	 MM_PackedType,@object
	.size	 MM_PackedType,860
MM_PackedType:
	.long MM_PackedType+676
	.long MM_PackedType+44
	.long MM_PackedType+212
	.zero	8
	.long MM_PackedType+480
	.zero	28
	.long 1050838875
.byte 8
.byte 146
.byte 97
.byte 33
.byte 83
.byte 21
.byte 195
.byte 31
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_PackedType+823
	.long MM_PackedType+827
	.long MM_PackedType+831
	.zero	4
	.long M_PackedType_t3ea2875b_LINK
	.long -2121051098
	.zero	16
	.long MM_PackedType+845
	.zero	4
	.long PackedType__Reduce
	.long PackedType__GetSize
	.long PackedType__Check
	.long PackedType__CheckAlign
	.long PackedType__Compiler
	.long PackedType__EqualChk
	.long PackedType__Subtyper
	.long PackedType__InitCoster
	.long PackedType__GenInit
	.long PackedType__GenMap
	.long PackedType__GenDesc
	.long PackedType__FPrinter
	.long PackedType__Parse
	.long PackedType__New
	.long PackedType__Split
	.long PackedType__Base
	.zero	4
	.long 1050838875
	.long 2
	.long MM_PackedType+232
	.long 41
	.ascii	"BITS FOR size must be a constant integer"
	.zero	4
	.long 2
	.long MM_PackedType+288
	.long 42
	.ascii	"BITS FOR size too small, must be at least"
	.zero	3
	.long 2
	.long MM_PackedType+344
	.long 10
	.ascii	"BITS-FOR "
	.zero	3
	.ascii	"FPrinter"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"GenInit"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"Subtyper"
	.zero	1
	.ascii	"EqualChk"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"CheckAlign"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Base"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"GetSize"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long PackedType__FPrinter
	.long MM_PackedType+356
	.zero	4
	.long PackedType__GenDesc
	.long MM_PackedType+365
	.zero	4
	.long PackedType__GenMap
	.long MM_PackedType+373
	.zero	4
	.long PackedType__GenInit
	.long MM_PackedType+380
	.zero	4
	.long PackedType__InitCoster
	.long MM_PackedType+388
	.zero	4
	.long PackedType__Subtyper
	.long MM_PackedType+399
	.zero	4
	.long PackedType__EqualChk
	.long MM_PackedType+408
	.zero	4
	.long PackedType__Compiler
	.long MM_PackedType+417
	.zero	4
	.long PackedType__CheckAlign
	.long MM_PackedType+426
	.zero	4
	.long PackedType__Check
	.long MM_PackedType+437
	.zero	4
	.long PackedType__Base
	.long MM_PackedType+443
	.long MI_PackedType+56
	.long PackedType__Split
	.long MM_PackedType+448
	.long MI_PackedType+52
	.long PackedType__GetSize
	.long MM_PackedType+454
	.zero	4
	.long PackedType__Reduce
	.long MM_PackedType+462
	.zero	4
	.long PackedType__New
	.long MM_PackedType+469
	.long MI_PackedType+48
	.long PackedType__Parse
	.long MM_PackedType+473
	.long MI_PackedType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/PackedType.m3"
	.zero	1
.byte 4
.byte 14
.byte 4
.byte 0
.byte 4
.byte 37
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 7
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
	.ascii	"PackedType.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
