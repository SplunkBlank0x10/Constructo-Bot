    .data
nl:
    .byte 0xA

    .text
    .global _start

_start:
    li.d    $a7, 64
    li.d    $a0, 1
    la.local $a1, nl
    li.d    $a2, 1
    syscall 0

    li.d    $a7, 93
    li.d    $a0, 0
    syscall 0
