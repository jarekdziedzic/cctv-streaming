#!/bin/bash

SCRIPTS_DIR=$(dirname $(readlink -f $0))
source "$SCRIPTS_DIR/cctv-streaming-helpers.sh"

gst-launch-1.0 rtspsrc location=${MEDIA_URL} latency=0 ! rtph264depay ! queue ! vaapidecodebin ! videorate ! video/x-raw,framerate=2/1 ! videoconvert ! video/x-raw,format=RGB,colorimetry=srgb ! jpegenc quality=65 ! multifilesink location="frame%05d.jpeg"

