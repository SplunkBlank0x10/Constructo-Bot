# WDC-65C02 vs WebAssembly-WAT

## Overview

This document compares **WDC-65C02** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | WDC-65C02 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC (CMOS enhanced 6502) | Stack-based Virtual ISA |
| **Year** | 1978 | 2017 |
| **Creator** | Western Design Center (Bill Mensch) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** WDC-65C02 approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

WDC-65C02 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 39 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
