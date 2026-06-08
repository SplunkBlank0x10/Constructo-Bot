# RDNA/GCN Assembly (AMD GPU)

## Overview
GCN (Graphics Core Next) and RDNA (Radeon DNA) are AMD's GPU instruction set architectures. GCN was introduced in 2011, with RDNA succeeding it in 2019. They represent AMD's native GPU machine code, as opposed to the higher-level intermediate representations.

## Philosophy
GCN/RDNA's philosophy is "wavefronts over warps." AMD GPUs execute threads in groups of 64 (wavefronts) rather than NVIDIA's 32 (warps). The architecture assumes that graphics and compute workloads have massive data parallelism and that hiding memory latency requires many threads in flight.

The design treats the GPU as a vector processor where each instruction operates on a vector of data elements simultaneously. Scalar operations run on separate scalar units.

## Why It Came To Be
AMD needed a unified architecture for graphics and general-purpose computing (GPGPU). Before GCN, AMD's VLIW-based designs were efficient for graphics but poor for compute workloads with divergent control flow. GCN replaced VLIW with a scalar/vector design that handled branch divergence better. RDNA refined this for gaming workloads while maintaining compute capability.

## Key Characteristics
- Wavefront: 64 threads (GCN), 32 threads (RDNA for some ops)
- Scalar and vector execution units
- Vector registers (VGPRs) and scalar registers (SGPRs)
- No hardware stack
- Branch divergence handled via execution masks
- Memory: global, local, private, constant, region
- Barriers for synchronization
- Flat memory addressing
- Image/texture sampling instructions
- Atomic operations on memory
- No traditional interrupts or exceptions
