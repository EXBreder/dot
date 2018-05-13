setopt EXTENDED_GLOB
ZDOTDIR=~/dot source ~/dot/.zprezto/init.zsh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
alias emacs="emacs -nw"

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
