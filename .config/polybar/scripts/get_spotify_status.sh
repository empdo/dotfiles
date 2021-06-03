PLAYERCTL_STATUS="$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/title/{n;p}' | cut -d '"' -f 2) "-" $(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/artist/{n;n;p}' | cut -d '"' -f 2)"

if [ "$1" == "--status" ]; then
    echo "$PLAYERCTL_STATUS"
else
    if [ "$PLAYERCTL_STATUS" = "Stopped" ]; then
        echo "No music is playing"
    elif [ "$PLAYERCTL_STATUS" = "Paused"  ]; then
        dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/title/{n;p}' | cut -d '"' -f 2
    elif [ "$PLAYERCTL_STATUS" = "No player is running"  ]; then
        echo "$PLAYERCTL_STATUS" 
    elif [ "$PLAYERCTL_STATUS"  = "" ]; then
        echo "no player is running"
    else
        echo $PLAYERCTL_STATUS
    fi
fi

