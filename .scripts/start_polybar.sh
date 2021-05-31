THEME_FILE=~/.config/polybarTheme

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

POLYBAR_CONFIG=$(cat $THEME_FILE)

polybar -c $POLYBAR_CONFIG dp0 &
polybar  -c $POLYBAR_CONFIG dp1 &
