if [ "$1" = "" ]
then
  echo "Usage: $0 user@123.45.67.89:/media/HDD_1/plots"
  exit
fi

sudo apt install sshfs
mkdir ~/farm
sshfs $1 /home/ubuntu/farm

# list all disks
sudo lsblk
sudo mkfs.ext4 /dev/nvme0n1
sudo mkdir /media/SSD_1
sudo mount -t ext4 /dev/nvme0n1 /media/SSD_1
sudo chmod ugo+wx /media/SSD_1
cd /media/SSD_1
mkdir p1 p2 p3 p4 p5 p6 p7

cd
sudo apt-get update
sudo apt-get upgrade -y
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
. ./activate
chia init
deactivate

cd ~/aihc/plotter
