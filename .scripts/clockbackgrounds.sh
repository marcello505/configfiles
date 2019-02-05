#!/bin/bash
#Small script that chooses the background according to the time using pywall, switching to a new one every hour.
while [ true ]
do
#!/bin/bash
DIR="/home/$USER/Pictures/Backgrounds/Clock-Wallpapers"
TIME=$(date +%k)
PIC=$(ls $DIR/Background$TIME.*)
wal -g -i "$PIC"
sleep 3600
done
