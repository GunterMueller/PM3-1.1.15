	.file	"IntList.mc"
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
	.type	 IntList__Cons,@function
IntList__Cons:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	leal -8(%ebp),%esp
	movl (%ebx),%eax
	movl %eax,4(%edx)
	movl %esi,8(%edx)
	movl %edx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IntList__Cons,.Lfe1-IntList__Cons
	.align 16
	.type	 IntList__List1,@function
IntList__List1:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%ebx),%eax
	movl %eax,4(%edx)
	movl $0,8(%edx)
	movl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 IntList__List1,.Lfe2-IntList__List1
	.align 16
	.type	 IntList__List2,@function
IntList__List2:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	movl (%ebx),%eax
	movl %eax,4(%edi)
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	leal -12(%ebp),%esp
	movl (%esi),%eax
	movl %eax,4(%edx)
	movl $0,8(%edx)
	movl %edx,8(%edi)
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 IntList__List2,.Lfe3-IntList__List2
	.align 16
	.type	 IntList__List3,@function
IntList__List3:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	movl (%ebx),%eax
	movl %eax,4(%edi)
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl (%esi),%eax
	movl %eax,4(%ebx)
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%ecx
	leal -12(%ebp),%esp
	movl (%ecx),%eax
	movl %eax,4(%edx)
	movl $0,8(%edx)
	movl %edx,8(%ebx)
	movl %ebx,8(%edi)
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 IntList__List3,.Lfe4-IntList__List3
	.align 16
	.type	 IntList__FromArray,@function
IntList__FromArray:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %esi,%esi
	movl 4(%eax),%ebx
	jmp .L10
	.align 16
.L7:
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	addl $4,%esp
	cmpl %ebx,4(%eax)
	ja .L8
	pushl $562
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	movl %eax,4(%edx)
	movl %esi,8(%edx)
	movl %edx,%esi
.L10:
	decl %ebx
	jns .L7
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 IntList__FromArray,.Lfe5-IntList__FromArray
	.align 16
	.type	 IntList__Length,@function
IntList__Length:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	jmp .L12
	.align 16
.L13:
	incl %eax
	movl 8(%edx),%edx
.L12:
	testl %edx,%edx
	jne .L13
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 IntList__Length,.Lfe6-IntList__Length
	.align 16
	.type	 IntList__Nth,@function
IntList__Nth:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	jmp .L16
	.align 16
.L17:
	movl 8(%edx),%edx
	decl %eax
	jns .L18
	pushl $849
	call _m3_fault
	.align 16
.L18:
.L16:
	testl %eax,%eax
	jg .L17
	movl 4(%edx),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 IntList__Nth,.Lfe7-IntList__Nth
	.align 16
	.type	 IntList__Member,@function
IntList__Member:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	jmp .L21
	.align 16
.L22:
	movl (%esi),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Integer+44,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L23
	movl $1,%eax
	jmp .L25
	.align 16
.L23:
	movl 8(%ebx),%ebx
.L21:
	testl %ebx,%ebx
	jne .L22
	movl %ebx,%eax
.L25:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 IntList__Member,.Lfe8-IntList__Member
	.align 16
	.type	 IntList__Append,@function
IntList__Append:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	testl %ebx,%ebx
	jne .L27
	movl %edi,%eax
	jmp .L32
	.align 16
.L27:
	testl %edi,%edi
	jne .L28
	movl %ebx,%eax
	jmp .L32
	.align 16
.L28:
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	addl $4,%esp
	movl %eax,4(%edx)
	movl %edx,-4(%ebp)
	movl -4(%ebp),%esi
	jmp .L33
	.align 16
.L30:
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	addl $4,%esp
	movl %eax,4(%edx)
	movl %edx,8(%esi)
	movl %edx,%esi
.L33:
	movl 8(%ebx),%ebx
	testl %ebx,%ebx
	jne .L30
	movl %edi,8(%esi)
	movl -4(%ebp),%eax
.L32:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 IntList__Append,.Lfe9-IntList__Append
	.align 16
	.type	 IntList__AppendD,@function
IntList__AppendD:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	testl %ecx,%ecx
	jne .L35
	movl %ebx,%eax
	jmp .L40
	.align 16
.L35:
	testl %ebx,%ebx
	je .L41
	movl %ecx,%eax
	jmp .L37
	.align 16
.L38:
	movl %edx,%eax
.L37:
	movl 8(%eax),%edx
	testl %edx,%edx
	jne .L38
	movl %ebx,8(%eax)
.L41:
	movl %ecx,%eax
.L40:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 IntList__AppendD,.Lfe10-IntList__AppendD
	.align 16
	.type	 IntList__Reverse,@function
IntList__Reverse:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L43
	.align 16
.L44:
	movl MM_IntList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	addl $4,%esp
	movl %eax,4(%edx)
	movl %esi,8(%edx)
	movl %edx,%esi
	movl 8(%ebx),%ebx
.L43:
	testl %ebx,%ebx
	jne .L44
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 IntList__Reverse,.Lfe11-IntList__Reverse
	.align 16
	.type	 IntList__ReverseD,@function
IntList__ReverseD:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L52
	movl 8(%edx),%eax
	movl %ecx,8(%edx)
	jmp .L48
	.align 16
.L49:
	movl 8(%eax),%ecx
	movl %edx,8(%eax)
	movl %eax,%edx
	movl %ecx,%eax
.L48:
	testl %eax,%eax
	jne .L49
.L52:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 IntList__ReverseD,.Lfe12-IntList__ReverseD
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_IntList
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_IntList
.data
	.align 4
	.type	 MM_IntList,@object
	.size	 MM_IntList,484
MM_IntList:
	.long MM_IntList+332
	.zero	4
	.long MM_IntList+92
	.zero	8
	.long MM_IntList+184
	.zero	20
	.long IntList__Cons
	.long IntList__List1
	.long IntList__List2
	.long IntList__List3
	.long IntList__FromArray
	.long IntList__Length
	.long IntList__Nth
	.long IntList__Member
	.long IntList__Append
	.long IntList__AppendD
	.long IntList__Reverse
	.long IntList__ReverseD
	.zero	4
	.long -1215504024
	.ascii	"ReverseD"
	.zero	1
	.ascii	"Reverse"
	.zero	1
	.ascii	"AppendD"
	.zero	1
	.ascii	"Append"
	.zero	1
	.ascii	"Member"
	.zero	1
	.ascii	"Nth"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"FromArray"
	.zero	1
	.ascii	"List3"
	.zero	1
	.ascii	"List2"
	.zero	1
	.ascii	"List1"
	.zero	1
	.ascii	"Cons"
	.zero	2
	.long IntList__ReverseD
	.long MM_IntList+100
	.long MI_IntList+192
	.long IntList__Reverse
	.long MM_IntList+109
	.long MI_IntList+188
	.long IntList__AppendD
	.long MM_IntList+117
	.long MI_IntList+184
	.long IntList__Append
	.long MM_IntList+125
	.long MI_IntList+180
	.long IntList__Member
	.long MM_IntList+132
	.long MI_IntList+176
	.long IntList__Nth
	.long MM_IntList+139
	.long MI_IntList+172
	.long IntList__Length
	.long MM_IntList+143
	.long MI_IntList+168
	.long IntList__FromArray
	.long MM_IntList+150
	.long MI_IntList+164
	.long IntList__List3
	.long MM_IntList+160
	.long MI_IntList+160
	.long IntList__List2
	.long MM_IntList+166
	.long MI_IntList+156
	.long IntList__List1
	.long MM_IntList+172
	.long MI_IntList+152
	.long IntList__Cons
	.long MM_IntList+178
	.long MI_IntList+148
	.zero	4
	.ascii	"IntList.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modu"
	.ascii	"la3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LI"
	.ascii	"NUXLIBC6/libm3/src/list/List.mg"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
