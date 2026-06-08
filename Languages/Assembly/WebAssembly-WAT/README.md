# WebAssembly Text Format (WAT) Assembly

## Overview
WebAssembly (Wasm) is a binary instruction format for a stack-based virtual machine, designed as a portable compilation target for programming languages. WAT (WebAssembly Text Format) is the human-readable text representation of Wasm, using S-expressions.

## Philosophy
WebAssembly's philosophy is "near-native performance in a sandbox." It aims to bring languages like C, C++, and Rust to the web browser with performance close to native code, while maintaining security through strict sandboxing. Unlike JavaScript, which is dynamically typed and garbage-collected, Wasm is statically typed and memory-managed by the host.

The architecture assumes that the web is a platform for serious software, not just documents and scripts. It treats the browser as a secure execution environment where multiple languages can coexist.

## Why It Came To Be
JavaScript, despite its success, was never designed as a compilation target for systems languages. Emscripten demonstrated that C++ could run in browsers by compiling to a subset of JavaScript (asm.js), but the approach was inefficient. Browser vendors (Mozilla, Google, Microsoft, Apple) collaborated to create WebAssembly as a proper binary format. It launched in 2017 and has since expanded beyond browsers to servers (WASI), edge computing, and blockchain.

## Key Characteristics
- Stack machine (not register machine)
- Linear memory (single contiguous array of bytes)
- No direct hardware access
- No undefined behavior at module boundary
- Strongly typed with four value types (i32, i64, f32, f64)
- Control flow: blocks, loops, if/else, branches
- Functions with explicit type signatures
- Tables for indirect function calls
- Memory and table imports/exports
- Host environment provides imports (I/O, etc.)
- WASI (WebAssembly System Interface) for outside-browser use
- Text format (WAT) uses S-expressions
- Binary format (Wasm) is the deployment target
