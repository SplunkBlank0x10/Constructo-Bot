        .data
msg:
        .asciz "Hello, World!\n"
len     = . - msg

        .text
        .global _start

_start:
        ldi     1, %r26
        ldil    L%msg, %r25
        ldo     R%msg(%r25), %r25
        ldi     len, %r24
        ldi     4, %r20
        ble     0x100(%sr2, %r0)
        copy    %r31, %r2

        ldi     0, %r26
        ldi     1, %r20
        ble     0x100(%sr2, %r0)
        copy    %r31, %r2
