### If not running interactively, don't do anything ###
[[ $- != *i* ]] && return

### Start X-server if virtual terminal number is 1 ###
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

### Functions ###
remind () { nohup sh -c "(sleep $1 && notify-send $2) &" }

### Aliases ###
alias v='vim'
alias ls='ls --color=auto'
alias l='ls -alh'
alias tmux='tmux -2' # tmux with 256 colors
alias df='df -h' # disk space with MB
alias p='while true; do ping -c1 ya.ru && break || sleep 1; done' # ping yandex until ok 
alias h='htop'
alias extract='unp' # extract archives
alias apti='sudo apt install'
alias aptu='sudo apt update'
alias aptU='sudo apt upgrade'
alias apts='apt search'

bindkey \^U backward-kill-line

### vim is editor ###
export EDITOR="vim"
set default editor vim

# PATH configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:${PATH}"

### OH-MY-ZSH ###
export ZSH=/home/light/.oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
