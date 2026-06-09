# PTX vs WebAssembly-WAT

## Overview

This document compares **PTX** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PTX | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64 |
| **Type** | GPU Virtual ISA (SIMT) | Stack-based Virtual ISA |
| **Year** | 2006 | 2017 |
| **Creator** | NVIDIA | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### PTX
> *Parallelism at massive scale - thousands of threads, latency hidden by switching*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** PTX approaches computing with a gpu virtual isa philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### PTX
Thousands of virtual registers (allocated to hardware physically)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PTX
Virtual ISA compiled to SASS, SIMT execution, thread hierarchy, no hardware stack

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### PTX
GPU assembly → PTX (with CUDA) → evolving with each GPU generation

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### PTX
GPU computing, CUDA, machine learning, graphics, scientific simulation

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### PTX
- **Strengths:** Portable across GPU generations, optimizable, massive parallelism, mature toolchain
- **Weaknesses:** NVIDIA-only, not hardware ISA, requires NVIDIA GPU, vendor lock-in

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose PTX when:** massive data parallelism is required (GPU computing)

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

PTX and WebAssembly-WAT represent different points in the spectrum of processor design. The GPU Virtual ISA philosophy of PTX and the Stack-based Virtual ISA approach of WebAssembly-WAT represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
