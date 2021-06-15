# https://www.raspberrypi.org/documentation/configuration/external-storage.md

# List partitions with a few extra details
sudo lsblk -o UUID,NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL,MODEL

# Get the exact location of partitions
sudo blkid

# Mount a partition to a new folder
 sudo mkdir /media/pi/LTVNTFS
 sudo mount /dev/sda2 /media/pi/LTVNTFS
