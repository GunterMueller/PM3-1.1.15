	.file	"TextArraySort.mc"
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
	.type	 TextArraySort__Sort,@function
TextArraySort__Sort:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	pushl $0
	pushl %edx
	call TextArraySort__QuickSort
	pushl %ebx
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	pushl $0
	pushl %edx
	call TextArraySort__InsertionSort
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TextArraySort__Sort,.Lfe1-TextArraySort__Sort
	.align 16
	.type	 TextArraySort__QuickSort,@function
TextArraySort__QuickSort:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L3:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	jmp .L4
	.align 16
.L5:
	movl 16(%ebp),%eax
	addl 12(%ebp),%eax
	sarl $1,%eax
	movl %eax,-56(%ebp)
	movl 8(%ebp),%eax
	movl 20(%ebp),%ebx
	movl 4(%eax),%eax
	cmpl %eax,12(%ebp)
	jb .L6
	pushl $402
	call _m3_fault
	.align 16
.L6:
	cmpl %eax,-56(%ebp)
	jb .L7
	pushl $402
	call _m3_fault
	.align 16
.L7:
	cmpl $0,20(%ebp)
	je .L8
	movl 20(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L8
	movl 8(%edi),%esi
	movl %esi,-20(%ebp)
	movl 4(%edi),%ebx
.L8:
	movl 8(%ebp),%eax
	movl -56(%ebp),%edi
	movl (%eax),%edx
	movl (%edx,%edi,4),%eax
	pushl %eax
	movl 12(%ebp),%esi
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl -20(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L10
	movl 8(%ebp),%eax
	movl 20(%ebp),%ebx
	movl 4(%eax),%edx
	cmpl %edx,%edi
	jb .L11
	pushl $418
	call _m3_fault
	.align 16
.L11:
	movl 16(%ebp),%eax
	decl %eax
	cmpl %edx,%eax
	jb .L12
	pushl $418
	call _m3_fault
	.align 16
.L12:
	cmpl $0,20(%ebp)
	je .L13
	movl 20(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L13
	movl 8(%edi),%esi
	movl %esi,-24(%ebp)
	movl 4(%edi),%ebx
.L13:
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl (%eax),%edx
	movl -4(%edx,%edi,4),%eax
	pushl %eax
	movl -56(%ebp),%esi
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L15
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L16
	pushl $434
	call _m3_fault
	.align 16
.L16:
	movl (%eax),%eax
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,-16(%ebp)
	jmp .L33
	.align 16
.L15:
	movl 8(%ebp),%eax
	movl 20(%ebp),%ebx
	movl 4(%eax),%edx
	cmpl %edx,12(%ebp)
	jb .L18
	pushl $450
	call _m3_fault
	.align 16
.L18:
	movl 16(%ebp),%eax
	decl %eax
	cmpl %edx,%eax
	jb .L19
	pushl $450
	call _m3_fault
	.align 16
.L19:
	cmpl $0,20(%ebp)
	je .L20
	movl 20(%ebp),%esi
	cmpl $-1,(%esi)
	jne .L20
	movl 8(%esi),%edi
	movl %edi,-28(%ebp)
	movl 4(%esi),%ebx
.L20:
	movl 8(%ebp),%eax
	movl 16(%ebp),%esi
	movl (%eax),%edx
	movl -4(%edx,%esi,4),%eax
	pushl %eax
	movl 12(%ebp),%edi
	movl (%edx,%edi,4),%eax
	pushl %eax
	movl -28(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L22
	movl 16(%ebp),%edx
	movl 8(%ebp),%eax
	decl %edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L23
	pushl $466
	call _m3_fault
	.align 16
.L23:
	movl (%eax),%eax
	movl 16(%ebp),%esi
	leal (%eax,%edx,4),%ebx
	movl -4(%eax,%esi,4),%esi
	movl %esi,-16(%ebp)
	cmpl %ecx,-56(%ebp)
	jb .L25
	pushl $466
	call _m3_fault
	.align 16
.L25:
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L59
	pushl $466
	call _m3_fault
	.align 16
.L22:
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	cmpl %ecx,12(%ebp)
	jb .L27
	pushl $498
	call _m3_fault
	.align 16
.L27:
	movl (%eax),%eax
	movl 12(%ebp),%esi
	movl 12(%ebp),%edi
	leal (%eax,%edi,4),%ebx
	movl 16(%ebp),%edx
	decl %edx
	movl (%eax,%esi,4),%esi
	movl %esi,-16(%ebp)
	cmpl %ecx,%edx
	jb .L29
	pushl $498
	call _m3_fault
	.align 16
.L29:
	movl 16(%ebp),%esi
	movl -4(%eax,%esi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L30
	pushl $498
	call _m3_fault
	.align 16
.L30:
	movl (%eax),%eax
	leal (%eax,%edx,4),%ebx
	cmpl %ecx,-56(%ebp)
	jb .L31
	pushl $498
	call _m3_fault
	.align 16
.L31:
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L59
	pushl $498
	call _m3_fault
	.align 16
.L10:
	movl 20(%ebp),%ebx
	movl 16(%ebp),%edx
	movl 8(%ebp),%eax
	decl %edx
	movl 4(%eax),%eax
	cmpl %eax,%edx
	jb .L34
	pushl $546
	call _m3_fault
	.align 16
.L34:
	cmpl %eax,-56(%ebp)
	jb .L35
	pushl $546
	call _m3_fault
	.align 16
.L35:
	cmpl $0,20(%ebp)
	je .L36
	movl 20(%ebp),%esi
	cmpl $-1,(%esi)
	jne .L36
	movl 8(%esi),%edi
	movl %edi,-32(%ebp)
	movl 4(%esi),%ebx
.L36:
	movl 8(%ebp),%eax
	movl -56(%ebp),%esi
	movl (%eax),%edx
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl 16(%ebp),%edi
	movl -4(%edx,%edi,4),%eax
	pushl %eax
	movl -32(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L38
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	cmpl %edx,%esi
	jb .L39
	pushl $562
	call _m3_fault
	.align 16
.L39:
	movl (%eax),%eax
	movl -56(%ebp),%esi
	movl 16(%ebp),%ecx
	decl %ecx
	movl (%eax,%esi,4),%esi
	movl %esi,-16(%ebp)
	cmpl %edx,%ecx
	jb .L40
	pushl $562
	call _m3_fault
	.align 16
.L40:
	movl 16(%ebp),%edi
	leal (%eax,%ecx,4),%ebx
	movl -4(%eax,%edi,4),%edi
	movl %edi,-12(%ebp)
	cmpl %edx,12(%ebp)
	jb .L42
	pushl $562
	call _m3_fault
	.align 16
.L42:
	movl 12(%ebp),%esi
	movl (%eax,%esi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L43
	pushl $562
	call _m3_fault
	.align 16
.L43:
	movl (%eax),%eax
	movl 12(%ebp),%edi
	movl -12(%ebp),%esi
	movl %esi,(%eax,%edi,4)
	jmp .L33
	.align 16
.L38:
	movl 8(%ebp),%eax
	movl 20(%ebp),%ebx
	movl 4(%eax),%edx
	cmpl %edx,12(%ebp)
	jb .L45
	pushl $578
	call _m3_fault
	.align 16
.L45:
	movl 16(%ebp),%eax
	decl %eax
	cmpl %edx,%eax
	jb .L46
	pushl $578
	call _m3_fault
	.align 16
.L46:
	cmpl $0,20(%ebp)
	je .L47
	movl 20(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L47
	movl 8(%edi),%esi
	movl %esi,-36(%ebp)
	movl 4(%edi),%ebx
.L47:
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl (%eax),%edx
	movl -4(%edx,%edi,4),%eax
	pushl %eax
	movl 12(%ebp),%esi
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl -36(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L49
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	cmpl %edx,%esi
	jb .L50
	pushl $594
	call _m3_fault
	.align 16
.L50:
	movl (%eax),%eax
	movl 12(%ebp),%edi
	movl 12(%ebp),%esi
	leal (%eax,%esi,4),%ebx
	movl (%eax,%edi,4),%edi
	movl %edi,-16(%ebp)
	cmpl %edx,-56(%ebp)
	jb .L52
	pushl $594
	call _m3_fault
	.align 16
.L52:
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L59
	pushl $594
	call _m3_fault
	.align 16
.L49:
	movl 16(%ebp),%edx
	movl 8(%ebp),%eax
	decl %edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L54
	pushl $626
	call _m3_fault
	.align 16
.L54:
	movl (%eax),%eax
	movl 16(%ebp),%esi
	leal (%eax,%edx,4),%ebx
	movl -4(%eax,%esi,4),%esi
	movl %esi,-16(%ebp)
	cmpl %ecx,12(%ebp)
	jb .L56
	pushl $626
	call _m3_fault
	.align 16
.L56:
	movl 12(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	movl 4(%eax),%edx
	cmpl %edx,%edi
	jb .L57
	pushl $626
	call _m3_fault
	.align 16
.L57:
	movl (%eax),%eax
	movl 12(%ebp),%esi
	leal (%eax,%esi,4),%ebx
	cmpl %edx,-56(%ebp)
	jb .L58
	pushl $626
	call _m3_fault
	.align 16
.L58:
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%eax
	cmpl %edi,4(%eax)
	ja .L59
	pushl $626
	call _m3_fault
	.align 16
.L59:
	movl (%eax),%eax
	movl -56(%ebp),%esi
	movl -16(%ebp),%edi
	movl %edi,(%eax,%esi,4)
.L33:
	movl 12(%ebp),%esi
	incl %esi
	movl %esi,-56(%ebp)
	movl 16(%ebp),%edi
	addl $-2,%edi
	movl %edi,-52(%ebp)
	jmp .L60
	.align 16
.L61:
	decl -52(%ebp)
.L60:
	movl 20(%ebp),%ebx
	movl 8(%ebp),%eax
	movl -52(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L62
	pushl $754
	call _m3_fault
	.align 16
.L62:
	cmpl $0,20(%ebp)
	je .L63
	movl 20(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L63
	movl 8(%edi),%esi
	movl %esi,-40(%ebp)
	movl 4(%edi),%ebx
.L63:
	movl -16(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%eax
	movl -52(%ebp),%esi
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl -40(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jg .L61
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L66
	pushl $770
	call _m3_fault
	.align 16
.L66:
	movl (%eax),%eax
	movl -52(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,-12(%ebp)
	decl %edi
	movl %edi,-52(%ebp)
.L67:
	movl -52(%ebp),%esi
	cmpl %esi,-56(%ebp)
	jg .L69
	jmp .L70
	.align 16
.L71:
	incl -56(%ebp)
.L70:
	movl 20(%ebp),%ebx
	movl 8(%ebp),%eax
	movl -56(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L72
	pushl $866
	call _m3_fault
	.align 16
.L72:
	cmpl $0,20(%ebp)
	je .L73
	movl 20(%ebp),%esi
	cmpl $-1,(%esi)
	jne .L73
	movl 8(%esi),%edi
	movl %edi,-44(%ebp)
	movl 4(%esi),%ebx
.L73:
	movl -16(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%eax
	movl -56(%ebp),%edi
	movl (%eax),%eax
	movl (%eax,%edi,4),%eax
	pushl %eax
	movl -44(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jl .L71
	movl -52(%ebp),%esi
	cmpl %esi,%edi
	jg .L69
	movl %esi,%edx
	movl 8(%ebp),%eax
	incl %edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L77
	pushl $898
	call _m3_fault
	.align 16
.L77:
	movl (%eax),%eax
	leal (%eax,%edx,4),%ebx
	cmpl %ecx,-56(%ebp)
	jb .L78
	pushl $898
	call _m3_fault
	.align 16
.L78:
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%eax
	movl %eax,(%ebx)
	incl %edi
	movl %edi,-56(%ebp)
	jmp .L79
	.align 16
.L80:
	decl -52(%ebp)
.L79:
	movl 20(%ebp),%ebx
	movl 8(%ebp),%eax
	movl -52(%ebp),%esi
	cmpl %esi,4(%eax)
	ja .L81
	pushl $946
	call _m3_fault
	.align 16
.L81:
	cmpl $0,20(%ebp)
	je .L82
	movl 20(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L82
	movl 8(%edi),%esi
	movl %esi,-48(%ebp)
	movl 4(%edi),%ebx
.L82:
	movl -16(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%eax
	movl -52(%ebp),%esi
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl -48(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jg .L80
	cmpl %esi,-56(%ebp)
	jle .L85
	movl -56(%ebp),%eax
	decl %eax
	cmpl %esi,%eax
	jne .L69
	movl -56(%ebp),%edi
	addl $-2,%edi
	movl %edi,-52(%ebp)
	jmp .L69
	.align 16
.L85:
	movl -56(%ebp),%edx
	movl 8(%ebp),%eax
	decl %edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L87
	pushl $978
	call _m3_fault
	.align 16
.L87:
	movl (%eax),%eax
	leal (%eax,%edx,4),%ebx
	cmpl %ecx,-52(%ebp)
	jb .L88
	pushl $978
	call _m3_fault
	.align 16
.L88:
	movl -52(%ebp),%esi
	movl (%eax,%esi,4),%eax
	movl %eax,(%ebx)
	decl %esi
	movl %esi,-52(%ebp)
	jmp .L67
	.align 16
.L69:
	movl -52(%ebp),%ebx
	movl 8(%ebp),%eax
	incl %ebx
	cmpl %ebx,4(%eax)
	ja .L89
	pushl $1058
	call _m3_fault
	.align 16
.L89:
	movl (%eax),%eax
	movl -12(%ebp),%edi
	movl %edi,(%eax,%ebx,4)
	movl -52(%ebp),%esi
	addl $2,%esi
	movl %esi,-56(%ebp)
	movl %esi,%edx
	subl 12(%ebp),%edx
	movl 16(%ebp),%eax
	subl %esi,%eax
	cmpl %eax,%edx
	jge .L90
	movl 20(%ebp),%edi
	pushl %edi
	pushl %ebx
	movl 12(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call TextArraySort__QuickSort
	movl -56(%ebp),%edi
	movl %edi,12(%ebp)
	jmp .L94
	.align 16
.L90:
	movl 20(%ebp),%esi
	pushl %esi
	movl 16(%ebp),%edi
	pushl %edi
	movl -56(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call TextArraySort__QuickSort
	movl %ebx,16(%ebp)
.L94:
	addl $16,%esp
.L4:
	movl 16(%ebp),%eax
	subl 12(%ebp),%eax
	cmpl $9,%eax
	jg .L5
.L93:
	movl -8(%ebp),%eax
	leal -68(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TextArraySort__QuickSort,.Lfe2-TextArraySort__QuickSort
	.align 16
	.type	 TextArraySort__InsertionSort,@function
TextArraySort__InsertionSort:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	incl %esi
	movl 16(%ebp),%edi
	decl %edi
	movl %edi,-4(%ebp)
	jmp .L96
	.align 16
.L97:
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L98
	pushl $1346
	call _m3_fault
	.align 16
.L98:
	movl (%eax),%eax
	leal -1(%esi),%ebx
	movl (%eax,%esi,4),%eax
	movl %eax,-12(%ebp)
	jmp .L99
	.align 16
.L100:
	movl 8(%ebp),%eax
	leal 1(%ebx),%edx
	movl 4(%eax),%ecx
	cmpl %ecx,%edx
	jb .L101
	pushl $1394
	call _m3_fault
	.align 16
.L101:
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	cmpl %ecx,%ebx
	jb .L102
	pushl $1394
	call _m3_fault
	.align 16
.L102:
	movl (%eax,%ebx,4),%eax
	movl %eax,(%edx)
	decl %ebx
.L99:
	cmpl %ebx,12(%ebp)
	jg .L107
	movl 8(%ebp),%eax
	movl 20(%ebp),%edx
	cmpl %ebx,4(%eax)
	ja .L104
	pushl $1378
	call _m3_fault
	.align 16
.L104:
	testl %edx,%edx
	je .L105
	cmpl $-1,(%edx)
	jne .L105
	movl 8(%edx),%edi
	movl %edi,-8(%ebp)
	movl 4(%edx),%edx
.L105:
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl -12(%ebp),%edi
	pushl %edi
	movl -8(%ebp),%ecx
	call *%edx
	addl $8,%esp
	testl %eax,%eax
	jl .L100
.L107:
	movl 8(%ebp),%eax
	leal 1(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L108
	pushl $1442
	call _m3_fault
	.align 16
.L108:
	movl (%eax),%eax
	movl -12(%ebp),%edi
	incl %esi
	movl %edi,(%eax,%edx,4)
.L96:
	cmpl %esi,-4(%ebp)
	jge .L97
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TextArraySort__InsertionSort,.Lfe3-TextArraySort__InsertionSort
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextArraySort
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_TextArraySort
.data
	.align 4
	.type	 MM_TextArraySort,@object
	.size	 MM_TextArraySort,292
MM_TextArraySort:
	.long MM_TextArraySort+128
	.zero	16
	.long MM_TextArraySort+88
	.zero	20
	.long TextArraySort__QuickSort
	.long TextArraySort__InsertionSort
	.long TextArraySort__Sort
	.ascii	"InsertionSort"
	.zero	1
	.ascii	"QuickSort"
	.zero	1
	.ascii	"Sort"
	.zero	4
	.long TextArraySort__InsertionSort
	.long MM_TextArraySort+56
	.zero	4
	.long TextArraySort__QuickSort
	.long MM_TextArraySort+70
	.zero	4
	.long TextArraySort__Sort
	.long MM_TextArraySort+80
	.long MI_TextArraySort+44
	.zero	4
	.ascii	"TextArraySort.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/languag"
	.ascii	"e/modula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/b"
	.ascii	"oot-LINUXLIBC6/libm3/src/sort/ArraySort.mg"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
