HELLO    CSECT
HELLO    AMODE 64
HELLO    RMODE ANY
         STMG  14,12,12(13)
         LGR   12,15
         USING HELLO,12
         WTO   'Hello, World!'
         LMGR  14,12,12(13)
         SR    15,15
         BR    14
         END   HELLO
