    .text
    .global _start
    .align  4

_start:
    movi    a2, 0x0A
    wsr     a2, 234
    ill
