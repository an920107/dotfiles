#!/bin/bash

amixer set Master unmute
amixer set Master $1
VOLUME=$(echo $(amixer get Master | grep -oP '(?<=\[)[^\[\]]*(?=\])') | awk '{print $1}')
notify-send -r 1 "Volume: $VOLUME"
