#!/bin/bash

# Update
sudo pacman -Syu

# Install paru
sudo pacman -S git base-devel 
git clone https://aur.archlinux.org/paru.git
cd paru 
makepakg -si
cd

# xorg
sudo paru -S xorg-server xorg-xinit xorg-xrandr xorg-backlight xsecurelock xorg-xev

# Video drivers
# sudo paru -S mesa xf86-video-nouveau
# sudo paru -S xf86-video-intel

# ly
paru -S ly
sudo systemctl enable ly.service

# bspwm
sudo paru -S bspwm sxhkd rofi polybar picom python-pywal kitty dunst playerctl pamixer pulsemixer qpwgraph zip tar bat mediainfo ueberzeg trash-cliredshift-minimal rofi-calc 

chmod u+x ~/.config/bspwm/bspwmrc

# fonts
paru -S ttf-jetbrains-mono ttf-babelstone-runic 

# useful programs
sudp paru -S vim neofetch htop libqalculate 
paru -S lf flameshot-git visual-studio-code-bin



