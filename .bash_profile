export PATH=${PATH}:/usr/local/mysql/bin
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GREP_OPTIONS='--color=auto'
export HISTCONTROL=ignoreboth
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH"
export WORKON_HOME=~/virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

alias sc="script/console"
alias sg="script/generate"
alias ss="script/server"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias p="pwd"
alias ..='cd ..'
alias ...='cd .. ; cd ..'

