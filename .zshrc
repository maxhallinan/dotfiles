###-begin-zsh-config-###
# Path to your oh-my-zsh installation.
export ZSH_DISABLE_COMPFIX=true
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

export PURE_PROMPT_SYMBOL='%F{magenta}λ%f'
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
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"

# *Keep at the end of .zshrc*
# eval "$(pyenv init -)"
###-end-pyenv-config-###

###-begin-rbenv-###
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
###-end-rbenv-###

alias notes='vim + "$(date +%Y)/$(date +%Y%m%d).md"'

# https://routley.io/tech/2017/11/23/logbook.html
function lb() {
  vim $(date +%Y)/$(date +%Y%m%d).md
}

###-begin-ghci-###
export PATH="$HOME/.local/bin:$PATH"
###-end-ghci-###
#
###-begin-racket-###
export PATH="$PATH:$HOME/racket/bin"
###-end-racket-###


###-begin-go-###
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go
###-end-go-###

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias nv='nvim'

. /Users/maxhallinan/.nix-profile/etc/profile.d/nix.sh

eval "$(direnv hook zsh)"
# if [ -e /Users/maxhallinan/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/maxhallinan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
#
#
# export CURL_CA_BUNDLE=~/.ssh/cacert.pem
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# https://github.com/junegunn/fzf#respecting-gitignore
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH="/usr/local/sbin:$PATH"
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

###-begin-rust-###
export PATH="$HOME/.cargo/bin:$PATH"
###-end-rust-###

export PATH="/opt/homebrew/bin:$PATH"

export PATH="/run/current-system/sw/bin:$PATH"
