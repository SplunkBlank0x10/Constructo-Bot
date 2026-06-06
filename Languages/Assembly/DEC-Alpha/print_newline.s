    .data
nl:
    .byte 0xA

    .text
    .global _start

_start:
    lda     $16, 1
    lda     $17, nl
    lda     $18, 1
    lda     $0,  4
    callsys

    lda     $16, 0
    lda     $0,  1
    callsys
