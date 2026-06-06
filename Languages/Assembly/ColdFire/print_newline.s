    .data
nl:
    .byte 0xA

    .text
    .global _start

_start:
    move.b  nl, %d0
    move.l  #0x10000, %a1
    move.b  %d0, (%a1)
    halt
