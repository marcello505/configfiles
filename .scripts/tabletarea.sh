#!/bin/bash
# sets the area of the tablet to my preference.
xinput set-prop "HUION 420 Pen Pen (0)" --type=float "Coordinate Transformation Matrix" 1.6 0 0 0 1.4 0 0 0 1
# Default setting:
# xinput set-prop "HUION PenTablet Pen" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1

# Explanation of the command
# "HUION PenTablet Pen" - type xinput into terminal and look for each device relevant to your tablet, replace this if it doesn't work and go through each different option shown in xinput.
# W - Division of the width of the tablet. 2 = half, 1 = full area. 1.5 = 3/4 of the area
# X - the invert X value. 1 = left side, -1 = right hand side. -0.5 = half way
# H - Division of the height of the tablet. 2 = half, 1 = full area. 1.5 = 3/4 of the area
# Y - Inverse Y position of area. 1 = top, -1 = bottom, -0.5 = half way.
# S - Scale multiplier. 0.5 means the area will be shrunk to half of its size on both axis. 2 will essentially render the area useless, as it will only use a half of your desktop area.
