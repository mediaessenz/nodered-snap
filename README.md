# node-red.snap

### Node-RED snap package

Core18 based version of the Node-RED internet of things graphical wiring tool
packaged as an Ubuntu Snap, intended for multiple architectures.

Listens on port 1880 by default.

#### Gotchas

When installed as a Snap package, it will run in a secure container that does
not have access to any external facilities that may be needed for you to use, such as:

 - `gcc` - needed to compile any binary components of nodes you want to install
 - `git` - needed if you want to use the Projects feature
 - direct access to gpio hardware
 - access to any external commands your flows want to use with the Exec node (for example).

You can relax this by installing the snap in `--classic` mode but this is not advised. You do so at your own risk, etc.

**ping**: If you want to use the ping node you must manually connect the network-observe interface.

    sudo snap connect node-red:network-observe


#### Installing

    snap install node-red

When the snap is running you can view the Node-RED log using

    journalctl -f -u snap.node-red*

You can also stop and restart the application by

    snap disable node-red
    snap enable node-red

Currently the ONLY serial support is for /dev/ttyS0 style ports.
USB serial ports (hot-pluggable) are not yet supported by Snap.

#### Configuration

The **settings.js** and **flows.json** file are located in the `/root/snap/node-red/current/` directory.

To install any extra nodes, the best option is to use the Manage Palette option in the editor.
To install via the command line you can

    sudo su -
    cd /root/snap/node-red/current/
    node-red.npm i --unsafe-perm node-red-contrib-my-great-node-name
    snap restart node-red

The base port can be set by the `$PORT` environment variable, or in the `settings.js` file.


#### Building

To re-build locally, modify the snapcraft.yaml as required, and then execute `build_snap.sh`
