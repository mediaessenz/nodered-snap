#!/bin/sh

sudo apt update
sudo apt -y install g++ make python libbluetooth-dev libudev-dev snapd snapcraft

snapcraft clean
snapcraft
