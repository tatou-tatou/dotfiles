#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


## RÉGLAGES ##
xcalib /home/tatou/.colorprofiles/Color\ LCD-00000610-0000-9CCB-0000-0000042732C0.icc
setxkbmap -model macintosh -layout fr &
xsetroot -cursor_name left_ptr &
nvidia-settings -l &


## WM ##
nitrogen --restore


## DAEMONS ##
devmon --exec-on-disc "urxvt -e ranger %d" --exec-on-drive "urxvt -e ranger %d" --exec-on-audio "urxvt -e mplayer cdda://" & 
mpd &


#wait $wmpid
#exec monsterbar

sxhkd &
bspwm & wmpid=$!

redshift -l 48.5:2.2 -t 4700:4000 -m vidmode &
compton &

wait $wmpid
