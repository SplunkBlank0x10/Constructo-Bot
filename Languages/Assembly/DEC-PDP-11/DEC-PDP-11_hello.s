        .TITLE  HELLO
        .MCALL  .TTYOUT, .EXIT

START:
        MOV     #MSG, R0
LOOP:
        MOVB    (R0)+, R1
        BEQ     DONE
        .TTYOUT R1
        BR      LOOP
DONE:
        .EXIT

MSG:    .ASCII  "Hello, World!\r\n"
        .BYTE   0

        .END    START
