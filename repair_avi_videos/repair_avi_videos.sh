
#!/bin/bash

# Directory containing the AVI files
DIR="./"

# Ensure the "original_videos" directory exists
mkdir -p "$DIR/original_videos"

# Iterate over every AVI file in the directory
for file in "$DIR"*.avi; do
    # Use FFmpeg to repair the file
    ffmpeg -i "$file" -c:v copy -an "${file%.avi}_fixed.avi"
    
    # Move the original to "original_videos" directory
    mv "$file" "$DIR/original_videos/"

    # Rename the fixed video to the original name
    mv "${file%.avi}_fixed.avi" "$file"
    
    echo "Processed $file"
done
