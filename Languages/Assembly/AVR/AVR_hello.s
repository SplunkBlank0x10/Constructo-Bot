.include "m328pdef.inc"

.def    temp = r16

.org    0x0000
    rjmp    main

main:
    ldi     temp, lo8(RAMEND)
    out     SPL, temp
    ldi     temp, hi8(RAMEND)
    out     SPH, temp

    ldi     ZL, lo8(msg)
    ldi     ZH, hi8(msg)

loop:
    lpm     temp, Z+
    tst     temp
    breq    done
    rcall   uart_tx
    rjmp    loop

done:
    rjmp    done

uart_tx:
    lds     r17, UCSR0A
    sbrs    r17, UDRE0
    rjmp    uart_tx
    sts     UDR0, temp
    ret

msg:
    .ascii  "Hello, World!\r\n"
    .byte   0
