#!/bin/sh

ibus_engine=$(ibus engine)
if [ $ibus_engine = "kkc" ]
then
	ibus engine xkb:us:intl:eng
else
	ibus engine kkc
fi
