#!/bin/bash


cd /opt/citizenwatt
python3 ./test_process.py &
python3 ./visu.py
