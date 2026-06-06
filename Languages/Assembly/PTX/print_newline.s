.version 7.0
.target sm_80
.address_size 64

.visible .entry print_newline()
{
    .local .align 1 .b8 nl[1];

    st.local.u8 [nl], 10;   // 0xA = newline

    ret;
}
