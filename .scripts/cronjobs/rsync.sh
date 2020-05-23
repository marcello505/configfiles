#!/bin/bash
# Shell script to run all my rsync commands.
HOME="/home/$USER"
GITDIR="/home/$USER/GitHub/configfiles"

# Github repo files
rsync -rtuv $HOME/.scripts/ $GITDIR/.scripts/ --delete
rsync -rtuv $HOME/.config/i3/config $GITDIR/.config/i3/config --delete
rsync -rtuv $HOME/.config/i3status/ $GITDIR/.config/i3status --delete
rsync -tuv $HOME/.Xresources $GITDIR/.Xresources
rsync -rtuv $HOME/bin/ $GITDIR/bin --delete
rsync -tuv $HOME/.bash_profile $GITDIR/.bash_profile
