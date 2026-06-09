# SuperH-SH vs WDC-65816

## Overview

This document compares **SuperH-SH** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SuperH-SH | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32 | 16/8 |
| **Type** | RISC (compressed) | CISC (16-bit 6502 evolution) |
| **Year** | 1992 | 1984 |
| **Creator** | Hitachi (now Renesas) | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** SuperH-SH approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose SuperH-SH when:** your application fits its domain (Sega Saturn/Dreamcast) and you value its specific strengths

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

SuperH-SH and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32-bit SuperH-SH serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while SuperH-SH provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
