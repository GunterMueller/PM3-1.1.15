	.file	"ListPkl.mc"
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
	.type	 ListPkl__ListPklWrite,@function
ListPkl__ListPklWrite:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	je .L2
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_ListPkl+160
	jg .L3
	movl MM_ListPkl+156,%eax
	cmpl %edx,4(%eax)
	jge .L2
.L3:
	pushl $309
	call _m3_fault
	.align 16
.L2:
	movl %ebx,%esi
	pushl %esi
	movl MI_RefList+168,%eax
	call *%eax
	movl %eax,%edi
	movl %esi,%edx
	addl $4,%esp
	testl %esi,%esi
	je .L4
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
.L4:
	cmpl %edx,MM_ListPkl+160
	setne %bl
	xorl %eax,%eax
	movb %bl,%al
	pushl %eax
	movl 16(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	movl MI_Wr+64,%eax
	call *%eax
	addl $8,%esp
	testb %bl,%bl
	je .L5
	movl MM_ListPkl+164,%eax
	movl 52(%eax),%eax
	movl 16(%ebp),%ecx
	movl 4(%eax),%edx
	pushl %ecx
	pushl %esi
	movl 8(%ebp),%ecx
	pushl %ecx
	call *%edx
	jmp .L1
	.align 16
.L5:
	movl 16(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%eax),%edx
	pushl %edi
	pushl %ecx
	call *%edx
	movl $1,%ebx
	jmp .L11
	.align 16
.L8:
	movl 16(%ebp),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%edx
	movl 4(%esi),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl 8(%esi),%esi
	incl %ebx
.L11:
	addl $8,%esp
	cmpl %edi,%ebx
	jle .L8
	testl %esi,%esi
	je .L1
	pushl $512
	call _m3_fault
	.align 16
.L1:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ListPkl__ListPklWrite,.Lfe1-ListPkl__ListPklWrite
	.align 16
	.type	 ListPkl__ListPklRead,@function
ListPkl__ListPklRead:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ecx
	movl 16(%ebp),%ebx
	movl 4(%ecx),%eax
	pushl %eax
	movl MI_Rd+80,%eax
	call *%eax
	addl $4,%esp
	testb %al,%al
	je .L13
	movl MM_ListPkl+164,%eax
	movl 52(%eax),%eax
	movl 8(%eax),%eax
	pushl %ebx
	movl 12(%ebp),%ecx
	pushl %ecx
	pushl %esi
	call *%eax
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	je .L14
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ebx
	shrl $12,%ebx
	cmpl %ebx,MM_ListPkl+160
	jg .L15
	movl MM_ListPkl+156,%eax
	cmpl %ebx,4(%eax)
	jge .L14
.L15:
	pushl $773
	call _m3_fault
	.align 16
.L14:
	movl %edx,-4(%ebp)
	jmp .L16
	.align 16
.L13:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%eax),%edx
	pushl %ecx
	call *%edx
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jge .L18
	pushl $801
	call _m3_fault
	.align 16
.L18:
	movl MM_ListPkl+156,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-4(%ebp)
	movl -4(%ebp),%esi
	movl $1,%edi
	decl %ebx
	addl $4,%esp
	jmp .L19
	.align 16
.L20:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%edx
	pushl %ecx
	call *%edx
	movl %eax,4(%esi)
	movl MM_ListPkl+156,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,8(%esi)
	movl %eax,%esi
	incl %edi
	addl $8,%esp
.L19:
	cmpl %ebx,%edi
	jle .L20
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl 4(%eax),%edx
	pushl %ecx
	call *%edx
	movl %eax,4(%esi)
	movl $0,8(%esi)
.L16:
	leal -16(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ListPkl__ListPklRead,.Lfe2-ListPkl__ListPklRead
	.align 16
	.type	 _INITM_ListPkl,@function
_INITM_ListPkl:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ListPkl+212,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl MM_ListPkl+160,%eax
	movl %eax,8(%edx)
	pushl %edx
	movl MI_Pickle+384,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 _INITM_ListPkl,.Lfe3-_INITM_ListPkl
	.align 16
	.type	 M_ListPkl_ta611836e_LINK,@function
M_ListPkl_ta611836e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ListPkl+212,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ListPkl+44,%eax
	movl %eax,4(%edx)
	movl MM_ListPkl+48,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe4:
	.size	 M_ListPkl_ta611836e_LINK,.Lfe4-M_ListPkl_ta611836e_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ListPkl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_ListPkl
.data
	.align 4
	.type	 MM_ListPkl,@object
	.size	 MM_ListPkl,448
MM_ListPkl:
	.long MM_ListPkl+300
	.long MM_ListPkl+52
	.long MM_ListPkl+156
	.zero	8
	.long MM_ListPkl+260
	.zero	16
	.long _INITM_ListPkl
	.long ListPkl__ListPklWrite
	.long ListPkl__ListPklRead
	.zero	8
	.long -1508801682
.byte 65
.byte 237
.byte 224
.byte 187
.byte 47
.byte 110
.byte 241
.byte 29
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_ListPkl+443
	.zero	4
	.long M_ListPkl_ta611836e_LINK
	.long -1208015212
	.zero	24
	.long MM_ListPkl+164
	.long -1185263845
	.long MM_ListPkl+212
	.long -1208015212
	.long 2
	.long MM_ListPkl+184
	.long 27
	.ascii	"Pickle.Error: negative int"
	.zero	6
	.long -1508801682
	.ascii	"_INITM_ListPkl"
	.zero	1
	.ascii	"ListPklRead"
	.zero	1
	.ascii	"ListPklWrite"
	.zero	1
	.long _INITM_ListPkl
	.long MM_ListPkl+220
	.zero	4
	.long ListPkl__ListPklRead
	.long MM_ListPkl+235
	.zero	4
	.long ListPkl__ListPklWrite
	.long MM_ListPkl+247
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/pickle/ListPkl.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
