#!/bin/bash
# Shell script to run all my rsync commands.
HOME="/home/$USER"
GITDIR="/home/$USER/Documents/GitHub/configfiles"

# Github repo files
rsync -rtuv $HOME/.scripts/ $GITDIR/.scripts/ --delete
rsync -rtuv $HOME/.config/i3/config $GITDIR/.config/i3/config --delete
rsync -rtuv $HOME/.config/i3status/ $GITDIR/.config/i3status --delete
