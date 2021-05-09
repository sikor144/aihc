# sleep(84000)
# screen -X -S miner quit
# sleep(30)
# start miner
# sleep(84000)
# screen -X -S miner quit
# sleep(30)
# start miner

screen -dm -S miner bash -c './miner --config config.yaml'