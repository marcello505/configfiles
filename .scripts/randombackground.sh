#!/bin/bash
#Small script that changes the background every hour using pywall
while [ true ]
do
#!/bin/bash
DIR="/home/$USER/Pictures/Backgrounds"
PIC=$(ls $DIR/* | shuf -n 1)
wal -g -i "$PIC"
sleep 3600
done
