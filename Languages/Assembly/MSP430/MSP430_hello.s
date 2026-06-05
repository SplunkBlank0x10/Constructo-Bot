    .arch   msp430
    .text
    .global _start

_start:
    mov.w   #msg, r4
loop:
    mov.b   @r4+, r5
    tst.b   r5
    jeq     done
    mov.b   r5, &0x0067
    jmp     loop
done:
    jmp     done

    .data
msg:
    .asciz  "Hello, World!\n"
