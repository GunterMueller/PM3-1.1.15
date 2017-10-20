	.file	"NullWr.mc"
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
	.type	 NullWr__Init,@function
NullWr__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L2
	pushl $436
	call _m3_fault
	.align 16
.L2:
	movl MM_NullWr+172,%edx
	movl 24(%edx),%eax
	movl $0,4(%eax,%ebx)
	movl 24(%edx),%eax
	movl $0,8(%eax,%ebx)
	movl 24(%edx),%eax
	movl $0,16(%eax,%ebx)
	movl 24(%edx),%eax
	movl $1024,12(%eax,%ebx)
	movl 24(%edx),%eax
	cmpl $0,(%eax,%ebx)
	jne .L9
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1024,-4(%ebp)
	pushl %eax
	movl MM_NullWr+180,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl MM_NullWr+172,%eax
	movl 24(%eax),%eax
	addl %ebx,%eax
	movl %edx,(%eax)
.L9:
	movl MM_NullWr+172,%eax
	movl 24(%eax),%eax
	movb $0,20(%eax,%ebx)
	movl MM_NullWr+172,%eax
	movl 24(%eax),%eax
	movb $0,21(%eax,%ebx)
	movl MM_NullWr+172,%eax
	movl 24(%eax),%eax
	movb $1,22(%eax,%ebx)
	movl %ebx,%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 NullWr__Init,.Lfe1-NullWr__Init
	.align 16
	.type	 NullWr__Seek,@function
NullWr__Seek:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	jne .L13
	pushl $676
	call _m3_fault
	.align 16
.L13:
	movl MM_NullWr+172,%edx
	movl 24(%edx),%eax
	movl %ebx,8(%eax,%ecx)
	movl 24(%edx),%eax
	movl %ebx,16(%eax,%ecx)
	movl 24(%edx),%eax
	addl $1024,%ebx
	movl %ebx,12(%eax,%ecx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NullWr__Seek,.Lfe2-NullWr__Seek
	.align 16
	.type	 NullWr__PutString,@function
NullWr__PutString:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L17
	pushl $788
	call _m3_fault
	.align 16
.L17:
	movl MM_NullWr+172,%eax
	movl 24(%eax),%edx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	addl 16(%edx,%ecx),%eax
	pushl %eax
	pushl %ecx
	call NullWr__Seek
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NullWr__PutString,.Lfe3-NullWr__PutString
	.align 16
	.type	 M_NullWr_ta28dd2e4_LINK,@function
M_NullWr_ta28dd2e4_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_NullWr+396,%eax
	movl MM_NullWr+172,%ecx
	movl 52(%eax),%ebx
	movl 36(%ecx),%edx
	movl MM_NullWr+152,%eax
	movl %eax,(%edx,%ebx)
	movl 36(%ecx),%edx
	movl MM_NullWr+156,%eax
	movl %eax,4(%ebx,%edx)
	movl MM_NullWr+404,%eax
	movl 36(%eax),%edx
	movl MM_NullWr+148,%eax
	movl %eax,(%edx,%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M_NullWr_ta28dd2e4_LINK,.Lfe4-M_NullWr_ta28dd2e4_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_NullWr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_NullWr
.data
	.align 4
	.type	 MM_NullWr,@object
	.size	 MM_NullWr,444
MM_NullWr:
	.long MM_NullWr+248
	.long MM_NullWr+44
	.long MM_NullWr+172
	.long MM_NullWr+160
	.zero	4
	.long MM_NullWr+208
	.zero	28
	.long -1567763740
.byte 51
.byte 95
.byte 36
.byte 162
.byte 215
.byte 141
.byte 169
.byte 0
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_NullWr+393
	.zero	4
	.long M_NullWr_ta28dd2e4_LINK
	.long 1701075601
	.zero	12
	.long MM_NullWr+412
	.long MM_NullWr+432
	.zero	4
	.long NullWr__Init
	.long NullWr__Seek
	.long NullWr__PutString
	.long 1701075602
	.long -1567763740
	.zero	4
	.long MM_NullWr+180
	.long -1861675307
	.long MM_NullWr+396
	.long -2020873848
	.ascii	"PutString"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"Init"
	.zero	1
	.long NullWr__PutString
	.long MM_NullWr+188
	.zero	4
	.long NullWr__Seek
	.long MM_NullWr+198
	.zero	4
	.long NullWr__Init
	.long MM_NullWr+203
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/NullWr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.long MM_NullWr+404
	.long -1567763740
	.zero	4
	.long 1701075601
	.ascii	"NullWr_^%#%^__0001M"
	.zero	1
	.ascii	"NullWr.T"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
