#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


## RÉGLAGES ##
xrdb -merge ~/.Xresources
setxkbmap -model macintosh -layout fr &
xsetroot -cursor_name left_ptr &
nvidia-settings -l &

# Screen powersave
xset +dpms
xset dpms 0 0 300

## WM ##
nitrogen --restore &
sxhkd &
bspwm & wmpid=$!

## DAEMONS ##
devmon --exec-on-disc "termite -e 'ranger %d'" --exec-on-drive "termite -e 'ranger %d'" &
mpd &
compton &
mpdcron &
#statnot &
dunst &
/usr/bin/xcalib "/home/tatou/.colorprofiles/Color LCD-4F159F59-A71D-63AE-FCE9-4E26FC6D6EDD.icc"

wait $wmpid
