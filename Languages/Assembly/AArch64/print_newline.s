.data
nl:
    .byte 0xA

.text
.global _start

_start:
    mov x0, #1
    adr x1, nl
    mov x2, #1
    mov x8, #64
    svc #0

    mov x0, #0
    mov x8, #93
    svc #0
