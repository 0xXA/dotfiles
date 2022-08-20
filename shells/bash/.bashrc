# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\033[01;31m\]\h\[\033[00m\] | \[\033[01;34m\]\$PWD\[\033[00m\] "
PS2='> '
PS3='> '
PS4='+ '

[[ -x "/usr/bin/dircolors" ]] && {\
	[[ -e "/etc/dircolors.conf" ]] && {\
		eval "$(dircolors -b /etc/dircolors.conf)";\
	} || [[ -e $HOME/.dircolors ]] && {\
		eval "$(dircolors -b $HOME/.dircolors)";\
	} || eval "$(dircolors -b)";\
}
[[ -f $HOME/.var ]] && . $HOME/.var
[[ -f $HOME/.fn ]] && . $HOME/.fn