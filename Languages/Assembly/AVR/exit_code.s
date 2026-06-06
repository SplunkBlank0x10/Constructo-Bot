.include "m328pdef.inc"

.def    temp = r16

.org    0x0000
    rjmp    main

main:
    ldi     temp, 42
done:
    rjmp    done
