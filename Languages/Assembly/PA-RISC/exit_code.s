        .text
        .global _start

_start:
        ldi     42, %r26
        ldi     1,  %r20
        ble     0x100(%sr2, %r0)
        copy    %r31, %r2
