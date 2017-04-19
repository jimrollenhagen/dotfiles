# (ohmy)zsh options
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git zsh-syntax-highlighting tmux)
source $ZSH/oh-my-zsh.sh
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
setopt NO_NOMATCH
setopt PROMPT_SUBST
setopt extendedglob
setopt nonomatch

# aliases
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias ipy='ipython'
alias :q='exit'
alias vim='nvim'

function weather { curl http://wttr.in/$1 }

export TERM=screen-256color

# virtualenv(wrapper)
export WORKON_HOME=$HOME/virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/bin/virtualenvwrapper.sh

export EDITOR=vim

#envoy -t ssh-agent
#source <(envoy -p)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
