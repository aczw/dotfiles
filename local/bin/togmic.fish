#!/usr/bin/fish

# toggle mic
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

# check if mic is currently muted or not, and send noti about it
if string match -q "*MUTED*" (wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
    notify-send -t 3000 "microphone" "now muted"
else
    notify-send -t 3000 "microphone" "now unmuted"
end
