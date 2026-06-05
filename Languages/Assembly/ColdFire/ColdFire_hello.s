    .data
msg:
    .asciz "Hello, World!\n"

    .text
    .global _start

_start:
    lea     msg, %a0
print:
    move.b  (%a0)+, %d0
    tst.b   %d0
    beq     done
    move.l  #0x10000, %a1
    move.b  %d0, (%a1)
    bra     print
done:
    halt
