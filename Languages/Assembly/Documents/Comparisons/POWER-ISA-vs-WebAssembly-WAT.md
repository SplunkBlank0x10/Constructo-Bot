# POWER-ISA vs WebAssembly-WAT

## Overview

This document compares **POWER-ISA** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 1990 | 2017 |
| **Creator** | IBM | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Big (default), supports little | Little (linear memory) |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** POWER-ISA offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

POWER-ISA and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 27 years, these architectures reflect the evolution from IBM's 1990 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. POWER-ISA carries the constraints and wisdom of its era, while POWER-ISA addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
