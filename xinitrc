#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
sh ~/.fehbg &
xmonad
