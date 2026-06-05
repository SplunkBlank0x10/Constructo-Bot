    .data
msg:
    .asciz "Hello, World!\n"
len = . - msg

    .text
    .global _start

_start:
    mov     4, %g1
    mov     1, %o0
    set     msg, %o1
    mov     len, %o2
    ta      0x6d

    mov     1, %g1
    clr     %o0
    ta      0x6d
