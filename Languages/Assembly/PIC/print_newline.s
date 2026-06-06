    list    p=16F84A
    #include <p16F84A.inc>

    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

    org     0x000
    goto    main

main:
    movlw   0x0A
    call    putchar
    sleep

putchar:
    banksel TXREG
    movwf   TXREG
    banksel TXSTA
    btfss   TXSTA, TRMT
    goto    $-1
    return

    end
