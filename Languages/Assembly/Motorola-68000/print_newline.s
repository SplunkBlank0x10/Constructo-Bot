    .data
nl:
    .byte 0x0A, 0x00

    .text
    .global _start

_start:
    lea     nl, %a0
    move.b  (%a0), %d0
    move.w  #6, %d0
    trap    #14
    move.w  #0, %d0
    trap    #14
