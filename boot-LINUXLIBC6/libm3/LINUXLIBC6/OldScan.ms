	.file	"OldScan.mc"
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
	.type	 OldScan__Bool,@function
OldScan__Bool:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $MM_OldScan+176
	pushl %ebx
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L2
	movl $1,%eax
	jmp .L1
	.align 16
.L2:
	pushl $MM_OldScan+196
	pushl %ebx
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L3
	xorl %eax,%eax
	jmp .L1
	.align 16
.L3:
	pushl %eax
	pushl $MI_OldScan+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L1:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 OldScan__Bool,.Lfe1-OldScan__Bool
	.align 16
	.type	 OldScan__Int,@function
OldScan__Int:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	leal -12(%ebp),%ecx
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-8(%ebp)
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	leal -20(%ebp),%ebx
	call *%eax
	movl %eax,-12(%ebp)
	pushl %ebx
	movl MM_OldScan+212,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,-8(%ebp)
	addl $12,%esp
	testl %eax,%eax
	jne .L5
	pushl $500
	call _m3_fault
	.align 16
.L5:
	pushl %esi
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	movl -8(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L6
	pushl $516
	call _m3_fault
	.align 16
.L6:
	pushl $10
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Convert+84,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	movl -4(%ebp),%ebx
	testl %ebx,%ebx
	jne .L7
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	pushl %ebx
	pushl $MI_OldScan+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L7:
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 OldScan__Int,.Lfe2-OldScan__Int
	.align 16
	.type	 OldScan__Unsigned,@function
OldScan__Unsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %esi
	leal -12(%ebp),%ecx
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-8(%ebp)
	movl %ecx,-20(%ebp)
	movl $1,-16(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	leal -20(%ebp),%ebx
	call *%eax
	movl %eax,-12(%ebp)
	pushl %ebx
	movl MM_OldScan+212,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,-8(%ebp)
	addl $12,%esp
	testl %eax,%eax
	jne .L9
	pushl $788
	call _m3_fault
	.align 16
.L9:
	pushl %esi
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	movl -8(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L10
	pushl $804
	call _m3_fault
	.align 16
.L10:
	pushl $10
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Convert+88,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
	movl -4(%ebp),%ebx
	testl %ebx,%ebx
	jne .L11
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	pushl %ebx
	pushl $MI_OldScan+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L11:
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 OldScan__Unsigned,.Lfe3-OldScan__Unsigned
	.align 16
	.type	 OldScan__Real,@function
OldScan__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L13:
	movl $MM_OldScan+220,-12(%ebp)
	movl $4,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-8(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,-28(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	leal -32(%ebp),%ebx
	call *%eax
	movl %eax,-24(%ebp)
	pushl %ebx
	movl MM_OldScan+212,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,-8(%ebp)
	addl $12,%esp
	testl %eax,%eax
	jne .L14
	pushl $1092
	call _m3_fault
	.align 16
.L14:
	pushl %esi
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	movl -8(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L15
	pushl $1108
	call _m3_fault
	.align 16
.L15:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Convert+92,%eax
	call *%eax
	fstps -36(%ebp)
	addl $8,%esp
	movl -4(%ebp),%ebx
	testl %ebx,%ebx
	jne .L16
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	pushl %ebx
	pushl $MI_OldScan+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L16:
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -36(%ebp)
.L17:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 OldScan__Real,.Lfe4-OldScan__Real
	.align 16
	.type	 OldScan__LongReal,@function
OldScan__LongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L19:
	movl $MM_OldScan+220,-12(%ebp)
	movl $4,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-8(%ebp)
	leal -24(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,-28(%ebp)
	pushl %esi
	movl MI_Text+56,%eax
	leal -32(%ebp),%ebx
	call *%eax
	movl %eax,-24(%ebp)
	pushl %ebx
	movl MM_OldScan+212,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,-8(%ebp)
	addl $12,%esp
	testl %eax,%eax
	jne .L20
	pushl $1412
	call _m3_fault
	.align 16
.L20:
	pushl %esi
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	movl -8(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L21
	pushl $1428
	call _m3_fault
	.align 16
.L21:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Convert+96,%eax
	call *%eax
	fstpl -40(%ebp)
	addl $8,%esp
	movl -4(%ebp),%ebx
	testl %ebx,%ebx
	jne .L22
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	pushl %ebx
	pushl $MI_OldScan+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $12,%esp
.L22:
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -40(%ebp)
.L23:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 OldScan__LongReal,.Lfe5-OldScan__LongReal
	.align 16
	.type	 OldScan__Char,@function
OldScan__Char:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L25
	pushl %eax
	pushl $MI_OldScan+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L25:
	pushl $0
	pushl %ebx
	movl MI_Text+52,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 OldScan__Char,.Lfe6-OldScan__Char
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_OldScan
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_OldScan
.data
	.align 4
	.type	 MM_OldScan,@object
	.size	 MM_OldScan,492
MM_OldScan:
	.long MM_OldScan+344
	.long MM_OldScan+44
	.long MM_OldScan+212
	.zero	8
	.long MM_OldScan+268
	.zero	28
	.long -1120871894
.byte 247
.byte 217
.byte 80
.byte 168
.byte 221
.byte 3
.byte 96
.byte 21
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_OldScan+487
	.zero	44
	.long OldScan__Bool
	.long OldScan__Int
	.long OldScan__Unsigned
	.long OldScan__Real
	.long OldScan__LongReal
	.long OldScan__Char
	.long 2
	.long MM_OldScan+184
	.long 5
	.ascii	"TRUE"
	.zero	4
	.long 2
	.long MM_OldScan+204
	.long 6
	.ascii	"FALSE"
	.zero	7
	.long -1120871894
	.long MI_OldScan+44
	.zero	4
	.ascii	"Char"
	.zero	1
	.ascii	"LongReal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"Unsigned"
	.zero	1
	.ascii	"Int"
	.zero	1
	.ascii	"Bool"
	.zero	4
	.long OldScan__Char
	.long MM_OldScan+228
	.long MI_OldScan+88
	.long OldScan__LongReal
	.long MM_OldScan+233
	.long MI_OldScan+84
	.long OldScan__Real
	.long MM_OldScan+242
	.long MI_OldScan+80
	.long OldScan__Unsigned
	.long MM_OldScan+247
	.long MI_OldScan+76
	.long OldScan__Int
	.long MM_OldScan+256
	.long MI_OldScan+72
	.long OldScan__Bool
	.long MM_OldScan+260
	.long MI_OldScan+68
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/fmtlex/OldScan.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
