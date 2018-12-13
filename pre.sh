#!/bin/sh
WORKSPACE=$(pwd)

sudo $WORKSPACE/reinsmodkvm.sh
sudo $WORKSPACE/set-net2.sh
sudo $WORKSPACE/set-vmft.sh

