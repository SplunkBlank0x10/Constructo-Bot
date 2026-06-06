EXIT42   CSECT
EXIT42   AMODE 64
EXIT42   RMODE ANY
         STMG  14,12,12(13)
         LGR   12,15
         USING EXIT42,12
         LGHI  15,42
         LMGR  14,12,12(13)
         BR    14
         END   EXIT42
