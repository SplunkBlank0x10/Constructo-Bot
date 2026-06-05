.version 7.0
.target sm_80
.address_size 64

.visible .entry hello_world()
{
    .local .align 1 .b8 msg[14];

    // Store "Hello, World!\n" into local memory
    st.local.u8 [msg+0],  72;   // H
    st.local.u8 [msg+1],  101;  // e
    st.local.u8 [msg+2],  108;  // l
    st.local.u8 [msg+3],  108;  // l
    st.local.u8 [msg+4],  111;  // o
    st.local.u8 [msg+5],  44;   // ,
    st.local.u8 [msg+6],  32;   //
    st.local.u8 [msg+7],  87;   // W
    st.local.u8 [msg+8],  111;  // o
    st.local.u8 [msg+9],  114;  // r
    st.local.u8 [msg+10], 108;  // l
    st.local.u8 [msg+11], 100;  // d
    st.local.u8 [msg+12], 33;   // !
    st.local.u8 [msg+13], 10;   // \n

    ret;
}
