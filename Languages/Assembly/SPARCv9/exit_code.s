    .text
    .global _start

_start:
    mov     1, %g1
    mov     42, %o0
    ta      0x6d
