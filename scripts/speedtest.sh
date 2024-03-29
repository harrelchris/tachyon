#!/usr/bin/env bash

FILE_NAME="logs/speedtest.csv"
BACKUP_FILE_NAME="logs/speedtest2.csv"
MAX_LINE_COUNT=2977  # 4 per hour for 31 days + 1 for header line

if [ -e $FILE_NAME ]; then
    LINE_COUNT=$(wc -l < $FILE_NAME)
    if [ $LINE_COUNT -ge $MAX_LINE_COUNT ]; then
        cp $FILE_NAME $BACKUP_FILE_NAME
        : > $FILE_NAME
        speedtest -f csv --output-header >> $FILE_NAME
    else
        speedtest -f csv >> $FILE_NAME
    fi
else
    mkdir -p "$(dirname "$FILE_NAME")" && touch "$FILE_NAME"
    speedtest -f csv --output-header >> $FILE_NAME
fi
