###-begin-zsh-config-###
# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Disable oh-my-zsh themes for pure-prompt
# Install manually: https://github.com/sindresorhus/pure 
# `npm install --global pure-prompt` has not worked for me on Ubuntu 16.04
# `/usr/local/share/zsh/site-functions` is owned by root and pure-prompt creates
# symlinks without `sudo`
ZSH_THEME=""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z tmux)
###-end-zsh-config-###


###-begin-user-config-###
export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

export INPUTRC=~/.inputrc

# Enable Vim keybindings
# bindkey -v
###-end-user-config-###


###-begin-npm-global-without-sudo-config-###
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-global"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:${manpath}"

# https://github.com/tj/n#additional-details
export N_PREFIX="${NPM_PACKAGES}"
###-end-npm-global-without-sudo-config-###


###-begin-pyenv-config-###
## https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# *Keep at the end of .zshrc*
eval "$(pyenv init -)"
###-end-pyenv-config-###

###-begin-rbenv-###
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
###-end-rbenv-###

alias notes='vim + "$(date +%Y)/$(date +%Y%m%d).md"'
