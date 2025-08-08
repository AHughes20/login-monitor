#!/bin/bash

log_file="/var/log/secure"
scan_lines=1#!/bin/bash

log_file="/var/log/secure"
scan_lines=10

tail -n "$scan_lines" "$log_file" | while IFS= read -r line; do
    tstamp=$(echo "$line" | awk '{print $1, $2, $3}')
    ip=$(echo "$line" | grep -oE '192\.168\.[0-9]+\.[0-9]+')

    if echo "$line" | grep -Eiq "failed password"; then
        fail_type="failed password"
    elif echo "$line" | grep -Eiq "authentication failure"; then
        fail_type="authentication failure"
    elif echo "$line" | grep -Eiq "invalid user"; then
        fail_type="invalid user"
    else
        continue
    fi
        echo "$tstamp $ip $fail_type"
done

	  
