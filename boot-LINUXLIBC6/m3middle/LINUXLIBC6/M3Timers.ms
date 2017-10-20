	.file	"M3Timers.mc"
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
	.type	 M3Timers__Start,@function
M3Timers__Start:
	pushl %ebp
	movl %esp,%ebp
	cmpl $0,MI_M3Timers+112
	jne .L1
	pushl $MM_M3Timers+56
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+44
	pushl $MM_M3Timers+84
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+48
	pushl $MM_M3Timers+124
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+52
	pushl $MM_M3Timers+164
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+56
	pushl $MM_M3Timers+204
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+60
	pushl $MM_M3Timers+240
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+64
	pushl $MM_M3Timers+260
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+68
	pushl $MM_M3Timers+292
	movl MI_ETimer+44,%eax
	call *%eax
	addl $32,%esp
	movl %eax,MI_M3Timers+72
	pushl $MM_M3Timers+328
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+76
	pushl $MM_M3Timers+368
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+80
	pushl $MM_M3Timers+404
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+84
	pushl $MM_M3Timers+432
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+88
	pushl $MM_M3Timers+476
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+92
	pushl $MM_M3Timers+516
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+96
	pushl $MM_M3Timers+544
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+100
	pushl $MM_M3Timers+580
	movl MI_ETimer+44,%eax
	call *%eax
	addl $32,%esp
	movl %eax,MI_M3Timers+104
	pushl $MM_M3Timers+612
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+108
	pushl $MM_M3Timers+664
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+112
	pushl $MM_M3Timers+704
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+116
	pushl $MM_M3Timers+740
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+120
	pushl $MM_M3Timers+776
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+124
	pushl $MM_M3Timers+808
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+128
	pushl $MM_M3Timers+848
	movl MI_ETimer+44,%eax
	call *%eax
	movl %eax,MI_M3Timers+132
	movl MI_ETimer+76,%eax
	call *%eax
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3Timers__Start,.Lfe1-M3Timers__Start
	.align 16
	.type	 M3Timers__Stop,@function
M3Timers__Stop:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl $0,MI_M3Timers+112
	je .L3
	pushl %eax
	movl MI_ETimer+60,%eax
	call *%eax
.L3:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3Timers__Stop,.Lfe2-M3Timers__Stop
.globl MM_M3Timers
.data
	.align 4
	.type	 MM_M3Timers,@object
	.size	 MM_M3Timers,1064
MM_M3Timers:
	.long MM_M3Timers+924
	.zero	16
	.long MM_M3Timers+896
	.zero	20
	.long M3Timers__Start
	.long M3Timers__Stop
	.long 2
	.long MM_M3Timers+64
	.long 14
	.ascii	"copying files"
	.zero	3
	.long 2
	.long MM_M3Timers+92
	.long 25
	.ascii	"removing temporary files"
	.zero	4
	.long 2
	.long MM_M3Timers+132
	.long 25
	.ascii	"indexing library archive"
	.zero	4
	.long 2
	.long MM_M3Timers+172
	.long 25
	.ascii	"building library archive"
	.zero	4
	.long 2
	.long MM_M3Timers+212
	.long 23
	.ascii	"exhaling new link info"
	.zero	2
	.long 2
	.long MM_M3Timers+248
	.long 8
	.ascii	"linking"
	.zero	1
	.long 2
	.long MM_M3Timers+268
	.long 19
	.ascii	"generating .M3LINK"
	.zero	2
	.long 2
	.long MM_M3Timers+300
	.long 21
	.ascii	"generating _m3main.c"
	.zero	4
	.long 2
	.long MM_M3Timers+336
	.long 28
	.ascii	"checking global consistency"
	.zero	1
	.long 2
	.long MM_M3Timers+376
	.long 22
	.ascii	"compiling C -> object"
	.zero	3
	.long 2
	.long MM_M3Timers+412
	.long 16
	.ascii	"patching object"
	.zero	1
	.long 2
	.long MM_M3Timers+440
	.long 29
	.ascii	"compiling assembly -> object"
	.zero	4
	.long 2
	.long MM_M3Timers+484
	.long 25
	.ascii	"compiling IL -> assembly"
	.zero	4
	.long 2
	.long MM_M3Timers+524
	.long 16
	.ascii	"  emitting code"
	.zero	1
	.long 2
	.long MM_M3Timers+552
	.long 23
	.ascii	"  typechecking modules"
	.zero	2
	.long 2
	.long MM_M3Timers+588
	.long 18
	.ascii	"  parsing modules"
	.zero	3
	.long 2
	.long MM_M3Timers+620
	.long 39
	.ascii	"  searching and opening imported files"
	.zero	2
	.long 2
	.long MM_M3Timers+672
	.long 25
	.ascii	"compiling Modula-3 -> IL"
	.zero	4
	.long 2
	.long MM_M3Timers+712
	.long 22
	.ascii	"merging new link info"
	.zero	3
	.long 2
	.long MM_M3Timers+748
	.long 23
	.ascii	"checking old link info"
	.zero	2
	.long 2
	.long MM_M3Timers+784
	.long 20
	.ascii	"checking timestamps"
	.zero	1
	.long 2
	.long MM_M3Timers+816
	.long 27
	.ascii	"getting derived timestamps"
	.zero	2
	.long 2
	.long MM_M3Timers+856
	.long 27
	.ascii	"inhaling library link info"
	.zero	2
	.ascii	"Stop"
	.zero	1
	.ascii	"Start"
	.zero	2
	.long M3Timers__Stop
	.long MM_M3Timers+884
	.long MI_M3Timers+140
	.long M3Timers__Start
	.long MM_M3Timers+889
	.long MI_M3Timers+136
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3Timers.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
