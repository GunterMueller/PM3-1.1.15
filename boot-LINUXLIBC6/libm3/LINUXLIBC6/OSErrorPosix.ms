	.file	"OSErrorPosix.mc"
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
	.type	 OSErrorPosix__NewAtom,@function
OSErrorPosix__NewAtom:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $10
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_OSErrorPosix+112
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %eax
	movl MI_Atom+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 OSErrorPosix__NewAtom,.Lfe1-OSErrorPosix__NewAtom
	.align 16
	.type	 OSErrorPosix__ErrnoAtom,@function
OSErrorPosix__ErrnoAtom:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpl $122,%ebx
	jg .L3
	movl $L_1,%esi
	cmpl $0,(%esi,%ebx,4)
	jne .L7
	pushl %ebx
	call OSErrorPosix__NewAtom
	movl %eax,L_1(,%ebx,4)
.L7:
	movl (%esi,%ebx,4),%eax
	jmp .L8
	.align 16
.L3:
	pushl %ebx
	call OSErrorPosix__NewAtom
.L8:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 OSErrorPosix__ErrnoAtom,.Lfe2-OSErrorPosix__ErrnoAtom
	.align 16
	.type	 OSErrorPosix__AtomToErrno,@function
OSErrorPosix__AtomToErrno:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
.L10:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl %edx
	movl MI_Atom+48,%eax
	call *%eax
	pushl $6
	xorl %ebx,%ebx
	pushl %ebx
	movl %eax,%edi
	pushl %edi
	movl MI_Text+64,%eax
	call *%eax
	pushl $MM_OSErrorPosix+112
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $24,%esp
	testl %eax,%eax
	jne .L11
	pushl %ebx
	pushl $MM_OSErrorPosix+52
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L11:
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl $6,%esi
	decl %eax
	movl %eax,-12(%ebp)
	addl $4,%esp
	jmp .L12
	.align 16
.L13:
	pushl %esi
	pushl %edi
	movl MI_Text+52,%eax
	call *%eax
	xorl %edx,%edx
	movb %al,%dl
	addl $8,%esp
	cmpl $47,%edx
	jle .L14
	cmpl $57,%edx
	jg .L14
	leal (%ebx,%ebx,4),%eax
	leal -48(%edx,%eax,2),%ebx
	jmp .L15
	.align 16
.L14:
	pushl $0
	pushl $MM_OSErrorPosix+52
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L15:
	incl %esi
.L12:
	cmpl %esi,-12(%ebp)
	jge .L13
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	testl %ebx,%ebx
	jge .L17
	pushl $721
	call _m3_fault
	.align 16
.L17:
	movl %ebx,%eax
.L18:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 OSErrorPosix__AtomToErrno,.Lfe3-OSErrorPosix__AtomToErrno
	.align 16
	.type	 OSErrorPosix__Raise0,@function
OSErrorPosix__Raise0:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_OSErrorPosix+128,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %esi,%esi
	jge .L20
	pushl $801
	call _m3_fault
	.align 16
.L20:
	pushl %esi
	call OSErrorPosix__ErrnoAtom
	movl %eax,4(%ebx)
	movl $0,8(%ebx)
	pushl %ebx
	pushl $MI_OSError+44
	movl MI_RTHooks+52,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 OSErrorPosix__Raise0,.Lfe4-OSErrorPosix__Raise0
	.align 16
	.type	 OSErrorPosix__Raise,@function
OSErrorPosix__Raise:
	pushl %ebp
	movl %esp,%ebp
	movl errno,%eax
	pushl %eax
	call OSErrorPosix__Raise0
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 OSErrorPosix__Raise,.Lfe5-OSErrorPosix__Raise
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_OSErrorPosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_OSErrorPosix
.data
	.align 4
	.type	 MM_OSErrorPosix,@object
	.size	 MM_OSErrorPosix,404
MM_OSErrorPosix:
	.long MM_OSErrorPosix+253
	.zero	4
	.long MM_OSErrorPosix+128
	.zero	8
	.long MM_OSErrorPosix+180
	.zero	4
	.long MM_OSErrorPosix+244
	.long MM_OSErrorPosix+244
	.zero	8
	.long L_1
	.long OSErrorPosix__NewAtom
	.long MM_OSErrorPosix+56
	.ascii	"OSErrorPosix.CheckedRuntimeError"
	.zero	4
	.long OSErrorPosix__ErrnoAtom
	.long OSErrorPosix__Raise
	.long OSErrorPosix__Raise0
	.long OSErrorPosix__AtomToErrno
	.long 2
	.long MM_OSErrorPosix+120
	.long 7
	.ascii	"errno="
	.zero	6
	.long -1388739978
	.ascii	"Raise"
	.zero	1
	.ascii	"Raise0"
	.zero	1
	.ascii	"AtomToErrno"
	.zero	1
	.ascii	"ErrnoAtom"
	.zero	1
	.ascii	"NewAtom"
	.zero	2
	.long OSErrorPosix__Raise
	.long MM_OSErrorPosix+136
	.long MI_OSErrorPosix+48
	.long OSErrorPosix__Raise0
	.long MM_OSErrorPosix+142
	.long MI_OSErrorPosix+52
	.long OSErrorPosix__AtomToErrno
	.long MM_OSErrorPosix+149
	.long MI_OSErrorPosix+56
	.long OSErrorPosix__ErrnoAtom
	.long MM_OSErrorPosix+161
	.long MI_OSErrorPosix+44
	.long OSErrorPosix__NewAtom
	.long MM_OSErrorPosix+171
	.zero	8
.byte 42
.byte 44
.byte 2
.byte 1
.byte 4
.byte 26
.byte 123
.byte 3
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/POSIX/OSErrorPosix.m3"
	.zero	2
	.local	L_1
	.comm	L_1,492,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
