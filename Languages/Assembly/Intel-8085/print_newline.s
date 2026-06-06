        ORG     0100H

START:
        MVI     E, 0AH
        MVI     C, 02H
        CALL    0005H
        HLT

        END     START
