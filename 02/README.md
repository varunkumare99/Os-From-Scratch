## Compile
nasm -f bin boot_sector_hello_Varun.asm -o boot_sector_hello_Varun.bin

## Run
qemu-system-x86_64 boot_sector_hello_Varun.bin

## Output
![Output on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/02/output.png)
