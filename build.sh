


rm -f tcore.rootfs.xz

rootfs/build.sh
packages/iotjs/build.sh
mksquashfs target tcore.rootfs.xz -b 64K -comp xz


