	.file	"Scan.mc"
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
	.type	 Scan__ScanWord,@function
Scan__ScanWord:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	movl 4(%esi),%edx
	decl %edx
	movl %edx,-8(%ebp)
	xorl %ebx,%ebx
	jmp .L3
	.align 16
.L4:
	incl %ebx
.L3:
	cmpl %ebx,-8(%ebp)
	jle .L8
	testl %esi,%esi
	jne .L6
	pushl $356
	call _m3_fault
	.align 16
.L6:
	movl %esi,%eax
	cmpl %ebx,4(%eax)
	ja .L7
	pushl $354
	call _m3_fault
	.align 16
.L7:
	pushl $MI_Lex+60
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L4
.L8:
	movl %ebx,%edi
	jmp .L9
	.align 16
.L10:
	incl %ebx
.L9:
	cmpl %ebx,-8(%ebp)
	jle .L14
	testl %esi,%esi
	jne .L12
	pushl $420
	call _m3_fault
	.align 16
.L12:
	movl %esi,%eax
	cmpl %ebx,4(%eax)
	ja .L13
	pushl $418
	call _m3_fault
	.align 16
.L13:
	pushl $MI_Lex+60
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L10
.L14:
	movl %ebx,-4(%ebp)
	jmp .L15
	.align 16
.L16:
	testl %esi,%esi
	jne .L17
	pushl $500
	call _m3_fault
	.align 16
.L17:
	movl %esi,%eax
	cmpl %ebx,4(%eax)
	ja .L18
	pushl $498
	call _m3_fault
	.align 16
.L18:
	pushl $MI_Lex+60
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L19
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L19:
	incl %ebx
.L15:
	cmpl %ebx,-8(%ebp)
	jg .L16
	testl %edi,%edi
	jge .L21
	pushl $561
	call _m3_fault
	.align 16
.L21:
	movl -4(%ebp),%eax
	subl %edi,%eax
	jns .L22
	pushl $561
	call _m3_fault
	.align 16
.L22:
	pushl %eax
	pushl %edi
	pushl %esi
	movl MI_Text+64,%eax
	call *%eax
	pushl %eax
	movl MI_TextRd+148,%eax
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Scan__ScanWord,.Lfe1-Scan__ScanWord
	.align 16
	.type	 Scan__Bool,@function
Scan__Bool:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%edx
.L24:
	movl $MM_Scan+72,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Scan__ScanWord
	movl %eax,%ebx
	pushl %ebx
	movl MI_Lex+136,%eax
	call *%eax
	movb %al,-16(%ebp)
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L25
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L25:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	movb -16(%ebp),%al
.L26:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Scan__Bool,.Lfe2-Scan__Bool
	.align 16
	.type	 Scan__Int,@function
Scan__Int:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L28:
	movl $MM_Scan+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Scan__ScanWord
	movl %eax,%ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ebx
	movl MI_Lex+140,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L29
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L29:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L30:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Scan__Int,.Lfe3-Scan__Int
	.align 16
	.type	 Scan__Unsigned,@function
Scan__Unsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L32:
	movl $MM_Scan+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Scan__ScanWord
	movl %eax,%ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ebx
	movl MI_Lex+144,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L33
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L33:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L34:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Scan__Unsigned,.Lfe4-Scan__Unsigned
	.align 16
	.type	 Scan__Real,@function
Scan__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%edx
.L36:
	movl $MM_Scan+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Scan__ScanWord
	movl %eax,%ebx
	pushl %ebx
	movl MI_Lex+148,%eax
	call *%eax
	fstps -16(%ebp)
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L37
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L37:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -16(%ebp)
.L38:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Scan__Real,.Lfe5-Scan__Real
	.align 16
	.type	 Scan__LongReal,@function
Scan__LongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%edx
.L40:
	movl $MM_Scan+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Scan__ScanWord
	movl %eax,%ebx
	pushl %ebx
	movl MI_Lex+152,%eax
	call *%eax
	fstpl -20(%ebp)
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L41
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L41:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -20(%ebp)
.L42:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Scan__LongReal,.Lfe6-Scan__LongReal
	.align 16
	.type	 Scan__Extended,@function
Scan__Extended:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%edx
.L44:
	movl $MM_Scan+80,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	call Scan__ScanWord
	movl %eax,%ebx
	pushl %ebx
	movl MI_Lex+156,%eax
	call *%eax
	fstpl -20(%ebp)
	pushl %ebx
	movl MI_Rd+84,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L45
	pushl %eax
	pushl $MI_Lex+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L45:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -20(%ebp)
.L46:
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Scan__Extended,.Lfe7-Scan__Extended
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Scan
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_Scan
.data
	.align 4
	.type	 MM_Scan,@object
	.size	 MM_Scan,372
MM_Scan:
	.long MM_Scan+232
	.zero	16
	.long MM_Scan+144
	.zero	20
	.long Scan__ScanWord
	.long Scan__Bool
	.long Scan__Int
	.long Scan__Unsigned
	.long Scan__Real
	.long Scan__LongReal
	.long Scan__Extended
	.long MI_Lex+44
	.zero	4
	.long MI_FloatMode+88
	.long MI_Lex+44
	.zero	4
	.ascii	"Extended"
	.zero	1
	.ascii	"LongReal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"Unsigned"
	.zero	1
	.ascii	"Int"
	.zero	1
	.ascii	"Bool"
	.zero	1
	.ascii	"ScanWord"
	.zero	3
	.long Scan__Extended
	.long MM_Scan+92
	.long MI_Scan+64
	.long Scan__LongReal
	.long MM_Scan+101
	.long MI_Scan+60
	.long Scan__Real
	.long MM_Scan+110
	.long MI_Scan+56
	.long Scan__Unsigned
	.long MM_Scan+115
	.long MI_Scan+52
	.long Scan__Int
	.long MM_Scan+124
	.long MI_Scan+48
	.long Scan__Bool
	.long MM_Scan+128
	.long MI_Scan+44
	.long Scan__ScanWord
	.long MM_Scan+133
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/fmtlex/Scan.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
