#!/bin/bash

pid_path=/var/vcap/sys/run/app/app.pid

if [ -f $pid_path ]; then
  pid=$(cat $pid_path)
  kill $pid        # process is running; kill it softly
  sleep 10         # wait a bit
  kill -9 $pid     # kill it hard
  rm -rf $pid_path # remove pid file
fi

echo 0 # ok to exit; do not wait for anything

exit 0
