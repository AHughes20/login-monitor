#!/bin/bash

#monitor-logins.sh
#------------------
#scans /var/log/secure for failed login attempts
#if attempts from a single IP exceed a threshhold, the script:
#-prints and alert to terminal
#-logs it to logs/folder
#-archives the matched log lines


