	.file	"QCompiler.mc"
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
	.type	 M_QCompiler_LINE_57.0,@function
M_QCompiler_LINE_57.0:
	pushl %ebp
	movl %esp,%ebp
	subl $188,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl %ebx,-188(%ebp)
.L12:
	movl $MM_QCompiler+156,-176(%ebp)
	movl $0,-180(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-184(%ebp)
	leal -184(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -164(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	movl -188(%ebp),%ebx
	movl -216(%ebx),%eax
	movl (%eax),%eax
	movl 16(%eax),%edx
	movl %edx,-212(%ebx)
	movl -216(%ebx),%eax
	pushl %eax
	call *%edx
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L13:
.L11:
	movl -192(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M_QCompiler_LINE_57.0,.Lfe1-M_QCompiler_LINE_57.0
	.align 16
	.type	 QCompiler__CompileFile,@function
QCompiler__CompileFile:
	pushl %ebp
	movl %esp,%ebp
	subl $216,%esp
	pushl %esi
	pushl %ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl $0,-216(%ebp)
.L2:
	movl $MM_QCompiler+156,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L3
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,-216(%ebp)
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $4,%esp
	jmp .L4
	.align 16
.L3:
	movl 8(%ebp),%esi
	pushl %esi
	pushl $MM_QCompiler+168
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_QCompiler+200
	movl %eax,%ecx
	pushl %ecx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl $MI_Quake+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $24,%esp
.L4:
	movl $M_QCompiler_LINE_57.0,-200(%ebp)
	movl %ebp,-196(%ebp)
.L6:
	movl $3,-204(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-208(%ebp)
	leal -208(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl MM_QCompiler+224,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	movl -216(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %eax,-212(%ebp)
	movl %eax,-12(%ebp)
	pushl $0
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl MM_QCompiler+232,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-212(%ebp)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	movl %edx,-8(%ebp)
	movl (%edx),%eax
	movl 4(%eax),%eax
	movl %eax,-212(%ebp)
	pushl $1
	pushl $37
	pushl %edx
	call *%eax
	movl -12(%ebp),%edx
	movl (%edx),%eax
	addl $36,%esp
	movl 8(%eax),%eax
	movl %eax,-212(%ebp)
	pushl %edx
	call *%eax
	jmp .L16
	.align 16
.L8:
	leal -12(%ebp),%eax
	pushl %eax
	call QCompiler__Statement
.L16:
	addl $4,%esp
	pushl $MM_QCompiler+44
	movl -12(%ebp),%eax
	movb 4(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L8
	pushl $1
	leal -12(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl -8(%ebp),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	movl %eax,-212(%ebp)
	pushl %ebx
	pushl $17
	pushl %edx
	call *%eax
	movl -208(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_QCompiler_LINE_57.0
.L10:
	leal -224(%ebp),%esp
	movl -8(%ebp),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QCompiler__CompileFile,.Lfe2-QCompiler__CompileFile
	.align 16
	.type	 QCompiler__Block,@function
QCompiler__Block:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl $0
	pushl $18
	pushl %edx
	call *%ecx
	addl $12,%esp
	jmp .L18
	.align 16
.L19:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Statement
	addl $4,%esp
.L18:
	pushl $MM_QCompiler+44
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movb 4(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L19
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%edx
	pushl %ebx
	pushl $19
	pushl %ecx
	call *%edx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 QCompiler__Block,.Lfe3-QCompiler__Block
.section	.rodata
	.align 4
	.type	 L_4.1,@object
	.size	 L_4.1,108
L_4.1:
	.long .L23
	.long .L24
	.long .L22
	.long .L22
	.long .L25
	.long .L22
	.long .L22
	.long .L26
	.long .L27
	.long .L28
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L29
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L30
.text
	.align 16
	.type	 QCompiler__Statement,@function
QCompiler__Statement:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 4(%edx),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%ebx
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl $37
	pushl %ecx
	call *%ebx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	addl $12,%esp
	movb 4(%eax),%al
	andl $255,%eax
	addl $-6,%eax
	js .L22
	cmpl $26,%eax
	jg .L22
	jmp *L_4.1(,%eax,4)
	.align 16
.L23:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__ForeachStmt
	jmp .L21
	.align 16
.L24:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__IfStmt
	jmp .L21
	.align 16
.L25:
.L27:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Decl
	jmp .L21
	.align 16
.L26:
	pushl $0
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__ProcDeclStmt
	jmp .L21
	.align 16
.L30:
	pushl $0
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__AssignOrProcCallStmt
	jmp .L21
	.align 16
.L28:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__ReturnStmt
	jmp .L21
	.align 16
.L29:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__RedirectionStmt
	jmp .L21
	.align 16
.L22:
	pushl $1360
	call _m3_fault
	.align 16
.L21:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 QCompiler__Statement,.Lfe4-QCompiler__Statement
	.align 16
	.type	 QCompiler__Decl,@function
QCompiler__Decl:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	xorb %bl,%bl
	movb %bl,-4(%ebp)
.L33:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $10,%eax
	jne .L34
	movb $1,%bl
	jmp .L35
	.align 16
.L34:
	cmpl $14,%eax
	jne .L37
	movb $1,-4(%ebp)
.L35:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %edx
	call *%eax
	addl $4,%esp
	jmp .L33
	.align 16
.L37:
	cmpl $13,%eax
	jne .L38
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %edx
	call QCompiler__ProcDeclStmt
	jmp .L32
	.align 16
.L38:
	cmpl $32,%eax
	jne .L40
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	pushl %edx
	call QCompiler__AssignOrProcCallStmt
	jmp .L32
	.align 16
.L40:
	pushl $MM_QCompiler+244
	pushl %edx
	call QCompiler__Err
.L32:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 QCompiler__Decl,.Lfe5-QCompiler__Decl
	.align 16
	.type	 QCompiler__ForeachStmt,@function
QCompiler__ForeachStmt:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $6
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__MatchName
	movl %eax,%ebx
	pushl $8
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	movl 8(%ebp),%eax
	movl 4(%eax),%edi
	movl (%edi),%eax
	movl 4(%eax),%esi
	pushl %ebx
	pushl $13
	pushl %edi
	call *%esi
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 4(%edx),%ecx
	movl %ecx,-4(%ebp)
	movl (%edx),%eax
	addl $36,%esp
	movl 4(%eax),%edi
	pushl $0
	pushl $14
	pushl %edx
	call *%edi
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Block
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%edx),%ebx
	movl 4(%eax),%esi
	movl -4(%ebp),%eax
	subl %ebx,%eax
	decl %eax
	pushl %eax
	pushl $15
	pushl %edx
	call *%esi
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl (%esi),%eax
	subl -4(%ebp),%ebx
	movl 8(%eax),%edi
	pushl %ebx
	pushl $14
	movl -4(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call *%edi
	addl $44,%esp
	pushl $5
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 QCompiler__ForeachStmt,.Lfe6-QCompiler__ForeachStmt
	.align 16
	.type	 QCompiler__IfStmt,@function
QCompiler__IfStmt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $7
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	movl %eax,%ebx
	movl 4(%eax),%edx
	movl %edx,-8(%ebp)
	movl (%ebx),%eax
	movl 4(%eax),%esi
	pushl $0
	pushl $16
	pushl %ebx
	call *%esi
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Block
	movl 8(%ebp),%ecx
	movl 4(%ecx),%ebx
	movl 4(%ebx),%edx
	movl %edx,-4(%ebp)
	movl (%ecx),%eax
	addl $28,%esp
	movzbl 4(%eax),%edi
	cmpl $5,%edi
	jne .L43
	movl %ebx,%esi
	movl (%esi),%eax
	movl 8(%eax),%ebx
	movl %edx,%eax
	subl -8(%ebp),%eax
	decl %eax
	pushl %eax
	pushl $16
	movl -8(%ebp),%edx
	pushl %edx
	pushl %esi
	call *%ebx
	pushl %edi
	jmp .L46
	.align 16
.L43:
	cmpl $4,%edi
	jne .L45
	movl (%ebx),%eax
	movl 4(%eax),%esi
	pushl $0
	pushl $15
	pushl %ebx
	call *%esi
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl (%esi),%eax
	movl 8(%eax),%ebx
	movl -4(%ebp),%eax
	subl -8(%ebp),%eax
	pushl %eax
	pushl $16
	movl -8(%ebp),%edx
	pushl %edx
	pushl %esi
	call *%ebx
	pushl %edi
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	addl $36,%esp
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Block
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	movl (%ebx),%eax
	movl 8(%eax),%esi
	movl 4(%ebx),%eax
	subl -4(%ebp),%eax
	decl %eax
	pushl %eax
	pushl $15
	movl -4(%ebp),%edx
	pushl %edx
	pushl %ebx
	call *%esi
	pushl $5
.L46:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	jmp .L42
	.align 16
.L45:
	pushl $MM_QCompiler+320
	pushl %ecx
	call QCompiler__Err
.L42:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 QCompiler__IfStmt,.Lfe7-QCompiler__IfStmt
	.align 16
	.type	 QCompiler__ReturnStmt,@function
QCompiler__ReturnStmt:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	pushl $15
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	pushl $MM_QCompiler+52
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movb 4(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	je .L48
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl $0
	pushl $35
	pushl %edx
	call *%ecx
	jmp .L47
	.align 16
.L48:
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%edx
	pushl %ebx
	pushl $36
	pushl %ecx
	call *%edx
.L47:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 QCompiler__ReturnStmt,.Lfe8-QCompiler__ReturnStmt
	.align 16
	.type	 QCompiler__RedirectionStmt,@function
QCompiler__RedirectionStmt:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movb $29,-4(%ebp)
	pushl $25
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%edx
	movl (%edx),%eax
	addl $8,%esp
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $25,%eax
	jne .L51
	pushl %eax
	pushl %edx
	call QCompiler__Match
	movb $30,-4(%ebp)
	addl $8,%esp
.L51:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	pushl $8
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%ebx
	pushl $0
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ebx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Block
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%edx
	pushl $0
	pushl $31
	pushl %ebx
	call *%edx
	addl $40,%esp
	pushl $5
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 QCompiler__RedirectionStmt,.Lfe9-QCompiler__RedirectionStmt
	.align 16
	.type	 QCompiler__ProcDeclStmt,@function
QCompiler__ProcDeclStmt:
	pushl %ebp
	movl %esp,%ebp
	subl $100,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb 16(%ebp),%bl
	movl $0,-96(%ebp)
	pushl $13
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__MatchName
	movl %eax,-100(%ebp)
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	movl %eax,%edi
	movl 4(%eax),%ecx
	movl %ecx,-92(%ebp)
	movl (%edi),%eax
	movl -96(%ebp),%ecx
	movl 4(%eax),%esi
	pushl %ecx
	pushl $5
	pushl %edi
	call *%esi
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl -100(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__EmitDefine
	movl 8(%ebp),%eax
	addl $40,%esp
	movl 4(%eax),%eax
	movl %eax,%esi
	movl 4(%eax),%ecx
	movl %ecx,-88(%ebp)
	movl (%esi),%eax
	movl -96(%ebp),%ecx
	movl 4(%eax),%edi
	pushl %ecx
	pushl $15
	pushl %esi
	call *%edi
	movl 8(%ebp),%eax
	movl 4(%eax),%edi
	movl (%edi),%eax
	movl -100(%ebp),%ecx
	movl 12(%eax),%esi
	pushl %ecx
	pushl %edi
	call *%esi
	movl %eax,-100(%ebp)
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl (%esi),%eax
	movl -100(%ebp),%ebx
	movl 8(%eax),%edi
	pushl %ebx
	pushl $5
	movl -92(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call *%edi
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	movl %eax,%edi
	movl 4(%eax),%ecx
	movl %ecx,-84(%ebp)
	movl (%edi),%eax
	movl 4(%eax),%esi
	movl (%edx),%eax
	addl $36,%esp
	movl 8(%eax),%eax
	pushl %eax
	pushl $37
	pushl %edi
	call *%esi
	pushl $18
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	addl $20,%esp
	jmp .L53
	.align 16
.L54:
	cmpl $19,-96(%ebp)
	jle .L55
	pushl $MM_QCompiler+368
	pushl %edx
	call QCompiler__Err
	addl $8,%esp
.L55:
	cmpl $19,-96(%ebp)
	jbe .L56
	pushl $3377
	call _m3_fault
	.align 16
.L56:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl -96(%ebp),%ecx
	movl 12(%eax),%eax
	movl %eax,-80(%ebp,%ecx,4)
	incl %ecx
	movl %ecx,-96(%ebp)
	movl (%edx),%esi
	movl (%esi),%eax
	movl 8(%eax),%edi
	pushl %esi
	call *%edi
	movl 8(%ebp),%edx
	movl (%edx),%eax
	addl $4,%esp
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $21,%eax
	jne .L58
	pushl %eax
	pushl %edx
	call QCompiler__Match
	addl $8,%esp
.L53:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	cmpb $32,4(%eax)
	je .L54
.L58:
	pushl $19
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	pushl $9
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	addl $16,%esp
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L59
	pushl $3508
	call _m3_fault
	.align 16
.L59:
	movl %eax,%edi
	cmpl %ebx,4(%edi)
	ja .L60
	pushl $3506
	call _m3_fault
	.align 16
.L60:
	movl (%edi),%eax
	movl (%eax,%ebx,4),%eax
	testl %eax,%eax
	jne .L61
	pushl $3508
	call _m3_fault
	.align 16
.L61:
	movl -96(%ebp),%ecx
	movl %ecx,12(%eax)
	movl -96(%ebp),%ebx
	decl %ebx
	jmp .L62
	.align 16
.L63:
	cmpl $19,%ebx
	jle .L64
	pushl $3569
	call _m3_fault
	.align 16
.L64:
	pushl $0
	pushl $1
	movl -80(%ebp,%ebx,4),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__EmitDefine
	decl %ebx
	addl $16,%esp
.L62:
	testl %ebx,%ebx
	jge .L63
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Block
	movl 8(%ebp),%edx
	movl 4(%edx),%edi
	movl (%edi),%eax
	movl 4(%eax),%esi
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl $37
	pushl %edi
	call *%esi
	pushl $5
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl (%esi),%eax
	movl 4(%eax),%edi
	pushl $0
	pushl $36
	pushl %esi
	call *%edi
	movl 8(%ebp),%eax
	movl 4(%eax),%edi
	movl (%edi),%eax
	addl $36,%esp
	movl 8(%eax),%esi
	movl 4(%edi),%eax
	subl -84(%ebp),%eax
	pushl %eax
	pushl $15
	movl -88(%ebp),%ecx
	pushl %ecx
	pushl %edi
	call *%esi
	leal -112(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 QCompiler__ProcDeclStmt,.Lfe10-QCompiler__ProcDeclStmt
	.align 16
	.type	 QCompiler__EmitDefine,@function
QCompiler__EmitDefine:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl (%ecx),%eax
	movl 12(%ebp),%edx
	movl 4(%eax),%ebx
	pushl %edx
	xorl %edx,%edx
	movb 16(%ebp),%dl
	xorl %eax,%eax
	movb 20(%ebp),%al
	movb MM_QCompiler+152(%eax,%edx,2),%al
	andl $255,%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 QCompiler__EmitDefine,.Lfe11-QCompiler__EmitDefine
	.align 16
	.type	 QCompiler__AssignOrProcCallStmt,@function
QCompiler__AssignOrProcCallStmt:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movb 16(%ebp),%bl
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__MatchName
	movl 8(%ebp),%edx
	movl %eax,%edi
	movl (%edx),%eax
	addl $4,%esp
	cmpb $18,4(%eax)
	jne .L68
	cmpb $0,12(%ebp)
	jne .L69
	testb %bl,%bl
	je .L70
.L69:
	pushl $MM_QCompiler+408
	pushl %edx
	call QCompiler__Err
	addl $8,%esp
.L70:
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl (%esi),%eax
	movl 4(%eax),%ebx
	pushl %edi
	pushl $24
	pushl %esi
	call *%ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%esi
	pushl $0
	pushl $32
	pushl %ebx
	call *%esi
	pushl $18
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	addl $32,%esp
	movl 4(%eax),%esi
	pushl %eax
	call QCompiler__ExprList
	movl %eax,%edx
	movl (%esi),%eax
	movl 4(%eax),%ebx
	pushl %edx
	pushl $33
	pushl %esi
	call *%ebx
	pushl $19
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	jmp .L67
	.align 16
.L68:
	cmpb $0,12(%ebp)
	jne .L72
	testb %bl,%bl
	je .L73
.L72:
	pushl $24
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edi
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__EmitDefine
	jmp .L67
	.align 16
.L73:
	movb $24,-4(%ebp)
.L74:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	xorl %ecx,%ecx
	movb 4(%eax),%cl
	movl %ecx,-8(%ebp)
	cmpl $27,%ecx
	jne .L75
	movl 4(%edx),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%esi
	pushl %edi
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	pushl %ebx
	call *%esi
	movl -8(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	pushl $28
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movb $12,-4(%ebp)
	jmp .L83
	.align 16
.L75:
	cmpl $29,-8(%ebp)
	jne .L78
	movl 4(%edx),%esi
	movl (%esi),%eax
	movl 4(%eax),%ebx
	pushl %edi
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	pushl %esi
	call *%ebx
	movl -8(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	pushl $30
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movb $11,-4(%ebp)
.L83:
	xorl %edi,%edi
	addl $32,%esp
	jmp .L74
	.align 16
.L78:
	cmpl $20,-8(%ebp)
	jne .L79
	movl 4(%edx),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%esi
	pushl %edi
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	pushl %ebx
	call *%esi
	movl -8(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movb $28,-4(%ebp)
	xorl %edi,%edi
	addl $20,%esp
	jmp .L80
	.align 16
.L79:
	xorl %eax,%eax
	movb -4(%ebp),%al
	cmpl $24,%eax
	jne .L81
	movb $25,-4(%ebp)
	jmp .L80
	.align 16
.L81:
	movb $26,-4(%ebp)
	cmpl $12,%eax
	jne .L80
	movb $27,-4(%ebp)
.L80:
	pushl $24
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	movl (%esi),%eax
	movl 4(%eax),%ebx
	pushl %edi
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	pushl %esi
	call *%ebx
.L67:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 QCompiler__AssignOrProcCallStmt,.Lfe12-QCompiler__AssignOrProcCallStmt
	.align 16
	.type	 QCompiler__ExprList,@function
QCompiler__ExprList:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	jmp .L85
	.align 16
.L86:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	movl 8(%ebp),%eax
	incl %ebx
	movl (%eax),%edx
	addl $4,%esp
	cmpb $21,4(%edx)
	jne .L88
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %edx
	call *%eax
	addl $4,%esp
.L85:
	pushl $MM_QCompiler+52
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movb 4(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L86
.L88:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 QCompiler__ExprList,.Lfe13-QCompiler__ExprList
	.align 16
	.type	 QCompiler__Expression,@function
QCompiler__Expression:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E1
	addl $4,%esp
	jmp .L90
	.align 16
.L91:
	pushl %eax
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E1
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $0
	pushl $9
	pushl %edx
	call *%eax
	addl $24,%esp
.L90:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $12,%eax
	je .L91
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 QCompiler__Expression,.Lfe14-QCompiler__Expression
	.align 16
	.type	 QCompiler__E1,@function
QCompiler__E1:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E2
	addl $4,%esp
	jmp .L94
	.align 16
.L95:
	pushl %eax
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E2
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $0
	pushl $8
	pushl %edx
	call *%eax
	addl $24,%esp
.L94:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $2,%eax
	je .L95
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 QCompiler__E1,.Lfe15-QCompiler__E1
	.align 16
	.type	 QCompiler__E2,@function
QCompiler__E2:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
.L98:
	movl $MM_QCompiler+476,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %ebx,%ebx
	jmp .L99
	.align 16
.L100:
	pushl %eax
	pushl %edx
	call QCompiler__Match
	incl %ebx
	addl $8,%esp
.L99:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $11,%eax
	je .L100
	pushl %edx
	call QCompiler__E3
	addl $4,%esp
	testb $1,%bl
	je .L103
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $0
	pushl $10
	pushl %edx
	call *%eax
.L103:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 QCompiler__E2,.Lfe16-QCompiler__E2
	.align 16
	.type	 QCompiler__E3,@function
QCompiler__E3:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E4
	addl $4,%esp
	jmp .L105
	.align 16
.L106:
	pushl %eax
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E4
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $0
	pushl $6
	pushl %edx
	call *%eax
	addl $24,%esp
.L105:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $3,%eax
	je .L106
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 QCompiler__E3,.Lfe17-QCompiler__E3
	.align 16
	.type	 QCompiler__E4,@function
QCompiler__E4:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E5
	addl $4,%esp
	jmp .L109
	.align 16
.L110:
	pushl %eax
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E5
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $0
	pushl $7
	pushl %edx
	call *%eax
	addl $24,%esp
.L109:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $17,%eax
	je .L110
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 QCompiler__E4,.Lfe18-QCompiler__E4
	.align 16
	.type	 QCompiler__E5,@function
QCompiler__E5:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__E6
	addl $4,%esp
.L113:
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movzbl 4(%eax),%esi
	cmpl $29,%esi
	jne .L114
	pushl %esi
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	pushl $30
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%ebx
	pushl $0
	pushl $11
	pushl %edx
	call *%ebx
	addl $32,%esp
	jmp .L113
	.align 16
.L114:
	cmpl $27,%esi
	jne .L116
	pushl %esi
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	pushl $28
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%edx
	pushl $0
	pushl $12
	pushl %ebx
	call *%edx
	addl $32,%esp
	jmp .L113
	.align 16
.L116:
	cmpl $18,%esi
	jne .L112
	movl 4(%edx),%edx
	movl (%edx),%eax
	movl 4(%eax),%ebx
	pushl $0
	pushl $32
	pushl %edx
	call *%ebx
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	pushl %eax
	call QCompiler__ExprList
	movl %eax,%ecx
	movl (%ebx),%eax
	movl 4(%eax),%edx
	pushl %ecx
	pushl $34
	pushl %ebx
	call *%edx
	addl $36,%esp
	pushl $19
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	addl $8,%esp
	jmp .L113
	.align 16
.L112:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 QCompiler__E5,.Lfe19-QCompiler__E5
.section	.rodata
	.align 4
	.type	 L_6.2,@object
	.size	 L_6.2,72
L_6.2:
	.long .L121
	.long .L120
	.long .L122
	.long .L120
	.long .L120
	.long .L120
	.long .L120
	.long .L120
	.long .L120
	.long .L120
	.long .L120
	.long .L123
	.long .L120
	.long .L124
	.long .L120
	.long .L125
	.long .L126
	.long .L127
.text
	.align 16
	.type	 QCompiler__E6,@function
QCompiler__E6:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movb 4(%eax),%al
	andl $255,%eax
	leal -16(%eax),%edx
	testl %edx,%edx
	jl .L120
	jmp *L_6.2(,%edx,4)
	.align 16
.L126:
	movl 8(%ebp),%edx
	movl 4(%edx),%esi
	movl (%esi),%eax
	movl 4(%eax),%ebx
	movl (%edx),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl $24
	pushl %esi
	call *%ebx
	movl 8(%ebp),%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	movl 8(%eax),%esi
	pushl %ebx
	call *%esi
	jmp .L119
	.align 16
.L121:
	pushl $16
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	pushl %eax
	call QCompiler__MatchName
	movl %eax,%edx
	movl (%esi),%eax
	movl 4(%eax),%ebx
	pushl %edx
	pushl $4
	pushl %esi
	call *%ebx
	jmp .L119
	.align 16
.L127:
	movl 8(%ebp),%edx
	movl 4(%edx),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%esi
	movl (%edx),%eax
	movl 12(%eax),%eax
	pushl %eax
	pushl $1
	jmp .L129
	.align 16
.L125:
	movl 8(%ebp),%edx
	movl 4(%edx),%ebx
	movl (%ebx),%eax
	movl 4(%eax),%esi
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %eax
	pushl $0
.L129:
	pushl %ebx
	call *%esi
	movl 8(%ebp),%eax
	movl (%eax),%esi
	movl (%esi),%eax
	movl 8(%eax),%ebx
	pushl %esi
	call *%ebx
	jmp .L119
	.align 16
.L122:
	pushl $18
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	pushl $19
	jmp .L130
	.align 16
.L123:
	pushl $27
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%ebx
	pushl %eax
	call QCompiler__ExprList
	movl %eax,%edx
	movl (%ebx),%eax
	movl 4(%eax),%esi
	pushl %edx
	pushl $2
	pushl %ebx
	call *%esi
	pushl $28
	jmp .L130
	.align 16
.L124:
	pushl $29
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	movl 8(%ebp),%eax
	movl 4(%eax),%esi
	pushl %eax
	call QCompiler__KeyValueList
	movl %eax,%edx
	movl (%esi),%eax
	movl 4(%eax),%ebx
	pushl %edx
	pushl $3
	pushl %esi
	call *%ebx
	pushl $30
.L130:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Match
	jmp .L119
	.align 16
.L120:
	pushl $MM_QCompiler+488
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Err
.L119:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 QCompiler__E6,.Lfe20-QCompiler__E6
	.align 16
	.type	 QCompiler__KeyValueList,@function
QCompiler__KeyValueList:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	xorl %ebx,%ebx
	jmp .L132
	.align 16
.L133:
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	movl 8(%ebp),%edx
	incl %ebx
	movl (%edx),%eax
	addl $4,%esp
	movb 4(%eax),%al
	andl $255,%eax
	cmpl $22,%eax
	jne .L134
	pushl %eax
	pushl %edx
	call QCompiler__Match
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Expression
	jmp .L138
	.align 16
.L134:
	movl 4(%edx),%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl $0
	pushl $0
	pushl %edx
	call *%ecx
.L138:
	addl $12,%esp
	movl 8(%ebp),%eax
	movl (%eax),%eax
	incl %ebx
	cmpb $21,4(%eax)
	jne .L137
	movl %eax,%ecx
	movl (%ecx),%eax
	movl 8(%eax),%edx
	pushl %ecx
	call *%edx
	addl $4,%esp
.L132:
	pushl $MM_QCompiler+52
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movb 4(%eax),%al
	andl $255,%eax
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L133
.L137:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 QCompiler__KeyValueList,.Lfe21-QCompiler__KeyValueList
	.align 16
	.type	 QCompiler__MatchName,@function
QCompiler__MatchName:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 12(%eax),%ebx
	pushl $32
	pushl %edx
	call QCompiler__Match
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 QCompiler__MatchName,.Lfe22-QCompiler__MatchName
	.align 16
	.type	 QCompiler__Match,@function
QCompiler__Match:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl (%eax),%eax
	xorl %ecx,%ecx
	movb 12(%ebp),%cl
	movb 4(%eax),%al
	andl $255,%eax
	cmpl %ecx,%eax
	je .L141
	pushl $0
	pushl $0
	movl $MI_QToken+44,%edx
	pushl $0
	movl (%edx,%eax,4),%eax
	pushl %eax
	movl (%edx,%ecx,4),%eax
	pushl %eax
	pushl $MM_QCompiler+520
	movl MI_Fmt+76,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl 8(%ebp),%eax
	pushl %eax
	call QCompiler__Err
	addl $32,%esp
.L141:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 QCompiler__Match,.Lfe23-QCompiler__Match
	.align 16
	.type	 QCompiler__Err,@function
QCompiler__Err:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 8(%eax),%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	movl %eax,%esi
	pushl $10
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl %ebx
	pushl %eax
	pushl %esi
	pushl $MM_QCompiler+556
	movl MI_Fmt+76,%eax
	call *%eax
	addl $36,%esp
	pushl %eax
	pushl $MI_Quake+44
	movl MI_RTHooks+52,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 QCompiler__Err,.Lfe24-QCompiler__Err
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QCompiler
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe25:
	.size	 _m3_fault,.Lfe25-_m3_fault
.globl MM_QCompiler
.data
	.align 4
	.type	 MM_QCompiler,@object
	.size	 MM_QCompiler,1244
MM_QCompiler:
	.long MM_QCompiler+1104
	.zero	4
	.long MM_QCompiler+224
	.zero	8
	.long MM_QCompiler+812
	.zero	20
	.long 33612992
	.long 1
	.long -1408956416
	.long 3
	.long QCompiler__Block
	.long QCompiler__Statement
	.long QCompiler__Decl
	.long QCompiler__ForeachStmt
	.long QCompiler__IfStmt
	.long QCompiler__ReturnStmt
	.long QCompiler__RedirectionStmt
	.long QCompiler__ProcDeclStmt
	.long QCompiler__EmitDefine
	.long QCompiler__AssignOrProcCallStmt
	.long QCompiler__ExprList
	.long QCompiler__Expression
	.long QCompiler__E1
	.long QCompiler__E2
	.long QCompiler__E3
	.long QCompiler__E4
	.long QCompiler__E5
	.long QCompiler__E6
	.long QCompiler__KeyValueList
	.long QCompiler__MatchName
	.long QCompiler__Match
	.long QCompiler__Err
	.long QCompiler__CompileFile
.byte 20
.byte 21
.byte 22
.byte 23
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_QCompiler+176
	.long 17
	.ascii	"unable to open \""
	.zero	4
	.long 2
	.long MM_QCompiler+208
	.long 14
	.ascii	"\" for reading"
	.zero	3
	.long MM_QCompiler+232
	.long -1601681157
	.zero	4
	.long -2096627300
	.long 2
	.long MM_QCompiler+252
	.long 63
	.ascii	"\"proc\", \"func\", or a name expected after \"readonly\" or"
	.ascii	" \"local\""
	.zero	2
	.long 2
	.long MM_QCompiler+328
	.long 36
	.ascii	"\"end\" or \"else\" expected after \"if\""
	.zero	1
	.long 2
	.long MM_QCompiler+376
	.long 27
	.ascii	"too many formal parameters"
	.zero	2
	.long 2
	.long MM_QCompiler+416
	.long 57
	.ascii	"\"local\" and \"readonly\" not valid before a procedure call"
	.zero	4
	.long MI_Quake+44
	.zero	4
	.long 2
	.long MM_QCompiler+496
	.long 20
	.ascii	"expected expression"
	.zero	1
	.long 2
	.long MM_QCompiler+528
	.long 24
	.ascii	"missing: %s (found: %s)"
	.zero	1
	.long 2
	.long MM_QCompiler+564
	.long 30
	.ascii	"%s, line %s: syntax error: %s"
	.zero	3
	.ascii	"Err"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"MatchName"
	.zero	1
	.ascii	"KeyValueList"
	.zero	1
	.ascii	"E6"
	.zero	1
	.ascii	"E5"
	.zero	1
	.ascii	"E4"
	.zero	1
	.ascii	"E3"
	.zero	1
	.ascii	"E2"
	.zero	1
	.ascii	"E1"
	.zero	1
	.ascii	"Expression"
	.zero	1
	.ascii	"ExprList"
	.zero	1
	.ascii	"AssignOrProcCallStmt"
	.zero	1
	.ascii	"EmitDefine"
	.zero	1
	.ascii	"ProcDeclStmt"
	.zero	1
	.ascii	"RedirectionStmt"
	.zero	1
	.ascii	"ReturnStmt"
	.zero	1
	.ascii	"IfStmt"
	.zero	1
	.ascii	"ForeachStmt"
	.zero	1
	.ascii	"Decl"
	.zero	1
	.ascii	"Statement"
	.zero	1
	.ascii	"Block"
	.zero	1
	.ascii	"CompileFile"
	.zero	1
	.ascii	"M_QCompiler_LINE_57"
	.zero	2
	.long QCompiler__Err
	.long MM_QCompiler+596
	.zero	4
	.long QCompiler__Match
	.long MM_QCompiler+600
	.zero	4
	.long QCompiler__MatchName
	.long MM_QCompiler+606
	.zero	4
	.long QCompiler__KeyValueList
	.long MM_QCompiler+616
	.zero	4
	.long QCompiler__E6
	.long MM_QCompiler+629
	.zero	4
	.long QCompiler__E5
	.long MM_QCompiler+632
	.zero	4
	.long QCompiler__E4
	.long MM_QCompiler+635
	.zero	4
	.long QCompiler__E3
	.long MM_QCompiler+638
	.zero	4
	.long QCompiler__E2
	.long MM_QCompiler+641
	.zero	4
	.long QCompiler__E1
	.long MM_QCompiler+644
	.zero	4
	.long QCompiler__Expression
	.long MM_QCompiler+647
	.zero	4
	.long QCompiler__ExprList
	.long MM_QCompiler+658
	.zero	4
	.long QCompiler__AssignOrProcCallStmt
	.long MM_QCompiler+667
	.zero	4
	.long QCompiler__EmitDefine
	.long MM_QCompiler+688
	.zero	4
	.long QCompiler__ProcDeclStmt
	.long MM_QCompiler+699
	.zero	4
	.long QCompiler__RedirectionStmt
	.long MM_QCompiler+712
	.zero	4
	.long QCompiler__ReturnStmt
	.long MM_QCompiler+728
	.zero	4
	.long QCompiler__IfStmt
	.long MM_QCompiler+739
	.zero	4
	.long QCompiler__ForeachStmt
	.long MM_QCompiler+746
	.zero	4
	.long QCompiler__Decl
	.long MM_QCompiler+758
	.zero	4
	.long QCompiler__Statement
	.long MM_QCompiler+763
	.zero	4
	.long QCompiler__Block
	.long MM_QCompiler+773
	.zero	4
	.long QCompiler__CompileFile
	.long MM_QCompiler+779
	.long MI_QCompiler+44
	.long M_QCompiler_LINE_57.0
	.long MM_QCompiler+791
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3qua"
	.ascii	"ke/src/QCompiler.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"