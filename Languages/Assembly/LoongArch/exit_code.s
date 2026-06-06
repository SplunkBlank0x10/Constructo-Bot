    .text
    .global _start

_start:
    li.d    $a7, 93
    li.d    $a0, 42
    syscall 0
