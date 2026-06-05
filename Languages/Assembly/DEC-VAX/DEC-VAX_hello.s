        .TITLE  HELLO

        .PSECT  DATA, NOEXE

MSG:    .ASCII  "Hello, World!\n"
MSGLEN = . - MSG

        .PSECT  CODE, EXE

        .ENTRY  MAIN, ^M<>
        PUSHAQ  MSG
        PUSHL   #MSGLEN
        CALLS   #2, G^LIB$PUT_OUTPUT
        RET

        .END    MAIN
