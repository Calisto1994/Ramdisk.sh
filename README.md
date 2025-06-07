# Ramdisk.sh
Ramdisk creation script - run VMs with incredible speed

Ever wanted to run your VirtualBox VMs faster? Having stored your, e.g. 20GByte VM on a traditional harddrive, so Windows 10 feels extremely slow? Well, on Linux, it's quite easy to fix that: With a RAMdisk.
If you have enough RAM, you might use part of it for a virtual hard drive that mounts at /mnt/ramdisk with this script.
E.g. if you have 32GByte of RAM and what you want to do with the VM only needs 4-8GByte of RAM - meaning you could use 20GBytes of your RAM for the RAMdisk and run your VM from there.
