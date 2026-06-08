# PTX Assembly (Parallel Thread Execution)

## Overview
PTX is NVIDIA's intermediate instruction set architecture for GPU programming. It is a virtual ISA that compiles to actual GPU machine code (SASS) at runtime, allowing forward compatibility across GPU generations.

## Philosophy
PTX's philosophy is "parallelism at massive scale." Unlike CPU architectures that optimize for single-threaded performance, PTX assumes thousands of threads executing the same program on different data. The architecture treats the GPU as a throughput engine where latency is hidden by switching between threads, not by complex caching and speculation.

PTX is not executed directly by hardware; it is compiled to SASS (Shader Assembly) by the GPU driver. This abstraction allows NVIDIA to change hardware details while maintaining software compatibility.

## Why It Came To Be
NVIDIA needed a stable programming interface for GPUs that could evolve with hardware. Early GPU programming used graphics APIs (OpenGL, DirectX) or vendor-specific assembly. CUDA (2006) introduced a C-like language that compiles to PTX. PTX provides a target that is higher-level than hardware assembly but lower-level than CUDA C, enabling optimization tools and just-in-time compilation.

## Key Characteristics
- Virtual ISA (compiled to SASS at load time)
- SIMT (Single Instruction, Multiple Threads) execution model
- Thread hierarchy: threads → warps → blocks → grids
- No stack (or software-managed stack)
- Predicated execution for thread divergence handling
- Memory spaces: global, shared, local, constant, texture
- Synchronization via barriers (__syncthreads)
- No hardware exceptions in the traditional sense
- 32-bit and 64-bit versions
- Extensible for new GPU features
