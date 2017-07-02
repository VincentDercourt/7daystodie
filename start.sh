#!/bin/bash

if [ ! -f "sdtdserver" ]; then
    wget https://gameservermanagers.com/dl/sdtdserver
    chmod +x sdtdserver
fi
if [ ! -d "serverfiles" ]; then
    yes Y | ./sdtdserver install
fi

yes Y | ./sdtdserver start

expect <<- DONE
  set timeout -1
  
  spawn sudo cron
  match_max 100000
  
  expect "*?password for sdtdserver:*"
  send -- "sdtdserver\r"
  send -- "\r"
  expect eof
  
DONE

/bin/bash