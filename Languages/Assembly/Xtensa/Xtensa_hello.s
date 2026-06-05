    .data
msg:
    .asciz "Hello, World!\n"

    .text
    .global _start
    .align  4

_start:
    movi    a2, msg
loop:
    l8ui    a3, a2, 0
    beqz    a3, done
    wsr     a3, 234
    addi    a2, a2, 1
    j       loop
done:
    ill
