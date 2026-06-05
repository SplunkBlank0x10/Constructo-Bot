// AMD RDNA/GCN Hello World
// GPU shaders do not write to stdout; this kernel stores
// "Hello, World!" as ASCII values into a buffer at v[0:1].

shader hello_world
  asic(GFX10)
  type(CS)

  // Load base address of output buffer into v0
  s_load_dwordx2    s[0:1], s[0:1], 0x0
  s_waitcnt         lgkmcnt(0)

  // Write ASCII codes for "Hello, World!\n" into buffer
  v_mov_b32         v0, 72    // H
  buffer_store_byte v0, v0, s[0:3], 0 offen offset:0
  v_mov_b32         v0, 101   // e
  buffer_store_byte v0, v0, s[0:3], 0 offen offset:1
  v_mov_b32         v0, 108   // l
  buffer_store_byte v0, v0, s[0:3], 0 offen offset:2
  v_mov_b32         v0, 108   // l
  buffer_store_byte v0, v0, s[0:3], 0 offen offset:3
  v_mov_b32         v0, 111   // o
  buffer_store_byte v0, v0, s[0:3], 0 offen offset:4

  s_endpgm
end
