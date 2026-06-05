        ORG     0000H

START:
        MOV     DPTR, #MSG
        MOV     R0, #00H
LOOP:
        MOV     A, R0
        MOVC    A, @A+DPTR
        JZ      DONE
        MOV     SBUF, A
WAIT:   JNB     TI, WAIT
        CLR     TI
        INC     R0
        SJMP    LOOP
DONE:   SJMP    DONE

MSG:    DB      "Hello, World!", 0DH, 0AH, 00H

        END
