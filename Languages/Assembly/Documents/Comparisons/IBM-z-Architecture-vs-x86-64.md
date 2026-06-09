# IBM-z-Architecture vs x86-64

## Overview

This document compares **IBM-z-Architecture** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | x86-64 |
|-----------|----------|----------|
| **Bits** | 64 | 64 |
| **Type** | CISC | CISC |
| **Year** | 2000 | 2003 |
| **Creator** | IBM | AMD (later adopted by Intel) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

IBM-z-Architecture and x86-64 represent different points in the spectrum of processor design. Both IBM-z-Architecture and x86-64 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
