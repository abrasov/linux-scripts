#!/bin/bash

working_time=3600
current_was_log=file-$(date +%Y-%m-%d_%H-%M-%S)

tail -f /opt/IBM/WebSphere/AppServer/profiles/regional_profile/logs/server1/SystemOut*.log > /var/log/was_log_err/err_$current_was_log.log &

tail_pid=$!
sleep $working_time

kill $tail_pid