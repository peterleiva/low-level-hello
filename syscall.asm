global _start

section .data
	buf DB 'Hello World',0xa

section .text

_start:
	mov eax, 0x4
	mov ebx, 1
	mov ecx, buf
	mov edx, 12
	int 0x80
	
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

