	.file	"M3Header.mc"
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
	.type	 M3Header__Parse,@function
M3Header__Parse:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	pushl $0
	pushl $MM_M3Header+92
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call M3Header__PushID
	addl $16,%esp
	cmpb $37,MI_Scanner+44
	jne .L2
	call M3Header__SkipExternalPragma
.L2:
	cmpb $97,MI_Scanner+44
	jne .L3
	movl MI_Scanner+104,%eax
	call *%eax
.L3:
	xorl %edx,%edx
	movb MI_Scanner+44,%dl
	cmpl $71,%edx
	sete %al
	movb %al,-8(%ebp)
	je .L4
	cmpl $76,%edx
	jne .L12
.L4:
	movl MI_Scanner+104,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%ebx
	pushl %ebx
	call M3Header__MatchID
	addl $8,%esp
	testl %eax,%eax
	je .L12
	cmpb $63,MI_Scanner+44
	jne .L6
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $1
	pushl %ebx
	call M3Header__MatchIDList
	jmp .L14
	.align 16
.L6:
	cmpb $0,-8(%ebp)
	jne .L7
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	call M3Header__PushID
.L14:
	addl $8,%esp
.L7:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $16,%eax
	jne .L9
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L10
	.align 16
.L9:
	cmpl $21,%eax
	jne .L12
	movl MI_Scanner+104,%eax
	call *%eax
	leal -16(%ebp),%eax
	pushl %eax
	call M3Header__PushGeneric
	addl $4,%esp
.L10:
	leal -16(%ebp),%eax
	pushl %eax
	call M3Header__ParseImports
	addl $4,%esp
	cmpl $0,-12(%ebp)
	je .L12
	movl MI_Scanner+140,%eax
	call *%eax
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_Host+104,%eax
	call *%eax
.L12:
	movl -16(%ebp),%eax
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3Header__Parse,.Lfe1-M3Header__Parse
	.align 16
	.type	 M3Header__SkipExternalPragma,@function
M3Header__SkipExternalPragma:
	pushl %ebp
	movl MI_Scanner+104,%eax
	movl %esp,%ebp
	call *%eax
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $1,%eax
	je .L16
	cmpl $7,%eax
	jne .L17
.L16:
	movl MI_Scanner+104,%eax
	call *%eax
	cmpb $28,MI_Scanner+44
	jne .L17
	movl MI_Scanner+104,%eax
	call *%eax
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $1,%eax
	je .L19
	cmpl $7,%eax
	jne .L17
.L19:
	movl MI_Scanner+104,%eax
	call *%eax
.L17:
	cmpb $35,MI_Scanner+44
	jne .L15
	movl MI_Scanner+104,%eax
	call *%eax
.L15:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3Header__SkipExternalPragma,.Lfe2-M3Header__SkipExternalPragma
	.align 16
	.type	 M3Header__PushGeneric,@function
M3Header__PushGeneric:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	leal -4(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Scanner+124,%eax
	call *%eax
	leal -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__MatchID
	addl $16,%esp
	testl %eax,%eax
	je .L22
	pushl $1
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__ParseGenericArgs
	leal -12(%ebp),%eax
	pushl %eax
	pushl $1
	movl 8(%ebp),%eax
	movb 8(%eax),%al
	andl $255,%eax
	pushl %eax
	movl -16(%ebp),%eax
	pushl %eax
	movl MI_Host+100,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%edx
	addl $24,%esp
	movl %ecx,4(%edx)
	testl %ecx,%ecx
	jne .L24
	movb $1,9(%edx)
	jmp .L22
	.align 16
.L24:
	pushl $MM_M3Header+112
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	movl -12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,-12(%ebp)
	xorl %eax,%eax
	movb MI_Scanner+100,%al
	pushl %eax
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %ecx
	movl MI_Scanner+136,%eax
	call *%eax
	pushl $67
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__Match
	addl $36,%esp
	testl %eax,%eax
	je .L22
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $71,%eax
	je .L26
	cmpl $76,%eax
	jne .L22
.L26:
	movl MI_Scanner+104,%eax
	call *%eax
	pushl $1
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__Match
	addl $8,%esp
	testl %eax,%eax
	je .L22
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__ParseGenericArgs
	pushl $16
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__Match
.L22:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3Header__PushGeneric,.Lfe3-M3Header__PushGeneric
	.align 16
	.type	 M3Header__ParseGenericArgs,@function
M3Header__ParseGenericArgs:
	pushl %ebp
	movl %esp,%ebp
	pushl $17
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__Match
	addl $8,%esp
	testl %eax,%eax
	je .L28
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__MatchIDList
	pushl $29
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__Match
.L28:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3Header__ParseGenericArgs,.Lfe4-M3Header__ParseGenericArgs
	.align 16
	.type	 M3Header__ParseImports,@function
M3Header__ParseImports:
	pushl %ebp
	movl %esp,%ebp
.L32:
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $69,%eax
	jne .L33
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__ParseImport
	addl $4,%esp
	jmp .L32
	.align 16
.L33:
	cmpl $66,%eax
	jne .L31
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call M3Header__ParseFromImport
	addl $12,%esp
	jmp .L32
	.align 16
.L31:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3Header__ParseImports,.Lfe5-M3Header__ParseImports
	.align 16
	.type	 M3Header__ParseImport,@function
M3Header__ParseImport:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
.L44:
	movl MI_Scanner+104,%eax
	call *%eax
	leal -4(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__MatchID
	addl $8,%esp
	testl %eax,%eax
	je .L37
	movl -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__PushID
	addl $8,%esp
	cmpb $47,MI_Scanner+44
	jne .L40
	movl MI_Scanner+104,%eax
	call *%eax
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__MatchID
	addl $8,%esp
	testl %eax,%eax
	je .L37
.L40:
	cmpb $15,MI_Scanner+44
	je .L44
	pushl $16
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__Match
.L37:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 M3Header__ParseImport,.Lfe6-M3Header__ParseImport
	.align 16
	.type	 M3Header__ParseFromImport,@function
M3Header__ParseFromImport:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Scanner+104,%eax
	subl $4,%esp
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%edx
	pushl %edx
	call M3Header__MatchID
	addl $8,%esp
	testl %eax,%eax
	je .L45
	movl -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%edx
	pushl %edx
	call M3Header__PushID
	pushl $69
	leal 8(%ebp),%edx
	pushl %edx
	call M3Header__Match
	addl $16,%esp
	testl %eax,%eax
	je .L45
	pushl $0
	leal 8(%ebp),%edx
	pushl %edx
	call M3Header__MatchIDList
	pushl $16
	leal 8(%ebp),%edx
	pushl %edx
	call M3Header__Match
.L45:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3Header__ParseFromImport,.Lfe7-M3Header__ParseFromImport
	.align 16
	.type	 M3Header__MatchIDList,@function
M3Header__MatchIDList:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movb 12(%ebp),%bl
.L49:
	leal -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__MatchID
	addl $8,%esp
	testl %eax,%eax
	je .L48
	testb %bl,%bl
	je .L51
	movl -4(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call M3Header__PushID
	addl $8,%esp
.L51:
	cmpb $15,MI_Scanner+44
	jne .L48
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L49
	.align 16
.L48:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3Header__MatchIDList,.Lfe8-M3Header__MatchIDList
	.align 16
	.type	 M3Header__Match,@function
M3Header__Match:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movb 12(%ebp),%dl
	cmpb $0,9(%eax)
	jne .L55
	cmpb %dl,MI_Scanner+44
	je .L56
.L55:
	movb $1,9(%eax)
	xorl %eax,%eax
	jmp .L57
	.align 16
.L56:
	movl MI_Scanner+104,%eax
	call *%eax
	movl $1,%eax
.L57:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M3Header__Match,.Lfe9-M3Header__Match
	.align 16
	.type	 M3Header__MatchID,@function
M3Header__MatchID:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	cmpb $0,9(%eax)
	jne .L59
	xorl %ebx,%ebx
	movb MI_Scanner+44,%bl
	cmpl $1,%ebx
	je .L60
.L59:
	movb $1,9(%eax)
	xorl %eax,%eax
	jmp .L61
	.align 16
.L60:
	movl MI_Scanner+48,%eax
	movl %eax,(%edx)
	movl MI_Scanner+104,%eax
	call *%eax
	movl %ebx,%eax
.L61:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 M3Header__MatchID,.Lfe10-M3Header__MatchID
	.align 16
	.type	 M3Header__PushID,@function
M3Header__PushID:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	movl MM_M3Header+128,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl %ebx,(%ecx)
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl %eax,4(%ecx)
	movl %ecx,(%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M3Header__PushID,.Lfe11-M3Header__PushID
.globl MM_M3Header
.data
	.align 4
	.type	 MM_M3Header,@object
	.size	 MM_M3Header,544
MM_M3Header:
	.long MM_M3Header+400
	.zero	4
	.long MM_M3Header+128
	.zero	8
	.long MM_M3Header+264
	.zero	20
	.long M3Header__SkipExternalPragma
	.long M3Header__PushGeneric
	.long M3Header__ParseGenericArgs
	.long M3Header__ParseImports
	.long M3Header__ParseImport
	.long M3Header__ParseFromImport
	.long M3Header__MatchIDList
	.long M3Header__Match
	.long M3Header__MatchID
	.long M3Header__PushID
	.long M3Header__Parse
	.long 2
	.long MM_M3Header+100
	.long 8
	.ascii	"RTHooks"
	.zero	1
	.long 2
	.long MM_M3Header+120
	.long 5
	.ascii	" => "
	.zero	8
	.long -1927706832
	.ascii	"PushID"
	.zero	1
	.ascii	"MatchID"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"MatchIDList"
	.zero	1
	.ascii	"ParseFromImport"
	.zero	1
	.ascii	"ParseImport"
	.zero	1
	.ascii	"ParseImports"
	.zero	1
	.ascii	"ParseGenericArgs"
	.zero	1
	.ascii	"PushGeneric"
	.zero	1
	.ascii	"SkipExternalPragma"
	.zero	1
	.ascii	"Parse"
	.zero	1
	.long M3Header__PushID
	.long MM_M3Header+136
	.zero	4
	.long M3Header__MatchID
	.long MM_M3Header+143
	.zero	4
	.long M3Header__Match
	.long MM_M3Header+151
	.zero	4
	.long M3Header__MatchIDList
	.long MM_M3Header+157
	.zero	4
	.long M3Header__ParseFromImport
	.long MM_M3Header+169
	.zero	4
	.long M3Header__ParseImport
	.long MM_M3Header+185
	.zero	4
	.long M3Header__ParseImports
	.long MM_M3Header+197
	.zero	4
	.long M3Header__ParseGenericArgs
	.long MM_M3Header+210
	.zero	4
	.long M3Header__PushGeneric
	.long MM_M3Header+227
	.zero	4
	.long M3Header__SkipExternalPragma
	.long MM_M3Header+239
	.zero	4
	.long M3Header__Parse
	.long MM_M3Header+258
	.long MI_M3Header+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/M3Header.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
