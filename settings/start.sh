#!/bin/sh
set -e
if [ -z "$PORT" ]; then PORT=1880; fi
export PORT
if [ ! -f $SNAP_USER_DATA/settings.js ]; then
    cp $SNAP/lib/node_modules/node-red/settings.js $SNAP_USER_DATA/
fi
echo STARTING NODE-RED - $SNAP/bin/node-red $SNAP/settings.js $SNAP_USER_DATA on port $PORT
"$SNAP"/bin/node-red -v -u "$SNAP_USER_DATA" "$SNAP_USER_DATA/flows.json"
