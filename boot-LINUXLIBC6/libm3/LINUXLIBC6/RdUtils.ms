	.file	"RdUtils.mc"
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
	.type	 RdUtils__Find,@function
RdUtils__Find:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%ecx
	testl %edx,%edx
	jne .L2
	pushl $324
	call _m3_fault
	.align 16
.L2:
	movl 4(%edx),%eax
	decl %eax
	jns .L4
	pushl $321
	call _m3_fault
	.align 16
.L4:
	movl %eax,-4(%ebp)
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L5
	pushl $321
	call _m3_fault
	.align 16
.L5:
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	pushl %ecx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RdUtils__FindString
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RdUtils__Find,.Lfe1-RdUtils__Find
	.align 16
	.type	 RdUtils__FindString,@function
RdUtils__FindString:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%edi
.L7:
	movl $MM_RdUtils+64,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%esi
	movl 12(%ebp),%eax
	movl %esi,RTThread__handlerStack
	movl 4(%eax),%eax
	movl %eax,-16(%ebp)
	testl %eax,%eax
	jne .L9
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Rd+120,%eax
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
	jmp .L6
	.align 16
.L9:
	movl 12(%ebp),%eax
	cmpl $0,4(%eax)
	jne .L10
	pushl $610
	call _m3_fault
	.align 16
.L10:
	pushl %edi
	movl (%eax),%eax
	movb (%eax),%al
	andl $255,%eax
	pushl %eax
	movl 8(%ebp),%esi
	pushl %esi
	call RdUtils__FindChar
	movl %eax,%edx
	addl $12,%esp
	cmpl $-1,%edx
	je .L28
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Rd+120,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl $1,-36(%ebp)
	addl $4,%esp
.L12:
	movl -16(%ebp),%esi
	cmpl %esi,-36(%ebp)
	jne .L13
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -20(%ebp),%eax
	decl %eax
	jmp .L6
	.align 16
.L13:
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L14
.L28:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $-1,%eax
	jmp .L6
	.align 16
.L14:
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%ebx
	movb %bl,%al
	movl 12(%ebp),%edx
	addl $4,%esp
	movl -36(%ebp),%esi
	cmpl %esi,4(%edx)
	ja .L15
	pushl $786
	call _m3_fault
	.align 16
.L15:
	movl -36(%ebp),%esi
	addl (%edx),%esi
	movl %esi,-24(%ebp)
	xorl %edx,%edx
	movb %al,%dl
	cmpb %al,(%esi)
	je .L16
	testl %edi,%edi
	je .L19
	movl %edi,%eax
	cmpl $-1,(%edi)
	jne .L20
	movl 8(%edi),%esi
	movl %esi,-28(%ebp)
	movl 4(%edi),%eax
.L20:
	pushl %edx
	movl -28(%ebp),%ecx
	call *%eax
	movl %eax,%ebx
	movl %edi,%edx
	addl $4,%esp
	cmpl $-1,(%edx)
	jne .L22
	movl 8(%edx),%esi
	movl %esi,-32(%ebp)
	movl 4(%edx),%edx
.L22:
	movl -24(%ebp),%esi
	xorl %eax,%eax
	movb (%esi),%al
	pushl %eax
	movl -32(%ebp),%ecx
	call *%edx
	addl $4,%esp
	cmpl %eax,%ebx
	jne .L19
.L16:
	incl -36(%ebp)
	jmp .L12
	.align 16
.L19:
	movl -20(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Rd+112,%eax
	call *%eax
	addl $8,%esp
	jmp .L9
	.align 16
.L27:
.L6:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RdUtils__FindString,.Lfe2-RdUtils__FindString
	.align 16
	.type	 RdUtils__FindChar,@function
RdUtils__FindChar:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L30:
	movl $MM_RdUtils+64,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	cmpl $0,16(%ebp)
	je .L36
	movl 16(%ebp),%edx
	cmpl $-1,(%edx)
	jne .L34
	movl 8(%edx),%ecx
	movl 4(%edx),%edx
.L34:
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	call *%edx
	movl %eax,%edx
	movb %dl,-16(%ebp)
	addl $4,%esp
.L36:
	pushl %esi
	movl MI_Rd+84,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L37
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $-1,%eax
	jmp .L29
	.align 16
.L37:
	pushl %esi
	movl MI_Rd+80,%eax
	call *%eax
	movl %eax,%edx
	movb %dl,%al
	xorl %ecx,%ecx
	movb %al,%cl
	addl $4,%esp
	cmpb %al,12(%ebp)
	je .L38
	cmpl $0,16(%ebp)
	je .L36
	movl 16(%ebp),%edx
	cmpl $-1,(%edx)
	jne .L42
	movl 8(%edx),%edi
	movl 4(%edx),%edx
.L42:
	pushl %ecx
	movl %edi,%ecx
	call *%edx
	movl %eax,%edx
	xorl %eax,%eax
	movb -16(%ebp),%al
	addl $4,%esp
	cmpl %eax,%edx
	jne .L36
.L38:
	pushl %esi
	movl MI_Rd+120,%eax
	call *%eax
	movl %eax,%edx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -1(%edx),%eax
.L45:
.L29:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RdUtils__FindChar,.Lfe3-RdUtils__FindChar
	.align 16
	.type	 RdUtils__ToUpperCaseASCII,@function
RdUtils__ToUpperCaseASCII:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	pushl $MI_ASCII+44
	xorl %ebx,%ebx
	movb 8(%ebp),%bl
	pushl %ebx
	call set_member
	testl %eax,%eax
	jne .L47
	movl %ebx,%eax
	jmp .L48
	.align 16
.L47:
	xorl %eax,%eax
	movb MI_ASCII+396(%ebx),%al
.L48:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RdUtils__ToUpperCaseASCII,.Lfe4-RdUtils__ToUpperCaseASCII
	.align 16
	.type	 RdUtils__FailureText,@function
RdUtils__FailureText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L50:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %ebx,%ebx
	jne .L51
	movl %eax,RTThread__handlerStack
	movl $MM_RdUtils+80,%eax
	jmp .L49
	.align 16
.L51:
	cmpl $0,8(%ebx)
	jne .L52
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Atom+48,%eax
	call *%eax
	movl %eax,%ecx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ecx,%eax
	jmp .L49
	.align 16
.L52:
	movl MM_RdUtils+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_RdUtils+100,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %ecx
	call *%eax
	movl %eax,%edx
	movl %edx,%esi
.L57:
	addl $8,%esp
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Atom+48,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl %esi
	movl MI_Wr+68,%eax
	call *%eax
	movl 8(%ebx),%ebx
	addl $12,%esp
	testl %ebx,%ebx
	je .L55
	pushl $58
	pushl %esi
	movl MI_Wr+64,%eax
	call *%eax
	jmp .L57
	.align 16
.L55:
	pushl %esi
	movl MI_TextWr+152,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L56:
.L49:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RdUtils__FailureText,.Lfe5-RdUtils__FailureText
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RdUtils
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_RdUtils
.data
	.align 4
	.type	 MM_RdUtils,@object
	.size	 MM_RdUtils,376
MM_RdUtils:
	.long MM_RdUtils+228
	.zero	4
	.long MM_RdUtils+92
	.zero	8
	.long MM_RdUtils+164
	.zero	20
	.long RdUtils__Find
	.long RdUtils__FindString
	.long RdUtils__FindChar
	.long RdUtils__FailureText
	.long RdUtils__ToUpperCaseASCII
	.long MI_Rd+64
	.long MI_Thread+184
	.zero	4
	.long 2
	.long MM_RdUtils+88
	.long 4
	.ascii	"NIL"
	.zero	1
	.long MM_RdUtils+100
	.long 1937927358
	.zero	4
	.long 1937927357
	.ascii	"FailureText"
	.zero	1
	.ascii	"ToUpperCaseASCII"
	.zero	1
	.ascii	"FindChar"
	.zero	1
	.ascii	"FindString"
	.zero	1
	.ascii	"Find"
	.zero	3
	.long RdUtils__FailureText
	.long MM_RdUtils+108
	.long MI_RdUtils+56
	.long RdUtils__ToUpperCaseASCII
	.long MM_RdUtils+120
	.long MI_RdUtils+60
	.long RdUtils__FindChar
	.long MM_RdUtils+137
	.long MI_RdUtils+52
	.long RdUtils__FindString
	.long MM_RdUtils+146
	.long MI_RdUtils+48
	.long RdUtils__Find
	.long MM_RdUtils+157
	.long MI_RdUtils+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/RdUtils.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
