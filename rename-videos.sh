#!/bin/bash -eu

SCRIPTS_DIR=$(dirname $(readlink -f $0))
source "$SCRIPTS_DIR/cctv-streaming-helpers.sh"

for i in $(find ${MEDIA_DIR} -maxdepth 1 -mmin +1 -name 'video*.mp4')
do 
    newfilename=$(${SCRIPTS_DIR}/make-video-filename.sh $i) || { echo "Problem with $i. Removing the file."; rm $i; continue; }
    mkdir -p $(dirname ${newfilename})
    mv -v ${i} ${newfilename}
done
