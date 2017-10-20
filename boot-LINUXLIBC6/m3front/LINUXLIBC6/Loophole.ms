	.file	"Loophole.mc"
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
	.type	 Loophole__TypeOf,@function
Loophole__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl MI_Int+44,%eax
	movl 8(%ebp),%edx
	movl %eax,-4(%ebp)
	movl 20(%edx),%edx
	testl %edx,%edx
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	cmpl $1,4(%edx)
	ja .L3
	pushl $306
	call _m3_fault
	.align 16
.L3:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Loophole__TypeOf,.Lfe1-Loophole__TypeOf
	.align 16
	.type	 Loophole__Check,@function
Loophole__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L6
	pushl $420
	call _m3_fault
	.align 16
.L6:
	movl %eax,%edx
	cmpl $1,4(%edx)
	ja .L7
	pushl $418
	call _m3_fault
	.align 16
.L7:
	leal -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_TypeExpr+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L8
	pushl $MM_Loophole+96
	movl MI_Error+44,%eax
	call *%eax
	movl MI_Int+44,%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
.L8:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L9
	pushl $484
	call _m3_fault
	.align 16
.L9:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L10
	pushl $482
	call _m3_fault
	.align 16
.L10:
	movl -4(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_CastExpr+44,%eax
	call *%eax
	movl %eax,%ecx
	movl 20(%ebx),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L11
	pushl $484
	call _m3_fault
	.align 16
.L11:
	cmpl $0,4(%eax)
	jne .L12
	pushl $482
	call _m3_fault
	.align 16
.L12:
	movl (%eax),%edx
	movl %ecx,(%edx)
	movl MI_Module+68,%eax
	call *%eax
	testl %eax,%eax
	je .L13
	pushl $MM_Loophole+152
	movl MI_Error+44,%eax
	call *%eax
	addl $4,%esp
.L13:
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L14
	pushl $516
	call _m3_fault
	.align 16
.L14:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L15
	pushl $514
	call _m3_fault
	.align 16
.L15:
	movl 12(%ebp),%eax
	pushl %eax
	movl (%edx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl %eax,8(%ebx)
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Loophole__Check,.Lfe2-Loophole__Check
	.align 16
	.type	 Loophole__NeedsAddress,@function
Loophole__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L17
	pushl $612
	call _m3_fault
	.align 16
.L17:
	cmpl $0,4(%eax)
	jne .L18
	pushl $610
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+184,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Loophole__NeedsAddress,.Lfe3-Loophole__NeedsAddress
	.align 16
	.type	 Loophole__Prep,@function
Loophole__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L20
	pushl $692
	call _m3_fault
	.align 16
.L20:
	cmpl $0,4(%eax)
	jne .L21
	pushl $690
	call _m3_fault
	.align 16
.L21:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Loophole__Prep,.Lfe4-Loophole__Prep
	.align 16
	.type	 Loophole__Compile,@function
Loophole__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L23
	pushl $772
	call _m3_fault
	.align 16
.L23:
	cmpl $0,4(%eax)
	jne .L24
	pushl $770
	call _m3_fault
	.align 16
.L24:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Loophole__Compile,.Lfe5-Loophole__Compile
	.align 16
	.type	 Loophole__PrepLV,@function
Loophole__PrepLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L26
	pushl $852
	call _m3_fault
	.align 16
.L26:
	cmpl $0,4(%eax)
	jne .L27
	pushl $850
	call _m3_fault
	.align 16
.L27:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Loophole__PrepLV,.Lfe6-Loophole__PrepLV
	.align 16
	.type	 Loophole__CompileLV,@function
Loophole__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L29
	pushl $932
	call _m3_fault
	.align 16
.L29:
	cmpl $0,4(%eax)
	jne .L30
	pushl $930
	call _m3_fault
	.align 16
.L30:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+212,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Loophole__CompileLV,.Lfe7-Loophole__CompileLV
	.align 16
	.type	 Loophole__IsWritable,@function
Loophole__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L32
	pushl $1012
	call _m3_fault
	.align 16
.L32:
	cmpl $0,4(%eax)
	jne .L33
	pushl $1010
	call _m3_fault
	.align 16
.L33:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+172,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Loophole__IsWritable,.Lfe8-Loophole__IsWritable
	.align 16
	.type	 Loophole__IsDesignator,@function
Loophole__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L35
	pushl $1092
	call _m3_fault
	.align 16
.L35:
	cmpl $0,4(%eax)
	jne .L36
	pushl $1090
	call _m3_fault
	.align 16
.L36:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Loophole__IsDesignator,.Lfe9-Loophole__IsDesignator
	.align 16
	.type	 Loophole__NoteWrites,@function
Loophole__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	testl %eax,%eax
	jne .L38
	pushl $1172
	call _m3_fault
	.align 16
.L38:
	cmpl $0,4(%eax)
	jne .L39
	pushl $1170
	call _m3_fault
	.align 16
.L39:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Loophole__NoteWrites,.Lfe10-Loophole__NoteWrites
	.align 16
	.type	 Loophole__Initialize,@function
Loophole__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Loophole+84,%eax
	pushl %eax
	movl MM_Loophole+80,%eax
	pushl %eax
	movl MM_Loophole+76,%eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+196,%eax
	pushl %eax
	movl MI_CallExpr+192,%eax
	pushl %eax
	movl MM_Loophole+72,%eax
	pushl %eax
	movl MM_Loophole+68,%eax
	pushl %eax
	movl MM_Loophole+64,%eax
	pushl %eax
	movl MM_Loophole+60,%eax
	pushl %eax
	movl MM_Loophole+52,%eax
	pushl %eax
	movl MM_Loophole+56,%eax
	pushl %eax
	movl MM_Loophole+48,%eax
	pushl %eax
	pushl $0
	pushl $1
	pushl $0
	pushl $1
	pushl $2
	pushl $2
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Loophole+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Loophole+192
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Loophole__Initialize,.Lfe11-Loophole__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Loophole
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_Loophole
.data
	.align 4
	.type	 MM_Loophole,@object
	.size	 MM_Loophole,608
MM_Loophole:
	.long MM_Loophole+456
	.zero	16
	.long MM_Loophole+316
	.zero	4
	.long MM_Loophole+452
	.long MM_Loophole+452
	.zero	12
	.long Loophole__TypeOf
	.long Loophole__Check
	.long Loophole__NeedsAddress
	.long Loophole__Prep
	.long Loophole__Compile
	.long Loophole__PrepLV
	.long Loophole__CompileLV
	.long Loophole__IsWritable
	.long Loophole__IsDesignator
	.long Loophole__NoteWrites
	.long Loophole__Initialize
	.long 2
	.long MM_Loophole+104
	.long 41
	.ascii	"LOOPHOLE: second argument must be a type"
	.zero	4
	.long 2
	.long MM_Loophole+160
	.long 27
	.ascii	"LOOPHOLE: unsafe operation"
	.zero	2
	.long 2
	.long MM_Loophole+200
	.long 9
	.ascii	"LOOPHOLE"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"PrepLV"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	3
	.long Loophole__Initialize
	.long MM_Loophole+212
	.long MI_Loophole+44
	.long Loophole__NoteWrites
	.long MM_Loophole+223
	.zero	4
	.long Loophole__IsDesignator
	.long MM_Loophole+234
	.zero	4
	.long Loophole__IsWritable
	.long MM_Loophole+247
	.zero	4
	.long Loophole__CompileLV
	.long MM_Loophole+258
	.zero	4
	.long Loophole__PrepLV
	.long MM_Loophole+268
	.zero	4
	.long Loophole__Compile
	.long MM_Loophole+275
	.zero	4
	.long Loophole__Prep
	.long MM_Loophole+283
	.zero	4
	.long Loophole__NeedsAddress
	.long MM_Loophole+288
	.zero	4
	.long Loophole__Check
	.long MM_Loophole+301
	.zero	4
	.long Loophole__TypeOf
	.long MM_Loophole+307
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Loophole.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
