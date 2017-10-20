	.file	"RTMisc.mc"
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
	.type	 RTMisc__Copy,@function
RTMisc__Copy:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	pushl %edx
	pushl %eax
	pushl %ecx
	call memcpy
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTMisc__Copy,.Lfe1-RTMisc__Copy
	.align 16
	.type	 RTMisc__Zero,@function
RTMisc__Zero:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %edx
	call memset
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTMisc__Zero,.Lfe2-RTMisc__Zero
	.align 16
	.type	 RTMisc__Align,@function
RTMisc__Align:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call RTMisc__Upper
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTMisc__Align,.Lfe3-RTMisc__Align
	.align 16
	.type	 RTMisc__Upper,@function
RTMisc__Upper:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
.L5:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	leal -1(%ebx,%edx),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	imull %ebx,%eax
.L6:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTMisc__Upper,.Lfe4-RTMisc__Upper
	.align 16
	.type	 RTMisc__FatalError,@function
RTMisc__FatalError:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%ecx
	movl 20(%ebp),%edx
	movl 24(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	call RTMisc__StartError
	addl $12,%esp
	testl %ebx,%ebx
	je .L8
	pushl $MM_RTMisc+88
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $MM_RTMisc+116
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_RTIO+60,%eax
	call *%eax
	addl $20,%esp
.L8:
	call RTMisc__EndError
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTMisc__FatalError,.Lfe5-RTMisc__FatalError
	.align 16
	.type	 RTMisc__FatalErrorS,@function
RTMisc__FatalErrorS:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%ecx
	movl 20(%ebp),%edx
	movl 24(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	call RTMisc__StartError
	addl $12,%esp
	testl %ebx,%ebx
	je .L10
	pushl $MM_RTMisc+88
	movl MI_RTIO+56,%eax
	call *%eax
	pushl %ebx
	movl MI_RTIO+52,%eax
	call *%eax
	pushl $MM_RTMisc+116
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_RTIO+60,%eax
	call *%eax
	addl $20,%esp
.L10:
	call RTMisc__EndError
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTMisc__FatalErrorS,.Lfe6-RTMisc__FatalErrorS
	.align 16
	.type	 RTMisc__FatalErrorI,@function
RTMisc__FatalErrorI:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $0
	pushl $0
	pushl %eax
	call RTMisc__StartError
	pushl $0
	pushl %ebx
	movl MI_RTIO+60,%eax
	call *%eax
	call RTMisc__EndError
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTMisc__FatalErrorI,.Lfe7-RTMisc__FatalErrorI
	.align 16
	.type	 RTMisc__FatalErrorPC,@function
RTMisc__FatalErrorPC:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	movl 20(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	pushl %edx
	pushl %ecx
	call RTMisc__StartError
	movl MI_RTHeapRep+412,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L13
	testl %ebx,%ebx
	je .L13
	pushl $MM_RTMisc+140
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+64,%eax
	call *%eax
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_RTProcedureSRC+48,%eax
	call *%eax
	subl -12(%ebp),%ebx
	addl $28,%esp
	testl %ebx,%ebx
	jl .L13
	cmpl $2047,%ebx
	jg .L13
	cmpl $0,-4(%ebp)
	je .L16
	pushl $MM_RTMisc+168
	movl MI_RTIO+56,%eax
	call *%eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	je .L16
	pushl $MM_RTMisc+184
	movl MI_RTIO+56,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_RTIO+64,%eax
	call *%eax
	addl $12,%esp
.L16:
	cmpl $0,-8(%ebp)
	je .L13
	pushl $MM_RTMisc+200
	movl MI_RTIO+56,%eax
	call *%eax
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RTIO+52,%eax
	call *%eax
	addl $8,%esp
.L13:
	call RTMisc__EndError
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTMisc__FatalErrorPC,.Lfe8-RTMisc__FatalErrorPC
	.align 16
	.type	 RTMisc__StartError,@function
RTMisc__StartError:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	pushl $MM_RTMisc+220
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	je .L20
	pushl %ebx
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L20:
	testl %esi,%esi
	je .L21
	pushl %esi
	movl MI_RTIO+56,%eax
	call *%eax
	addl $4,%esp
.L21:
	testl %edi,%edi
	je .L19
	pushl %edi
	movl MI_RTIO+56,%eax
	call *%eax
.L19:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTMisc__StartError,.Lfe9-RTMisc__StartError
	.align 16
	.type	 RTMisc__EndError,@function
RTMisc__EndError:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_RTMisc+268
	movl MI_RTIO+56,%eax
	call *%eax
	movl MI_RTIO+72,%eax
	call *%eax
	pushl $0
	movl MI_RTProcess+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTMisc__EndError,.Lfe10-RTMisc__EndError
.globl MM_RTMisc
.data
	.align 4
	.type	 MM_RTMisc,@object
	.size	 MM_RTMisc,652
MM_RTMisc:
	.long MM_RTMisc+500
	.zero	16
	.long MM_RTMisc+376
	.zero	20
	.long RTMisc__StartError
	.long RTMisc__EndError
	.long RTMisc__Copy
	.long RTMisc__Zero
	.long RTMisc__Align
	.long RTMisc__Upper
	.long RTMisc__FatalError
	.long RTMisc__FatalErrorS
	.long RTMisc__FatalErrorI
	.long RTMisc__FatalErrorPC
	.long 2
	.long MM_RTMisc+96
	.long 15
	.ascii	"\n***    file \""
	.zero	2
	.long 2
	.long MM_RTMisc+124
	.long 9
	.ascii	"\", line "
	.zero	4
	.long 2
	.long MM_RTMisc+148
	.long 14
	.ascii	"\n***    pc = "
	.zero	3
	.long 2
	.long MM_RTMisc+176
	.long 4
	.ascii	" = "
	.zero	1
	.long 2
	.long MM_RTMisc+192
	.long 4
	.ascii	" + "
	.zero	1
	.long 2
	.long MM_RTMisc+208
	.long 5
	.ascii	" in "
	.zero	4
	.long 2
	.long MM_RTMisc+228
	.long 33
	.ascii	"\n\n***\n*** runtime error:\n***    "
	.zero	4
	.long 2
	.long MM_RTMisc+276
	.long 7
	.ascii	"\n***\n\n"
	.zero	2
	.ascii	"EndError"
	.zero	1
	.ascii	"StartError"
	.zero	1
	.ascii	"FatalErrorPC"
	.zero	1
	.ascii	"FatalErrorI"
	.zero	1
	.ascii	"FatalErrorS"
	.zero	1
	.ascii	"FatalError"
	.zero	1
	.ascii	"Upper"
	.zero	1
	.ascii	"Align"
	.zero	1
	.ascii	"Zero"
	.zero	1
	.ascii	"Copy"
	.zero	3
	.long RTMisc__EndError
	.long MM_RTMisc+284
	.zero	4
	.long RTMisc__StartError
	.long MM_RTMisc+293
	.zero	4
	.long RTMisc__FatalErrorPC
	.long MM_RTMisc+304
	.long MI_RTMisc+72
	.long RTMisc__FatalErrorI
	.long MM_RTMisc+317
	.long MI_RTMisc+68
	.long RTMisc__FatalErrorS
	.long MM_RTMisc+329
	.long MI_RTMisc+64
	.long RTMisc__FatalError
	.long MM_RTMisc+341
	.long MI_RTMisc+60
	.long RTMisc__Upper
	.long MM_RTMisc+352
	.long MI_RTMisc+56
	.long RTMisc__Align
	.long MM_RTMisc+358
	.long MI_RTMisc+52
	.long RTMisc__Zero
	.long MM_RTMisc+364
	.long MI_RTMisc+48
	.long RTMisc__Copy
	.long MM_RTMisc+369
	.long MI_RTMisc+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTMisc.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
