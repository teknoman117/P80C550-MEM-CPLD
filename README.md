# Self Programming Module (Enhanced) (HDL for CPLD)

This is concept work for a more advanced self programming module that functions as a simple MMU for the 8051. Allows defining base addresses for both code and ram address spaces (a configurable amount of xdata space) in a larger global address space. Passes the lower 12 address bits to the memory device, but adds the upper 4 to a base register to produce a 8 bit upper address to drive a total of 1 MiB of combined code and memory space. Allows executing from both RAM and ROM. Replaces the ROM and RAM sockets completely on the base board (nothing should be installed in them).

The minimal bootloader would initially copy itself (4 to 8 KiB) into RAM and execute from there. This would allow it to write the ROM and even overwrite itself.