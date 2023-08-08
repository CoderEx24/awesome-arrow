#!/usr/bin/bash
fcitx5 &
pipewire &
pipewire-pulse &
wireplumber &
/usr/lib/geoclue-2.0/demos/agent &
redshift &
picom -bcf --vsync
unclutter -b --timeout 1
brightnessctl set 7%
exec awesome
