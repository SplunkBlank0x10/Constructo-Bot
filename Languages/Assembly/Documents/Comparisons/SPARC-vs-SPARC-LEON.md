# SPARC vs SPARC-LEON

## Overview

This document compares **SPARC** and **SPARC-LEON**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC | SPARC-LEON |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | RISC | RISC (radiation-hardened) |
| **Year** | 1985 | 1997 |
| **Creator** | Sun Microsystems (David Patterson et al.) | Aeroflex Gaisler (now Cobham) |
| **Endianness** | Big | Big |

---

## Design Philosophy

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

**Key Difference:** SPARC approaches computing with a risc philosophy, while SPARC-LEON takes a risc approach. 

---

## Register Architecture

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

---

## Historical Lineage

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

---

## Primary Use Cases

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

---

## Strengths & Weaknesses

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

---

## When to Choose Which

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

SPARC and SPARC-LEON represent different points in the spectrum of processor design. Both SPARC and SPARC-LEON share the RISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
