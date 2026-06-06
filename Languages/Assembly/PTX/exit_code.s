.version 7.0
.target sm_80
.address_size 64

.visible .entry exit_code()
{
    .reg .u32 %r0;

    mov.u32     %r0, 42;

    // Exit code stored in register; GPU kernels return via host
    ret;
}
