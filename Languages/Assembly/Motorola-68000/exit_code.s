    .text
    .global _start

_start:
    move.w  #42, %d0
    trap    #1
