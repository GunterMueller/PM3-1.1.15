	.file	"RTParams.mc"
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
	.type	 RTParams__Nth,@function
RTParams__Nth:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	jl .L5
	cmpl %edx,MI_RTParams+44
	jle .L5
	movl MM_RTParams+148,%eax
	leal (%eax,%edx,4),%eax
	testl %eax,%eax
	jne .L4
	pushl $404
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	pushl %eax
	movl MI_M3toC+60,%eax
	call *%eax
.L5:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTParams__Nth,.Lfe1-RTParams__Nth
	.align 16
	.type	 RTParams__IsPresent,@function
RTParams__IsPresent:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MM_RTParams+148,%ebx
	movl MI_RTParams+44,%edi
	decl %edi
	jmp .L7
	.align 16
.L8:
	testl %ebx,%ebx
	jne .L9
	pushl $516
	call _m3_fault
	.align 16
.L9:
	movl (%ebx),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call RTParams__Match
	addl $8,%esp
	testl %eax,%eax
	je .L10
	movl $1,%eax
	jmp .L12
	.align 16
.L10:
	addl $4,%ebx
	incl %esi
.L7:
	cmpl %edi,%esi
	jle .L8
	xorl %eax,%eax
.L12:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTParams__IsPresent,.Lfe2-RTParams__IsPresent
	.align 16
	.type	 RTParams__Value,@function
RTParams__Value:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RTParams__RawValue
	addl $4,%esp
	testl %eax,%eax
	je .L16
	cmpl $MM_RTParams+156,%eax
	je .L15
	pushl %eax
	movl MI_M3toC+60,%eax
	call *%eax
	jmp .L16
	.align 16
.L15:
	movl $MM_RTParams+396,%eax
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTParams__Value,.Lfe3-RTParams__Value
	.align 16
	.type	 RTParams__RawValue,@function
RTParams__RawValue:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl MM_RTParams+148,%ebx
	movl MI_RTParams+44,%edi
	decl %edi
	jmp .L18
	.align 16
.L19:
	testl %ebx,%ebx
	jne .L20
	pushl $836
	call _m3_fault
	.align 16
.L20:
	movl (%ebx),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call RTParams__Match
	addl $8,%esp
	testl %eax,%eax
	je .L21
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	addl (%ebx),%eax
	jne .L23
	pushl $868
	call _m3_fault
	.align 16
.L23:
	cmpb $61,(%eax)
	jne .L24
	incl %eax
	jmp .L26
	.align 16
.L24:
	movl $MM_RTParams+156,%eax
	jmp .L26
	.align 16
.L21:
	addl $4,%ebx
	incl %esi
.L18:
	cmpl %edi,%esi
	jle .L19
	xorl %eax,%eax
.L26:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTParams__RawValue,.Lfe4-RTParams__RawValue
	.align 16
	.type	 RTParams__Match,@function
RTParams__Match:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	testl %ebx,%ebx
	je .L42
	testl %edx,%edx
	je .L42
	xorl %ecx,%ecx
	movl 4(%ebx),%esi
	addl $-2,%esi
	jmp .L31
	.align 16
.L32:
	testl %ebx,%ebx
	jne .L33
	pushl $1092
	call _m3_fault
	.align 16
.L33:
	cmpl %ecx,4(%ebx)
	ja .L34
	pushl $1090
	call _m3_fault
	.align 16
.L34:
	testl %edx,%edx
	jne .L35
	pushl $1092
	call _m3_fault
	.align 16
.L35:
	movl (%ebx),%eax
	movb (%ecx,%eax),%al
	cmpb %al,(%edx)
	jne .L42
	incl %edx
	incl %ecx
.L31:
	cmpl %esi,%ecx
	jle .L32
	movl $1,%eax
	testl %edx,%edx
	jne .L38
	pushl $1140
	call _m3_fault
	.align 16
.L38:
	movb (%edx),%dl
	testb %dl,%dl
	je .L39
	cmpb $61,%dl
	je .L39
.L42:
	xorl %eax,%eax
.L39:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTParams__Match,.Lfe5-RTParams__Match
	.align 16
	.type	 RTParams__Init,@function
RTParams__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L44:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	xorl %ebx,%ebx
	movl MI_RTLinker+148,%edi
	movl %ebx,-12(%ebp)
	cmpb $0,MM_RTParams+152
	jne .L76
	movl MI_RTArgs+44,%eax
	movb $1,MM_RTParams+152
	call *%eax
	movl %ebx,MI_RTParams+44
	jmp .L46
	.align 16
.L47:
	movl 12(%edi),%eax
	movl -12(%ebp),%esi
	leal (%eax,%esi,4),%edx
	testl %edx,%edx
	jne .L49
	pushl $1492
	call _m3_fault
	.align 16
.L49:
	movl (%edx),%ecx
	testl %ecx,%ecx
	je .L50
	cmpb $64,(%ecx)
	jne .L50
	cmpb $77,1(%ecx)
	jne .L50
	cmpb $51,2(%ecx)
	jne .L50
	movl -12(%ebp),%ebx
	movl -16(%ebp),%esi
	decl %esi
	movl %esi,-16(%ebp)
	jmp .L55
	.align 16
.L56:
	testl %edx,%edx
	jne .L58
	pushl $1540
	call _m3_fault
	.align 16
.L58:
	movl 4(%edx),%eax
	movl %eax,(%edx)
	addl $4,%edx
	incl %ebx
.L55:
	cmpl %ebx,-16(%ebp)
	jge .L56
	testl %edx,%edx
	jne .L60
	pushl $1556
	call _m3_fault
	.align 16
.L60:
	movl %edx,%eax
	testl %ecx,%ecx
	jne .L61
	pushl $1556
	call _m3_fault
	.align 16
.L61:
	addl $3,%ecx
	movl %ecx,(%eax)
	incl MI_RTParams+44
	testl %edi,%edi
	jne .L62
	pushl $1588
	call _m3_fault
	.align 16
.L62:
	decl 8(%edi)
	jmp .L46
	.align 16
.L50:
	incl -12(%ebp)
.L46:
	testl %edi,%edi
	jne .L64
	pushl $1460
	call _m3_fault
	.align 16
.L64:
	movl 8(%edi),%esi
	movl %esi,-16(%ebp)
	movl -12(%ebp),%esi
	cmpl %esi,-16(%ebp)
	jg .L47
	movl 12(%edi),%eax
	movl -16(%ebp),%esi
	leal 4(%eax,%esi,4),%eax
	movl %eax,MM_RTParams+148
	movl %eax,%edx
	movl MI_RTParams+44,%eax
	leal -4(%edx,%eax,4),%ebx
	sarl $1,%eax
	xorl %ecx,%ecx
	leal -1(%eax),%edi
	jmp .L68
	.align 16
.L69:
	testl %edx,%edx
	jne .L70
	pushl $1764
	call _m3_fault
	.align 16
.L70:
	movl (%edx),%esi
	movl %esi,-16(%ebp)
	testl %ebx,%ebx
	jne .L72
	pushl $1764
	call _m3_fault
	.align 16
.L72:
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl -16(%ebp),%esi
	movl %esi,(%ebx)
	addl $4,%edx
	addl $-4,%ebx
	incl %ecx
.L68:
	cmpl %edi,%ecx
	jle .L69
.L75:
	movl -8(%ebp),%eax
.L76:
	movl %eax,RTThread__handlerStack
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTParams__Init,.Lfe6-RTParams__Init
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTParams
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_RTParams
.data
	.align 4
	.type	 MM_RTParams,@object
	.size	 MM_RTParams,688
MM_RTParams:
	.long MM_RTParams+524
	.long MM_RTParams+44
	.zero	12
	.long MM_RTParams+448
	.zero	28
	.long 690206623
.byte 228
.byte 52
.byte 218
.byte 38
.byte 123
.byte 131
.byte 249
.byte 15
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_RTParams+685
	.zero	40
	.long MM_RTParams+164
	.zero	12
	.long RTParams__Match
	.zero	8
	.long -2107205726
.byte 157
.byte 231
.byte 15
.byte 139
.byte 63
.byte 112
.byte 105
.byte 9
	.zero	8
	.long 4
	.long 1
	.zero	20
	.long MM_RTParams+680
	.zero	40
	.long MM_RTParams+268
	.zero	8
	.long -372274814
.byte 226
.byte 162
.byte 65
.byte 233
.byte 96
.byte 43
.byte 142
.byte 0
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_RTParams+677
	.zero	44
	.long RTParams__Nth
	.long RTParams__IsPresent
	.long RTParams__Value
	.long RTParams__RawValue
	.long RTParams__Init
	.long 2
	.long MM_RTParams+404
	.long 1
	.zero	4
	.ascii	"Init"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"RawValue"
	.zero	1
	.ascii	"Value"
	.zero	1
	.ascii	"IsPresent"
	.zero	1
	.ascii	"Nth"
	.zero	1
	.long RTParams__Init
	.long MM_RTParams+408
	.long MI_RTParams+64
	.long RTParams__Match
	.long MM_RTParams+413
	.zero	4
	.long RTParams__RawValue
	.long MM_RTParams+419
	.long MI_RTParams+60
	.long RTParams__Value
	.long MM_RTParams+428
	.long MI_RTParams+56
	.long RTParams__IsPresent
	.long MM_RTParams+434
	.long MI_RTParams+52
	.long RTParams__Nth
	.long MM_RTParams+444
	.long MI_RTParams+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTParams.m3"
	.zero	1
.byte 5
.byte 5
.byte 0
.byte 1
.byte 16
.byte 26
.byte 4
.byte 0
.byte 5
.byte 0
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
