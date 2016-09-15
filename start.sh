#!/bin/bash

echo "Checking /mnt/media status"

x=0

while [ "$x" -lt 10 -a -z "$(cat /proc/mounts |grep /mnt/media)" ]; do 
				x=$((x+1));
        echo "...not active yet"; 
        sleep 1; 
done

if grep -qs '/mnt/media ' /proc/mounts; then
   echo "Media activated"
   STORAGE_PATH=/mnt/media
else
	echo "Media not found, set default storage to /data"
   STORAGE_PATH=/data
fi

echo "Storage path : " $STORAGE_PATH
