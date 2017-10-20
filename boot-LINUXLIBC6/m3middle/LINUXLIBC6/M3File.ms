	.file	"M3File.mc"
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
	.type	 M3File__Read,@function
M3File__Read:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	movl 4(%edx),%ecx
	testl %ecx,%ecx
	jle .L9
	testl %ebx,%ebx
	jle .L9
	movl (%edx),%eax
	movl %ebx,%edx
	cmpl %ecx,%edx
	jle .L5
	movl %ecx,%edx
.L5:
	testl %edx,%edx
	jge .L6
	pushl $353
	call _m3_fault
	.align 16
.L6:
	cmpl $16777217,%edx
	jle .L7
	pushl $353
	call _m3_fault
	.align 16
.L7:
	movl %edx,-4(%ebp)
	testl %eax,%eax
	jne .L8
	pushl $356
	call _m3_fault
	.align 16
.L8:
	movl %eax,-8(%ebp)
	movl (%esi),%eax
	movl 4(%eax),%edx
	pushl $1
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	call *%edx
.L9:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3File__Read,.Lfe1-M3File__Read
	.align 16
	.type	 M_M3File_LINE_41.0,@function
M_M3File_LINE_41.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -4124(%ebx),%eax
	testl %eax,%eax
	je .L19
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-4128(%ebx)
	movl -4124(%ebx),%eax
	pushl %eax
	call *%edx
	addl $4,%esp
.L19:
	movl -4132(%ebx),%eax
	testl %eax,%eax
	je .L18
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-4128(%ebx)
	movl -4132(%ebx),%eax
	pushl %eax
	call *%edx
.L18:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M_M3File_LINE_41.0,.Lfe2-M_M3File_LINE_41.0
	.align 16
	.type	 M3File__Copy,@function
M3File__Copy:
	pushl %ebp
	movl %esp,%ebp
	subl $4132,%esp
	pushl %edi
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl %eax,-4132(%ebp)
	movl %eax,-4124(%ebp)
	movl %eax,-4132(%ebp)
	movl %eax,-4124(%ebp)
	movl $M_M3File_LINE_41.0,-4104(%ebp)
	movl %ebp,-4100(%ebp)
.L11:
	movl $3,-4108(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-4112(%ebp)
	leal -4112(%ebp),%edi
	movl %edi,RTThread__handlerStack
	pushl %edx
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,-4128(%ebp)
	movl %eax,-4132(%ebp)
	pushl $2
	pushl $0
	pushl $1
	pushl $1
	pushl %ebx
	movl MI_FS+48,%eax
	call *%eax
	movl %eax,-4128(%ebp)
	movl %eax,-4124(%ebp)
	addl $24,%esp
.L12:
	movl -4132(%ebp),%eax
	movl (%eax),%edx
	leal -4096(%ebp),%ebx
	movl 4(%edx),%edx
	movl %edx,-4128(%ebp)
	movl %ebx,-4120(%ebp)
	movl $4096,-4116(%ebp)
	pushl $1
	leal -4120(%ebp),%esi
	pushl %esi
	pushl %eax
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	jle .L14
	cmpl $4096,%eax
	jle .L16
	pushl $609
	call _m3_fault
	.align 16
.L16:
	movl %eax,-4116(%ebp)
	movl -4124(%ebp),%eax
	movl %ebx,-4120(%ebp)
	movl (%eax),%edx
	movl 8(%edx),%edx
	movl %edx,-4128(%ebp)
	pushl %esi
	pushl %eax
	call *%edx
	addl $8,%esp
	jmp .L12
	.align 16
.L14:
	movl -4112(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_M3File_LINE_41.0
.L17:
	leal -4144(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3File__Copy,.Lfe3-M3File__Copy
	.align 16
	.type	 M_M3File_LINE_91.1,@function
M_M3File_LINE_91.1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -2084(%ebx),%eax
	testl %eax,%eax
	je .L51
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-2088(%ebx)
	movl -2084(%ebx),%eax
	pushl %eax
	call *%edx
	addl $4,%esp
.L51:
	movl -2092(%ebx),%eax
	testl %eax,%eax
	je .L50
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-2088(%ebx)
	movl -2092(%ebx),%eax
	pushl %eax
	call *%edx
.L50:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M_M3File_LINE_91.1,.Lfe4-M_M3File_LINE_91.1
	.align 16
	.type	 M3File__CopyText,@function
M3File__CopyText:
	pushl %ebp
	movl %esp,%ebp
	subl $2108,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-2092(%ebp)
	movl %ebx,-2084(%ebp)
	movl %ebx,-2092(%ebp)
	movl %ebx,-2084(%ebp)
	movl 16(%ebp),%edi
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	decl %eax
	movl %eax,-2096(%ebp)
	movl -2096(%ebp),%esi
	addl $4,%esp
	jmp .L22
	.align 16
.L23:
	pushl %ebx
	movl 16(%ebp),%edi
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	addl $8,%esp
	cmpl $7,%ebx
	jle .L24
	pushl $929
	call _m3_fault
	.align 16
.L24:
	cmpl $255,%eax
	jbe .L25
	pushl $929
	call _m3_fault
	.align 16
.L25:
	movb %al,-8(%ebx,%ebp)
	incl %ebx
.L22:
	cmpl %esi,%ebx
	jle .L23
	movl $M_M3File_LINE_91.1,-2064(%ebp)
	movl %ebp,-2060(%ebp)
.L27:
	movl $3,-2068(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-2072(%ebp)
	leal -2072(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%edi
	pushl %edi
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,-2088(%ebp)
	movl %eax,-2092(%ebp)
	pushl $2
	pushl $0
	pushl $1
	pushl $1
	movl 12(%ebp),%edi
	pushl %edi
	movl MI_FS+48,%eax
	call *%eax
	movl %eax,-2088(%ebp)
	movl %eax,-2084(%ebp)
	xorl %ebx,%ebx
	addl $24,%esp
.L28:
	movl -2092(%ebp),%eax
	movl (%eax),%edx
	leal -2056(%ebp),%edi
	movl 4(%edx),%edx
	movl %edx,-2088(%ebp)
	movl %edi,-2080(%ebp)
	movl $1024,-2076(%ebp)
	pushl $1
	leal -2080(%ebp),%esi
	pushl %esi
	pushl %eax
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	jle .L30
	movl $0,-2108(%ebp)
	decl %eax
	movl %eax,-2100(%ebp)
	jmp .L31
	.align 16
.L32:
	cmpl $1023,%ebx
	jle .L33
	movl -2084(%ebp),%ecx
	movl (%ecx),%eax
	leal -1032(%ebp),%edi
	movl 8(%eax),%edx
	movl %edx,-2088(%ebp)
	movl %edi,-2080(%ebp)
	movl $1024,-2076(%ebp)
	leal -2080(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	xorl %ebx,%ebx
	addl $8,%esp
.L33:
	cmpl $1023,-2108(%ebp)
	jle .L34
	pushl $1137
	call _m3_fault
	.align 16
.L34:
	movl -2108(%ebp),%edi
	movb -2056(%edi,%ebp),%dl
	xorl %eax,%eax
	movb %dl,%al
	cmpl $13,%eax
	je .L36
	cmpl $10,%eax
	jne .L37
	xorl %esi,%esi
	movl -2096(%ebp),%edi
	movl %edi,-2104(%ebp)
	jmp .L38
	.align 16
.L39:
	cmpl $1023,%ebx
	jle .L40
	movl -2084(%ebp),%ecx
	movl (%ecx),%eax
	leal -1032(%ebp),%edi
	movl 8(%eax),%edx
	movl %edx,-2088(%ebp)
	movl %edi,-2080(%ebp)
	movl $1024,-2076(%ebp)
	leal -2080(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	xorl %ebx,%ebx
	addl $8,%esp
.L40:
	cmpl $1023,%ebx
	jbe .L41
	pushl $1281
	call _m3_fault
	.align 16
.L41:
	cmpl $7,%esi
	jle .L42
	pushl $1281
	call _m3_fault
	.align 16
.L42:
	movb -8(%esi,%ebp),%al
	movb %al,-1032(%ebx,%ebp)
	incl %ebx
	incl %esi
.L38:
	cmpl %esi,-2104(%ebp)
	jge .L39
	jmp .L36
	.align 16
.L37:
	cmpl $1023,%ebx
	jbe .L44
	pushl $1345
	call _m3_fault
	.align 16
.L44:
	movb %dl,-1032(%ebx,%ebp)
	incl %ebx
.L36:
	incl -2108(%ebp)
.L31:
	movl -2100(%ebp),%edi
	cmpl %edi,-2108(%ebp)
	jle .L32
	jmp .L28
	.align 16
.L30:
	testl %ebx,%ebx
	jle .L46
	cmpl $1024,%ebx
	jle .L48
	pushl $1425
	call _m3_fault
	.align 16
.L48:
	movl %ebx,-2076(%ebp)
	leal -1032(%ebp),%edi
	movl -2084(%ebp),%eax
	movl %edi,-2080(%ebp)
	movl (%eax),%edx
	movl 8(%edx),%edx
	movl %edx,-2088(%ebp)
	pushl %esi
	pushl %eax
	call *%edx
	addl $8,%esp
.L46:
	movl -2072(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_M3File_LINE_91.1
.L49:
	leal -2120(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3File__CopyText,.Lfe5-M3File__CopyText
	.align 16
	.type	 M_M3File_LINE_116.2,@function
M_M3File_LINE_116.2:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -2108(%ebx),%eax
	testl %eax,%eax
	je .L68
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-2112(%ebx)
	movl -2108(%ebx),%eax
	pushl %eax
	call *%edx
	addl $4,%esp
.L68:
	movl -2116(%ebx),%eax
	testl %eax,%eax
	je .L67
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-2112(%ebx)
	movl -2116(%ebx),%eax
	pushl %eax
	call *%edx
.L67:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 M_M3File_LINE_116.2,.Lfe6-M_M3File_LINE_116.2
	.align 16
	.type	 M3File__IsEqual,@function
M3File__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	subl $2116,%esp
	pushl %edi
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl %eax,-2108(%ebp)
	movl %eax,-2116(%ebp)
	movl %eax,-2108(%ebp)
	movl %eax,-2116(%ebp)
	movl $M_M3File_LINE_116.2,-2056(%ebp)
	movl %ebp,-2052(%ebp)
.L54:
	movl $3,-2060(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-2064(%ebp)
	leal -2064(%ebp),%edi
	movl %edi,RTThread__handlerStack
	pushl %edx
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,-2108(%ebp)
	pushl %ebx
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,%ecx
	movl -2108(%ebp),%edx
	movl %ecx,-2116(%ebp)
	movl (%edx),%eax
	movl 12(%eax),%ecx
	leal -2080(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl -2116(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%eax),%edx
	movl %edx,-2112(%ebp)
	leal -2096(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -2084(%ebp),%eax
	addl $24,%esp
	cmpl %eax,-2068(%ebp)
	jne .L70
.L56:
	movl -2108(%ebp),%edx
	movl (%edx),%eax
	leal -2048(%ebp),%edi
	movl 4(%eax),%eax
	movl %eax,-2112(%ebp)
	movl %edi,-2104(%ebp)
	movl $1024,-2100(%ebp)
	pushl $1
	leal -2104(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -2116(%ebp),%edx
	movl %eax,%esi
	movl (%edx),%eax
	leal -1024(%ebp),%edi
	movl 4(%eax),%eax
	movl %eax,-2112(%ebp)
	movl %edi,-2104(%ebp)
	movl $1024,-2100(%ebp)
	pushl $1
	pushl %ebx
	pushl %edx
	call *%eax
	addl $24,%esp
	cmpl %eax,%esi
	jne .L70
	testl %eax,%eax
	jg .L58
	movl -2064(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_M3File_LINE_116.2
	movl $1,%eax
	jmp .L53
	.align 16
.L58:
	xorl %edx,%edx
	leal -1(%esi),%ecx
	jmp .L59
	.align 16
.L60:
	cmpl $1023,%edx
	jle .L62
	pushl $1793
	call _m3_fault
	.align 16
.L62:
	movb -2048(%edx,%ebp),%al
	cmpb %al,-1024(%edx,%ebp)
	je .L63
.L70:
	movl -2064(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_M3File_LINE_116.2
	xorl %eax,%eax
	jmp .L53
	.align 16
.L63:
	incl %edx
.L59:
	cmpl %ecx,%edx
	jle .L60
	jmp .L56
	.align 16
.L66:
.L53:
	leal -2128(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3File__IsEqual,.Lfe7-M3File__IsEqual
	.align 16
	.type	 M3File__IsDirectory,@function
M3File__IsDirectory:
	pushl %ebp
	movl %esp,%ebp
	subl $196,%esp
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
.L72:
	movl $MM_M3File+172,-188(%ebp)
	movl $0,-192(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-196(%ebp)
	leal -196(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -176(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L73
	leal -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_FS+184,%eax
	call *%eax
	movl -196(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl MI_FS+176,%eax
	cmpl %eax,-16(%ebp)
	sete %al
	andl $255,%eax
	jmp .L76
	.align 16
.L73:
	xorl %eax,%eax
.L76:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3File__IsDirectory,.Lfe8-M3File__IsDirectory
	.align 16
	.type	 M3File__IsReadable,@function
M3File__IsReadable:
	pushl %ebp
	movl %esp,%ebp
	subl $196,%esp
.L78:
	movl $MM_M3File+172,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L79
	leal -196(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_FS+184,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L82
	.align 16
.L79:
	xorl %eax,%eax
.L82:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M3File__IsReadable,.Lfe9-M3File__IsReadable
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3File
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_M3File
.data
	.align 4
	.type	 MM_M3File,@object
	.size	 MM_M3File,556
MM_M3File:
	.long MM_M3File+396
	.long MM_M3File+44
	.zero	12
	.long MM_M3File+284
	.zero	28
	.long 1503896659
.byte 150
.byte 210
.byte 120
.byte 78
.byte 197
.byte 118
.byte 219
.byte 23
	.zero	8
	.long 16777217
	.long 1
	.zero	20
	.long MM_M3File+534
	.zero	36
	.long MM_M3File+542
	.zero	4
	.long M3File__Read
	.long M3File__Copy
	.long M3File__CopyText
	.long M3File__IsEqual
	.long M3File__IsDirectory
	.long M3File__IsReadable
	.long MI_OSError+44
	.zero	4
	.ascii	"IsReadable"
	.zero	1
	.ascii	"IsDirectory"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"M_M3File_LINE_116"
	.zero	1
	.ascii	"CopyText"
	.zero	1
	.ascii	"M_M3File_LINE_91"
	.zero	1
	.ascii	"Copy"
	.zero	1
	.ascii	"M_M3File_LINE_41"
	.zero	1
	.ascii	"Read"
	.zero	3
	.long M3File__IsReadable
	.long MM_M3File+180
	.long MI_M3File+64
	.long M3File__IsDirectory
	.long MM_M3File+191
	.long MI_M3File+60
	.long M3File__IsEqual
	.long MM_M3File+203
	.long MI_M3File+56
	.long M_M3File_LINE_116.2
	.long MM_M3File+211
	.zero	4
	.long M3File__CopyText
	.long MM_M3File+229
	.long MI_M3File+52
	.long M_M3File_LINE_91.1
	.long MM_M3File+238
	.zero	4
	.long M3File__Copy
	.long MM_M3File+255
	.long MI_M3File+48
	.long M_M3File_LINE_41.0
	.long MM_M3File+260
	.zero	4
	.long M3File__Read
	.long MM_M3File+277
	.long MI_M3File+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3File.m3"
	.zero	1
.byte 1
.byte 16
.byte 29
.byte 1
.byte 0
.byte 0
.byte 1
.byte 0
	.ascii	"M3File.BufPtr"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
