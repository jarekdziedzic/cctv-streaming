#!/bin/bash 


SCRIPTS_DIR=$(dirname $(readlink -f $0))
source "$SCRIPTS_DIR/cctv-streaming-helpers.sh"

gst-launch-1.0 rtspsrc location=${MEDIA_URL} latency=500 ! rtph264depay ! queue ! h264parse ! splitmuxsink location=video%02d.mp4 max-size-time=30000000000 max-size-bytes=20000000
