# IBM-System-360-370 vs MIPS

## Overview

This document compares **IBM-System-360-370** and **MIPS**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | MIPS |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 1981 |
| **Creator** | IBM | Stanford University (MIPS Computer Systems) |
| **Endianness** | Big (EBCDIC) | Bi-endian |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while MIPS takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

---

## Summary

IBM-System-360-370 and MIPS represent different points in the spectrum of processor design. The CISC philosophy of IBM-System-360-370 and the RISC approach of MIPS represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
