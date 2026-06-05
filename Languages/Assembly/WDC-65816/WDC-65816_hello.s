        .p816
        .org $008000

CHROUT  = $FFD2

start:
        clc
        xce
        ldx #0
loop:
        lda msg,x
        beq done
        jsr CHROUT
        inx
        bne loop
done:
        stp

msg:    .byte "Hello, World!", $0D, $00
