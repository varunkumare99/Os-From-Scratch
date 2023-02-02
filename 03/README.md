## Compile
- nasm -f bin boot_sector_memory.asm -o boot_sector_memory.bin
- nasm -f bin boot_sector_memory_org.asm -o boot_sector_memory_org.bin

## Run
- qemu-system-x86_64 boot_sector_memory.bin
- qemu-system-x86_64 boot_sector_memory_org.bin

## Output
![Output on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/03/output.png)
![Output with org on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/03/output_org.png)
