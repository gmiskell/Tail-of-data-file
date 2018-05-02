# Tail-of-data-file
Bash script for downloading the last section of a file. This was useful to me as some files I was downloading were very large and took a long time to process, yet I was only interested in the newest lines.

    # In cron
    55 * * * * ~/tail_data.sh
