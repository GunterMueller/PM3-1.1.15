	.file	"TextRd.mc"
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
	.type	 TextRd__Init,@function
TextRd__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %ebx,%ebx
	jne .L2
	pushl $420
	call _m3_fault
	.align 16
.L2:
	movl MM_TextRd+176,%eax
	movl 24(%eax),%eax
	movl (%eax,%ebx),%eax
	testl %eax,%eax
	je .L3
	cmpl %esi,4(%eax)
	jge .L6
.L3:
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %eax
	movl MM_TextRd+184,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl MM_TextRd+176,%eax
	movl 24(%eax),%eax
	addl %ebx,%eax
	addl $8,%esp
	movl %edx,(%eax)
.L6:
	testl %ebx,%ebx
	jne .L8
	pushl $468
	call _m3_fault
	.align 16
.L8:
	movl MM_TextRd+176,%eax
	movl 24(%eax),%eax
	movl (%eax,%ebx),%eax
	testl %eax,%eax
	jne .L9
	pushl $468
	call _m3_fault
	.align 16
.L9:
	pushl %edi
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	movl MM_TextRd+176,%edx
	movl 24(%edx),%eax
	movl $0,4(%eax,%ebx)
	movl 24(%edx),%eax
	movl $0,8(%eax,%ebx)
	movl 24(%edx),%eax
	movl $0,16(%eax,%ebx)
	movl 24(%edx),%eax
	movl %esi,12(%eax,%ebx)
	movl 24(%edx),%eax
	movb $0,20(%eax,%ebx)
	movl MM_TextRd+176,%eax
	movl 24(%eax),%eax
	movb $1,21(%eax,%ebx)
	movl MM_TextRd+176,%eax
	movl 24(%eax),%eax
	leal -24(%ebp),%esp
	movb $0,22(%eax,%ebx)
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TextRd__Init,.Lfe1-TextRd__Init
	.align 16
	.type	 TextRd__New,@function
TextRd__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_TextRd+192,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_TextRd+200,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %ebx
	pushl %ecx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TextRd__New,.Lfe2-TextRd__New
	.align 16
	.type	 TextRd__Seek,@function
TextRd__Seek:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	jne .L19
	pushl $724
	call _m3_fault
	.align 16
.L19:
	movl MM_TextRd+176,%eax
	movl 24(%eax),%eax
	movl 12(%eax,%ecx),%edx
	cmpl %ebx,%edx
	jg .L23
	movl %edx,16(%eax,%ecx)
	movl $2,%eax
	jmp .L24
	.align 16
.L23:
	movl %ebx,16(%eax,%ecx)
	xorl %eax,%eax
.L24:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TextRd__Seek,.Lfe3-TextRd__Seek
	.align 16
	.type	 TextRd__Length,@function
TextRd__Length:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L26
	pushl $884
	call _m3_fault
	.align 16
.L26:
	movl MM_TextRd+176,%eax
	movl %ebp,%esp
	movl 24(%eax),%eax
	popl %ebp
	movl 12(%eax,%edx),%eax
	ret
.Lfe4:
	.size	 TextRd__Length,.Lfe4-TextRd__Length
	.align 16
	.type	 M_TextRd_t4e19aa63_LINK,@function
M_TextRd_t4e19aa63_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_TextRd+432,%eax
	movl MM_TextRd+176,%ecx
	movl 52(%eax),%ebx
	movl 36(%ecx),%edx
	movl MM_TextRd+152,%eax
	movl %eax,(%edx,%ebx)
	movl 36(%ecx),%edx
	movl MM_TextRd+156,%eax
	movl %eax,8(%ebx,%edx)
	movl MM_TextRd+200,%eax
	movl 36(%eax),%edx
	movl MM_TextRd+148,%eax
	movl %eax,(%edx,%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M_TextRd_t4e19aa63_LINK,.Lfe5-M_TextRd_t4e19aa63_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextRd
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_TextRd
.data
	.align 4
	.type	 MM_TextRd,@object
	.size	 MM_TextRd,472
MM_TextRd:
	.long MM_TextRd+284
	.long MM_TextRd+44
	.long MM_TextRd+176
	.long MM_TextRd+164
	.zero	4
	.long MM_TextRd+232
	.zero	28
	.long 1310304867
.byte 104
.byte 157
.byte 23
.byte 83
.byte 11
.byte 55
.byte 14
.byte 29
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_TextRd+429
	.zero	4
	.long M_TextRd_t4e19aa63_LINK
	.long -501239746
	.zero	12
	.long MM_TextRd+440
	.long MM_TextRd+460
	.zero	4
	.long TextRd__Init
	.long TextRd__Seek
	.long TextRd__Length
	.long TextRd__New
	.long -501239747
	.long 1310304867
	.zero	4
	.long MM_TextRd+184
	.long -1638177541
	.long MM_TextRd+192
	.long -2020873848
	.long MM_TextRd+200
	.long -501239747
	.long MM_TextRd+432
	.long -501239746
	.ascii	"Length"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Init"
	.zero	4
	.long TextRd__Length
	.long MM_TextRd+208
	.zero	4
	.long TextRd__Seek
	.long MM_TextRd+215
	.zero	4
	.long TextRd__New
	.long MM_TextRd+220
	.long MI_TextRd+148
	.long TextRd__Init
	.long MM_TextRd+224
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/TextRd.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	4
	.long 1310304867
	.ascii	"TextRd_^%#%^__0001M"
	.zero	1
	.ascii	"TextRd.T"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
