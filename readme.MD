# AIHC

Before installation remember to add proper keys to the plotter instances:
```
ssh-keygen -t rsa
ssh-copy-id user@123.45.56.78
```

### Miner
```
cd
git clone https://github.com/sikor144/aihc.git
chmod -R +x ./aihc
cd ./aihc/miner
lsblk # ensure the disk names are correct (sda, sdb by default)
./install.sh
```
Now you may configure a plotter unit

Edit the config.yaml file and fill in the api key and the miner name. Then run a screen with the miner
```
./start.sh
```

### Plotter

```
cd
git clone https://github.com/sikor144/aihc.git
chmod -R +x ./aihc
cd ~/aihc/plotter
./install.sh user@123.45.67.89:/media/HDD_1/plots
# Confirm that the disk has been mounted properly
# ls ~/farm
# => hdd-*-sample.txt
./start.sh
```
