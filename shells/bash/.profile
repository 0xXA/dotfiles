[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
[[ -d "$HOME/bin" ]] && PATH+="$HOME/bin"
[[ -d "$HOME/.local/bin" ]] && PATH+="$HOME/.local/bin"

umask 0077

[[ -d "/etc/profile.d" ]] && {
	for profile in "/etc/profile.d"/*.sh; do
		[[ -r "$profile" ]] && . "$profile"
	done
	unset profile
}
