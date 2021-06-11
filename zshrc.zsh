setopt EXTENDED_GLOB
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
alias kb="kubectl"
alias venv="source venv/bin/activate"
unalias rm

### powerlevel9k
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator virtualenv)
#DEFAULT_USER=$USER

# Low effort script to swap to a named kubernetes context. Don't depend on it.
kc () {
    kubectl config use-context $(kubectl config get-contexts -o=name | grep $1)
}

if type gpg-agent &>/dev/null && ! pgrep gpg-agent >/dev/null; then
  eval $(gpg-agent --daemon -q)
  export GPG_TTY="$(tty)"
  export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  gpgconf --launch gpg-agent
fi

# Load user/local specific configurations, if they exist
if [[ -s "${HOME}/.zshrc" ]]; then
  source "${HOME}/.zshrc"
fi
