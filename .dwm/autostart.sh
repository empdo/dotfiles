#!/bin/bash

nitrogen --restore &
#xwinwrap -ni -b -fs -ov -nf -- gifview -w WID ~/Pictures/Wallpapers/94b21a17d8a954aee4e7228457d52729.gif -a
picom --experimental-backends --respect-prop-shadow &

xmodmap ~/.Xmodmap

dunst &

discord &
