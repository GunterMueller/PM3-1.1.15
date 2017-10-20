	.file	"QVal.mc"
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
	.type	 QVal__ToTag,@function
QVal__ToTag:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%ebx
	xorl %edx,%edx
	movb (%eax),%dl
	testl %edx,%edx
	jle .L2
	cmpl $1,%edx
	jle .L3
	cmpl $2,%edx
	jle .L4
	cmpl $3,%edx
	jle .L5
	cmpl $4,%edx
	jle .L6
	cmpl $5,%edx
	jle .L7
.L2:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_QVal+104
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_QVal+128
	movl %eax,%edx
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	jmp .L8
	.align 16
.L3:
	pushl $10
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	jmp .L8
	.align 16
.L4:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	jmp .L8
	.align 16
.L5:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L9
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+144
	jg .L10
	movl MM_QVal+140,%eax
	cmpl %ecx,4(%eax)
	jge .L9
.L10:
	pushl $405
	call _m3_fault
	.align 16
.L9:
	pushl %edx
	pushl %ebx
	call QVal__TableText
	jmp .L8
	.align 16
.L6:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L11
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+152
	jg .L12
	movl MM_QVal+148,%eax
	cmpl %ecx,4(%eax)
	jge .L11
.L12:
	pushl $421
	call _m3_fault
	.align 16
.L11:
	pushl %edx
	pushl %ebx
	call QVal__ArrayText
	jmp .L8
	.align 16
.L7:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L13
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_QVal+160
	je .L13
	pushl $437
	call _m3_fault
	.align 16
.L13:
	pushl %edx
	call QVal__ProcText
.L8:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 QVal__ToTag,.Lfe1-QVal__ToTag
	.align 16
	.type	 QVal__ToBool,@function
QVal__ToBool:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	cmpb $2,(%eax)
	je .L16
	movl (%edx),%eax
	movl 32(%eax),%eax
	pushl $MM_QVal+168
	pushl %edx
	call *%eax
.L16:
	movl 12(%ebp),%eax
	movl MI_QValue+356,%edx
	cmpl %edx,4(%eax)
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QVal__ToBool,.Lfe2-QVal__ToBool
	.align 16
	.type	 QVal__ToInt,@function
QVal__ToInt:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%edi
	xorl %eax,%eax
	movb (%edx),%al
	cmpl $1,%eax
	jne .L18
	movl 4(%edx),%eax
	jmp .L22
	.align 16
.L18:
	cmpl $2,%eax
	je .L19
	movl (%edi),%eax
	movl 32(%eax),%ebx
	pushl $MM_QVal+228
	pushl %edi
	call *%ebx
	addl $8,%esp
.L19:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L20
	pushl $836
	call _m3_fault
	.align 16
.L20:
	pushl $10
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Convert+84,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $16,%esp
	cmpl %eax,-4(%ebp)
	je .L21
	movl (%edi),%eax
	movl 32(%eax),%ebx
	pushl $MM_QVal+228
	pushl %edi
	call *%ebx
.L21:
	movl %esi,%eax
.L22:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 QVal__ToInt,.Lfe3-QVal__ToInt
	.align 16
	.type	 QVal__ToText,@function
QVal__ToText:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%ebx
	xorl %edx,%edx
	movb (%eax),%dl
	testl %edx,%edx
	jle .L24
	cmpl $1,%edx
	jle .L25
	cmpl $2,%edx
	jle .L26
	cmpl $3,%edx
	jle .L27
	cmpl $4,%edx
	jle .L28
	jmp .L24
	.align 16
.L25:
	pushl $10
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	movl %eax,%edx
	jmp .L34
	.align 16
.L26:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%edx
	jmp .L34
	.align 16
.L28:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L29
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+152
	jg .L30
	movl MM_QVal+148,%eax
	cmpl %ecx,4(%eax)
	jge .L29
.L30:
	pushl $1045
	call _m3_fault
	.align 16
.L29:
	pushl %edx
	pushl %ebx
	call QVal__ArrayText
	movl %eax,%edx
	jmp .L34
	.align 16
.L27:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L31
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+144
	jg .L32
	movl MM_QVal+140,%eax
	cmpl %ecx,4(%eax)
	jge .L31
.L32:
	pushl $1061
	call _m3_fault
	.align 16
.L31:
	pushl %edx
	pushl %ebx
	call QVal__TableText
	movl %eax,%edx
	jmp .L34
	.align 16
.L24:
	movl (%ebx),%eax
	movl 32(%eax),%edx
	pushl $MM_QVal+276
	pushl %ebx
	call *%edx
	xorl %eax,%eax
.L34:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 QVal__ToText,.Lfe4-QVal__ToText
	.align 16
	.type	 QVal__ToID,@function
QVal__ToID:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	cmpb $2,(%eax)
	je .L36
	pushl %eax
	pushl %edx
	call QVal__ToText
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	jmp .L37
	.align 16
.L36:
	movl 4(%eax),%eax
.L37:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 QVal__ToID,.Lfe5-QVal__ToID
	.align 16
	.type	 QVal__ToTable,@function
QVal__ToTable:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	cmpb $3,(%eax)
	je .L39
	movl (%ecx),%eax
	movl 32(%eax),%edx
	pushl $MM_QVal+320
	pushl %ecx
	call *%edx
	addl $8,%esp
.L39:
	movl 12(%ebp),%eax
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L40
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+144
	jg .L41
	movl MM_QVal+140,%eax
	cmpl %ecx,4(%eax)
	jge .L40
.L41:
	pushl $1381
	call _m3_fault
	.align 16
.L40:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 QVal__ToTable,.Lfe6-QVal__ToTable
	.align 16
	.type	 QVal__ToArray,@function
QVal__ToArray:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	cmpb $4,(%eax)
	je .L43
	movl (%ecx),%eax
	movl 32(%eax),%edx
	pushl $MM_QVal+364
	pushl %ecx
	call *%edx
	addl $8,%esp
.L43:
	movl 12(%ebp),%eax
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L44
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+152
	jg .L45
	movl MM_QVal+148,%eax
	cmpl %ecx,4(%eax)
	jge .L44
.L45:
	pushl $1525
	call _m3_fault
	.align 16
.L44:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 QVal__ToArray,.Lfe7-QVal__ToArray
	.align 16
	.type	 QVal__ToProc,@function
QVal__ToProc:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	cmpb $5,(%eax)
	je .L47
	movl (%ecx),%eax
	movl 32(%eax),%edx
	pushl $MM_QVal+408
	pushl %ecx
	call *%edx
	addl $8,%esp
.L47:
	movl 12(%ebp),%eax
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L48
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_QVal+160
	je .L48
	pushl $1669
	call _m3_fault
	.align 16
.L48:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 QVal__ToProc,.Lfe8-QVal__ToProc
	.align 16
	.type	 QVal__ToBuf,@function
QVal__ToBuf:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	xorl %eax,%eax
	movb (%edx),%al
	testl %eax,%eax
	jle .L50
	cmpl $1,%eax
	jle .L51
	cmpl $2,%eax
	jle .L52
	cmpl $3,%eax
	jle .L53
	cmpl $4,%eax
	jle .L54
	jmp .L50
	.align 16
.L51:
	movl 4(%edx),%eax
	pushl %eax
	pushl %ebx
	movl MI_M3Buf+56,%eax
	call *%eax
	jmp .L49
	.align 16
.L52:
	movl 4(%edx),%eax
	pushl %eax
	pushl %ebx
	movl MI_M3ID+64,%eax
	call *%eax
	jmp .L49
	.align 16
.L54:
	movl 8(%edx),%edx
	testl %edx,%edx
	je .L56
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+152
	jg .L57
	movl MM_QVal+148,%eax
	cmpl %ecx,4(%eax)
	jge .L56
.L57:
	pushl $1813
	call _m3_fault
	.align 16
.L56:
	pushl %ebx
	pushl %edx
	pushl %esi
	call QVal__ArrayToBuf
	jmp .L49
	.align 16
.L53:
	movl 8(%edx),%edx
	testl %edx,%edx
	je .L58
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_QVal+144
	jg .L59
	movl MM_QVal+140,%eax
	cmpl %ecx,4(%eax)
	jge .L58
.L59:
	pushl $1829
	call _m3_fault
	.align 16
.L58:
	pushl %ebx
	pushl %edx
	pushl %esi
	call QVal__TableToBuf
	jmp .L49
	.align 16
.L50:
	movl (%esi),%eax
	movl 32(%eax),%edx
	pushl $MM_QVal+276
	pushl %esi
	call *%edx
.L49:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 QVal__ToBuf,.Lfe9-QVal__ToBuf
	.align 16
	.type	 QVal__TableText,@function
QVal__TableText:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MI_M3Buf+44,%eax
	movl 12(%ebp),%ebx
	call *%eax
	movl %eax,%edi
	pushl %edi
	pushl %ebx
	pushl %esi
	call QVal__TableToBuf
	pushl %edi
	movl MI_M3Buf+72,%eax
	call *%eax
	movl %eax,%edi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 QVal__TableText,.Lfe10-QVal__TableText
	.align 16
	.type	 QVal__TableToBuf,@function
QVal__TableToBuf:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl (%eax),%edx
	movl 20(%edx),%edx
	pushl %eax
	call *%edx
	movl %eax,%edx
	movl %edx,%edi
	movb $1,%bl
	addl $4,%esp
	jmp .L62
	.align 16
.L63:
	testb %bl,%bl
	jne .L64
	pushl $32
	movl 16(%ebp),%ecx
	pushl %ecx
	movl MI_M3Buf+48,%eax
	call *%eax
	addl $8,%esp
.L64:
	movl 16(%ebp),%ecx
	pushl %ecx
	pushl %esi
	movl 8(%ebp),%ecx
	pushl %ecx
	call QVal__ToBuf
	xorb %bl,%bl
	addl $12,%esp
.L62:
	movl (%edi),%eax
	leal -12(%ebp),%esi
	movl 4(%eax),%edx
	pushl %esi
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	jne .L63
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 QVal__TableToBuf,.Lfe11-QVal__TableToBuf
	.align 16
	.type	 QVal__ArrayText,@function
QVal__ArrayText:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MI_M3Buf+44,%eax
	movl 12(%ebp),%ebx
	call *%eax
	movl %eax,%edi
	pushl %edi
	pushl %ebx
	pushl %esi
	call QVal__ArrayToBuf
	pushl %edi
	movl MI_M3Buf+72,%eax
	call *%eax
	movl %eax,%edi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 QVal__ArrayText,.Lfe12-QVal__ArrayText
	.align 16
	.type	 QVal__ArrayToBuf,@function
QVal__ArrayToBuf:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl (%edi),%eax
	movl 32(%eax),%eax
	pushl %edi
	call *%eax
	xorl %esi,%esi
	decl %eax
	movl %eax,-16(%ebp)
	addl $4,%esp
	jmp .L68
	.align 16
.L69:
	testl %esi,%esi
	jle .L70
	pushl $32
	movl 16(%ebp),%edx
	pushl %edx
	movl MI_M3Buf+48,%eax
	call *%eax
	addl $8,%esp
.L70:
	movl (%edi),%eax
	leal -12(%ebp),%ebx
	movl 44(%eax),%eax
	pushl %ebx
	pushl %esi
	pushl %edi
	call *%eax
	movl 16(%ebp),%edx
	pushl %edx
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call QVal__ToBuf
	incl %esi
	addl $24,%esp
.L68:
	cmpl %esi,-16(%ebp)
	jge .L69
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 QVal__ArrayToBuf,.Lfe13-QVal__ArrayToBuf
	.align 16
	.type	 QVal__ProcText,@function
QVal__ProcText:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L73
	pushl $2612
	call _m3_fault
	.align 16
.L73:
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L74
	pushl $2612
	call _m3_fault
	.align 16
.L74:
	movl 8(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_QVal+464
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_QVal+488
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%esi
	addl $20,%esp
	movl (%ebx),%eax
	testl %eax,%eax
	jne .L76
	pushl $2612
	call _m3_fault
	.align 16
.L76:
	movl (%eax),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_QVal+128
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 QVal__ProcText,.Lfe14-QVal__ProcText
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QVal
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe15:
	.size	 _m3_fault,.Lfe15-_m3_fault
.globl MM_QVal
.data
	.align 4
	.type	 MM_QVal,@object
	.size	 MM_QVal,924
MM_QVal:
	.long MM_QVal+788
	.zero	4
	.long MM_QVal+140
	.zero	8
	.long MM_QVal+616
	.zero	20
	.long QVal__TableText
	.long QVal__TableToBuf
	.long QVal__ArrayText
	.long QVal__ArrayToBuf
	.long QVal__ProcText
	.long QVal__ToTag
	.long QVal__ToBool
	.long QVal__ToInt
	.long QVal__ToText
	.long QVal__ToID
	.long QVal__ToTable
	.long QVal__ToArray
	.long QVal__ToProc
	.long QVal__ToBuf
	.long 2
	.long MM_QVal+112
	.long 11
	.ascii	"<variable "
	.zero	2
	.long 2
	.long MM_QVal+136
	.long 2
	.ascii	">"
	.zero	3
	.long MM_QVal+148
	.long -1174334778
	.long MM_QVal+156
	.long 971574223
	.zero	4
	.long 2071951508
	.long 2
	.long MM_QVal+176
	.long 48
	.ascii	"attempting to use non-string value as a boolean"
	.zero	1
	.long 2
	.long MM_QVal+236
	.long 35
	.ascii	"cannot convert value to an integer"
	.zero	2
	.long 2
	.long MM_QVal+284
	.long 31
	.ascii	"cannot convert value to string"
	.zero	2
	.long 2
	.long MM_QVal+328
	.long 30
	.ascii	"cannot convert value to table"
	.zero	3
	.long 2
	.long MM_QVal+372
	.long 30
	.ascii	"cannot convert value to array"
	.zero	3
	.long 2
	.long MM_QVal+416
	.long 41
	.ascii	"attempting to call a non-procedure value"
	.zero	4
	.long 2
	.long MM_QVal+472
	.long 12
	.ascii	"<procedure "
	.zero	1
	.long 2
	.long MM_QVal+496
	.long 7
	.ascii	" from "
	.zero	2
	.ascii	"ProcText"
	.zero	1
	.ascii	"ArrayToBuf"
	.zero	1
	.ascii	"ArrayText"
	.zero	1
	.ascii	"TableToBuf"
	.zero	1
	.ascii	"TableText"
	.zero	1
	.ascii	"ToBuf"
	.zero	1
	.ascii	"ToProc"
	.zero	1
	.ascii	"ToArray"
	.zero	1
	.ascii	"ToTable"
	.zero	1
	.ascii	"ToID"
	.zero	1
	.ascii	"ToText"
	.zero	1
	.ascii	"ToInt"
	.zero	1
	.ascii	"ToBool"
	.zero	1
	.ascii	"ToTag"
	.zero	2
	.long QVal__ProcText
	.long MM_QVal+504
	.zero	4
	.long QVal__ArrayToBuf
	.long MM_QVal+513
	.zero	4
	.long QVal__ArrayText
	.long MM_QVal+524
	.zero	4
	.long QVal__TableToBuf
	.long MM_QVal+534
	.zero	4
	.long QVal__TableText
	.long MM_QVal+545
	.zero	4
	.long QVal__ToBuf
	.long MM_QVal+555
	.long MI_QVal+76
	.long QVal__ToProc
	.long MM_QVal+561
	.long MI_QVal+72
	.long QVal__ToArray
	.long MM_QVal+568
	.long MI_QVal+68
	.long QVal__ToTable
	.long MM_QVal+576
	.long MI_QVal+64
	.long QVal__ToID
	.long MM_QVal+584
	.long MI_QVal+60
	.long QVal__ToText
	.long MM_QVal+589
	.long MI_QVal+56
	.long QVal__ToInt
	.long MM_QVal+596
	.long MI_QVal+52
	.long QVal__ToBool
	.long MM_QVal+602
	.long MI_QVal+48
	.long QVal__ToTag
	.long MM_QVal+609
	.long MI_QVal+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3qua"
	.ascii	"ke/src/QVal.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
