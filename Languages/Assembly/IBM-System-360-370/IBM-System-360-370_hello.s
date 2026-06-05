HELLO    CSECT
         STM   14,12,12(13)
         LR    12,15
         USING HELLO,12
         LA    1,MSG
         LA    0,MSGLEN
         WTO   MF=(E,WTOMSG)
         LM    14,12,12(13)
         SR    15,15
         BR    14
WTOMSG   WTO   'Hello, World!',MF=L
MSG      DC    C'Hello, World!'
MSGLEN   EQU   *-MSG
         END   HELLO
