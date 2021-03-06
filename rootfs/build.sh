#!/bin/sh


SRC=`dirname "$(readlink -f "$0")"`

TARGET="$SRC/../target"

rm -rf $TARGET
mkdir $TARGET


# Debian based rootfs with busybox udpkg.
#wget -O "$TARGET/initrd.gz" http://ftp.se.debian.org/debian/dists/stable/main/installer-armhf/current/images/cdrom/initrd.gz
wget -O "$TARGET/initrd.gz" http://ftp.se.debian.org/debian/dists/stable/main/installer-armhf/current/images/netboot/initrd.gz





# Removing debian-installer, kernel modules and other extras

cd $TARGET
gzip -dc initrd.gz | cpio -id



# CLEAN UP:
# ***********************************************************
rm initrd.gz
rm -rf initrd


# Remove debian installer stuff
find -name '*installer*' -exec rm -rv '{}' \;
rm -rf ./usr/lib/finish-install.d
rm -f ./sbin/init


# Remove kernel modules
rm -rf lib/modules/*


# Remove installer user
echo -e "root:*:0:0:root:/:/bin/sh" > etc/passwd


# OVERLAY:
#***********************************************************

#mkdir -p $SRC/overlay/overlay/work $SRC/overlay/overlay/upper $SRC/overlay/overlay/merged $SRC/overlay/rom

cp -rf $SRC/overlay/* .
cd bin
ln -s busybox init
cd ..


