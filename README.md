# FFmpeg Convert to 1080p

This script batch converts videos from `/sdcard/Download/HighS/` to **1080p resolution** using FFmpeg, and stores them in `/sdcard/Movies/HighS_1080p/`.

## 🔧 Usage (Termux)
```bash
pkg install git ffmpeg -y
git clone https://github.com/jiocreator/ffmpeg-convert-1080p.git
cd ffmpeg-convert-1080p
chmod +x convert.sh
./convert.sh
