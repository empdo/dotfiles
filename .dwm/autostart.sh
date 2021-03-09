#!/bin/bash

nitrogen --restore &

picom --experimental-backends &

dunst &

~/.scripts/start_polybar.sh &
