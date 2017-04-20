#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

nvidia=$(lsmod | grep -q nvidia)
intern=eDP-1
extern=HDMI-1

if lsmod | grep -q "nvidia_drm"; then
    intern="$intern-1"
    extern="$extern-1"
fi

MONITOR=$intern polybar main &

if xrandr | grep -q "$extern connected"
then
    MONITOR=$extern polybar main &
fi
