.data
nl: .asciiz "\n"

.text
.global main

main:
    li $v0, 4
    la $a0, nl
    syscall

    li $v0, 10
    syscall
