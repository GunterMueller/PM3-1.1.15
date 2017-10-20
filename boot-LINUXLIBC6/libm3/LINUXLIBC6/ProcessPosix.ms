	.file	"ProcessPosix.mc"
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
	.type	 Process__Create,@function
Process__Create:
	pushl %ebp
	movl %esp,%ebp
	subl $72,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 20(%ebp),%edi
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-72(%ebp)
	movl $-1,-56(%ebp)
	movl -56(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl %ecx,-48(%ebp)
	movl 8(%ebp),%ecx
	pushl %ecx
	call ProcessPosix__GetPathToExec
	movl %eax,%ebx
	movl %ebx,%esi
	addl $4,%esp
	testl %edi,%edi
	je .L2
	pushl %edi
	movl MI_Text+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L2
	pushl %ebx
	movl MI_Pathname+80,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L2
	call Process__GetWorkingDirectory
	movl -72(%ebp),%ecx
	pushl %ecx
	pushl %esi
	movl %eax,%ebx
	pushl %ebx
	movl MI_Pathname+96,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_Pathname+80,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L2
	pushl $768
	call _m3_fault
	.align 16
.L2:
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Pathname+92,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %esi
	call ProcessPosix__AllocArgs
	movl %eax,%ebx
	movl %ebx,-44(%ebp)
	addl $16,%esp
	cmpl $0,16(%ebp)
	je .L4
	movl 16(%ebp),%ecx
	pushl %ecx
	call ProcessPosix__AllocEnv
	movl %eax,-40(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L6
	pushl $868
	call _m3_fault
	.align 16
.L6:
	cmpl $0,4(%eax)
	jne .L7
	pushl $866
	call _m3_fault
	.align 16
.L7:
	movl (%eax),%eax
	jmp .L21
	.align 16
.L4:
	movl 16(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L9
	pushl $916
	call _m3_fault
	.align 16
.L9:
	movl 16(%eax),%eax
.L21:
	movl %eax,-72(%ebp)
	testl %edi,%edi
	je .L10
	pushl %edi
	movl MI_Text+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L10
	pushl %edi
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,-68(%ebp)
	addl $4,%esp
	jmp .L11
	.align 16
.L10:
	movl $0,-68(%ebp)
.L11:
	cmpl $0,24(%ebp)
	je .L12
	movl 24(%ebp),%ecx
	movl 4(%ecx),%ecx
	movl %ecx,-56(%ebp)
.L12:
	cmpl $0,28(%ebp)
	je .L13
	movl 28(%ebp),%ecx
	movl 4(%ecx),%ecx
	movl %ecx,-52(%ebp)
.L13:
	cmpl $0,32(%ebp)
	je .L14
	movl 32(%ebp),%ecx
	movl 4(%ecx),%ecx
	movl %ecx,-48(%ebp)
.L14:
	movl $MM_ProcessPosix+396,%edx
	movl MM_ProcessPosix+396,%eax
	movl %eax,-20(%ebp)
	movl 4(%edx),%eax
	movl %eax,-16(%ebp)
	movl 8(%edx),%eax
	movl %eax,-12(%ebp)
	movl 12(%edx),%eax
	movl %eax,-8(%ebp)
	leal -36(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $12,%esp
	testl %eax,%eax
	jge .L15
	pushl $1216
	call _m3_fault
	.align 16
.L15:
	movl MI_SchedulerPosix+52,%eax
	call *%eax
	movl $0,-64(%ebp)
	call vfork
	movl %eax,%ebx
	testl %ebx,%ebx
	jne .L16
	movl -48(%ebp),%ecx
	pushl %ecx
	movl -52(%ebp),%ecx
	pushl %ecx
	movl -56(%ebp),%ecx
	pushl %ecx
	movl -68(%ebp),%ecx
	pushl %ecx
	movl -72(%ebp),%ecx
	pushl %ecx
	movl -44(%ebp),%eax
	pushl %eax
	call ProcessPosix__ExecChild
	movl %eax,-64(%ebp)
	movl errno,%ecx
	movl %ecx,-60(%ebp)
	pushl $99
	call _exit
	addl $28,%esp
.L16:
	movl MI_SchedulerPosix+56,%eax
	movl errno,%esi
	call *%eax
	leal -20(%ebp),%eax
	pushl %eax
	leal -36(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $12,%esp
	testl %eax,%eax
	jge .L17
	pushl $1648
	call _m3_fault
	.align 16
.L17:
	leal -44(%ebp),%eax
	pushl %eax
	call ProcessPosix__FreeArgs
	addl $4,%esp
	cmpl $0,-40(%ebp)
	je .L18
	leal -40(%ebp),%eax
	pushl %eax
	call ProcessPosix__FreeEnv
	addl $4,%esp
.L18:
	testl %ebx,%ebx
	jge .L19
	pushl %esi
	movl MI_OSErrorPosix+52,%eax
	call *%eax
	addl $4,%esp
.L19:
	cmpl $0,-64(%ebp)
	jge .L20
	pushl $0
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	call waitpid
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_OSErrorPosix+52,%eax
	call *%eax
	addl $16,%esp
.L20:
	movl MM_ProcessPosix+412,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	leal -84(%ebp),%esp
	movl %ebx,(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Process__Create,.Lfe1-Process__Create
	.align 16
	.type	 ProcessPosix__GetPathToExec,@function
ProcessPosix__GetPathToExec:
	pushl %ebp
	movl %esp,%ebp
	subl $96,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	pushl %ebx
	pushl $47
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Text+88,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L23
	pushl $MM_ProcessPosix+424
	movl MI_Env+44,%eax
	call *%eax
	movl %eax,%esi
	addl $4,%esp
	testl %esi,%esi
	jne .L24
	movl $MM_ProcessPosix+444,%esi
.L24:
	movl $-1,%edi
	movl %edi,-92(%ebp)
.L25:
	pushl %ebx
	pushl $58
	pushl %esi
	movl MI_Text+88,%eax
	call *%eax
	movl %eax,-96(%ebp)
	addl $12,%esp
	testl %eax,%eax
	jge .L26
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
.L26:
	testl %ebx,%ebx
	jge .L28
	pushl $2241
	call _m3_fault
	.align 16
.L28:
	subl %ebx,%eax
	jns .L29
	pushl $2241
	call _m3_fault
	.align 16
.L29:
	pushl %eax
	pushl %ebx
	pushl %esi
	movl MI_Text+64,%eax
	call *%eax
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl %eax
	movl MI_Pathname+96,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,%ebx
	pushl %ebx
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	leal -88(%ebp),%eax
	pushl %eax
	pushl %edx
	call stat
	addl $36,%esp
	testl %eax,%eax
	jne .L30
	movl -72(%ebp),%edx
	movl %edx,%eax
	andl $61440,%eax
	cmpl $32768,%eax
	jne .L30
	movl %edx,%eax
	andl $73,%eax
	movl %eax,-72(%ebp)
	je .L30
	cmpl $73,%eax
	je .L45
	cmpl $0,-92(%ebp)
	jge .L33
	call geteuid
	movl %eax,-92(%ebp)
.L33:
	movl -92(%ebp),%ecx
	cmpl %ecx,-64(%ebp)
	jne .L34
	andl $64,-72(%ebp)
	jmp .L35
	.align 16
.L34:
	testl %edi,%edi
	jge .L36
	call getegid
	movl %eax,%edi
.L36:
	cmpl %edi,-60(%ebp)
	jne .L37
	andl $8,-72(%ebp)
	jmp .L35
	.align 16
.L37:
	andl $1,-72(%ebp)
.L35:
	cmpl $0,-72(%ebp)
	je .L30
.L45:
	movl %ebx,%eax
	jmp .L44
	.align 16
.L30:
	cmpl $0,-96(%ebp)
	jl .L41
	movl -96(%ebp),%ebx
	incl %ebx
	jmp .L25
	.align 16
.L41:
	pushl $2
	movl MI_OSErrorPosix+52,%eax
	call *%eax
	jmp .L42
	.align 16
.L23:
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	leal -88(%ebp),%eax
	pushl %eax
	pushl %edx
	call stat
	addl $12,%esp
	testl %eax,%eax
	jge .L42
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L42:
	movl 8(%ebp),%eax
.L44:
	leal -108(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ProcessPosix__GetPathToExec,.Lfe2-ProcessPosix__GetPathToExec
	.align 16
	.type	 ProcessPosix__AllocArgs,@function
ProcessPosix__AllocArgs:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%ecx
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl %ecx,-12(%ebp)
	movl 16(%ebp),%eax
	movl $1,-8(%ebp)
	movl 4(%eax),%eax
	addl $4,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_ProcessPosix+468,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_M3toC+44,%eax
	call *%eax
	movl %eax,-16(%ebp)
	addl $12,%esp
	testl %esi,%esi
	jne .L47
	pushl $2980
	call _m3_fault
	.align 16
.L47:
	cmpl $0,4(%esi)
	jne .L48
	pushl $2978
	call _m3_fault
	.align 16
.L48:
	movl (%esi),%eax
	movl -16(%ebp),%ecx
	movl %ecx,(%eax)
	cmpl $1,4(%esi)
	ja .L50
	pushl $2994
	call _m3_fault
	.align 16
.L50:
	movl (%esi),%eax
	movl MM_ProcessPosix+276,%edx
	movl %edx,4(%eax)
	pushl %edi
	movl MI_M3toC+44,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	cmpl $2,4(%esi)
	ja .L52
	pushl $3010
	call _m3_fault
	.align 16
.L52:
	movl (%esi),%eax
	movl %edx,8(%eax)
	movl 16(%ebp),%eax
	xorl %ebx,%ebx
	movl 4(%eax),%edi
	decl %edi
	jmp .L53
	.align 16
.L54:
	movl 16(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L55
	pushl $3026
	call _m3_fault
	.align 16
.L55:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_M3toC+44,%eax
	call *%eax
	movl %eax,-16(%ebp)
	addl $4,%esp
	testl %esi,%esi
	jne .L56
	pushl $3028
	call _m3_fault
	.align 16
.L56:
	leal 3(%ebx),%edx
	cmpl %edx,4(%esi)
	ja .L57
	pushl $3026
	call _m3_fault
	.align 16
.L57:
	movl (%esi),%eax
	movl -16(%ebp),%ecx
	incl %ebx
	movl %ecx,(%eax,%edx,4)
.L53:
	cmpl %edi,%ebx
	jle .L54
	testl %esi,%esi
	jne .L59
	pushl $3044
	call _m3_fault
	.align 16
.L59:
	movl 4(%esi),%eax
	leal -1(%eax),%edx
	cmpl %eax,%edx
	jb .L61
	pushl $3042
	call _m3_fault
	.align 16
.L61:
	movl (%esi),%eax
	leal -28(%ebp),%esp
	movl $0,(%eax,%edx,4)
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ProcessPosix__AllocArgs,.Lfe3-ProcessPosix__AllocArgs
	.align 16
	.type	 ProcessPosix__FreeArgs,@function
ProcessPosix__FreeArgs:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L63
	pushl $3172
	call _m3_fault
	.align 16
.L63:
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	addl $-2,%esi
	jmp .L64
	.align 16
.L65:
	cmpl $1,%ebx
	je .L66
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L67
	pushl $3188
	call _m3_fault
	.align 16
.L67:
	cmpl %ebx,4(%eax)
	ja .L68
	pushl $3186
	call _m3_fault
	.align 16
.L68:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_M3toC+48,%eax
	call *%eax
	addl $4,%esp
.L66:
	incl %ebx
.L64:
	cmpl %esi,%ebx
	jle .L65
	movl 8(%ebp),%ebx
	movl (%ebx),%ecx
	testl %ecx,%ecx
	jne .L70
	pushl $3220
	call _m3_fault
	.align 16
.L70:
	movl 4(%ecx),%edx
	leal -1(%edx),%eax
	cmpl %edx,%eax
	jb .L72
	pushl $3218
	call _m3_fault
	.align 16
.L72:
	movl (%ecx),%eax
	cmpl $0,-4(%eax,%edx,4)
	je .L73
	pushl $3216
	call _m3_fault
	.align 16
.L73:
	pushl %ebx
	movl MI_RTHooks+100,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ProcessPosix__FreeArgs,.Lfe4-ProcessPosix__FreeArgs
	.align 16
	.type	 ProcessPosix__AllocEnv,@function
ProcessPosix__AllocEnv:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%ecx
	pushl %ebx
	movl %ecx,-12(%ebp)
	movl 8(%ebp),%eax
	movl $1,-8(%ebp)
	movl 4(%eax),%eax
	incl %eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_ProcessPosix+468,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,%esi
	movl 8(%ebp),%eax
	xorl %ebx,%ebx
	addl $8,%esp
	movl 4(%eax),%edi
	decl %edi
	jmp .L75
	.align 16
.L76:
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L77
	pushl $3330
	call _m3_fault
	.align 16
.L77:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_M3toC+44,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %esi,%esi
	jne .L78
	pushl $3332
	call _m3_fault
	.align 16
.L78:
	cmpl %ebx,4(%esi)
	ja .L79
	pushl $3330
	call _m3_fault
	.align 16
.L79:
	movl (%esi),%eax
	movl %edx,(%eax,%ebx,4)
	incl %ebx
.L75:
	cmpl %edi,%ebx
	jle .L76
	testl %esi,%esi
	jne .L81
	pushl $3348
	call _m3_fault
	.align 16
.L81:
	movl 4(%esi),%eax
	leal -1(%eax),%edx
	cmpl %eax,%edx
	jb .L83
	pushl $3346
	call _m3_fault
	.align 16
.L83:
	movl (%esi),%eax
	leal -24(%ebp),%esp
	movl $0,(%eax,%edx,4)
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ProcessPosix__AllocEnv,.Lfe5-ProcessPosix__AllocEnv
	.align 16
	.type	 ProcessPosix__FreeEnv,@function
ProcessPosix__FreeEnv:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L85
	pushl $3444
	call _m3_fault
	.align 16
.L85:
	xorl %ebx,%ebx
	movl 4(%eax),%esi
	addl $-2,%esi
	jmp .L86
	.align 16
.L87:
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L88
	pushl $3460
	call _m3_fault
	.align 16
.L88:
	cmpl %ebx,4(%eax)
	ja .L89
	pushl $3458
	call _m3_fault
	.align 16
.L89:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl MI_M3toC+48,%eax
	call *%eax
	incl %ebx
	addl $4,%esp
.L86:
	cmpl %esi,%ebx
	jle .L87
	movl 8(%ebp),%ebx
	movl (%ebx),%ecx
	testl %ecx,%ecx
	jne .L91
	pushl $3492
	call _m3_fault
	.align 16
.L91:
	movl 4(%ecx),%edx
	leal -1(%edx),%eax
	cmpl %edx,%eax
	jb .L93
	pushl $3490
	call _m3_fault
	.align 16
.L93:
	movl (%ecx),%eax
	cmpl $0,-4(%eax,%edx,4)
	je .L94
	pushl $3488
	call _m3_fault
	.align 16
.L94:
	pushl %ebx
	movl MI_RTHooks+100,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ProcessPosix__FreeEnv,.Lfe6-ProcessPosix__FreeEnv
	.align 16
	.type	 ProcessPosix__ExecChild__SetFd.0,@function
ProcessPosix__ExecChild__SetFd.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	cmpl $-1,%eax
	je .L97
	pushl %edx
	pushl %eax
	call dup2
	movl %eax,%ebx
	notl %eax
	shrl $31,%eax
	jmp .L98
	.align 16
.L97:
	movl $1,%ebx
	pushl %ebx
	pushl $2
	pushl %edx
	call fcntl
	testl %eax,%eax
	jge .L99
	cmpl $9,errno
	sete %al
	xorl %ebx,%ebx
	movb %al,%bl
.L99:
	movb %bl,%al
.L98:
	andl $255,%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ProcessPosix__ExecChild__SetFd.0,.Lfe7-ProcessPosix__ExecChild__SetFd.0
	.align 16
	.type	 ProcessPosix__ExecChild,@function
ProcessPosix__ExecChild:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 16(%ebp),%eax
	movl 20(%ebp),%ebx
	testl %eax,%eax
	je .L100
	pushl %eax
	call chdir
	addl $4,%esp
	testl %eax,%eax
	jl .L102
.L100:
	pushl %ebx
	movl %ebp,%ecx
	pushl $0
	call ProcessPosix__ExecChild__SetFd.0
	addl $8,%esp
	testl %eax,%eax
	je .L102
	movl 24(%ebp),%esi
	pushl %esi
	movl %ebp,%ecx
	pushl $1
	call ProcessPosix__ExecChild__SetFd.0
	addl $8,%esp
	testl %eax,%eax
	je .L102
	movl 28(%ebp),%esi
	pushl %esi
	movl %ebp,%ecx
	pushl $2
	call ProcessPosix__ExecChild__SetFd.0
	addl $8,%esp
	testl %eax,%eax
	jne .L103
.L102:
	movl $-1,%eax
	jmp .L124
	.align 16
.L103:
	call getdtablesize
	movl $3,%ebx
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L104
	.align 16
.L105:
	pushl %ebx
	call close
	incl %ebx
	addl $4,%esp
.L104:
	cmpl %ebx,-4(%ebp)
	jge .L105
	movl MI_RTSignal+48,%eax
	call *%eax
	testl %edi,%edi
	jne .L107
	pushl $4196
	call _m3_fault
	.align 16
.L107:
	movl %edi,%ebx
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L109
	pushl $4194
	call _m3_fault
	.align 16
.L109:
	cmpl $2,%eax
	ja .L110
	pushl $4194
	call _m3_fault
	.align 16
.L110:
	movl 12(%ebp),%esi
	pushl %esi
	movl (%ebx),%eax
	leal 8(%eax),%edx
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	call execve
	addl $12,%esp
	testl %eax,%eax
	jl .L111
	pushl $4208
	call _m3_fault
	.align 16
.L111:
	cmpl $8,errno
	jne .L112
	cmpl $0,4(%ebx)
	jne .L114
	pushl $4242
	call _m3_fault
	.align 16
.L114:
	movl (%ebx),%eax
	movl %eax,%ebx
	movl (%eax),%edx
	cmpl $2,4(%edi)
	ja .L118
	pushl $4242
	call _m3_fault
	.align 16
.L118:
	movl (%edi),%eax
	movl 8(%eax),%eax
	movl %eax,(%ebx)
	cmpl $2,4(%edi)
	ja .L120
	pushl $4242
	call _m3_fault
	.align 16
.L120:
	movl (%edi),%eax
	movl %edi,%ebx
	movl %edx,8(%eax)
	cmpl $1,4(%ebx)
	ja .L122
	pushl $4258
	call _m3_fault
	.align 16
.L122:
	movl 12(%ebp),%esi
	pushl %esi
	movl (%ebx),%eax
	addl $4,%eax
	pushl %eax
	movl MM_ProcessPosix+272,%eax
	pushl %eax
	call execve
	addl $12,%esp
	testl %eax,%eax
	jl .L112
	pushl $4272
	call _m3_fault
	.align 16
.L112:
.L124:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ProcessPosix__ExecChild,.Lfe8-ProcessPosix__ExecChild
	.align 16
	.type	 Process__Wait,@function
Process__Wait:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
.L126:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	testl %ebx,%ebx
	jne .L127
	pushl $4500
	call _m3_fault
	.align 16
.L127:
	cmpb $0,4(%ebx)
	jne .L129
	pushl $0
	pushl $MM_ProcessPosix+284
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L129:
	movb $0,4(%ebx)
.L130:
	testl %ebx,%ebx
	jne .L131
	pushl $4580
	call _m3_fault
	.align 16
.L131:
	pushl $1
	leal -8(%ebp),%eax
	pushl %eax
	movl (%ebx),%eax
	pushl %eax
	call waitpid
	addl $12,%esp
	testl %eax,%eax
	jne .L133
	pushl $1069128089
	pushl $-1717986918
	movl MI_Thread+176,%eax
	call *%eax
	addl $8,%esp
	jmp .L130
	.align 16
.L133:
	testl %eax,%eax
	jg .L134
	pushl $4640
	call _m3_fault
	.align 16
.L134:
	movw $0,-2(%ebp)
	xorl %eax,%eax
	movb -3(%ebp),%al
	andb $127,%al
	xorl %ecx,%ecx
	movb -8(%ebp),%cl
	movl %ecx,%edx
	andl $128,%edx
	orb %al,%dl
	movb %dl,-3(%ebp)
	xorl %eax,%eax
	movb %dl,%al
	andb $128,%al
	andl $127,%ecx
	orb %al,%cl
	movb %cl,-3(%ebp)
	movb -7(%ebp),%al
	movb %al,-4(%ebp)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $2147483647,%edx
	movl -4(%ebp),%eax
	cmpl %edx,%eax
	jle .L135
	movl %edx,%eax
.L135:
	testl %eax,%eax
	jge .L137
	pushl $4721
	call _m3_fault
	.align 16
.L137:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Process__Wait,.Lfe9-Process__Wait
	.align 16
	.type	 Process__Exit,@function
Process__Exit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RTProcess+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Process__Exit,.Lfe10-Process__Exit
	.align 16
	.type	 Process__Crash,@function
Process__Crash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RTProcess+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Process__Crash,.Lfe11-Process__Crash
	.align 16
	.type	 Process__RegisterExitor,@function
Process__RegisterExitor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RTProcess+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Process__RegisterExitor,.Lfe12-Process__RegisterExitor
	.align 16
	.type	 Process__GetID,@function
Process__GetID:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L142
	pushl $5044
	call _m3_fault
	.align 16
.L142:
	movl (%eax),%eax
	testl %eax,%eax
	jge .L143
	pushl $5041
	call _m3_fault
	.align 16
.L143:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Process__GetID,.Lfe13-Process__GetID
	.align 16
	.type	 Process__GetMyID,@function
Process__GetMyID:
	pushl %ebp
	movl %esp,%ebp
	call getpid
	testl %eax,%eax
	jge .L145
	pushl $5121
	call _m3_fault
	.align 16
.L145:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Process__GetMyID,.Lfe14-Process__GetMyID
	.align 16
	.type	 Process__GetStandardFileHandles,@function
Process__GetStandardFileHandles:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%ebx
	movl MM_ProcessPosix+332,%eax
	movl %eax,(%edx)
	movl MM_ProcessPosix+336,%eax
	movl %eax,(%ecx)
	movl MM_ProcessPosix+340,%eax
	movl %eax,(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Process__GetStandardFileHandles,.Lfe15-Process__GetStandardFileHandles
	.align 16
	.type	 Process__GetWorkingDirectory,@function
Process__GetWorkingDirectory:
	pushl %ebp
	movl %esp,%ebp
	subl $1040,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_ProcessPosix+320,%eax
	movl %eax,-1032(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L148:
	movl $6,-1036(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-1040(%ebp)
	leal -1040(%ebp),%edx
	movl %edx,RTThread__handlerStack
	cmpl $0,MM_ProcessPosix+324
	jne .L149
	pushl $1025
	leal -1028(%ebp),%esi
	pushl %esi
	call getcwd
	movl %eax,%edi
	addl $8,%esp
	testl %edi,%edi
	jne .L150
	movl MM_ProcessPosix+476,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %esi
	movl MI_M3toC+60,%eax
	call *%eax
	pushl %eax
	movl MI_Atom+44,%eax
	call *%eax
	movl %eax,4(%ebx)
	movl %ebx,%eax
	movl %edi,8(%eax)
	pushl %eax
	pushl $MI_OSError+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $20,%esp
.L150:
	pushl %esi
	movl MI_M3toC+60,%eax
	call *%eax
	movl %eax,MM_ProcessPosix+324
	addl $4,%esp
.L149:
	movl MM_ProcessPosix+324,%ebx
	movl -1040(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -1032(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L151:
	leal -1052(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Process__GetWorkingDirectory,.Lfe16-Process__GetWorkingDirectory
	.align 16
	.type	 Process__SetWorkingDirectory,@function
Process__SetWorkingDirectory:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_ProcessPosix+320,%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L153:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %ebx
	movl MI_M3toC+52,%eax
	call *%eax
	pushl %eax
	call chdir
	addl $8,%esp
	testl %eax,%eax
	jge .L154
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L154:
	movl $0,MM_ProcessPosix+324
.L155:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Process__SetWorkingDirectory,.Lfe17-Process__SetWorkingDirectory
	.align 16
	.type	 ProcessPosix__GetFileHandle,@function
ProcessPosix__GetFileHandle:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	movl $0,-184(%ebp)
.L157:
	movl $MM_ProcessPosix+484,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L159
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_FilePosix+148,%eax
	call *%eax
	movl %eax,-184(%ebp)
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L158:
.L159:
	movl -184(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 ProcessPosix__GetFileHandle,.Lfe18-ProcessPosix__GetFileHandle
	.align 16
	.type	 _INITM_ProcessPosix,@function
_INITM_ProcessPosix:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_ProcessPosix+272
	movl $0,MM_ProcessPosix+276
	movl $0,MM_ProcessPosix+320
	pushl $MM_ProcessPosix+496
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,MM_ProcessPosix+272
	pushl $MM_ProcessPosix+516
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,MM_ProcessPosix+276
	movl MM_ProcessPosix+528,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_ProcessPosix+320
	pushl $1
	pushl $0
	call ProcessPosix__GetFileHandle
	movl %eax,MM_ProcessPosix+332
	pushl $2
	pushl $1
	call ProcessPosix__GetFileHandle
	movl %eax,MM_ProcessPosix+336
	pushl $2
	pushl $2
	call ProcessPosix__GetFileHandle
	movl %eax,MM_ProcessPosix+340
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 _INITM_ProcessPosix,.Lfe19-_INITM_ProcessPosix
	.align 16
	.type	 M_ProcessPosix_tb40320a7_INIT,@function
M_ProcessPosix_tb40320a7_INIT:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movb $1,4(%eax)
	popl %ebp
	ret
.Lfe20:
	.size	 M_ProcessPosix_tb40320a7_INIT,.Lfe20-M_ProcessPosix_tb40320a7_INIT
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ProcessPosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe21:
	.size	 _m3_fault,.Lfe21-_m3_fault
.globl MM_ProcessPosix
.data
	.align 4
	.type	 MM_ProcessPosix,@object
	.size	 MM_ProcessPosix,1228
MM_ProcessPosix:
	.long MM_ProcessPosix+1006
	.long MM_ProcessPosix+44
	.long MM_ProcessPosix+412
	.long MM_ProcessPosix+384
	.zero	4
	.long MM_ProcessPosix+764
	.zero	4
	.long MM_ProcessPosix+996
	.long MM_ProcessPosix+996
	.zero	4
	.long _INITM_ProcessPosix
	.zero	8
	.long -1274863449
.byte 63
.byte 32
.byte 70
.byte 174
.byte 152
.byte 0
.byte 69
.byte 26
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_ProcessPosix+1182
	.zero	4
	.long MM_ProcessPosix+1185
	.long M_ProcessPosix_tb40320a7_INIT
	.zero	20
	.long MM_ProcessPosix+1190
	.long MM_ProcessPosix+1216
	.long MM_ProcessPosix+148
	.zero	8
	.long 1629177879
.byte 92
.byte 136
.byte 77
.byte 117
.byte 75
.byte 192
.byte 86
.byte 20
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_ProcessPosix+1156
	.zero	36
	.long MM_ProcessPosix+1161
	.zero	4
	.long ProcessPosix__GetPathToExec
	.long ProcessPosix__AllocArgs
	.long ProcessPosix__FreeArgs
	.long ProcessPosix__AllocEnv
	.long ProcessPosix__FreeEnv
	.zero	8
	.long ProcessPosix__ExecChild
	.long MM_ProcessPosix+288
	.ascii	"ProcessPosix.WaitAlreadyCalled"
	.zero	10
	.long ProcessPosix__GetFileHandle
	.zero	12
	.long Process__Create
	.long Process__Wait
	.long Process__Exit
	.long Process__Crash
	.long Process__RegisterExitor
	.long Process__GetID
	.long Process__GetMyID
	.long Process__GetStandardFileHandles
	.long Process__GetWorkingDirectory
	.long Process__SetWorkingDirectory
	.long 307048388
	.long -1274863449
	.zero	20
	.long MM_ProcessPosix+468
	.long 307048388
	.long 2
	.long MM_ProcessPosix+432
	.long 5
	.ascii	"PATH"
	.zero	4
	.long 2
	.long MM_ProcessPosix+452
	.long 15
	.ascii	":/bin:/usr/bin"
	.zero	2
	.long MM_ProcessPosix+476
	.long 1629177879
	.long MM_ProcessPosix+528
	.long -1388739978
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_ProcessPosix+504
	.long 8
	.ascii	"/bin/sh"
	.zero	1
	.long 2
	.long MM_ProcessPosix+524
	.long 3
	.ascii	"sh"
	.zero	6
	.long 356643957
	.ascii	"_INITM_ProcessPosix"
	.zero	1
	.ascii	"GetFileHandle"
	.zero	1
	.ascii	"SetWorkingDirectory"
	.zero	1
	.ascii	"GetWorkingDirectory"
	.zero	1
	.ascii	"GetStandardFileHandles"
	.zero	1
	.ascii	"GetMyID"
	.zero	1
	.ascii	"GetID"
	.zero	1
	.ascii	"RegisterExitor"
	.zero	1
	.ascii	"Crash"
	.zero	1
	.ascii	"Exit"
	.zero	1
	.ascii	"Wait"
	.zero	1
	.ascii	"ExecChild"
	.zero	1
	.ascii	"ExecChild.SetFd"
	.zero	1
	.ascii	"FreeEnv"
	.zero	1
	.ascii	"AllocEnv"
	.zero	1
	.ascii	"FreeArgs"
	.zero	1
	.ascii	"AllocArgs"
	.zero	1
	.ascii	"GetPathToExec"
	.zero	1
	.ascii	"Create"
	.zero	4
	.long _INITM_ProcessPosix
	.long MM_ProcessPosix+536
	.zero	4
	.long ProcessPosix__GetFileHandle
	.long MM_ProcessPosix+556
	.zero	4
	.long Process__SetWorkingDirectory
	.long MM_ProcessPosix+570
	.long MI_Process+184
	.long Process__GetWorkingDirectory
	.long MM_ProcessPosix+590
	.long MI_Process+180
	.long Process__GetStandardFileHandles
	.long MM_ProcessPosix+610
	.long MI_Process+176
	.long Process__GetMyID
	.long MM_ProcessPosix+633
	.long MI_Process+172
	.long Process__GetID
	.long MM_ProcessPosix+641
	.long MI_Process+168
	.long Process__RegisterExitor
	.long MM_ProcessPosix+647
	.long MI_Process+164
	.long Process__Crash
	.long MM_ProcessPosix+662
	.long MI_Process+160
	.long Process__Exit
	.long MM_ProcessPosix+668
	.long MI_Process+156
	.long Process__Wait
	.long MM_ProcessPosix+673
	.long MI_Process+152
	.long ProcessPosix__ExecChild
	.long MM_ProcessPosix+678
	.zero	4
	.long ProcessPosix__ExecChild__SetFd.0
	.long MM_ProcessPosix+688
	.zero	4
	.long ProcessPosix__FreeEnv
	.long MM_ProcessPosix+704
	.zero	4
	.long ProcessPosix__AllocEnv
	.long MM_ProcessPosix+712
	.zero	4
	.long ProcessPosix__FreeArgs
	.long MM_ProcessPosix+721
	.zero	4
	.long ProcessPosix__AllocArgs
	.long MM_ProcessPosix+730
	.zero	4
	.long ProcessPosix__GetPathToExec
	.long MM_ProcessPosix+740
	.zero	4
	.long Process__Create
	.long MM_ProcessPosix+754
	.long MI_Process+44
	.zero	4
.byte 43
.byte 64
.byte 1
.byte 4
.byte 4
.byte 37
.byte 4
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/POSIX/ProcessPosix.m3"
	.zero	1
.byte 24
.byte 1
.byte 5
.byte 0
.byte 0
	.ascii	"ProcessPosix.ArrCStr"
	.zero	1
.byte 14
.byte 16
.byte 0
.byte 3
.byte 15
.byte 2
.byte 7
.byte 2
	.ascii	"ProcessPosix_^%#%^__0001M"
	.zero	1
	.ascii	"Process.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
