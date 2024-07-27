global _start

section .data
message db "421321231120#qq-", 10 ; #1102455 error nasm
msg_length equ $-message

section .text
_start:
mov rax, 0x1
mov rax, 1
mov rax, message
mov rax, msg_length
syscall

Exit:
    mov rax, 60
    mov rdi, 0
    syscall
    sysexit
