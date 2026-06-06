    .text
    .global _start

_start:
    mov.l   exit_sys, r3
    mov     #42, r4
    trapa   #0x10

    .align 4
exit_sys:
    .long   1
