.data
nl:
    .byte 0xA

.text
.global _start

_start:
    li a0, 1
    la a1, nl
    li a2, 1
    li a7, 64
    ecall

    li a0, 0
    li a7, 93
    ecall
