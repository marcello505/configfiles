#!/bin/sh
# Helper script to automatically sync changes

###########
# Folders #
###########
rsync -aiz ~/.config/openbox .config/
rsync -aiz --delete ~/.scripts .
rsync -aiz --delete ~/.themes .
rsync -aiz --delete ~/.config/polybar .config/
rsync -aiz --delete ~/.config/alacritty .config/
#rsync -aiz --delete ~/.config/mpv .config/

#########
# Files #
#########
rsync -aiz ~/.profile .
rsync -aiz ~/.xprofile .

