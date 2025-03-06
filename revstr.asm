;25 Se citeste un sir de caractere. Sa se afiseze sirul de caractere in ordine inversa. 



section .data

    inputMsg db 'Introduceti sirul de caractere '

    lenInputMsg equ $ - inputMsg



    lenghtMsg db 'Introduceti numarul de caractere al sirului '

    lenLenghtMsg equ $ - lenghtMsg



    displayMsg db 'Sirul inversat este '

    lenDisplayMsg equ $ - displayMsg

    

section .bss

    string_len resb 1

    string resb 64

    index resb 1

    junk resb 1

section .text

    global _start



_start:

display_str_len:

    mov eax, 4

    mov ebx, 1

    mov ecx, lenghtMsg

    mov edx, lenLenghtMsg

    int 0x80



read_str_len:

    mov eax, 3

    mov ebx, 2

    mov ecx, string_len

    mov edx, 1

    int 0x80



    mov eax, 3

    mov ebx, 2

    mov ecx, junk

    mov edx, 1

    int 0x80



convert_char_to_number:

    mov ecx, [string_len]

    sub ecx, '0'

    mov [string_len], ecx



display_start_message:

    mov eax, 4

    mov ebx, 1

    mov ecx, inputMsg

    mov edx, lenInputMsg

    int 0x80



read_str:

    mov eax, 3

    mov ebx, 2

    mov ecx, string

    mov edx, [string_len]

    int 0x80



display_message:

    mov eax, 4

    mov ebx, 1

    mov ecx, displayMsg

    mov edx, lenDisplayMsg

    int 0x80



invert_string:

    movzx edx, byte [string_len]

    cmp edx, 0

    je done

    

    mov eax, 4

    mov ebx, 1

    mov ecx, string

    add ecx, edx

    sub ecx, 1

    mov edx, 1

    int 0x80



    dec byte [string_len]



    jmp invert_string



done:

    mov eax, 4

    mov ebx, 1

    mov ecx, junk

    mov edx, 1

    int 0x80



exit:

    mov eax, 1

    xor ebx, ebx

    int 0x80