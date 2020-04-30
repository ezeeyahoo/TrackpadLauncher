#!/usr/bin/env bash
/System/Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences /System/Library/PreferencePanes/Trackpad.prefPane &
pid=$!
sleep 2
declare state
while [ "$state" != "S" ] && [ "$state" != "S+" ]
do
  state=$(ps aux | grep Trackpad.prefPane | grep -v grep | awk '{print $8}')
  if -z $state
  then
    exit 1
  fi
done
kill $pid
exit 0