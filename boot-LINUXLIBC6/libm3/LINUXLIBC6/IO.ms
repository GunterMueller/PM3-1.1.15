	.file	"IO.mc"
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
	.type	 IO__Put,@function
IO__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L3
	movl MI_Stdio+48,%ebx
.L3:
	pushl %edx
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
	pushl %ebx
	movl MI_Wr+80,%eax
	call *%eax
.L4:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IO__Put,.Lfe1-IO__Put
	.align 16
	.type	 IO__PutInt,@function
IO__PutInt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
.L6:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L7
	movl MI_Stdio+48,%ebx
.L7:
	pushl $10
	pushl %edx
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
	pushl %ebx
	movl MI_Wr+80,%eax
	call *%eax
.L8:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 IO__PutInt,.Lfe2-IO__PutInt
	.align 16
	.type	 IO__PutReal,@function
IO__PutReal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 12(%ebp),%ebx
.L10:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L11
	movl MI_Stdio+48,%ebx
.L11:
	pushl $0
	pushl $8
	pushl $2
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Fmt+60,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	movl MI_Wr+68,%eax
	call *%eax
	pushl %ebx
	movl MI_Wr+80,%eax
	call *%eax
.L12:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 IO__PutReal,.Lfe3-IO__PutReal
	.align 16
	.type	 IO__EOF,@function
IO__EOF:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L14:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	testl %edx,%edx
	jne .L15
	movl MI_Stdio+44,%edx
.L15:
	pushl %edx
	movl MI_Rd+84,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 IO__EOF,.Lfe4-IO__EOF
	.align 16
	.type	 IO__GetLine,@function
IO__GetLine:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
.L18:
	movl $MM_IO+84,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,8(%ebp)
	jne .L20
	movl MI_Stdio+44,%ecx
	movl %ecx,8(%ebp)
.L20:
	movl $MM_IO+92,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L21
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Rd+108,%eax
	call *%eax
	movl %eax,%edx
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L17
	.align 16
.L21:
	pushl $0
	pushl $MI_IO+60
	movl MI_RTHooks+52,%eax
	call *%eax
.L24:
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 IO__GetLine,.Lfe5-IO__GetLine
	.align 16
	.type	 IO__GetChar,@function
IO__GetChar:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
.L26:
	movl $MM_IO+84,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,8(%ebp)
	jne .L28
	movl MI_Stdio+44,%ecx
	movl %ecx,8(%ebp)
.L28:
	movl $MM_IO+92,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L29
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%edx
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L25
	.align 16
.L29:
	pushl $0
	pushl $MI_IO+60
	movl MI_RTHooks+52,%eax
	call *%eax
.L32:
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 IO__GetChar,.Lfe6-IO__GetChar
	.align 16
	.type	 IO__GetInt,@function
IO__GetInt:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
.L34:
	movl $MM_IO+84,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,8(%ebp)
	jne .L36
	movl MI_Stdio+44,%ecx
	movl %ecx,8(%ebp)
.L36:
	movl $MM_IO+100,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L37
	pushl $10
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Lex+140,%eax
	call *%eax
	movl %eax,%edx
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L33
	.align 16
.L37:
	pushl $0
	pushl $MI_IO+60
	movl MI_RTHooks+52,%eax
	call *%eax
.L40:
.L33:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 IO__GetInt,.Lfe7-IO__GetInt
	.align 16
	.type	 IO__GetReal,@function
IO__GetReal:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
.L42:
	movl $MM_IO+84,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	cmpl $0,8(%ebp)
	jne .L44
	movl MI_Stdio+44,%edx
	movl %edx,8(%ebp)
.L44:
	movl $MM_IO+100,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L45
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Lex+148,%eax
	call *%eax
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L41
	.align 16
.L45:
	pushl $0
	pushl $MI_IO+60
	movl MI_RTHooks+52,%eax
	call *%eax
	fldz
.L48:
.L41:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 IO__GetReal,.Lfe8-IO__GetReal
	.align 16
	.type	 IO__OpenRead,@function
IO__OpenRead:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L50:
	movl $MM_IO+112,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L51
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_FileRd+148,%eax
	call *%eax
	movl %eax,%edx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L54
	.align 16
.L51:
	xorl %eax,%eax
.L54:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 IO__OpenRead,.Lfe9-IO__OpenRead
	.align 16
	.type	 IO__OpenWrite,@function
IO__OpenWrite:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L56:
	movl $MM_IO+112,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L57
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_FileWr+148,%eax
	call *%eax
	movl %eax,%edx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L60
	.align 16
.L57:
	xorl %eax,%eax
.L60:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 IO__OpenWrite,.Lfe10-IO__OpenWrite
.globl MM_IO
.data
	.align 4
	.type	 MM_IO,@object
	.size	 MM_IO,464
MM_IO:
	.long MM_IO+320
	.zero	16
	.long MM_IO+196
	.zero	20
	.long IO__Put
	.long IO__PutInt
	.long IO__PutReal
	.long IO__EOF
	.long IO__GetLine
	.long IO__GetChar
	.long IO__GetInt
	.long IO__GetReal
	.long IO__OpenRead
	.long IO__OpenWrite
	.long MI_IO+60
	.zero	4
	.long MI_Rd+44
	.zero	4
	.long MI_FloatMode+88
	.long MI_Lex+44
	.zero	4
	.long MI_OSError+44
	.zero	4
	.ascii	"OpenWrite"
	.zero	1
	.ascii	"OpenRead"
	.zero	1
	.ascii	"GetReal"
	.zero	1
	.ascii	"GetInt"
	.zero	1
	.ascii	"GetChar"
	.zero	1
	.ascii	"GetLine"
	.zero	1
	.ascii	"EOF"
	.zero	1
	.ascii	"PutReal"
	.zero	1
	.ascii	"PutInt"
	.zero	1
	.ascii	"Put"
	.zero	4
	.long IO__OpenWrite
	.long MM_IO+120
	.long MI_IO+96
	.long IO__OpenRead
	.long MM_IO+130
	.long MI_IO+92
	.long IO__GetReal
	.long MM_IO+139
	.long MI_IO+88
	.long IO__GetInt
	.long MM_IO+147
	.long MI_IO+84
	.long IO__GetChar
	.long MM_IO+154
	.long MI_IO+80
	.long IO__GetLine
	.long MM_IO+162
	.long MI_IO+76
	.long IO__EOF
	.long MM_IO+170
	.long MI_IO+56
	.long IO__PutReal
	.long MM_IO+174
	.long MI_IO+52
	.long IO__PutInt
	.long MM_IO+182
	.long MI_IO+48
	.long IO__Put
	.long MM_IO+189
	.long MI_IO+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/IO.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
