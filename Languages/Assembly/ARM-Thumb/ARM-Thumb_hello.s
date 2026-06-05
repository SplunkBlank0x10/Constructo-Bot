.thumb
.data
msg:
    .asciz "Hello, World!\n"
len = . - msg

.text
.global _start
.thumb_func

_start:
    mov r0, #1
    ldr r1, =msg
    ldr r2, =len
    mov r7, #4
    swi 0

    mov r0, #0
    mov r7, #1
    swi 0
