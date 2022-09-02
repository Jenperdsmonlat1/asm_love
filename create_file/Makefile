create_file: create_file.o
	ld -m elf_i386 -o create_file create_file.o

create_file.o: create_file.asm
	nasm -f elf -o create_file.o create_file.asm

clean:
	rm -rv create_file.o