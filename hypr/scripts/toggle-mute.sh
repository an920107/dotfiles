#/bin/bash

ACTIVE=$(echo $(amixer get Master | grep -oP '(?<=\[)[^\[\]]*(?=\])') | awk '{print $2}')

if [ "$ACTIVE" == "on" ]; then
    amixer set Master mute
    notify-send -r 1 "Muted: Yes"
else
    amixer set Master unmute
    notify-send -r 1 "Muted: No"
fi
