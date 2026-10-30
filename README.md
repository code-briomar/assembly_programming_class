# assembly_programming_f

# compilation

# assemble file

nasm -f elf32 01_immediate.asm

# link

ld -m elf_i386 01_immediate.o

# run

./a.out

nasm -f elf32 01_immediate.asm && ld -m elf_i386 01_immediate.o && ./a.out

#32bit

# 1. Compile with debug symbols explicitly turned on

nasm -f elf32 -g -F dwarf and.asm -o and.o

# 2. Link the executable

ld -m elf_i386 and.o -o and_debug

# 64 bit

nasm -f elf64 -g -F dwarf 01_loop_instruction.asm -o 01.o
ld 01.o -o 01_debug
./01_debug
