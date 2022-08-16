#!/bin/env bash

# Options for powermenu
logout="Logout"
shutdown="Shut Down"
reboot="Restart"
sleep="Sleep"

# Get answer from user via rofi
selected_option=$(echo "$shutdown
$reboot
$logout 
$sleep" | rofi -dmenu -i -theme-str '@import "power_menu_config.rasi"')

# Do something based on selected option

if [ "$selected_option" == "$logout" ]
then
    kitty pkill -KILL -u arega
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    systemctl suspend
else
    echo "No match"
fi
