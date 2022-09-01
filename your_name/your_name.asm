SECTION .data
ask db "Saisissez votre prenom: ", 0Ah, 0h
greeting db "Salut: ", 0Ah, 0h

SECTION .bss
name: RESB 255

SECTION .text
global _start

_start:
    mov eax, ask
    call printf

    mov ebx, name
    call scanf

    mov eax, greeting
    call printf

    mov eax, name
    call printf

    call exit

strlen:
    push ebx
    mov ebx, eax

nxchar:
    cmp byte [eax], 0
    jz length
    inc eax
    jmp nxchar

length:
    sub eax, ebx
    pop ebx
    ret

scanf:
    push edx
    push ecx
    push ebx
    push eax

    mov edx, 255
    mov ecx, ebx
    pop ebx

    mov ebx, 0
    mov eax, 3
    int 0x80

    pop edx
    pop ecx
    pop eax
    ret

printf:
    push edx
    push ecx
    push ebx
    push eax
    call strlen

    mov edx, eax
    pop eax

    mov ecx, eax
    mov ebx, 1
    mov eax, 4
    int 0x80

    pop edx
    pop ecx
    pop ebx
    ret

exit:
    xor ebx, ebx
    mov eax, 1
    int 0x80
    ret
