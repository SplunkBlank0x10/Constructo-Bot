        .TITLE  NEWLINE

        .PSECT  DATA, NOEXE
NL:     .ASCII  "\n"
NLLEN = . - NL

        .PSECT  CODE, EXE

        .ENTRY  MAIN, ^M<>
        PUSHAQ  NL
        PUSHL   #NLLEN
        CALLS   #2, G^LIB$PUT_OUTPUT
        RET

        .END    MAIN
