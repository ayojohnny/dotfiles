function days_between
    set start $argv[1]
    set end $argv[2]

    set start_timestamp (date -j -f "%Y-%m-%d" "$start" "+%s")
    set end_timestamp (date -j -f "%Y-%m-%d" "$end" "+%s")

    math "($end_timestamp - $start_timestamp) / 86400"
end
