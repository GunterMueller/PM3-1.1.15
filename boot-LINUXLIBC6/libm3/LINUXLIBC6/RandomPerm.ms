	.file	"RandomPerm.mc"
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
	.type	 RandomPerm__HQInit,@function
RandomPerm__HQInit:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%ecx
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%esi
	movl %eax,4(%ebx)
	movl %eax,8(%ebx)
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_RandomPerm+420,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,12(%ebx)
	addl $8,%esp
	testl %eax,%eax
	jne .L2
	pushl $900
	call _m3_fault
	.align 16
.L2:
	pushl %esi
	pushl %eax
	call RandomPerm__Fill
	leal -20(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RandomPerm__HQInit,.Lfe1-RandomPerm__HQInit
	.align 16
	.type	 RandomPerm__LQInit,@function
RandomPerm__LQInit:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
.L4:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	xorl %edx,%edx
	movl %ebx,4(%esi)
	movl %ebx,8(%esi)
	testl %ebx,%ebx
	je .L12
	leal -1(%ebx),%eax
	testl %eax,%eax
	jge .L8
	pushl $1089
	call _m3_fault
	.align 16
.L9:
	sarl $1,%eax
	jns .L10
	pushl $1121
	call _m3_fault
	.align 16
.L10:
	incl %edx
.L8:
	testl %eax,%eax
	jne .L9
	cmpl $30,%edx
	jle .L12
	pushl $1136
	call _m3_fault
	.align 16
.L12:
	movl %edx,20(%esi)
	movl (%edi),%eax
	movl 4(%eax),%ebx
	pushl $2147483647
	pushl $0
	pushl %edi
	call *%ebx
	addl %eax,%eax
	orb $1,%al
	movl %eax,12(%esi)
	movl (%edi),%eax
	movl 4(%eax),%ebx
	pushl $2147483647
	pushl $0
	pushl %edi
	call *%ebx
	sall $3,%eax
	orb $3,%al
	movl %eax,16(%esi)
	movl (%edi),%eax
	movl 4(%eax),%ebx
	pushl $2147483647
	pushl $0
	pushl %edi
	call *%ebx
	testb $1,%al
	je .L13
	addl $2,16(%esi)
.L13:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %esi,%eax
.L14:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RandomPerm__LQInit,.Lfe2-RandomPerm__LQInit
	.align 16
	.type	 RandomPerm__HQNext,@function
RandomPerm__HQNext:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 8(%ebx),%edx
	testl %edx,%edx
	jne .L16
	movl 4(%ebx),%eax
	movl %eax,8(%ebx)
	pushl %edx
	pushl $MI_RandomPerm+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L16:
	movl %ebx,%eax
	movl 8(%eax),%edx
	decl %edx
	jns .L17
	pushl $1329
	call _m3_fault
	.align 16
.L17:
	movl %edx,8(%eax)
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L18
	pushl $1348
	call _m3_fault
	.align 16
.L18:
	cmpl %edx,4(%eax)
	ja .L19
	pushl $1346
	call _m3_fault
	.align 16
.L19:
	movl (%eax),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	movl (%eax,%edx,4),%eax
	ret
.Lfe3:
	.size	 RandomPerm__HQNext,.Lfe3-RandomPerm__HQNext
	.align 16
	.type	 RandomPerm__LQNext,@function
RandomPerm__LQNext:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %edx,%edx
	cmpl $0,8(%ebx)
	jne .L21
	movl 4(%ebx),%eax
	movl %eax,8(%ebx)
	pushl %edx
	pushl $MI_RandomPerm+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L21:
	movl 8(%ebx),%eax
	decl %eax
	jns .L22
	pushl $1457
	call _m3_fault
	.align 16
.L22:
	movl %eax,8(%ebx)
.L23:
	movl 12(%ebx),%eax
	imull 16(%ebx),%eax
	movl %eax,12(%ebx)
	movl 20(%ebx),%esi
	cmpl $30,%esi
	jle .L24
	pushl $1505
	call _m3_fault
	.align 16
.L24:
	testl %esi,%esi
	je .L25
	incl %eax
	movl $30,%edx
	subl %esi,%edx
	movl %edx,%ecx
	sall %cl,%eax
	movl $32,%edx
	subl %esi,%edx
	movl %edx,%ecx
	shrl %cl,%eax
	jmp .L26
	.align 16
.L25:
	movl %esi,%eax
.L26:
	testl %eax,%eax
	jge .L27
	pushl $1505
	call _m3_fault
	.align 16
.L27:
	movl %eax,%edx
	cmpl %edx,4(%ebx)
	jle .L23
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RandomPerm__LQNext,.Lfe4-RandomPerm__LQNext
	.align 16
	.type	 RandomPerm__HQSize,@function
RandomPerm__HQSize:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 4(%eax),%eax
	ret
.Lfe5:
	.size	 RandomPerm__HQSize,.Lfe5-RandomPerm__HQSize
	.align 16
	.type	 RandomPerm__HQIndex,@function
RandomPerm__HQIndex:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	movl 4(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jge .L31
	pushl $1697
	call _m3_fault
	.align 16
.L31:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RandomPerm__HQIndex,.Lfe6-RandomPerm__HQIndex
	.align 16
	.type	 RandomPerm__LQSize,@function
RandomPerm__LQSize:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 4(%eax),%eax
	ret
.Lfe7:
	.size	 RandomPerm__LQSize,.Lfe7-RandomPerm__LQSize
	.align 16
	.type	 RandomPerm__LQIndex,@function
RandomPerm__LQIndex:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 8(%edx),%eax
	movl 4(%edx),%edx
	subl %eax,%edx
	movl %edx,%eax
	testl %eax,%eax
	jge .L34
	pushl $1857
	call _m3_fault
	.align 16
.L34:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RandomPerm__LQIndex,.Lfe8-RandomPerm__LQIndex
	.align 16
	.type	 RandomPerm__HQCopy,@function
RandomPerm__HQCopy:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_RandomPerm+428,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	movl 8(%ebx),%eax
	movl %eax,8(%edx)
	movl 12(%ebx),%eax
	movl %eax,12(%edx)
	movl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RandomPerm__HQCopy,.Lfe9-RandomPerm__HQCopy
	.align 16
	.type	 RandomPerm__LQCopy,@function
RandomPerm__LQCopy:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_RandomPerm+436,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl 4(%ebx),%eax
	movl %eax,4(%edx)
	movl 8(%ebx),%eax
	movl %eax,8(%edx)
	movl 12(%ebx),%eax
	movl %eax,12(%edx)
	movl 16(%ebx),%eax
	movl %eax,16(%edx)
	movl 20(%ebx),%eax
	movl %eax,20(%edx)
	movl %edx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RandomPerm__LQCopy,.Lfe10-RandomPerm__LQCopy
	.align 16
	.type	 RandomPerm__Fill,@function
RandomPerm__Fill:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movl 4(%eax),%ecx
	decl %ecx
	jmp .L38
	.align 16
.L39:
	movl 8(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L40
	pushl $2130
	call _m3_fault
	.align 16
.L40:
	movl (%eax),%eax
	movl %edx,(%eax,%edx,4)
	incl %edx
.L38:
	cmpl %ecx,%edx
	jle .L39
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%eax
	addl $-2,%eax
	movl %eax,-4(%ebp)
	jmp .L42
	.align 16
.L43:
	movl 12(%ebp),%edi
	movl (%edi),%eax
	movl 4(%eax),%edx
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	decl %eax
	pushl %eax
	pushl %ebx
	pushl %edi
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	jge .L44
	pushl $2161
	call _m3_fault
	.align 16
.L44:
	movl %eax,%ecx
	cmpl %ebx,%ecx
	je .L45
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,%ecx
	jb .L46
	pushl $2178
	call _m3_fault
	.align 16
.L46:
	movl (%esi),%edx
	movl (%edx,%ecx,4),%edi
	movl %edi,-8(%ebp)
	cmpl %eax,%ebx
	jb .L48
	pushl $2178
	call _m3_fault
	.align 16
.L48:
	movl (%edx,%ebx,4),%eax
	movl %eax,(%edx,%ecx,4)
	cmpl %ebx,4(%esi)
	ja .L49
	pushl $2178
	call _m3_fault
	.align 16
.L49:
	movl (%esi),%eax
	movl -8(%ebp),%edi
	movl %edi,(%eax,%ebx,4)
.L45:
	incl %ebx
.L42:
	cmpl %ebx,-4(%ebp)
	jge .L43
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 RandomPerm__Fill,.Lfe11-RandomPerm__Fill
	.align 16
	.type	 M_RandomPerm_tead2198e_LINK,@function
M_RandomPerm_tead2198e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RandomPerm+828,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RandomPerm+360,%eax
	movl %eax,20(%edx)
	movl MM_RandomPerm+368,%eax
	movl %eax,16(%edx)
	movl MM_RandomPerm+392,%eax
	movl %eax,12(%edx)
	movl MM_RandomPerm+384,%eax
	movl %eax,8(%edx)
	movl MM_RandomPerm+380,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe12:
	.size	 M_RandomPerm_tead2198e_LINK,.Lfe12-M_RandomPerm_tead2198e_LINK
	.align 16
	.type	 M_RandomPerm_tc04b1d92_LINK,@function
M_RandomPerm_tc04b1d92_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RandomPerm+908,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RandomPerm+356,%eax
	movl %eax,20(%edx)
	movl MM_RandomPerm+364,%eax
	movl %eax,16(%edx)
	movl MM_RandomPerm+388,%eax
	movl %eax,12(%edx)
	movl MM_RandomPerm+376,%eax
	movl %eax,8(%edx)
	movl MM_RandomPerm+372,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe13:
	.size	 M_RandomPerm_tc04b1d92_LINK,.Lfe13-M_RandomPerm_tc04b1d92_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RandomPerm
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe14:
	.size	 _m3_fault,.Lfe14-_m3_fault
.globl MM_RandomPerm
.data
	.align 4
	.type	 MM_RandomPerm,@object
	.size	 MM_RandomPerm,964
MM_RandomPerm:
	.long MM_RandomPerm+660
	.long MM_RandomPerm+44
	.long MM_RandomPerm+420
	.long MM_RandomPerm+400
	.zero	4
	.long MM_RandomPerm+524
	.zero	28
	.long -1068819054
.byte 54
.byte 153
.byte 127
.byte 218
.byte 164
.byte 132
.byte 52
.byte 26
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RandomPerm+891
	.long MM_RandomPerm+895
	.long MM_RandomPerm+898
	.zero	4
	.long M_RandomPerm_tc04b1d92_LINK
	.long 180086514
	.zero	12
	.long MM_RandomPerm+916
	.long MM_RandomPerm+940
	.long MM_RandomPerm+148
	.zero	8
	.long -476616643
.byte 12
.byte 75
.byte 74
.byte 239
.byte 49
.byte 35
.byte 221
.byte 12
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RandomPerm+882
	.zero	4
	.long MM_RandomPerm+887
	.zero	32
	.long MM_RandomPerm+252
	.zero	8
	.long -355329650
.byte 202
.byte 132
.byte 216
.byte 241
.byte 68
.byte 157
.byte 10
.byte 27
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RandomPerm+813
	.zero	4
	.long MM_RandomPerm+819
	.zero	4
	.long M_RandomPerm_tead2198e_LINK
	.long -1174613895
	.zero	12
	.long MM_RandomPerm+836
	.long MM_RandomPerm+860
	.zero	4
	.long RandomPerm__HQInit
	.long RandomPerm__LQInit
	.long RandomPerm__HQNext
	.long RandomPerm__LQNext
	.long RandomPerm__HQSize
	.long RandomPerm__HQIndex
	.long RandomPerm__LQSize
	.long RandomPerm__LQIndex
	.long RandomPerm__HQCopy
	.long RandomPerm__LQCopy
	.long RandomPerm__Fill
	.long -1174613894
	.long -355329650
	.long 180086513
	.long -1068819054
	.zero	4
	.long MM_RandomPerm+428
	.long -476616643
	.long MM_RandomPerm+436
	.long 180086513
	.long MM_RandomPerm+828
	.long -1174613894
	.ascii	"Fill"
	.zero	1
	.ascii	"LQCopy"
	.zero	1
	.ascii	"HQCopy"
	.zero	1
	.ascii	"LQIndex"
	.zero	1
	.ascii	"LQSize"
	.zero	1
	.ascii	"HQIndex"
	.zero	1
	.ascii	"HQSize"
	.zero	1
	.ascii	"LQNext"
	.zero	1
	.ascii	"HQNext"
	.zero	1
	.ascii	"LQInit"
	.zero	1
	.ascii	"HQInit"
	.zero	4
	.long RandomPerm__Fill
	.long MM_RandomPerm+444
	.long MI_RandomPerm+384
	.long RandomPerm__LQCopy
	.long MM_RandomPerm+449
	.zero	4
	.long RandomPerm__HQCopy
	.long MM_RandomPerm+456
	.zero	4
	.long RandomPerm__LQIndex
	.long MM_RandomPerm+463
	.zero	4
	.long RandomPerm__LQSize
	.long MM_RandomPerm+471
	.zero	4
	.long RandomPerm__HQIndex
	.long MM_RandomPerm+478
	.zero	4
	.long RandomPerm__HQSize
	.long MM_RandomPerm+486
	.zero	4
	.long RandomPerm__LQNext
	.long MM_RandomPerm+493
	.zero	4
	.long RandomPerm__HQNext
	.long MM_RandomPerm+500
	.zero	4
	.long RandomPerm__LQInit
	.long MM_RandomPerm+507
	.zero	4
	.long RandomPerm__HQInit
	.long MM_RandomPerm+514
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/random/Common/RandomPerm.m3"
	.zero	1
.byte 18
.byte 18
.byte 14
.byte 14
.byte 18
.byte 0
.byte 6
.byte 10
.byte 5
.byte 3
.byte 23
.byte 7
.byte 25
.byte 23
	.zero	1
	.long MM_RandomPerm+908
	.long -355329650
	.ascii	"RandomPerm_^%#%^__0002M"
	.zero	1
	.ascii	"RandomPerm.LowQuality"
	.zero	1
.byte 24
.byte 1
.byte 18
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 3
.byte 18
.byte 18
.byte 4
.byte 0
.byte 41
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 3
.byte 23
.byte 16
.byte 61
.byte 104
.byte 151
.byte 227
	.zero	4
	.long -1068819054
	.ascii	"RandomPerm_^%#%^__0001M"
	.zero	1
	.ascii	"RandomPerm.HighQuality"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
