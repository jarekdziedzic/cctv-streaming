#!/bin/bash

SCRIPTS_DIR=$(dirname $(readlink -f $0))
source "$SCRIPTS_DIR/cctv-streaming-helpers.sh"

gst-launch-1.0 -v playbin uri=${MEDIA_URL}

