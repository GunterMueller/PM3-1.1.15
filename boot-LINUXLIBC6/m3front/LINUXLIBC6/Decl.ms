	.file	"Decl.mc"
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
.section	.rodata
	.align 4
	.type	 L_1.0,@object
	.size	 L_1.0,28
L_1.0:
	.long .L4
	.long .L5
	.long .L3
	.long .L6
	.long .L7
	.long .L3
	.long .L8
	.align 4
	.type	 L_2.1,@object
	.size	 L_2.1,236
L_2.1:
	.long .L13
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L14
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L15
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L16
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L17
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L18
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L12
	.long .L19
.text
	.align 16
	.type	 Decl__Parse,@function
Decl__Parse:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movb 12(%ebp),%bl
	movl 16(%ebp),%esi
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movb $0,-7(%ebp)
	movb $0,-8(%ebp)
	movb $0,-6(%ebp)
	movb $0,-5(%ebp)
	movl $0,-12(%ebp)
	movl $0,-4(%ebp)
.L2:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $-36,%eax
	js .L11
	cmpl $6,%eax
	jg .L11
	jmp *L_1.0(,%eax,4)
	.align 16
.L5:
	movl MI_Module+72,%eax
	call *%eax
	testl %eax,%eax
	jne .L9
	pushl $MM_Decl+56
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L9:
	leal -4(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%edx
	pushl %edx
	call Decl__ParseExternalPragma
	movb $1,-8(%ebp)
	addl $8,%esp
	jmp .L2
	.align 16
.L4:
	movl MI_Scanner+104,%eax
	movb $1,-7(%ebp)
	jmp .L28
	.align 16
.L6:
	movl MI_Scanner+104,%eax
	movb $1,-6(%ebp)
	jmp .L28
	.align 16
.L7:
	movl MI_Scanner+104,%eax
	movb $1,-5(%ebp)
.L28:
	call *%eax
	pushl $35
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	jmp .L2
	.align 16
.L8:
	movl MI_Scanner+48,%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	movl MI_Target+756,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $35
	movl MI_Scanner+108,%eax
	call *%eax
	addl $12,%esp
	jmp .L2
	.align 16
.L3:
.L11:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	addl $-43,%eax
	js .L12
	cmpl $58,%eax
	jg .L12
	jmp *L_2.1(,%eax,4)
	.align 16
.L14:
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Constant+44,%eax
	jmp .L29
	.align 16
.L18:
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Tipe+44,%eax
	jmp .L29
	.align 16
.L19:
	movl $1,%eax
	cmpb $0,-8(%ebp)
	jne .L21
	movl MI_Module+76,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L21:
	movb %al,-8(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Variable+44,%eax
	jmp .L29
	.align 16
.L16:
	movl $1,%eax
	cmpb $0,-8(%ebp)
	jne .L22
	movl MI_Module+76,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L22:
	movb %al,-8(%ebp)
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Procedure+44,%eax
	call *%eax
	jmp .L1
	.align 16
.L17:
	testb %bl,%bl
	jne .L23
	pushl $MM_Decl+120
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L23:
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Revelation+160,%eax
	jmp .L29
	.align 16
.L15:
	testb %bl,%bl
	jne .L24
	pushl $MM_Decl+152
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L24:
	movl $1,%eax
	cmpb $0,-8(%ebp)
	jne .L25
	movl MI_Module+76,%eax
	call *%eax
	testl %eax,%eax
	setne %al
	andl $255,%eax
.L25:
	movb %al,-8(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Exceptionz+44,%eax
	jmp .L29
	.align 16
.L13:
	movl (%esi),%eax
	pushl %eax
	movl MI_ESet+48,%eax
	call *%eax
	movl %eax,(%esi)
	jmp .L1
	.align 16
.L12:
	cmpb $0,-7(%ebp)
	jne .L26
	cmpb $0,-8(%ebp)
	jne .L26
	cmpb $0,-6(%ebp)
	jne .L26
	cmpb $0,-5(%ebp)
	je .L1
.L26:
	pushl $MM_Decl+196
	movl MI_Error+44,%eax
.L29:
	call *%eax
.L1:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Decl__Parse,.Lfe1-Decl__Parse
	.align 16
	.type	 Decl__ParseExternalPragma,@function
Decl__ParseExternalPragma:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	cmpb $37,MI_Scanner+44
	je .L31
	pushl $1392
	call _m3_fault
	.align 16
.L31:
	movl MI_Scanner+104,%eax
	call *%eax
	movl $0,(%ebx)
	movl MI_Target+752,%eax
	movl %eax,(%esi)
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $1,%eax
	je .L41
	cmpl $7,%eax
	jne .L33
	jmp .L34
	.align 16
.L41:
	movl MI_Scanner+48,%eax
	movl %eax,(%ebx)
	jmp .L35
	.align 16
.L34:
	movl MI_Scanner+52,%eax
	pushl %eax
	movl MI_M3String+56,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,(%ebx)
	addl $12,%esp
.L35:
	movl MI_Scanner+104,%eax
	call *%eax
	cmpb $28,MI_Scanner+44
	jne .L33
	movl MI_Scanner+104,%eax
	call *%eax
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $1,%eax
	je .L37
	cmpl $7,%eax
	jne .L38
.L37:
	movl MI_Scanner+48,%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	pushl %eax
	movl MI_Target+756,%eax
	call *%eax
	movl %eax,(%esi)
	addl $8,%esp
	testl %eax,%eax
	jne .L39
	pushl $MM_Decl+260
	movl MI_Scanner+48,%eax
	pushl %eax
	movl MI_Error+52,%eax
	call *%eax
	movl MI_Target+752,%eax
	movl %eax,(%esi)
	addl $8,%esp
.L39:
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L33
	.align 16
.L38:
	pushl $MM_Decl+316
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L33:
	pushl $35
	movl MI_Scanner+108,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Decl__ParseExternalPragma,.Lfe2-Decl__ParseExternalPragma
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Decl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_Decl
.data
	.align 4
	.type	 MM_Decl,@object
	.size	 MM_Decl,568
MM_Decl:
	.long MM_Decl+424
	.zero	16
	.long MM_Decl+396
	.zero	20
	.long Decl__Parse
	.long Decl__ParseExternalPragma
	.long 2
	.long MM_Decl+64
	.long 49
	.ascii	"External declarations only allowed in interfaces"
	.zero	4
	.long 2
	.long MM_Decl+128
	.long 18
	.ascii	"nested revelation"
	.zero	3
	.long 2
	.long MM_Decl+160
	.long 29
	.ascii	"nested exception declaration"
	.zero	4
	.long 2
	.long MM_Decl+204
	.long 49
	.ascii	"declaration pragma not followed by a declaration"
	.zero	4
	.long 2
	.long MM_Decl+268
	.long 43
	.ascii	"unsupported language or calling convention"
	.zero	2
	.long 2
	.long MM_Decl+324
	.long 41
	.ascii	"Missing language for <*EXTERNAL*> pragma"
	.zero	4
	.ascii	"ParseExternalPragma"
	.zero	1
	.ascii	"Parse"
	.zero	3
	.long Decl__ParseExternalPragma
	.long MM_Decl+368
	.long MI_Decl+48
	.long Decl__Parse
	.long MM_Decl+388
	.long MI_Decl+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Decl.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
