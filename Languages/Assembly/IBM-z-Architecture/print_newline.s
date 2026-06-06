NEWLINE  CSECT
NEWLINE  AMODE 64
NEWLINE  RMODE ANY
         STMG  14,12,12(13)
         LGR   12,15
         USING NEWLINE,12
         WTO   ' '
         LMGR  14,12,12(13)
         SR    15,15
         BR    14
         END   NEWLINE
