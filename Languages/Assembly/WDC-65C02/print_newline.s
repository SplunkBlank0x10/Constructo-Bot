        .p02
        .org $0600

CHROUT  = $FFD2

start:
        lda #$0D
        jsr CHROUT
        stp
