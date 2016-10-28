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
set default editor vim

######### OH-MY-ZSH ##########

# Path to your oh-my-zsh installation.
export ZSH=/home/light/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(git zsh-syntax-highlighting)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin"
source $ZSH/oh-my-zsh.sh
