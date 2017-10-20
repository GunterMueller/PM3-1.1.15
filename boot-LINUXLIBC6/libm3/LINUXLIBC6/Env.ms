	.file	"Env.mc"
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
	.type	 Env__Get,@function
Env__Get:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	pushl %eax
	call getenv
	addl $8,%esp
	testl %eax,%eax
	je .L2
	pushl %eax
	movl MI_M3toC+60,%eax
	call *%eax
.L2:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Env__Get,.Lfe1-Env__Get
	.align 16
	.type	 Env__GetNth,@function
Env__GetNth:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L5:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	xorl %ebx,%ebx
	movl %ebx,%esi
	cmpl %edi,MI_Env+48
	jg .L6
	pushl %ebx
	pushl $MM_Env+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L6:
	pushl %edi
	movl MI_RTArgs+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	jmp .L7
	.align 16
.L8:
	incl %esi
.L7:
	pushl %esi
	pushl %ebx
	movl MI_Text+52,%eax
	call *%eax
	addl $8,%esp
	cmpl $61,%eax
	jne .L8
	pushl %esi
	pushl $0
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl %eax,(%edx)
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	decl %eax
	subl %esi,%eax
	addl $16,%esp
	testl %eax,%eax
	jge .L10
	pushl $609
	call _m3_fault
	.align 16
.L10:
	pushl %eax
	leal 1(%esi),%eax
	pushl %eax
	pushl %ebx
	movl MI_Text+64,%eax
	call *%eax
	movl 16(%ebp),%edx
	movl %eax,(%edx)
.L11:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Env__GetNth,.Lfe2-Env__GetNth
	.align 16
	.type	 _INITM_Env,@function
_INITM_Env:
	pushl %ebp
	movl MI_RTArgs+52,%eax
	movl %esp,%ebp
	call *%eax
	movl %eax,MI_Env+48
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 _INITM_Env,.Lfe3-_INITM_Env
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Env
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_Env
.data
	.align 4
	.type	 MM_Env,@object
	.size	 MM_Env,276
MM_Env:
	.long MM_Env+136
	.zero	16
	.long MM_Env+96
	.zero	16
	.long _INITM_Env
	.long MM_Env+48
	.ascii	"Env.FatalError"
	.zero	2
	.long Env__Get
	.long Env__GetNth
	.ascii	"_INITM_Env"
	.zero	1
	.ascii	"GetNth"
	.zero	1
	.ascii	"Get"
	.zero	3
	.long _INITM_Env
	.long MM_Env+72
	.zero	4
	.long Env__GetNth
	.long MM_Env+83
	.long MI_Env+52
	.long Env__Get
	.long MM_Env+90
	.long MI_Env+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/params/Env.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
