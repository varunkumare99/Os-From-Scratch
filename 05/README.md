## Compile
nasm -f bin boot_sector_main.asm -o boot_sector_main.bin

## Run
qemu-system-x86_64 boot_sector_main.bin

## Output
Prints text and hex digits
![Output on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/05/output.png)
