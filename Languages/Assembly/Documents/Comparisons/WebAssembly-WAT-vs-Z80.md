# WebAssembly-WAT vs Z80

## Overview

This document compares **WebAssembly-WAT** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | WebAssembly-WAT | Z80 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | Stack-based Virtual ISA | CISC |
| **Year** | 2017 | 1976 |
| **Creator** | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) | Zilog (Federico Faggin) |
| **Endianness** | Little (linear memory) | Little |

---

## Design Philosophy

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** WebAssembly-WAT approaches computing with a stack-based virtual isa philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

WebAssembly-WAT and Z80 represent different points in the spectrum of processor design. Separated by 41 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
