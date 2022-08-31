# ASM Love
## Description
Dans ce repo, vous trouverez une série de programme que j'ai écrit en assembleur x86. Vous trouverez.
- Hello World: Un simple programme affichant un message dans la console
- Your name: Un simple programme demandant à l'utilisateur de saisir son prénom avant de l'afficher dans la console
- Create file: Un simple programme demandant à l'utilisateur de saisir le nom d'un fichier avant de le créer.
- Write content file: Un simple programme écrivant une chaîne de caractère dans un fichier.

# Compiler un programme en assembleur
Tous les programmes seront compilé de la façon suivante:
- Tous d'abord, nous compilons notre programme au format elf avec nasm de la façon suivante
```shell
nasm -f elf <your_program.asm> -o <your_file.o>
```

- Ensuite, nous linkons notre programme via ld de la façon suivante
```shell
ld -m elf_i386 <your_file.o> -o <your_program_linked>
```
