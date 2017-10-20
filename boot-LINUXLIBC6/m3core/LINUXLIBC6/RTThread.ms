	.file	"RTThread.mc"
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
	.type	 RTThread__SP,@function
RTThread__SP:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 16(%eax),%eax
	ret
.Lfe1:
	.size	 RTThread__SP,.Lfe1-RTThread__SP
	.align 16
	.type	 RTThread__NewStack,@function
RTThread__NewStack:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L3:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	cmpl $0,MM_RTThread+44
	jne .L4
	call getpagesize
	testl %eax,%eax
	jge .L5
	pushl $417
	call _m3_fault
	.align 16
.L5:
	movl %eax,MM_RTThread+44
	sarl $2,%eax
	addl %eax,%eax
	jns .L6
	pushl $433
	call _m3_fault
	.align 16
.L6:
	movl %eax,MM_RTThread+48
.L4:
	addl MM_RTThread+48,%esi
	leal -20(%ebp),%eax
	leal -12(%ebp),%edi
	movl %edi,-20(%ebp)
	movl $1,-16(%ebp)
	movl %esi,-12(%ebp)
	pushl %eax
	movl MM_RTThread+216,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl %eax,%ecx
	movl %ecx,(%edx)
	movl 12(%ebp),%eax
	addl $8,%esp
	movl (%eax),%eax
	testl %eax,%eax
	jne .L7
	pushl $564
	call _m3_fault
	.align 16
.L7:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L8
	pushl $562
	call _m3_fault
	.align 16
.L8:
	movl MM_RTThread+44,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_RTMisc+52,%eax
	call *%eax
	movl %eax,%ecx
	pushl $1
	movl MM_RTThread+44,%eax
	pushl %eax
	movl %ecx,%ebx
	pushl %ebx
	call mprotect
	addl $20,%esp
	testl %eax,%eax
	je .L9
	pushl $592
	call _m3_fault
	.align 16
.L9:
	movl 12(%ebp),%ecx
	addl MM_RTThread+44,%ebx
	movl %ebx,4(%ecx)
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L10
	pushl $692
	call _m3_fault
	.align 16
.L10:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L11
	pushl $690
	call _m3_fault
	.align 16
.L11:
	leal 0(,%esi,4),%eax
	addl (%edx),%eax
	movl %eax,8(%ecx)
.L12:
	movl -8(%ebp),%eax
	leal -32(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTThread__NewStack,.Lfe2-RTThread__NewStack
	.align 16
	.type	 RTThread__DisposeStack,@function
RTThread__DisposeStack:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%edx
	testl %edx,%edx
	jne .L14
	pushl $756
	call _m3_fault
	.align 16
.L14:
	cmpl $0,4(%edx)
	jne .L15
	pushl $754
	call _m3_fault
	.align 16
.L15:
	movl MM_RTThread+44,%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl MI_RTMisc+52,%eax
	call *%eax
	movl %eax,%edx
	pushl $3
	movl MM_RTThread+44,%eax
	pushl %eax
	pushl %edx
	call mprotect
	movl %eax,%ebx
	addl $20,%esp
	testl %ebx,%ebx
	je .L16
	pushl $816
	call _m3_fault
	.align 16
.L16:
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+100,%eax
	call *%eax
	movl 8(%ebp),%edx
	movl %ebx,(%edx)
	movl 8(%ebp),%edx
	movl %ebx,4(%edx)
	movl %ebx,8(%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTThread__DisposeStack,.Lfe3-RTThread__DisposeStack
	.align 16
	.type	 RTThread__FlushStackCache,@function
RTThread__FlushStackCache:
	pushl %ebp
	movl %esp,%ebp
	subl $156,%esp
	pushl %ebx
	pushl $156
	pushl $0
	leal -156(%ebp),%ebx
	pushl %ebx
	call memset
	pushl %ebx
	pushl %ebx
	call RTThread__Transfer
	movl -160(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTThread__FlushStackCache,.Lfe4-RTThread__FlushStackCache
	.align 16
	.type	 RTThread__UpdateStateForNewSP,@function
RTThread__UpdateStateForNewSP:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%edx
	movl 8(%ebp),%eax
	movl %ebp,%esp
	addl %edx,16(%eax)
	addl %edx,12(%eax)
	popl %ebp
	ret
.Lfe5:
	.size	 RTThread__UpdateStateForNewSP,.Lfe5-RTThread__UpdateStateForNewSP
	.align 16
	.type	 RTThread__UpdateFrameForNewSP,@function
RTThread__UpdateFrameForNewSP:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L20
	pushl $1268
	call _m3_fault
	.align 16
.L20:
	movl $0,(%eax)
	cmpl $-4,%eax
	jne .L21
	pushl $1284
	call _m3_fault
	.align 16
.L21:
	movl $0,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTThread__UpdateFrameForNewSP,.Lfe6-RTThread__UpdateFrameForNewSP
	.align 16
	.type	 RTThread__setup_sigvtalrm,@function
RTThread__setup_sigvtalrm:
	pushl %ebp
	movl %esp,%ebp
	subl $144,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $140
	leal -140(%ebp),%edx
	pushl $0
	movl %edx,-144(%ebp)
	pushl %edx
	call memset
	leal -136(%ebp),%edi
	movl $MI_Usignal+148,%esi
	movl %ebx,-140(%ebp)
	cld
	movl $32,%ecx
	rep
	movsl
	movl $268435456,-8(%ebp)
	pushl $0
	movl -144(%ebp),%edx
	pushl %edx
	pushl $26
	call sigaction
	leal -156(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTThread__setup_sigvtalrm,.Lfe7-RTThread__setup_sigvtalrm
	.align 16
	.type	 RTThread__allow_sigvtalrm,@function
RTThread__allow_sigvtalrm:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_RTThread+52
	pushl $1
	call sigprocmask
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTThread__allow_sigvtalrm,.Lfe8-RTThread__allow_sigvtalrm
	.align 16
	.type	 RTThread__disallow_sigvtalrm,@function
RTThread__disallow_sigvtalrm:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_RTThread+52
	pushl $0
	call sigprocmask
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTThread__disallow_sigvtalrm,.Lfe9-RTThread__disallow_sigvtalrm
	.align 16
	.type	 _INITM_RTThread,@function
_INITM_RTThread:
	pushl %ebp
	movl %esp,%ebp
	pushl $26
	movl MI_Usignal+528,%eax
	call *%eax
	movl %eax,MM_RTThread+52
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 _INITM_RTThread,.Lfe10-_INITM_RTThread
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTThread
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_RTThread
.data
	.align 4
	.type	 MM_RTThread,@object
	.size	 MM_RTThread,656
MM_RTThread:
	.long MM_RTThread+496
	.zero	4
	.long MM_RTThread+216
	.zero	8
	.long MM_RTThread+372
	.zero	16
	.long _INITM_RTThread
	.zero	136
	.long RTThread__SP
	.long RTThread__NewStack
	.long RTThread__DisposeStack
	.long RTThread__FlushStackCache
	.long RTThread__UpdateStateForNewSP
	.long RTThread__UpdateFrameForNewSP
	.long RTThread__setup_sigvtalrm
	.long RTThread__allow_sigvtalrm
	.long RTThread__disallow_sigvtalrm
	.zero	4
	.long 465865088
	.ascii	"_INITM_RTThread"
	.zero	1
	.ascii	"disallow_sigvtalrm"
	.zero	1
	.ascii	"allow_sigvtalrm"
	.zero	1
	.ascii	"setup_sigvtalrm"
	.zero	1
	.ascii	"UpdateFrameForNewSP"
	.zero	1
	.ascii	"UpdateStateForNewSP"
	.zero	1
	.ascii	"FlushStackCache"
	.zero	1
	.ascii	"DisposeStack"
	.zero	1
	.ascii	"NewStack"
	.zero	1
	.ascii	"SP"
	.zero	1
	.long _INITM_RTThread
	.long MM_RTThread+224
	.zero	4
	.long RTThread__disallow_sigvtalrm
	.long MM_RTThread+240
	.long MI_RTThread+188
	.long RTThread__allow_sigvtalrm
	.long MM_RTThread+259
	.long MI_RTThread+184
	.long RTThread__setup_sigvtalrm
	.long MM_RTThread+275
	.long MI_RTThread+180
	.long RTThread__UpdateFrameForNewSP
	.long MM_RTThread+291
	.long MI_RTThread+176
	.long RTThread__UpdateStateForNewSP
	.long MM_RTThread+311
	.long MI_RTThread+172
	.long RTThread__FlushStackCache
	.long MM_RTThread+331
	.long MI_RTThread+168
	.long RTThread__DisposeStack
	.long MM_RTThread+347
	.long MI_RTThread+164
	.long RTThread__NewStack
	.long MM_RTThread+360
	.long MI_RTThread+160
	.long RTThread__SP
	.long MM_RTThread+369
	.long MI_RTThread+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/LINUXLIBC6/RTThread.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
