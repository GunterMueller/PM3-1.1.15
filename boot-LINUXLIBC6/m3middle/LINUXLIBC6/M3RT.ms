	.file	"M3RT.mc"
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
	.type	 M3RT__Init,@function
M3RT__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_Target+104,%esi
	movl MI_Target+68,%ebx
	movl MI_Target+608,%edx
	movl $0,MI_M3RT+44
	movl %esi,MI_M3RT+48
	leal (%ebx,%esi),%edi
	movl %edi,-8(%ebp)
	movl %edi,MI_M3RT+52
	movl -8(%ebp),%ecx
	addl %ebx,%ecx
	movl %ecx,MI_M3RT+56
	movl $0,MI_M3RT+60
	movl %edx,MI_M3RT+64
	movl %edx,%eax
	addl %edx,%eax
	movl %eax,MI_M3RT+68
	addl %edx,%eax
	movl %eax,MI_M3RT+72
	addl %eax,%edx
	movl %ebx,%eax
	cmpl %ebx,%edx
	jle .L2
	movl %edx,%eax
.L2:
	testl %eax,%eax
	jge .L4
	pushl $449
	call _m3_fault
	.align 16
.L4:
	movl %eax,MI_M3RT+76
	addl %ebx,%eax
	movl %eax,MI_M3RT+80
	addl %ebx,%eax
	movl %eax,MI_M3RT+84
	addl %ebx,%eax
	movl %eax,MI_M3RT+88
	addl %esi,%eax
	movl %eax,MI_M3RT+92
	movl $0,MI_M3RT+96
	movl %ebx,MI_M3RT+100
	movl %ebx,%edi
	addl %ebx,%edi
	movl %edi,-4(%ebp)
	movl %edi,MI_M3RT+104
	movl $0,MI_M3RT+108
	movl %ebx,MI_M3RT+112
	movl -8(%ebp),%edi
	movl %edi,MI_M3RT+116
	movl %edi,MI_M3RT+120
	movl %ecx,MI_M3RT+124
	leal (%ebx,%ecx),%eax
	movl %eax,MI_M3RT+128
	movl MI_Target+792,%edx
	pushl %edx
	addl %ebx,%eax
	pushl %eax
	call M3RT__RoundUp
	addl $8,%esp
	testl %eax,%eax
	jge .L5
	pushl $769
	call _m3_fault
	.align 16
.L5:
	movl %eax,MI_M3RT+132
	addl MI_Target+788,%eax
	movl %eax,MI_M3RT+136
	movl MI_Target+64,%ecx
	movl MI_Target+792,%eax
	cmpl %eax,%ecx
	jle .L6
	movl %ecx,%eax
.L6:
	testl %eax,%eax
	jge .L8
	pushl $817
	call _m3_fault
	.align 16
.L8:
	movl %eax,MI_M3RT+140
	movl MI_M3RT+116,%edx
	movl %edx,MI_M3RT+144
	leal (%ebx,%edx),%eax
	movl %eax,MI_M3RT+148
	leal (%ebx,%eax),%edi
	movl %edi,MI_M3RT+152
	movl %edx,MI_M3RT+156
	movl %eax,MI_M3RT+160
	movl %edx,MI_M3RT+164
	movl %eax,MI_M3RT+168
	movl $0,MI_M3RT+172
	movl %esi,MI_M3RT+176
	movl %esi,%edx
	addl %esi,%edx
	movl %edx,MI_M3RT+180
	leal (%esi,%edx),%eax
	movl %eax,MI_M3RT+184
	addl $64,%eax
	movl %eax,MI_M3RT+188
	addl %esi,%eax
	movl %eax,MI_M3RT+192
	addl %esi,%eax
	movl %eax,MI_M3RT+196
	addl %esi,%eax
	movl %eax,MI_M3RT+200
	addl %esi,%eax
	movl %eax,MI_M3RT+204
	addl %esi,%eax
	movl %eax,MI_M3RT+208
	addl %esi,%eax
	movl %eax,MI_M3RT+212
	addl %esi,%eax
	movl %eax,MI_M3RT+216
	addl %esi,%eax
	movl %eax,MI_M3RT+220
	addl %ebx,%eax
	movl %eax,MI_M3RT+224
	addl %ebx,%eax
	movl %eax,MI_M3RT+228
	addl %ebx,%eax
	movl %eax,MI_M3RT+232
	addl %ebx,%eax
	movl %eax,MI_M3RT+236
	addl %ebx,%eax
	movl %eax,MI_M3RT+240
	addl %ebx,%eax
	movl %eax,MI_M3RT+244
	addl %esi,%eax
	movl %eax,MI_M3RT+248
	addl %ebx,%eax
	movl %eax,MI_M3RT+252
	addl %ebx,%eax
	movl %eax,MI_M3RT+256
	addl %ebx,%eax
	movl %eax,MI_M3RT+260
	addl %ebx,%eax
	movl %eax,MI_M3RT+264
	addl %ebx,%eax
	movl %eax,MI_M3RT+268
	addl %ebx,%eax
	movl %eax,MI_M3RT+272
	movl MI_Target+100,%eax
	cmpl %eax,%ecx
	jle .L9
	movl %ecx,%eax
.L9:
	testl %eax,%eax
	jge .L11
	pushl $1489
	call _m3_fault
	.align 16
.L11:
	movl %eax,MI_M3RT+276
	movl $0,MI_M3RT+280
	movl %esi,MI_M3RT+284
	movl %edx,MI_M3RT+288
	movl $0,MI_M3RT+292
	movl %ebx,MI_M3RT+296
	movl %ebx,MI_M3RT+300
	movl -8(%ebp),%edi
	movl %edi,MI_M3RT+304
	movl $0,MI_M3RT+308
	movl %ebx,MI_M3RT+312
	movl -4(%ebp),%edi
	movl %edi,MI_M3RT+316
	movl -4(%ebp),%edx
	addl %ebx,%edx
	movl %edx,MI_M3RT+320
	leal (%ebx,%edx),%eax
	movl %eax,MI_M3RT+324
	addl %ebx,%eax
	movl %eax,MI_M3RT+328
	addl %ebx,%eax
	movl %eax,MI_M3RT+332
	addl %ebx,%eax
	movl %eax,MI_M3RT+336
	addl %ebx,%eax
	movl %eax,MI_M3RT+340
	addl %ebx,%eax
	movl %eax,MI_M3RT+344
	addl %ebx,%eax
	movl %eax,MI_M3RT+348
	addl %ebx,%eax
	movl %eax,MI_M3RT+352
	movl $0,MI_M3RT+356
	movl %ebx,MI_M3RT+360
	movl %edi,MI_M3RT+364
	leal -20(%ebp),%esp
	movl %edx,MI_M3RT+368
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3RT__Init,.Lfe1-M3RT__Init
	.align 16
	.type	 M3RT__RoundUp,@function
M3RT__RoundUp:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
.L13:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	leal -1(%ebx,%edx),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	imull %ebx,%eax
.L14:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3RT__RoundUp,.Lfe2-M3RT__RoundUp
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3RT
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe3:
	.size	 _m3_fault,.Lfe3-_m3_fault
.globl MM_M3RT
.data
	.align 4
	.type	 MM_M3RT,@object
	.size	 MM_M3RT,232
MM_M3RT:
	.long MM_M3RT+96
	.zero	16
	.long MM_M3RT+68
	.zero	20
	.long M3RT__RoundUp
	.long M3RT__Init
	.ascii	"RoundUp"
	.zero	1
	.ascii	"Init"
	.zero	4
	.long M3RT__RoundUp
	.long MM_M3RT+52
	.zero	4
	.long M3RT__Init
	.long MM_M3RT+60
	.long MI_M3RT+372
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3RT.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
