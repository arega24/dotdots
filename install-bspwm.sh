#!/bin/bash

# Update
sudo pacman -Syu

# Install paru
sudo pacman -S git base-devel 
git clone https://aur.archlinux.org/paru.git
cd paru 
makepkg -si
cd

# copy configs
cp -r ~/dotdots/.config ~/
cp -r ~/dotdots/.vim ~/
cp  ~/dotdots/.vimrc ~/
cp ~/dotdots/.bashrc ~/
mkdir ~/Imagens
mkdir ~/Documentos
mkdir ~/Transferencias

# xorg
sudo paru -S xorg-server xorg-xinit xorg-xrandr xorg-backlight xsecurelock xorg-xev

# Video drivers
# sudo paru -S mesa xf86-video-nouveau
# sudo paru -S xf86-video-intel

# ly
paru -S ly
sudo systemctl enable ly.service

# bspwm
sudo paru -S bspwm sxhkd rofi polybar picom python-pywal kitty dunst libnotify playerctl pamixer pulsemixer qpwgraph zip tar bat mediainfo ueberzug trash-cli rofi-calc 
paru -S redshift-minimal 
chmod u+x ~/.config/bspwm/bspwmrc

# fonts
paru -S ttf-jetbrains-mono ttf-babelstone-runic 

# useful programs
sudo paru -S vim neofetch htop libqalculate fzf udisks2 gparted
paru -S lf flameshot-git visual-studio-code-bin bashmount

# run pywal once
wal -i ~/dotdots/wallpaper.jpg


