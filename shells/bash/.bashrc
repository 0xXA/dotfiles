[[ -z "$PS1" ]] && return
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]TheInfected\[\033[00m\]_ '
[[ -e ~/.vars ]] && [[ -e ~/.funcs ]] && \
	{
		. ~/.vars
		. ~/.funcs
	}
