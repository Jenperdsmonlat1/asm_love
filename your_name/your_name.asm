SECTION .data
ask db "Saisissez votre prenom: ", 0Ah
greeting db "Salut: ", 0Ah

SECTION .bss
name: RESB 255

SECTION .text
global _start

_start:

    mov edx, 24
    mov ecx, ask
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 255
    mov ecx, name
    mov ebx, 0
    mov eax, 3
    int 0x80

    mov edx, 7
    mov ecx, greeting
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 255
    mov ecx, name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ebx, 0
    mov eax, 1
    int 0x80