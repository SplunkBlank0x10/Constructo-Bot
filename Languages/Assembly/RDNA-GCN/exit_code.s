// AMD RDNA/GCN Exit Code
// Stores exit code 42 into a output buffer for the host to read.

shader exit_code
  asic(GFX10)
  type(CS)

  s_load_dwordx2    s[0:1], s[0:1], 0x0
  s_waitcnt         lgkmcnt(0)

  v_mov_b32         v0, 42
  buffer_store_dword v0, v0, s[0:3], 0 offen offset:0

  s_endpgm
end
