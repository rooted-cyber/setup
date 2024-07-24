#!/bin/bash
bn() {
msg now installing
pip3 install -U yt-dlp
apt install ffmpeg -y
msg now downloading
yt-dlp -o "%(series)s/%(season_number)s - %(season)s/%(episode)s - %(title)s.%(ext)s" $1 $2
}
cn() {
command -v yt-dlp >/dev/null 2>&1 || bn
}
cn
cd /sdcard
msg now downloading
yt-dlp -o "%(series)s/%(season_number)s - %(season)s/%(episode)s - %(title)s.%(ext)s" $1 $2
