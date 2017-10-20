	.file	"PropertyV.mc"
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
	.type	 PropertyV__Put,@function
PropertyV__Put:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	cmpl $0,(%ebx)
	jne .L2
	movl MI_Property+148,%eax
	call *%eax
	movl %eax,(%ebx)
.L2:
	pushl %esi
	movl (%ebx),%eax
	pushl %eax
	movl MI_PropertyF+44,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PropertyV__Put,.Lfe1-PropertyV__Put
	.align 16
	.type	 PropertyV__Remove,@function
PropertyV__Remove:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%eax
	testl %eax,%eax
	je .L3
	pushl %edx
	pushl %eax
	movl MI_PropertyF+48,%eax
	call *%eax
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PropertyV__Remove,.Lfe2-PropertyV__Remove
	.align 16
	.type	 PropertyV__Get,@function
PropertyV__Get:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %eax,%eax
	je .L7
	pushl %edx
	pushl %eax
	movl MI_PropertyF+52,%eax
	call *%eax
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PropertyV__Get,.Lfe3-PropertyV__Get
	.align 16
	.type	 PropertyV__RemoveSub,@function
PropertyV__RemoveSub:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl (%eax),%eax
	testl %eax,%eax
	je .L8
	pushl %edx
	pushl %eax
	movl MI_PropertyF+56,%eax
	call *%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PropertyV__RemoveSub,.Lfe4-PropertyV__RemoveSub
	.align 16
	.type	 PropertyV__GetSub,@function
PropertyV__GetSub:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	testl %eax,%eax
	je .L12
	pushl %edx
	pushl %eax
	movl MI_PropertyF+60,%eax
	call *%eax
.L12:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 PropertyV__GetSub,.Lfe5-PropertyV__GetSub
.globl MM_PropertyV
.data
	.align 4
	.type	 MM_PropertyV,@object
	.size	 MM_PropertyV,308
MM_PropertyV:
	.long MM_PropertyV+160
	.zero	16
	.long MM_PropertyV+96
	.zero	20
	.long PropertyV__Put
	.long PropertyV__Remove
	.long PropertyV__Get
	.long PropertyV__RemoveSub
	.long PropertyV__GetSub
	.ascii	"GetSub"
	.zero	1
	.ascii	"RemoveSub"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Remove"
	.zero	1
	.ascii	"Put"
	.zero	1
	.long PropertyV__GetSub
	.long MM_PropertyV+64
	.long MI_PropertyV+60
	.long PropertyV__RemoveSub
	.long MM_PropertyV+71
	.long MI_PropertyV+56
	.long PropertyV__Get
	.long MM_PropertyV+81
	.long MI_PropertyV+52
	.long PropertyV__Remove
	.long MM_PropertyV+85
	.long MI_PropertyV+48
	.long PropertyV__Put
	.long MM_PropertyV+92
	.long MI_PropertyV+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/property/PropertyV.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
