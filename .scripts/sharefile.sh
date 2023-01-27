#!/bin/bash

file=$(find $HOME -type f | rofi -dmenu -i -l 25)
curl -F "file=@$file" 0x0.st | xclip -selection c
notify-send "Copied file!"
