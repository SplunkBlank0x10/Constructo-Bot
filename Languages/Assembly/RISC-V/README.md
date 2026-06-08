# RISC-V Assembly

## Overview
RISC-V is an open-standard instruction set architecture developed at UC Berkeley starting in 2010. It is freely available for anyone to implement without licensing fees, designed to be simple, modular, and extensible.

## Philosophy
RISC-V's philosophy is "openness as a first principle." The creators believed that processor architectures had become unnecessarily complex due to commercial pressures and historical baggage. By starting fresh with decades of hindsight, they aimed to create an ISA that is clean enough for education, powerful enough for supercomputers, and free enough for everyone.

The architecture assumes that no single ISA can be perfect for all applications, so it provides a minimal base and standardized extensions. It treats the ISA as an interface standard, like USB or Ethernet, not as proprietary technology.

## Why It Came To Be
Berkeley researchers needed a teaching ISA free from legal and commercial entanglements. Existing options (x86, ARM, MIPS) were either proprietary, encumbered by patents, or carried historical baggage. The open-source hardware movement needed a processor equivalent to Linux. RISC-V filled this gap and has since been adopted by companies ranging from startups to tech giants.

## Key Characteristics
- Modular design: base ISA + optional standard extensions
- 32 integer registers (x0 hardwired to zero)
- No condition codes or status register
- Separate integer and floating-point register files
- Compressed instruction extension (C) for 16-bit encoding
- Hypervisor extension (H) for virtualization
- Vector extension (V) for SIMD operations
