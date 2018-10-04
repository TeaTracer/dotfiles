### If not running interactively, don't do anything ###
[[ $- != *i* ]] && return

### Start X-server if virtual terminal number is 1 ###
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR="vim"

which slit &>/dev/null || export PAGER="slit"

les() {
    bash -c "pylint $1 --output-format=colorized | less -R"
}

gfd() {
    ls -alh /proc/$1/fd
}

dockx() {
    docker exec -it $1 /bin/bash
}

dockr() {
    docker run -it $1 /bin/bash
}

docc() {
    docker ps | awk -v z=$(($1+1)) 'NR==z {print $1}'
}

docci (){
    NUMBER=$1
    CONTAINER=$(docc $NUMBER)
    dockx $CONTAINER
}

whoad () {
    whois $1 | grep addr
}

dic () {
    dict -d fd-eng-rus $1 | tail -n +6
}

alias v='vim'
alias ls='ls --color=auto'
alias l='ls -alh'
alias tmux='tmux -2' # tmux with 256 colors
alias df='df -h' # disk space with MB
alias p='while true; do ping -c1 ya.ru && break || sleep 1; done' # ping yandex until ok
alias h='htop'
alias apti='sudo apt install'
alias apts='apt search'
alias aptu='sudo apt update'
alias aptU='sudo apt upgrade'
alias aptuU='sudo apt update && sudo apt upgrade'
alias gitd='git diff HEAD^ HEAD'
alias gd='git diff'
alias gdc='git diff --cached'
alias gitf='git ls-tree --full-tree -r HEAD'
alias vg='vagrant'
alias mountme='sudo mount /dev/sdb1 /home/light/USB -o gid=1000,uid=1000'
alias umountme='sudo umount /dev/sdb1'
alias netstat="netstat -lnptux"
alias rm="echo \"Use trash-put instead.\"; false"
alias lynx="lynx -vikeys"
alias docki="docker images -f 'dangling=false'"
alias xcopy="xclip -selection clipboard"
alias vimrc="vim ~/.vimrc"

export GOPATH="/home/light/Go"

# Settings
HISTSIZE=-1
HISTFILESIZE=-1
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend

if [ -f /etc/bash_completion ]; then
     . /etc/bash_completion
fi

export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
