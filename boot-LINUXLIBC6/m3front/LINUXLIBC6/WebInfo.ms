	.file	"WebInfo.mc"
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
	.type	 WebInfo__Reset,@function
WebInfo__Reset:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl $0,-8(%ebp)
	cmpl $0,MM_WebInfo+44
	jne .L2
	movl MI_M3Buf+44,%eax
	call *%eax
	movl %eax,MM_WebInfo+44
.L2:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Scanner+128,%eax
	call *%eax
	pushl $64
	call WebInfo__OutC
	movl -8(%ebp),%eax
	pushl %eax
	call WebInfo__OutT
	call WebInfo__NL
	movl MI_Module+72,%eax
	call *%eax
	movb MM_WebInfo+108(%eax),%al
	andl $255,%eax
	pushl %eax
	call WebInfo__OutC
	pushl $0
	movl MI_Module+92,%eax
	call *%eax
	pushl %eax
	call WebInfo__OutN
	call WebInfo__NL
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WebInfo__Reset,.Lfe1-WebInfo__Reset
	.align 16
	.type	 WebInfo__Finish,@function
WebInfo__Finish:
	pushl %ebp
	movl %esp,%ebp
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WebInfo__Finish,.Lfe2-WebInfo__Finish
	.align 16
	.type	 WebInfo__Import_unit,@function
WebInfo__Import_unit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $67
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WebInfo__Import_unit,.Lfe3-WebInfo__Import_unit
	.align 16
	.type	 WebInfo__Export_unit,@function
WebInfo__Export_unit:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $68
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WebInfo__Export_unit,.Lfe4-WebInfo__Export_unit
	.align 16
	.type	 WebInfo__Declare_typename,@function
WebInfo__Declare_typename:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $69
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutV
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 WebInfo__Declare_typename,.Lfe5-WebInfo__Declare_typename
	.align 16
	.type	 WebInfo__Declare_array,@function
WebInfo__Declare_array:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
	pushl $70
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	pushl %esi
	call WebInfo__OutU
	pushl %edi
	call WebInfo__OutI
	call WebInfo__NL
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 WebInfo__Declare_array,.Lfe6-WebInfo__Declare_array
	.align 16
	.type	 WebInfo__Declare_open_array,@function
WebInfo__Declare_open_array:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl $71
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	pushl %esi
	call WebInfo__OutI
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 WebInfo__Declare_open_array,.Lfe7-WebInfo__Declare_open_array
	.align 16
	.type	 WebInfo__Declare_enum,@function
WebInfo__Declare_enum:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl $72
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutI
	pushl %esi
	call WebInfo__OutI
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 WebInfo__Declare_enum,.Lfe8-WebInfo__Declare_enum
	.align 16
	.type	 WebInfo__Declare_enum_elt,@function
WebInfo__Declare_enum_elt:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $73
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 WebInfo__Declare_enum_elt,.Lfe9-WebInfo__Declare_enum_elt
	.align 16
	.type	 WebInfo__Declare_packed,@function
WebInfo__Declare_packed:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl $74
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutI
	pushl %esi
	call WebInfo__OutU
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 WebInfo__Declare_packed,.Lfe10-WebInfo__Declare_packed
	.align 16
	.type	 WebInfo__Declare_record,@function
WebInfo__Declare_record:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl $75
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutI
	pushl %esi
	call WebInfo__OutI
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 WebInfo__Declare_record,.Lfe11-WebInfo__Declare_record
	.align 16
	.type	 WebInfo__Declare_field,@function
WebInfo__Declare_field:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	pushl $76
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	pushl %esi
	call WebInfo__OutI
	pushl %edi
	call WebInfo__OutI
	movl 20(%ebp),%eax
	pushl %eax
	call WebInfo__OutU
	call WebInfo__NL
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 WebInfo__Declare_field,.Lfe12-WebInfo__Declare_field
	.align 16
	.type	 WebInfo__Declare_set,@function
WebInfo__Declare_set:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	pushl $77
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	pushl %esi
	call WebInfo__OutI
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 WebInfo__Declare_set,.Lfe13-WebInfo__Declare_set
	.align 16
	.type	 WebInfo__Declare_subrange,@function
WebInfo__Declare_subrange:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 24(%ebp),%esi
	pushl $78
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	movl 16(%ebp),%eax
	pushl %eax
	call WebInfo__OutZ
	movl 20(%ebp),%eax
	pushl %eax
	call WebInfo__OutZ
	pushl %esi
	call WebInfo__OutI
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 WebInfo__Declare_subrange,.Lfe14-WebInfo__Declare_subrange
	.align 16
	.type	 WebInfo__Declare_pointer,@function
WebInfo__Declare_pointer:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	xorl %eax,%eax
	movb 20(%ebp),%al
	movl 16(%ebp),%esi
	movb MM_WebInfo+168(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %edx
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	addl $12,%esp
	testl %esi,%esi
	je .L17
	pushl $32
	call WebInfo__OutC
	pushl %esi
	call WebInfo__OutT
	addl $8,%esp
.L17:
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 WebInfo__Declare_pointer,.Lfe15-WebInfo__Declare_pointer
	.align 16
	.type	 WebInfo__Declare_indirect,@function
WebInfo__Declare_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $81
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 WebInfo__Declare_indirect,.Lfe16-WebInfo__Declare_indirect
	.align 16
	.type	 WebInfo__Declare_proctype,@function
WebInfo__Declare_proctype:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
	pushl $82
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutI
	pushl %esi
	call WebInfo__OutU
	pushl %edi
	call WebInfo__OutI
	call WebInfo__NL
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 WebInfo__Declare_proctype,.Lfe17-WebInfo__Declare_proctype
	.align 16
	.type	 WebInfo__Declare_formal,@function
WebInfo__Declare_formal:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	pushl $83
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	pushl %esi
	call WebInfo__OutU
	call WebInfo__NL
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 WebInfo__Declare_formal,.Lfe18-WebInfo__Declare_formal
	.align 16
	.type	 WebInfo__Declare_raises,@function
WebInfo__Declare_raises:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $84
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 WebInfo__Declare_raises,.Lfe19-WebInfo__Declare_raises
	.align 16
	.type	 WebInfo__Declare_object,@function
WebInfo__Declare_object:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%ebx
	movl 24(%ebp),%esi
	xorl %eax,%eax
	movb 20(%ebp),%al
	movl 28(%ebp),%edi
	movb MM_WebInfo+192(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %edx
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	pushl %esi
	call WebInfo__OutI
	pushl %edi
	call WebInfo__OutI
	movl 32(%ebp),%ecx
	pushl %ecx
	call WebInfo__OutI
	movl 36(%ebp),%ecx
	pushl %ecx
	call WebInfo__OutI
	addl $28,%esp
	cmpl $0,16(%ebp)
	je .L23
	pushl $32
	call WebInfo__OutC
	movl 16(%ebp),%ecx
	pushl %ecx
	call WebInfo__OutT
	addl $8,%esp
.L23:
	call WebInfo__NL
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 WebInfo__Declare_object,.Lfe20-WebInfo__Declare_object
	.align 16
	.type	 WebInfo__Declare_method,@function
WebInfo__Declare_method:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	movl $0,-4(%ebp)
	pushl $87
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	pushl %esi
	call WebInfo__OutU
	addl $12,%esp
	testl %edi,%edi
	je .L26
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_UserProc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L27
	movl -4(%ebp),%eax
	pushl %eax
	call WebInfo__OutV
	jmp .L28
	.align 16
.L27:
	pushl $MM_WebInfo+216
	call WebInfo__OutT
.L28:
	addl $4,%esp
.L26:
	call WebInfo__NL
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 WebInfo__Declare_method,.Lfe21-WebInfo__Declare_method
	.align 16
	.type	 WebInfo__Declare_override,@function
WebInfo__Declare_override:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl $0,-4(%ebp)
	pushl $88
	call WebInfo__OutC
	pushl %ebx
	call WebInfo__OutN
	addl $8,%esp
	testl %esi,%esi
	jne .L30
	pushl $MM_WebInfo+236
	jmp .L33
	.align 16
.L30:
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_UserProc+52,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L32
	movl -4(%ebp),%eax
	pushl %eax
	call WebInfo__OutV
	jmp .L34
	.align 16
.L32:
	pushl $MM_WebInfo+216
.L33:
	call WebInfo__OutT
.L34:
	addl $4,%esp
	call WebInfo__NL
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 WebInfo__Declare_override,.Lfe22-WebInfo__Declare_override
	.align 16
	.type	 WebInfo__Declare_opaque,@function
WebInfo__Declare_opaque:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $89
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 WebInfo__Declare_opaque,.Lfe23-WebInfo__Declare_opaque
	.align 16
	.type	 WebInfo__Reveal_opaque,@function
WebInfo__Reveal_opaque:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $90
	pushl %eax
	call WebInfo__OutX
	pushl %ebx
	call WebInfo__OutU
	call WebInfo__NL
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 WebInfo__Reveal_opaque,.Lfe24-WebInfo__Reveal_opaque
	.align 16
	.type	 WebInfo__OutC,@function
WebInfo__OutC:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 8(%ebp),%al
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 WebInfo__OutC,.Lfe25-WebInfo__OutC
	.align 16
	.type	 WebInfo__OutI,@function
WebInfo__OutI:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $32
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl %ebx
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+56,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 WebInfo__OutI,.Lfe26-WebInfo__OutI
	.align 16
	.type	 WebInfo__OutU,@function
WebInfo__OutU:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $32
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl %ebx
	call WebInfo__PutHex
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 WebInfo__OutU,.Lfe27-WebInfo__OutU
	.align 16
	.type	 WebInfo__OutN,@function
WebInfo__OutN:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3ID+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 WebInfo__OutN,.Lfe28-WebInfo__OutN
	.align 16
	.type	 WebInfo__OutX,@function
WebInfo__OutX:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	pushl %ebx
	call WebInfo__PutHex
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 WebInfo__OutX,.Lfe29-WebInfo__OutX
	.align 16
	.type	 WebInfo__OutV,@function
WebInfo__OutV:
	pushl %ebp
	movl %esp,%ebp
	subl $404,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl $32
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl $0,-404(%ebp)
	pushl $1
	pushl $1
	pushl $1
	leal -404(%ebp),%ebx
	pushl %ebx
	pushl %esi
	movl MI_Scope+120,%eax
	call *%eax
	pushl %ebx
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_Scope+124,%eax
	call *%eax
	leal -412(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 WebInfo__OutV,.Lfe30-WebInfo__OutV
	.align 16
	.type	 WebInfo__OutZ,@function
WebInfo__OutZ:
	pushl %ebp
	movl %esp,%ebp
	pushl $32
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 WebInfo__OutZ,.Lfe31-WebInfo__OutZ
	.align 16
	.type	 WebInfo__OutT,@function
WebInfo__OutT:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 WebInfo__OutT,.Lfe32-WebInfo__OutT
	.align 16
	.type	 WebInfo__PutHex,@function
WebInfo__PutHex:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $7,%edx
	pushl %ebx
	movl 8(%ebp),%ecx
.L46:
	movl %ecx,%eax
	andl $15,%eax
	cmpl $15,%eax
	jbe .L47
	pushl $4881
	call _m3_fault
	.align 16
.L47:
	movb MM_WebInfo+80(%eax),%al
	movb %al,-8(%edx,%ebp)
	shrl $4,%ecx
	decl %edx
	jns .L46
	leal -8(%ebp),%ebx
	movl %ebx,-16(%ebp)
	movl $8,-12(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+68,%eax
	call *%eax
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 WebInfo__PutHex,.Lfe33-WebInfo__PutHex
	.align 16
	.type	 WebInfo__NL,@function
WebInfo__NL:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+816,%eax
	pushl %eax
	movl MM_WebInfo+44,%eax
	pushl %eax
	movl MI_M3Buf+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 WebInfo__NL,.Lfe34-WebInfo__NL
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WebInfo
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe35:
	.size	 _m3_fault,.Lfe35-_m3_fault
.globl MM_WebInfo
.data
	.align 4
	.type	 MM_WebInfo,@object
	.size	 MM_WebInfo,1208
MM_WebInfo:
	.long MM_WebInfo+1064
	.zero	16
	.long MM_WebInfo+648
	.zero	4
	.long MM_WebInfo+1060
	.long MM_WebInfo+1060
	.zero	12
	.long WebInfo__OutC
	.long WebInfo__OutI
	.long WebInfo__OutU
	.long WebInfo__OutN
	.long WebInfo__OutX
	.long WebInfo__OutV
	.long WebInfo__OutZ
	.long WebInfo__OutT
.byte 48
.byte 49
.byte 50
.byte 51
.byte 52
.byte 53
.byte 54
.byte 55
.byte 56
.byte 57
.byte 97
.byte 98
.byte 99
.byte 100
.byte 101
.byte 102
	.long WebInfo__PutHex
	.long WebInfo__NL
	.long WebInfo__Reset
.byte 65
.byte 66
	.zero	2
	.long WebInfo__Finish
	.long WebInfo__Import_unit
	.long WebInfo__Export_unit
	.long WebInfo__Declare_typename
	.long WebInfo__Declare_array
	.long WebInfo__Declare_open_array
	.long WebInfo__Declare_enum
	.long WebInfo__Declare_enum_elt
	.long WebInfo__Declare_packed
	.long WebInfo__Declare_record
	.long WebInfo__Declare_field
	.long WebInfo__Declare_set
	.long WebInfo__Declare_subrange
	.long WebInfo__Declare_pointer
.byte 79
.byte 80
	.zero	2
	.long WebInfo__Declare_indirect
	.long WebInfo__Declare_proctype
	.long WebInfo__Declare_formal
	.long WebInfo__Declare_raises
	.long WebInfo__Declare_object
.byte 85
.byte 86
	.zero	2
	.long WebInfo__Declare_method
	.long WebInfo__Declare_override
	.long WebInfo__Declare_opaque
	.long WebInfo__Reveal_opaque
	.long 2
	.long MM_WebInfo+224
	.long 5
	.ascii	" NIL"
	.zero	4
	.long 2
	.long MM_WebInfo+244
	.long 6
	.ascii	" (??)"
	.zero	3
	.ascii	"NL"
	.zero	1
	.ascii	"PutHex"
	.zero	1
	.ascii	"OutT"
	.zero	1
	.ascii	"OutZ"
	.zero	1
	.ascii	"OutV"
	.zero	1
	.ascii	"OutX"
	.zero	1
	.ascii	"OutN"
	.zero	1
	.ascii	"OutU"
	.zero	1
	.ascii	"OutI"
	.zero	1
	.ascii	"OutC"
	.zero	1
	.ascii	"Reveal_opaque"
	.zero	1
	.ascii	"Declare_opaque"
	.zero	1
	.ascii	"Declare_override"
	.zero	1
	.ascii	"Declare_method"
	.zero	1
	.ascii	"Declare_object"
	.zero	1
	.ascii	"Declare_raises"
	.zero	1
	.ascii	"Declare_formal"
	.zero	1
	.ascii	"Declare_proctype"
	.zero	1
	.ascii	"Declare_indirect"
	.zero	1
	.ascii	"Declare_pointer"
	.zero	1
	.ascii	"Declare_subrange"
	.zero	1
	.ascii	"Declare_set"
	.zero	1
	.ascii	"Declare_field"
	.zero	1
	.ascii	"Declare_record"
	.zero	1
	.ascii	"Declare_packed"
	.zero	1
	.ascii	"Declare_enum_elt"
	.zero	1
	.ascii	"Declare_enum"
	.zero	1
	.ascii	"Declare_open_array"
	.zero	1
	.ascii	"Declare_array"
	.zero	1
	.ascii	"Declare_typename"
	.zero	1
	.ascii	"Export_unit"
	.zero	1
	.ascii	"Import_unit"
	.zero	1
	.ascii	"Finish"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.long WebInfo__NL
	.long MM_WebInfo+252
	.zero	4
	.long WebInfo__PutHex
	.long MM_WebInfo+255
	.zero	4
	.long WebInfo__OutT
	.long MM_WebInfo+262
	.zero	4
	.long WebInfo__OutZ
	.long MM_WebInfo+267
	.zero	4
	.long WebInfo__OutV
	.long MM_WebInfo+272
	.zero	4
	.long WebInfo__OutX
	.long MM_WebInfo+277
	.zero	4
	.long WebInfo__OutN
	.long MM_WebInfo+282
	.zero	4
	.long WebInfo__OutU
	.long MM_WebInfo+287
	.zero	4
	.long WebInfo__OutI
	.long MM_WebInfo+292
	.zero	4
	.long WebInfo__OutC
	.long MM_WebInfo+297
	.zero	4
	.long WebInfo__Reveal_opaque
	.long MM_WebInfo+302
	.long MI_WebInfo+136
	.long WebInfo__Declare_opaque
	.long MM_WebInfo+316
	.long MI_WebInfo+132
	.long WebInfo__Declare_override
	.long MM_WebInfo+331
	.long MI_WebInfo+128
	.long WebInfo__Declare_method
	.long MM_WebInfo+348
	.long MI_WebInfo+124
	.long WebInfo__Declare_object
	.long MM_WebInfo+363
	.long MI_WebInfo+120
	.long WebInfo__Declare_raises
	.long MM_WebInfo+378
	.long MI_WebInfo+116
	.long WebInfo__Declare_formal
	.long MM_WebInfo+393
	.long MI_WebInfo+112
	.long WebInfo__Declare_proctype
	.long MM_WebInfo+408
	.long MI_WebInfo+108
	.long WebInfo__Declare_indirect
	.long MM_WebInfo+425
	.long MI_WebInfo+104
	.long WebInfo__Declare_pointer
	.long MM_WebInfo+442
	.long MI_WebInfo+100
	.long WebInfo__Declare_subrange
	.long MM_WebInfo+458
	.long MI_WebInfo+96
	.long WebInfo__Declare_set
	.long MM_WebInfo+475
	.long MI_WebInfo+92
	.long WebInfo__Declare_field
	.long MM_WebInfo+487
	.long MI_WebInfo+88
	.long WebInfo__Declare_record
	.long MM_WebInfo+501
	.long MI_WebInfo+84
	.long WebInfo__Declare_packed
	.long MM_WebInfo+516
	.long MI_WebInfo+80
	.long WebInfo__Declare_enum_elt
	.long MM_WebInfo+531
	.long MI_WebInfo+76
	.long WebInfo__Declare_enum
	.long MM_WebInfo+548
	.long MI_WebInfo+72
	.long WebInfo__Declare_open_array
	.long MM_WebInfo+561
	.long MI_WebInfo+68
	.long WebInfo__Declare_array
	.long MM_WebInfo+580
	.long MI_WebInfo+64
	.long WebInfo__Declare_typename
	.long MM_WebInfo+594
	.long MI_WebInfo+60
	.long WebInfo__Export_unit
	.long MM_WebInfo+611
	.long MI_WebInfo+56
	.long WebInfo__Import_unit
	.long MM_WebInfo+623
	.long MI_WebInfo+52
	.long WebInfo__Finish
	.long MM_WebInfo+635
	.long MI_WebInfo+48
	.long WebInfo__Reset
	.long MM_WebInfo+642
	.long MI_WebInfo+44
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/WebInfo.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
