    list    p=16F84A
    #include <p16F84A.inc>

    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

    cblock  0x0C
        index
        temp
    endc

    org     0x000
    goto    main

main:
    movlw   0x00
    movwf   index

loop:
    movf    index, W
    call    getchar
    movwf   temp
    movf    temp, F
    btfsc   STATUS, Z
    goto    done
    call    putchar
    incf    index, F
    goto    loop

done:
    sleep

getchar:
    addwf   PCL, F
    retlw   'H'
    retlw   'e'
    retlw   'l'
    retlw   'l'
    retlw   'o'
    retlw   ','
    retlw   ' '
    retlw   'W'
    retlw   'o'
    retlw   'r'
    retlw   'l'
    retlw   'd'
    retlw   '!'
    retlw   0x00

putchar:
    banksel TXREG
    movwf   TXREG
    banksel TXSTA
    btfss   TXSTA, TRMT
    goto    $-1
    return

    end
