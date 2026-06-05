.data
msg:
    .string "Hello, World!\n"
len = . - msg

.text
.global _start

_start:
    li a0, 1
    la a1, msg
    li a2, len
    li a7, 64
    ecall

    li a0, 0
    li a7, 93
    ecall
