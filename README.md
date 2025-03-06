# Reverse String in Assembly (NASM)

## Description
This NASM Assembly program reads a string from the user and prints it in reverse order using Linux system calls.

## Requirements
- NASM assembler
- Linux OS (for system calls support)

## Compilation & Execution
```sh
nasm -f elf32 reverse.asm -o reverse.o
ld -m elf_i386 reverse.o -o reverse
./reverse
```

## Usage
1. Enter the string length when prompted.
2. Input the string.
3. The program prints the reversed string.

## Notes
- Maximum string length: **64** characters.
- Ensure correct length input to avoid errors.

This program demonstrates basic string manipulation in Assembly using Linux system calls.
