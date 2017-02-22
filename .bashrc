#
# ~/.bashrc
#

### If not running interactively, don't do anything ###
[[ $- != *i* ]] && return

### Start X-server if virtual terminal number is 1 ###
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

### vim is editor ###
export EDITOR="vim"

### aliases ###
alias syu='sudo pacman -Syu' # update system
alias v='vim'
alias y='yaourt' # archlinux aur package manager
alias ls='ls --color=auto'
alias l='ls -alh'
alias tmux='tmux -2' # tmux with 256 colors
alias df='df -h' # disk space with MB
alias p='while true; do ping -c1 ya.ru && break || sleep 1; done' # ping yandex until ok
alias h='htop'
alias extract='unp' # extract archives

### Virtualenv wrapper (lazy startup) ###
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
source /usr/bin/virtualenvwrapper_lazy.sh
