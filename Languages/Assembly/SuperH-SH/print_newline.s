    .data
nl:
    .byte 0xA

    .text
    .global _start

_start:
    mov.l   write_sys, r3
    mov     #1, r4
    mov.l   nl_addr, r5
    mov     #1, r6
    trapa   #0x10

    mov.l   exit_sys, r3
    mov     #0, r4
    trapa   #0x10

    .align 4
write_sys:
    .long   4
nl_addr:
    .long   nl
exit_sys:
    .long   1
