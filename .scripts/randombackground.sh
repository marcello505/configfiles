#!/bin/bash
#Small script that changes the background every hour using pywall
while [ true ]
do
#!/bin/bash
DIR="/home/$USER/Pictures/Backgrounds/Slideshow"
wal -e -i "$DIR"
xrdb -merge ~/.cache/wal/colors.Xresources
sleep 3600
done

