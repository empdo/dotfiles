#!/bin/bash

array="theme1\ntheme2\n"
choice=$(echo -e "${array[@]}" | dmenu | cut -f 1)

THEME_FILE=~/.config/polybarTheme

case "$choice" in
  theme1)   echo ~/.config/polybar/theme1 > $THEME_FILE;;
  theme2)   echo ~/.config/polybar/theme2 > $THEME_FILE ;;
esac

~/.scripts/start_polybar.sh
