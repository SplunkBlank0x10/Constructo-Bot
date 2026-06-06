        .p816
        .org $008000

CHROUT  = $FFD2

start:
        clc
        xce
        lda #$0D
        jsr CHROUT
        stp
