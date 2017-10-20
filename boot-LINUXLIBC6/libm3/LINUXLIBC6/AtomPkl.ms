	.file	"AtomPkl.mc"
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
	.type	 AtomPkl__AtomPklWrite,@function
AtomPkl__AtomPklWrite:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	testl %edx,%edx
	je .L2
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_AtomPkl+160
	je .L2
	pushl $325
	call _m3_fault
	.align 16
.L2:
	pushl %edx
	movl MI_Atom+48,%eax
	call *%eax
	movl %eax,%edx
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %edx
	pushl %ebx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 AtomPkl__AtomPklWrite,.Lfe1-AtomPkl__AtomPklWrite
	.align 16
	.type	 AtomPkl__AtomPklRead,@function
AtomPkl__AtomPklRead:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl (%eax),%edx
	movl 4(%edx),%edx
	pushl %eax
	call *%edx
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	je .L4
	movl -4(%edx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl %eax,MM_AtomPkl+168
	je .L4
	pushl $469
	call _m3_fault
	.align 16
.L4:
	pushl %edx
	movl MI_Atom+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AtomPkl__AtomPklRead,.Lfe2-AtomPkl__AtomPklRead
	.align 16
	.type	 _INITM_AtomPkl,@function
_INITM_AtomPkl:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AtomPkl+172,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl MM_AtomPkl+160,%eax
	movl %eax,8(%edx)
	pushl %edx
	movl MI_Pickle+384,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 _INITM_AtomPkl,.Lfe3-_INITM_AtomPkl
	.align 16
	.type	 M_AtomPkl_t4a9d36b0_LINK,@function
M_AtomPkl_t4a9d36b0_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AtomPkl+172,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_AtomPkl+44,%eax
	movl %eax,4(%edx)
	movl MM_AtomPkl+48,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe4:
	.size	 M_AtomPkl_t4a9d36b0_LINK,.Lfe4-M_AtomPkl_t4a9d36b0_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AtomPkl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_AtomPkl
.data
	.align 4
	.type	 MM_AtomPkl,@object
	.size	 MM_AtomPkl,408
MM_AtomPkl:
	.long MM_AtomPkl+260
	.long MM_AtomPkl+52
	.long MM_AtomPkl+156
	.zero	8
	.long MM_AtomPkl+220
	.zero	16
	.long _INITM_AtomPkl
	.long AtomPkl__AtomPklWrite
	.long AtomPkl__AtomPklRead
	.zero	8
	.long 1251817136
.byte 163
.byte 182
.byte 252
.byte 91
.byte 19
.byte 128
.byte 97
.byte 17
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_AtomPkl+403
	.zero	4
	.long M_AtomPkl_t4a9d36b0_LINK
	.long -1208015212
	.zero	24
	.long MM_AtomPkl+164
	.long -774251250
	.long MM_AtomPkl+172
	.long 1358456180
	.zero	4
	.long 1251817136
	.ascii	"_INITM_AtomPkl"
	.zero	1
	.ascii	"AtomPklRead"
	.zero	1
	.ascii	"AtomPklWrite"
	.zero	1
	.long _INITM_AtomPkl
	.long MM_AtomPkl+180
	.zero	4
	.long AtomPkl__AtomPklRead
	.long MM_AtomPkl+195
	.zero	4
	.long AtomPkl__AtomPklWrite
	.long MM_AtomPkl+207
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/pickle/AtomPkl.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
