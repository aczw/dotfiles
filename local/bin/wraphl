#!/bin/sh

cd ~

# explicitly set XDG variables
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland

# QT variables
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland;xcb"
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

# other toolkits
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export CLUTTER_BACKEND="wayland"
export GDK_BACKEND="wayland,x11"

# log WLR errors and logs to the hyprland log
export HYPRLAND_LOG_WLR=1

# tell XWayland to use a cursor theme, set size
export XCURSOR_THEME=macOS-BigSur
export XCURSOR_SIZE=24

exec Hyprland

