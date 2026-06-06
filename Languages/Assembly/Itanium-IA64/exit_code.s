        .text
        .global _start

_start:
        mov     r8  = 1
        mov     r32 = 42
        break.i 0x100000
