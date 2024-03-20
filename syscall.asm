global _start

section .data
	buf DB 'Hello World',0xa

section .text

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, buf
	mov rdx, 12
	syscall
	
	mov rax, 60
	mov rdi, 0x0
	syscall

