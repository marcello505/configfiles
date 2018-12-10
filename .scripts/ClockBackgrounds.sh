#!/bin/bash/
#
$DIR=/home/%username/Pictures/Backgrounds
$TIME( date +%k )
$PIC="$DIR/Background$TIME.*"
wal -g -i $PIC
sleep 3600
done
