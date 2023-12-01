#!/bin/bash

brightnessctl set $1

notify-send -r 1 "Brightness: $(brightnessctl | grep Current | grep -oP "(?<=\().*(?=\))")"
