# TryllPTZ-Hi3516D

qemu-system-arm -M virt -cpu cortex-a15 -m 90M -smp 1 -nographic -kernel linux/linux-4.9.37/arch/arm/boot/zImage -initrd tcore.rootfs.xz -append "panic=5 root=/dev/ram"


