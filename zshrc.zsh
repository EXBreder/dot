setopt EXTENDED_GLOB
ZDOTDIR=~/dot source ~/dot/.zprezto/init.zsh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code

# Doesn't work on non osx

if [ "$(uname)" '==' "Darwin" ]; then
    if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then 
	export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
	source /usr/local/bin/virtualenvwrapper.sh
    fi
fi

export EDITOR="emacs"
alias emacs="emacs -nw"
alias dc="docker-compose"

# kubectl completion is really slow to initialize
#if [ $commands[kubectl] ]; then
#  source <(kubectl completion zsh)
#fi

### powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator virtualenv)
DEFAULT_USER=$USER

