        .p02
        .org $0600

CHROUT  = $FFD2

start:
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
