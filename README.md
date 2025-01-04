# Assembly Memory Access Bug

This repository demonstrates a subtle bug in assembly code that leads to a segmentation fault under specific, unusual conditions.

The bug is caused by an unbounded `ecx` register in a memory access calculation.

## Bug Description
The assembly instruction `mov eax, [ebx+ecx*4]` calculates a memory address based on `ebx` and `ecx`. If `ecx` is unexpectedly large, this calculation can produce an address outside the program's allocated memory space.  This results in a segmentation fault.

## How to Reproduce
The `bug.asm` file contains the buggy code.  Attempt to run it with a large, unexpected value for `ecx`. 

## Solution
The `bugSolution.asm` file provides a solution. It adds code to check the bounds of `ecx` before performing the memory access operation, preventing the segmentation fault.