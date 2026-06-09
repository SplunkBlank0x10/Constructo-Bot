# IBM-System-360-370 vs SuperH-SH

## Overview

This document compares **IBM-System-360-370** and **SuperH-SH**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | SuperH-SH |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | RISC (compressed) |
| **Year** | 1964 | 1992 |
| **Creator** | IBM | Hitachi (now Renesas) |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while SuperH-SH takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose SuperH-SH when:** power efficiency is paramount, especially for Sega Saturn/Dreamcast

---

## Summary

IBM-System-360-370 and SuperH-SH represent different points in the spectrum of processor design. Separated by 28 years, these architectures reflect the evolution from IBM's 1964 approach to Hitachi (now Renesas)'s 1992 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
