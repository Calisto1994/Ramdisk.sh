#!/bin/bash

if [[ -z $1 ]]; then
	rDsize="2G";
else
	rDsize=$1;
fi

echo "RamDisk size will be" $rDsize

sudo -v # get admin privs
while true; do		# keep sudo privileges alive (for unmounting/removing the RAMdisk later)
	sleep 60
	sudo -n true
	kill -0 "$$" 2>/dev/null || exit
done &

sudo mkdir /mnt/ramdisk # create mountpoint
sudo chmod 777 /mnt/ramdisk # make sure every user may access it
sudo mount -t tmpfs -o size=$rDsize none /mnt/ramdisk # mount the ramdisk virtual device with as much storage as requested (2GByte if nothing else is specified)
echo ""; echo "";
df -h /mnt/ramdisk
echo ""; echo "";
read -n1 -p "Beenden?"
sudo umount /mnt/ramdisk # unmount the ramdisk
sudo rmdir /mnt/ramdisk # remove the mountpoint

## You're good to go. Enjoy.
