	.file	"ProcBody.mc"
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
	.type	 ProcBody__Push,@function
ProcBody__Push:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	cmpl $0,4(%ecx)
	jne .L2
	cmpl $0,28(%ecx)
	jne .L2
	cmpl $0,32(%ecx)
	je .L3
.L2:
	pushl $576
	call _m3_fault
	.align 16
.L3:
	movl MM_ProcBody+264,%eax
	incl %eax
	movl %eax,MM_ProcBody+264
	movl %eax,8(%ecx)
	movl MM_ProcBody+252,%edx
	movl %edx,4(%ecx)
	testl %edx,%edx
	jne .L4
	movl MM_ProcBody+256,%eax
	movl %eax,28(%ecx)
	movl %ecx,MM_ProcBody+256
	jmp .L5
	.align 16
.L4:
	movl 32(%edx),%eax
	movl %eax,28(%ecx)
	movl %ecx,32(%edx)
.L5:
	movl %ecx,MM_ProcBody+252
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ProcBody__Push,.Lfe1-ProcBody__Push
	.align 16
	.type	 ProcBody__Pop,@function
ProcBody__Pop:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ProcBody+252,%eax
	movl %ebp,%esp
	movl 4(%eax),%eax
	movl %eax,MM_ProcBody+252
	decl MM_ProcBody+264
	popl %ebp
	ret
.Lfe2:
	.size	 ProcBody__Pop,.Lfe2-ProcBody__Pop
	.align 16
	.type	 ProcBody__Schedule,@function
ProcBody__Schedule:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ProcBody+256,%eax
	movl 8(%ebp),%edx
	movl %ebp,%esp
	movl %eax,28(%edx)
	movl %edx,MM_ProcBody+256
	popl %ebp
	ret
.Lfe3:
	.size	 ProcBody__Schedule,.Lfe3-ProcBody__Schedule
	.align 16
	.type	 ProcBody__DelayedInit,@function
ProcBody__DelayedInit:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl MM_ProcBody+320,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl MM_ProcBody+268,%eax
	leal -12(%ebp),%esp
	movl %eax,(%edx)
	movl %ebx,4(%edx)
	movl %esi,8(%edx)
	movl %edi,12(%edx)
	movl %edx,MM_ProcBody+268
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ProcBody__DelayedInit,.Lfe4-ProcBody__DelayedInit
	.align 16
	.type	 ProcBody__EmitAll,@function
ProcBody__EmitAll:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	pushl %ebx
	movl MI_Module+112,%eax
	call *%eax
	movl 8(%ebp),%ecx
	movl %eax,-4(%ebp)
	movl %ebx,(%ecx)
	movl 12(%ebp),%ecx
	addl $4,%esp
	movl %ebx,(%ecx)
	jmp .L10
	.align 16
.L11:
	movl $0,MM_ProcBody+256
	pushl %eax
	call ProcBody__SourceOrder
	movl %eax,%ebx
	pushl %ebx
	call ProcBody__EmitDecl
	pushl %ebx
	call ProcBody__EmitBody
	addl $12,%esp
.L10:
	movl MM_ProcBody+256,%eax
	testl %eax,%eax
	jne .L11
	movl MM_ProcBody+260,%ebx
	movl %eax,%edi
	jmp .L13
	.align 16
.L14:
	cmpl $0,16(%ebx)
	je .L15
	cmpl $0,12(%ebx)
	jne .L16
	cmpl $0,20(%ebx)
	je .L15
.L16:
	incl %edi
.L15:
	movl 28(%ebx),%ebx
.L13:
	testl %ebx,%ebx
	jne .L14
	testl %edi,%edi
	jle .L18
	movl MM_ProcBody+260,%ebx
	xorl %esi,%esi
	jmp .L19
	.align 16
.L20:
	cmpl $0,16(%ebx)
	je .L21
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L21
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	leal 1(%eax,%esi),%esi
	addl $4,%esp
.L21:
	movl 28(%ebx),%ebx
.L19:
	testl %ebx,%ebx
	jne .L20
	imull MI_Target+600,%esi
	pushl %ebx
	pushl $MM_ProcBody+332
	movl MI_Target+64,%eax
	pushl %eax
	pushl %esi
	movl MI_Module+108,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-8(%ebp)
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl $MM_ProcBody+360
	movl -8(%ebp),%ecx
	pushl %ecx
	movl MI_CG+788,%eax
	call *%eax
	movl %edi,%eax
	imull MI_M3RT+368,%eax
	movl %eax,%edi
	addl $36,%esp
	addl MI_Target+60,%edi
	pushl %ebx
	pushl $MM_ProcBody+388
	movl MI_Target+64,%eax
	pushl %eax
	pushl %edi
	movl MI_Module+108,%eax
	call *%eax
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl $MM_ProcBody+412
	movl %eax,%esi
	pushl %esi
	movl MI_CG+788,%eax
	call *%eax
	movl 8(%ebp),%ecx
	addl $36,%esp
	movl %esi,(%ecx)
	movl MM_ProcBody+260,%ebx
	xorl %esi,%esi
	jmp .L23
	.align 16
.L24:
	cmpl $0,16(%ebx)
	je .L25
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L25
	pushl %eax
	movl -8(%ebp),%eax
	addl %esi,%eax
	pushl %eax
	movl MI_CG+276,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	incl %eax
	imull MI_Target+600,%eax
	addl %eax,%esi
	addl $12,%esp
.L25:
	movl 28(%ebx),%ebx
.L23:
	testl %ebx,%ebx
	jne .L24
	movl MM_ProcBody+260,%ebx
	movl 8(%ebp),%ecx
	xorl %esi,%esi
	movl (%ecx),%edi
	jmp .L27
	.align 16
.L28:
	movl 16(%ebx),%eax
	testl %eax,%eax
	je .L29
	cmpl $0,12(%ebx)
	jne .L30
	cmpl $0,20(%ebx)
	je .L31
.L30:
	pushl %eax
	movl %edi,%eax
	addl MI_M3RT+356,%eax
	pushl %eax
	movl MI_CG+260,%eax
	call *%eax
	addl $8,%esp
.L31:
	cmpl $0,12(%ebx)
	je .L32
	movl -8(%ebp),%eax
	addl %esi,%eax
	pushl %eax
	movl -4(%ebp),%ecx
	movl %edi,%eax
	pushl %ecx
	addl MI_M3RT+360,%eax
	pushl %eax
	movl MI_CG+268,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	incl %eax
	imull MI_Target+600,%eax
	addl %eax,%esi
	addl $16,%esp
.L32:
	movl 20(%ebx),%edx
	testl %edx,%edx
	je .L33
	movl 24(%ebx),%eax
	pushl %eax
	movl %edi,%eax
	pushl %edx
	addl MI_M3RT+364,%eax
	pushl %eax
	movl MI_CG+268,%eax
	call *%eax
	addl $12,%esp
.L33:
	addl MI_M3RT+368,%edi
.L29:
	movl 28(%ebx),%ebx
.L27:
	testl %ebx,%ebx
	jne .L28
.L18:
	cmpl $0,MM_ProcBody+268
	je .L9
	pushl $0
	movl MI_Module+96,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	pushl $MM_ProcBody+440
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%ebx
	pushl %ebx
	pushl $-1
	movl MI_CG+788,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl %ebx
	movl MI_M3ID+44,%eax
	call *%eax
	pushl $0
	movl %eax,%esi
	pushl $0
	movl MI_Target+752,%eax
	pushl %eax
	pushl $0
	pushl $15
	pushl $0
	pushl %esi
	movl MI_CG+292,%eax
	call *%eax
	movl %eax,%ebx
	movl 12(%ebp),%ecx
	addl $36,%esp
	movl %ebx,(%ecx)
	pushl %ebx
	movl MI_CG+296,%eax
	call *%eax
	movl MM_ProcBody+268,%ebx
	addl $4,%esp
	jmp .L36
	.align 16
.L37:
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	movl MI_CG+388,%eax
	call *%eax
	addl $8,%esp
	movl 4(%ebx),%eax
	pushl %eax
	movl -4(%ebp),%ecx
	pushl %ecx
	movl MI_CG+412,%eax
	call *%eax
	addl $8,%esp
	movl (%ebx),%ebx
.L36:
	testl %ebx,%ebx
	jne .L37
	movl %ebx,MM_ProcBody+268
	pushl $15
	movl MI_CG+360,%eax
	call *%eax
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	pushl %eax
	movl MI_CG+300,%eax
	call *%eax
.L9:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 ProcBody__EmitAll,.Lfe5-ProcBody__EmitAll
	.align 16
	.type	 ProcBody__SourceOrder,@function
ProcBody__SourceOrder:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 8(%ebp),%edx
	jmp .L44
	.align 16
.L45:
	movl 28(%edx),%eax
	movl %esi,28(%edx)
	movl %edx,%esi
	movl %eax,%edx
.L44:
	testl %edx,%edx
	jne .L45
	movl %esi,%ebx
	jmp .L47
	.align 16
.L48:
	movl 32(%ebx),%eax
	pushl %eax
	call ProcBody__SourceOrder
	movl %eax,%edx
	movl %edx,32(%ebx)
	movl 28(%ebx),%ebx
	addl $4,%esp
.L47:
	testl %ebx,%ebx
	jne .L48
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 ProcBody__SourceOrder,.Lfe6-ProcBody__SourceOrder
	.align 16
	.type	 ProcBody__EmitDecl,@function
ProcBody__EmitDecl:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L51
	.align 16
.L52:
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %ebx
	call *%eax
	movl 32(%ebx),%eax
	pushl %eax
	call ProcBody__EmitDecl
	movl 28(%ebx),%ebx
	addl $8,%esp
.L51:
	testl %ebx,%ebx
	jne .L52
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 ProcBody__EmitDecl,.Lfe7-ProcBody__EmitDecl
	.align 16
	.type	 ProcBody__EmitBody,@function
ProcBody__EmitBody:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	jmp .L55
	.align 16
.L56:
	cmpb $0,MI_Host+78
	je .L57
	movl 32(%ebx),%eax
	pushl %eax
	call ProcBody__EmitBody
	addl $4,%esp
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L58
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	pushl $-1
	movl MI_CG+788,%eax
	call *%eax
	addl $20,%esp
.L58:
	movl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %ebx
	call *%eax
	addl $4,%esp
	jmp .L59
	.align 16
.L57:
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L60
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	pushl $-1
	movl MI_CG+788,%eax
	call *%eax
	addl $20,%esp
.L60:
	movl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %ebx
	call *%eax
	movl 32(%ebx),%eax
	pushl %eax
	call ProcBody__EmitBody
	addl $8,%esp
.L59:
	movl 28(%ebx),%edx
	movl MM_ProcBody+260,%eax
	movl %eax,28(%ebx)
	movl %ebx,MM_ProcBody+260
	movl %edx,%ebx
.L55:
	testl %ebx,%ebx
	jne .L56
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 ProcBody__EmitBody,.Lfe8-ProcBody__EmitBody
	.align 16
	.type	 ProcBody__Reset,@function
ProcBody__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_ProcBody+252
	movl $0,MM_ProcBody+256
	movl $0,MM_ProcBody+260
	movl $-1,MM_ProcBody+264
	movl $0,MM_ProcBody+268
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 ProcBody__Reset,.Lfe9-ProcBody__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_ProcBody
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_ProcBody
.data
	.align 4
	.type	 MM_ProcBody,@object
	.size	 MM_ProcBody,872
MM_ProcBody:
	.long MM_ProcBody+652
	.long MM_ProcBody+44
	.long MM_ProcBody+320
	.long MM_ProcBody+308
	.zero	4
	.long MM_ProcBody+532
	.zero	4
	.long MM_ProcBody+644
	.long MM_ProcBody+644
	.zero	16
	.long 1394193223
.byte 254
.byte 22
.byte 195
.byte 68
.byte 185
.byte 165
.byte 218
.byte 23
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ProcBody+835
	.long MM_ProcBody+838
	.long MM_ProcBody+841
	.zero	8
	.long 1338658035
	.zero	12
	.long MM_ProcBody+850
	.long MM_ProcBody+861
	.long MM_ProcBody+148
	.zero	8
	.long 1029288734
.byte 251
.byte 254
.byte 228
.byte 60
.byte 229
.byte 77
.byte 189
.byte 1
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_ProcBody+796
	.long MM_ProcBody+801
	.long MM_ProcBody+805
	.zero	28
	.long MM_ProcBody+820
	.zero	16
	.long -1
	.zero	4
	.long ProcBody__SourceOrder
	.long ProcBody__EmitDecl
	.long ProcBody__EmitBody
	.long ProcBody__Push
	.long ProcBody__Pop
	.long ProcBody__Schedule
	.long ProcBody__DelayedInit
	.long ProcBody__EmitAll
	.long ProcBody__Reset
	.long 1338658032
	.long 1394193223
	.zero	8
	.long 1029288734
	.long 2
	.long MM_ProcBody+340
	.long 13
	.ascii	"*proc names*"
	.zero	4
	.long 2
	.long MM_ProcBody+368
	.long 16
	.ascii	"procedure names"
	.zero	1
	.long 2
	.long MM_ProcBody+396
	.long 12
	.ascii	"*proc info*"
	.zero	1
	.long 2
	.long MM_ProcBody+420
	.long 16
	.ascii	"procedure table"
	.zero	1
	.long 2
	.long MM_ProcBody+448
	.long 6
	.ascii	"_LINK"
	.zero	3
	.ascii	"Reset"
	.zero	1
	.ascii	"EmitBody"
	.zero	1
	.ascii	"EmitDecl"
	.zero	1
	.ascii	"SourceOrder"
	.zero	1
	.ascii	"EmitAll"
	.zero	1
	.ascii	"DelayedInit"
	.zero	1
	.ascii	"Schedule"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"Push"
	.zero	3
	.long ProcBody__Reset
	.long MM_ProcBody+456
	.long MI_ProcBody+168
	.long ProcBody__EmitBody
	.long MM_ProcBody+462
	.zero	4
	.long ProcBody__EmitDecl
	.long MM_ProcBody+471
	.zero	4
	.long ProcBody__SourceOrder
	.long MM_ProcBody+480
	.zero	4
	.long ProcBody__EmitAll
	.long MM_ProcBody+492
	.long MI_ProcBody+164
	.long ProcBody__DelayedInit
	.long MM_ProcBody+500
	.long MI_ProcBody+160
	.long ProcBody__Schedule
	.long MM_ProcBody+512
	.long MI_ProcBody+156
	.long ProcBody__Pop
	.long MM_ProcBody+521
	.long MI_ProcBody+152
	.long ProcBody__Push
	.long MM_ProcBody+525
	.long MI_ProcBody+148
	.zero	4
.byte 42
.byte 252
.byte 4
.byte 4
.byte 4
.byte 37
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/ProcBody.m3"
	.zero	1
.byte 4
.byte 14
.byte 4
.byte 14
.byte 0
.byte 4
.byte 37
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 16
.byte 30
.byte 179
.byte 89
.byte 61
.byte 7
.byte 16
.byte 121
.byte 130
.byte 239
.byte 251
.byte 24
	.ascii	"ProcBody.Delay"
	.zero	1
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 240
.byte 76
.byte 202
.byte 79
.byte 23
	.ascii	"ProcBody.T"
	.zero	1
	.ascii	"ProcBody.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
