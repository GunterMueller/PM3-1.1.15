	.file	"Method.mc"
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
	.type	 Method__New,@function
Method__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_Method+256,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl $7
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+148,%eax
	call *%eax
	orb $2,30(%ebx)
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	movl %eax,36(%ebx)
	movb 20(%edx),%al
	movb %al,40(%ebx)
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	movl %eax,44(%ebx)
	movl 12(%edx),%eax
	movl %eax,48(%ebx)
	movl 16(%edx),%eax
	movl %eax,52(%ebx)
	movl $0,56(%ebx)
	pushl %ebx
	movl MI_Scope+72,%eax
	call *%eax
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Method__New,.Lfe1-Method__New
	.align 16
	.type	 Method__Split,@function
Method__Split:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L6
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Method+260
	jg .L6
	movl MM_Method+256,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl 12(%ebp),%edx
	movl 12(%ecx),%eax
	movl %eax,(%edx)
	movl 12(%ebp),%edx
	movl 36(%ecx),%eax
	movl %eax,4(%edx)
	movl 44(%ecx),%eax
	movl %eax,8(%edx)
	movl 48(%ecx),%eax
	movl %eax,12(%edx)
	movl 52(%ecx),%eax
	movl %eax,16(%edx)
	movb 40(%ecx),%al
	movb %al,20(%edx)
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Method__Split,.Lfe2-Method__Split
	.align 16
	.type	 Method__SplitX,@function
Method__SplitX:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call Method__Split
	addl $8,%esp
	testb %al,%al
	jne .L10
	pushl $1200
	call _m3_fault
	.align 16
.L10:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Method__SplitX,.Lfe3-Method__SplitX
	.align 16
	.type	 Method__NoteOverride,@function
Method__NoteOverride:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L13
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Method+260
	jg .L14
	movl MM_Method+256,%eax
	cmpl %edx,4(%eax)
	jge .L13
.L14:
	pushl $1269
	call _m3_fault
	.align 16
.L13:
	testl %ebx,%ebx
	je .L15
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Method+260
	jg .L16
	movl MM_Method+256,%eax
	cmpl %edx,4(%eax)
	jge .L15
.L16:
	pushl $1269
	call _m3_fault
	.align 16
.L15:
	cmpb $0,40(%ecx)
	jne .L17
	pushl $1296
	call _m3_fault
	.align 16
.L17:
	movl 48(%ebx),%eax
	testl %eax,%eax
	jne .L18
	pushl $1312
	call _m3_fault
	.align 16
.L18:
	movl %eax,48(%ecx)
	movl 36(%ebx),%eax
	movl %eax,36(%ecx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Method__NoteOverride,.Lfe4-Method__NoteOverride
	.align 16
	.type	 Method__ResolveDefault,@function
Method__ResolveDefault:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	cmpl $0,56(%edi)
	jne .L19
	movl 52(%edi),%edx
	testl %edx,%edx
	je .L19
	leal 56(%edi),%eax
	pushl %eax
	pushl %edx
	movl MI_UserProc+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L19
	movl 52(%edi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_Null+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	jne .L19
	pushl %esi
	movl MI_ProcType+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L24
	pushl $MM_Method+268
	jmp .L26
	.align 16
.L24:
	pushl $MM_Method+308
.L26:
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
.L19:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Method__ResolveDefault,.Lfe5-Method__ResolveDefault
	.align 16
	.type	 Method__IsEqual,@function
Method__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%edi
	testl %edx,%edx
	je .L28
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_Method+260
	jg .L29
	movl MM_Method+256,%eax
	cmpl %ebx,4(%eax)
	jge .L28
.L29:
	pushl $1669
	call _m3_fault
	.align 16
.L28:
	movl %edx,%esi
	testl %edi,%edi
	je .L30
	movl -4(%edi),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_Method+260
	jg .L31
	movl MM_Method+256,%eax
	cmpl %ebx,4(%eax)
	jge .L30
.L31:
	pushl $1669
	call _m3_fault
	.align 16
.L30:
	pushl %esi
	call Method__ResolveDefault
	pushl %edi
	call Method__ResolveDefault
	xorl %ebx,%ebx
	addl $8,%esp
	testl %esi,%esi
	je .L32
	testl %edi,%edi
	je .L32
	movl 12(%edi),%eax
	cmpl %eax,12(%esi)
	jne .L32
	movb 40(%esi),%al
	cmpb %al,40(%edi)
	jne .L32
	movl 16(%ebp),%ecx
	pushl %ecx
	movl 48(%edi),%eax
	pushl %eax
	movl 48(%esi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L32
	movl 56(%esi),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	movl %eax,%ebx
	movl 56(%edi),%eax
	pushl %eax
	movl MI_Value+104,%eax
	call *%eax
	cmpl %eax,%ebx
	sete %al
	xorl %ebx,%ebx
	movb %al,%bl
.L32:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Method__IsEqual,.Lfe6-Method__IsEqual
	.align 16
	.type	 Method__Check,@function
Method__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 48(%esi),%eax
	testl %eax,%eax
	je .L34
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,48(%esi)
	addl $4,%esp
.L34:
	movl 52(%esi),%edx
	testl %edx,%edx
	je .L35
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Expr+156,%eax
	call *%eax
	pushl %esi
	call Method__ResolveDefault
	addl $12,%esp
.L35:
	movl 56(%esi),%ebx
	testl %ebx,%ebx
	je .L33
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Value+44,%eax
	call *%eax
	pushl %ebx
	movl MI_Value+48,%eax
	call *%eax
	movl %eax,%edi
	addl $12,%esp
	cmpl %edi,MI_Null+44
	jne .L37
	movl $0,56(%esi)
	jmp .L33
	.align 16
.L37:
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $4,%eax
	je .L39
	pushl $MM_Method+268
	jmp .L44
	.align 16
.L39:
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Method+356
	jg .L41
	movl MM_Method+352,%eax
	cmpl %edx,4(%eax)
	jge .L40
.L41:
	pushl $2165
	call _m3_fault
	.align 16
.L40:
	pushl %ebx
	movl MI_Procedure+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L42
	pushl $MM_Method+364
	jmp .L44
	.align 16
.L42:
	movl 48(%esi),%eax
	pushl %eax
	movl 44(%esi),%eax
	pushl %eax
	pushl %edi
	movl MI_ProcType+92,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L33
	pushl $MM_Method+408
.L44:
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
.L33:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Method__Check,.Lfe7-Method__Check
	.align 16
	.type	 Method__TypeOf,@function
Method__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 48(%eax),%eax
	ret
.Lfe8:
	.size	 Method__TypeOf,.Lfe8-Method__TypeOf
	.align 16
	.type	 Method__Compile,@function
Method__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 48(%eax),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Method__Compile,.Lfe9-Method__Compile
	.align 16
	.type	 Method__SetGlobals,@function
Method__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Method__SetGlobals,.Lfe10-Method__SetGlobals
	.align 16
	.type	 Method__AddFPTag,@function
Method__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $0
	pushl $0
	xorl %eax,%eax
	movb 40(%ebx),%al
	movl MM_Method+196(,%eax,4),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+152,%eax
	call *%eax
	addl $20,%esp
	cmpl $0,56(%ebx)
	je .L49
	pushl $MM_Method+464
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 52(%ebx),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
	addl $16,%esp
.L49:
	xorl %eax,%eax
	movb 40(%ebx),%al
	movl MM_Method+204(,%eax,4),%eax
	testl %eax,%eax
	jge .L50
	pushl $2689
	call _m3_fault
	.align 16
.L50:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Method__AddFPTag,.Lfe11-Method__AddFPTag
	.align 16
	.type	 Method__FPType,@function
Method__FPType:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,40(%eax)
	jne .L52
	movl 48(%eax),%eax
	jmp .L53
	.align 16
.L52:
	xorl %eax,%eax
.L53:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Method__FPType,.Lfe12-Method__FPType
	.align 16
	.type	 M_Method_td292d884_LINK,@function
M_Method_td292d884_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Method+256,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Method+152,%eax
	movl %eax,4(%edx)
	movl MM_Method+164,%eax
	movl %eax,8(%edx)
	movl MI_ValueRep+164,%eax
	movl %eax,12(%edx)
	movl MI_ValueRep+168,%eax
	movl %eax,16(%edx)
	movl MI_ValueRep+172,%ecx
	movl %ecx,20(%edx)
	movl %eax,24(%edx)
	movl MM_Method+160,%eax
	movl %eax,28(%edx)
	movl %ecx,32(%edx)
	movl MI_ValueRep+156,%eax
	movl %eax,36(%edx)
	movl MI_ValueRep+160,%eax
	movl %eax,40(%edx)
	movl MM_Method+156,%eax
	movl %eax,44(%edx)
	movl MI_ValueRep+184,%eax
	movl %eax,48(%edx)
	movl MM_Method+168,%eax
	movl %eax,52(%edx)
	movl MM_Method+172,%eax
	movl %eax,56(%edx)
	popl %ebp
	ret
.Lfe13:
	.size	 M_Method_td292d884_LINK,.Lfe13-M_Method_td292d884_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Method
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_Method
.data
	.align 4
	.type	 MM_Method,@object
	.size	 MM_Method,940
MM_Method:
	.long MM_Method+732
	.long MM_Method+44
	.long MM_Method+256
	.zero	8
	.long MM_Method+584
	.zero	28
	.long -762128252
.byte 31
.byte 32
.byte 245
.byte 221
.byte 155
.byte 248
.byte 103
.byte 15
	.long 1
	.zero	4
	.long 24
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Method+876
	.long MM_Method+884
	.long MM_Method+890
	.zero	4
	.long M_Method_td292d884_LINK
	.long -105857942
	.zero	12
	.long MM_Method+911
	.long MM_Method+931
	.zero	4
	.long Method__ResolveDefault
	.long Method__Check
	.long Method__TypeOf
	.long Method__Compile
	.long Method__SetGlobals
	.long Method__AddFPTag
	.long Method__FPType
	.long Method__New
	.long Method__Split
	.long Method__SplitX
	.long Method__NoteOverride
	.long Method__IsEqual
	.long MM_Method+216
	.long MM_Method+236
	.long 1
	.zero	4
	.long 2
	.long MM_Method+224
	.long 8
	.ascii	"METHOD "
	.zero	1
	.long 2
	.long MM_Method+244
	.long 10
	.ascii	"OVERRIDE "
	.zero	3
	.long MM_Method+352
	.long -762128252
	.long 2
	.long MM_Method+276
	.long 27
	.ascii	"default is not a procedure"
	.zero	2
	.long 2
	.long MM_Method+316
	.long 36
	.ascii	"default is not a procedure constant"
	.zero	5
	.long -712670126
	.long 2
	.long MM_Method+372
	.long 30
	.ascii	"default is a nested procedure"
	.zero	3
	.long 2
	.long MM_Method+416
	.long 41
	.ascii	"default is incompatible with method type"
	.zero	4
	.long 2
	.long MM_Method+472
	.long 5
	.ascii	" := "
	.zero	4
	.ascii	"FPType"
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"ResolveDefault"
	.zero	1
	.ascii	"NoteOverride"
	.zero	1
	.ascii	"SplitX"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"New"
	.zero	4
	.long Method__FPType
	.long MM_Method+480
	.zero	4
	.long Method__AddFPTag
	.long MM_Method+487
	.zero	4
	.long Method__SetGlobals
	.long MM_Method+496
	.zero	4
	.long Method__Compile
	.long MM_Method+507
	.zero	4
	.long Method__TypeOf
	.long MM_Method+515
	.zero	4
	.long Method__Check
	.long MM_Method+522
	.zero	4
	.long Method__IsEqual
	.long MM_Method+528
	.long MI_Method+60
	.long Method__ResolveDefault
	.long MM_Method+536
	.zero	4
	.long Method__NoteOverride
	.long MM_Method+551
	.long MI_Method+56
	.long Method__SplitX
	.long MM_Method+564
	.long MI_Method+52
	.long Method__Split
	.long MM_Method+571
	.long MI_Method+48
	.long Method__New
	.long MM_Method+577
	.long MI_Method+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Method.m3"
	.zero	1
.byte 14
.byte 16
.byte 36
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 41
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 7
.byte 10
.byte 6
.byte 7
.byte 2
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 25
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
	.ascii	"Method_^%#%^__0001M"
	.zero	1
	.ascii	"Method.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
