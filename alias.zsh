alias reload='. ~/.zshrc'

alias cls='clear'

alias la='ls -a'
alias ll='ls -la'

alias cd..='cd ..'
alias ..='cd ../'
alias ...='cd ../../'
alias mkdir='mkdir -p'


alias cp='cp -iv'
alias mv='mv -iv'


alias df='df -h'
alias du='du -cksh'
alias dus='du -ms * | sort -n'

alias get='curl -O'
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

alias egrep='egrep --color=auto'
alias eject='drutil tray eject'
alias fgrep='fgrep --color=auto'

alias grep=egrep
alias grpe=grep
alias nano='nano -c'
alias noascii="sed 's/.\\[[0-9][0-9]?m//g'"

alias dcrestart='docker-compose kill; docker-compose rm --force; docker-compose build && docker-compose up'

alias quote="sed -Ee $'s/([ \'\"])/\\\\\\\\\\\1/g'"
alias rm='rm -i'
alias sed='sed -E'
alias sudo='sudo ' # Make sure aliases are expanded when using sudo.
alias tmux='tmux -2' # force 256 color support in tmux
alias tree="tree -A -I 'CVS|*~'"
alias update-submodules='git submodule sync; git submodule update --init'
alias vdir='vdir --color=auto'
alias wgethtml='wget -E -H -k -K -p -nd -o logwget.txt'

# Get External IP / local IPs
alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias scpresume="rsync --partial --progress "

alias me="echo $(whoami) "@" $(hostname) "with" $(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)"
alias json "python -m json.tool"


alias haha='say -v Anna "haha"'

# Quickly serve the current directory as HTTP
alias serve='ruby -run -e httpd . -p 8000'  # Or python -m SimpleHTTPServer :)



branch-cleanup() { git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' }
branch-delete() { git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -D }


# Enable color support of ls
if [[ "$TERM" != 'dumb' ]]; then
    if [[ -x `which dircolors` ]]; then
        eval `dircolors -b`
        alias 'ls=ls --color=auto'
    fi
fi



setopt complete_aliases
export GREP_OPTIONS='--color=auto' # removes color when piping
export GREP_COLOR='1;31' # highlight matches in red
type colordiff >/dev/null 2>&1 && alias diff='colordiff -u' || alias diff='diff -u'
type colormake >/dev/null 2>&1 && alias make=colormake

# return the bitrate of a given file. eg: # bitrate foo.avi
# brew install libav
function bitrate () {
 avprobe -show_format "$1" 2> /dev/null | grep "bit_rate" | sed 's/.*bit_rate=\([0-9]\+\).*/\1/g';
}


function google {
  open "https://www.google.com/#q=$1"
}