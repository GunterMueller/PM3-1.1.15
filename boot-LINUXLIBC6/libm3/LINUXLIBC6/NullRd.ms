	.file	"NullRd.mc"
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
	.type	 NullRd__Init,@function
NullRd__Init:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L2
	pushl $388
	call _m3_fault
	.align 16
.L2:
	movl MM_NullRd+172,%edx
	movl 24(%edx),%eax
	movl $0,4(%eax,%ecx)
	movl 24(%edx),%eax
	movl $0,8(%eax,%ecx)
	movl 24(%edx),%eax
	movl $0,16(%eax,%ecx)
	movl 24(%edx),%eax
	movl $0,12(%eax,%ecx)
	movl %ecx,%eax
	addl 24(%edx),%eax
	movl $0,(%eax)
	movl MM_NullRd+172,%eax
	movl 24(%eax),%eax
	movb $0,20(%eax,%ecx)
	movl MM_NullRd+172,%eax
	movl 24(%eax),%eax
	movb $1,21(%eax,%ecx)
	movl MM_NullRd+172,%eax
	movl 24(%eax),%eax
	movl %ebp,%esp
	movb $0,22(%eax,%ecx)
	movl %ecx,%eax
	popl %ebp
	ret
.Lfe1:
	.size	 NullRd__Init,.Lfe1-NullRd__Init
	.align 16
	.type	 NullRd__Seek,@function
NullRd__Seek:
	pushl %ebp
	movl %esp,%ebp
	movl $2,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 NullRd__Seek,.Lfe2-NullRd__Seek
	.align 16
	.type	 NullRd__Length,@function
NullRd__Length:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 NullRd__Length,.Lfe3-NullRd__Length
	.align 16
	.type	 M_NullRd_tb3b1c542_LINK,@function
M_NullRd_tb3b1c542_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_NullRd+388,%eax
	movl MM_NullRd+172,%ecx
	movl 52(%eax),%ebx
	movl 36(%ecx),%edx
	movl MM_NullRd+152,%eax
	movl %eax,(%edx,%ebx)
	movl 36(%ecx),%edx
	movl MM_NullRd+156,%eax
	movl %eax,8(%ebx,%edx)
	movl MM_NullRd+396,%eax
	movl 36(%eax),%edx
	movl MM_NullRd+148,%eax
	movl %eax,(%edx,%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M_NullRd_tb3b1c542_LINK,.Lfe4-M_NullRd_tb3b1c542_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_NullRd
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_NullRd
.data
	.align 4
	.type	 MM_NullRd,@object
	.size	 MM_NullRd,436
MM_NullRd:
	.long MM_NullRd+240
	.long MM_NullRd+44
	.long MM_NullRd+172
	.long MM_NullRd+160
	.zero	4
	.long MM_NullRd+200
	.zero	28
	.long -1280195262
.byte 197
.byte 128
.byte 10
.byte 182
.byte 135
.byte 69
.byte 187
.byte 5
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_NullRd+385
	.zero	4
	.long M_NullRd_tb3b1c542_LINK
	.long 34129017
	.zero	12
	.long MM_NullRd+404
	.long MM_NullRd+424
	.zero	4
	.long NullRd__Init
	.long NullRd__Seek
	.long NullRd__Length
	.long 34129018
	.long -1280195262
	.zero	4
	.long MM_NullRd+388
	.long -1638177541
	.ascii	"Length"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"Init"
	.zero	4
	.long NullRd__Length
	.long MM_NullRd+180
	.zero	4
	.long NullRd__Seek
	.long MM_NullRd+187
	.zero	4
	.long NullRd__Init
	.long MM_NullRd+192
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/NullRd.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.long MM_NullRd+396
	.long -1280195262
	.zero	4
	.long 34129017
	.ascii	"NullRd_^%#%^__0001M"
	.zero	1
	.ascii	"NullRd.T"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
