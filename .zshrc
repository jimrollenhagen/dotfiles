# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=""

# Example aliases
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias djsh='./manage.py shell_plus'
alias djcelery='./manage.py celeryd worker --loglevel=info'
alias migrate='./manage.py migrate; say "Your migrations are complete, master."'
alias sync='git pull --rebase && git push'
alias ipy='ipython'
alias nb='cd /Users/jim/code/notebooks && ipython notebook'
alias zc='cd /Users/jim/code/zerocater && workon zc'

# hub wraps git
function git(){hub "$@"}
# code review for a commit
function cr(){hub browse -- commit/$1}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django zsh-syntax-highlighting tmux)

source $ZSH/oh-my-zsh.sh
setopt NO_NOMATCH

# Customize to your needs...
export PATH=$(brew --prefix josegonzalez/php/php54)/bin:/Users/jim/Library/Python/2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/mysql/bin:/usr/local/sbin:/Users/jim/code/android-sdk-macosx/tools:/Users/jim/code/android-sdk-macosx/platform-tools:/usr/local/share/npm/bin:/opt/chef/bin

# virtualenv(wrapper)
export WORKON_HOME=~/virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/local/bin/virtualenvwrapper.sh

# don't care about mysql anymore :)
#export DYLD_LIBRARY_PATH="/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH"

#source ~/.zprompt
. /Users/jim/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
setopt PROMPT_SUBST
setopt extendedglob
setopt nonomatch
#PROMPT='$(prompt)'
#PS2='$(prompt2)'

export TERM=xterm-256color

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
