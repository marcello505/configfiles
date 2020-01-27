#!/bin/bash

pactl load-module module-null-sink sink_name=Virtual1 sink_properties=device.description="Everything"
pactl load-module module-null-sink sink_name=Virtual2 sink_properties=device.description="Discord"
pactl load-module module-loopback sink=Virtual1
pactl load-module module-loopback sink=Virtual2
