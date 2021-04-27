#!/bin/sh

#[ $(echo -e "No\nYes" | dmenu -i -p "are you sure") \
#== "Yes" ] && $1

calc=$(qalc -t $1)
[ $(echo -e $calc | dmenu -i -p "") \
== $calc ] && echo -n $calc | xclip -selection c
