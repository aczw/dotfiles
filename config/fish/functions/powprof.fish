function powprof --description 'change power profiles'
    if test (count $argv) -lt 1
        asusctl profile -n
    else
        asusctl profile -P $argv[1]
        if test $status -ne 0
            return 1
        end
    end

    notify-send -t 3000 "asusctl" "$(asusctl profile -p)"
end
