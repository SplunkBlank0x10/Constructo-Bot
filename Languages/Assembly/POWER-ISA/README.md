# POWER ISA Assembly

## Overview
POWER ISA is IBM's instruction set architecture for high-performance processors, evolving from the original POWER (Performance Optimization With Enhanced RISC) architecture of 1990. It is the foundation of IBM's POWER series servers and supercomputers.

## Philosophy
POWER's philosophy is "no compromise performance." Unlike PowerPC, which was simplified for broader adoption, POWER ISA retains every feature that might benefit high-end computing. It assumes that cost is secondary to throughput, reliability, and computational density.

The architecture treats the processor as an engine for enterprise workloads: databases, transaction processing, and scientific computing. It values features that matter at scale (hardware transactional memory, massive caches, high-bandwidth memory) over those that matter for mobile or consumer devices.

## Why It Came To Be
IBM's RS/6000 workstation line needed a processor that could compete with Sun's SPARC and DEC's Alpha. The original POWER architecture delivered exceptional floating-point performance. Over time, IBM refined it into POWER ISA, adding 64-bit support, simultaneous multithreading, and advanced virtualization. It became the platform for IBM's most demanding enterprise customers and, through the OpenPOWER Foundation, is now available to other manufacturers.

## Key Characteristics
- 64-bit architecture (32-bit support dropped in later versions)
- 32 general-purpose registers
- 32 floating-point registers
- Hardware transactional memory
- Advanced SIMD (VSX - Vector Scalar Extension)
- Decimal floating-point for financial computing
- Simultaneous multithreading (SMT8 - 8 threads per core)
- Memory encryption
- Advanced virtualization (partitioning, nested virtualization)
- CAPI/OpenCAPI for accelerator attachment
