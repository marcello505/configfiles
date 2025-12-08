#!/bin/sh
# Due to bug where stuttering occurs on HDMI only screen, simply use DPMS to turn screens to black
#hyprctl keyword monitor DP-1,disable
#hyprctl keyword monitor DP-3,disable

hyprctl dispatch dpms off DP-1
hyprctl dispatch dpms off DP-3
hyprctl dispatch dpms on HDMI-A-1