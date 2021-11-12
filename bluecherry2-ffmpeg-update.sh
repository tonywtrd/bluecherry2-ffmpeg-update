#/bin/bash

cd /usr/lib/bluecherry

sudo mv /usr/lib/bluecherry/ffmpeg /usr/lib/bluecherry/ffmpeg-old.save

sudo mv /usr/lib/bluecherry/ffprobe /usr/lib/bluecherry/ffprobe-old.save

 echo -e "\n$(tput setaf 6)Downloading ffmpeg binary... $(tput sgr0) \n"

sudo curl https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz --output ffmpeg-release-amd64-static.tar.xz 

echo -e "\n$(tput setaf 6)Decompressing files... $(tput sgr0)"

sudo tar -xf ffmpeg-release-amd64-static.tar.xz  -v

echo -e "\n$(tput setaf 6)Moving binaries files in bluecherry directory... $(tput sgr0)"

sudo mv /usr/lib/bluecherry/ffmpeg-4.4.1-amd64-static/ffmpeg /usr/lib/bluecherry/ffmpeg

sudo mv /usr/lib/bluecherry/ffmpeg-4.4.1-amd64-static/ffprobe /usr/lib/bluecherry/ffprobe

echo -e "\n$(tput setaf 6)Removing unwanted files (downloaded tar.xz and decompressed files) $(tput sgr0)"

sudo rm -r /usr/lib/bluecherry/ffmpeg-4.4.1-amd64-static/

sudo rm /usr/lib/bluecherry/ffmpeg-release-amd64-static.tar.xz

echo -e "\n$(tput setaf 2)$(tput bold)✓ Update completed $(tput sgr0)\n"

echo -e "$(tput setaf 6)You may check the new ffmpeg version of bluecherry by executing:$(tput sgr0)"

echo -e "$(tput setaf 1)$(tput bold)/usr/lib/bluecherry/ffmpeg -version $(tput sgr0)\n"
