#!/bin/bash
SCREENSHOTFOLDER="/home/marcello/Pictures/Screenshots/$(date +%Y-%m)"
SCREENSHOT="$(date +%F-%H:%M:%S).png"
mkdir $SCREENSHOTFOLDER
if maim -s "$SCREENSHOTFOLDER/$SCREENSHOT"
	then sharenix -n "$SCREENSHOTFOLDER/$SCREENSHOT"
fi

