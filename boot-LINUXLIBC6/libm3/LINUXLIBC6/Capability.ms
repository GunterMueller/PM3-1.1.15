	.file	"Capability.mc"
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
	.type	 Capability__New,@function
Capability__New:
	pushl %ebp
	movl %esp,%ebp
	subl $76,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L2:
	movl $5,-52(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-56(%ebp)
	leal -56(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_TimeStamp+76,%eax
	call *%eax
	movl MM_Capability+172,%eax
	movl %eax,-60(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $8,%esp
.L3:
	movl $6,-64(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-68(%ebp)
	leal -68(%ebp),%ebx
	movl MM_Capability+172,%eax
	movl %ebx,RTThread__handlerStack
	movl 12(%eax),%esi
	testl %esi,%esi
	jne .L4
	movl MM_Capability+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%ecx
	pushl %esi
	pushl %edx
	call *%ecx
	movl MM_Capability+172,%edx
	addl $12,%esp
	movl %eax,12(%edx)
.L4:
	movl MM_Capability+172,%eax
	movl 12(%eax),%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	pushl %edx
	call *%eax
	movl %eax,-76(%ebp)
	movl MM_Capability+172,%eax
	movl 12(%eax),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%edx
	pushl $2147483647
	pushl $-2147483648
	pushl %ecx
	call *%edx
	movl %eax,%edx
	movl %edx,-72(%ebp)
	movl -76(%ebp),%eax
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	addl $24,%esp
.L8:
	movl -68(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -60(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl 8(%ebp),%edi
	leal -24(%ebp),%esi
	cld
	movl $6,%ecx
	rep
	movsl
	movl -56(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L9:
	leal -88(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Capability__New,.Lfe1-Capability__New
	.align 16
	.type	 Capability__Equal,@function
Capability__Equal:
	pushl %ebp
	movl %esp,%ebp
	movl $5,%ecx
.L11:
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	movl (%edx,%ecx,4),%edx
	cmpl %edx,(%eax,%ecx,4)
	jne .L12
	decl %ecx
	jns .L11
	movl $1,%eax
	jmp .L14
	.align 16
.L12:
	xorl %eax,%eax
.L14:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Capability__Equal,.Lfe2-Capability__Equal
	.align 16
	.type	 Capability__Hash,@function
Capability__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	subl $8,%esp
	movl 16(%eax),%edx
	movl %edx,-8(%ebp)
	movl 20(%eax),%eax
	movl %eax,-4(%ebp)
	cmpb $1,MI_Swap+44
	je .L16
	movl %edx,%eax
	jmp .L17
	.align 16
.L16:
	pushl %edx
	movl MI_Swap+48,%eax
	call *%eax
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Capability__Hash,.Lfe3-Capability__Hash
	.align 16
	.type	 _INITM_Capability,@function
_INITM_Capability:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Capability+172
	movl MM_Capability+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_Capability+172
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 _INITM_Capability,.Lfe4-_INITM_Capability
.globl MM_Capability
.data
	.align 4
	.type	 MM_Capability,@object
	.size	 MM_Capability,460
MM_Capability:
	.long MM_Capability+296
	.long MM_Capability+68
	.long MM_Capability+188
	.zero	8
	.long MM_Capability+240
	.zero	4
	.long MM_Capability+292
	.long MM_Capability+292
	.zero	4
	.long _INITM_Capability
	.long MM_Capability+48
	.ascii	"Capability.Failure"
	.zero	10
	.long -419161979
.byte 145
.byte 88
.byte 102
.byte 227
.byte 20
.byte 64
.byte 98
.byte 4
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Capability+446
	.long MM_Capability+448
	.long MM_Capability+450
	.zero	8
	.long 356643957
	.zero	28
	.long Capability__New
	.long Capability__Equal
	.long Capability__Hash
	.long MM_Capability+196
	.long 1893541911
	.zero	4
	.long -419161979
	.ascii	"_INITM_Capability"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"New"
	.zero	4
	.long _INITM_Capability
	.long MM_Capability+204
	.zero	4
	.long Capability__Hash
	.long MM_Capability+222
	.long MI_Capability+52
	.long Capability__Equal
	.long MM_Capability+227
	.long MI_Capability+48
	.long Capability__New
	.long MM_Capability+233
	.long MI_Capability+44
	.zero	4
.byte 42
.byte 172
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/uid/Common/Capability.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 243
.byte 147
.byte 65
.byte 72
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
