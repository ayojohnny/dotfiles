function mac_volume
    set value $argv[1]
   
    if string match -rq '^[0-9]+$' -- $value
        and test $value -ge 0
        and test $value -le 100
        
        osascript -e "set volume output volume $value"
        return 0
    end

    switch $value
        case max
            osascript -e "set volume output volume 100"

        case mid
            osascript -e "set volume output volume 50"

        case up
            osascript -e "set volume output volume ((output volume of (get volume settings)) + 10)"

        case down
            osascript -e "set volume output volume ((output volume of (get volume settings)) - 10)"

        case mute
            osascript -e "set volume with output muted"

        case unmute
            osascript -e "set volume without output muted"

        case check
            osascript -e "output volume of (get volume settings)"
    end
end
