#!/usr/bin/fish

# if no arguments were given, we simply cycle to next profile.
# otherwise, we switch to the specified profile.
if test (count $argv) -lt 1
    asusctl profile -n
else
    asusctl profile -P $argv[1]
    if test $status -ne 0
        return 1
    end
end

# deliver noti about new power profile
notify-send -t 3000 "asusctl" "$(asusctl profile -p)"

