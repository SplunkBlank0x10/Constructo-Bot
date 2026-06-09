# WDC-65816 vs WebAssembly-WAT

## Overview

This document compares **WDC-65816** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | WDC-65816 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 16/8 | 32/64 |
| **Type** | CISC (16-bit 6502 evolution) | Stack-based Virtual ISA |
| **Year** | 1984 | 2017 |
| **Creator** | Western Design Center (Bill Mensch) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** WDC-65816 approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** WDC-65816 offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### WDC-65816
6502 → 65C02 → 65816

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

WDC-65816 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 33 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1984 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. WDC-65816 carries the constraints and wisdom of its era, while WDC-65816 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
