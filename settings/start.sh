#!/bin/sh
set -e
if [ -z "$NODERED_PORT" ]; then
  NODERED_PORT=1880
fi
export NODERED_PORT
echo STARTING NODE-RED - $SNAP/bin/node-red $SNAP/settings.js $SNAP_USER_DATA on port $NODERED_PORT
"$SNAP"/bin/node-red -v --settings "$SNAP/settings.js" --userDir "$SNAP_USER_DATA" "$SNAP_USER_DATA/flows.json"
