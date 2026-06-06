        ORG     $0100

START   LDAA    #$0A
        JSR     $FFCA
        SWI
        END     START
