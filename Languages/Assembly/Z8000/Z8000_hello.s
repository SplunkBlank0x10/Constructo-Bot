        .text
        .global _start

_start:
        ld      r1, #msg
loop:
        ldb     rh0, @r1
        testb   rh0
        jr      z, done
        sc      #9
        inc     r1
        jr      loop
done:
        sc      #10

        .data
msg:    .asciz  "Hello, World!\n"
