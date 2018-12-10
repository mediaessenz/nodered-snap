# node-red.snap

### Node-RED snap package

Base version of the Node-RED internet of things graphical wiring tool
packaged as an Ubuntu Snap, intended for multiple architectures.

Listens on port 1880 by default.

#### Gotchas

**Note**: the strict containerisation when running as a snap means that any nodes that try to shell out or spawn other commands (e.g. exec) will probably fail as they will not have access to system resources.

You can relax this by installing the snap in `--classic` mode but this is not advised. You do so at your own risk, etc.

**ping**: If you want to use the ping node you must manually connect the network-observe interface.

    sudo snap connect node-red:network-observe


#### Building

To build locally, modify the snapcraft.yaml as required, and then execute `build_snap.sh`

#### Installing

    snap install node-red

When the snap is running you can view the Node-RED log using

    journalctl -f -u snap.node-red*

You can also stop and restart the application by

    snap disable node-red
    snap enable node-red

Currently the ONLY serial support is for /dev/ttyS0 style ports.
USB serial ports (hot-pluggable) are not supported by Snappy yet.

#### Configuration

The **settings.js** and **flows.json** file are located in the `/root/snap/node-red/current/` directory.

To install any extra nodes via command line you can (as root user)

    cd ~/snap/node-red/current/
    node-red.npm i node-red-contrib-my-great-node-name

The base port can be set by the `$PORT` environment variable, or in the `settings.js` file.
