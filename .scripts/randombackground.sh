#!/bin/bash
#Small script that changes the background every hour using pywall
while [ true ]
do
#!/bin/bash
DIR="/home/$USER/Pictures/Backgrounds"
wal -g -i "$DIR"
sleep 3600
done
