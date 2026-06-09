# SPARC-LEON vs Z8000

## Overview

This document compares **SPARC-LEON** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC-LEON | Z8000 |
|-----------|----------|----------|
| **Bits** | 32 | 16 |
| **Type** | RISC (radiation-hardened) | CISC |
| **Year** | 1997 | 1979 |
| **Creator** | Aeroflex Gaisler (now Cobham) | Zilog |
| **Endianness** | Big | Big |

---

## Design Philosophy

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** SPARC-LEON approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

SPARC-LEON and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 32-bit SPARC-LEON serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while SPARC-LEON provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
