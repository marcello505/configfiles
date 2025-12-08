#!/bin/bash
SCREENSHOTFOLDER="/home/marcello/Pictures/Screenshots/$(date +%Y-%m)"
SCREENSHOT="$(date +%F-%H:%M:%S).png"
mkdir $SCREENSHOTFOLDER
if grim -g "$(slurp)" "$SCREENSHOTFOLDER/$SCREENSHOT"
	then cat "$SCREENSHOTFOLDER/$SCREENSHOT" | wl-copy -t image/png
fi

