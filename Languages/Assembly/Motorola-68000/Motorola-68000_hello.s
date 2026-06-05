    .data
msg:
    .asciz "Hello, World!\n"

    .text
    .global _start

_start:
    lea     msg, %a0
    move.b  (%a0)+, %d0
loop:
    tst.b   %d0
    beq     done
    move.w  #6, %d0
    trap    #14
    move.b  (%a0)+, %d0
    bra     loop
done:
    move.w  #0, %d0
    trap    #14
