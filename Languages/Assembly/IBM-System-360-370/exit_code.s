EXIT42   CSECT
         STM   14,12,12(13)
         LR    12,15
         USING EXIT42,12
         LA    15,42
         LM    14,12,12(13)
         BR    14
         END   EXIT42
