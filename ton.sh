#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=asia1.stratum.ton-pool.com:Asia
WALLET=EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo TON --pool asia1.stratum.ton-pool.com:Asia --user EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool asia1.stratum.ton-pool.com:Asia --user EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj
done
