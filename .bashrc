#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Applying the pywal theme to new terminals
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh


#---------- PROMPT ----------

# PS1='[\u@\h \W]\$ '
PS1=' \u | \w > '

#--------- AT LAUNCH --------

neofetch

#------ CUSTOM SCRIPTS ------

# Costom wallpaper setter pywal
w(){
	wal -i "$@"
	# Dunst
	ln -sf "${HOME}/.cache/wal/pywal-dunstrc" "${HOME}/.config/dunst/dunstrc"
	killall dunst
	notify-send "Success!"
	
	#vim airline theme
	ln -sf "${HOME}/.cache/wal/pywal_vim_airline" "${HOME}/.vim/plugged/vim-airline-themes/autoload/airline/themes/pywal_vim_airline.vim"
}

wl(){
	wal -l -i "$@"
	# Dunst
	ln -sf "${HOME}/.cache/wal/pywal-dunstrc" "${HOME}/.config/dunst/dunstrc"
	killall dunst
	notify-send "Success!"
	
	#vim airline theme
	ln -sf "${HOME}/.cache/wal/pywal_vim_airline" "${HOME}/.vim/plugged/vim-airline-themes/autoload/airline/themes/pywal_vim_airline.vim"
}

# package timer-rs needed
pomo(){
	printf "Focus time(m): "
	read focus
	printf "Break time(m): "
	read break
	timer ${focus}m && timer ${break}m && timer ${focus}m && timer ${break}m && timer ${focus}m
	printf "Finished!"
}


shared-mount(){
	sudo ntfs-3g /dev/sda1 /media/shared/ 
	sleep 2
	syncthing --no-browser &
}

r(){
	printf "Temp: "
	read temp
	redshift -P -O ${temp}
}
#--------- ALIASES ---------
alias l='sh ~/.config/lf/lfueberzug'
alias ls='ls --color=auto'
alias update='sudo paru -Syu'
alias m='pulsemixer'

