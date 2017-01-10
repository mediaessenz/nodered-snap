# node-red.snap

### Node-RED snap package

Base version of the Node-RED internet of things graphical wiring tool packaged as an
Ubuntu Snap, intended for multiple architectures.

Listens on port 1880 by default

#### Building

To build, execute `build_snap.sh`

#### Installing

    sudo snap install node-red

When the snap is running you can view the system log using

    tail -f /var/log/syslog | grep ' snap'

You may wish to filter it further of course if you run a lot of snaps.

You can also use

    sudo snap disable node-red
    sudo snap enable node-red

to stop and restart the application.
