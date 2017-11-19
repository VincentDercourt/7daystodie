#!/bin/bash

if [ ! -f "sdtdserver" ]; then
    wget https://gameservermanagers.com/dl/sdtdserver
    chmod +x sdtdserver
fi
if [ ! -d "serverfiles" ]; then
    sudo -u sdtdserver yes Y | ./sdtdserver install
fi

sudo -u sdtdserver yes Y | ./sdtdserver start

cron

/bin/bash