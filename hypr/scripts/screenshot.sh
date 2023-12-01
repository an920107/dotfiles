#!/bin/sh

SAVE_DIR="${HOME}/Pictures/螢幕快照"
SAVE_FILE="螢幕快照 $(date '+%Y-%m-%d %H-%M-%S').png"
AREA=$(slurp)

sleep 0.1
mkdir -p $SAVE_DIR
cd $SAVE_DIR
grim -g "$AREA" -t png "$SAVE_FILE"
wl-copy < "$SAVE_FILE"
