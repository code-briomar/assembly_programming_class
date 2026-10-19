 section .data
    newline db 10

section .bss
    digit resb 1

section .text
    global _start

_start:
    mov r12, 1               

    jmp check_condition        

loop_body:
    ; Convert counter to ASCII
    mov rax, r12 ; pass to rax
    add al, '0' ; pass to al, very small, 1 fits into byte
    mov [digit], al ;pass it to reserved space we labelled digit

    ; Print number
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall

    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    inc r12                  

check_condition:
    cmp r12, 6
    jl loop_body               

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall