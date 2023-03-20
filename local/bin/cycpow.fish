#!/usr/bin/fish

# if no arguments are given, we simply cycle to next profile.
# otherwise, we check if specified profile is correct, and switch to it
if test (count $argv) -lt 1
    asusctl profile -n
else
    if not asusctl profile -P $argv[1]
        return 1
    end
end

notify-send -t 3000 "asusctl" "$(asusctl profile -p)"
