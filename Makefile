all: program
program: program.o
	ld -m elf_i386 program.o -o program
program.o: program.asm
	nasm -f elf32 -g -F dwarf program.asm -o program.o
clean:
	rm -f program program.o
