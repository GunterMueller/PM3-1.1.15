	.file	"IntArraySort.mc"
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
	.type	 IntArraySort__Sort,@function
IntArraySort__Sort:
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
	call IntArraySort__QuickSort
	pushl %ebx
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	pushl $0
	pushl %edx
	call IntArraySort__InsertionSort
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 IntArraySort__Sort,.Lfe1-IntArraySort__Sort
	.align 16
	.type	 IntArraySort__QuickSort,@function
IntArraySort__QuickSort:
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
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	jmp .L4
	.align 16
.L5:
	movl 16(%ebp),%eax
	addl 12(%ebp),%eax
	movl %eax,%esi
	sarl $1,%esi
	movl 20(%ebp),%edi
	movl 8(%ebp),%eax
	movl %edi,-52(%ebp)
	movl 4(%eax),%eax
	cmpl %eax,12(%ebp)
	jb .L6
	pushl $402
	call _m3_fault
	.align 16
.L6:
	cmpl %eax,%esi
	jb .L7
	pushl $402
	call _m3_fault
	.align 16
.L7:
	cmpl $0,20(%ebp)
	je .L8
	movl 20(%ebp),%ebx
	cmpl $-1,(%ebx)
	jne .L8
	movl 8(%ebx),%edi
	movl %edi,-20(%ebp)
	movl 4(%ebx),%ebx
	movl %ebx,-52(%ebp)
.L8:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl 12(%ebp),%edi
	movl (%edx,%edi,4),%eax
	pushl %eax
	movl -52(%ebp),%ebx
	movl -20(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L10
	movl 20(%ebp),%edi
	movl 8(%ebp),%eax
	movl %edi,-52(%ebp)
	movl 4(%eax),%edx
	cmpl %edx,%esi
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
	movl 20(%ebp),%ebx
	cmpl $-1,(%ebx)
	jne .L13
	movl 8(%ebx),%edi
	movl %edi,-24(%ebp)
	movl 4(%ebx),%ebx
	movl %ebx,-52(%ebp)
.L13:
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl (%eax),%edx
	movl -4(%edx,%edi,4),%eax
	pushl %eax
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl -52(%ebp),%ebx
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
	movl (%eax,%esi,4),%esi
	movl %esi,-16(%ebp)
	jmp .L33
	.align 16
.L15:
	movl 20(%ebp),%edi
	movl 8(%ebp),%eax
	movl %edi,-52(%ebp)
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
	movl 20(%ebp),%ebx
	cmpl $-1,(%ebx)
	jne .L20
	movl 8(%ebx),%edi
	movl %edi,-28(%ebp)
	movl 4(%ebx),%ebx
	movl %ebx,-52(%ebp)
.L20:
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl (%eax),%edx
	movl -4(%edx,%edi,4),%eax
	pushl %eax
	movl 12(%ebp),%ebx
	movl (%edx,%ebx,4),%eax
	pushl %eax
	movl -52(%ebp),%edi
	movl -28(%ebp),%ecx
	call *%edi
	addl $8,%esp
	testl %eax,%eax
	jge .L22
	movl 16(%ebp),%eax
	movl 8(%ebp),%ecx
	decl %eax
	movl 4(%ecx),%ebx
	movl %ebx,-56(%ebp)
	cmpl %ebx,%eax
	jb .L23
	pushl $466
	call _m3_fault
	.align 16
.L23:
	movl (%ecx),%edx
	movl 16(%ebp),%edi
	movl -4(%edx,%edi,4),%edi
	movl %edi,-16(%ebp)
	cmpl %esi,-56(%ebp)
	ja .L25
	pushl $466
	call _m3_fault
	.align 16
.L25:
	movl 16(%ebp),%ebx
	movl (%edx,%esi,4),%eax
	movl %eax,-4(%edx,%ebx,4)
	cmpl %esi,4(%ecx)
	ja .L53
	pushl $466
	call _m3_fault
	.align 16
.L22:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %eax,12(%ebp)
	jb .L27
	pushl $498
	call _m3_fault
	.align 16
.L27:
	movl (%ecx),%edx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	decl %edi
	movl (%edx,%ebx,4),%ebx
	movl %ebx,-16(%ebp)
	movl %edi,-56(%ebp)
	cmpl %eax,%edi
	jb .L29
	pushl $498
	call _m3_fault
	.align 16
.L29:
	movl 16(%ebp),%ebx
	movl 12(%ebp),%edi
	movl -4(%edx,%ebx,4),%eax
	movl %eax,(%edx,%edi,4)
	movl 4(%ecx),%eax
	cmpl %eax,-56(%ebp)
	jb .L30
	pushl $498
	call _m3_fault
	.align 16
.L30:
	cmpl %eax,%esi
	jb .L31
	pushl $498
	call _m3_fault
	.align 16
.L31:
	movl (%ecx),%edx
	movl 16(%ebp),%ebx
	movl (%edx,%esi,4),%eax
	movl %eax,-4(%edx,%ebx,4)
	cmpl %esi,4(%ecx)
	ja .L53
	pushl $498
	call _m3_fault
	.align 16
.L10:
	movl 20(%ebp),%ebx
	movl %ebx,-52(%ebp)
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
	cmpl %eax,%esi
	jb .L35
	pushl $546
	call _m3_fault
	.align 16
.L35:
	cmpl $0,20(%ebp)
	je .L36
	movl 20(%ebp),%edi
	cmpl $-1,(%edi)
	jne .L36
	movl 8(%edi),%ebx
	movl %ebx,-32(%ebp)
	movl 4(%edi),%edi
	movl %edi,-52(%ebp)
.L36:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl (%edx,%esi,4),%eax
	pushl %eax
	movl 16(%ebp),%ebx
	movl -4(%edx,%ebx,4),%eax
	pushl %eax
	movl -52(%ebp),%edi
	movl -32(%ebp),%ecx
	call *%edi
	addl $8,%esp
	testl %eax,%eax
	jge .L38
	movl 8(%ebp),%ebx
	movl %ebx,-56(%ebp)
	movl 4(%ebx),%ecx
	cmpl %ecx,%esi
	jb .L39
	pushl $562
	call _m3_fault
	.align 16
.L39:
	movl -56(%ebp),%edi
	movl 16(%ebp),%eax
	movl (%edi),%edx
	decl %eax
	movl (%edx,%esi,4),%esi
	movl %esi,-16(%ebp)
	cmpl %ecx,%eax
	jb .L40
	pushl $562
	call _m3_fault
	.align 16
.L40:
	movl 16(%ebp),%ebx
	movl -4(%edx,%ebx,4),%ebx
	movl %ebx,-12(%ebp)
	cmpl %ecx,12(%ebp)
	jb .L42
	pushl $562
	call _m3_fault
	.align 16
.L42:
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	movl (%edx,%edi,4),%eax
	movl %eax,-4(%edx,%ebx,4)
	movl -56(%ebp),%ebx
	cmpl %edi,4(%ebx)
	ja .L43
	pushl $562
	call _m3_fault
	.align 16
.L43:
	movl -56(%ebp),%edi
	movl 12(%ebp),%ebx
	movl (%edi),%eax
	movl -12(%ebp),%edi
	movl %edi,(%eax,%ebx,4)
	jmp .L33
	.align 16
.L38:
	movl 20(%ebp),%ebx
	movl 8(%ebp),%eax
	movl %ebx,-52(%ebp)
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
	movl 8(%edi),%ebx
	movl %ebx,-36(%ebp)
	movl 4(%edi),%edi
	movl %edi,-52(%ebp)
.L47:
	movl 8(%ebp),%eax
	movl 16(%ebp),%ebx
	movl (%eax),%edx
	movl -4(%edx,%ebx,4),%eax
	pushl %eax
	movl 12(%ebp),%edi
	movl (%edx,%edi,4),%eax
	pushl %eax
	movl -52(%ebp),%ebx
	movl -36(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jge .L49
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %eax,%edi
	jb .L50
	pushl $594
	call _m3_fault
	.align 16
.L50:
	movl (%ecx),%edx
	movl 12(%ebp),%edi
	movl (%edx,%edi,4),%edi
	movl %edi,-16(%ebp)
	cmpl %eax,%esi
	jb .L52
	pushl $594
	call _m3_fault
	.align 16
.L52:
	movl 12(%ebp),%ebx
	movl (%edx,%esi,4),%eax
	movl %eax,(%edx,%ebx,4)
	cmpl %esi,4(%ecx)
	ja .L53
	pushl $594
	call _m3_fault
	.align 16
.L53:
	movl (%ecx),%eax
	movl -16(%ebp),%edi
	movl %edi,(%eax,%esi,4)
	jmp .L33
	.align 16
.L49:
	movl 16(%ebp),%eax
	movl 8(%ebp),%ecx
	decl %eax
	movl 4(%ecx),%ebx
	movl %ebx,-56(%ebp)
	cmpl %ebx,%eax
	jb .L54
	pushl $626
	call _m3_fault
	.align 16
.L54:
	movl (%ecx),%edx
	movl 16(%ebp),%edi
	movl -56(%ebp),%ebx
	movl -4(%edx,%edi,4),%edi
	movl %edi,-16(%ebp)
	cmpl %ebx,12(%ebp)
	jb .L56
	pushl $626
	call _m3_fault
	.align 16
.L56:
	movl 12(%ebp),%edi
	movl 16(%ebp),%ebx
	movl (%edx,%edi,4),%eax
	movl %eax,-4(%edx,%ebx,4)
	movl 4(%ecx),%eax
	cmpl %eax,%edi
	jb .L57
	pushl $626
	call _m3_fault
	.align 16
.L57:
	cmpl %eax,%esi
	jb .L58
	pushl $626
	call _m3_fault
	.align 16
.L58:
	movl (%ecx),%edx
	movl 12(%ebp),%edi
	movl (%edx,%esi,4),%eax
	movl %eax,(%edx,%edi,4)
	cmpl %esi,4(%ecx)
	ja .L59
	pushl $626
	call _m3_fault
	.align 16
.L59:
	movl (%ecx),%eax
	movl -16(%ebp),%ebx
	movl %ebx,(%eax,%esi,4)
.L33:
	movl 12(%ebp),%esi
	incl %esi
	movl 16(%ebp),%edi
	addl $-2,%edi
	movl %edi,-56(%ebp)
	jmp .L60
	.align 16
.L61:
	decl -56(%ebp)
.L60:
	movl 20(%ebp),%ebx
	movl %ebx,-52(%ebp)
	movl 8(%ebp),%eax
	movl -56(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L62
	pushl $754
	call _m3_fault
	.align 16
.L62:
	cmpl $0,20(%ebp)
	je .L63
	movl 20(%ebp),%ebx
	cmpl $-1,(%ebx)
	jne .L63
	movl 8(%ebx),%edi
	movl %edi,-40(%ebp)
	movl 4(%ebx),%ebx
	movl %ebx,-52(%ebp)
.L63:
	movl -16(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%eax
	movl -56(%ebp),%ebx
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl -52(%ebp),%edi
	movl -40(%ebp),%ecx
	call *%edi
	addl $8,%esp
	testl %eax,%eax
	jg .L61
	movl 8(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L66
	pushl $770
	call _m3_fault
	.align 16
.L66:
	movl (%eax),%eax
	movl -56(%ebp),%ebx
	movl (%eax,%ebx,4),%eax
	movl %eax,-12(%ebp)
.L94:
	decl %ebx
	movl %ebx,-56(%ebp)
	cmpl %esi,-56(%ebp)
	jl .L69
	jmp .L70
	.align 16
.L71:
	incl %esi
.L70:
	movl 20(%ebp),%edi
	movl 8(%ebp),%eax
	movl %edi,-52(%ebp)
	cmpl %esi,4(%eax)
	ja .L72
	pushl $866
	call _m3_fault
	.align 16
.L72:
	cmpl $0,20(%ebp)
	je .L73
	movl 20(%ebp),%ebx
	cmpl $-1,(%ebx)
	jne .L73
	movl 8(%ebx),%edi
	movl %edi,-44(%ebp)
	movl 4(%ebx),%ebx
	movl %ebx,-52(%ebp)
.L73:
	movl -16(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movl (%eax,%esi,4),%eax
	pushl %eax
	movl -52(%ebp),%ebx
	movl -44(%ebp),%ecx
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jl .L71
	cmpl %esi,-56(%ebp)
	jl .L69
	movl -56(%ebp),%eax
	movl 8(%ebp),%edx
	incl %eax
	movl 4(%edx),%ecx
	cmpl %ecx,%eax
	jb .L77
	pushl $898
	call _m3_fault
	.align 16
.L77:
	cmpl %ecx,%esi
	jb .L78
	pushl $898
	call _m3_fault
	.align 16
.L78:
	movl (%edx),%edx
	movl -56(%ebp),%edi
	movl (%edx,%esi,4),%eax
	movl %eax,4(%edx,%edi,4)
	incl %esi
	jmp .L79
	.align 16
.L80:
	decl -56(%ebp)
.L79:
	movl 20(%ebp),%ebx
	movl %ebx,-52(%ebp)
	movl 8(%ebp),%eax
	movl -56(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L81
	pushl $946
	call _m3_fault
	.align 16
.L81:
	cmpl $0,20(%ebp)
	je .L82
	movl 20(%ebp),%ebx
	cmpl $-1,(%ebx)
	jne .L82
	movl 8(%ebx),%edi
	movl %edi,-48(%ebp)
	movl 4(%ebx),%ebx
	movl %ebx,-52(%ebp)
.L82:
	movl -16(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%eax
	movl -56(%ebp),%ebx
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	movl -52(%ebp),%edi
	movl -48(%ebp),%ecx
	call *%edi
	addl $8,%esp
	testl %eax,%eax
	jg .L80
	cmpl %ebx,%esi
	jle .L85
	leal -1(%esi),%eax
	cmpl %ebx,%eax
	jne .L69
	addl $-2,%esi
	movl %esi,-56(%ebp)
	jmp .L69
	.align 16
.L85:
	movl 8(%ebp),%edx
	leal -1(%esi),%eax
	movl 4(%edx),%ecx
	cmpl %ecx,%eax
	jb .L87
	pushl $978
	call _m3_fault
	.align 16
.L87:
	cmpl %ecx,-56(%ebp)
	jb .L88
	pushl $978
	call _m3_fault
	.align 16
.L88:
	movl (%edx),%edx
	movl -56(%ebp),%ebx
	movl (%edx,%ebx,4),%eax
	movl %eax,-4(%edx,%esi,4)
	jmp .L94
	.align 16
.L69:
	movl -56(%ebp),%edi
	incl %edi
	movl 8(%ebp),%ecx
	movl %edi,-52(%ebp)
	cmpl %edi,4(%ecx)
	ja .L89
	pushl $1058
	call _m3_fault
	.align 16
.L89:
	movl (%ecx),%eax
	movl -56(%ebp),%ebx
	movl -12(%ebp),%edi
	movl %edi,4(%eax,%ebx,4)
	movl -56(%ebp),%esi
	addl $2,%esi
	movl %esi,%edx
	subl 12(%ebp),%edx
	movl 16(%ebp),%eax
	subl %esi,%eax
	cmpl %eax,%edx
	jge .L90
	movl 20(%ebp),%ebx
	pushl %ebx
	movl -52(%ebp),%edi
	pushl %edi
	movl 12(%ebp),%ebx
	pushl %ebx
	pushl %ecx
	call IntArraySort__QuickSort
	movl %esi,12(%ebp)
	jmp .L95
	.align 16
.L90:
	movl 20(%ebp),%edi
	pushl %edi
	movl 16(%ebp),%ebx
	pushl %ebx
	pushl %esi
	pushl %ecx
	call IntArraySort__QuickSort
	movl -52(%ebp),%edi
	movl %edi,16(%ebp)
.L95:
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
	.size	 IntArraySort__QuickSort,.Lfe2-IntArraySort__QuickSort
	.align 16
	.type	 IntArraySort__InsertionSort,@function
IntArraySort__InsertionSort:
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
	jmp .L97
	.align 16
.L98:
	movl 8(%ebp),%eax
	cmpl %esi,4(%eax)
	ja .L99
	pushl $1346
	call _m3_fault
	.align 16
.L99:
	movl (%eax),%eax
	leal -1(%esi),%ebx
	movl (%eax,%esi,4),%eax
	movl %eax,-12(%ebp)
	jmp .L100
	.align 16
.L101:
	movl 8(%ebp),%edx
	leal 1(%ebx),%eax
	movl 4(%edx),%ecx
	cmpl %ecx,%eax
	jb .L102
	pushl $1394
	call _m3_fault
	.align 16
.L102:
	cmpl %ecx,%ebx
	jb .L103
	pushl $1394
	call _m3_fault
	.align 16
.L103:
	movl (%edx),%edx
	movl (%edx,%ebx,4),%eax
	movl %eax,4(%edx,%ebx,4)
	decl %ebx
.L100:
	cmpl %ebx,12(%ebp)
	jg .L108
	movl 8(%ebp),%eax
	movl 20(%ebp),%edx
	cmpl %ebx,4(%eax)
	ja .L105
	pushl $1378
	call _m3_fault
	.align 16
.L105:
	testl %edx,%edx
	je .L106
	cmpl $-1,(%edx)
	jne .L106
	movl 8(%edx),%edi
	movl %edi,-8(%ebp)
	movl 4(%edx),%edx
.L106:
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
	jl .L101
.L108:
	movl 8(%ebp),%edx
	leal 1(%ebx),%eax
	cmpl %eax,4(%edx)
	ja .L109
	pushl $1442
	call _m3_fault
	.align 16
.L109:
	movl (%edx),%eax
	movl -12(%ebp),%edi
	incl %esi
	movl %edi,4(%eax,%ebx,4)
.L97:
	cmpl %esi,-4(%ebp)
	jge .L98
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 IntArraySort__InsertionSort,.Lfe3-IntArraySort__InsertionSort
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_IntArraySort
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_IntArraySort
.data
	.align 4
	.type	 MM_IntArraySort,@object
	.size	 MM_IntArraySort,292
MM_IntArraySort:
	.long MM_IntArraySort+128
	.zero	16
	.long MM_IntArraySort+88
	.zero	20
	.long IntArraySort__QuickSort
	.long IntArraySort__InsertionSort
	.long IntArraySort__Sort
	.ascii	"InsertionSort"
	.zero	1
	.ascii	"QuickSort"
	.zero	1
	.ascii	"Sort"
	.zero	4
	.long IntArraySort__InsertionSort
	.long MM_IntArraySort+56
	.zero	4
	.long IntArraySort__QuickSort
	.long MM_IntArraySort+70
	.zero	4
	.long IntArraySort__Sort
	.long MM_IntArraySort+80
	.long MI_IntArraySort+44
	.zero	4
	.ascii	"IntArraySort.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language"
	.ascii	"/modula3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/bo"
	.ascii	"ot-LINUXLIBC6/libm3/src/sort/ArraySort.mg"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
