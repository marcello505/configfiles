#!/bin/bash
# Shell script for "synching" files to github.
GITDIR="/home/$USER/Documents/GitHub/configfiles"
cp /home/marcello/.scripts/** $GITDIR/.scripts/
cp /home/marcello/.config/i3/config $GITDIR/.config/i3/config
