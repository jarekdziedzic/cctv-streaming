# cctv-streaming

Tools for saving the RTSP stream produced by HIKVISION CCTV camera

This set of scripts process an RTSP stream containing a h264 video in mp4 container,
typically coming from a CCTV camera. The stream is saved to mp4 files of about 30 seconds
in length and also there is a stream of jpegs saved that may be used by other tools to
perform motion detection.

The gstreamer pipeline, which is at heart of this project uses a hardware accelerated
video api from intel: vaapi. This was tested on i5 4250U, and on this platform it
successully decodes h264.

There are many rough edges in these scripts. Use at your own peril.
