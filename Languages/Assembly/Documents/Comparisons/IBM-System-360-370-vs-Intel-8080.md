# IBM-System-360-370 vs Intel-8080

## Overview

This document compares **IBM-System-360-370** and **Intel-8080**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Intel-8080 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 1974 |
| **Creator** | IBM | Intel |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Intel-8080 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

---

## Summary

IBM-System-360-370 and Intel-8080 represent different points in the spectrum of processor design. The 8-bit Intel-8080 and 32-bit IBM-System-360-370 serve different scale requirements. Intel-8080 excels in constrained environments where every transistor counts, while IBM-System-360-370 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
