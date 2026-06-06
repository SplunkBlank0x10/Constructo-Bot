        ORG     0000H

START:
        MOV     A, #0AH
        MOV     SBUF, A
WAIT:   JNB     TI, WAIT
        CLR     TI
        SJMP    $

        END
