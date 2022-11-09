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
# paru -S ly
# sudo systemctl enable ly.service

# startx
cp /etc/X11/xinit/xinitrc .xinitrc
# to run window manager edit file (adding exec bspwm) and run startx

# bspwm
sudo paru -S bspwm sxhkd rofi polybar picom python-pywal kitty dunst libnotify playerctl pamixer pulsemixer qpwgraph zip tar bat mediainfo ueberzug trash-cli rofi-calc 
paru -S redshift-minimal timeshift xsecurelock
chmod u+x ~/.config/bspwm/bspwmrc

#brillo
git clone https://gitlab.com/cameronnemo/brillo
cd brillo
make
sudo make install.setgid
cd

# fonts
paru -S ttf-jetbrains-mono ttf-babelstone-runic 

# useful programs
sudo paru -S vim neofetch htop nvtop libqalculate fzf udisks2 gparted
paru -S lf bashmount baobab timer-rs speedtest-cli mpv sxiv cmus
sudo pacman -S flameshot

# run pywal once
wal -i ~/dotdots/wallpaper.jpg

# gtk
sudo paru -S lxappearance
paru -S materia-gtk-theme

#ntfs suport
sudo paru -S ntfs-3g

# network management
sudo paru -S networkmanager network-manager-applet dnsmasq
sudo systemctl enable NetworkManager.service
sudo systemctl enable dnsmasq.service

# flatpacks
sudo pacman -S flatpak

# Firewall
sudo paru -S ufw
sudo ufw enable
