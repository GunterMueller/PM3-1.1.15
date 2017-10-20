	.file	"Ident.mc"
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
	.type	 Ident__ParseList,@function
Ident__ParseList:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	cmpl $0,MI_Ident+148
	jne .L2
	call Ident__Init
.L2:
	movl MI_Ident+156,%ebx
.L3:
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L4
	pushl $308
	call _m3_fault
	.align 16
.L4:
	movl 4(%eax),%eax
	decl %eax
	cmpl %eax,MI_Ident+156
	jle .L5
	call Ident__ExpandLists
.L5:
	movl MI_Ident+152,%eax
	testl %eax,%eax
	jne .L6
	pushl $324
	call _m3_fault
	.align 16
.L6:
	movl MI_Ident+156,%ecx
	cmpl %ecx,4(%eax)
	ja .L7
	pushl $322
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	movl MI_Scanner+80,%edx
	movl %edx,(%eax,%ecx,4)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,%ecx
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L8
	pushl $340
	call _m3_fault
	.align 16
.L8:
	movl MI_Ident+156,%edx
	cmpl %edx,4(%eax)
	ja .L9
	pushl $338
	call _m3_fault
	.align 16
.L9:
	movl (%eax),%eax
	movl %ecx,(%eax,%edx,4)
	leal 1(%edx),%eax
	movl %eax,MI_Ident+156
	cmpb $15,MI_Scanner+44
	jne .L11
	movl MI_Scanner+104,%eax
	call *%eax
	jmp .L3
	.align 16
.L11:
	subl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Ident__ParseList,.Lfe1-Ident__ParseList
	.align 16
	.type	 Ident__Reset,@function
Ident__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MI_Ident+156
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Ident__Reset,.Lfe2-Ident__Reset
	.align 16
	.type	 Ident__Init,@function
Ident__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	leal -12(%ebp),%esi
	pushl %ebx
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %esi
	movl MM_Ident+60,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MI_Ident+148
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %esi
	movl MM_Ident+68,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	leal -20(%ebp),%esp
	movl %eax,MI_Ident+152
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Ident__Init,.Lfe3-Ident__Init
	.align 16
	.type	 Ident__ExpandLists,@function
Ident__ExpandLists:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	leal -12(%ebp),%esi
	pushl %ebx
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MI_Ident+148,%eax
	testl %eax,%eax
	jne .L15
	pushl $660
	call _m3_fault
	.align 16
.L15:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_Ident+60,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MI_Ident+152,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L16
	pushl $676
	call _m3_fault
	.align 16
.L16:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_Ident+68,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %edi,%edi
	jne .L17
	pushl $708
	call _m3_fault
	.align 16
.L17:
	movl MI_Ident+148,%ecx
	testl %ecx,%ecx
	jne .L18
	pushl $708
	call _m3_fault
	.align 16
.L18:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L19
	pushl $705
	call _m3_fault
	.align 16
.L19:
	movl (%edi),%ebx
	movl %ebx,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L21
	pushl $707
	call _m3_fault
	.align 16
.L21:
	leal 0(,%edx,4),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	pushl %ebx
	call memmove
	addl $12,%esp
	testl %esi,%esi
	jne .L22
	pushl $724
	call _m3_fault
	.align 16
.L22:
	movl MI_Ident+152,%ecx
	testl %ecx,%ecx
	jne .L23
	pushl $724
	call _m3_fault
	.align 16
.L23:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L24
	pushl $721
	call _m3_fault
	.align 16
.L24:
	movl (%esi),%ebx
	movl %ebx,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L26
	pushl $723
	call _m3_fault
	.align 16
.L26:
	leal 0(,%edx,4),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	pushl %ebx
	call memmove
	movl %edi,MI_Ident+148
	leal -32(%ebp),%esp
	movl %esi,MI_Ident+152
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Ident__ExpandLists,.Lfe4-Ident__ExpandLists
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Ident
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Ident
.data
	.align 4
	.type	 MM_Ident,@object
	.size	 MM_Ident,308
MM_Ident:
	.long MM_Ident+164
	.zero	4
	.long MM_Ident+60
	.zero	8
	.long MM_Ident+112
	.zero	20
	.long Ident__Init
	.long Ident__ExpandLists
	.long Ident__ParseList
	.long Ident__Reset
	.long MM_Ident+68
	.long 1903920718
	.zero	4
	.long 562018850
	.ascii	"ExpandLists"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"ParseList"
	.zero	4
	.long Ident__ExpandLists
	.long MM_Ident+76
	.zero	4
	.long Ident__Init
	.long MM_Ident+88
	.zero	4
	.long Ident__Reset
	.long MM_Ident+93
	.long MI_Ident+164
	.long Ident__ParseList
	.long MM_Ident+99
	.long MI_Ident+160
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/values/Ident.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
