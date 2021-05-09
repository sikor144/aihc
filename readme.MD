# AIHC

Before installation remember to add proper keys:
```
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
ssh-copy-id user@123.45.56.78
```

### Miner
```
cd
git clone git@github.com:sikor144/aihc.git
cd ./aihc/miner
lsblk # ensure the disk names are correct (sda, sdb by default)
./install.sh
```
Edit the config.yaml file and fill in the api key and the miner name. Then run a screen with the miner
```
./start.sh
```

### Plotter

```
git clone git@github.com:sikor144/aihc.git
cd ./aihc/plotter
./install.sh user@123.45.67.89:/media/HDD_1/plots
./start.sh
```
