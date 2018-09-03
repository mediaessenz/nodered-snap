#!/bin/sh

# sudo apt update
# sudo apt -y install g++ make python libbluetooth-dev libudev-dev snapd snapcraft

snapcraft clean
snapcraft --debug
snapcraft release node-red 0.19.2 stable
