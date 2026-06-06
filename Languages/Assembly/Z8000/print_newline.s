        .text
        .global _start

_start:
        ld      rh0, #0x0A
        sc      #9
        sc      #10
