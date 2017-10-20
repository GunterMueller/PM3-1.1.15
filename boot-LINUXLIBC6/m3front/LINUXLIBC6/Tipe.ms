	.file	"Tipe.mc"
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
	.type	 Tipe__Parse,@function
Tipe__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $0,5(%eax)
	je .L2
	pushl $MM_Tipe+188
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L2:
	movl 8(%ebp),%eax
	cmpb $0,4(%eax)
	je .L3
	pushl $MM_Tipe+224
	jmp .L13
	.align 16
.L3:
	cmpl $0,8(%eax)
	je .L4
	pushl $MM_Tipe+264
.L13:
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L4:
	pushl $95
	jmp .L14
	.align 16
.L7:
	movl MI_Scanner+112,%eax
	call *%eax
	pushl %eax
	call Tipe__Create
	movl %eax,%ebx
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 30(%ebx),%dl
	andb $247,%dl
	movb 6(%eax),%al
	andl $255,%eax
	andl $1,%eax
	sall $3,%eax
	orl %eax,%edx
	movb %dl,30(%ebx)
	movl 8(%ebp),%eax
	andl $239,%edx
	movb 7(%eax),%al
	andl $255,%eax
	andl $1,%eax
	sall $4,%eax
	orb %dl,%al
	movb %al,30(%ebx)
	pushl %ebx
	movl MI_Scope+72,%eax
	call *%eax
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $8,%esp
	cmpl $20,%eax
	jle .L8
	cmpl $21,%eax
	jle .L9
	cmpl $32,%eax
	jle .L8
	cmpl $33,%eax
	jle .L10
	jmp .L8
	.align 16
.L9:
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,36(%ebx)
	jmp .L11
	.align 16
.L10:
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_OpaqueType+44,%eax
	call *%eax
	movl %eax,36(%ebx)
	addl $8,%esp
	jmp .L11
	.align 16
.L8:
	pushl $MM_Tipe+320
	movl MI_Scanner+116,%eax
	call *%eax
	addl $4,%esp
.L11:
	pushl $16
.L14:
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	cmpb $1,MI_Scanner+44
	je .L7
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Tipe__Parse,.Lfe1-Tipe__Parse
	.align 16
	.type	 Tipe__Create,@function
Tipe__Create:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Tipe+348,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $2
	pushl %ebx
	movl %eax,%esi
	pushl %esi
	movl MI_ValueRep+148,%eax
	call *%eax
	orb $2,30(%esi)
	movl $0,36(%esi)
	movb $0,40(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Tipe__Create,.Lfe2-Tipe__Create
	.align 16
	.type	 Tipe__Define,@function
Tipe__Define:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	call Tipe__Create
	movl %eax,%esi
	movl %ebx,36(%esi)
	pushl %esi
	movl MI_Scope+72,%eax
	call *%eax
	addl $16,%esp
	cmpb $0,16(%ebp)
	je .L16
	pushl %esi
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Scanner+120,%eax
	call *%eax
.L16:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Tipe__Define,.Lfe3-Tipe__Define
	.align 16
	.type	 Tipe__DefineOpaque,@function
Tipe__DefineOpaque:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	call Tipe__Create
	movl %eax,%esi
	pushl %esi
	movl MI_Scope+72,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_OpaqueType+44,%eax
	call *%eax
	movl %eax,36(%esi)
	pushl %esi
	movl 12(%esi),%eax
	pushl %eax
	movl MI_Scanner+120,%eax
	call *%eax
	leal -8(%ebp),%esp
	movl 36(%esi),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Tipe__DefineOpaque,.Lfe4-Tipe__DefineOpaque
	.align 16
	.type	 Tipe__Check,@function
Tipe__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %esi
	leal -28(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl 36(%ebx),%esi
	pushl %eax
	pushl %esi
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,36(%ebx)
	addl $8,%esp
	testb $8,31(%ebx)
	jne .L19
	xorl %eax,%eax
	movb -10(%ebp),%al
	cmpl $14,%eax
	je .L21
	cmpl $8,%eax
	jne .L19
.L21:
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_NamedType+60,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L19
	pushl $1
	pushl $1
	pushl %ebx
	movl MI_Value+112,%eax
	call *%eax
	addl $12,%esp
	cmpb $14,-10(%ebp)
	jne .L22
	pushl %eax
	movl 36(%ebx),%eax
	pushl %eax
	movl MI_RefType+72,%eax
	jmp .L24
	.align 16
.L22:
	pushl %eax
	movl 36(%ebx),%eax
	pushl %eax
	movl MI_ObjectType+84,%eax
.L24:
	call *%eax
.L19:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Tipe__Check,.Lfe5-Tipe__Check
	.align 16
	.type	 Tipe__Compile,@function
Tipe__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	xorl %eax,%eax
	movb 31(%esi),%al
	sall $28,%eax
	movl %eax,%ebx
	shrl $31,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L26
	movl 36(%esi),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	pushl %ebx
	pushl $1
	movl %eax,%edi
	pushl %esi
	movl MI_Value+112,%eax
	call *%eax
	pushl %ebx
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	pushl %edi
	movl MI_CG+76,%eax
	call *%eax
	addl $32,%esp
	pushl %esi
	pushl %edi
	movl MI_WebInfo+60,%eax
	call *%eax
.L26:
	leal -12(%ebp),%esp
	movl $1,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Tipe__Compile,.Lfe6-Tipe__Compile
	.align 16
	.type	 Tipe__SetGlobals,@function
Tipe__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Tipe__SetGlobals,.Lfe7-Tipe__SetGlobals
	.align 16
	.type	 Tipe__AddFPTag,@function
Tipe__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $1
	pushl $0
	pushl $MM_Tipe+360
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_ValueRep+152,%eax
	call *%eax
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Tipe__AddFPTag,.Lfe8-Tipe__AddFPTag
	.align 16
	.type	 Tipe__ToType,@function
Tipe__ToType:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 36(%eax),%eax
	ret
.Lfe9:
	.size	 Tipe__ToType,.Lfe9-Tipe__ToType
	.align 16
	.type	 M_Tipe_t952e85d6_LINK,@function
M_Tipe_t952e85d6_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Tipe+348,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Tipe+152,%eax
	movl %eax,4(%edx)
	movl MM_Tipe+160,%eax
	movl %eax,8(%edx)
	movl MI_ValueRep+164,%eax
	movl %eax,12(%edx)
	movl MM_Tipe+156,%eax
	movl %eax,16(%edx)
	movl MI_ValueRep+172,%ecx
	movl %ecx,20(%edx)
	movl MI_ValueRep+168,%eax
	movl %eax,24(%edx)
	movl %ecx,28(%edx)
	movl %ecx,32(%edx)
	movl MI_ValueRep+156,%eax
	movl %eax,36(%edx)
	movl MM_Tipe+168,%ecx
	movl %ecx,40(%edx)
	movl MI_ValueRep+180,%eax
	movl %eax,44(%edx)
	movl MI_ValueRep+184,%eax
	movl %eax,48(%edx)
	movl MM_Tipe+164,%eax
	movl %eax,52(%edx)
	movl %ecx,56(%edx)
	popl %ebp
	ret
.Lfe10:
	.size	 M_Tipe_t952e85d6_LINK,.Lfe10-M_Tipe_t952e85d6_LINK
.globl MM_Tipe
.data
	.align 4
	.type	 MM_Tipe,@object
	.size	 MM_Tipe,736
MM_Tipe:
	.long MM_Tipe+564
	.long MM_Tipe+44
	.long MM_Tipe+348
	.zero	8
	.long MM_Tipe+452
	.zero	28
	.long -1792113194
.byte 208
.byte 106
.byte 140
.byte 152
.byte 6
.byte 239
.byte 162
.byte 13
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Tipe+706
	.long MM_Tipe+709
	.long MM_Tipe+711
	.zero	4
	.long M_Tipe_t952e85d6_LINK
	.long -105857942
	.zero	12
	.long MM_Tipe+720
	.long MM_Tipe+727
	.zero	4
	.long Tipe__Create
	.long Tipe__Check
	.long Tipe__Compile
	.long Tipe__SetGlobals
	.long Tipe__AddFPTag
	.long Tipe__ToType
	.long Tipe__Parse
	.long Tipe__Define
	.long Tipe__DefineOpaque
	.long 2
	.long MM_Tipe+196
	.long 24
	.ascii	"a type cannot be inline"
	.zero	1
	.long 2
	.long MM_Tipe+232
	.long 26
	.ascii	"a type cannot be external"
	.zero	3
	.long 2
	.long MM_Tipe+272
	.long 42
	.ascii	"a type does not have a calling convention"
	.zero	3
	.long 2
	.long MM_Tipe+328
	.long 20
	.ascii	"missing '=' or '<:'"
	.zero	5
	.long -1792113194
	.long 2
	.long MM_Tipe+368
	.long 6
	.ascii	"TYPE "
	.zero	3
	.ascii	"ToType"
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"DefineOpaque"
	.zero	1
	.ascii	"Define"
	.zero	1
	.ascii	"Create"
	.zero	1
	.ascii	"Parse"
	.zero	3
	.long Tipe__ToType
	.long MM_Tipe+376
	.zero	4
	.long Tipe__AddFPTag
	.long MM_Tipe+383
	.zero	4
	.long Tipe__SetGlobals
	.long MM_Tipe+392
	.zero	4
	.long Tipe__Compile
	.long MM_Tipe+403
	.zero	4
	.long Tipe__Check
	.long MM_Tipe+411
	.zero	4
	.long Tipe__DefineOpaque
	.long MM_Tipe+417
	.long MI_Tipe+52
	.long Tipe__Define
	.long MM_Tipe+430
	.long MI_Tipe+48
	.long Tipe__Create
	.long MM_Tipe+437
	.zero	4
	.long Tipe__Parse
	.long MM_Tipe+444
	.long MI_Tipe+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Tipe.m3"
	.zero	1
.byte 4
.byte 16
.byte 0
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 2
	.ascii	"Tipe.T"
	.zero	1
	.ascii	"Tipe.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
