    .data
nl:
    .byte 0xA
    .byte 0

    .text
    .global _start

_start:
    li      0, 4
    li      3, 1
    lis     4, nl@ha
    addi    4, 4, nl@l
    li      5, 1
    sc

    li      0, 1
    li      3, 0
    sc
