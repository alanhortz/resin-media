# resin-media

This example demonstrates how to mount a uSD card using only its label in order to avoid a non-deterministic assignement to devices.

For example, if an uSD card is inserted before powering up the device, the assigned device is /dev/mmcblk0p1 else the uSD card is assigned to /dev/mmcblk1p1.

The uSD card must be labelled properly and be compliant with the filesystem name constraints, eg. FAT only accepts capital letters as labels.

Usefull commands
----------------

* systemctl is-active mnt-media.mount
* systemctl status mnt-media.mount -l
* fdisk -l
* /sbin/blkid
