#!/bin/sh

# sudo snap install lxd && sudo lxd init        # if you don’t have LXD already
# sudo usermod -a -G lxd $USER && newgrp lxd    # if your user is not in the lxd group already
# sudo snap install --classic snapcraft         # if you don’t have snapcraft already

rm node-red*.snap
snapcraft cleanbuild --debug
# snapcraft release node-red 0.19.5 stable,beta,edge
snapcraft push node-red*.snap --release stable
