	.file	"SetType.mc"
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
	.type	 SetType__Parse,@function
SetType__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_SetType+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $15
	movl %eax,%ebx
	pushl %ebx
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $91
	movl MI_Scanner+108,%eax
	call *%eax
	pushl $79
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Type+56,%eax
	call *%eax
	movl %eax,56(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 SetType__Parse,.Lfe1-SetType__Parse
	.align 16
	.type	 SetType__Reduce,@function
SetType__Reduce:
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
	cmpb $15,34(%edx)
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
	cmpl %ecx,MM_SetType+200
	jg .L7
	movl MM_SetType+196,%eax
	cmpl %ecx,4(%eax)
	jge .L6
.L7:
	pushl $741
	call _m3_fault
	.align 16
.L6:
	movl %edx,%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 SetType__Reduce,.Lfe2-SetType__Reduce
	.align 16
	.type	 SetType__Split,@function
SetType__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl %eax
	call SetType__Reduce
	testl %eax,%eax
	je .L10
	movl 56(%eax),%eax
	movl %eax,(%ebx)
	movl $1,%eax
.L10:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 SetType__Split,.Lfe3-SetType__Split
	.align 16
	.type	 SetType__Check,@function
SetType__Check:
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
	movl 56(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,56(%ebx)
	pushl %eax
	movl MI_Type+104,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_SetType+208
	movl MI_Error+44,%eax
	call *%eax
	movl MI_ErrType+44,%eax
	movl %eax,56(%ebx)
	addl $4,%esp
.L13:
	pushl %ebx
	call SetType__SizeOf
	movl %eax,16(%ebx)
	movl %eax,20(%ebx)
	movl MI_Target+776,%edx
	movl MI_Target+100,%eax
	cmpl %edx,%eax
	jge .L14
	movl %edx,%eax
.L14:
	movl %eax,24(%ebx)
	movb $0,33(%ebx)
	movb $0,32(%ebx)
	movb $15,34(%ebx)
	movb 35(%ebx),%al
	andb $252,%al
	andl $255,%eax
	orb $4,%al
	movb %al,35(%ebx)
	movl -8(%ebp),%ecx
	leal (%ecx,%ecx,2),%eax
	leal (%eax,%eax,8),%eax
	movl %eax,%edx
	sall $4,%edx
	subl %eax,%edx
	leal (%ecx,%edx,2),%edx
	movl %edx,28(%ebx)
	movl MI_Target+96,%eax
	cmpl %eax,16(%ebx)
	jg .L12
	movb $1,33(%ebx)
	movb $1,32(%ebx)
.L12:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 SetType__Check,.Lfe4-SetType__Check
	.align 16
	.type	 SetType__Compiler,@function
SetType__Compiler:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 56(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Type+68,%eax
	call *%eax
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%esi
	movl 56(%ebx),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl -20(%ebp),%edx
	addl $20,%esp
	testl %edx,%edx
	jge .L17
	pushl $1393
	call _m3_fault
	.align 16
.L17:
	pushl %edx
	pushl %eax
	pushl %esi
	movl MI_CG+116,%eax
	call *%eax
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 SetType__Compiler,.Lfe5-SetType__Compiler
	.align 16
	.type	 SetType__EqualChk,@function
SetType__EqualChk:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ecx
	movl 16(%ebp),%ebx
	testl %ecx,%ecx
	je .L19
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_SetType+200
	jg .L20
	movl MM_SetType+196,%eax
	cmpl %edx,4(%eax)
	jge .L19
.L20:
	pushl $1461
	call _m3_fault
	.align 16
.L19:
	pushl %ebx
	movl 56(%ecx),%eax
	pushl %eax
	movl 56(%esi),%eax
	pushl %eax
	movl MI_Type+116,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 SetType__EqualChk,.Lfe6-SetType__EqualChk
	.align 16
	.type	 SetType__Subtyper,@function
SetType__Subtyper:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl $0
	pushl %eax
	pushl %edx
	movl MI_Type+116,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 SetType__Subtyper,.Lfe7-SetType__Subtyper
	.align 16
	.type	 SetType__SizeOf,@function
SetType__SizeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L23:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl MI_Target+96,%esi
	leal -20(%ebp),%ebx
	pushl %ebx
	movl 56(%edx),%eax
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_TInt+72,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L24
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $-1,%eax
	jmp .L22
	.align 16
.L24:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	addl %esi,%eax
	decl %eax
	pushl %eax
	pushl %esi
	call m3_div
	imull %esi,%eax
.L25:
.L22:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 SetType__SizeOf,.Lfe8-SetType__SizeOf
	.align 16
	.type	 SetType__InitCoster,@function
SetType__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 SetType__InitCoster,.Lfe9-SetType__InitCoster
	.align 16
	.type	 SetType__GenMap,@function
SetType__GenMap:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 12(%ebp),%edx
.L28:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 16(%ebp),%eax
	sarl $3,%eax
	pushl %eax
	pushl $20
	pushl %edx
	movl MI_TipeMap+52,%eax
	call *%eax
.L29:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 SetType__GenMap,.Lfe10-SetType__GenMap
	.align 16
	.type	 SetType__GenDesc,@function
SetType__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	pushl $18
	movl MI_TipeDesc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L30
	leal -8(%ebp),%ebx
	pushl %ebx
	movl 56(%esi),%eax
	pushl %eax
	movl MI_Type+108,%eax
	call *%eax
	pushl %ebx
	movl MI_TipeDesc+64,%eax
	call *%eax
.L30:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 SetType__GenDesc,.Lfe11-SetType__GenDesc
	.align 16
	.type	 SetType__FPrinter,@function
SetType__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	movl $MM_SetType+268,(%eax)
	movl 12(%ebp),%edx
	movl %ebp,%esp
	movl $1,8(%edx)
	movl 56(%ecx),%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe12:
	.size	 SetType__FPrinter,.Lfe12-SetType__FPrinter
	.align 16
	.type	 M_SetType_t09e0b544_LINK,@function
M_SetType_t09e0b544_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_SetType+196,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_SetType+152,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MM_SetType+160,%eax
	movl %eax,12(%edx)
	movl MM_SetType+164,%eax
	movl %eax,16(%edx)
	movl MM_SetType+156,%eax
	movl %eax,20(%edx)
	movl MM_SetType+172,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_SetType+176,%eax
	movl %eax,32(%edx)
	movl MM_SetType+180,%eax
	movl %eax,36(%edx)
	movl MM_SetType+184,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe13:
	.size	 M_SetType_t09e0b544_LINK,.Lfe13-M_SetType_t09e0b544_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_SetType
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_SetType
.data
	.align 4
	.type	 MM_SetType,@object
	.size	 MM_SetType,692
MM_SetType:
	.long MM_SetType+524
	.long MM_SetType+44
	.long MM_SetType+196
	.zero	8
	.long MM_SetType+376
	.zero	28
	.long 165721412
.byte 218
.byte 196
.byte 118
.byte 10
.byte 158
.byte 113
.byte 150
.byte 3
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_SetType+668
	.long MM_SetType+670
	.long MM_SetType+672
	.zero	4
	.long M_SetType_t09e0b544_LINK
	.long -2121051098
	.zero	16
	.long MM_SetType+680
	.zero	4
	.long SetType__Reduce
	.long SetType__Check
	.long SetType__Compiler
	.long SetType__EqualChk
	.long SetType__Subtyper
	.long SetType__SizeOf
	.long SetType__InitCoster
	.long SetType__GenMap
	.long SetType__GenDesc
	.long SetType__FPrinter
	.long SetType__Parse
	.long SetType__Split
	.zero	4
	.long 165721412
	.long 2
	.long MM_SetType+216
	.long 45
	.ascii	"domain of a set type must be an ordinal type"
	.zero	4
	.long 2
	.long MM_SetType+276
	.long 4
	.ascii	"SET"
	.zero	1
	.ascii	"FPrinter"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"SizeOf"
	.zero	1
	.ascii	"Subtyper"
	.zero	1
	.ascii	"EqualChk"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Reduce"
	.zero	1
	.ascii	"Parse"
	.zero	3
	.long SetType__FPrinter
	.long MM_SetType+280
	.zero	4
	.long SetType__GenDesc
	.long MM_SetType+289
	.zero	4
	.long SetType__GenMap
	.long MM_SetType+297
	.zero	4
	.long SetType__InitCoster
	.long MM_SetType+304
	.zero	4
	.long SetType__SizeOf
	.long MM_SetType+315
	.zero	4
	.long SetType__Subtyper
	.long MM_SetType+322
	.zero	4
	.long SetType__EqualChk
	.long MM_SetType+331
	.zero	4
	.long SetType__Compiler
	.long MM_SetType+340
	.zero	4
	.long SetType__Check
	.long MM_SetType+349
	.zero	4
	.long SetType__Split
	.long MM_SetType+355
	.long MI_SetType+48
	.long SetType__Reduce
	.long MM_SetType+361
	.zero	4
	.long SetType__Parse
	.long MM_SetType+368
	.long MI_SetType+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/SetType.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
	.ascii	"SetType.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
