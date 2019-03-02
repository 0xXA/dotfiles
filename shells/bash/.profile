[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
[[ -d "$HOME/bin" ]] && PATH+="$HOME/bin"
[[ -d "$HOME/.local/bin" ]] && PATH+="$HOME/.local/bin"

export HOME="/home/`whoami`"
export TMPDIR="/tmp"
export EDITOR="`whereis vim | sed 's/.*:\s*//'`"
export GPG_TTY=`tty`

umask 0077

[[ -d "/etc/profile.d" ]] && {
	for profile in "/etc/profile.d"/*.sh; do
		[[ -r "$profile" ]] && . "$profile"
	done
	unset profile
}
