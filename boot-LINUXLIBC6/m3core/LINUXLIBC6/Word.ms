	.file	"Word.mc"
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
	.type	 Word__Plus,@function
Word__Plus:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	addl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Word__Plus,.Lfe1-Word__Plus
	.align 16
	.type	 Word__Times,@function
Word__Times:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	imull 12(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Word__Times,.Lfe2-Word__Times
	.align 16
	.type	 Word__Minus,@function
Word__Minus:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	subl %eax,%edx
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Word__Minus,.Lfe3-Word__Minus
	.align 16
	.type	 Word__Divide,@function
Word__Divide:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	xorl %edx,%edx
	divl 12(%ebp)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Word__Divide,.Lfe4-Word__Divide
	.align 16
	.type	 Word__Mod,@function
Word__Mod:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	xorl %edx,%edx
	divl 12(%ebp)
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Word__Mod,.Lfe5-Word__Mod
	.align 16
	.type	 Word__LT,@function
Word__LT:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	setb %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Word__LT,.Lfe6-Word__LT
	.align 16
	.type	 Word__LE,@function
Word__LE:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	setbe %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Word__LE,.Lfe7-Word__LE
	.align 16
	.type	 Word__GT,@function
Word__GT:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	seta %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Word__GT,.Lfe8-Word__GT
	.align 16
	.type	 Word__GE,@function
Word__GE:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	setae %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Word__GE,.Lfe9-Word__GE
	.align 16
	.type	 Word__And,@function
Word__And:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	andl 12(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Word__And,.Lfe10-Word__And
	.align 16
	.type	 Word__Or,@function
Word__Or:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	orl 12(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Word__Or,.Lfe11-Word__Or
	.align 16
	.type	 Word__Xor,@function
Word__Xor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	xorl 12(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Word__Xor,.Lfe12-Word__Xor
	.align 16
	.type	 Word__Not,@function
Word__Not:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	notl %eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Word__Not,.Lfe13-Word__Not
	.align 16
	.type	 Word__Shift,@function
Word__Shift:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl %ecx,%eax
	testl %ecx,%ecx
	jl .L15
	xorl %eax,%eax
	cmpl $31,%ecx
	jg .L16
	movl %edx,%eax
	sall %cl,%eax
	jmp .L16
	.align 16
.L15:
	movl %eax,%ecx
	negl %ecx
	xorl %eax,%eax
	cmpl $31,%ecx
	jg .L16
	movl %edx,%eax
	shrl %cl,%eax
.L16:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Word__Shift,.Lfe14-Word__Shift
	.align 16
	.type	 Word__LeftShift,@function
Word__LeftShift:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	xorl %ecx,%ecx
	movb 12(%ebp),%cl
	cmpl $31,%ecx
	ja .L22
	movl 8(%ebp),%eax
	sall %cl,%eax
.L22:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Word__LeftShift,.Lfe15-Word__LeftShift
	.align 16
	.type	 Word__RightShift,@function
Word__RightShift:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	xorl %ecx,%ecx
	movb 12(%ebp),%cl
	cmpl $31,%ecx
	ja .L25
	movl 8(%ebp),%eax
	shrl %cl,%eax
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Word__RightShift,.Lfe16-Word__RightShift
	.align 16
	.type	 Word__Rotate,@function
Word__Rotate:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	movl %eax,%edx
	testl %eax,%eax
	jl .L28
	movl %eax,%ecx
	andl $31,%ecx
	movl %ebx,%eax
	roll %cl,%eax
	jmp .L29
	.align 16
.L28:
	movl %edx,%eax
	negl %eax
	movl %eax,%ecx
	andl $31,%ecx
	movl %ebx,%eax
	rorl %cl,%eax
.L29:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Word__Rotate,.Lfe17-Word__Rotate
	.align 16
	.type	 Word__LeftRotate,@function
Word__LeftRotate:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 12(%ebp),%al
	movl %eax,%ecx
	andl $31,%ecx
	movl 8(%ebp),%eax
	roll %cl,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Word__LeftRotate,.Lfe18-Word__LeftRotate
	.align 16
	.type	 Word__RightRotate,@function
Word__RightRotate:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 12(%ebp),%al
	movl %eax,%ecx
	andl $31,%ecx
	movl 8(%ebp),%eax
	rorl %cl,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Word__RightRotate,.Lfe19-Word__RightRotate
	.align 16
	.type	 Word__Extract,@function
Word__Extract:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%esi
	leal (%esi,%edx),%eax
	cmpl $32,%eax
	jle .L33
	pushl $705
	call _m3_fault
	.align 16
.L33:
	testl %esi,%esi
	je .L34
	movl $32,%eax
	movl %eax,%ecx
	subl %edx,%ecx
	movl %ecx,%edx
	subl %esi,%edx
	movl 8(%ebp),%ebx
	movl %edx,%ecx
	sall %cl,%ebx
	movl %ebx,%edx
	subl %esi,%eax
	movl %eax,%ecx
	shrl %cl,%edx
	movl %edx,%eax
	jmp .L35
	.align 16
.L34:
	movl %esi,%eax
.L35:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Word__Extract,.Lfe20-Word__Extract
	.align 16
	.type	 Word__Insert,@function
Word__Insert:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	movl 20(%ebp),%ecx
	leal (%ecx,%ebx),%eax
	cmpl $32,%eax
	jle .L37
	pushl $753
	call _m3_fault
	.align 16
.L37:
	cmpl $0,20(%ebp)
	je .L38
	cmpl $32,20(%ebp)
	je .L40
	movl $-1,%edx
	movl 20(%ebp),%ecx
	sall %cl,%edx
	notl %edx
	movl %edx,%eax
	movl %ebx,%ecx
	sall %cl,%eax
	notl %eax
	andl %eax,%esi
	movl %esi,-4(%ebp)
	movl %edi,%eax
	andl %edx,%eax
	sall %cl,%eax
	orl %esi,%eax
	jmp .L39
	.align 16
.L40:
	movl %edi,%eax
	jmp .L39
	.align 16
.L38:
	movl %esi,%eax
.L39:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Word__Insert,.Lfe21-Word__Insert
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Word
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe22:
	.size	 _m3_fault,.Lfe22-_m3_fault
.globl MM_Word
.data
	.align 4
	.type	 MM_Word,@object
	.size	 MM_Word,652
MM_Word:
	.long MM_Word+512
	.zero	16
	.long MM_Word+256
	.zero	20
	.long Word__Plus
	.long Word__Times
	.long Word__Minus
	.long Word__Divide
	.long Word__Mod
	.long Word__LT
	.long Word__LE
	.long Word__GT
	.long Word__GE
	.long Word__And
	.long Word__Or
	.long Word__Xor
	.long Word__Not
	.long Word__Shift
	.long Word__LeftShift
	.long Word__RightShift
	.long Word__Rotate
	.long Word__LeftRotate
	.long Word__RightRotate
	.long Word__Extract
	.long Word__Insert
	.ascii	"Insert"
	.zero	1
	.ascii	"Extract"
	.zero	1
	.ascii	"RightRotate"
	.zero	1
	.ascii	"LeftRotate"
	.zero	1
	.ascii	"Rotate"
	.zero	1
	.ascii	"RightShift"
	.zero	1
	.ascii	"LeftShift"
	.zero	1
	.ascii	"Shift"
	.zero	1
	.ascii	"Not"
	.zero	1
	.ascii	"Xor"
	.zero	1
	.ascii	"Or"
	.zero	1
	.ascii	"And"
	.zero	1
	.ascii	"GE"
	.zero	1
	.ascii	"GT"
	.zero	1
	.ascii	"LE"
	.zero	1
	.ascii	"LT"
	.zero	1
	.ascii	"Mod"
	.zero	1
	.ascii	"Divide"
	.zero	1
	.ascii	"Minus"
	.zero	1
	.ascii	"Times"
	.zero	1
	.ascii	"Plus"
	.zero	2
	.long Word__Insert
	.long MM_Word+128
	.long MI_Word+124
	.long Word__Extract
	.long MM_Word+135
	.long MI_Word+120
	.long Word__RightRotate
	.long MM_Word+143
	.long MI_Word+116
	.long Word__LeftRotate
	.long MM_Word+155
	.long MI_Word+112
	.long Word__Rotate
	.long MM_Word+166
	.long MI_Word+108
	.long Word__RightShift
	.long MM_Word+173
	.long MI_Word+104
	.long Word__LeftShift
	.long MM_Word+184
	.long MI_Word+100
	.long Word__Shift
	.long MM_Word+194
	.long MI_Word+96
	.long Word__Not
	.long MM_Word+200
	.long MI_Word+92
	.long Word__Xor
	.long MM_Word+204
	.long MI_Word+88
	.long Word__Or
	.long MM_Word+208
	.long MI_Word+84
	.long Word__And
	.long MM_Word+211
	.long MI_Word+80
	.long Word__GE
	.long MM_Word+215
	.long MI_Word+76
	.long Word__GT
	.long MM_Word+218
	.long MI_Word+72
	.long Word__LE
	.long MM_Word+221
	.long MI_Word+68
	.long Word__LT
	.long MM_Word+224
	.long MI_Word+64
	.long Word__Mod
	.long MM_Word+227
	.long MI_Word+60
	.long Word__Divide
	.long MM_Word+231
	.long MI_Word+56
	.long Word__Minus
	.long MM_Word+238
	.long MI_Word+52
	.long Word__Times
	.long MM_Word+244
	.long MI_Word+48
	.long Word__Plus
	.long MM_Word+250
	.long MI_Word+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/word/Word.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
