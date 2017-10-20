	.file	"Field.mc"
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
	.type	 Field__New,@function
Field__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_Field+192,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl $6
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+148,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	movl %eax,36(%ebx)
	movl 8(%edx),%eax
	movl %eax,40(%ebx)
	movl 12(%edx),%eax
	movl %eax,44(%ebx)
	movl 16(%edx),%eax
	movl %eax,48(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Field__New,.Lfe1-Field__New
	.align 16
	.type	 Field__Is,@function
Field__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L9
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Field+196
	jg .L6
	movl MM_Field+192,%eax
	cmpl %edx,4(%eax)
	jl .L6
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
	.size	 Field__Is,.Lfe2-Field__Is
	.align 16
	.type	 Field__Split,@function
Field__Split:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L11
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Field+196
	jg .L12
	movl MM_Field+192,%eax
	cmpl %edx,4(%eax)
	jge .L11
.L12:
	pushl $933
	call _m3_fault
	.align 16
.L11:
	movl 12(%ebp),%edx
	movl 12(%ecx),%eax
	movl %eax,(%edx)
	movl 12(%ebp),%edx
	movl 36(%ecx),%eax
	movl %ebp,%esp
	movl %eax,4(%edx)
	movl 40(%ecx),%eax
	movl %eax,8(%edx)
	movl 44(%ecx),%eax
	movl %eax,12(%edx)
	movl 48(%ecx),%eax
	movl %eax,16(%edx)
	popl %ebp
	ret
.Lfe3:
	.size	 Field__Split,.Lfe3-Field__Split
	.align 16
	.type	 Field__SetOffset,@function
Field__SetOffset:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	je .L14
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Field+196
	jg .L15
	movl MM_Field+192,%eax
	cmpl %edx,4(%eax)
	jge .L14
.L15:
	pushl $1093
	call _m3_fault
	.align 16
.L14:
	movl %ebx,40(%ecx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Field__SetOffset,.Lfe4-Field__SetOffset
	.align 16
	.type	 Field__EmitDeclaration,@function
Field__EmitDeclaration:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testl %ebx,%ebx
	je .L17
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Field+196
	jg .L18
	movl MM_Field+192,%eax
	cmpl %edx,4(%eax)
	jge .L17
.L18:
	pushl $1205
	call _m3_fault
	.align 16
.L17:
	leal -20(%ebp),%eax
	pushl %eax
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,%edx
	movl -20(%ebp),%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L19
	pushl $1281
	call _m3_fault
	.align 16
.L19:
	pushl %edx
	pushl %eax
	movl 40(%ebx),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_CG+104,%eax
	call *%eax
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Field__EmitDeclaration,.Lfe5-Field__EmitDeclaration
	.align 16
	.type	 Field__IsEqual,@function
Field__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L21
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_Field+196
	jg .L22
	movl MM_Field+192,%eax
	cmpl %ebx,4(%eax)
	jge .L21
.L22:
	pushl $1349
	call _m3_fault
	.align 16
.L21:
	movl %edx,%esi
	cmpl $0,12(%ebp)
	je .L23
	movl 12(%ebp),%ecx
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_Field+196
	jg .L24
	movl MM_Field+192,%eax
	cmpl %ebx,4(%eax)
	jge .L23
.L24:
	pushl $1349
	call _m3_fault
	.align 16
.L23:
	xorl %ebx,%ebx
	testl %esi,%esi
	je .L25
	cmpl $0,12(%ebp)
	je .L25
	movl 12(%ebp),%ecx
	movl 12(%ecx),%eax
	cmpl %eax,12(%esi)
	jne .L25
	movl 36(%ecx),%eax
	cmpl %eax,36(%esi)
	jne .L25
	pushl %esi
	call Field__TypeOf
	movl %eax,%edi
	movl 12(%ebp),%ecx
	pushl %ecx
	call Field__TypeOf
	movl 16(%ebp),%ecx
	pushl %ecx
	pushl %eax
	pushl %edi
	movl MI_Type+116,%eax
	call *%eax
	addl $20,%esp
	testl %eax,%eax
	je .L25
	movl 48(%esi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl 12(%ebp),%ecx
	movl %eax,%ebx
	movl 48(%ecx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl 16(%ebp),%ecx
	pushl %ecx
	pushl %eax
	pushl %ebx
	movl MI_Expr+232,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L25:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Field__IsEqual,.Lfe6-Field__IsEqual
	.align 16
	.type	 Field__TypeOf,@function
Field__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $0,44(%ebx)
	jne .L27
	movl 48(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,44(%ebx)
.L27:
	movl 44(%ebx),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Field__TypeOf,.Lfe7-Field__TypeOf
	.align 16
	.type	 Field__TypeCheck,@function
Field__TypeCheck:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %ebx
	call Field__TypeOf
	movl %eax,%edx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl %eax,44(%ebx)
	addl $12,%esp
	testb $2,-1(%ebp)
	je .L29
	pushl $MM_Field+204
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L29:
	cmpb $10,-2(%ebp)
	jne .L30
	pushl $MM_Field+236
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	addl $8,%esp
.L30:
	orb $1,30(%ebx)
	movl 48(%ebx),%edx
	testl %edx,%edx
	je .L28
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 44(%ebx),%eax
	pushl %eax
	movl MI_AssignStmt+48,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 48(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 48(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	addl $24,%esp
	testl %eax,%eax
	jne .L28
	pushl $MM_Field+280
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
.L28:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Field__TypeCheck,.Lfe8-Field__TypeCheck
	.align 16
	.type	 Field__Compile,@function
Field__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 44(%eax),%eax
	pushl %eax
	movl MI_Type+140,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Field__Compile,.Lfe9-Field__Compile
	.align 16
	.type	 Field__SetGlobals,@function
Field__SetGlobals:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Field__SetGlobals,.Lfe10-Field__SetGlobals
	.align 16
	.type	 Field__AddFPTag,@function
Field__AddFPTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $0
	pushl $0
	pushl $MM_Field+320
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_ValueRep+152,%eax
	call *%eax
	addl $20,%esp
	cmpl $0,48(%ebx)
	je .L36
	pushl $MM_Field+340
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl 48(%ebx),%eax
	pushl %eax
	movl MI_Expr+244,%eax
	call *%eax
.L36:
	movl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Field__AddFPTag,.Lfe11-Field__AddFPTag
	.align 16
	.type	 M_Field_t587a330c_LINK,@function
M_Field_t587a330c_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Field+192,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Field+152,%eax
	movl %eax,4(%edx)
	movl MM_Field+160,%eax
	movl %eax,8(%edx)
	movl MI_ValueRep+164,%eax
	movl %eax,12(%edx)
	movl MI_ValueRep+168,%eax
	movl %eax,16(%edx)
	movl MI_ValueRep+172,%ecx
	movl %ecx,20(%edx)
	movl %eax,24(%edx)
	movl MM_Field+156,%eax
	movl %eax,28(%edx)
	movl %ecx,32(%edx)
	movl MI_ValueRep+156,%eax
	movl %eax,36(%edx)
	movl MI_ValueRep+160,%eax
	movl %eax,40(%edx)
	movl MM_Field+148,%ecx
	movl %ecx,44(%edx)
	movl MI_ValueRep+184,%eax
	movl %eax,48(%edx)
	movl MM_Field+164,%eax
	movl %eax,52(%edx)
	movl %ecx,56(%edx)
	popl %ebp
	ret
.Lfe12:
	.size	 M_Field_t587a330c_LINK,.Lfe12-M_Field_t587a330c_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Field
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_Field
.data
	.align 4
	.type	 MM_Field,@object
	.size	 MM_Field,780
MM_Field:
	.long MM_Field+584
	.long MM_Field+44
	.long MM_Field+192
	.zero	8
	.long MM_Field+448
	.zero	28
	.long 1484403468
.byte 139
.byte 98
.byte 96
.byte 68
.byte 135
.byte 81
.byte 26
.byte 28
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Field+727
	.long MM_Field+732
	.long MM_Field+736
	.zero	4
	.long M_Field_t587a330c_LINK
	.long -105857942
	.zero	12
	.long MM_Field+751
	.long MM_Field+770
	.zero	4
	.long Field__TypeOf
	.long Field__TypeCheck
	.long Field__Compile
	.long Field__SetGlobals
	.long Field__AddFPTag
	.long Field__New
	.long Field__SetOffset
	.long Field__Is
	.long Field__Split
	.long Field__EmitDeclaration
	.long Field__IsEqual
	.zero	4
	.long 1484403468
	.long 2
	.long MM_Field+212
	.long 17
	.ascii	"empty field type"
	.zero	4
	.long 2
	.long MM_Field+244
	.long 30
	.ascii	"fields may not be open arrays"
	.zero	3
	.long 2
	.long MM_Field+288
	.long 26
	.ascii	"default is not a constant"
	.zero	3
	.long 2
	.long MM_Field+328
	.long 7
	.ascii	"FIELD "
	.zero	2
	.long 2
	.long MM_Field+348
	.long 5
	.ascii	" := "
	.zero	4
	.ascii	"AddFPTag"
	.zero	1
	.ascii	"SetGlobals"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"TypeCheck"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"EmitDeclaration"
	.zero	1
	.ascii	"SetOffset"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"New"
	.zero	1
	.long Field__AddFPTag
	.long MM_Field+356
	.zero	4
	.long Field__SetGlobals
	.long MM_Field+365
	.zero	4
	.long Field__Compile
	.long MM_Field+376
	.zero	4
	.long Field__TypeCheck
	.long MM_Field+384
	.zero	4
	.long Field__TypeOf
	.long MM_Field+394
	.zero	4
	.long Field__IsEqual
	.long MM_Field+401
	.long MI_Field+64
	.long Field__EmitDeclaration
	.long MM_Field+409
	.long MI_Field+60
	.long Field__SetOffset
	.long MM_Field+425
	.long MI_Field+48
	.long Field__Split
	.long MM_Field+435
	.long MI_Field+56
	.long Field__Is
	.long MM_Field+441
	.long MI_Field+52
	.long Field__New
	.long MM_Field+444
	.long MI_Field+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Field.m3"
	.zero	1
.byte 14
.byte 14
.byte 4
.byte 4
.byte 0
.byte 41
.byte 4
.byte 4
.byte 0
.byte 5
.byte 10
.byte 4
.byte 7
.byte 23
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
	.ascii	"Field_^%#%^__0001M"
	.zero	1
	.ascii	"Field.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
