    list    p=16F84A
    #include <p16F84A.inc>

    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

    org     0x000

main:
    movlw   42
    sleep

    end
