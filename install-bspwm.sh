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
mkdir ~/Transferncias

# xorg (it conflicts with nvidia)
# sudo paru -S xorg-server xorg-xinit xorg-xrandr xorg-backlight xsecurelock xorg-xev

# nvidia propriatery drivers(steam dont work with nouveau)
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/515.65.01/NVIDIA-Linux-x86_64-515.65.01.run
# then run this script as sudo 
# sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader

# Video drivers
# nouveau
# sudo paru -S mesa lib32-mesa xf86-video-nouveau libva-mesa-driver mesa-vdpau
# Virtual machine
# sudo paru -S xf86-video-intel

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
sudo paru -S vim neofetch htop libqalculate fzf udisks2 gparted
paru -S lf flameshot-git bashmount

# run pywal once
wal -i ~/dotdots/wallpaper.jpg

# gtk
sudo paru -S lxappearance
paru -S kripton-theme-git

#ntfs suport
sudo paru -S ntfs-3g

# network management
sudo paru -S networkmanager network-manager-applet 

# flatpacks
sudo pacman -S flatpak
