        ORG     $0100
MSG     FCC     "Hello, World!"
        FCB     $0D, $0A, $04

START   LDX     #MSG
LOOP    LDAA    0,X
        CMPA    #$04
        BEQ     DONE
        JSR     $FFCA
        INX
        BRA     LOOP
DONE    SWI
        END     START
