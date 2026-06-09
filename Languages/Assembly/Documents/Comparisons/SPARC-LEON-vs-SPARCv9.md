# SPARC-LEON vs SPARCv9

## Overview

This document compares **SPARC-LEON** and **SPARCv9**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC-LEON | SPARCv9 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | RISC (radiation-hardened) | RISC |
| **Year** | 1997 | 1993 |
| **Creator** | Aeroflex Gaisler (now Cobham) | Sun Microsystems / SPARC International |
| **Endianness** | Big | Big (default), little supported |

---

## Design Philosophy

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

### SPARCv9
> *Extend the windows - preserve SPARC mechanism, adapt to 64-bit servers*

**Key Difference:** SPARC-LEON approaches computing with a risc philosophy, while SPARCv9 takes a risc approach. 

---

## Register Architecture

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

### SPARCv9
64-bit, more windows available, same window mechanism

**Comparison:** SPARC-LEON offers many registers (many-style architecture), while SPARCv9 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

### SPARCv9
VIS SIMD, little-endian option, prefetch, conditional moves, 64-bit addressing

---

## Historical Lineage

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

### SPARCv9
SPARC V8 → SPARCv9 → UltraSPARC → Rock (cancelled) → SPARC64 (Fujitsu)

---

## Primary Use Cases

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

### SPARCv9
Sun servers, Fujitsu supercomputers (K computer), enterprise

---

## Strengths & Weaknesses

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

### SPARCv9
- **Strengths:** 64-bit SPARC, VIS performance, proven in enterprise, Fujitsu continuation
- **Weaknesses:** Sun's demise, niche market now, x86-64 dominance in servers

---

## When to Choose Which

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

**Choose SPARCv9 when:** your application fits its domain (Sun servers) and you value its specific strengths

---

## Summary

SPARC-LEON and SPARCv9 represent different points in the spectrum of processor design. The 32-bit SPARC-LEON and 64-bit SPARCv9 serve different scale requirements. SPARC-LEON excels in constrained environments where every transistor counts, while SPARCv9 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
