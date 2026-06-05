    .data
msg:
    .asciz "Hello, World!\n"
len = . - msg

    .text
    .global _start

_start:
    mov.l   write_syscall, r3
    mov     #1, r4
    mov.l   msg_addr, r5
    mov     #len, r6
    trapa   #0x10

    mov.l   exit_syscall, r3
    mov     #0, r4
    trapa   #0x10

    .align 4
write_syscall:
    .long   4
msg_addr:
    .long   msg
exit_syscall:
    .long   1
