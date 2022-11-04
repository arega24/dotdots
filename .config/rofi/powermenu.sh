#!/bin/env bash

# Options for powermenu
# lock="Lock"
shutdown="Shut Down"
reboot="Restart"
sleep="Lock and Sleep"

# Get answer from user via rofi
selected_option=$(echo "$shutdown
$reboot
$sleep" | rofi -dmenu -i -theme-str '@import "power_menu_config.rasi"')

# Do something based on selected option

if [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    xsecurelock & systemctl suspend
# elif [ "$selected_option" == "$lock" ]
# then
#    xsecurelock
else
    echo "No match"
fi
