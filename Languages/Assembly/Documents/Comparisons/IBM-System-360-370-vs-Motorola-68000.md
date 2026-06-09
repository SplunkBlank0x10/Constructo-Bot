# IBM-System-360-370 vs Motorola-68000

## Overview

This document compares **IBM-System-360-370** and **Motorola-68000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Motorola-68000 |
|-----------|----------|----------|
| **Bits** | 32 | 32/16 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 1979 |
| **Creator** | IBM | Motorola |
| **Endianness** | Big (EBCDIC) | Big |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Motorola-68000 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

---

## Summary

IBM-System-360-370 and Motorola-68000 represent different points in the spectrum of processor design. The 32-bit IBM-System-360-370 and 32/16-bit Motorola-68000 serve different scale requirements. IBM-System-360-370 excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
