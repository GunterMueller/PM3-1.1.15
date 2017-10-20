	.file	"CIText.mc"
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
	.type	 CIText__Compare,@function
CIText__Compare:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L2
	pushl $212
	call _m3_fault
	.align 16
.L2:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%ebx
	cmpl $1,%ebx
	setle %cl
	movl %ecx,%esi
	cmpl $0,12(%ebp)
	jne .L3
	pushl $228
	call _m3_fault
	.align 16
.L3:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%edx
	cmpl $1,%edx
	setle %al
	movl %esi,%ecx
	testb %cl,%cl
	je .L4
	testb %al,%al
	jne .L22
	jmp .L20
	.align 16
.L4:
	testb %al,%al
	jne .L23
	leal -1(%ebx),%edi
	leal -1(%edx),%esi
	movl %esi,%eax
	cmpl %edi,%esi
	jle .L9
	movl %edi,%eax
.L9:
	xorl %ebx,%ebx
	movl %eax,-4(%ebp)
	jmp .L10
	.align 16
.L11:
	cmpl $0,8(%ebp)
	jne .L12
	pushl $356
	call _m3_fault
	.align 16
.L12:
	movl 8(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L13
	pushl $354
	call _m3_fault
	.align 16
.L13:
	cmpl $0,12(%ebp)
	jne .L14
	pushl $356
	call _m3_fault
	.align 16
.L14:
	movl 12(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L15
	pushl $354
	call _m3_fault
	.align 16
.L15:
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl $MI_ASCII+396,%edx
	movb (%ebx,%eax),%al
	andl $255,%eax
	xorl %ecx,%ecx
	movb (%edx,%eax),%cl
	movl %ecx,-8(%ebp)
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	movl -8(%ebp),%ecx
	movb (%edx,%eax),%al
	andl $255,%eax
	subl %eax,%ecx
	movl %ecx,%eax
	testl %eax,%eax
	jl .L20
	jg .L23
	incl %ebx
.L10:
	cmpl %ebx,-4(%ebp)
	jge .L11
	cmpl %esi,%edi
	jne .L19
.L22:
	xorl %eax,%eax
	jmp .L21
	.align 16
.L19:
	cmpl %esi,%edi
	jl .L20
.L23:
	movl $1,%eax
	jmp .L21
	.align 16
.L20:
	movl $-1,%eax
.L21:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 CIText__Compare,.Lfe1-CIText__Compare
	.align 16
	.type	 CIText__Equal,@function
CIText__Equal:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	xorl %ebx,%ebx
	addl $8,%esp
	cmpl %eax,-4(%ebp)
	jne .L25
	jmp .L26
	.align 16
.L27:
	testl %edi,%edi
	jne .L28
	pushl $724
	call _m3_fault
	.align 16
.L28:
	cmpl %ebx,4(%edi)
	ja .L29
	pushl $722
	call _m3_fault
	.align 16
.L29:
	testl %esi,%esi
	jne .L30
	pushl $724
	call _m3_fault
	.align 16
.L30:
	cmpl %ebx,4(%esi)
	ja .L31
	pushl $722
	call _m3_fault
	.align 16
.L31:
	movl (%edi),%eax
	xorl %ecx,%ecx
	movb (%ebx,%eax),%cl
	movl (%esi),%eax
	xorl %edx,%edx
	movb (%ebx,%eax),%dl
	movb MI_ASCII+396(%ecx),%al
	cmpb %al,MI_ASCII+396(%edx)
	jne .L25
	incl %ebx
.L26:
	cmpl %ebx,-4(%ebp)
	jg .L27
	movl $1,%eax
	jmp .L34
	.align 16
.L25:
	xorl %eax,%eax
.L34:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 CIText__Equal,.Lfe2-CIText__Equal
	.align 16
	.type	 CIText__Hash,@function
CIText__Hash:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-16(%ebp)
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	leal 1(%esi),%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_CIText+56,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jne .L36
	pushl $964
	call _m3_fault
	.align 16
.L36:
	cmpl %esi,4(%ebx)
	ja .L37
	pushl $962
	call _m3_fault
	.align 16
.L37:
	movl (%ebx),%eax
	movl -16(%ebp),%edx
	movb $0,(%edx,%eax)
	testl %edi,%edi
	jne .L38
	pushl $980
	call _m3_fault
	.align 16
.L38:
	xorl %ecx,%ecx
	movl 4(%edi),%esi
	decl %esi
	jmp .L39
	.align 16
.L40:
	testl %ebx,%ebx
	jne .L41
	pushl $996
	call _m3_fault
	.align 16
.L41:
	cmpl %ecx,4(%ebx)
	ja .L42
	pushl $994
	call _m3_fault
	.align 16
.L42:
	testl %edi,%edi
	jne .L43
	pushl $996
	call _m3_fault
	.align 16
.L43:
	cmpl %ecx,4(%edi)
	ja .L44
	pushl $994
	call _m3_fault
	.align 16
.L44:
	movl (%edi),%eax
	movb (%ecx,%eax),%al
	andl $255,%eax
	movl (%ebx),%edx
	movb MI_ASCII+396(%eax),%al
	movb %al,(%ecx,%edx)
	incl %ecx
.L39:
	cmpl %esi,%ecx
	jle .L40
	pushl %ebx
	movl MI_Text+80,%eax
	call *%eax
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 CIText__Hash,.Lfe3-CIText__Hash
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_CIText
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_CIText
.data
	.align 4
	.type	 MM_CIText,@object
	.size	 MM_CIText,268
MM_CIText:
	.long MM_CIText+124
	.zero	4
	.long MM_CIText+56
	.zero	8
	.long MM_CIText+84
	.zero	20
	.long CIText__Compare
	.long CIText__Equal
	.long CIText__Hash
	.zero	4
	.long 1358456180
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Compare"
	.zero	2
	.long CIText__Hash
	.long MM_CIText+64
	.long MI_CIText+52
	.long CIText__Equal
	.long MM_CIText+69
	.long MI_CIText+48
	.long CIText__Compare
	.long MM_CIText+75
	.long MI_CIText+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/CIText.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
