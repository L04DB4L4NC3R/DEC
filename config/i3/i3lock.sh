#!/bin/bash

ffmpeg -y -i ~/Pictures/wallpapers/$(ls ~/Pictures/wallpapers/ | shuf -n1) /tmp/i3lock.png && i3lock -t -i /tmp/i3lock.png
