#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd &

# Turn on numlock
numlockx &

# Set desktop background with feh
#exec feh --bg-scale ~/Pictures/abu_arr_B.png &

# Keyboard Layouts
setxkbmap -option grp:switch,grp:alt_shift_toggle us,ka

# Start volumeicon
#exec volumeicon &

# Start syndaemon for disabling touchpad when typing
#exec syndaemon -t -k -i 2 &

# Start Redshift gtk
#exec redshift-gtk &

# Start i3
exec i3
