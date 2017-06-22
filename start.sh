#!/bin/bash

if [ ! -f "sdtdserver" ]; then
    wget https://gameservermanagers.com/dl/sdtdserver
    chmod +x sdtdserver
fi
if [ ! -d "serverfiles" ]; then
    yes Y | ./sdtdserver install
fi

yes Y | ./sdtdserver update

yes Y | ./sdtdserver start

/bin/bash