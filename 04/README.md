## Compile
nasm -f bin boot_sector_stack.asm -o boot_sector_stack.bin

## Run
qemu-system-x86_64 boot_sector_stack.bin

## Output
![Output on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/04/output.png)
