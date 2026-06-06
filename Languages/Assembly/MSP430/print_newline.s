    .arch   msp430
    .text
    .global _start

_start:
    mov.b   #0x0A, &0x0067
done:
    jmp     done
