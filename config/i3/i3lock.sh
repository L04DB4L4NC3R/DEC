#!/bin/bash

ffmpeg -y -i ~/Pictures/wallpapers/external/$(ls ~/Pictures/wallpapers/external/ | shuf -n1) /tmp/i3lock.png && i3lock -t -i /tmp/i3lock.png
