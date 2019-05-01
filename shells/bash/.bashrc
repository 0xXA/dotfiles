[[ $- != *i* ]] && return

[[ ${UID} -eq 0 ]] && {
PS1="\\[\\e[01;31m\\][\\[\\e[0m\\]\\[\\e[00;32m\\]\\w\\[\\e[0m\\]\\[\\e[01;36m\\]]\
\\[\\e[0;34m\\]:\\[\\e[0m\\]\\[\\e[1;37m\\]\\$\\[\\e[0m\\]\\[\\e[00;37m\\] \\[\\e[0m\\]"
} || \
PS1="\\[\\e[01;34m\\][\\[\\e[0m\\]\\[\\e[00;32m\\]\\w\\[\\e[0m\\]\\[\\e[01;34m\\]]\                             \\[\\e[0;34m\\]:\\[\\e[0m\\]\\[\\e[1;37m\\]\\$\\[\\e[0m\\]\\[\\e[00;37m\\] \\[\\e[0m\\]"
PS2='> '
PS3='> '
PS4='+ '

case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;yuvraj: \w\a\]$PS1"
        ;;
    *)
        ;;
esac

function command_not_found_handle {
    "/usr/lib/command-not-found" "$1"
}

[[ -x "/usr/bin/dircolors" ]] && [[ -f "/etc/dircolors.conf" ]] && eval "$(dircolors -b /etc/dircolors.conf)"

[[ -f $HOME/.variables ]] && . $HOME/.variables
[[ -f $HOME/.functions ]] && . $HOME/.functions
