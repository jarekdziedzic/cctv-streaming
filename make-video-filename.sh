#!/bin/bash -eu

function usage()
{
    local THIS_SCRIPT=`basename $0`
    echo -e "Usage: ${THIS_SCRIPT} <filename.mp4>\n"
    echo -e "Outputs filename based on the local start date/time of the MP4 video file passed in"
}

[[ "$#" != 1 ]] && { usage; exit 1;}

[[ ! -f ${1} ]] && { echo File not found.; exit 1;}

FILENAME=$(mediainfo ${1} --Output=JSON  | jq '.media.track[0]|.Encoded_Date' | xargs bash -c 'date -d "$1" +%Y-%m-%d/%H/video/%Y-%m-%d_%H:%M:%S' _ )

echo ${FILENAME}.mp4
