## Compile
nasm -f bin boot_sector.asm -o boot_sector.bin

## Run
qemu-system-x86_64 boot_sector.bin

## Output
![Output on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/01/output.png)
