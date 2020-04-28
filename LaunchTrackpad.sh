#!/usr/bin/env bash
exec /System/Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences /System/Library/PreferencePanes/Trackpad.prefPane &
pid=$!
sleep 8
kill $pid