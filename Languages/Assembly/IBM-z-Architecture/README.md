# IBM z/Architecture Assembly

## Overview
z/Architecture is IBM's 64-bit extension of the System/360/370 lineage, introduced in 2000. It powers IBM Z mainframes, the continuation of the most enduring computer architecture in history.

## Philosophy
z/Architecture's philosophy is "the architecture that outlives companies." IBM has maintained binary compatibility with System/360 software for over 60 years. The z/Architecture extends this commitment to 64-bit while preserving every prior capability. It assumes that enterprises run critical software written decades ago, and that replacing it is impossible.

The architecture treats reliability, availability, and serviceability (RAS) as architectural features, not implementation details. Hardware error detection, recovery, and hot-swapping are built into the design.

## Why It Came To Be
By the late 1990s, 31-bit addressing (2GB limit) was constraining mainframe workloads. IBM needed 64-bit to remain competitive with Unix servers while preserving the unmatched reliability and compatibility of the mainframe platform. z/Architecture provided that bridge, and IBM Z systems continue to process the majority of the world's financial transactions.

## Key Characteristics
- Full backward compatibility with ESA/390, System/370, and System/360
- 64-bit general-purpose registers (16)
- 64-bit addressing
- 128-bit floating-point (later)
- z/Architecture unique instructions (CLCL, MVCLE, etc.)
- Hardware transactional memory
- Vector facility for SIMD
- Guarded storage facility
- Extensive virtualization support (z/VM)
- Cryptographic coprocessor instructions
- Redundant hardware for fault tolerance
