dest=/usr/local/bin

install:
		cp *.sh cctv-captured $(dest)

uninstall:
		rm $(dest)/cctv-captured
		rm $(dest)/make-video-filename.sh
		rm $(dest)/play.sh
		rm $(dest)/rename-images.sh
		rm $(dest)/rename-videos.sh
		rm $(dest)/save-stream-to-jpegs-color-corrected-hwh264dec.sh
		rm $(dest)/save-stream-to-jpegs-color-corrected.sh
		rm $(dest)/save-stream-to-jpegs.sh
		rm $(dest)/save-stream-to-mp4-files.sh
