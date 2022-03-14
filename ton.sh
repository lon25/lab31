#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=stratum+tcp://tcp.whalestonpool.com:4001
WALLET=EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo TON --pool stratum+tcp://tcp.whalestonpool.com:4001 --user EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool stratum+tcp://tcp.whalestonpool.com:4001 --user EQCfaic7MdV-2QhWvXffLqazDJorz8hgo-5ik0_8bgbSeHyj
done
