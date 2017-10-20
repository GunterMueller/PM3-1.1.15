	.file	"NamedType.mc"
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
	.type	 NamedType__Parse,@function
NamedType__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	cmpb $1,MI_Scanner+44
	jne .L2
	movl MI_Scanner+84,%eax
	testl %eax,%eax
	je .L2
	pushl %eax
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $2,%eax
	jne .L2
	movl MI_Scanner+84,%eax
	pushl %eax
	movl MI_Value+100,%eax
	call *%eax
	movl %eax,%esi
	movl MI_Scanner+104,%eax
	call *%eax
	addl $4,%esp
	jmp .L3
	.align 16
.L2:
	movl MM_NamedType+212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $1
	movl %eax,%ebx
	pushl %ebx
	movl MI_TypeRep+148,%eax
	call *%eax
	movl MI_Scope+68,%eax
	call *%eax
	movl %eax,56(%ebx)
	movl $0,68(%ebx)
	movl $0,72(%ebx)
	movl $0,60(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,64(%ebx)
	addl $12,%esp
	cmpb $14,MI_Scanner+44
	jne .L4
	movl MI_Scanner+104,%eax
	call *%eax
	movl 64(%ebx),%eax
	movl %eax,60(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,64(%ebx)
.L4:
	movl %ebx,%esi
.L3:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $50,%eax
	jne .L5
	movl MI_RefType+48,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	jmp .L8
	.align 16
.L5:
	cmpl $78,%eax
	jne .L6
	pushl $0
.L8:
	pushl $0
	pushl %esi
	movl MI_ObjectType+44,%eax
	call *%eax
	movl %eax,%esi
.L6:
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 NamedType__Parse,.Lfe1-NamedType__Parse
	.align 16
	.type	 NamedType__New,@function
NamedType__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_NamedType+212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $1
	movl %eax,%esi
	pushl %esi
	movl MI_TypeRep+148,%eax
	call *%eax
	movl $0,56(%esi)
	movl $0,60(%esi)
	movl $0,64(%esi)
	movl %ebx,68(%esi)
	movl $0,72(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NamedType__New,.Lfe2-NamedType__New
	.align 16
	.type	 NamedType__Create,@function
NamedType__Create:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_NamedType+212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $1
	movl %eax,%edi
	pushl %edi
	movl MI_TypeRep+148,%eax
	call *%eax
	movl MI_Scope+68,%eax
	call *%eax
	movl %eax,56(%edi)
	movl %ebx,60(%edi)
	movl %esi,64(%edi)
	movl $0,68(%edi)
	movl $0,72(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NamedType__Create,.Lfe3-NamedType__Create
	.align 16
	.type	 NamedType__Reduce,@function
NamedType__Reduce:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L14
	cmpb $1,34(%edx)
	je .L13
	xorl %eax,%eax
	jmp .L16
	.align 16
.L13:
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_NamedType+216
	jg .L15
	movl MM_NamedType+212,%eax
	cmpl %ecx,4(%eax)
	jge .L14
.L15:
	pushl $1573
	call _m3_fault
	.align 16
.L14:
	movl %edx,%eax
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 NamedType__Reduce,.Lfe4-NamedType__Reduce
	.align 16
	.type	 NamedType__Split,@function
NamedType__Split:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call NamedType__Reduce
	movl %eax,%ecx
	testl %ecx,%ecx
	je .L18
	movl 12(%ebp),%eax
	movl 60(%ecx),%edx
	movl %edx,(%eax)
	movl 64(%ecx),%edx
	movl %edx,4(%eax)
	movl $1,%eax
	jmp .L19
	.align 16
.L18:
	movl %ecx,%eax
.L19:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 NamedType__Split,.Lfe5-NamedType__Split
	.align 16
	.type	 NamedType__SplitV,@function
NamedType__SplitV:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	pushl %eax
	call NamedType__Reduce
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L21
	pushl %ebx
	call NamedType__Resolve
	movl 72(%ebx),%eax
	movl %eax,(%esi)
	movl $1,%eax
	jmp .L22
	.align 16
.L21:
	movl %ebx,%eax
.L22:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 NamedType__SplitV,.Lfe6-NamedType__SplitV
	.align 16
	.type	 NamedType__Resolve,@function
NamedType__Resolve:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	cmpl $0,68(%edx)
	jne .L23
	movl %edx,%edi
	addl $60,%edi
	pushl %edi
	movl 56(%edx),%eax
	pushl %eax
	movl MI_Scope+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movl 8(%ebp),%ebx
	addl $8,%esp
	movl %esi,72(%ebx)
	testl %esi,%esi
	jne .L25
	movl MI_Scanner+88,%esi
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_NamedType+224
	jmp .L28
	.align 16
.L25:
	pushl %esi
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $2,%eax
	jne .L27
	pushl %esi
	movl MI_Value+100,%eax
	call *%eax
	movl %eax,%ebx
	jmp .L26
	.align 16
.L27:
	movl MI_Scanner+88,%esi
	movl 4(%ebx),%eax
	movl %eax,MI_Scanner+88
	pushl $MM_NamedType+248
.L28:
	pushl %edi
	movl MI_Error+56,%eax
	call *%eax
	movl %esi,MI_Scanner+88
	movl MI_ErrType+44,%eax
.L26:
	movl 8(%ebp),%edx
	movl %eax,68(%edx)
.L23:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 NamedType__Resolve,.Lfe7-NamedType__Resolve
	.align 16
	.type	 NamedType__Strip,@function
NamedType__Strip:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L30
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_NamedType+216
	jg .L31
	movl MM_NamedType+212,%eax
	cmpl %edx,4(%eax)
	jge .L30
.L31:
	pushl $2309
	call _m3_fault
	.align 16
.L30:
	cmpl $0,68(%ebx)
	jne .L32
	pushl %ebx
	call NamedType__Resolve
.L32:
	movl 68(%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 NamedType__Strip,.Lfe8-NamedType__Strip
	.align 16
	.type	 NamedType__Check,@function
NamedType__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	cmpl $0,68(%esi)
	jne .L34
	pushl %esi
	call NamedType__Resolve
	addl $4,%esp
.L34:
	movl $0,-12(%ebp)
	movl $0,-4(%ebp)
	cmpl $0,72(%esi)
	je .L35
	leal -8(%ebp),%ebx
	pushl %ebx
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	leal -36(%ebp),%eax
	pushl %eax
	movl 72(%esi),%eax
	pushl %eax
	movl MI_Value+44,%eax
	call *%eax
	pushl %ebx
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_Error+80,%eax
	call *%eax
	addl $24,%esp
.L35:
	movl -4(%ebp),%eax
	cmpl %eax,-12(%ebp)
	jne .L36
	leal 16(%esi),%eax
	pushl %eax
	movl 68(%esi),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,68(%esi)
	jmp .L37
	.align 16
.L36:
	leal 16(%esi),%eax
	pushl %eax
	movl MI_ErrType+44,%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
.L37:
	leal -44(%ebp),%esp
	movb $1,34(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 NamedType__Check,.Lfe9-NamedType__Check
	.align 16
	.type	 NamedType__CheckAlign,@function
NamedType__CheckAlign:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	cmpl $0,68(%ebx)
	jne .L39
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
.L39:
	pushl %esi
	movl 68(%ebx),%eax
	pushl %eax
	movl MI_Type+72,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 NamedType__CheckAlign,.Lfe10-NamedType__CheckAlign
	.align 16
	.type	 NamedType__Compiler,@function
NamedType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,68(%ebx)
	jne .L43
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
	cmpl $0,68(%ebx)
	je .L40
.L43:
	movl 68(%ebx),%eax
	movl 4(%eax),%eax
	movl %eax,MI_Scanner+88
	movl 68(%ebx),%edx
	movl (%edx),%eax
	movl 20(%eax),%eax
	pushl %edx
	call *%eax
.L40:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 NamedType__Compiler,.Lfe11-NamedType__Compiler
	.align 16
	.type	 NamedType__InitCoster,@function
NamedType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,68(%ebx)
	jne .L45
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
.L45:
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 68(%ebx),%eax
	pushl %eax
	movl MI_Type+156,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 NamedType__InitCoster,.Lfe12-NamedType__InitCoster
	.align 16
	.type	 NamedType__GenInit,@function
NamedType__GenInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,68(%ebx)
	jne .L47
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
.L47:
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 68(%ebx),%eax
	pushl %eax
	movl MI_Type+148,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 NamedType__GenInit,.Lfe13-NamedType__GenInit
	.align 16
	.type	 NamedType__GenMap,@function
NamedType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	cmpl $0,68(%ebx)
	jne .L49
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
.L49:
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %esi
	pushl %edi
	movl 68(%ebx),%eax
	pushl %eax
	movl MI_Type+160,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 NamedType__GenMap,.Lfe14-NamedType__GenMap
	.align 16
	.type	 NamedType__GenDesc,@function
NamedType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,68(%ebx)
	jne .L51
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
.L51:
	movl 68(%ebx),%eax
	pushl %eax
	movl MI_Type+164,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 NamedType__GenDesc,.Lfe15-NamedType__GenDesc
	.align 16
	.type	 NamedType__FPrinter,@function
NamedType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $MM_NamedType+288
	leal 60(%ebx),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	addl $8,%esp
	cmpl $0,68(%ebx)
	jne .L55
	pushl %ebx
	call NamedType__Resolve
	addl $4,%esp
	cmpl $0,68(%ebx)
	je .L52
.L55:
	movl 68(%ebx),%edx
	movl (%edx),%eax
	movl 40(%eax),%ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
.L52:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 NamedType__FPrinter,.Lfe16-NamedType__FPrinter
	.align 16
	.type	 M_NamedType_tbbba4a87_LINK,@function
M_NamedType_tbbba4a87_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_NamedType+212,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_NamedType+156,%eax
	movl %eax,4(%edx)
	movl MM_NamedType+160,%eax
	movl %eax,8(%edx)
	movl MI_TypeRep+152,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_NamedType+164,%eax
	movl %eax,20(%edx)
	movl MM_NamedType+168,%eax
	movl %eax,24(%edx)
	movl MM_NamedType+172,%eax
	movl %eax,28(%edx)
	movl MM_NamedType+176,%eax
	movl %eax,32(%edx)
	movl MM_NamedType+180,%eax
	movl %eax,36(%edx)
	movl MM_NamedType+184,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe17:
	.size	 M_NamedType_tbbba4a87_LINK,.Lfe17-M_NamedType_tbbba4a87_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_NamedType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe18:
	.size	 _m3_fault,.Lfe18-_m3_fault
.globl MM_NamedType
.data
	.align 4
	.type	 MM_NamedType,@object
	.size	 MM_NamedType,864
MM_NamedType:
	.long MM_NamedType+656
	.long MM_NamedType+44
	.long MM_NamedType+212
	.zero	8
	.long MM_NamedType+460
	.zero	28
	.long -1145419129
.byte 150
.byte 55
.byte 93
.byte 167
.byte 17
.byte 125
.byte 231
.byte 28
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_NamedType+802
	.long MM_NamedType+808
	.long MM_NamedType+813
	.zero	4
	.long M_NamedType_tbbba4a87_LINK
	.long -2121051098
	.zero	12
	.long MM_NamedType+837
	.long MM_NamedType+849
	.zero	4
	.long NamedType__Reduce
	.long NamedType__Resolve
	.long NamedType__Check
	.long NamedType__CheckAlign
	.long NamedType__Compiler
	.long NamedType__InitCoster
	.long NamedType__GenInit
	.long NamedType__GenMap
	.long NamedType__GenDesc
	.long NamedType__FPrinter
	.long NamedType__Parse
	.long NamedType__New
	.long NamedType__Create
	.long NamedType__Strip
	.long NamedType__Split
	.long NamedType__SplitV
	.zero	4
	.long -1145419129
	.long 2
	.long MM_NamedType+232
	.long 10
	.ascii	"undefined"
	.zero	3
	.long 2
	.long MM_NamedType+256
	.long 27
	.ascii	"name isn't bound to a type"
	.zero	2
	.long 2
	.long MM_NamedType+296
	.long 42
	.ascii	"INTERNAL ERROR: fingerprint of named type"
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
	.ascii	"Compiler"
	.zero	1
	.ascii	"CheckAlign"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Strip"
	.zero	1
	.ascii	"Resolve"
	.zero	1
	.ascii	"SplitV"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"Create"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.long NamedType__FPrinter
	.long MM_NamedType+340
	.zero	4
	.long NamedType__GenDesc
	.long MM_NamedType+349
	.zero	4
	.long NamedType__GenMap
	.long MM_NamedType+357
	.zero	4
	.long NamedType__GenInit
	.long MM_NamedType+364
	.zero	4
	.long NamedType__InitCoster
	.long MM_NamedType+372
	.zero	4
	.long NamedType__Compiler
	.long MM_NamedType+383
	.zero	4
	.long NamedType__CheckAlign
	.long MM_NamedType+392
	.zero	4
	.long NamedType__Check
	.long MM_NamedType+403
	.zero	4
	.long NamedType__Strip
	.long MM_NamedType+409
	.long MI_NamedType+56
	.long NamedType__Resolve
	.long MM_NamedType+415
	.zero	4
	.long NamedType__SplitV
	.long MM_NamedType+423
	.long MI_NamedType+64
	.long NamedType__Split
	.long MM_NamedType+430
	.long MI_NamedType+60
	.long NamedType__Reduce
	.long MM_NamedType+436
	.zero	4
	.long NamedType__Create
	.long MM_NamedType+443
	.long MI_NamedType+52
	.long NamedType__New
	.long MM_NamedType+450
	.long MI_NamedType+48
	.long NamedType__Parse
	.long MM_NamedType+454
	.long MI_NamedType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/NamedType.m3"
	.zero	1
.byte 4
.byte 14
.byte 14
.byte 4
.byte 4
.byte 0
.byte 4
.byte 41
.byte 4
.byte 4
.byte 0
.byte 7
.byte 10
.byte 4
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 15
.byte 2
.byte 19
.byte 254
.byte 126
.byte 25
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
	.ascii	"NamedType.T"
	.zero	1
	.ascii	"NamedType.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
