.thumb
.data
nl:
    .byte 0xA

.text
.global _start
.thumb_func

_start:
    mov r0, #1
    ldr r1, =nl
    mov r2, #1
    mov r7, #4
    swi 0

    mov r0, #0
    mov r7, #1
    swi 0
