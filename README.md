# resin-media

This example demonstrates how to mount a uSD card using only its label in order to avoid a non-deterministic assignement to devices.

The uSD card must be labelled properly and be compliant with the filesystem name constraints, eg. FAT only accepts capital letters as labels.

Usefull commands
----------------

* systemctl is-active mnt-media.mount
* systemctl status mnt-media.mount -l
* fdisk -l
* /sbin/blkid
