section .data
	EXIT 			equ 	60
	EXIT_SUCCESS 	equ	 	0
	array 			dw 		12, 1003, 6543, 24680, 789, 30123, 32766
	even			dw		0, 0, 0, 0, 0, 0, 0
section .text
	global _start
_start:
	mov rsi, 0
	mov rdi, 0
_doWhile:
	mov ax, word[array + 2*rsi]
	mov cx, 2
	xor rdx, rdx
	div cx
	cmp dx, 0
	jne _notEven
_addToEvengi:
	mov ax, word[array + 2*rsi]
	mov word[even + 2*rdi], ax
	inc rdi
_notEven:
	inc rsi
	cmp rsi, 7
	jb _doWhile
_end:
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
	syscall
