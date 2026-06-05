        .data
msg:
        .asciz "Hello, World!\n"
len     = . - msg

        .text
        .global _start

_start:
        mov     r8 = 4
        mov     r32 = 1
        movl    r33 = msg
        mov     r34 = len
        break.i 0x100000

        mov     r8 = 1
        mov     r32 = 0
        break.i 0x100000
