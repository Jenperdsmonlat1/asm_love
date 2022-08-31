SECTION .data
ask_file_name db "Saisissez le nom de votre fichier(avec extension): ", 0Ah
success db "Votre fichier a ete cree avec succes.", 0Ah

SECTION .bss
file_name: RESB 255

SECTION .text
global _start

_start:

    mov edx, 51
    mov ecx, ask_file_name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 255
    mov ecx, file_name
    mov ebx, 0
    mov eax, 3
    int 0x80

    mov ecx, 0777o
    mov ebx, file_name
    mov eax, 8
    int 0x80

    mov edx, 38
    mov ecx, success
    mov ebx, 1
    mov eax, 4
    int 0x80

    xor ebx, ebx
    mov eax, 1
    int 0x80