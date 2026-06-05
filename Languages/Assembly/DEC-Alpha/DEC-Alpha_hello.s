    .data
msg:
    .asciz "Hello, World!\n"
len = . - msg

    .text
    .global _start

_start:
    lda     $16, 1
    lda     $17, msg
    lda     $18, len
    lda     $0,  4
    callsys

    lda     $16, 0
    lda     $0,  1
    callsys
