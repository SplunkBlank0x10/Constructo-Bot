        .TITLE  NEWLINE
        .MCALL  .TTYOUT, .EXIT

START:
        MOV     #012, R1
        .TTYOUT R1
        .EXIT

        .END    START
