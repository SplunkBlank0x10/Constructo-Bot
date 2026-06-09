# IBM-z-Architecture vs SPARC-LEON

## Overview

This document compares **IBM-z-Architecture** and **SPARC-LEON**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | SPARC-LEON |
|-----------|----------|----------|
| **Bits** | 64 | 32 |
| **Type** | CISC | RISC (radiation-hardened) |
| **Year** | 2000 | 1997 |
| **Creator** | IBM | Aeroflex Gaisler (now Cobham) |
| **Endianness** | Big | Big |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while SPARC-LEON takes a risc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

IBM-z-Architecture and SPARC-LEON represent different points in the spectrum of processor design. The 32-bit SPARC-LEON and 64-bit IBM-z-Architecture serve different scale requirements. SPARC-LEON excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
