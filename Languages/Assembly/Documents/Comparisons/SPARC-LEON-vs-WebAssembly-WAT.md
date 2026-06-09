# SPARC-LEON vs WebAssembly-WAT

## Overview

This document compares **SPARC-LEON** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC-LEON | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC (radiation-hardened) | Stack-based Virtual ISA |
| **Year** | 1997 | 2017 |
| **Creator** | Aeroflex Gaisler (now Cobham) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Big | Little (linear memory) |

---

## Design Philosophy

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** SPARC-LEON approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** SPARC-LEON offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

SPARC-LEON and WebAssembly-WAT represent different points in the spectrum of processor design. The 32-bit SPARC-LEON and 32/64-bit WebAssembly-WAT serve different scale requirements. SPARC-LEON excels in constrained environments where every transistor counts, while WebAssembly-WAT provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
