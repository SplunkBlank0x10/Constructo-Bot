# RDNA-GCN vs WebAssembly-WAT

## Overview

This document compares **RDNA-GCN** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RDNA-GCN | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64 |
| **Type** | GPU Native ISA (SIMD/SIMT) | Stack-based Virtual ISA |
| **Year** | 2011 | 2017 |
| **Creator** | AMD | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** RDNA-GCN approaches computing with a gpu native isa philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

RDNA-GCN and WebAssembly-WAT represent different points in the spectrum of processor design. The GPU Native ISA philosophy of RDNA-GCN and the Stack-based Virtual ISA approach of WebAssembly-WAT represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
