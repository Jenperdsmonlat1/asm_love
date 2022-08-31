SECTION .data
ask_file_name db "Saisissez le nom de votre fichier(avec extension): ", 0Ah
ask_file_content db "Saisissez la chaine de caractere a ecrire dans le fichier: ", 0Ah
file_success db "Votre fichier a ete cree avec succes.", 0Ah
content_success db "Le contenu a ete ecrit avec succes dans votre fichier.", 0Ah

SECTION .bss
file_name: RESB 20
file_content: RESB 300

SECTION .text
global _start

_start:

    mov edx, 51
    mov ecx, ask_file_name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 20
    mov ecx, file_name
    mov ebx, 0
    mov eax, 3
    int 0x80

    mov edx, 59
    mov ecx, ask_file_content
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 300
    mov ecx, file_content
    mov ebx, 0
    mov eax, 3
    int 0x80

    mov ecx, 0777o
    mov ebx, file_name
    mov eax, 8
    int 0x80

    mov edx, 300
    mov ecx, file_content
    mov ebx, eax
    mov eax, 4
    int 0x80

    mov edx, 38
    mov ecx, file_success
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 55
    mov ecx, content_success
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ebx, file_name
    mov eax, 6
    int 0x80

    xor ebx, ebx
    mov eax, 1
    int 0x80