function ytdl
    yt-dlp -x --audio-format m4a --audio-quality 0 --embed-thumbnail --add-metadata --download-archive downloads.txt -t sleep $argv[1] 2>&1 | tee yt-dlp.log
end
