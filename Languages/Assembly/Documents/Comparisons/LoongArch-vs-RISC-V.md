# LoongArch vs RISC-V

## Overview

This document compares **LoongArch** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | RISC-V |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 2020 | 2010 |
| **Creator** | Loongson Technology (China) | UC Berkeley |
| **Endianness** | Both | Little (default), bi-endian optional |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

LoongArch and RISC-V represent different points in the spectrum of processor design. The 32/64-bit LoongArch and 32/64/128-bit RISC-V serve different scale requirements. LoongArch excels in constrained environments where every transistor counts, while RISC-V provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
