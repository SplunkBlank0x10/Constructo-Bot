# ARM-Thumb vs WDC-65816

## Overview

This document compares **ARM-Thumb** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 16/32 | 16/8 |
| **Type** | RISC (compressed) | CISC (16-bit 6502 evolution) |
| **Year** | 1994 | 1984 |
| **Creator** | ARM Ltd. | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose ARM-Thumb when:** backward compatibility with massive existing software bases is critical

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM-Thumb and WDC-65816 represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 16/8-bit WDC-65816 serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while WDC-65816 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
