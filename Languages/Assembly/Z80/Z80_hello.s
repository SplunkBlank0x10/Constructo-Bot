        ORG     0x0100

START:
        LD      HL, MSG
LOOP:
        LD      A, (HL)
        CP      0x00
        JR      Z, DONE
        CALL    0x0005
        INC     HL
        JR      LOOP
DONE:
        HALT

MSG:    DEFM    "Hello, World!\r\n"
        DEFB    0x00
