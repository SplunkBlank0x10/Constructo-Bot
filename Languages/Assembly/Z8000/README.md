# Zilog Z8000 Assembly

## Overview
The Zilog Z8000 is a 16-bit microprocessor introduced in 1979 as Zilog's attempt to compete in the 16-bit market. It features a clean, orthogonal design with both segmented and non-segmented operating modes.

## Philosophy
The Z8000's philosophy is "16-bit done right." Zilog aimed to create a processor that was more regular and powerful than Intel's 8086 while learning from the Z80's success. The design emphasizes orthogonality: instructions work consistently across registers and addressing modes.

The architecture assumes that system designers want flexibility (segmented vs flat memory) without sacrificing the clean programming model that made the Z80 popular.

## Why It Came To Be
The 16-bit market was emerging, and Zilog needed a successor to the Z80 that could address more memory and handle more complex applications. The Z8000 offered a 16-bit data path, more registers, and better interrupt handling than the 8086. However, it arrived later than the 8086 and never achieved the same software ecosystem. It found niches in industrial control, military, and some Unix workstations.

## Key Characteristics
- 16 16-bit general-purpose registers (R0-R15)
- Registers can be paired for 32-bit operations
- Segmented mode (Z8001): 23-bit address, 7-bit segment + 16-bit offset
- Non-segmented mode (Z8002): 16-bit address, 64KB flat
- Two stack pointers (system and normal)
- Extensive addressing modes
- String manipulation instructions
