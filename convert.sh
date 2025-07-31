#!/data/data/com.termux/files/usr/bin/bash

mkdir -p /sdcard/Movies/HighS_1080p

for file in /sdcard/Download/HighS/*; do
  filename=$(basename "$file")
  output="/sdcard/Movies/HighS_1080p/$filename"

  if [ -f "$output" ]; then
    echo "Skipping already converted: $filename"
    continue
  fi

  echo "Converting (1080p): $filename"
  ffmpeg -i "$file" \
    -vf "scale=1920:1080,setdar=16/9" \
    -c:v libx264 -preset ultrafast -crf 22 \
    -c:a aac -b:a 192k \
    "$output"
done
