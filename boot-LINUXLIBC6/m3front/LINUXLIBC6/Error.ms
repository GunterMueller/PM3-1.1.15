	.file	"Error.mc"
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
	.type	 Error__Msg,@function
Error__Msg:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $2147483647
	call Error__Header
	pushl %ebx
	movl %eax,%esi
	pushl %esi
	call Error__Out
	pushl %esi
	call Error__Trailer
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Error__Msg,.Lfe1-Error__Msg
	.align 16
	.type	 Error__Int,@function
Error__Int:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl $2147483647
	call Error__Header
	pushl %ebx
	movl %eax,%edi
	pushl %edi
	call Error__Out
	pushl $MM_Error+316
	pushl %edi
	call Error__Out
	pushl $10
	pushl %esi
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl %edi
	call Error__Out
	addl $36,%esp
	pushl $MM_Error+332
	pushl %edi
	call Error__Out
	pushl %edi
	call Error__Trailer
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Error__Int,.Lfe2-Error__Int
	.align 16
	.type	 Error__ID,@function
Error__ID:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl $2147483647
	call Error__Header
	pushl %ebx
	movl %eax,%edi
	pushl %edi
	call Error__Out
	pushl $MM_Error+316
	pushl %edi
	call Error__Out
	pushl %esi
	pushl %edi
	call Error__OutS
	pushl $MM_Error+332
	pushl %edi
	call Error__Out
	addl $36,%esp
	pushl %edi
	call Error__Trailer
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Error__ID,.Lfe3-Error__ID
	.align 16
	.type	 Error__Txt,@function
Error__Txt:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl $2147483647
	call Error__Header
	pushl %ebx
	movl %eax,%edi
	pushl %edi
	call Error__Out
	pushl $MM_Error+348
	pushl %edi
	call Error__Out
	pushl %esi
	pushl %edi
	call Error__Out
	pushl %edi
	call Error__Trailer
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Error__Txt,.Lfe4-Error__Txt
	.align 16
	.type	 Error__QID,@function
Error__QID:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	pushl $2147483647
	call Error__Header
	pushl %ebx
	movl %eax,%esi
	pushl %esi
	call Error__Out
	pushl $MM_Error+316
	movl %esi,%edi
	pushl %esi
	call Error__Out
	movl 8(%ebp),%eax
	addl $20,%esp
	movl (%eax),%eax
	testl %eax,%eax
	je .L6
	pushl %eax
	pushl %esi
	call Error__OutS
	pushl $MM_Error+364
	pushl %esi
	call Error__Out
	addl $16,%esp
.L6:
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %edi
	call Error__OutS
	pushl $MM_Error+332
	pushl %edi
	call Error__Out
	pushl %edi
	call Error__Trailer
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Error__QID,.Lfe5-Error__QID
	.align 16
	.type	 Error__Info,@function
Error__Info:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $0
	call Error__Toss
	addl $4,%esp
	testl %eax,%eax
	jne .L7
	pushl %eax
	call Error__Header
	pushl %esi
	movl %eax,%ebx
	pushl %ebx
	call Error__Out
	pushl %ebx
	call Error__Trailer
.L7:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Error__Info,.Lfe6-Error__Info
	.align 16
	.type	 Error__Warn,@function
Error__Warn:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl %ebx
	call Error__Toss
	addl $4,%esp
	testl %eax,%eax
	jne .L9
	pushl %ebx
	call Error__Header
	pushl %esi
	movl %eax,%ebx
	pushl %ebx
	call Error__Out
	pushl %ebx
	call Error__Trailer
.L9:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Error__Warn,.Lfe7-Error__Warn
	.align 16
	.type	 Error__WarnID,@function
Error__WarnID:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	pushl %ebx
	call Error__Toss
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	pushl %ebx
	call Error__Header
	pushl %esi
	movl %eax,%ebx
	pushl %ebx
	call Error__Out
	pushl $MM_Error+316
	pushl %ebx
	call Error__Out
	pushl %edi
	pushl %ebx
	call Error__OutS
	pushl $MM_Error+332
	pushl %ebx
	call Error__Out
	addl $36,%esp
	pushl %ebx
	call Error__Trailer
.L11:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Error__WarnID,.Lfe8-Error__WarnID
	.align 16
	.type	 Error__Header,@function
Error__Header:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Error+180,%eax
	testl %eax,%eax
	je .L14
	movl %eax,%esi
	movl $0,MM_Error+180
	jmp .L15
	.align 16
.L14:
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,%esi
.L15:
	movl $3,%eax
	cmpl %ebx,%eax
	jle .L16
	movl %ebx,%eax
.L16:
	xorl %ebx,%ebx
	testl %eax,%eax
	jle .L17
	movl %eax,%ebx
.L17:
	cmpl $3,%ebx
	jbe .L19
	pushl $1921
	call _m3_fault
	.align 16
.L19:
	incl MM_Error+164(,%ebx,4)
	movl MM_Error+148(,%ebx,4),%eax
	pushl %eax
	pushl %esi
	call Error__Out
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Error__Header,.Lfe9-Error__Header
	.align 16
	.type	 Error__Trailer,@function
Error__Trailer:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-8(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Scanner+124,%eax
	call *%eax
	pushl %ebx
	movl MI_M3Buf+72,%eax
	call *%eax
	movl MI_Host+52,%edx
	movl %eax,%esi
	movl (%edx),%eax
	movl 4(%eax),%ecx
	pushl %esi
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	xorl %edi,%edi
	pushl %edx
	call *%ecx
	movl %ebx,MM_Error+180
	addl $28,%esp
	cmpl $0,MI_Host+60
	jl .L21
	movl %edi,%eax
.L23:
	addl MM_Error+164(,%eax,4),%edi
	incl %eax
	cmpl $3,%eax
	jle .L23
	cmpl %edi,MI_Host+60
	jg .L21
	pushl $2128
	call _m3_fault
	.align 16
.L21:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Error__Trailer,.Lfe10-Error__Trailer
	.align 16
	.type	 Error__Out,@function
Error__Out:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	testl %eax,%eax
	je .L27
	pushl %eax
	pushl %edx
	movl MI_M3Buf+52,%eax
	call *%eax
.L27:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Error__Out,.Lfe11-Error__Out
	.align 16
	.type	 Error__OutS,@function
Error__OutS:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Error__OutS,.Lfe12-Error__OutS
	.align 16
	.type	 Error__Count,@function
Error__Count:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Error+176,%eax
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl %eax,(%edx)
	movl $0,(%ecx)
	movl $1,%edx
.L31:
	movl MM_Error+164(,%edx,4),%eax
	addl %eax,(%ecx)
	incl %edx
	cmpl $2,%edx
	jle .L31
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Error__Count,.Lfe13-Error__Count
	.align 16
	.type	 Error__IgnoreWarning,@function
Error__IgnoreWarning:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Error+376,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L35
	pushl $2548
	call _m3_fault
	.align 16
.L35:
	movl %ebx,(%edx)
	movl MM_Error+184,%eax
	movl %eax,4(%edx)
	movl %edx,MM_Error+184
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Error__IgnoreWarning,.Lfe14-Error__IgnoreWarning
	.align 16
	.type	 Error__Toss,@function
Error__Toss:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Host+64,%eax
	cmpl %eax,8(%ebp)
	jl .L46
	movl MI_Scanner+88,%edx
	movl MM_Error+184,%eax
	jmp .L39
	.align 16
.L40:
	cmpl %edx,(%eax)
	jne .L43
.L46:
	movl $1,%eax
	jmp .L45
	.align 16
.L43:
	movl 4(%eax),%eax
.L39:
	testl %eax,%eax
	jne .L40
.L45:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Error__Toss,.Lfe15-Error__Toss
	.align 16
	.type	 Error__Reset,@function
Error__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Error+184
	xorl %eax,%eax
.L48:
	movl $0,MM_Error+164(,%eax,4)
	incl %eax
	cmpl $3,%eax
	jle .L48
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Error__Reset,.Lfe16-Error__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Error
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe17:
	.size	 _m3_fault,.Lfe17-_m3_fault
.globl MM_Error
.data
	.align 4
	.type	 MM_Error,@object
	.size	 MM_Error,852
MM_Error:
	.long MM_Error+677
	.long MM_Error+44
	.long MM_Error+376
	.zero	8
	.long MM_Error+476
	.zero	4
	.long MM_Error+672
	.long MM_Error+672
	.zero	16
	.long -79071826
.byte 36
.byte 82
.byte 188
.byte 236
.byte 138
.byte 39
.byte 245
.byte 23
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_Error+818
	.long MM_Error+821
	.long MM_Error+824
	.zero	28
	.long MM_Error+833
	.zero	4
	.long MM_Error+256
	.long MM_Error+276
	.long MM_Error+276
	.long MM_Error+300
	.zero	24
	.long Error__Header
	.long Error__Trailer
	.long Error__Out
	.long Error__OutS
	.long Error__Toss
	.long Error__Msg
	.long Error__Int
	.long Error__ID
	.long Error__QID
	.long Error__Txt
	.long Error__Warn
	.long Error__WarnID
	.long Error__IgnoreWarning
	.long Error__Info
	.long Error__Count
	.long Error__Reset
	.long 2
	.long MM_Error+264
	.long 7
	.ascii	"info: "
	.zero	2
	.long 2
	.long MM_Error+284
	.long 10
	.ascii	"warning: "
	.zero	3
	.long 2
	.long MM_Error+308
	.long 1
	.zero	4
	.long 2
	.long MM_Error+324
	.long 3
	.ascii	" ("
	.zero	2
	.long 2
	.long MM_Error+340
	.long 2
	.ascii	")"
	.zero	3
	.long 2
	.long MM_Error+356
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_Error+372
	.long 2
	.ascii	"."
	.zero	7
	.long -79071826
	.ascii	"Reset"
	.zero	1
	.ascii	"Toss"
	.zero	1
	.ascii	"IgnoreWarning"
	.zero	1
	.ascii	"Count"
	.zero	1
	.ascii	"OutS"
	.zero	1
	.ascii	"Out"
	.zero	1
	.ascii	"Trailer"
	.zero	1
	.ascii	"Header"
	.zero	1
	.ascii	"WarnID"
	.zero	1
	.ascii	"Warn"
	.zero	1
	.ascii	"Info"
	.zero	1
	.ascii	"QID"
	.zero	1
	.ascii	"Txt"
	.zero	1
	.ascii	"ID"
	.zero	1
	.ascii	"Int"
	.zero	1
	.ascii	"Msg"
	.zero	2
	.long Error__Reset
	.long MM_Error+384
	.long MI_Error+84
	.long Error__Toss
	.long MM_Error+390
	.zero	4
	.long Error__IgnoreWarning
	.long MM_Error+395
	.long MI_Error+72
	.long Error__Count
	.long MM_Error+409
	.long MI_Error+80
	.long Error__OutS
	.long MM_Error+415
	.zero	4
	.long Error__Out
	.long MM_Error+420
	.zero	4
	.long Error__Trailer
	.long MM_Error+424
	.zero	4
	.long Error__Header
	.long MM_Error+432
	.zero	4
	.long Error__WarnID
	.long MM_Error+439
	.long MI_Error+68
	.long Error__Warn
	.long MM_Error+446
	.long MI_Error+64
	.long Error__Info
	.long MM_Error+451
	.long MI_Error+76
	.long Error__QID
	.long MM_Error+456
	.long MI_Error+56
	.long Error__Txt
	.long MM_Error+460
	.long MI_Error+60
	.long Error__ID
	.long MM_Error+464
	.long MI_Error+52
	.long Error__Int
	.long MM_Error+467
	.long MI_Error+48
	.long Error__Msg
	.long MM_Error+471
	.long MI_Error+44
	.zero	4
.byte 42
.byte 180
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Error.m3"
	.zero	1
.byte 14
.byte 4
.byte 0
.byte 37
.byte 4
.byte 0
.byte 3
.byte 15
.byte 2
.byte 7
.byte 16
.byte 174
.byte 117
.byte 73
.byte 251
	.ascii	"Error.IgnoreCell"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
