%define LENGTH 15

SECTION .data
msg db "Hello world", 0Ah

SECTION .text
global _start

_start:

    mov edx, LENGTH
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ebx, 0
    mov eax, 1
    int 0x80