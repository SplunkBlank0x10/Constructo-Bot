    .data
msg:
    .asciz "Hello, World!\n"
len = . - msg

    .text
    .global _start

_start:
    li.d    $a7, 64
    li.d    $a0, 1
    la.local $a1, msg
    li.d    $a2, len
    syscall 0

    li.d    $a7, 93
    li.d    $a0, 0
    syscall 0
