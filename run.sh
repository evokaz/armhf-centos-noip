#!/bin/bash
FILE=/usr/local/bin/noip2

## Detect if noip is installed. If not then this script will install it.
## It will be interactive so the user can enter their username/password.
if [ ! -f $FILE ]
then
  echo "[INFO] Running noip setup!"
  /etc/init.d/run_setup.sh
else
  $FILE
fi

/bin/bash