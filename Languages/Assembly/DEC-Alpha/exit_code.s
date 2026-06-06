    .text
    .global _start

_start:
    lda     $16, 42
    lda     $0,  1
    callsys
