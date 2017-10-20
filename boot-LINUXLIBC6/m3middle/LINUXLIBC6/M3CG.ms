	.file	"M3CG.mc"
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
	.type	 M3CG__next_label,@function
M3CG__next_label:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 4(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3CG__next_label,.Lfe1-M3CG__next_label
	.align 16
	.type	 M3CG__set_error_handler,@function
M3CG__set_error_handler:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 8(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3CG__set_error_handler,.Lfe2-M3CG__set_error_handler
	.align 16
	.type	 M3CG__begin_unit,@function
M3CG__begin_unit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 12(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3CG__begin_unit,.Lfe3-M3CG__begin_unit
	.align 16
	.type	 M3CG__end_unit,@function
M3CG__end_unit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3CG__end_unit,.Lfe4-M3CG__end_unit
	.align 16
	.type	 M3CG__import_unit,@function
M3CG__import_unit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 20(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3CG__import_unit,.Lfe5-M3CG__import_unit
	.align 16
	.type	 M3CG__export_unit,@function
M3CG__export_unit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 24(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 M3CG__export_unit,.Lfe6-M3CG__export_unit
	.align 16
	.type	 M3CG__set_source_file,@function
M3CG__set_source_file:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 28(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3CG__set_source_file,.Lfe7-M3CG__set_source_file
	.align 16
	.type	 M3CG__set_source_line,@function
M3CG__set_source_line:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 32(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 M3CG__set_source_line,.Lfe8-M3CG__set_source_line
	.align 16
	.type	 M3CG__declare_typename,@function
M3CG__declare_typename:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 36(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M3CG__declare_typename,.Lfe9-M3CG__declare_typename
	.align 16
	.type	 M3CG__declare_array,@function
M3CG__declare_array:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	movl 4(%eax),%ecx
	movl 20(%ebp),%ebx
	movl (%ecx),%eax
	movl 24(%ebp),%edx
	movl 40(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %edi
	pushl %ecx
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 M3CG__declare_array,.Lfe10-M3CG__declare_array
	.align 16
	.type	 M3CG__declare_open_array,@function
M3CG__declare_open_array:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 44(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M3CG__declare_open_array,.Lfe11-M3CG__declare_open_array
	.align 16
	.type	 M3CG__declare_enum,@function
M3CG__declare_enum:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 48(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 M3CG__declare_enum,.Lfe12-M3CG__declare_enum
	.align 16
	.type	 M3CG__declare_enum_elt,@function
M3CG__declare_enum_elt:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 52(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 M3CG__declare_enum_elt,.Lfe13-M3CG__declare_enum_elt
	.align 16
	.type	 M3CG__declare_packed,@function
M3CG__declare_packed:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 56(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 M3CG__declare_packed,.Lfe14-M3CG__declare_packed
	.align 16
	.type	 M3CG__declare_record,@function
M3CG__declare_record:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 60(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 M3CG__declare_record,.Lfe15-M3CG__declare_record
	.align 16
	.type	 M3CG__declare_field,@function
M3CG__declare_field:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	movl 4(%eax),%ecx
	movl 20(%ebp),%ebx
	movl (%ecx),%eax
	movl 24(%ebp),%edx
	movl 64(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %edi
	pushl %ecx
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 M3CG__declare_field,.Lfe16-M3CG__declare_field
	.align 16
	.type	 M3CG__declare_set,@function
M3CG__declare_set:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 68(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 M3CG__declare_set,.Lfe17-M3CG__declare_set
	.align 16
	.type	 M3CG__declare_subrange,@function
M3CG__declare_subrange:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 4(%eax),%ecx
	movl 16(%ebp),%esi
	movl (%ecx),%eax
	movl 28(%ebp),%edx
	movl 72(%eax),%ebx
	pushl %edx
	movl 24(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
	pushl %ecx
	call *%ebx
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 M3CG__declare_subrange,.Lfe18-M3CG__declare_subrange
	.align 16
	.type	 M3CG__declare_pointer,@function
M3CG__declare_pointer:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 4(%eax),%edx
	movl 16(%ebp),%esi
	movl (%edx),%eax
	movl 20(%ebp),%ecx
	movl 76(%eax),%ebx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	pushl %edi
	pushl %edx
	call *%ebx
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 M3CG__declare_pointer,.Lfe19-M3CG__declare_pointer
	.align 16
	.type	 M3CG__declare_indirect,@function
M3CG__declare_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 80(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 M3CG__declare_indirect,.Lfe20-M3CG__declare_indirect
	.align 16
	.type	 M3CG__declare_proctype,@function
M3CG__declare_proctype:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl 20(%ebp),%esi
	movl 4(%eax),%ecx
	movl 24(%ebp),%ebx
	movl (%ecx),%eax
	movl 28(%ebp),%edx
	movl 84(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ecx
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 M3CG__declare_proctype,.Lfe21-M3CG__declare_proctype
	.align 16
	.type	 M3CG__declare_formal,@function
M3CG__declare_formal:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 88(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 M3CG__declare_formal,.Lfe22-M3CG__declare_formal
	.align 16
	.type	 M3CG__declare_raises,@function
M3CG__declare_raises:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 92(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 M3CG__declare_raises,.Lfe23-M3CG__declare_raises
	.align 16
	.type	 M3CG__declare_object,@function
M3CG__declare_object:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 28(%ebp),%esi
	movl 4(%eax),%ebx
	movl 32(%ebp),%ecx
	movl (%ebx),%eax
	movl 36(%ebp),%edx
	movl 96(%eax),%edi
	pushl %edx
	pushl %ecx
	pushl %esi
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	movl 20(%ebp),%edx
	pushl %edx
	movl 16(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ebx
	call *%edi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 M3CG__declare_object,.Lfe24-M3CG__declare_object
	.align 16
	.type	 M3CG__declare_method,@function
M3CG__declare_method:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 100(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 M3CG__declare_method,.Lfe25-M3CG__declare_method
	.align 16
	.type	 M3CG__declare_opaque,@function
M3CG__declare_opaque:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 104(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 M3CG__declare_opaque,.Lfe26-M3CG__declare_opaque
	.align 16
	.type	 M3CG__reveal_opaque,@function
M3CG__reveal_opaque:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 108(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 M3CG__reveal_opaque,.Lfe27-M3CG__reveal_opaque
	.align 16
	.type	 M3CG__declare_exception,@function
M3CG__declare_exception:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl 4(%eax),%ebx
	movl 24(%ebp),%ecx
	movl (%ebx),%eax
	movl 28(%ebp),%edx
	movl 112(%eax),%esi
	pushl %edx
	pushl %ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ebx
	call *%esi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 M3CG__declare_exception,.Lfe28-M3CG__declare_exception
	.align 16
	.type	 M3CG__set_runtime_proc,@function
M3CG__set_runtime_proc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 116(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 M3CG__set_runtime_proc,.Lfe29-M3CG__set_runtime_proc
	.align 16
	.type	 M3CG__set_runtime_hook,@function
M3CG__set_runtime_hook:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 120(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 M3CG__set_runtime_hook,.Lfe30-M3CG__set_runtime_hook
	.align 16
	.type	 M3CG__get_runtime_hook,@function
M3CG__get_runtime_hook:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 124(%eax),%ecx
	movl 24(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 M3CG__get_runtime_hook,.Lfe31-M3CG__get_runtime_hook
	.align 16
	.type	 M3CG__import_global,@function
M3CG__import_global:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl 4(%eax),%ecx
	movl 20(%ebp),%ebx
	movl (%ecx),%eax
	movl 28(%ebp),%edx
	movl 128(%eax),%esi
	pushl %edx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ecx
	call *%esi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 M3CG__import_global,.Lfe32-M3CG__import_global
	.align 16
	.type	 M3CG__declare_segment,@function
M3CG__declare_segment:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 132(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 M3CG__declare_segment,.Lfe33-M3CG__declare_segment
	.align 16
	.type	 M3CG__bind_segment,@function
M3CG__bind_segment:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 4(%eax),%edx
	movl 16(%ebp),%esi
	movl (%edx),%eax
	movl 20(%ebp),%ecx
	movl 136(%eax),%ebx
	xorl %eax,%eax
	movb 32(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 28(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	pushl %edi
	pushl %edx
	call *%ebx
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 M3CG__bind_segment,.Lfe34-M3CG__bind_segment
	.align 16
	.type	 M3CG__declare_global,@function
M3CG__declare_global:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl 16(%ebp),%edi
	movl (%ecx),%eax
	movl 20(%ebp),%ebx
	movl 140(%eax),%esi
	xorl %eax,%eax
	movb 36(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 32(%ebp),%al
	pushl %eax
	movl 28(%ebp),%edx
	pushl %edx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ecx
	call *%esi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 M3CG__declare_global,.Lfe35-M3CG__declare_global
	.align 16
	.type	 M3CG__declare_constant,@function
M3CG__declare_constant:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl 16(%ebp),%edi
	movl (%ecx),%eax
	movl 20(%ebp),%ebx
	movl 144(%eax),%esi
	xorl %eax,%eax
	movb 36(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 32(%ebp),%al
	pushl %eax
	movl 28(%ebp),%edx
	pushl %edx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ecx
	call *%esi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 M3CG__declare_constant,.Lfe36-M3CG__declare_constant
	.align 16
	.type	 M3CG__declare_local,@function
M3CG__declare_local:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl 16(%ebp),%edi
	movl (%ecx),%eax
	movl 20(%ebp),%ebx
	movl 148(%eax),%esi
	xorl %eax,%eax
	movb 40(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 36(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 32(%ebp),%al
	pushl %eax
	movl 28(%ebp),%edx
	pushl %edx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ecx
	call *%esi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 M3CG__declare_local,.Lfe37-M3CG__declare_local
	.align 16
	.type	 M3CG__declare_param,@function
M3CG__declare_param:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl 16(%ebp),%edi
	movl (%ecx),%eax
	movl 20(%ebp),%ebx
	movl 152(%eax),%esi
	xorl %eax,%eax
	movb 40(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 36(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 32(%ebp),%al
	pushl %eax
	movl 28(%ebp),%edx
	pushl %edx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edi
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ecx
	call *%esi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 M3CG__declare_param,.Lfe38-M3CG__declare_param
	.align 16
	.type	 M3CG__declare_temp,@function
M3CG__declare_temp:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%esi
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 156(%eax),%ebx
	xorl %eax,%eax
	movb 24(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	pushl %edx
	call *%ebx
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 M3CG__declare_temp,.Lfe39-M3CG__declare_temp
	.align 16
	.type	 M3CG__free_temp,@function
M3CG__free_temp:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 160(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 M3CG__free_temp,.Lfe40-M3CG__free_temp
	.align 16
	.type	 M3CG__begin_init,@function
M3CG__begin_init:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 164(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 M3CG__begin_init,.Lfe41-M3CG__begin_init
	.align 16
	.type	 M3CG__end_init,@function
M3CG__end_init:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 168(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe42:
	.size	 M3CG__end_init,.Lfe42-M3CG__end_init
	.align 16
	.type	 M3CG__init_int,@function
M3CG__init_int:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 172(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 M3CG__init_int,.Lfe43-M3CG__init_int
	.align 16
	.type	 M3CG__init_proc,@function
M3CG__init_proc:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 176(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 M3CG__init_proc,.Lfe44-M3CG__init_proc
	.align 16
	.type	 M3CG__init_label,@function
M3CG__init_label:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 180(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe45:
	.size	 M3CG__init_label,.Lfe45-M3CG__init_label
	.align 16
	.type	 M3CG__init_var,@function
M3CG__init_var:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 184(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe46:
	.size	 M3CG__init_var,.Lfe46-M3CG__init_var
	.align 16
	.type	 M3CG__init_offset,@function
M3CG__init_offset:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 188(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe47:
	.size	 M3CG__init_offset,.Lfe47-M3CG__init_offset
	.align 16
	.type	 M3CG__init_chars,@function
M3CG__init_chars:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 192(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe48:
	.size	 M3CG__init_chars,.Lfe48-M3CG__init_chars
	.align 16
	.type	 M3CG__init_float,@function
M3CG__init_float:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 196(%eax),%ecx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe49:
	.size	 M3CG__init_float,.Lfe49-M3CG__init_float
	.align 16
	.type	 M3CG__import_procedure,@function
M3CG__import_procedure:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 4(%eax),%ecx
	movl 16(%ebp),%esi
	movl (%ecx),%eax
	movl 24(%ebp),%edx
	movl 200(%eax),%ebx
	pushl %edx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %esi
	pushl %edi
	pushl %ecx
	call *%ebx
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe50:
	.size	 M3CG__import_procedure,.Lfe50-M3CG__import_procedure
	.align 16
	.type	 M3CG__declare_procedure,@function
M3CG__declare_procedure:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 24(%ebp),%esi
	movl 4(%eax),%ebx
	movl 28(%ebp),%ecx
	movl (%ebx),%eax
	movl 36(%ebp),%edx
	movl 204(%eax),%edi
	pushl %edx
	xorl %eax,%eax
	movb 32(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	movl 16(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ebx
	call *%edi
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe51:
	.size	 M3CG__declare_procedure,.Lfe51-M3CG__declare_procedure
	.align 16
	.type	 M3CG__begin_procedure,@function
M3CG__begin_procedure:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 208(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe52:
	.size	 M3CG__begin_procedure,.Lfe52-M3CG__begin_procedure
	.align 16
	.type	 M3CG__end_procedure,@function
M3CG__end_procedure:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 212(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe53:
	.size	 M3CG__end_procedure,.Lfe53-M3CG__end_procedure
	.align 16
	.type	 M3CG__begin_block,@function
M3CG__begin_block:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 216(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe54:
	.size	 M3CG__begin_block,.Lfe54-M3CG__begin_block
	.align 16
	.type	 M3CG__end_block,@function
M3CG__end_block:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 220(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe55:
	.size	 M3CG__end_block,.Lfe55-M3CG__end_block
	.align 16
	.type	 M3CG__note_procedure_origin,@function
M3CG__note_procedure_origin:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 224(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe56:
	.size	 M3CG__note_procedure_origin,.Lfe56-M3CG__note_procedure_origin
	.align 16
	.type	 M3CG__set_label,@function
M3CG__set_label:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 228(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe57:
	.size	 M3CG__set_label,.Lfe57-M3CG__set_label
	.align 16
	.type	 M3CG__jump,@function
M3CG__jump:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 232(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe58:
	.size	 M3CG__jump,.Lfe58-M3CG__jump
	.align 16
	.type	 M3CG__if_true,@function
M3CG__if_true:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 236(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe59:
	.size	 M3CG__if_true,.Lfe59-M3CG__if_true
	.align 16
	.type	 M3CG__if_false,@function
M3CG__if_false:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 240(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe60:
	.size	 M3CG__if_false,.Lfe60-M3CG__if_false
	.align 16
	.type	 M3CG__if_eq,@function
M3CG__if_eq:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 244(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe61:
	.size	 M3CG__if_eq,.Lfe61-M3CG__if_eq
	.align 16
	.type	 M3CG__if_ne,@function
M3CG__if_ne:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 248(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe62:
	.size	 M3CG__if_ne,.Lfe62-M3CG__if_ne
	.align 16
	.type	 M3CG__if_gt,@function
M3CG__if_gt:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 252(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe63:
	.size	 M3CG__if_gt,.Lfe63-M3CG__if_gt
	.align 16
	.type	 M3CG__if_ge,@function
M3CG__if_ge:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 256(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe64:
	.size	 M3CG__if_ge,.Lfe64-M3CG__if_ge
	.align 16
	.type	 M3CG__if_lt,@function
M3CG__if_lt:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 260(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe65:
	.size	 M3CG__if_lt,.Lfe65-M3CG__if_lt
	.align 16
	.type	 M3CG__if_le,@function
M3CG__if_le:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 264(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe66:
	.size	 M3CG__if_le,.Lfe66-M3CG__if_le
	.align 16
	.type	 M3CG__case_jump,@function
M3CG__case_jump:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 268(%eax),%ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe67:
	.size	 M3CG__case_jump,.Lfe67-M3CG__case_jump
	.align 16
	.type	 M3CG__exit_proc,@function
M3CG__exit_proc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 272(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe68:
	.size	 M3CG__exit_proc,.Lfe68-M3CG__exit_proc
	.align 16
	.type	 M3CG__load,@function
M3CG__load:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%esi
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 276(%eax),%ebx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	pushl %edx
	call *%ebx
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe69:
	.size	 M3CG__load,.Lfe69-M3CG__load
	.align 16
	.type	 M3CG__store,@function
M3CG__store:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%esi
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 288(%eax),%ebx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	pushl %edx
	call *%ebx
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe70:
	.size	 M3CG__store,.Lfe70-M3CG__store
	.align 16
	.type	 M3CG__store_ref,@function
M3CG__store_ref:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 296(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe71:
	.size	 M3CG__store_ref,.Lfe71-M3CG__store_ref
	.align 16
	.type	 M3CG__load_address,@function
M3CG__load_address:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 280(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe72:
	.size	 M3CG__load_address,.Lfe72-M3CG__load_address
	.align 16
	.type	 M3CG__load_indirect,@function
M3CG__load_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 284(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe73:
	.size	 M3CG__load_indirect,.Lfe73-M3CG__load_indirect
	.align 16
	.type	 M3CG__store_indirect,@function
M3CG__store_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 292(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe74:
	.size	 M3CG__store_indirect,.Lfe74-M3CG__store_indirect
	.align 16
	.type	 M3CG__store_ref_indirect,@function
M3CG__store_ref_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 300(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe75:
	.size	 M3CG__store_ref_indirect,.Lfe75-M3CG__store_ref_indirect
	.align 16
	.type	 M3CG__load_nil,@function
M3CG__load_nil:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 304(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe76:
	.size	 M3CG__load_nil,.Lfe76-M3CG__load_nil
	.align 16
	.type	 M3CG__load_integer,@function
M3CG__load_integer:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 308(%eax),%ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe77:
	.size	 M3CG__load_integer,.Lfe77-M3CG__load_integer
	.align 16
	.type	 M3CG__load_float,@function
M3CG__load_float:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 312(%eax),%ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe78:
	.size	 M3CG__load_float,.Lfe78-M3CG__load_float
	.align 16
	.type	 M3CG__eq,@function
M3CG__eq:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 316(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe79:
	.size	 M3CG__eq,.Lfe79-M3CG__eq
	.align 16
	.type	 M3CG__ne,@function
M3CG__ne:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 320(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe80:
	.size	 M3CG__ne,.Lfe80-M3CG__ne
	.align 16
	.type	 M3CG__gt,@function
M3CG__gt:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 324(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe81:
	.size	 M3CG__gt,.Lfe81-M3CG__gt
	.align 16
	.type	 M3CG__ge,@function
M3CG__ge:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 328(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe82:
	.size	 M3CG__ge,.Lfe82-M3CG__ge
	.align 16
	.type	 M3CG__lt,@function
M3CG__lt:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 332(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe83:
	.size	 M3CG__lt,.Lfe83-M3CG__lt
	.align 16
	.type	 M3CG__le,@function
M3CG__le:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 336(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe84:
	.size	 M3CG__le,.Lfe84-M3CG__le
	.align 16
	.type	 M3CG__add,@function
M3CG__add:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 340(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe85:
	.size	 M3CG__add,.Lfe85-M3CG__add
	.align 16
	.type	 M3CG__subtract,@function
M3CG__subtract:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 344(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe86:
	.size	 M3CG__subtract,.Lfe86-M3CG__subtract
	.align 16
	.type	 M3CG__multiply,@function
M3CG__multiply:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 348(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe87:
	.size	 M3CG__multiply,.Lfe87-M3CG__multiply
	.align 16
	.type	 M3CG__divide,@function
M3CG__divide:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 352(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe88:
	.size	 M3CG__divide,.Lfe88-M3CG__divide
	.align 16
	.type	 M3CG__div,@function
M3CG__div:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 392(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe89:
	.size	 M3CG__div,.Lfe89-M3CG__div
	.align 16
	.type	 M3CG__mod,@function
M3CG__mod:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 396(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe90:
	.size	 M3CG__mod,.Lfe90-M3CG__mod
	.align 16
	.type	 M3CG__negate,@function
M3CG__negate:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 356(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe91:
	.size	 M3CG__negate,.Lfe91-M3CG__negate
	.align 16
	.type	 M3CG__abs,@function
M3CG__abs:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 360(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe92:
	.size	 M3CG__abs,.Lfe92-M3CG__abs
	.align 16
	.type	 M3CG__max,@function
M3CG__max:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 364(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe93:
	.size	 M3CG__max,.Lfe93-M3CG__max
	.align 16
	.type	 M3CG__min,@function
M3CG__min:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 368(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe94:
	.size	 M3CG__min,.Lfe94-M3CG__min
	.align 16
	.type	 M3CG__round,@function
M3CG__round:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 372(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe95:
	.size	 M3CG__round,.Lfe95-M3CG__round
	.align 16
	.type	 M3CG__trunc,@function
M3CG__trunc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 376(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe96:
	.size	 M3CG__trunc,.Lfe96-M3CG__trunc
	.align 16
	.type	 M3CG__floor,@function
M3CG__floor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 380(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe97:
	.size	 M3CG__floor,.Lfe97-M3CG__floor
	.align 16
	.type	 M3CG__ceiling,@function
M3CG__ceiling:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 384(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe98:
	.size	 M3CG__ceiling,.Lfe98-M3CG__ceiling
	.align 16
	.type	 M3CG__cvt_float,@function
M3CG__cvt_float:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 388(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe99:
	.size	 M3CG__cvt_float,.Lfe99-M3CG__cvt_float
	.align 16
	.type	 M3CG__set_union,@function
M3CG__set_union:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 400(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe100:
	.size	 M3CG__set_union,.Lfe100-M3CG__set_union
	.align 16
	.type	 M3CG__set_difference,@function
M3CG__set_difference:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 404(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe101:
	.size	 M3CG__set_difference,.Lfe101-M3CG__set_difference
	.align 16
	.type	 M3CG__set_intersection,@function
M3CG__set_intersection:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 408(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe102:
	.size	 M3CG__set_intersection,.Lfe102-M3CG__set_intersection
	.align 16
	.type	 M3CG__set_sym_difference,@function
M3CG__set_sym_difference:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 412(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe103:
	.size	 M3CG__set_sym_difference,.Lfe103-M3CG__set_sym_difference
	.align 16
	.type	 M3CG__set_member,@function
M3CG__set_member:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 416(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe104:
	.size	 M3CG__set_member,.Lfe104-M3CG__set_member
	.align 16
	.type	 M3CG__set_eq,@function
M3CG__set_eq:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 420(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe105:
	.size	 M3CG__set_eq,.Lfe105-M3CG__set_eq
	.align 16
	.type	 M3CG__set_ne,@function
M3CG__set_ne:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 424(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe106:
	.size	 M3CG__set_ne,.Lfe106-M3CG__set_ne
	.align 16
	.type	 M3CG__set_gt,@function
M3CG__set_gt:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 436(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe107:
	.size	 M3CG__set_gt,.Lfe107-M3CG__set_gt
	.align 16
	.type	 M3CG__set_ge,@function
M3CG__set_ge:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 440(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe108:
	.size	 M3CG__set_ge,.Lfe108-M3CG__set_ge
	.align 16
	.type	 M3CG__set_lt,@function
M3CG__set_lt:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 428(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe109:
	.size	 M3CG__set_lt,.Lfe109-M3CG__set_lt
	.align 16
	.type	 M3CG__set_le,@function
M3CG__set_le:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 432(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe110:
	.size	 M3CG__set_le,.Lfe110-M3CG__set_le
	.align 16
	.type	 M3CG__set_range,@function
M3CG__set_range:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 444(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe111:
	.size	 M3CG__set_range,.Lfe111-M3CG__set_range
	.align 16
	.type	 M3CG__set_singleton,@function
M3CG__set_singleton:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 448(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe112:
	.size	 M3CG__set_singleton,.Lfe112-M3CG__set_singleton
	.align 16
	.type	 M3CG__not,@function
M3CG__not:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 452(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe113:
	.size	 M3CG__not,.Lfe113-M3CG__not
	.align 16
	.type	 M3CG__and,@function
M3CG__and:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 456(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe114:
	.size	 M3CG__and,.Lfe114-M3CG__and
	.align 16
	.type	 M3CG__or,@function
M3CG__or:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 460(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe115:
	.size	 M3CG__or,.Lfe115-M3CG__or
	.align 16
	.type	 M3CG__xor,@function
M3CG__xor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 464(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe116:
	.size	 M3CG__xor,.Lfe116-M3CG__xor
	.align 16
	.type	 M3CG__shift,@function
M3CG__shift:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 468(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe117:
	.size	 M3CG__shift,.Lfe117-M3CG__shift
	.align 16
	.type	 M3CG__shift_left,@function
M3CG__shift_left:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 472(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe118:
	.size	 M3CG__shift_left,.Lfe118-M3CG__shift_left
	.align 16
	.type	 M3CG__shift_right,@function
M3CG__shift_right:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 476(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe119:
	.size	 M3CG__shift_right,.Lfe119-M3CG__shift_right
	.align 16
	.type	 M3CG__rotate,@function
M3CG__rotate:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 480(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe120:
	.size	 M3CG__rotate,.Lfe120-M3CG__rotate
	.align 16
	.type	 M3CG__rotate_left,@function
M3CG__rotate_left:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 484(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe121:
	.size	 M3CG__rotate_left,.Lfe121-M3CG__rotate_left
	.align 16
	.type	 M3CG__rotate_right,@function
M3CG__rotate_right:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 488(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe122:
	.size	 M3CG__rotate_right,.Lfe122-M3CG__rotate_right
	.align 16
	.type	 M3CG__extract,@function
M3CG__extract:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 492(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe123:
	.size	 M3CG__extract,.Lfe123-M3CG__extract
	.align 16
	.type	 M3CG__extract_n,@function
M3CG__extract_n:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl (%ecx),%eax
	movl 16(%ebp),%edx
	movl 496(%eax),%ebx
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call *%ebx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe124:
	.size	 M3CG__extract_n,.Lfe124-M3CG__extract_n
	.align 16
	.type	 M3CG__extract_mn,@function
M3CG__extract_mn:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl 16(%ebp),%ebx
	movl (%ecx),%eax
	movl 20(%ebp),%edx
	movl 500(%eax),%esi
	pushl %edx
	pushl %ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call *%esi
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe125:
	.size	 M3CG__extract_mn,.Lfe125-M3CG__extract_mn
	.align 16
	.type	 M3CG__insert,@function
M3CG__insert:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 504(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe126:
	.size	 M3CG__insert,.Lfe126-M3CG__insert
	.align 16
	.type	 M3CG__insert_n,@function
M3CG__insert_n:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 508(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe127:
	.size	 M3CG__insert_n,.Lfe127-M3CG__insert_n
	.align 16
	.type	 M3CG__insert_mn,@function
M3CG__insert_mn:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 512(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe128:
	.size	 M3CG__insert_mn,.Lfe128-M3CG__insert_mn
	.align 16
	.type	 M3CG__swap,@function
M3CG__swap:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 516(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe129:
	.size	 M3CG__swap,.Lfe129-M3CG__swap
	.align 16
	.type	 M3CG__pop,@function
M3CG__pop:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 520(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe130:
	.size	 M3CG__pop,.Lfe130-M3CG__pop
	.align 16
	.type	 M3CG__copy_n,@function
M3CG__copy_n:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 524(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe131:
	.size	 M3CG__copy_n,.Lfe131-M3CG__copy_n
	.align 16
	.type	 M3CG__copy,@function
M3CG__copy:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 528(%eax),%ecx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe132:
	.size	 M3CG__copy,.Lfe132-M3CG__copy
	.align 16
	.type	 M3CG__zero_n,@function
M3CG__zero_n:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 532(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe133:
	.size	 M3CG__zero_n,.Lfe133-M3CG__zero_n
	.align 16
	.type	 M3CG__zero,@function
M3CG__zero:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 536(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe134:
	.size	 M3CG__zero,.Lfe134-M3CG__zero
	.align 16
	.type	 M3CG__loophole,@function
M3CG__loophole:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 540(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe135:
	.size	 M3CG__loophole,.Lfe135-M3CG__loophole
	.align 16
	.type	 M3CG__assert_fault,@function
M3CG__assert_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 544(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe136:
	.size	 M3CG__assert_fault,.Lfe136-M3CG__assert_fault
	.align 16
	.type	 M3CG__narrow_fault,@function
M3CG__narrow_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 548(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe137:
	.size	 M3CG__narrow_fault,.Lfe137-M3CG__narrow_fault
	.align 16
	.type	 M3CG__return_fault,@function
M3CG__return_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 552(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe138:
	.size	 M3CG__return_fault,.Lfe138-M3CG__return_fault
	.align 16
	.type	 M3CG__case_fault,@function
M3CG__case_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 556(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe139:
	.size	 M3CG__case_fault,.Lfe139-M3CG__case_fault
	.align 16
	.type	 M3CG__typecase_fault,@function
M3CG__typecase_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 560(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe140:
	.size	 M3CG__typecase_fault,.Lfe140-M3CG__typecase_fault
	.align 16
	.type	 M3CG__check_nil,@function
M3CG__check_nil:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 564(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe141:
	.size	 M3CG__check_nil,.Lfe141-M3CG__check_nil
	.align 16
	.type	 M3CG__check_lo,@function
M3CG__check_lo:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 568(%eax),%ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe142:
	.size	 M3CG__check_lo,.Lfe142-M3CG__check_lo
	.align 16
	.type	 M3CG__check_hi,@function
M3CG__check_hi:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 572(%eax),%ecx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe143:
	.size	 M3CG__check_hi,.Lfe143-M3CG__check_hi
	.align 16
	.type	 M3CG__check_range,@function
M3CG__check_range:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 576(%eax),%ecx
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe144:
	.size	 M3CG__check_range,.Lfe144-M3CG__check_range
	.align 16
	.type	 M3CG__check_index,@function
M3CG__check_index:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 580(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe145:
	.size	 M3CG__check_index,.Lfe145-M3CG__check_index
	.align 16
	.type	 M3CG__check_eq,@function
M3CG__check_eq:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 584(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe146:
	.size	 M3CG__check_eq,.Lfe146-M3CG__check_eq
	.align 16
	.type	 M3CG__add_offset,@function
M3CG__add_offset:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 588(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe147:
	.size	 M3CG__add_offset,.Lfe147-M3CG__add_offset
	.align 16
	.type	 M3CG__index_address,@function
M3CG__index_address:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 592(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe148:
	.size	 M3CG__index_address,.Lfe148-M3CG__index_address
	.align 16
	.type	 M3CG__start_call_direct,@function
M3CG__start_call_direct:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%esi
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 596(%eax),%ebx
	xorl %eax,%eax
	movb 20(%ebp),%al
	pushl %eax
	pushl %ecx
	pushl %esi
	pushl %edx
	call *%ebx
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe149:
	.size	 M3CG__start_call_direct,.Lfe149-M3CG__start_call_direct
	.align 16
	.type	 M3CG__start_call_indirect,@function
M3CG__start_call_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl (%ecx),%eax
	movl 16(%ebp),%edx
	movl 604(%eax),%ebx
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call *%ebx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe150:
	.size	 M3CG__start_call_indirect,.Lfe150-M3CG__start_call_indirect
	.align 16
	.type	 M3CG__pop_param,@function
M3CG__pop_param:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 612(%eax),%ecx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	call *%ecx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe151:
	.size	 M3CG__pop_param,.Lfe151-M3CG__pop_param
	.align 16
	.type	 M3CG__pop_struct,@function
M3CG__pop_struct:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl 12(%ebp),%ebx
	movl (%edx),%eax
	movl 16(%ebp),%ecx
	movl 616(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe152:
	.size	 M3CG__pop_struct,.Lfe152-M3CG__pop_struct
	.align 16
	.type	 M3CG__pop_static_link,@function
M3CG__pop_static_link:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 620(%eax),%eax
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe153:
	.size	 M3CG__pop_static_link,.Lfe153-M3CG__pop_static_link
	.align 16
	.type	 M3CG__call_direct,@function
M3CG__call_direct:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ebx
	movl 600(%eax),%ecx
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe154:
	.size	 M3CG__call_direct,.Lfe154-M3CG__call_direct
	.align 16
	.type	 M3CG__call_indirect,@function
M3CG__call_indirect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl (%ecx),%eax
	movl 16(%ebp),%edx
	movl 608(%eax),%ebx
	pushl %edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %ecx
	call *%ebx
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe155:
	.size	 M3CG__call_indirect,.Lfe155-M3CG__call_indirect
	.align 16
	.type	 M3CG__load_procedure,@function
M3CG__load_procedure:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 624(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe156:
	.size	 M3CG__load_procedure,.Lfe156-M3CG__load_procedure
	.align 16
	.type	 M3CG__load_static_link,@function
M3CG__load_static_link:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	movl (%edx),%eax
	movl 12(%ebp),%ecx
	movl 628(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe157:
	.size	 M3CG__load_static_link,.Lfe157-M3CG__load_static_link
	.align 16
	.type	 M3CG__comment,@function
M3CG__comment:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	movl 4(%eax),%ecx
	movl 20(%ebp),%ebx
	movl (%ecx),%eax
	movl 24(%ebp),%edx
	movl 632(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %edi
	pushl %ecx
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe158:
	.size	 M3CG__comment,.Lfe158-M3CG__comment
	.align 16
	.type	 M_M3CG_tb97b7b9b_LINK,@function
M_M3CG_tb97b7b9b_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_M3CG+4544,%eax
	movl MM_M3CG+148,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_M3CG+152,%edx
	movl %edx,8(%eax)
	movl MM_M3CG+156,%edx
	movl %edx,12(%eax)
	movl MM_M3CG+160,%edx
	movl %edx,16(%eax)
	movl MM_M3CG+164,%edx
	movl %edx,20(%eax)
	movl MM_M3CG+168,%edx
	movl %edx,24(%eax)
	movl MM_M3CG+172,%edx
	movl %edx,28(%eax)
	movl MM_M3CG+176,%edx
	movl %edx,32(%eax)
	movl MM_M3CG+180,%edx
	movl %edx,36(%eax)
	movl MM_M3CG+184,%edx
	movl %edx,40(%eax)
	movl MM_M3CG+188,%edx
	movl %edx,44(%eax)
	movl MM_M3CG+192,%edx
	movl %edx,48(%eax)
	movl MM_M3CG+196,%edx
	movl %edx,52(%eax)
	movl MM_M3CG+200,%edx
	movl %edx,56(%eax)
	movl MM_M3CG+204,%edx
	movl %edx,60(%eax)
	movl MM_M3CG+208,%edx
	movl %edx,64(%eax)
	movl MM_M3CG+212,%edx
	movl %edx,68(%eax)
	movl MM_M3CG+216,%edx
	movl %edx,72(%eax)
	movl MM_M3CG+220,%edx
	movl %edx,76(%eax)
	movl MM_M3CG+224,%edx
	movl %edx,80(%eax)
	movl MM_M3CG+228,%edx
	movl %edx,84(%eax)
	movl MM_M3CG+232,%edx
	movl %edx,88(%eax)
	movl MM_M3CG+236,%edx
	movl %edx,92(%eax)
	movl MM_M3CG+240,%edx
	movl %edx,96(%eax)
	movl MM_M3CG+244,%edx
	movl %edx,100(%eax)
	movl MM_M3CG+248,%edx
	movl %edx,104(%eax)
	movl MM_M3CG+252,%edx
	movl %edx,108(%eax)
	movl MM_M3CG+256,%edx
	movl %edx,112(%eax)
	movl MM_M3CG+260,%edx
	movl %edx,116(%eax)
	movl MM_M3CG+264,%edx
	movl %edx,120(%eax)
	movl MM_M3CG+268,%edx
	movl %edx,124(%eax)
	movl MM_M3CG+272,%edx
	movl %edx,128(%eax)
	movl MM_M3CG+276,%edx
	movl %edx,132(%eax)
	movl MM_M3CG+280,%edx
	movl %edx,136(%eax)
	movl MM_M3CG+284,%edx
	movl %edx,140(%eax)
	movl MM_M3CG+288,%edx
	movl %edx,144(%eax)
	movl MM_M3CG+292,%edx
	movl %edx,148(%eax)
	movl MM_M3CG+296,%edx
	movl %edx,152(%eax)
	movl MM_M3CG+300,%edx
	movl %edx,156(%eax)
	movl MM_M3CG+304,%edx
	movl %edx,160(%eax)
	movl MM_M3CG+308,%edx
	movl %edx,164(%eax)
	movl MM_M3CG+312,%edx
	movl %edx,168(%eax)
	movl MM_M3CG+316,%edx
	movl %edx,172(%eax)
	movl MM_M3CG+320,%edx
	movl %edx,176(%eax)
	movl MM_M3CG+324,%edx
	movl %edx,180(%eax)
	movl MM_M3CG+328,%edx
	movl %edx,184(%eax)
	movl MM_M3CG+332,%edx
	movl %edx,188(%eax)
	movl MM_M3CG+336,%edx
	movl %edx,192(%eax)
	movl MM_M3CG+340,%edx
	movl %edx,196(%eax)
	movl MM_M3CG+344,%edx
	movl %edx,200(%eax)
	movl MM_M3CG+348,%edx
	movl %edx,204(%eax)
	movl MM_M3CG+352,%edx
	movl %edx,208(%eax)
	movl MM_M3CG+356,%edx
	movl %edx,212(%eax)
	movl MM_M3CG+360,%edx
	movl %edx,216(%eax)
	movl MM_M3CG+364,%edx
	movl %edx,220(%eax)
	movl MM_M3CG+368,%edx
	movl %edx,224(%eax)
	movl MM_M3CG+372,%edx
	movl %edx,228(%eax)
	movl MM_M3CG+376,%edx
	movl %edx,232(%eax)
	movl MM_M3CG+380,%edx
	movl %edx,236(%eax)
	movl MM_M3CG+384,%edx
	movl %edx,240(%eax)
	movl MM_M3CG+388,%edx
	movl %edx,244(%eax)
	movl MM_M3CG+392,%edx
	movl %edx,248(%eax)
	movl MM_M3CG+396,%edx
	movl %edx,252(%eax)
	movl MM_M3CG+400,%edx
	movl %edx,256(%eax)
	movl MM_M3CG+404,%edx
	movl %edx,260(%eax)
	movl MM_M3CG+408,%edx
	movl %edx,264(%eax)
	movl MM_M3CG+412,%edx
	movl %edx,268(%eax)
	movl MM_M3CG+416,%edx
	movl %edx,272(%eax)
	movl MM_M3CG+420,%edx
	movl %edx,276(%eax)
	movl MM_M3CG+432,%edx
	movl %edx,280(%eax)
	movl MM_M3CG+436,%edx
	movl %edx,284(%eax)
	movl MM_M3CG+424,%edx
	movl %edx,288(%eax)
	movl MM_M3CG+440,%edx
	movl %edx,292(%eax)
	movl MM_M3CG+428,%edx
	movl %edx,296(%eax)
	movl MM_M3CG+444,%edx
	movl %edx,300(%eax)
	movl MM_M3CG+448,%edx
	movl %edx,304(%eax)
	movl MM_M3CG+452,%edx
	movl %edx,308(%eax)
	movl MM_M3CG+456,%edx
	movl %edx,312(%eax)
	movl MM_M3CG+460,%edx
	movl %edx,316(%eax)
	movl MM_M3CG+464,%edx
	movl %edx,320(%eax)
	movl MM_M3CG+468,%edx
	movl %edx,324(%eax)
	movl MM_M3CG+472,%edx
	movl %edx,328(%eax)
	movl MM_M3CG+476,%edx
	movl %edx,332(%eax)
	movl MM_M3CG+480,%edx
	movl %edx,336(%eax)
	movl MM_M3CG+484,%edx
	movl %edx,340(%eax)
	movl MM_M3CG+488,%edx
	movl %edx,344(%eax)
	movl MM_M3CG+492,%edx
	movl %edx,348(%eax)
	movl MM_M3CG+496,%edx
	movl %edx,352(%eax)
	movl MM_M3CG+508,%edx
	movl %edx,356(%eax)
	movl MM_M3CG+512,%edx
	movl %edx,360(%eax)
	movl MM_M3CG+516,%edx
	movl %edx,364(%eax)
	movl MM_M3CG+520,%edx
	movl %edx,368(%eax)
	movl MM_M3CG+524,%edx
	movl %edx,372(%eax)
	movl MM_M3CG+528,%edx
	movl %edx,376(%eax)
	movl MM_M3CG+532,%edx
	movl %edx,380(%eax)
	movl MM_M3CG+536,%edx
	movl %edx,384(%eax)
	movl MM_M3CG+540,%edx
	movl %edx,388(%eax)
	movl MM_M3CG+500,%edx
	movl %edx,392(%eax)
	movl MM_M3CG+504,%edx
	movl %edx,396(%eax)
	movl MM_M3CG+544,%edx
	movl %edx,400(%eax)
	movl MM_M3CG+548,%edx
	movl %edx,404(%eax)
	movl MM_M3CG+552,%edx
	movl %edx,408(%eax)
	movl MM_M3CG+556,%edx
	movl %edx,412(%eax)
	movl MM_M3CG+560,%edx
	movl %edx,416(%eax)
	movl MM_M3CG+564,%edx
	movl %edx,420(%eax)
	movl MM_M3CG+568,%edx
	movl %edx,424(%eax)
	movl MM_M3CG+580,%edx
	movl %edx,428(%eax)
	movl MM_M3CG+584,%edx
	movl %edx,432(%eax)
	movl MM_M3CG+572,%edx
	movl %edx,436(%eax)
	movl MM_M3CG+576,%edx
	movl %edx,440(%eax)
	movl MM_M3CG+588,%edx
	movl %edx,444(%eax)
	movl MM_M3CG+592,%edx
	movl %edx,448(%eax)
	movl MM_M3CG+596,%edx
	movl %edx,452(%eax)
	movl MM_M3CG+600,%edx
	movl %edx,456(%eax)
	movl MM_M3CG+604,%edx
	movl %edx,460(%eax)
	movl MM_M3CG+608,%edx
	movl %edx,464(%eax)
	movl MM_M3CG+612,%edx
	movl %edx,468(%eax)
	movl MM_M3CG+616,%edx
	movl %edx,472(%eax)
	movl MM_M3CG+620,%edx
	movl %edx,476(%eax)
	movl MM_M3CG+624,%edx
	movl %edx,480(%eax)
	movl MM_M3CG+628,%edx
	movl %edx,484(%eax)
	movl MM_M3CG+632,%edx
	movl %edx,488(%eax)
	movl MM_M3CG+636,%edx
	movl %edx,492(%eax)
	movl MM_M3CG+640,%edx
	movl %edx,496(%eax)
	movl MM_M3CG+644,%edx
	movl %edx,500(%eax)
	movl MM_M3CG+648,%edx
	movl %edx,504(%eax)
	movl MM_M3CG+652,%edx
	movl %edx,508(%eax)
	movl MM_M3CG+656,%edx
	movl %edx,512(%eax)
	movl MM_M3CG+660,%edx
	movl %edx,516(%eax)
	movl MM_M3CG+664,%edx
	movl %edx,520(%eax)
	movl MM_M3CG+668,%edx
	movl %edx,524(%eax)
	movl MM_M3CG+672,%edx
	movl %edx,528(%eax)
	movl MM_M3CG+676,%edx
	movl %edx,532(%eax)
	movl MM_M3CG+680,%edx
	movl %edx,536(%eax)
	movl MM_M3CG+684,%edx
	movl %edx,540(%eax)
	movl MM_M3CG+688,%edx
	movl %edx,544(%eax)
	movl MM_M3CG+692,%edx
	movl %edx,548(%eax)
	movl MM_M3CG+696,%edx
	movl %edx,552(%eax)
	movl MM_M3CG+700,%edx
	movl %edx,556(%eax)
	movl MM_M3CG+704,%edx
	movl %edx,560(%eax)
	movl MM_M3CG+708,%edx
	movl %edx,564(%eax)
	movl MM_M3CG+712,%edx
	movl %edx,568(%eax)
	movl MM_M3CG+716,%edx
	movl %edx,572(%eax)
	movl MM_M3CG+720,%edx
	movl %edx,576(%eax)
	movl MM_M3CG+724,%edx
	movl %edx,580(%eax)
	movl MM_M3CG+728,%edx
	movl %edx,584(%eax)
	movl MM_M3CG+732,%edx
	movl %edx,588(%eax)
	movl MM_M3CG+736,%edx
	movl %edx,592(%eax)
	movl MM_M3CG+740,%edx
	movl %edx,596(%eax)
	movl MM_M3CG+760,%edx
	movl %edx,600(%eax)
	movl MM_M3CG+744,%edx
	movl %edx,604(%eax)
	movl MM_M3CG+764,%edx
	movl %edx,608(%eax)
	movl MM_M3CG+748,%edx
	movl %edx,612(%eax)
	movl MM_M3CG+752,%edx
	movl %edx,616(%eax)
	movl MM_M3CG+756,%edx
	movl %edx,620(%eax)
	movl MM_M3CG+768,%edx
	movl %edx,624(%eax)
	movl MM_M3CG+772,%edx
	movl %edx,628(%eax)
	movl MM_M3CG+776,%edx
	movl %edx,632(%eax)
	popl %ebp
	ret
.Lfe159:
	.size	 M_M3CG_tb97b7b9b_LINK,.Lfe159-M_M3CG_tb97b7b9b_LINK
.globl MM_M3CG
.data
	.align 4
	.type	 MM_M3CG,@object
	.size	 MM_M3CG,4568
MM_M3CG:
	.long MM_M3CG+4404
	.long MM_M3CG+44
	.long MM_M3CG+4544
	.long MM_M3CG+780
	.zero	4
	.long MM_M3CG+2504
	.zero	28
	.long -1183089765
.byte 229
.byte 141
.byte 113
.byte 171
.byte 126
.byte 246
.byte 10
.byte 18
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_M3CG+4540
	.zero	4
	.long M_M3CG_tb97b7b9b_LINK
	.long -1285695518
	.zero	12
	.long MM_M3CG+4552
	.long MM_M3CG+4559
	.zero	4
	.long M3CG__next_label
	.long M3CG__set_error_handler
	.long M3CG__begin_unit
	.long M3CG__end_unit
	.long M3CG__import_unit
	.long M3CG__export_unit
	.long M3CG__set_source_file
	.long M3CG__set_source_line
	.long M3CG__declare_typename
	.long M3CG__declare_array
	.long M3CG__declare_open_array
	.long M3CG__declare_enum
	.long M3CG__declare_enum_elt
	.long M3CG__declare_packed
	.long M3CG__declare_record
	.long M3CG__declare_field
	.long M3CG__declare_set
	.long M3CG__declare_subrange
	.long M3CG__declare_pointer
	.long M3CG__declare_indirect
	.long M3CG__declare_proctype
	.long M3CG__declare_formal
	.long M3CG__declare_raises
	.long M3CG__declare_object
	.long M3CG__declare_method
	.long M3CG__declare_opaque
	.long M3CG__reveal_opaque
	.long M3CG__declare_exception
	.long M3CG__set_runtime_proc
	.long M3CG__set_runtime_hook
	.long M3CG__get_runtime_hook
	.long M3CG__import_global
	.long M3CG__declare_segment
	.long M3CG__bind_segment
	.long M3CG__declare_global
	.long M3CG__declare_constant
	.long M3CG__declare_local
	.long M3CG__declare_param
	.long M3CG__declare_temp
	.long M3CG__free_temp
	.long M3CG__begin_init
	.long M3CG__end_init
	.long M3CG__init_int
	.long M3CG__init_proc
	.long M3CG__init_label
	.long M3CG__init_var
	.long M3CG__init_offset
	.long M3CG__init_chars
	.long M3CG__init_float
	.long M3CG__import_procedure
	.long M3CG__declare_procedure
	.long M3CG__begin_procedure
	.long M3CG__end_procedure
	.long M3CG__begin_block
	.long M3CG__end_block
	.long M3CG__note_procedure_origin
	.long M3CG__set_label
	.long M3CG__jump
	.long M3CG__if_true
	.long M3CG__if_false
	.long M3CG__if_eq
	.long M3CG__if_ne
	.long M3CG__if_gt
	.long M3CG__if_ge
	.long M3CG__if_lt
	.long M3CG__if_le
	.long M3CG__case_jump
	.long M3CG__exit_proc
	.long M3CG__load
	.long M3CG__store
	.long M3CG__store_ref
	.long M3CG__load_address
	.long M3CG__load_indirect
	.long M3CG__store_indirect
	.long M3CG__store_ref_indirect
	.long M3CG__load_nil
	.long M3CG__load_integer
	.long M3CG__load_float
	.long M3CG__eq
	.long M3CG__ne
	.long M3CG__gt
	.long M3CG__ge
	.long M3CG__lt
	.long M3CG__le
	.long M3CG__add
	.long M3CG__subtract
	.long M3CG__multiply
	.long M3CG__divide
	.long M3CG__div
	.long M3CG__mod
	.long M3CG__negate
	.long M3CG__abs
	.long M3CG__max
	.long M3CG__min
	.long M3CG__round
	.long M3CG__trunc
	.long M3CG__floor
	.long M3CG__ceiling
	.long M3CG__cvt_float
	.long M3CG__set_union
	.long M3CG__set_difference
	.long M3CG__set_intersection
	.long M3CG__set_sym_difference
	.long M3CG__set_member
	.long M3CG__set_eq
	.long M3CG__set_ne
	.long M3CG__set_gt
	.long M3CG__set_ge
	.long M3CG__set_lt
	.long M3CG__set_le
	.long M3CG__set_range
	.long M3CG__set_singleton
	.long M3CG__not
	.long M3CG__and
	.long M3CG__or
	.long M3CG__xor
	.long M3CG__shift
	.long M3CG__shift_left
	.long M3CG__shift_right
	.long M3CG__rotate
	.long M3CG__rotate_left
	.long M3CG__rotate_right
	.long M3CG__extract
	.long M3CG__extract_n
	.long M3CG__extract_mn
	.long M3CG__insert
	.long M3CG__insert_n
	.long M3CG__insert_mn
	.long M3CG__swap
	.long M3CG__pop
	.long M3CG__copy_n
	.long M3CG__copy
	.long M3CG__zero_n
	.long M3CG__zero
	.long M3CG__loophole
	.long M3CG__assert_fault
	.long M3CG__narrow_fault
	.long M3CG__return_fault
	.long M3CG__case_fault
	.long M3CG__typecase_fault
	.long M3CG__check_nil
	.long M3CG__check_lo
	.long M3CG__check_hi
	.long M3CG__check_range
	.long M3CG__check_index
	.long M3CG__check_eq
	.long M3CG__add_offset
	.long M3CG__index_address
	.long M3CG__start_call_direct
	.long M3CG__start_call_indirect
	.long M3CG__pop_param
	.long M3CG__pop_struct
	.long M3CG__pop_static_link
	.long M3CG__call_direct
	.long M3CG__call_indirect
	.long M3CG__load_procedure
	.long M3CG__load_static_link
	.long M3CG__comment
	.long -800126780
	.long -1183089765
	.zero	4
	.ascii	"comment"
	.zero	1
	.ascii	"load_static_link"
	.zero	1
	.ascii	"load_procedure"
	.zero	1
	.ascii	"call_indirect"
	.zero	1
	.ascii	"call_direct"
	.zero	1
	.ascii	"pop_static_link"
	.zero	1
	.ascii	"pop_struct"
	.zero	1
	.ascii	"pop_param"
	.zero	1
	.ascii	"start_call_indirect"
	.zero	1
	.ascii	"start_call_direct"
	.zero	1
	.ascii	"index_address"
	.zero	1
	.ascii	"add_offset"
	.zero	1
	.ascii	"check_eq"
	.zero	1
	.ascii	"check_index"
	.zero	1
	.ascii	"check_range"
	.zero	1
	.ascii	"check_hi"
	.zero	1
	.ascii	"check_lo"
	.zero	1
	.ascii	"check_nil"
	.zero	1
	.ascii	"typecase_fault"
	.zero	1
	.ascii	"case_fault"
	.zero	1
	.ascii	"return_fault"
	.zero	1
	.ascii	"narrow_fault"
	.zero	1
	.ascii	"assert_fault"
	.zero	1
	.ascii	"loophole"
	.zero	1
	.ascii	"zero"
	.zero	1
	.ascii	"zero_n"
	.zero	1
	.ascii	"copy"
	.zero	1
	.ascii	"copy_n"
	.zero	1
	.ascii	"pop"
	.zero	1
	.ascii	"swap"
	.zero	1
	.ascii	"insert_mn"
	.zero	1
	.ascii	"insert_n"
	.zero	1
	.ascii	"insert"
	.zero	1
	.ascii	"extract_mn"
	.zero	1
	.ascii	"extract_n"
	.zero	1
	.ascii	"extract"
	.zero	1
	.ascii	"rotate_right"
	.zero	1
	.ascii	"rotate_left"
	.zero	1
	.ascii	"rotate"
	.zero	1
	.ascii	"shift_right"
	.zero	1
	.ascii	"shift_left"
	.zero	1
	.ascii	"shift"
	.zero	1
	.ascii	"xor"
	.zero	1
	.ascii	"or"
	.zero	1
	.ascii	"and"
	.zero	1
	.ascii	"not"
	.zero	1
	.ascii	"set_singleton"
	.zero	1
	.ascii	"set_range"
	.zero	1
	.ascii	"set_le"
	.zero	1
	.ascii	"set_lt"
	.zero	1
	.ascii	"set_ge"
	.zero	1
	.ascii	"set_gt"
	.zero	1
	.ascii	"set_ne"
	.zero	1
	.ascii	"set_eq"
	.zero	1
	.ascii	"set_member"
	.zero	1
	.ascii	"set_sym_difference"
	.zero	1
	.ascii	"set_intersection"
	.zero	1
	.ascii	"set_difference"
	.zero	1
	.ascii	"set_union"
	.zero	1
	.ascii	"cvt_float"
	.zero	1
	.ascii	"ceiling"
	.zero	1
	.ascii	"floor"
	.zero	1
	.ascii	"trunc"
	.zero	1
	.ascii	"round"
	.zero	1
	.ascii	"min"
	.zero	1
	.ascii	"max"
	.zero	1
	.ascii	"abs"
	.zero	1
	.ascii	"negate"
	.zero	1
	.ascii	"mod"
	.zero	1
	.ascii	"div"
	.zero	1
	.ascii	"divide"
	.zero	1
	.ascii	"multiply"
	.zero	1
	.ascii	"subtract"
	.zero	1
	.ascii	"add"
	.zero	1
	.ascii	"le"
	.zero	1
	.ascii	"lt"
	.zero	1
	.ascii	"ge"
	.zero	1
	.ascii	"gt"
	.zero	1
	.ascii	"ne"
	.zero	1
	.ascii	"eq"
	.zero	1
	.ascii	"load_float"
	.zero	1
	.ascii	"load_integer"
	.zero	1
	.ascii	"load_nil"
	.zero	1
	.ascii	"store_ref_indirect"
	.zero	1
	.ascii	"store_indirect"
	.zero	1
	.ascii	"load_indirect"
	.zero	1
	.ascii	"load_address"
	.zero	1
	.ascii	"store_ref"
	.zero	1
	.ascii	"store"
	.zero	1
	.ascii	"load"
	.zero	1
	.ascii	"exit_proc"
	.zero	1
	.ascii	"case_jump"
	.zero	1
	.ascii	"if_le"
	.zero	1
	.ascii	"if_lt"
	.zero	1
	.ascii	"if_ge"
	.zero	1
	.ascii	"if_gt"
	.zero	1
	.ascii	"if_ne"
	.zero	1
	.ascii	"if_eq"
	.zero	1
	.ascii	"if_false"
	.zero	1
	.ascii	"if_true"
	.zero	1
	.ascii	"jump"
	.zero	1
	.ascii	"set_label"
	.zero	1
	.ascii	"note_procedure_origin"
	.zero	1
	.ascii	"end_block"
	.zero	1
	.ascii	"begin_block"
	.zero	1
	.ascii	"end_procedure"
	.zero	1
	.ascii	"begin_procedure"
	.zero	1
	.ascii	"declare_procedure"
	.zero	1
	.ascii	"import_procedure"
	.zero	1
	.ascii	"init_float"
	.zero	1
	.ascii	"init_chars"
	.zero	1
	.ascii	"init_offset"
	.zero	1
	.ascii	"init_var"
	.zero	1
	.ascii	"init_label"
	.zero	1
	.ascii	"init_proc"
	.zero	1
	.ascii	"init_int"
	.zero	1
	.ascii	"end_init"
	.zero	1
	.ascii	"begin_init"
	.zero	1
	.ascii	"free_temp"
	.zero	1
	.ascii	"declare_temp"
	.zero	1
	.ascii	"declare_param"
	.zero	1
	.ascii	"declare_local"
	.zero	1
	.ascii	"declare_constant"
	.zero	1
	.ascii	"declare_global"
	.zero	1
	.ascii	"bind_segment"
	.zero	1
	.ascii	"declare_segment"
	.zero	1
	.ascii	"import_global"
	.zero	1
	.ascii	"get_runtime_hook"
	.zero	1
	.ascii	"set_runtime_hook"
	.zero	1
	.ascii	"set_runtime_proc"
	.zero	1
	.ascii	"declare_exception"
	.zero	1
	.ascii	"reveal_opaque"
	.zero	1
	.ascii	"declare_opaque"
	.zero	1
	.ascii	"declare_method"
	.zero	1
	.ascii	"declare_object"
	.zero	1
	.ascii	"declare_raises"
	.zero	1
	.ascii	"declare_formal"
	.zero	1
	.ascii	"declare_proctype"
	.zero	1
	.ascii	"declare_indirect"
	.zero	1
	.ascii	"declare_pointer"
	.zero	1
	.ascii	"declare_subrange"
	.zero	1
	.ascii	"declare_set"
	.zero	1
	.ascii	"declare_field"
	.zero	1
	.ascii	"declare_record"
	.zero	1
	.ascii	"declare_packed"
	.zero	1
	.ascii	"declare_enum_elt"
	.zero	1
	.ascii	"declare_enum"
	.zero	1
	.ascii	"declare_open_array"
	.zero	1
	.ascii	"declare_array"
	.zero	1
	.ascii	"declare_typename"
	.zero	1
	.ascii	"set_source_line"
	.zero	1
	.ascii	"set_source_file"
	.zero	1
	.ascii	"export_unit"
	.zero	1
	.ascii	"import_unit"
	.zero	1
	.ascii	"end_unit"
	.zero	1
	.ascii	"begin_unit"
	.zero	1
	.ascii	"set_error_handler"
	.zero	1
	.ascii	"next_label"
	.zero	3
	.long M3CG__comment
	.long MM_M3CG+792
	.zero	4
	.long M3CG__load_static_link
	.long MM_M3CG+800
	.zero	4
	.long M3CG__load_procedure
	.long MM_M3CG+817
	.zero	4
	.long M3CG__call_indirect
	.long MM_M3CG+832
	.zero	4
	.long M3CG__call_direct
	.long MM_M3CG+846
	.zero	4
	.long M3CG__pop_static_link
	.long MM_M3CG+858
	.zero	4
	.long M3CG__pop_struct
	.long MM_M3CG+874
	.zero	4
	.long M3CG__pop_param
	.long MM_M3CG+885
	.zero	4
	.long M3CG__start_call_indirect
	.long MM_M3CG+895
	.zero	4
	.long M3CG__start_call_direct
	.long MM_M3CG+915
	.zero	4
	.long M3CG__index_address
	.long MM_M3CG+933
	.zero	4
	.long M3CG__add_offset
	.long MM_M3CG+947
	.zero	4
	.long M3CG__check_eq
	.long MM_M3CG+958
	.zero	4
	.long M3CG__check_index
	.long MM_M3CG+967
	.zero	4
	.long M3CG__check_range
	.long MM_M3CG+979
	.zero	4
	.long M3CG__check_hi
	.long MM_M3CG+991
	.zero	4
	.long M3CG__check_lo
	.long MM_M3CG+1000
	.zero	4
	.long M3CG__check_nil
	.long MM_M3CG+1009
	.zero	4
	.long M3CG__typecase_fault
	.long MM_M3CG+1019
	.zero	4
	.long M3CG__case_fault
	.long MM_M3CG+1034
	.zero	4
	.long M3CG__return_fault
	.long MM_M3CG+1045
	.zero	4
	.long M3CG__narrow_fault
	.long MM_M3CG+1058
	.zero	4
	.long M3CG__assert_fault
	.long MM_M3CG+1071
	.zero	4
	.long M3CG__loophole
	.long MM_M3CG+1084
	.zero	4
	.long M3CG__zero
	.long MM_M3CG+1093
	.zero	4
	.long M3CG__zero_n
	.long MM_M3CG+1098
	.zero	4
	.long M3CG__copy
	.long MM_M3CG+1105
	.zero	4
	.long M3CG__copy_n
	.long MM_M3CG+1110
	.zero	4
	.long M3CG__pop
	.long MM_M3CG+1117
	.zero	4
	.long M3CG__swap
	.long MM_M3CG+1121
	.zero	4
	.long M3CG__insert_mn
	.long MM_M3CG+1126
	.zero	4
	.long M3CG__insert_n
	.long MM_M3CG+1136
	.zero	4
	.long M3CG__insert
	.long MM_M3CG+1145
	.zero	4
	.long M3CG__extract_mn
	.long MM_M3CG+1152
	.zero	4
	.long M3CG__extract_n
	.long MM_M3CG+1163
	.zero	4
	.long M3CG__extract
	.long MM_M3CG+1173
	.zero	4
	.long M3CG__rotate_right
	.long MM_M3CG+1181
	.zero	4
	.long M3CG__rotate_left
	.long MM_M3CG+1194
	.zero	4
	.long M3CG__rotate
	.long MM_M3CG+1206
	.zero	4
	.long M3CG__shift_right
	.long MM_M3CG+1213
	.zero	4
	.long M3CG__shift_left
	.long MM_M3CG+1225
	.zero	4
	.long M3CG__shift
	.long MM_M3CG+1236
	.zero	4
	.long M3CG__xor
	.long MM_M3CG+1242
	.zero	4
	.long M3CG__or
	.long MM_M3CG+1246
	.zero	4
	.long M3CG__and
	.long MM_M3CG+1249
	.zero	4
	.long M3CG__not
	.long MM_M3CG+1253
	.zero	4
	.long M3CG__set_singleton
	.long MM_M3CG+1257
	.zero	4
	.long M3CG__set_range
	.long MM_M3CG+1271
	.zero	4
	.long M3CG__set_le
	.long MM_M3CG+1281
	.zero	4
	.long M3CG__set_lt
	.long MM_M3CG+1288
	.zero	4
	.long M3CG__set_ge
	.long MM_M3CG+1295
	.zero	4
	.long M3CG__set_gt
	.long MM_M3CG+1302
	.zero	4
	.long M3CG__set_ne
	.long MM_M3CG+1309
	.zero	4
	.long M3CG__set_eq
	.long MM_M3CG+1316
	.zero	4
	.long M3CG__set_member
	.long MM_M3CG+1323
	.zero	4
	.long M3CG__set_sym_difference
	.long MM_M3CG+1334
	.zero	4
	.long M3CG__set_intersection
	.long MM_M3CG+1353
	.zero	4
	.long M3CG__set_difference
	.long MM_M3CG+1370
	.zero	4
	.long M3CG__set_union
	.long MM_M3CG+1385
	.zero	4
	.long M3CG__cvt_float
	.long MM_M3CG+1395
	.zero	4
	.long M3CG__ceiling
	.long MM_M3CG+1405
	.zero	4
	.long M3CG__floor
	.long MM_M3CG+1413
	.zero	4
	.long M3CG__trunc
	.long MM_M3CG+1419
	.zero	4
	.long M3CG__round
	.long MM_M3CG+1425
	.zero	4
	.long M3CG__min
	.long MM_M3CG+1431
	.zero	4
	.long M3CG__max
	.long MM_M3CG+1435
	.zero	4
	.long M3CG__abs
	.long MM_M3CG+1439
	.zero	4
	.long M3CG__negate
	.long MM_M3CG+1443
	.zero	4
	.long M3CG__mod
	.long MM_M3CG+1450
	.zero	4
	.long M3CG__div
	.long MM_M3CG+1454
	.zero	4
	.long M3CG__divide
	.long MM_M3CG+1458
	.zero	4
	.long M3CG__multiply
	.long MM_M3CG+1465
	.zero	4
	.long M3CG__subtract
	.long MM_M3CG+1474
	.zero	4
	.long M3CG__add
	.long MM_M3CG+1483
	.zero	4
	.long M3CG__le
	.long MM_M3CG+1487
	.zero	4
	.long M3CG__lt
	.long MM_M3CG+1490
	.zero	4
	.long M3CG__ge
	.long MM_M3CG+1493
	.zero	4
	.long M3CG__gt
	.long MM_M3CG+1496
	.zero	4
	.long M3CG__ne
	.long MM_M3CG+1499
	.zero	4
	.long M3CG__eq
	.long MM_M3CG+1502
	.zero	4
	.long M3CG__load_float
	.long MM_M3CG+1505
	.zero	4
	.long M3CG__load_integer
	.long MM_M3CG+1516
	.zero	4
	.long M3CG__load_nil
	.long MM_M3CG+1529
	.zero	4
	.long M3CG__store_ref_indirect
	.long MM_M3CG+1538
	.zero	4
	.long M3CG__store_indirect
	.long MM_M3CG+1557
	.zero	4
	.long M3CG__load_indirect
	.long MM_M3CG+1572
	.zero	4
	.long M3CG__load_address
	.long MM_M3CG+1586
	.zero	4
	.long M3CG__store_ref
	.long MM_M3CG+1599
	.zero	4
	.long M3CG__store
	.long MM_M3CG+1609
	.zero	4
	.long M3CG__load
	.long MM_M3CG+1615
	.zero	4
	.long M3CG__exit_proc
	.long MM_M3CG+1620
	.zero	4
	.long M3CG__case_jump
	.long MM_M3CG+1630
	.zero	4
	.long M3CG__if_le
	.long MM_M3CG+1640
	.zero	4
	.long M3CG__if_lt
	.long MM_M3CG+1646
	.zero	4
	.long M3CG__if_ge
	.long MM_M3CG+1652
	.zero	4
	.long M3CG__if_gt
	.long MM_M3CG+1658
	.zero	4
	.long M3CG__if_ne
	.long MM_M3CG+1664
	.zero	4
	.long M3CG__if_eq
	.long MM_M3CG+1670
	.zero	4
	.long M3CG__if_false
	.long MM_M3CG+1676
	.zero	4
	.long M3CG__if_true
	.long MM_M3CG+1685
	.zero	4
	.long M3CG__jump
	.long MM_M3CG+1693
	.zero	4
	.long M3CG__set_label
	.long MM_M3CG+1698
	.zero	4
	.long M3CG__note_procedure_origin
	.long MM_M3CG+1708
	.zero	4
	.long M3CG__end_block
	.long MM_M3CG+1730
	.zero	4
	.long M3CG__begin_block
	.long MM_M3CG+1740
	.zero	4
	.long M3CG__end_procedure
	.long MM_M3CG+1752
	.zero	4
	.long M3CG__begin_procedure
	.long MM_M3CG+1766
	.zero	4
	.long M3CG__declare_procedure
	.long MM_M3CG+1782
	.zero	4
	.long M3CG__import_procedure
	.long MM_M3CG+1800
	.zero	4
	.long M3CG__init_float
	.long MM_M3CG+1817
	.zero	4
	.long M3CG__init_chars
	.long MM_M3CG+1828
	.zero	4
	.long M3CG__init_offset
	.long MM_M3CG+1839
	.zero	4
	.long M3CG__init_var
	.long MM_M3CG+1851
	.zero	4
	.long M3CG__init_label
	.long MM_M3CG+1860
	.zero	4
	.long M3CG__init_proc
	.long MM_M3CG+1871
	.zero	4
	.long M3CG__init_int
	.long MM_M3CG+1881
	.zero	4
	.long M3CG__end_init
	.long MM_M3CG+1890
	.zero	4
	.long M3CG__begin_init
	.long MM_M3CG+1899
	.zero	4
	.long M3CG__free_temp
	.long MM_M3CG+1910
	.zero	4
	.long M3CG__declare_temp
	.long MM_M3CG+1920
	.zero	4
	.long M3CG__declare_param
	.long MM_M3CG+1933
	.zero	4
	.long M3CG__declare_local
	.long MM_M3CG+1947
	.zero	4
	.long M3CG__declare_constant
	.long MM_M3CG+1961
	.zero	4
	.long M3CG__declare_global
	.long MM_M3CG+1978
	.zero	4
	.long M3CG__bind_segment
	.long MM_M3CG+1993
	.zero	4
	.long M3CG__declare_segment
	.long MM_M3CG+2006
	.zero	4
	.long M3CG__import_global
	.long MM_M3CG+2022
	.zero	4
	.long M3CG__get_runtime_hook
	.long MM_M3CG+2036
	.zero	4
	.long M3CG__set_runtime_hook
	.long MM_M3CG+2053
	.zero	4
	.long M3CG__set_runtime_proc
	.long MM_M3CG+2070
	.zero	4
	.long M3CG__declare_exception
	.long MM_M3CG+2087
	.zero	4
	.long M3CG__reveal_opaque
	.long MM_M3CG+2105
	.zero	4
	.long M3CG__declare_opaque
	.long MM_M3CG+2119
	.zero	4
	.long M3CG__declare_method
	.long MM_M3CG+2134
	.zero	4
	.long M3CG__declare_object
	.long MM_M3CG+2149
	.zero	4
	.long M3CG__declare_raises
	.long MM_M3CG+2164
	.zero	4
	.long M3CG__declare_formal
	.long MM_M3CG+2179
	.zero	4
	.long M3CG__declare_proctype
	.long MM_M3CG+2194
	.zero	4
	.long M3CG__declare_indirect
	.long MM_M3CG+2211
	.zero	4
	.long M3CG__declare_pointer
	.long MM_M3CG+2228
	.zero	4
	.long M3CG__declare_subrange
	.long MM_M3CG+2244
	.zero	4
	.long M3CG__declare_set
	.long MM_M3CG+2261
	.zero	4
	.long M3CG__declare_field
	.long MM_M3CG+2273
	.zero	4
	.long M3CG__declare_record
	.long MM_M3CG+2287
	.zero	4
	.long M3CG__declare_packed
	.long MM_M3CG+2302
	.zero	4
	.long M3CG__declare_enum_elt
	.long MM_M3CG+2317
	.zero	4
	.long M3CG__declare_enum
	.long MM_M3CG+2334
	.zero	4
	.long M3CG__declare_open_array
	.long MM_M3CG+2347
	.zero	4
	.long M3CG__declare_array
	.long MM_M3CG+2366
	.zero	4
	.long M3CG__declare_typename
	.long MM_M3CG+2380
	.zero	4
	.long M3CG__set_source_line
	.long MM_M3CG+2397
	.zero	4
	.long M3CG__set_source_file
	.long MM_M3CG+2413
	.zero	4
	.long M3CG__export_unit
	.long MM_M3CG+2429
	.zero	4
	.long M3CG__import_unit
	.long MM_M3CG+2441
	.zero	4
	.long M3CG__end_unit
	.long MM_M3CG+2453
	.zero	4
	.long M3CG__begin_unit
	.long MM_M3CG+2462
	.zero	4
	.long M3CG__set_error_handler
	.long MM_M3CG+2473
	.zero	4
	.long M3CG__next_label
	.long MM_M3CG+2491
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3CG.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	5
	.long -1183089765
	.ascii	"M3CG.T"
	.zero	1
	.ascii	"M3CG.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
