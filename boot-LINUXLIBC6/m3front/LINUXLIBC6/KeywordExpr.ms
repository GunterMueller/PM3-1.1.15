	.file	"KeywordExpr.mc"
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
	.type	 KeywordExpr__New,@function
KeywordExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_KeywordExpr+224,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	movl %ebx,20(%edi)
	movl %esi,16(%edi)
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 KeywordExpr__New,.Lfe1-KeywordExpr__New
	.align 16
	.type	 KeywordExpr__Is,@function
KeywordExpr__Is:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L9
	movl -4(%eax),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_KeywordExpr+228
	jg .L6
	movl MM_KeywordExpr+224,%eax
	cmpl %edx,4(%eax)
	jl .L6
	movl $1,%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 KeywordExpr__Is,.Lfe2-KeywordExpr__Is
	.align 16
	.type	 KeywordExpr__Split,@function
KeywordExpr__Split:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	testl %edx,%edx
	je .L14
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_KeywordExpr+228
	jg .L14
	movl MM_KeywordExpr+224,%eax
	cmpl %ecx,4(%eax)
	jl .L14
	movl 20(%edx),%eax
	movl %eax,(%ebx)
	movl 16(%edx),%eax
	movl %eax,(%esi)
	movl $1,%eax
	jmp .L17
	.align 16
.L14:
	xorl %eax,%eax
.L17:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 KeywordExpr__Split,.Lfe3-KeywordExpr__Split
	.align 16
	.type	 KeywordExpr__TypeOf,@function
KeywordExpr__TypeOf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 KeywordExpr__TypeOf,.Lfe4-KeywordExpr__TypeOf
	.align 16
	.type	 KeywordExpr__Check,@function
KeywordExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 KeywordExpr__Check,.Lfe5-KeywordExpr__Check
	.align 16
	.type	 KeywordExpr__EqCheck,@function
KeywordExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	movl 16(%ebp),%ebx
	testl %edx,%edx
	je .L25
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_KeywordExpr+228
	jg .L24
	movl MM_KeywordExpr+224,%eax
	cmpl %ecx,4(%eax)
	jge .L23
	jmp .L24
	.align 16
.L25:
	movl %edx,%eax
	jmp .L27
	.align 16
.L23:
	pushl %ebx
	movl 16(%edx),%eax
	pushl %eax
	jmp .L28
	.align 16
.L24:
	pushl %ebx
	pushl %edx
.L28:
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Expr+232,%eax
	call *%eax
.L27:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 KeywordExpr__EqCheck,.Lfe6-KeywordExpr__EqCheck
	.align 16
	.type	 KeywordExpr__NeedsAddress,@function
KeywordExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+184,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 KeywordExpr__NeedsAddress,.Lfe7-KeywordExpr__NeedsAddress
	.align 16
	.type	 KeywordExpr__Prep,@function
KeywordExpr__Prep:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 KeywordExpr__Prep,.Lfe8-KeywordExpr__Prep
	.align 16
	.type	 KeywordExpr__Compile,@function
KeywordExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 KeywordExpr__Compile,.Lfe9-KeywordExpr__Compile
	.align 16
	.type	 KeywordExpr__PrepLV,@function
KeywordExpr__PrepLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 KeywordExpr__PrepLV,.Lfe10-KeywordExpr__PrepLV
	.align 16
	.type	 KeywordExpr__CompileLV,@function
KeywordExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+212,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 KeywordExpr__CompileLV,.Lfe11-KeywordExpr__CompileLV
	.align 16
	.type	 KeywordExpr__Bounder,@function
KeywordExpr__Bounder:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+164,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 KeywordExpr__Bounder,.Lfe12-KeywordExpr__Bounder
	.align 16
	.type	 KeywordExpr__IsDesignator,@function
KeywordExpr__IsDesignator:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+168,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 KeywordExpr__IsDesignator,.Lfe13-KeywordExpr__IsDesignator
	.align 16
	.type	 KeywordExpr__IsWritable,@function
KeywordExpr__IsWritable:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+172,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 KeywordExpr__IsWritable,.Lfe14-KeywordExpr__IsWritable
	.align 16
	.type	 KeywordExpr__Fold,@function
KeywordExpr__Fold:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%edx
	testl %eax,%eax
	je .L38
	movl %ebx,%eax
	movl %edx,16(%eax)
.L38:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 KeywordExpr__Fold,.Lfe15-KeywordExpr__Fold
	.align 16
	.type	 KeywordExpr__IsZeroes,@function
KeywordExpr__IsZeroes:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+176,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 KeywordExpr__IsZeroes,.Lfe16-KeywordExpr__IsZeroes
	.align 16
	.type	 KeywordExpr__PrepLiteral,@function
KeywordExpr__PrepLiteral:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Expr+236,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 KeywordExpr__PrepLiteral,.Lfe17-KeywordExpr__PrepLiteral
	.align 16
	.type	 KeywordExpr__GenLiteral,@function
KeywordExpr__GenLiteral:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	movl 16(%ecx),%eax
	pushl %eax
	movl MI_Expr+240,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 KeywordExpr__GenLiteral,.Lfe18-KeywordExpr__GenLiteral
	.align 16
	.type	 KeywordExpr__NoteWrites,@function
KeywordExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Expr+228,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 KeywordExpr__NoteWrites,.Lfe19-KeywordExpr__NoteWrites
	.align 16
	.type	 M_KeywordExpr_tbe91400e_LINK,@function
M_KeywordExpr_tbe91400e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_KeywordExpr+224,%eax
	movl MM_KeywordExpr+148,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_KeywordExpr+152,%edx
	movl %edx,8(%eax)
	movl MM_KeywordExpr+160,%edx
	movl %edx,36(%eax)
	movl MM_KeywordExpr+164,%edx
	movl %edx,52(%eax)
	movl MM_KeywordExpr+168,%edx
	movl %edx,56(%eax)
	movl MM_KeywordExpr+172,%edx
	movl %edx,60(%eax)
	movl MM_KeywordExpr+176,%edx
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MM_KeywordExpr+192,%edx
	movl %edx,16(%eax)
	movl MM_KeywordExpr+156,%edx
	movl %edx,12(%eax)
	movl MM_KeywordExpr+180,%edx
	movl %edx,20(%eax)
	movl MM_KeywordExpr+188,%edx
	movl %edx,24(%eax)
	movl MM_KeywordExpr+184,%edx
	movl %edx,28(%eax)
	movl MM_KeywordExpr+196,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MM_KeywordExpr+200,%edx
	movl %edx,44(%eax)
	movl MM_KeywordExpr+204,%edx
	movl %edx,48(%eax)
	movl MM_KeywordExpr+208,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe20:
	.size	 M_KeywordExpr_tbe91400e_LINK,.Lfe20-M_KeywordExpr_tbe91400e_LINK
.globl MM_KeywordExpr
.data
	.align 4
	.type	 MM_KeywordExpr,@object
	.size	 MM_KeywordExpr,804
MM_KeywordExpr:
	.long MM_KeywordExpr+624
	.long MM_KeywordExpr+44
	.long MM_KeywordExpr+224
	.zero	8
	.long MM_KeywordExpr+392
	.zero	28
	.long -1097777138
.byte 68
.byte 247
.byte 44
.byte 164
.byte 74
.byte 183
.byte 189
.byte 26
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_KeywordExpr+772
	.long MM_KeywordExpr+775
	.long MM_KeywordExpr+777
	.zero	4
	.long M_KeywordExpr_tbe91400e_LINK
	.long -350897909
	.zero	16
	.long MM_KeywordExpr+788
	.zero	4
	.long KeywordExpr__TypeOf
	.long KeywordExpr__Check
	.long KeywordExpr__EqCheck
	.long KeywordExpr__NeedsAddress
	.long KeywordExpr__Prep
	.long KeywordExpr__Compile
	.long KeywordExpr__PrepLV
	.long KeywordExpr__CompileLV
	.long KeywordExpr__Bounder
	.long KeywordExpr__IsDesignator
	.long KeywordExpr__IsWritable
	.long KeywordExpr__Fold
	.long KeywordExpr__IsZeroes
	.long KeywordExpr__PrepLiteral
	.long KeywordExpr__GenLiteral
	.long KeywordExpr__NoteWrites
	.long KeywordExpr__New
	.long KeywordExpr__Is
	.long KeywordExpr__Split
	.zero	4
	.long -1097777138
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"GenLiteral"
	.zero	1
	.ascii	"PrepLiteral"
	.zero	1
	.ascii	"IsZeroes"
	.zero	1
	.ascii	"Fold"
	.zero	1
	.ascii	"IsWritable"
	.zero	1
	.ascii	"IsDesignator"
	.zero	1
	.ascii	"Bounder"
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
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"TypeOf"
	.zero	1
	.ascii	"Split"
	.zero	1
	.ascii	"Is"
	.zero	1
	.ascii	"New"
	.zero	4
	.long KeywordExpr__NoteWrites
	.long MM_KeywordExpr+232
	.zero	4
	.long KeywordExpr__GenLiteral
	.long MM_KeywordExpr+243
	.zero	4
	.long KeywordExpr__PrepLiteral
	.long MM_KeywordExpr+254
	.zero	4
	.long KeywordExpr__IsZeroes
	.long MM_KeywordExpr+266
	.zero	4
	.long KeywordExpr__Fold
	.long MM_KeywordExpr+275
	.zero	4
	.long KeywordExpr__IsWritable
	.long MM_KeywordExpr+280
	.zero	4
	.long KeywordExpr__IsDesignator
	.long MM_KeywordExpr+291
	.zero	4
	.long KeywordExpr__Bounder
	.long MM_KeywordExpr+304
	.zero	4
	.long KeywordExpr__CompileLV
	.long MM_KeywordExpr+312
	.zero	4
	.long KeywordExpr__PrepLV
	.long MM_KeywordExpr+322
	.zero	4
	.long KeywordExpr__Compile
	.long MM_KeywordExpr+329
	.zero	4
	.long KeywordExpr__Prep
	.long MM_KeywordExpr+337
	.zero	4
	.long KeywordExpr__NeedsAddress
	.long MM_KeywordExpr+342
	.zero	4
	.long KeywordExpr__EqCheck
	.long MM_KeywordExpr+355
	.zero	4
	.long KeywordExpr__Check
	.long MM_KeywordExpr+363
	.zero	4
	.long KeywordExpr__TypeOf
	.long MM_KeywordExpr+369
	.zero	4
	.long KeywordExpr__Split
	.long MM_KeywordExpr+376
	.long MI_KeywordExpr+52
	.long KeywordExpr__Is
	.long MM_KeywordExpr+382
	.long MI_KeywordExpr+48
	.long KeywordExpr__New
	.long MM_KeywordExpr+385
	.long MI_KeywordExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/KeywordExpr.m3"
	.zero	1
.byte 4
.byte 14
.byte 0
.byte 4
.byte 0
.byte 3
.byte 10
.byte 2
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 19
.byte 254
.byte 126
	.ascii	"KeywordExpr.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
