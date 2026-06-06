    .arch   msp430
    .text
    .global _start

_start:
    mov.w   #42, r15
done:
    jmp     done
