.data
msg: .asciiz "Hello, World!\n"

.text
.global main

main:
    li $v0, 4
    dla $a0, msg
    syscall

    li $v0, 10
    syscall
