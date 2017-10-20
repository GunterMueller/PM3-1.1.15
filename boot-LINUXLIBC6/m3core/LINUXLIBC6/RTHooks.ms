	.file	"RTHooks.mc"
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
	.type	 RTHooks__Raise,@function
RTHooks__Raise:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_RTException+356,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHooks__Raise,.Lfe1-RTHooks__Raise
	.align 16
	.type	 RTHooks__ResumeRaise,@function
RTHooks__ResumeRaise:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,%edx
	testl %edx,%edx
	jne .L4
	pushl $1140
	call _m3_fault
	.align 16
.L4:
	movl 4(%edx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_RTException+360,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHooks__ResumeRaise,.Lfe2-RTHooks__ResumeRaise
	.align 16
	.type	 RTHooks__Concat,@function
RTHooks__Concat:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_Text+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHooks__Concat,.Lfe3-RTHooks__Concat
	.align 16
	.type	 RTHooks__ReportFault,@function
RTHooks__ReportFault:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	movl $MM_RTHooks+3024,%edx
	pushl %ebx
	movl 12(%ebp),%eax
	movl %eax,%esi
	shrl $4,%esi
	andl $15,%eax
	movl 8(%ebp),%ecx
	xorl %ebx,%ebx
	testl %eax,%eax
	jl .L7
	cmpl $9,%eax
	jg .L7
	jbe .L8
	pushl $1681
	call _m3_fault
	.align 16
.L8:
	movl MM_RTHooks+296(,%eax,4),%edx
.L7:
	testl %ecx,%ecx
	je .L9
	movl (%ecx),%ebx
.L9:
	pushl $0
	pushl $0
	pushl %edx
	pushl %esi
	pushl %ebx
	movl MI_RTMisc+64,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHooks__ReportFault,.Lfe4-RTHooks__ReportFault
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHooks
	call RTHooks__ReportFault
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_RTHooks
.data
	.align 4
	.type	 MM_RTHooks,@object
	.size	 MM_RTHooks,3328
MM_RTHooks:
	.long MM_RTHooks+3147
	.long MM_RTHooks+192
	.zero	12
	.long MM_RTHooks+3088
	.zero	4
	.long MM_RTHooks+3140
	.long MM_RTHooks+3140
	.zero	8
	.long MM_RTHooks+356
	.long MM_RTHooks+420
	.long MM_RTHooks+436
	.long MM_RTHooks+524
	.long MM_RTHooks+612
	.long MM_RTHooks+700
	.long MM_RTHooks+784
	.long MM_RTHooks+868
	.long MM_RTHooks+420
	.long MM_RTHooks+932
	.long MM_RTHooks+1020
	.long MM_RTHooks+1108
	.long MM_RTHooks+420
	.long MM_RTHooks+1172
	.long MM_RTHooks+1256
	.long MM_RTHooks+420
	.long MM_RTHooks+1300
	.long MM_RTHooks+1376
	.long MM_RTHooks+1460
	.long MM_RTHooks+1544
	.long MM_RTHooks+1628
	.long MM_RTHooks+1708
	.long MM_RTHooks+1788
	.long MM_RTHooks+420
	.long MM_RTHooks+1840
	.long MM_RTHooks+1916
	.long MM_RTHooks+1972
	.long MM_RTHooks+2056
	.long MM_RTHooks+2144
	.long MM_RTHooks+2232
	.long MM_RTHooks+2316
	.long MM_RTHooks+2404
	.long MM_RTHooks+2488
	.long MM_RTHooks+420
	.long MM_RTHooks+420
	.long MM_RTHooks+2516
	.long MM_RTHooks+2592
	.zero	8
	.long -578117467
.byte 185
.byte 93
.byte 203
.byte 213
.byte 28
.byte 253
.byte 65
.byte 8
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_RTHooks+3299
	.zero	36
	.long MM_RTHooks+3302
	.zero	4
	.long MM_RTHooks+2648
	.long MM_RTHooks+2676
	.long MM_RTHooks+2708
	.long MM_RTHooks+2744
	.long MM_RTHooks+2784
	.long MM_RTHooks+2824
	.long MM_RTHooks+2852
	.long MM_RTHooks+2896
	.long MM_RTHooks+2944
	.long MM_RTHooks+2996
	.long RTHooks__Raise
	.long RTHooks__ResumeRaise
	.long RTHooks__Concat
	.long RTHooks__ReportFault
	.long 2
	.long MM_RTHooks+364
	.long 50
	.ascii	"              SRC Modula-3 Non-commercial License"
	.zero	3
	.long 2
	.long MM_RTHooks+428
	.long 1
	.zero	4
	.long 2
	.long MM_RTHooks+444
	.long 74
	.ascii	"SRC Modula-3 is distributed by Digital Equipment Corporation"
	.ascii	" ('DIGITAL'),"
	.zero	3
	.long 2
	.long MM_RTHooks+532
	.long 75
	.ascii	"a corporation of the Commonwealth of Massachusetts.  DIGITAL"
	.ascii	" hereby grants"
	.zero	2
	.long 2
	.long MM_RTHooks+620
	.long 73
	.ascii	"to you a non-transferable, non-exclusive, royalty free world"
	.ascii	"wide license"
	.zero	4
	.long 2
	.long MM_RTHooks+708
	.long 69
	.ascii	"to use, copy, modify, prepare integrated and derivative work"
	.ascii	"s of and"
	.zero	4
	.long 2
	.long MM_RTHooks+792
	.long 69
	.ascii	"distribute SRC Modula-3 for non-commercial purposes, subject"
	.ascii	" to your"
	.zero	4
	.long 2
	.long MM_RTHooks+876
	.long 49
	.ascii	"agreement to the following terms and conditions:"
	.zero	4
	.long 2
	.long MM_RTHooks+940
	.long 74
	.ascii	"  - The SRC Modula-3 Non-commercial License shall be include"
	.ascii	"d in the code"
	.zero	3
	.long 2
	.long MM_RTHooks+1028
	.long 73
	.ascii	"    and must be retained in all copies of SRC Modula-3 (full"
	.ascii	" or partial;"
	.zero	4
	.long 2
	.long MM_RTHooks+1116
	.long 51
	.ascii	"    original, modified, derivative, or otherwise):"
	.zero	2
	.long 2
	.long MM_RTHooks+1180
	.long 71
	.ascii	"  - You acquire no ownership right, title, or interest in SR"
	.ascii	"C Modula-3"
	.zero	2
	.long 2
	.long MM_RTHooks+1264
	.long 31
	.ascii	"    except as provided herein."
	.zero	2
	.long 2
	.long MM_RTHooks+1308
	.long 61
	.ascii	"  - You agree to make available to DIGITAL all improvements,"
	.zero	4
	.long 2
	.long MM_RTHooks+1384
	.long 70
	.ascii	"    enhancements, extensions, and modifications to SRC Modul"
	.ascii	"a-3 which"
	.zero	3
	.long 2
	.long MM_RTHooks+1468
	.long 71
	.ascii	"    are made by you or your sublicensees and distributed to "
	.ascii	"others and"
	.zero	2
	.long 2
	.long MM_RTHooks+1552
	.long 71
	.ascii	"    hereby grant to DIGITAL an irrevocable, fully paid, worl"
	.ascii	"dwide, and"
	.zero	2
	.long 2
	.long MM_RTHooks+1636
	.long 67
	.ascii	"    non-exclusive license under your intellectual property r"
	.ascii	"ights,"
	.zero	2
	.long 2
	.long MM_RTHooks+1716
	.long 67
	.ascii	"    including patent and copyright, to use and sublicense, w"
	.ascii	"ithout"
	.zero	2
	.long 2
	.long MM_RTHooks+1796
	.long 37
	.ascii	"  limititation, these modifications."
	.zero	4
	.long 2
	.long MM_RTHooks+1848
	.long 63
	.ascii	"  - SRC Modula-3 is a research work which is provided 'as is"
	.ascii	"',"
	.zero	2
	.long 2
	.long MM_RTHooks+1924
	.long 42
	.ascii	"    and  DIGITAL disclaims all warranties"
	.zero	3
	.long 2
	.long MM_RTHooks+1980
	.long 70
	.ascii	"    with regard to this software, including all implied warr"
	.ascii	"anties of"
	.zero	3
	.long 2
	.long MM_RTHooks+2064
	.long 74
	.ascii	"    merchantability and fitness of purpose.  In no event sha"
	.ascii	"ll DIGITAL be"
	.zero	3
	.long 2
	.long MM_RTHooks+2152
	.long 74
	.ascii	"    liable for any special, direct, indirect, or consequenti"
	.ascii	"al damages or"
	.zero	3
	.long 2
	.long MM_RTHooks+2240
	.long 72
	.ascii	"    any damages whatsoever resulting from loss of use, data "
	.ascii	"or profits,"
	.zero	1
	.long 2
	.long MM_RTHooks+2324
	.long 75
	.ascii	"    whether in an action of contract, negligence or other to"
	.ascii	"rtious action,"
	.zero	2
	.long 2
	.long MM_RTHooks+2412
	.long 72
	.ascii	"    arising out of or in connection with the use or performa"
	.ascii	"nce of this"
	.zero	1
	.long 2
	.long MM_RTHooks+2496
	.long 15
	.ascii	"    software. "
	.zero	2
	.long 2
	.long MM_RTHooks+2524
	.long 63
	.ascii	"              Copyright (C) 1990 Digital Equipment Corporati"
	.ascii	"on"
	.zero	2
	.long 2
	.long MM_RTHooks+2600
	.long 43
	.ascii	"                       All Rights Reserved"
	.zero	2
	.long 2
	.long MM_RTHooks+2656
	.long 14
	.ascii	"ASSERT failed"
	.zero	3
	.long 2
	.long MM_RTHooks+2684
	.long 19
	.ascii	"Value out of range"
	.zero	2
	.long 2
	.long MM_RTHooks+2716
	.long 23
	.ascii	"Subscript out of range"
	.zero	2
	.long 2
	.long MM_RTHooks+2752
	.long 26
	.ascii	"Incompatible array shapes"
	.zero	3
	.long 2
	.long MM_RTHooks+2792
	.long 27
	.ascii	"Attempt to dereference NIL"
	.zero	2
	.long 2
	.long MM_RTHooks+2832
	.long 14
	.ascii	"NARROW failed"
	.zero	3
	.long 2
	.long MM_RTHooks+2860
	.long 32
	.ascii	"Function did not return a value"
	.zero	1
	.long 2
	.long MM_RTHooks+2904
	.long 34
	.ascii	"Unhandled value in CASE statement"
	.zero	3
	.long 2
	.long MM_RTHooks+2952
	.long 37
	.ascii	"Unhandled type in TYPECASE statement"
	.zero	4
	.long 2
	.long MM_RTHooks+3004
	.long 15
	.ascii	"Stack overflow"
	.zero	2
	.long 2
	.long MM_RTHooks+3032
	.long 16
	.ascii	"bad error code!"
	.zero	1
	.ascii	"ReportFault"
	.zero	1
	.ascii	"Concat"
	.zero	1
	.ascii	"ResumeRaise"
	.zero	1
	.ascii	"Raise"
	.zero	4
	.long RTHooks__ReportFault
	.long MM_RTHooks+3048
	.long MI_RTHooks+108
	.long RTHooks__Concat
	.long MM_RTHooks+3060
	.long MI_RTHooks+76
	.long RTHooks__ResumeRaise
	.long MM_RTHooks+3067
	.long MI_RTHooks+56
	.long RTHooks__Raise
	.long MM_RTHooks+3079
	.long MI_RTHooks+52
	.zero	4
.byte 42
.byte 44
.byte 1
.byte 4
.byte 26
.byte 37
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHooks.m3"
	.zero	1
.byte 5
.byte 5
.byte 0
	.ascii	"RTHooks.ResumeRaise.Info"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
