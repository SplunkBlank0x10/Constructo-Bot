# Itanium (IA-64) Assembly

## Overview
Itanium is a 64-bit VLIW/EPIC architecture developed by Intel and Hewlett-Packard, introduced in 2001. It replaces out-of-order execution with compiler-scheduled instruction-level parallelism.

## Philosophy
Itanium's philosophy is "explicit parallelism." Traditional processors use complex hardware to find and execute independent instructions out of order. Itanium moves this responsibility to the compiler, which explicitly bundles instructions that can execute simultaneously. The hardware simply executes what the compiler arranged.

The architecture assumes that compilers are smart enough to schedule parallelism better than hardware can discover it dynamically. It treats the processor as an execution engine for compiler output, not as an independent optimizer.

## Why It Came To Be
Intel wanted a 64-bit architecture free from x86 legacy. HP needed a successor to PA-RISC. Together they created Itanium as a "clean sheet" design that would scale to massive parallelism. The "IA-64" name positioned it as the true 64-bit Intel Architecture, contrasting with AMD's x86-64 extension. However, Itanium's reliance on compiler technology proved premature, and x86-64's compatibility advantage won the market. Itanium was discontinued in 2021.

## Key Characteristics
- EPIC (Explicitly Parallel Instruction Computing)
- 128 general-purpose registers (64-bit) + 128 floating-point (82-bit extended)
- 64 predicate registers (1-bit each) for predication
- 8 branch registers
- Instruction bundles: 3 instructions + 5-bit template
- Predication replaces many branches
- Software pipelining with rotating registers
- No out-of-order execution hardware
- Speculative loads with check instructions
- Very Long Instruction Word (VLIW) heritage
- Big-endian and little-endian support
