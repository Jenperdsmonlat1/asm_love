your_name: your_name.o
	ld -m elf_i386 -o your_name your_name.o

your_name.o: your_name.asm
	nasm -f elf -o your_name.o your_name.asm

clean:
	rm -rv your_name.o