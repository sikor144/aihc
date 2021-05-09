# ssh-keygen -t rsa

mkfs.ext4 /dev/sda
mkfs.ext4 /dev/sdb

mkdir /media/HDD_1 /media/HDD_2
mount -t ext4 /dev/sda /media/HDD_1
mount -t ext4 /dev/sdb /media/HDD_2
chmod ugo+wx /media/HDD_1
chmod ugo+wx /media/HDD_2
mkdir /media/HDD_1/plots /media/HDD_2/plots