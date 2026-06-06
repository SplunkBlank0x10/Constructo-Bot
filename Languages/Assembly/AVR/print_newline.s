.include "m328pdef.inc"

.def    temp = r16

.org    0x0000
    rjmp    main

main:
    ldi     temp, lo8(RAMEND)
    out     SPL, temp
    ldi     temp, hi8(RAMEND)
    out     SPH, temp
    ldi     temp, 0x0A
    rcall   uart_tx
done:
    rjmp    done

uart_tx:
    lds     r17, UCSR0A
    sbrs    r17, UDRE0
    rjmp    uart_tx
    sts     UDR0, temp
    ret
