#!/bin/bash

working_time=3600
current_was_log=file-$(date +%Y-%m-%d_%H-%M-%S)
path_from = "/opt/IBM/WebSphere/AppServer/profiles/regional_profile/logs/server1"
path_to = "/var/log/was_log_err"

tail -F $path_from/SystemOut.log > $path_to/err_$current_was_log.log &

tail_pid=$!
sleep $working_time

kill $tail_pid