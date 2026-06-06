    .data
nl:
    .byte 0xA

    .text
    .global _start

_start:
    mov     4, %g1
    mov     1, %o0
    set     nl, %o1
    mov     1, %o2
    ta      0x6d

    mov     1, %g1
    clr     %o0
    ta      0x6d
