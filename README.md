# Node-RED Snap package specific for Raspberry Pi

[![platform](https://img.shields.io/badge/platform-Node--RED-red)](https://nodered.org)
[![GitHub version](https://badge.fury.io/gh/node-red%2Fnode-red.svg)](https://badge.fury.io/gh/node-red%2Fnode-red)

The Node-RED graphical wiring tool for Low-code programming of event-driven applications.
Packaged as a Core18 based Ubuntu Snap, intended for multiple architectures.

Listens on port 1880 and runs as as service in strict mode by default.

By default builds get automatically placed in the edge channel, and then promoted to the stable channel manually.

### Restrictions

When installed as a Snap package, you will have to connect all the required snap interfaces
your flows will use.

The snap does come with the palette editor enabled and ships the gcc toolchain as well as a
bunch of development libraries so that npm can dynamically compile nodes where required when
you add them via the palette editor.

#### Interfaces

To see all connected and available connections please run:

    sudo snap connections node-red-rpi

To connect i.e. a GPIO interface (GPIO 14 here) you do:

    sudo snap connect node-red-rpi:gpio pi:bcm-gpio-14
    sudo snap connect node-red-rpi:gpio-memory-control

Similar for i2c:

    sudo snap connect node-red-rpi:i2c pi:i2c-1

#### Installing

    snap install node-red-rpi

When the snap is running you can view the Node-RED log using

    journalctl -f -u snap.node-red-rpi*

You can also stop and restart the application by

    snap restart node-red-rpi

    snap disable node-red-rpi
    snap enable node-red-rpi


#### Configuration

The **settings.js** and **flows.json** file are located in the `/root/snap/node-red-rpi/current/` directory.
If you do need to read and write files - this is the only directory path you will have access to from outside
the secure container.

To install any extra nodes, the best option is to use the Manage Palette option in the editor.

#### Building

To re-build locally, modify the snapcraft.yaml as required, and then execute snapcraft
