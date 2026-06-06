        .data
nl:
        .byte 0xA

        .text
        .global _start

_start:
        ldi     1, %r26
        ldil    L%nl, %r25
        ldo     R%nl(%r25), %r25
        ldi     1, %r24
        ldi     4, %r20
        ble     0x100(%sr2, %r0)
        copy    %r31, %r2

        ldi     0, %r26
        ldi     1, %r20
        ble     0x100(%sr2, %r0)
        copy    %r31, %r2
