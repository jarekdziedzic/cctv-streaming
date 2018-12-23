#!/bin/bash

SCRIPTS_DIR=$(dirname $(readlink -f $0))
source "$SCRIPTS_DIR/cctv-streaming-helpers.sh"

gst-launch-1.0 -v  uridecodebin uri=${MEDIA_URL} source::latency=0 !  videorate ! video/x-raw,framerate=3/1 ! videoconvert ! video/x-raw,format=RGB,colorimetry=srgb ! jpegenc ! multifilesink
