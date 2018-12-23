#!/bin/bash -eu

SCRIPTS_DIR=$(dirname $(readlink -f $0))
source "$SCRIPTS_DIR/cctv-streaming-helpers.sh"

for i in $(find ${MEDIA_DIR} -maxdepth 1 -name 'frame*.jpeg')
do 
    newfilename="$(stat -c%y ${i} | sed 's/ /_/g').jpeg"
    dir=$(date -d @$(stat -c%Y ${i}) +%Y-%m-%d/%H)
    mkdir -p ${dir}
    mv -v $i ${dir}/${newfilename}
done
