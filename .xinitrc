#!/bin/sh

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi


## SETTINGS ##
# Urxvt
xrdb -merge ~/.Xresources

# Screen
/usr/bin/xcalib "/home/tatou/.colorprofiles/Color LCD-4F159F59-A71D-63AE-FCE9-4E26FC6D6EDD.icc"
xset +dpms
xset dpms 0 0 300

# Pointer
xsetroot -cursor_name left_ptr &
xinput --set-ptr-feedback bcm5974 3 4 1 &
xinput --set-prop bcm5974 'Device Accel Constant Deceleration' 3 &

# Keyboard
setxkbmap -model macintosh -layout fr &

# Wallpaper
nitrogen --restore &
#hsetroot -solid '#B9B3A8' &



## DAEMONS ##
sxhkd &
devmon --exec-on-video "notify-send '%f monté' 'Lancement de mpv...' -i mpv & mpc pause & mpv -vo opengl-hq dvdnav://menu" --exec-on-drive "thunar %d" --exec-on-disc "thunar %d" --exec-on-unmount "notify-send '%f' 'Le disque a été démonté correctement.' -i eject" &
mpd &
compton &
mpdcron &
dunst &
pgrep -f "transmission-daemon" || transmission-daemon &



exec bspwm
