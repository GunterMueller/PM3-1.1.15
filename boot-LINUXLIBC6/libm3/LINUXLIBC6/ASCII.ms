	.file	"ASCII.mc"
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
	.type	 _INITM_ASCII,@function
_INITM_ASCII:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	xorl %ecx,%ecx
	pushl %ebx
.L2:
	movb %cl,%dl
	xorl %eax,%eax
	movb %dl,%al
	incl %ecx
	movb %dl,MI_ASCII+396(%eax)
	cmpl $255,%ecx
	jle .L2
	movl $97,%edx
.L5:
	movb %dl,%al
	andl $255,%eax
	leal -32(%eax),%ecx
	cmpl $255,%ecx
	jbe .L6
	pushl $289
	call _m3_fault
	.align 16
.L6:
	movb %cl,MI_ASCII+396(%eax)
	incl %edx
	cmpl $122,%edx
	jle .L5
	xorl %ecx,%ecx
.L9:
	movb %cl,%dl
	xorl %eax,%eax
	movb %dl,%al
	incl %ecx
	movb %dl,MI_ASCII+652(%eax)
	cmpl $255,%ecx
	jle .L9
	movl $65,%edx
.L12:
	movb %dl,%al
	andl $255,%eax
	leal 32(%eax),%ecx
	cmpl $255,%ecx
	jbe .L13
	pushl $369
	call _m3_fault
	.align 16
.L13:
	movb %cl,MI_ASCII+652(%eax)
	incl %edx
	cmpl $90,%edx
	jle .L12
	xorl %esi,%esi
.L16:
	movl %esi,%ebx
	movb %bl,-4(%ebp)
	pushl $MI_ASCII+332
	movl %ebx,%edi
	andl $255,%edi
	pushl %edi
	call set_member
	addl $8,%esp
	testl %eax,%eax
	je .L17
	movl %edi,%eax
	andl $31,%eax
	cmpl $255,%eax
	jbe .L18
	pushl $449
	call _m3_fault
	.align 16
.L18:
	movb %al,MI_ASCII+908(%edi)
	jmp .L19
	.align 16
.L17:
	movb -4(%ebp),%bl
	movb %bl,MI_ASCII+908(%edi)
.L19:
	incl %esi
	cmpl $255,%esi
	jle .L16
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 _INITM_ASCII,.Lfe1-_INITM_ASCII
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ASCII
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe2:
	.size	 _m3_fault,.Lfe2-_m3_fault
.globl MM_ASCII
.data
	.align 4
	.type	 MM_ASCII,@object
	.size	 MM_ASCII,216
MM_ASCII:
	.long MM_ASCII+76
	.zero	16
	.long MM_ASCII+60
	.zero	16
	.long _INITM_ASCII
	.ascii	"_INITM_ASCII"
	.zero	4
	.long _INITM_ASCII
	.long MM_ASCII+44
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/types/ASCII.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
