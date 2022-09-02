write_content: write_content.o
	ld -m elf_i386 -o write_content write_content.o

write_content.o: write_content_file.asm
	nasm -f elf -o write_content.o write_content_file.asm

clean:
	rm -rv write_content.o