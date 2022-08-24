#!/bin/bash

# Update
sudo pacman -Syu

# Install paru
sudo pacman -S git wget base-devel 
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

#------- only run this for minimal install ------
# xorg
# sudo paru -S xorg-server xorg-xinit xorg-xrandr xorg-backlight xsecurelock xorg-xev
# Video drivers
# nouveau
# sudo paru -S mesa lib32-mesa xf86-video-nouveau libva-mesa-driver mesa-vdpau
# Virtual machine
# sudo paru -S xf86-video-intel
#------------------------------------------------

# ly
paru -S ly
sudo systemctl enable ly.service

# bspwm
sudo paru -S bspwm sxhkd rofi polybar picom python-pywal kitty dunst libnotify playerctl pamixer pulsemixer qpwgraph zip tar bat mediainfo ueberzug trash-cli rofi-calc 
paru -S redshift-minimal timeshift
chmod u+x ~/.config/bspwm/bspwmrc

# fonts
paru -S ttf-jetbrains-mono ttf-babelstone-runic 

# useful programs
sudo paru -S vim neofetch htop nvtop libqalculate fzf udisks2 gparted
paru -S lf flameshot-git bashmount baobab timer-rs speedtest-cli

# run pywal once
wal -i ~/dotdots/wallpaper.jpg

# gtk
sudo paru -S lxappearance
paru -S kripton-theme-git

#ntfs suport
sudo paru -S ntfs-3g

# network management
sudo paru -S networkmanager network-manager-applet 
sudo systemctl enable NetworkManager.service

# flatpacks
sudo pacman -S flatpak
