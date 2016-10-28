# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

alias syu='sudo pacman -Syu'
alias v='vim'
alias cd..='cd ..'
alias l='ls -alh'
alias mac='cat /sys/class/net/wls1/address'
alias hgd='hg diff | colordiff | less'
alias hgl='hg log -l 7 --graph'
alias tmux='tmux -2'
alias df='df -h'

export EDITOR="vim"

