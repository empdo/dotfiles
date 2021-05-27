#!/bin/bash

nitrogen --restore &
#xwinwrap -ni -b -fs -ov -nf -- gifview -w WID ~/Pictures/Wallpapers/94b21a17d8a954aee4e7228457d52729.gif -a

picom --experimental-backends --respect-prop-shadow &

dunst &


# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar dp0 &
polybar dp1 &
#polybar dp2 &

echo "Polybar launched..."

