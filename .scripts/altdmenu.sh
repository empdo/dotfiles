#!/bin/zsh

array="qutebrowser\ndiscord-canary\nnvim\nalactritty\n"
choice=$(echo -e "${array[@]}" | dmenu | cut -f 1)

case "$choice" in
  qutebrowser)  qutebrowser ;;
  discord-canary) discord-canary ;;
  auryo) auryo ;;
  nvim) alacritty nvim ~/.config/nvim/init.vim    ;;
  alacritty) alacritty nvim ~/.config/alacritty/alacritty.yml    ;;
esac

case "$choice[1]" in
 \=) ~/.scripts/dmenu_calc.sh $(echo "$choice" | cut -c2-) ;;  
esac
