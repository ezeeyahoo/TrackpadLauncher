#!/usr/bin/env bash
exec /System/Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences /System/Library/PreferencePanes/Trackpad.prefPane &
pid=$!

sleep 2
while [ "$state" != "S" ]
do
  state=$(ps aux | grep Trackpad.prefPane | grep -v grep | awk '{print $8}')
done
exec kill $pid
exit 0