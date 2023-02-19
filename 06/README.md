## Compile
nasm -f bin boot_sector_segmentation.asm -o boot_sector_segmentation.bin

## Run
qemu-system-x86_64 boot_sector_segmentation.bin

## Output
![Output on qemu](https://github.com/varunkumare99/Os-From-Scratch/blob/main/02/output.png)
