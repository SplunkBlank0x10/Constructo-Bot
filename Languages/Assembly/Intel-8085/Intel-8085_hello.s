        ORG     0100H

START:
        LXI     H, MSG
LOOP:
        MOV     A, M
        CPI     00H
        JZ      DONE
        MOV     E, A
        MVI     C, 02H
        CALL    0005H
        INX     H
        JMP     LOOP
DONE:   HLT

MSG:    DB      "Hello, World!", 0DH, 0AH, 00H

        END     START
