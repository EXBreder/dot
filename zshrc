setopt EXTENDED_GLOB
export ZDOTDIR=~/dot
source "${ZDOTDIR:-$HOME}/.zshrc"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/pypy3
source /usr/local/bin/virtualenvwrapper.sh
alias emacs="emacs -nw"

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
