#!/bin/sh
set -e
if [ -z "$PORT" ]; then PORT=1880; fi
export PORT
if [ ! -f $SNAP_USER_DATA/settings.js ]; then
    echo "NEW - Copy settings.js to "$SNAP_USER_DATA
    cp $SNAP/lib/node_modules/node-red/settings.js $SNAP_USER_DATA/
fi
echo NOW STARTING NODE-RED : $SNAP/bin/node-red -u $SNAP_USER_DATA on port $PORT
"$SNAP"/bin/node "$SNAP"/lib/node_modules/.bin/node-red -u "$SNAP_USER_DATA" "$SNAP_USER_DATA/flows.json"
