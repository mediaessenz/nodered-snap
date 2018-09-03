#!/bin/sh

# sudo apt update
# sudo apt -y install g++ make python libbluetooth-dev libudev-dev snapd snapcraft

snapcraft cleanbuild --debug
snapcraft release node-red 0.19.2 stable
