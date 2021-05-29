PLAYERCTL_STATUS=$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.auryo_player /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:PlaybackStatus | cut -d '"' -f 2 | tail -n +2)

if [ "$1" == "--status" ]; then
    echo "$PLAYERCTL_STATUS"
else
    if [ "$PLAYERCTL_STATUS" = "Stopped" ]; then
        echo "No music is playing"
    elif [ "$PLAYERCTL_STATUS" = "Paused"  ]; then
        dbus-send --print-reply --dest=org.mpris.MediaPlayer2.auryo_player /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/title/{n;p}' | cut -d '"' -f 2
    elif [ "$PLAYERCTL_STATUS" = "No player is running"  ]; then
        echo "$PLAYERCTL_STATUS" 
    else
        dbus-send --print-reply --dest=org.mpris.MediaPlayer2.auryo_player /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/title/{n;p}' | cut -d '"' -f 2
    fi
fi

