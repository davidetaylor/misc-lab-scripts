# repair_avi_videos.sh

This bash script is designed for Ubuntu systems to repair MJPEG AVI videos that weren't properly released during creation. It extracts the video stream from the corrupted AVI container and re-packages it into a new, fresh container. The original video files are moved to a separate "original_videos" directory for backup purposes.

## Prerequisites
1. FFmpeg: The script requires FFmpeg to process the videos. You can check if it's already installed by running:
   ```
   ffmpeg -version
   ```
2. **If necessary**, install FFmpeg :
   ```
   sudo apt update
   sudo apt install ffmpeg
   ```

## Instructions
1. Ensure the repair_avi_videos.sh script is in the same directory as the videos you want to repair.
2. Navigate to the directory containing your videos and the script:
   ```
   cd /path/to/video/directory
   ```
5. Execute script:
   ```
   . script_name.sh
   ```
