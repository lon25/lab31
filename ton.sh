#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=wss://eu1.stratum.ton-pool.com:Europe
WALLET=EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
