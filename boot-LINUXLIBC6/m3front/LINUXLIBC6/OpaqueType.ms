	.file	"OpaqueType.mc"
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
	.type	 OpaqueType__New,@function
OpaqueType__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_OpaqueType+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $9
	movl %eax,%edi
	pushl %edi
	movl MI_TypeRep+148,%eax
	call *%eax
	movl %ebx,60(%edi)
	movl %esi,56(%edi)
	movl $0,64(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 OpaqueType__New,.Lfe1-OpaqueType__New
	.align 16
	.type	 OpaqueType__Reduce,@function
OpaqueType__Reduce:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L6
	cmpb $1,34(%edx)
	jne .L4
	pushl %edx
	movl MI_Type+76,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
.L4:
	cmpb $9,34(%edx)
	je .L5
	xorl %eax,%eax
	jmp .L8
	.align 16
.L5:
	testl %edx,%edx
	je .L6
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_OpaqueType+200
	jg .L7
	movl MM_OpaqueType+196,%eax
	cmpl %ecx,4(%eax)
	jge .L6
.L7:
	pushl $789
	call _m3_fault
	.align 16
.L6:
	movl %edx,%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 OpaqueType__Reduce,.Lfe2-OpaqueType__Reduce
	.align 16
	.type	 OpaqueType__Is,@function
OpaqueType__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call OpaqueType__Reduce
	testl %eax,%eax
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 OpaqueType__Is,.Lfe3-OpaqueType__Is
	.align 16
	.type	 OpaqueType__Super,@function
OpaqueType__Super:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	call OpaqueType__Reduce
	testl %eax,%eax
	jne .L11
	movl %ebx,%eax
	jmp .L12
	.align 16
.L11:
	movl 60(%eax),%eax
.L12:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 OpaqueType__Super,.Lfe4-OpaqueType__Super
	.align 16
	.type	 OpaqueType__UID,@function
OpaqueType__UID:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call OpaqueType__Reduce
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L16
	movl 64(%ebx),%esi
	testl %esi,%esi
	jne .L15
	pushl $1
	pushl $1
	movl 56(%ebx),%eax
	pushl %eax
	movl MI_Value+112,%eax
	call *%eax
	pushl %esi
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,64(%ebx)
.L15:
	movl 64(%ebx),%eax
.L16:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 OpaqueType__UID,.Lfe5-OpaqueType__UID
	.align 16
	.type	 OpaqueType__Check,@function
OpaqueType__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	leal -20(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,60(%ebx)
	movb -1(%ebp),%cl
	andb $1,%cl
	movb %cl,68(%ebx)
	xorl %eax,%eax
	movb -2(%ebp),%al
	addl $8,%esp
	cmpl $9,%eax
	je .L18
	cmpl $14,%eax
	je .L18
	cmpl $8,%eax
	je .L18
	pushl $MM_OpaqueType+208
	movl MI_Error+44,%eax
	call *%eax
	movl MI_Reff+44,%eax
	movl %eax,60(%ebx)
.L18:
	movl MI_Target+60,%eax
	movl %eax,16(%ebx)
	movl %eax,20(%ebx)
	movl MI_Target+64,%eax
	movl %eax,24(%ebx)
	movb $0,33(%ebx)
	movb $0,32(%ebx)
	movb $9,34(%ebx)
	xorl %edx,%edx
	movb 35(%ebx),%dl
	andb $254,%dl
	xorl %eax,%eax
	movb -1(%ebp),%al
	andl $1,%eax
	orl %edx,%eax
	andl $253,%eax
	orb $4,%al
	movb %al,35(%ebx)
	movl 64(%ebx),%ecx
	negl %ecx
	movl %ecx,28(%ebx)
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 OpaqueType__Check,.Lfe6-OpaqueType__Check
	.align 16
	.type	 OpaqueType__Compiler,@function
OpaqueType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%esi
	movl 60(%ebx),%eax
	pushl %eax
	movl MI_Type+132,%eax
	movl %esi,%edi
	call *%eax
	movl %eax,%esi
	pushl %esi
	pushl %edi
	movl MI_CG+156,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl (%edx),%eax
	movl 32(%eax),%eax
	pushl %esi
	pushl %edi
	pushl %edx
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 OpaqueType__Compiler,.Lfe7-OpaqueType__Compiler
	.align 16
	.type	 OpaqueType__EqualChk,@function
OpaqueType__EqualChk:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 OpaqueType__EqualChk,.Lfe8-OpaqueType__EqualChk
	.align 16
	.type	 OpaqueType__IsSubtype,@function
OpaqueType__IsSubtype:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	xorl %ebx,%ebx
	pushl %eax
	call OpaqueType__Reduce
	addl $4,%esp
	testl %eax,%eax
	je .L23
	pushl %eax
	movl MI_Revelation+176,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L23
	pushl %ebx
	movl MI_Type+64,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	pushl %esi
	movl MI_Type+120,%eax
	call *%eax
	jmp .L24
	.align 16
.L23:
	movl %ebx,%eax
.L24:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 OpaqueType__IsSubtype,.Lfe9-OpaqueType__IsSubtype
	.align 16
	.type	 OpaqueType__Subtyper,@function
OpaqueType__Subtyper:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl $48
	xorl %ebx,%ebx
	pushl %ebx
	leal -48(%ebp),%esi
	pushl %esi
	call memset
	movl 12(%ebp),%edx
	pushl %edx
	movl 60(%edi),%eax
	pushl %eax
	movl MI_Type+120,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	jne .L39
	pushl %esi
	pushl %edi
	movl MI_Revelation+180,%eax
	call *%eax
	movl %ebx,%esi
	movl -48(%ebp),%edi
	decl %edi
	addl $8,%esp
	jmp .L27
	.align 16
.L28:
	cmpl $9,%esi
	jle .L29
	pushl $2305
	call _m3_fault
	.align 16
.L29:
	movl -44(%ebp,%esi,4),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl 12(%ebp),%edx
	pushl %edx
	movl %eax,%ebx
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L39
	incl %esi
.L27:
	cmpl %edi,%esi
	jle .L28
	jmp .L32
	.align 16
.L33:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Type+64,%eax
	call *%eax
	movl 12(%ebp),%edx
	pushl %edx
	movl %eax,%ebx
	pushl %ebx
	movl MI_Type+120,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L35
.L39:
	movl $1,%eax
	jmp .L38
	.align 16
.L35:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L36
	pushl $2404
	call _m3_fault
	.align 16
.L36:
	movl (%eax),%eax
	movl %eax,-4(%ebp)
.L32:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L33
.L38:
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 OpaqueType__Subtyper,.Lfe10-OpaqueType__Subtyper
	.align 16
	.type	 OpaqueType__InitCoster,@function
OpaqueType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,68(%eax)
	je .L41
	cmpb $0,12(%ebp)
	jne .L41
	movl $1,%eax
	jmp .L42
	.align 16
.L41:
	xorl %eax,%eax
.L42:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 OpaqueType__InitCoster,.Lfe11-OpaqueType__InitCoster
	.align 16
	.type	 OpaqueType__FPrinter,@function
OpaqueType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	subl $404,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $0
	movl MI_Textt+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L44
	movl 12(%ebp),%eax
	movl $MM_OpaqueType+264,(%eax)
	jmp .L47
	.align 16
.L44:
	pushl %ebx
	movl MI_Mutex+44,%eax
	pushl %eax
	pushl %esi
	movl MI_Type+116,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L46
	movl 12(%ebp),%eax
	movl $MM_OpaqueType+284,(%eax)
.L47:
	movl 12(%ebp),%eax
	movl $0,8(%eax)
	jmp .L43
	.align 16
.L46:
	pushl $MM_OpaqueType+304
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl %ebx,-404(%ebp)
	pushl $1
	pushl $1
	pushl %ebx
	leal -404(%ebp),%ebx
	pushl %ebx
	movl 56(%esi),%eax
	pushl %eax
	movl MI_Scope+120,%eax
	call *%eax
	pushl %ebx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Scope+124,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl $1,8(%edx)
	movl 60(%esi),%eax
	movl %eax,12(%edx)
.L43:
	leal -412(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 OpaqueType__FPrinter,.Lfe12-OpaqueType__FPrinter
	.align 16
	.type	 M_OpaqueType_t87156bf8_LINK,@function
M_OpaqueType_t87156bf8_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_OpaqueType+196,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_OpaqueType+152,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MM_OpaqueType+160,%eax
	movl %eax,12(%edx)
	movl MM_OpaqueType+164,%eax
	movl %eax,16(%edx)
	movl MM_OpaqueType+156,%eax
	movl %eax,20(%edx)
	movl MM_OpaqueType+168,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MI_TypeRep+164,%eax
	movl %eax,32(%edx)
	movl MI_TypeRep+168,%eax
	movl %eax,36(%edx)
	movl MM_OpaqueType+172,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe13:
	.size	 M_OpaqueType_t87156bf8_LINK,.Lfe13-M_OpaqueType_t87156bf8_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_OpaqueType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_OpaqueType
.data
	.align 4
	.type	 MM_OpaqueType,@object
	.size	 MM_OpaqueType,744
MM_OpaqueType:
	.long MM_OpaqueType+556
	.long MM_OpaqueType+44
	.long MM_OpaqueType+196
	.zero	8
	.long MM_OpaqueType+408
	.zero	28
	.long -2028639240
.byte 10
.byte 192
.byte 33
.byte 139
.byte 242
.byte 171
.byte 52
.byte 12
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_OpaqueType+703
	.long MM_OpaqueType+708
	.long MM_OpaqueType+711
	.zero	4
	.long M_OpaqueType_t87156bf8_LINK
	.long -2121051098
	.zero	16
	.long MM_OpaqueType+728
	.zero	4
	.long OpaqueType__Reduce
	.long OpaqueType__Check
	.long OpaqueType__Compiler
	.long OpaqueType__EqualChk
	.long OpaqueType__Subtyper
	.long OpaqueType__InitCoster
	.long OpaqueType__FPrinter
	.long OpaqueType__New
	.long OpaqueType__Is
	.long OpaqueType__Super
	.long OpaqueType__IsSubtype
	.long OpaqueType__UID
	.zero	4
	.long -2028639240
	.long 2
	.long MM_OpaqueType+216
	.long 43
	.ascii	"opaque super type must be a reference type"
	.zero	2
	.long 2
	.long MM_OpaqueType+272
	.long 6
	.ascii	"$text"
	.zero	3
	.long 2
	.long MM_OpaqueType+292
	.long 7
	.ascii	"$mutex"
	.zero	2
	.long 2
	.long MM_OpaqueType+312
	.long 8
	.ascii	"OPAQUE "
	.zero	1
	.ascii	"FPrinter"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"Subtyper"
	.zero	1
	.ascii	"IsSubtype"
	.zero	1
	.ascii	"EqualChk"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"UID"
	.zero	1
	.ascii	"Super"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"New"
	.zero	2
	.long OpaqueType__FPrinter
	.long MM_OpaqueType+320
	.zero	4
	.long OpaqueType__InitCoster
	.long MM_OpaqueType+329
	.zero	4
	.long OpaqueType__Subtyper
	.long MM_OpaqueType+340
	.zero	4
	.long OpaqueType__IsSubtype
	.long MM_OpaqueType+349
	.long MI_OpaqueType+56
	.long OpaqueType__EqualChk
	.long MM_OpaqueType+359
	.zero	4
	.long OpaqueType__Compiler
	.long MM_OpaqueType+368
	.zero	4
	.long OpaqueType__Check
	.long MM_OpaqueType+377
	.zero	4
	.long OpaqueType__UID
	.long MM_OpaqueType+383
	.long MI_OpaqueType+60
	.long OpaqueType__Super
	.long MM_OpaqueType+387
	.long MI_OpaqueType+52
	.long OpaqueType__Is
	.long MM_OpaqueType+393
	.long MI_OpaqueType+48
	.long OpaqueType__Reduce
	.long MM_OpaqueType+396
	.zero	4
	.long OpaqueType__New
	.long MM_OpaqueType+403
	.long MI_OpaqueType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/OpaqueType.m3"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 16
.byte 0
.byte 4
.byte 4
.byte 0
.byte 5
.byte 10
.byte 4
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 19
.byte 254
.byte 126
.byte 2
	.ascii	"OpaqueType.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
