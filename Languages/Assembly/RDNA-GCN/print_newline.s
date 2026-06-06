// AMD RDNA/GCN Print Newline
// Stores ASCII newline (0xA) into the first byte of the output buffer.

shader print_newline
  asic(GFX10)
  type(CS)

  s_load_dwordx2    s[0:1], s[0:1], 0x0
  s_waitcnt         lgkmcnt(0)

  v_mov_b32         v0, 10
  buffer_store_byte v0, v0, s[0:3], 0 offen offset:0

  s_endpgm
end
