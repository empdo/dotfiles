#!/bin/zsh

array="nvim\nalactritty\n"
choice=$(echo -e "${array[@]}" | dmenu | cut -f 1)

case "$choice" in
  nvim) nvim ~/.config/nvim/init.vim    ;;
  alacritty) nvim ~/.config/alacritty/alacritty.yml    ;;
esac

case "$choice[1]" in
 \=) ~/.scripts/dmenu_calc.sh $(echo "$choice" | cut -c2-) ;;  
esac
