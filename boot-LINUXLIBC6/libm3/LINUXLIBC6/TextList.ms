	.file	"TextList.mc"
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
	.type	 TextList__Cons,@function
TextList__Cons:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_TextList+92,%eax
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
	.size	 TextList__Cons,.Lfe1-TextList__Cons
	.align 16
	.type	 TextList__List1,@function
TextList__List1:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_TextList+92,%eax
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
	.size	 TextList__List1,.Lfe2-TextList__List1
	.align 16
	.type	 TextList__List2,@function
TextList__List2:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_TextList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	movl (%ebx),%eax
	movl %eax,4(%edi)
	movl MM_TextList+92,%eax
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
	.size	 TextList__List2,.Lfe3-TextList__List2
	.align 16
	.type	 TextList__List3,@function
TextList__List3:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_TextList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	movl (%ebx),%eax
	movl %eax,4(%edi)
	movl MM_TextList+92,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl (%esi),%eax
	movl %eax,4(%ebx)
	movl MM_TextList+92,%eax
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
	.size	 TextList__List3,.Lfe4-TextList__List3
	.align 16
	.type	 TextList__FromArray,@function
TextList__FromArray:
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
	movl MM_TextList+92,%eax
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
	.size	 TextList__FromArray,.Lfe5-TextList__FromArray
	.align 16
	.type	 TextList__Length,@function
TextList__Length:
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
	.size	 TextList__Length,.Lfe6-TextList__Length
	.align 16
	.type	 TextList__Nth,@function
TextList__Nth:
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
	.size	 TextList__Nth,.Lfe7-TextList__Nth
	.align 16
	.type	 TextList__Member,@function
TextList__Member:
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
	movl MI_Text+48,%eax
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
	.size	 TextList__Member,.Lfe8-TextList__Member
	.align 16
	.type	 TextList__Append,@function
TextList__Append:
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
	movl MM_TextList+92,%eax
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
	movl MM_TextList+92,%eax
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
	.size	 TextList__Append,.Lfe9-TextList__Append
	.align 16
	.type	 TextList__AppendD,@function
TextList__AppendD:
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
	.size	 TextList__AppendD,.Lfe10-TextList__AppendD
	.align 16
	.type	 TextList__Reverse,@function
TextList__Reverse:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L43
	.align 16
.L44:
	movl MM_TextList+92,%eax
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
	.size	 TextList__Reverse,.Lfe11-TextList__Reverse
	.align 16
	.type	 TextList__ReverseD,@function
TextList__ReverseD:
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
	.size	 TextList__ReverseD,.Lfe12-TextList__ReverseD
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextList
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_TextList
.data
	.align 4
	.type	 MM_TextList,@object
	.size	 MM_TextList,488
MM_TextList:
	.long MM_TextList+332
	.zero	4
	.long MM_TextList+92
	.zero	8
	.long MM_TextList+184
	.zero	20
	.long TextList__Cons
	.long TextList__List1
	.long TextList__List2
	.long TextList__List3
	.long TextList__FromArray
	.long TextList__Length
	.long TextList__Nth
	.long TextList__Member
	.long TextList__Append
	.long TextList__AppendD
	.long TextList__Reverse
	.long TextList__ReverseD
	.zero	4
	.long -560598636
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
	.long TextList__ReverseD
	.long MM_TextList+100
	.long MI_TextList+192
	.long TextList__Reverse
	.long MM_TextList+109
	.long MI_TextList+188
	.long TextList__AppendD
	.long MM_TextList+117
	.long MI_TextList+184
	.long TextList__Append
	.long MM_TextList+125
	.long MI_TextList+180
	.long TextList__Member
	.long MM_TextList+132
	.long MI_TextList+176
	.long TextList__Nth
	.long MM_TextList+139
	.long MI_TextList+172
	.long TextList__Length
	.long MM_TextList+143
	.long MI_TextList+168
	.long TextList__FromArray
	.long MM_TextList+150
	.long MI_TextList+164
	.long TextList__List3
	.long MM_TextList+160
	.long MI_TextList+160
	.long TextList__List2
	.long MM_TextList+166
	.long MI_TextList+156
	.long TextList__List1
	.long MM_TextList+172
	.long MI_TextList+152
	.long TextList__Cons
	.long MM_TextList+178
	.long MI_TextList+148
	.zero	4
	.ascii	"TextList.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/mod"
	.ascii	"ula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-L"
	.ascii	"INUXLIBC6/libm3/src/list/List.mg"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
