	.file	"EnumElt.mc"
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
	.type	 EnumElt__New,@function
EnumElt__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%esi
	movl MM_EnumElt+180,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl %eax,%edi
	pushl %edi
	movl MI_ValueRep+148,%eax
	call *%eax
	orb $2,30(%edi)
	movl 12(%ebp),%edx
	leal -12(%ebp),%esp
	movl (%edx),%eax
	movl %eax,36(%edi)
	movl 4(%edx),%eax
	movl %eax,40(%edi)
	movl %esi,44(%edi)
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 EnumElt__New,.Lfe1-EnumElt__New
	.align 16
	.type	 EnumElt__IsEqual,@function
EnumElt__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L3
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumElt+184
	jg .L4
	movl MM_EnumElt+180,%eax
	cmpl %edx,4(%eax)
	jge .L3
.L4:
	pushl $741
	call _m3_fault
	.align 16
.L3:
	testl %ebx,%ebx
	je .L5
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_EnumElt+184
	jg .L6
	movl MM_EnumElt+180,%eax
	cmpl %edx,4(%eax)
	jge .L5
.L6:
	pushl $741
	call _m3_fault
	.align 16
.L5:
	xorl %edx,%edx
	movl 12(%ebx),%eax
	cmpl %eax,12(%ecx)
	jne .L7
	leal 36(%ebx),%eax
	pushl %eax
	leal 36(%ecx),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %edx,%edx
	movb %al,%dl
.L7:
	movl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 EnumElt__IsEqual,.Lfe2-EnumElt__IsEqual
	.align 16
	.type	 EnumElt__Check,@function
EnumElt__Check:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 EnumElt__Check,.Lfe3-EnumElt__Check
	.align 16
	.type	 EnumElt__Load,@function
EnumElt__Load:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	addl $36,%eax
	pushl %eax
	movl MI_CG+428,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 EnumElt__Load,.Lfe4-EnumElt__Load
	.align 16
	.type	 EnumElt__ToExpr,@function
EnumElt__ToExpr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	leal 36(%edx),%eax
	pushl %eax
	movl 44(%edx),%eax
	pushl %eax
	movl MI_EnumExpr+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 EnumElt__ToExpr,.Lfe5-EnumElt__ToExpr
	.align 16
	.type	 EnumElt__TypeOf,@function
EnumElt__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 44(%eax),%eax
	ret
.Lfe6:
	.size	 EnumElt__TypeOf,.Lfe6-EnumElt__TypeOf
	.align 16
	.type	 EnumElt__AddFPTag,@function
EnumElt__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $0
	pushl $0
	pushl $MM_EnumElt+192
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_ValueRep+152,%eax
	call *%eax
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 EnumElt__AddFPTag,.Lfe7-EnumElt__AddFPTag
	.align 16
	.type	 EnumElt__FPType,@function
EnumElt__FPType:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 EnumElt__FPType,.Lfe8-EnumElt__FPType
	.align 16
	.type	 M_EnumElt_ta784f0e6_LINK,@function
M_EnumElt_ta784f0e6_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_EnumElt+180,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_EnumElt+148,%eax
	movl %eax,4(%edx)
	movl MI_ValueRep+172,%ecx
	movl %ecx,8(%edx)
	movl MM_EnumElt+152,%eax
	movl %eax,12(%edx)
	movl MI_ValueRep+168,%eax
	movl %eax,16(%edx)
	movl %ecx,20(%edx)
	movl %eax,24(%edx)
	movl %ecx,28(%edx)
	movl %ecx,32(%edx)
	movl MM_EnumElt+156,%eax
	movl %eax,36(%edx)
	movl MI_ValueRep+160,%eax
	movl %eax,40(%edx)
	movl MM_EnumElt+160,%eax
	movl %eax,44(%edx)
	movl MI_ValueRep+184,%eax
	movl %eax,48(%edx)
	movl MM_EnumElt+164,%eax
	movl %eax,52(%edx)
	movl MM_EnumElt+168,%eax
	movl %eax,56(%edx)
	popl %ebp
	ret
.Lfe9:
	.size	 M_EnumElt_ta784f0e6_LINK,.Lfe9-M_EnumElt_ta784f0e6_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_EnumElt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_EnumElt
.data
	.align 4
	.type	 MM_EnumElt,@object
	.size	 MM_EnumElt,572
MM_EnumElt:
	.long MM_EnumElt+368
	.long MM_EnumElt+44
	.long MM_EnumElt+180
	.zero	8
	.long MM_EnumElt+268
	.zero	28
	.long -1484459802
.byte 114
.byte 140
.byte 231
.byte 172
.byte 148
.byte 124
.byte 99
.byte 11
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_EnumElt+513
	.long MM_EnumElt+519
	.long MM_EnumElt+522
	.zero	4
	.long M_EnumElt_ta784f0e6_LINK
	.long -105857942
	.zero	12
	.long MM_EnumElt+541
	.long MM_EnumElt+562
	.zero	4
	.long EnumElt__Check
	.long EnumElt__Load
	.long EnumElt__ToExpr
	.long EnumElt__TypeOf
	.long EnumElt__AddFPTag
	.long EnumElt__FPType
	.long EnumElt__New
	.long EnumElt__IsEqual
	.zero	4
	.long -1484459802
	.long 2
	.long MM_EnumElt+200
	.long 10
	.ascii	"ENUM-ELT "
	.zero	3
	.ascii	"FPType"
	.zero	1
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"ToExpr"
	.zero	1
	.ascii	"Load"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"New"
	.zero	4
	.long EnumElt__FPType
	.long MM_EnumElt+212
	.zero	4
	.long EnumElt__AddFPTag
	.long MM_EnumElt+219
	.zero	4
	.long EnumElt__TypeOf
	.long MM_EnumElt+228
	.zero	4
	.long EnumElt__ToExpr
	.long MM_EnumElt+235
	.zero	4
	.long EnumElt__Load
	.long MM_EnumElt+242
	.zero	4
	.long EnumElt__Check
	.long MM_EnumElt+247
	.zero	4
	.long EnumElt__IsEqual
	.long MM_EnumElt+253
	.long MI_EnumElt+48
	.long EnumElt__New
	.long MM_EnumElt+261
	.long MI_EnumElt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/EnumElt.m3"
	.zero	1
.byte 1
.byte 17
.byte 26
.byte 4
.byte 4
.byte 0
.byte 41
.byte 4
.byte 0
.byte 6
.byte 10
.byte 2
.byte 15
.byte 1
.byte 1
.byte 4
.byte 12
.byte 16
.byte 19
.byte 0
.byte 66
.byte 255
.byte 255
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
	.ascii	"EnumElt_^%#%^__0001M"
	.zero	1
	.ascii	"EnumElt.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
